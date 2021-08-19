return {
        -- These groups are for the native LSP client. Some other LSP clients may
        -- use these groups, or use their own. Consult your LSP client's
        -- documentation.
        LspReferenceText = {bg = t.fg_gutter}, -- used for highlighting "text" references
        LspReferenceRead = {bg = t.fg_gutter}, -- used for highlighting "read" references
        LspReferenceWrite = {bg = t.fg_gutter}, -- used for highlighting "write" references
        -- hightlight diagnostics in numberline
        LspDiagnosticsDefaultError = {fg = t.error}, -- Used as the base highlight group. Other LspDiagnostic highlights link to this by default (except Underline)
        LspDiagnosticsDefaultWarning = {fg = t.warning}, -- Used as the base highlight group. Other LspDiagnostic highlights link to this by default (except Underline)
        LspDiagnosticsDefaultInformation = {fg = t.info}, -- Used as the base highlight group. Other LspDiagnostic highlights link to this by default (except Underline)
        LspDiagnosticsDefaultHint = {fg = t.hint}, -- Used as the base highlight group. Other LspDiagnostic highlights link to this by default (except Underline)
        LspSignatureActiveParameter = {fg = t.orange},
        -- LspDiagnosticsFloatingError         = { }, -- Used to color "Error" diagnostic messages in diagnostics float
        -- LspDiagnosticsFloatingWarning       = { }, -- Used to color "Warning" diagnostic messages in diagnostics float
        -- LspDiagnosticsFloatingInformation   = { }, -- Used to color "Information" diagnostic messages in diagnostics float
        -- LspDiagnosticsFloatingHint          = { }, -- Used to color "Hint" diagnostic messages in diagnostics float

        LspDiagnosticsError = {fg = t.error},
        LspDiagnosticsWarning = {fg = t.warning},
        LspDiagnosticsInformation = {fg = t.info},
        LspDiagnosticsHint = {fg = t.hint},
        LspDiagnosticsVirtualTextError = {fg = t.error, style = opts.integrations.native_lsp.styles.errors}, -- Used for "Error" diagnostic virtual text
        LspDiagnosticsVirtualTextWarning = {fg = t.warning, style = opts.integrations.native_lsp.styles.warnings}, -- Used for "Warning" diagnostic virtual text
        LspDiagnosticsVirtualTextInformation = {fg = t.info, style = opts.integrations.native_lsp.styles.information}, -- Used for "Information" diagnostic virtual text
        LspDiagnosticsVirtualTextHint = {fg = t.hint, style = opts.integrations.native_lsp.styles.hints}, -- Used for "Hint" diagnostic virtual text
        LspDiagnosticsUnderlineError = {style = "underline", sp = t.error}, -- Used to underline "Error" diagnostics
        LspDiagnosticsUnderlineWarning = {style = "underline", sp = t.warning}, -- Used to underline "Warning" diagnostics
        LspDiagnosticsUnderlineInformation = {style = "underline", sp = t.info}, -- Used to underline "Information" diagnostics
        LspDiagnosticsUnderlineHint = {style = "underline", sp = t.hint}, -- Used to underline "Hint" diagnostics
}
