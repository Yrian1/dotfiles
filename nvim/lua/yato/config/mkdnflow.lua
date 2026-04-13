return {
    'jakewvincent/mkdnflow.nvim',
    config = function()
        require('mkdnflow').setup({
            -- Config goes here; leave blank for defaults
            mappings = {
                MkdnToggleToDo = {{'n', 'v'}, '<leader>ld'},
            }
        })
    end,
    ft = "markdown",
}
