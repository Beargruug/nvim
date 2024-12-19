local ship_cmd_id = 0

vim.api.nvim_create_autocmd("TermOpen", {
	group = vim.api.nvim_create_augroup("custom-term-open", { clear = true }),
	pattern = "*",
	callback = function()
		vim.opt.number = false
		vim.opt.relativenumber = false
	end,
})

vim.keymap.set("n", "<leader>st", function()
	vim.cmd.vnew()
	vim.cmd.term()
	vim.cmd.wincmd("J")
	vim.api.nvim_win_set_height(0, 10)

	ship_cmd_id = vim.bo.channel
end)

vim.keymap.set("n", "<leader>ship", function()
	vim.fn.chansend(ship_cmd_id, { "git add . \r\n" })
	vim.fn.chansend(ship_cmd_id, { "git commit -m 'update submodules' \r\n" })
	vim.fn.chansend(ship_cmd_id, { "git push origin main \r\n" })
end)

vim.keymap.set("t", "<esc><esc>", "<c-\\><c-n>")
