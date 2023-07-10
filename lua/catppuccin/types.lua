---@class Catppuccin
---@field options CatppuccinOptions
---@field setup fun(opts: CatppuccinOptions?)

---@alias CtpFlavor "mocha" | "macchiato" | "frappe" | "latte"
---@alias CtpColor "rosewater" | "flamingo" | "pink" | "mauve" | "red" | "maroon" | "peach" | "yellow" | "green" | "teal" | "sky" | "sapphire" | "blue" | "lavender" | "text" | "subtext1" | "subtext0" | "overlay2" | "overlay1" | "overlay0" | "surface2" | "surface1" | "surface0" | "base" | "mantle" | "crust"
---@class CtpFlavors<T>: {all: T, mocha: T, macchiato: T, frappe: T, latte: T }
---@class CtpColors<T>: {rosewater: T, flamingo: T, pink: T, mauve: T, red: T, maroon: T, peach: T, yellow: T, green: T, teal: T, sky: T, sapphire: T, blue: T, lavender: T, text: T, subtext1: T, subtext0: T, overlay2: T, overlay1: T, overlay0: T, surface2: T, surface1: T, surface0: T, base: T, mantle: T, crust: T }

---@class CatppuccinOptions
-- Changes the flavor based on the background. See `:h background` for more info.
---@field background CtpBackground
-- By default catppuccin writes the compiled results into the system's cache directory.
-- You can change the cache dir by changing this value.
---@field compile_path string
-- Whether to enable transparency.
---@field transparent_background boolean
-- Toggle the `~` characters after the end of buffers.
---@field show_end_of_buffer boolean
-- If true, sets terminal colors (e.g. `g:terminal_color_0`).
---@field term_colors boolean
-- Settings for dimming of inactive windows.
---@field dim_inactive CtpDimInactive
-- Disables all italic styles.
---@field no_italic boolean
-- Disables all bold styles.
---@field no_bold boolean
-- Disables all underline styles.
---@field no_underline boolean
-- Handles the style of general hl groups (see `:h highlight-groups`).
---@field styles CtpStyles
-- Toggle integrations. Integrations allow Catppuccin to set the theme of various plugins.
---@field integrations CtpIntegrations
-- Catppuccin colors can be overwritten here.
---@field color_overrides CtpColors | CtpFlavors<CtpColors<string>>
-- Catppuccin highlights can be overwritten here.
---@field highlight_overrides CtpHighlightOverrides
-- deprecated: use highlight_overrides instead.
---@field custom_highlights CtpHighlightOverrideFn
-- The default flavor to use on startup.
---@field flavour CtpFlavor

---@class CtpBackground
-- Catppuccin flavor to use when `:set background=dark` is set.
---@field dark CtpFlavor
-- Catppuccin flavor to use when `:set background=light` is set.
---@field light CtpFlavor

---@class CtpDimInactive
-- Whether to dim inactive windows.
---@field enabled boolean
-- Whether to darken or lighten inactive windows.
---@field shade "dark" | "light"
-- Percentage of the shade to apply to the inactive window
---@field percentage number

---@class CtpStyles
-- Change the style of comments.
---@field comments CtpHighlightArgs[]
-- Change the style of conditionals.
---@field conditionals CtpHighlightArgs[]
-- Change the style of loops.
---@field loops CtpHighlightArgs[]
-- Change the style of functions.
---@field functions CtpHighlightArgs[]
-- Change the style of keywords.
---@field keywords CtpHighlightArgs[]
-- Change the style of strings.
---@field strings CtpHighlightArgs[]
-- Change the style of variables.
---@field variables CtpHighlightArgs[]
-- Change the style of numbers.
---@field numbers CtpHighlightArgs[]
-- Change the style of booleans.
---@field booleans CtpHighlightArgs[]
-- Change the style of properties.
---@field properties CtpHighlightArgs[]
-- Change the style of types.
---@field types CtpHighlightArgs[]
-- Change the style of operators.
---@field operators CtpHighlightArgs[]

---@class CtpNativeLspStyles
-- Change the style of LSP errors.
---@field errors CtpHighlightArgs[]
-- Change the style of LSP hints.
---@field hints CtpHighlightArgs[]
-- Change the style of LSP warnings.
---@field warnings CtpHighlightArgs[]
-- Change the style of LSP information.
---@field information CtpHighlightArgs[]

---@class CtpNativeLspInlayHints
-- Toggle the background of inlay hints.
---@field background boolean

---@class CtpIntegrations
---@field aerial boolean
---@field alpha boolean
---@field barbar boolean
-- Use this to set it up:
--
-- ```lua
-- require("barbecue").setup {
-- -- valid options:
-- -- "catppuccin-latte"
-- -- "catppuccin-frappe"
-- -- "catppuccin-macchiato"
-- -- "catppuccin-mocha"
--   theme = "catppuccin",
-- }
---```
---@field barbecue CtpIntegrationBarbecue | boolean
---@field beacon boolean
---@field cmp boolean
-- `coc.nvim` links to `native_lsp` highlight groups, so you can use
-- `native_lsp.virtual_text` and `native_lsp.underlines` to style diagnostics.
---@field coc_nvim boolean
-- You **NEED** to override nvim-dap's default highlight groups, **AFTER** requiring nvim-dap:
--
-- ```lua
-- require("dap")
--
-- local sign = vim.fn.sign_define
--
-- sign("DapBreakpoint", { text = "●", texthl = "DapBreakpoint", linehl = "", numhl = ""})
-- sign("DapBreakpointCondition", { text = "●", texthl = "DapBreakpointCondition", linehl = "", numhl = ""})
-- sign("DapLogPoint", { text = "◆", texthl = "DapLogPoint", linehl = "", numhl = ""})
-- ```
---@field dap CtpIntegrationDAP | boolean
---@field dashboard boolean
---@field dropbar CtpIntegrationDropbar | boolean
---@field fern boolean
-- Set `window.blend` to `0` in your `fidget` config:
--
-- ```lua
-- require("fidget").setup {
--   window = { blend = 0 },
-- }
-- ```
---@field fidget boolean
---@field gitgutter boolean
---@field gitsigns boolean
---@field harpoon boolean
---@field headlines boolean
---@field hop boolean
---@field illuminate boolean
---@field indent_blankline CtpIntegrationIndentBlankline | boolean
---@field leap boolean
---@field lightspeed boolean
-- For custom Lsp kind icon and colors, adjust your `lspsaga` config:
--
-- ```lua
-- require("lspsaga").setup {
--    ui = {
--        kind = require("catppuccin.groups.integrations.lsp_saga").custom_kind(),
--    },
-- }
-- ```
---@field lsp_saga boolean
---@field lsp_trouble boolean
---@field markdown boolean
---@field mason boolean
---@field mini boolean
---@field native_lsp CtpIntegrationNativeLsp | boolean
-- You **NEED** to enable highlight in your `nvim-navic` config or it won't work:
--
-- ```lua
-- require("nvim-navic").setup {
--		highlight = true
-- }
-- ```
---@field navic CtpIntegrationNavic | boolean
---@field neogit boolean
---@field neotest boolean
---@field neotree boolean
---@field noice boolean
---@field notify boolean
---@field nvimtree boolean
---@field octo boolean
---@field overseer boolean
---@field pounce boolean
---@field rainbow_delimiters boolean
---@field sandwich boolean
---@field semantic_tokens boolean
---@field symbols_outline boolean
---@field telekasten boolean
---@field telescope CtpIntegrationTelescope | boolean
---@field treesitter boolean
---@field treesitter_context boolean
---@field ts_rainbow boolean
---@field ts_rainbow2 boolean
---@field vim_sneak boolean
---@field vimwiki boolean
---@field which_key boolean

---@class CtpIntegrationBarbecue
--  Whether to use the alternative background.
---@field alt_background boolean?
-- Whether the basename should be bold.
---@field bold_basename boolean?
-- Whether the context should be dimmed.
---@field dim_context boolean?
-- Whether the directory name should be dimmed.
---@field dim_dirname boolean?

---@class CtpIntegrationDAP
---@field enabled boolean?
-- Enable `nvim-dap-ui`
---@field enable_ui boolean?

---@class CtpIntegrationDropbar
-- Whether to enable the dropbar integration.
---@field enabled boolean?
-- Set to true to apply color to the text in dropbar, false to only apply it to the icons.
---@field color_mode boolean?

---@class CtpIntegrationIndentBlankline
-- Whether to enable the integration.
---@field enabled boolean?
-- Enables char highlights per indent level.
-- Follow the instructions on the plugins GitHub repo to set it up.
---@field colored_indent_levels boolean?

---@class CtpIntegrationNativeLsp
-- Whether to enable the Native LSP integration.
---@field enabled boolean?
-- Styles to apply to virtual text.
---@field virtual_text CtpNativeLspStyles?
-- Styles to apply to underlines.
---@field underlines CtpNativeLspStyles?
-- Inlay hints options.
---@field inlay_hints CtpNativeLspInlayHints?

---@class CtpIntegrationNavic
-- Whether to enable the navic integration.
---@field enabled boolean?
-- Override the background color for navic.
---@field custom_bg CtpColor | "NONE" | "lualine"

---@class CtpIntegrationTelescope
-- Whether to enable the telescope integration
---@field enabled boolean?
-- The style of Telescope
---@field style "classic" | "nvchad"

---@alias CtpHighlightArgs "bold" | "underline" | "undercurl" | "underdouble" | "underdotted" | "underdashed" | "strikethrough" | "reverse" | "inverse" | "italic" | "standout" | "altfont" | "nocombine" | "NONE"
---@alias CtpHighlightOverrideFn fun(colors: CtpColors<string>): { [string]: CtpHighlight}
---@alias CtpHighlightOverrides CtpFlavors<CtpHighlightOverrideFn>

---@class CtpHighlight
---@field fg string?
---@field bg string?
---@field style CtpHighlightArgs[]?
---@field link string?
