vim.opt.rtp:append {
	".",
	"../plenary.nvim",
}

vim.cmd [[runtime! plugin/plenary.vim]]
vim.o.swapfile = false
_G.__TEST = true
