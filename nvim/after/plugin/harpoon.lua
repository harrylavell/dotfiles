require("harpoon").setup({
    tabline = true,
    tabline_prefix = "  ",
    tabline_suffix = "",
})

local mark = require("harpoon.mark")
local ui = require("harpoon.ui")

vim.keymap.set("n", "<leader>a", mark.add_file)
vim.keymap.set("n", "<leader>e", ui.toggle_quick_menu)

vim.keymap.set("n", "<C-h>", function() ui.nav_file(1) end)
vim.keymap.set("n", "<C-j>", function() ui.nav_file(2) end)
vim.keymap.set("n", "<C-k>", function() ui.nav_file(3) end)
vim.keymap.set("n", "<C-l>", function() ui.nav_file(4) end)

--vim.cmd('highlight! HarpoonActive guibg=NONE guifg=#928374')
--vim.cmd('highlight! HarpoonInactive guibg=NONE guifg=#928374')
--vim.cmd('highlight! HarpoonNumberActive guibg=NONE guifg=#d79921')
--vim.cmd('highlight! HarpoonNumberInactive guibg=NONE guifg=#d79921')
--vim.cmd('highlight! TabLineFill guibg=NONE guifg=white')
