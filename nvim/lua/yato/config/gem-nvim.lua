-- Minimal configuration
-- Configuração do plugin gen.nvim para IA Local e Rápida
return {
	"David-Kunz/gen.nvim",
	-- Opcional: Garante que o plugin só carregue quando você chamar os comandos para economizar memória na inicialização
	cmd = { "Gen" },
	keys = {
		-- Atalho no modo Normal e Visual: pressionar Espaço + a + i abre o menu de comandos da IA
		{ "<leader>ai", ":Gen<CR>", mode = { "n", "v" }, desc = "Menu IA Local (Ollama)" },
	},
	opts = {
		-- Define o modelo padrão ultraleve que roda instantaneamente no seu processador
		model = "qwen2-math:1.5b",

		-- Endereço padrão onde o Ollama disponibiliza a API local
		host = "localhost",
		port = "11434",

		-- Exibe as respostas em uma janela flutuante no centro da tela (muito elegante)
		display_mode = "float",

		-- Mostra o nome do modelo ativo no topo da janela de resposta
		show_model = true,

		-- Mantém os atalhos padrões do plugin desativados para evitar conflitos com sua build
		no_auto_map = true,
	},
	config = function(_, opts)
		-- Inicializa o plugin com as opções configuradas acima
		local gen = require("gen")
		gen.setup(opts)

		-- ADICIONANDO UM PROMPT PERSONALIZADO PARA CORRIGIR LATEX
		-- Isso aparecerá como uma opção automática quando você digitar <leader>ai
		gen.prompts["Corrigir_LaTeX"] = {
			prompt = "Corrija a sintaxe matemática em LaTeX do seguinte texto/fórmula, mantendo os delimitadores $ ou $$. Retorne APENAS a fórmula corrigida e nada mais:\n$text",
			replace = true, -- Substitui o texto selecionado no buffer diretamente pelo resultado da IA
		}

		-- PROMPT PERSONALIZADO PARA EXPLICAR CÓDIGO (Muito útil para aulas de ADS)
		gen.prompts["Explicar_Codigo"] = {
			prompt = "Explique detalhadamente o que este código faz, destacando pontos de melhoria ou complexidade de tempo:\n$text",
			replace = false, -- Abre uma janela flutuante lateral sem alterar seu código original
		}
	end,
}
