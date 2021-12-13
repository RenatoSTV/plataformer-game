return {
  version = "1.5",
  luaversion = "5.1",
  tiledversion = "1.7.2",
  orientation = "orthogonal",
  renderorder = "right-down",
  width = 20,
  height = 10,
  tilewidth = 64,
  tileheight = 64,
  nextlayerid = 17,
  nextobjectid = 8,
  properties = {},
  tilesets = {
    {
      name = "ground",
      firstgid = 1,
      tilewidth = 64,
      tileheight = 64,
      spacing = 0,
      margin = 0,
      columns = 13,
      image = "TilesExamples2x.png",
      imagewidth = 832,
      imageheight = 480,
      objectalignment = "unspecified",
      tileoffset = {
        x = 0,
        y = 0
      },
      grid = {
        orientation = "orthogonal",
        width = 64,
        height = 64
      },
      properties = {},
      wangsets = {},
      tilecount = 91,
      tiles = {}
    }
  },
  layers = {
    {
      type = "objectgroup",
      draworder = "topdown",
      id = 2,
      name = "GroundObj",
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      parallaxx = 1,
      parallaxy = 1,
      properties = {},
      objects = {
        {
          id = 1,
          name = "",
          type = "",
          shape = "rectangle",
          x = 0,
          y = 255.667,
          width = 64.6667,
          height = 384.333,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2,
          name = "",
          type = "",
          shape = "rectangle",
          x = 64.6667,
          y = 420.833,
          width = 449.333,
          height = 219.167,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 3,
          name = "",
          type = "",
          shape = "rectangle",
          x = 512.667,
          y = 384,
          width = 318.667,
          height = 255.333,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 4,
          name = "",
          type = "",
          shape = "rectangle",
          x = 552.667,
          y = 351.94,
          width = 241.333,
          height = 31.394,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 5,
          name = "",
          type = "",
          shape = "rectangle",
          x = 832,
          y = 420.625,
          width = 320.667,
          height = 219.375,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 6,
          name = "",
          type = "",
          shape = "rectangle",
          x = 1216,
          y = 320.667,
          width = 64.6667,
          height = 319.333,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 7,
          name = "",
          type = "",
          shape = "rectangle",
          x = 1151.92,
          y = 384.25,
          width = 64.0417,
          height = 255.75,
          rotation = 0,
          visible = true,
          properties = {}
        }
      }
    },
    {
      type = "tilelayer",
      x = 0,
      y = 0,
      width = 20,
      height = 10,
      id = 1,
      name = "Ground",
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      parallaxx = 1,
      parallaxy = 1,
      properties = {},
      encoding = "lua",
      data = {
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        17, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5,
        30, 0, 0, 0, 0, 0, 0, 0, 8, 35, 35, 35, 10, 0, 0, 0, 0, 0, 2, 2684354588,
        17, 3, 3, 3, 3, 3, 3, 3, 15, 16, 16, 16, 17, 3, 3, 3, 3, 3, 15, 16,
        29, 29, 29, 29, 29, 29, 29, 29, 29, 29, 29, 29, 29, 29, 29, 29, 29, 29, 29, 29,
        16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 1610612774, 1610612774, 1610612774,
        81, 81, 81, 81, 81, 81, 81, 81, 81, 81, 81, 81, 81, 81, 81, 81, 81, 81, 81, 81
      }
    }
  }
}
