try
	call plug#begin()
	Plug expand('<sfile>')[0:-16] 
	call plug#end()

	lua require("catppuccin").setup {}
  colorscheme catppuccin-nvim
catch
	echo v:exception
	1cq
finally
	0cq
endtry
