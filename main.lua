function love.load()
  gameFont = love.graphics.newFont(40)

  wf = require "libraries/windfield"

  world = wf.newWorld(0, 0, true)
  world:setGravity(0, 500)

  Camera = require "libraries/camera"

  anim8 = require "libraries/anim8"
  love.graphics.setDefaultFilter("nearest", "nearest")

  sti = require "libraries/sti"
  gameMap = sti("maps/map2.lua")

  world:addCollisionClass("Player")
  world:addCollisionClass("Ground")

  bg = love.graphics.newImage("maps/Background/backGround.png")

  player = {}
  player.pos = {}
  player.pos.x = 70
  player.pos.y = 350
  player.collider = world:newBSGRectangleCollider(player.pos.x, player.pos.y, 25, 48, 4)
  player.collider:setFixedRotation(true)
  player.collider:setCollisionClass("Player")
  player.collider:setObject(player.collider)

  player.speed = 10
  player.canJump = true

  player.spriteSheet = love.graphics.newImage("sprites/character_side_walk.png")

  player.grid = anim8.newGrid(16, 33, player.spriteSheet:getWidth(), player.spriteSheet:getHeight())

  player.animations = {}
  player.animations.right = anim8.newAnimation(player.grid("1-6", 1), 0.2)
  player.animations.left = anim8.newAnimation(player.grid("1-6", 2), 0.2)

  player.anim = player.animations.right

  camera = Camera(player.pos.x, player.pos.y)

  grounds = {}
  if gameMap.layers["Ground"] then
    for i, obj in pairs(gameMap.layers["GroundObj"].objects) do
      local ground = world:newRectangleCollider(obj.x, obj.y, obj.width, obj.height)
      ground:setType("static")
      table.insert(grounds, ground)
      ground:setCollisionClass("Ground")
      ground:setObject(ground)
    end
  end
end

function love.update(dt)
  local isMoving = false
  local px, py = player.collider:getLinearVelocity()

  if player.collider:enter("Ground") then
    player.canJump = true
  end

  if love.keyboard.isDown("left") then
    player.anim = player.animations.left
    if px > -70 == true then
      player.collider:applyForce(-300, 0)
    end
    isMoving = true
  elseif love.keyboard.isDown("right") then
    player.anim = player.animations.right
    if px < 70 == true then
      player.collider:applyForce(300, 0)
    end
    isMoving = true
  end

  world:update(dt)
  player.pos.x = player.collider:getX()
  player.pos.y = player.collider:getY()

  if isMoving == false then
    player.anim:gotoFrame(4)
  end

  player.anim:update(dt)

  -- Update camera position
  camera:lookAt(player.pos.x, player.pos.y)
  -- This section prevents the camera from viewing outside the background
  -- First, get width/height of the game window
  local w = love.graphics.getWidth()
  local h = love.graphics.getHeight()

  -- Left border
  if camera.x < w / 2 then
    camera.x = w / 2
  end

  -- Right border
  if camera.y < h / 2 then
    camera.y = h / 2
  end

  -- Get width/height of background
  local mapW = gameMap.width * gameMap.tilewidth
  local mapH = gameMap.height * gameMap.tileheight

  -- Right border
  if camera.x > (mapW - w / 2) then
    camera.x = (mapW - w / 2)
  end
  -- Bottom border
  if camera.y > (mapH - h / 2) then
    camera.y = (mapH - h / 2)
  end
end

function love.draw()
  camera:attach()
  -- world:draw()
  love.graphics.draw(bg, 0, 0)
  gameMap:drawLayer(gameMap.layers["Ground"])
  player.anim:draw(player.spriteSheet, player.pos.x, player.pos.y, nil, 1.5, nil, 7, 16)
  camera:detach()
end

function love.keypressed(key)
  if key == "up" and player.canJump then
    player.collider:applyLinearImpulse(0, -500)
    player.canJump = false
  end
end
