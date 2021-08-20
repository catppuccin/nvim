return {
    -- These groups are for the native LSP cliencpt. Some other LSP clients may
    -- use these groups, or use their own. Consult your LSP client's
    -- documentation.
    LspReferenceText = {bg = cpt.fg_gutter}, -- used for highlighting "text" references
    LspReferenceRead = {bg = cpt.fg_gutter}, -- used for highlighting "read" references
    LspReferenceWrite = {bg = cpt.fg_gutter}, -- used for highlighting "write" references
    -- hightlight diagnostics in numberline
    LspDiagnosticsDefaultError = {fg = cpt.error}, -- Used as the base highlight group. Other LspDiagnostic highlights link to this by default (except Underline)
    LspDiagnosticsDefaultWarning = {fg = cpt.warning}, -- Used as the base highlight group. Other LspDiagnostic highlights link to this by default (except Underline)
    LspDiagnosticsDefaultInformation = {fg = cpt.info}, -- Used as the base highlight group. Other LspDiagnostic highlights link to this by default (except Underline)
    LspDiagnosticsDefaultHint = {fg = cpt.hint}, -- Used as the base highlight group. Other LspDiagnostic highlights link to this by default (except Underline)
    LspSignatureActiveParameter = {fg = cpt.orange},
    -- LspDiagnosticsFloatingError         = { }, -- Used to color "Error" diagnostic messages in diagnostics float
    -- LspDiagnosticsFloatingWarning       = { }, -- Used to color "Warning" diagnostic messages in diagnostics float
    -- LspDiagnosticsFloatingInformation   = { }, -- Used to color "Information" diagnostic messages in diagnostics float
    -- LspDiagnosticsFloatingHint          = { }, -- Used to color "Hint" diagnostic messages in diagnostics float

    LspDiagnosticsError = {fg = cpt.error},
    LspDiagnosticsWarning = {fg = cpt.warning},
    LspDiagnosticsInformation = {fg = cpt.info},
    LspDiagnosticsHint = {fg = cpt.hint},
    LspDiagnosticsVirtualTextError = {fg = cpt.error, style = cpc.integrations.native_lsp.styles.errors}, -- Used for "Error" diagnostic virtual text
    LspDiagnosticsVirtualTextWarning = {fg = cpt.warning, style = cpc.integrations.native_lsp.styles.warnings}, -- Used for "Warning" diagnostic virtual text
    LspDiagnosticsVirtualTextInformation = {fg = cpt.info, style = cpc.integrations.native_lsp.styles.information}, -- Used for "Information" diagnostic virtual text
    LspDiagnosticsVirtualTextHint = {fg = cpt.hint, style = cpc.integrations.native_lsp.styles.hints}, -- Used for "Hint" diagnostic virtual text
    LspDiagnosticsUnderlineError = {style = "underline", sp = cpt.error}, -- Used to underline "Error" diagnostics
    LspDiagnosticsUnderlineWarning = {style = "underline", sp = cpt.warning}, -- Used to underline "Warning" diagnostics
    LspDiagnosticsUnderlineInformation = {style = "underline", sp = cpt.info}, -- Used to underline "Information" diagnostics
    LspDiagnosticsUnderlineHint = {style = "underline", sp = cpt.hint} -- Used to underline "Hint" diagnostics
}
