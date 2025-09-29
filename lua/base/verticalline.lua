vim.api.nvim_create_autocmd({"FileType"}, 
{
    pattern = { "h", "hpp", "c", "cpp" },
    callback = function()
        vim.opt_local.colorcolumn = "82"
    end,
})
