vim.keymap.set("n", "<leader>u", vim.cmd.UndotreeToggle)

-- OS Specific
if (vim.fn.has('macunix') == 0) then
    -- Windows
    vim.g.undotree_DiffCommand = "FC"
end
