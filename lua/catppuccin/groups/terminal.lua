local M = {}

function M.get()
	return {
		terminal_color_0 = cp.overlay0,
		terminal_color_8 = cp.overlay1,

		terminal_color_1 = cp.red,
		terminal_color_9 = cp.red,

		terminal_color_2 = cp.green,
		terminal_color_10 = cp.green,

		terminal_color_3 = cp.yellow,
		terminal_color_11 = cp.yellow,

		terminal_color_4 = cp.blue,
		terminal_color_12 = cp.blue,

		terminal_color_5 = cp.pink,
		terminal_color_13 = cp.pink,

		terminal_color_6 = cp.sky,
		terminal_color_14 = cp.sky,

		terminal_color_7 = cp.text,
		terminal_color_15 = cp.text,
	}
end

return M
