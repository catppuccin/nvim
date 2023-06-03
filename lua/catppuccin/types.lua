---@class Catppuccin
---@field options CatppuccinOptions
---@field setup fun(opts: CatppuccinOptions?)

---@alias CtpFlavor "mocha" | "macchiato" | "frappe" | "latte"
---@class CtpFlavors<T>: {all: T, mocha: T, macchiato: T, frappe: T, latte: T }
---@class CtpColors<T>: {rosewater: T, flamingo: T, pink: T, mauve: T, red: T, maroon: T, peach: T, yellow: T, green: T, teal: T, sky: T, sapphire: T, blue: T, lavender: T, text: T, subtext1: T, subtext0: T, overlay2: T, overlay1: T, overlay0: T, surface2: T, surface1: T, surface0: T, base: T, mantle: T, crust: T }

---@class CatppuccinOptions
---@field background { dark: CtpFlavor, light: CtpFlavor }
---@field compile_path string
-- By default catppuccin writes the compiled results into the system's cache directory.
-- You can change the cache dir by changing this value.
---@field transparent_background boolean Whether to enable transparency.
---@field show_end_of_buffer boolean Toggle the '~' characters after the end of buffers.
---@field term_colors boolean If true, sets terminal colors (e.g. g:terminal_color_0).
---@field dim_inactive { enabled: boolean, shade: "dark" | "light", percentage: number }
---@field no_italic boolean Disables all italic styles.
---@field no_bold boolean Disables all bold styles.
---@field no_underline boolean Disables all underline styles.
---@field styles CtpStyles Handles the style of general hl groups (see :h highlight-groups).
---@field integrations CtpIntegrations Toggle integrations. Integrations allow Catppuccin to set the theme of various plugins.
---@field color_overrides CtpColors<string> | CtpFlavors<CtpColors<string>> Catppuccin colors can be overwritten here.
---@field highlight_overrides CtpHighlightOverrides Catppuccin highlights can be overwritten here.
---@field custom_highlights CtpHighlightOverrideFn deprecated: use highlight_overrides instead.
---@field flavour CtpFlavor The default flavor to use on startup.

---@class CtpStyles
---@field comments CtpHighlightArgs[] Change the style of comments.
---@field conditionals CtpHighlightArgs[] Change the style of conditionals.
---@field loops CtpHighlightArgs[] Change the style of loops.
---@field functions CtpHighlightArgs[] Change the style of functions.
---@field keywords CtpHighlightArgs[] Change the style of keywords.
---@field strings CtpHighlightArgs[] Change the style of strings.
---@field variables CtpHighlightArgs[] Change the style of variables.
---@field numbers CtpHighlightArgs[] Change the style of numbers.
---@field booleans CtpHighlightArgs[] Change the style of booleans.
---@field properties CtpHighlightArgs[] Change the style of properties.
---@field types CtpHighlightArgs[] Change the style of types.
---@field operators CtpHighlightArgs[] Change the style of operators.

---@class CtpNativeLspStyles
---@field errors CtpHighlightArgs[] Change the style of LSP errors.
---@field hints CtpHighlightArgs[] Change the style of LSP hints.
---@field warnings CtpHighlightArgs[] Change the style of LSP warnings.
---@field information CtpHighlightArgs[] Change the style of LSP information.

---@class CtpIntegrations
---@field alpha boolean
---@field barbecue CtpIntegrationBarbecue
---@field cmp boolean
---@field dashboard boolean
---@field dropbar CtpIntegrationDropbar
---@field gitsigns boolean
---@field indent_blankline CtpIntegrationIndentBlankline
---@field markdown boolean
---@field native_lsp CtpIntegrationNativeLsp
---@field navic CtpIntegrationNavic
---@field nvimtree boolean
---@field semantic_tokens boolean
---@field telescope boolean
---@field treesitter boolean
---@field ts_rainbow boolean
---@field ts_rainbow2 boolean

---@class CtpIntegrationBarbecue
---@field alt_background boolean? Whether to use the alternative background.
---@field bold_basename boolean? Whether the basename should be bold.
---@field dim_context boolean? Whether the context should be dimmed.
---@field dim_dirname boolean? Whether the directory name should be dimmed.

---@class CtpIntegrationDropbar
---@field enabled boolean? Whether to enable the dropbar integration.
---@field color_mode boolean? Set to true to apply color to the text in dropbar, false to only apply it to the icons.

---@class CtpIntegrationIndentBlankline
---@field enabled boolean? Whether to enable the integration.
---@field colored_indent_levels boolean? Whether to color indent levels.

---@class CtpIntegrationNativeLsp
---@field enabled boolean? Whether to enable the Native LSP integration.
---@field virtual_text CtpNativeLspStyles? Styles to apply to virtual text.
---@field underlines CtpNativeLspStyles? Styles to apply to underlines.

---@class CtpIntegrationNavic
---@field enabled boolean? Whether to enable the navic integration.
---@field custom_bg string? Override the background color for navic.

---@alias CtpHighlightArgs "bold" | "underline" | "undercurl" | "underdouble" | "underdotted" | "underdashed" | "strikethrough" | "reverse" | "inverse" | "italic" | "standout" | "altfont" | "nocombine" | "NONE"
---@alias CtpHighlightOverrideFn fun(colors: CtpColors<string>): { [string]: CtpHighlight}
---@alias CtpHighlightOverrides CtpFlavors<CtpHighlightOverrideFn>

---@class CtpHighlight
---@field fg string?
---@field bg string?
---@field style CtpHighlightArgs[]?
---@field link string?
