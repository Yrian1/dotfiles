
return {
    "navarasu/onedark.nvim",
    priority = 1000,
    config = function()
        require('onedark').setup {
            style = 'darker', -- Estilo inicial
            
            -- Configuração para troca:
            toggle_style_key = '<leader>ts', -- Escolha o seu atalho (Ex: <leader>ts para 'toggle style')
            toggle_style_list = {'dark', 'darker', 'cool', 'deep', 'warm', 'warmer', 'light'}, -- Lista de estilos para alternar
        }
        require('onedark').load()
    end
}
