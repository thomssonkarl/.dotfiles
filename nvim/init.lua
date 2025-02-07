require("karl.core")
require("karl.lazy")
vim.o.background = "dark" -- or "light" for light mode
vim.cmd([[colorscheme gruvbox]])

vim.filetype.add({
  extension = {
    mm = "cpp", -- Treat Objective-C++ files as C++
  },
})
