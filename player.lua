wf = require "libraries/windfield"
world = wf.newWorld(0, 0, true)

function Player:new()
  self.pos = {}
  self.pos.x = 70
  self.pos.y = 350
  self.collider = world:newBSGRectangleCollider(self.pos.x, self.pos.y, 48, 90, 14)
  self.collider:setFixedRotation(true)
  self.collider:setCollisionClass("Player")
  self.collider:setObject(self)

  self.speed = 10
  self.canJump = true

  self.spriteSheet = love.graphics.newImage("sprites/character_side_walk.png")

  self.grid = anim8.newGrid(16, 33, self.spriteSheet:getWidth(), self.spriteSheet:getHeight())

  self.animations = {}
  self.animations.right = anim8.newAnimation(self.grid("1-6", 1), 0.2)
  self.animations.left = anim8.newAnimation(self.grid("1-6", 2), 0.2)

  self.anim = self.animations.right
end
