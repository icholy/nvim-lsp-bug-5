vim.api.nvim_create_autocmd("FileType", {
	pattern = "lua",
	callback = function()
		vim.lsp.start({
			name = "lua_ls",
			cmd = { "lua-language-server" },
			root_dir = vim.fn.getcwd(),
		})
	end,
})

function show()
	vim.diagnostic.setqflist()
end

function stop()
	for _, client in ipairs(vim.lsp.get_clients()) do
		client.stop()
	end
end
