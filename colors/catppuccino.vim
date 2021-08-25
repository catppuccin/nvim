lua << EOF
-- clear cache so this reloads changes.
-- package.loaded['catppuccino'] = nil
-- package.loaded['catppuccino.utils.util'] = nil
-- package.loaded['catppuccino.utils.hsluv'] = nil
-- package.loaded["catppuccino.color_schemes.catppuccino"] = nil
-- package.loaded['catppuccino.config'] = nil
-- package.loaded['catppuccino.main'] = nil
-- package.loaded['catppuccino.core.mapper'] = nil

require('catppuccino').load()
EOF
