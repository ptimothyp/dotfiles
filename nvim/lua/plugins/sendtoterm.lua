return {
  'mtikekar/nvim-send-to-term',
	config = function()
		require("sendtoterm").setup({
			vim.keymap.set('n', 'ss', '<Plug>SendLine<CR>')
			vim.keymap.set('n', 's', '<Plug>Send<CR>')
			vim.keymap.set('v', 's', '<Plug>Send<CR>')
			vim.keymap.set('n', 'S', 's$')
		})
	end
}
