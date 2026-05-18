vim.cmd("hi clear")
if vim.fn.exists("syntax_on") == 1 then
	vim.cmd("syntax reset")
end

local palette = require("palette")

vim.g.colors_name = "pike"

local p = palette
local c = vim.o.background == "light"
		and {
			fg = p.warm_gray_100,
			bg = p.warm_gray_20,
			bg_dim = p.warm_gray_10,
			bg_float = p.warm_gray_20,
			bg_pmenu = p.warm_gray_30,
			bg_select = p.warm_gray_40,
			bg_visual = p.blue_20,
			bg_search = p.yellow_20,
			fg_search = p.black,
			bg_cursearch = p.yellow_30,
			fg_cursearch = p.black,
			fg_statusline = p.warm_gray_70,
			bg_statusline = p.warm_gray_10,
			bg_cursorline = p.white,
			fg_linenr = p.warm_gray_50,
			fg_cursorlinenr = p.warm_gray_70,
			fg_nontext = p.warm_gray_40,
			fg_unnecessary = p.warm_gray_40,
			fg_comment = p.teal_70,
			fg_error = p.red_60,
			fg_warn = p.yellow_60,
			fg_info = p.cyan_70,
			fg_hint = p.blue_70,
			fg_added = p.green_70,
			fg_changed = p.blue_70,
			fg_removed = p.red_60,
			fg_dir = p.blue_70,
			fg_match = p.magenta_70,
			fg_more = p.teal_70,
			fg_mode = p.green_70,
			fg_question = p.cyan_70,
			fg_warningmsg = p.yellow_60,
			icon_azure = p.cyan_50,
			icon_blue = p.blue_60,
			icon_cyan = p.cyan_70,
			icon_green = p.green_60,
			icon_grey = p.gray_60,
			icon_orange = p.orange_60,
			icon_purple = p.purple_60,
			icon_red = p.red_60,
			icon_yellow = p.yellow_50,
		}
	or {
		fg = p.warm_gray_30,
		bg = p.warm_gray_100,
		bg_dim = p.warm_gray_100,
		bg_float = p.warm_gray_90,
		bg_pmenu = p.warm_gray_80,
		bg_select = p.warm_gray_70,
		bg_visual = p.blue_80,
		bg_search = p.yellow_70,
		fg_search = p.white,
		bg_cursearch = p.yellow_30,
		fg_cursearch = p.black,
		fg_statusline = p.warm_gray_30,
		bg_statusline = p.warm_gray_100,
		bg_cursorline = p.warm_gray_80,
		fg_linenr = p.warm_gray_60,
		fg_cursorlinenr = p.warm_gray_70,
		fg_nontext = p.warm_gray_70,
		fg_unnecessary = p.warm_gray_70,
		fg_comment = p.teal_60,
		fg_error = p.red_40,
		fg_warn = p.yellow_40,
		fg_info = p.cyan_40,
		fg_hint = p.blue_40,
		fg_added = p.green_40,
		fg_changed = p.blue_40,
		fg_removed = p.red_40,
		fg_dir = p.blue_40,
		fg_match = p.magenta_60,
		fg_more = p.teal_40,
		fg_mode = p.green_40,
		fg_question = p.cyan_50,
		fg_warningmsg = p.yellow_30,
		icon_azure = p.cyan_30,
		icon_blue = p.blue_40,
		icon_cyan = p.cyan_40,
		icon_green = p.green_40,
		icon_grey = p.gray_50,
		icon_orange = p.orange_40,
		icon_purple = p.purple_40,
		icon_red = p.red_40,
		icon_yellow = p.yellow_30,
	}

vim.api.nvim_set_hl(0, "@variable", { link = "Normal" })
vim.api.nvim_set_hl(0, "ColorColumn", { bg = c.bg_float })
vim.api.nvim_set_hl(0, "Comment", { fg = c.fg_comment })
vim.api.nvim_set_hl(0, "Conceal", { bg = c.bg_select })
vim.api.nvim_set_hl(0, "Constant", {})
vim.api.nvim_set_hl(0, "CurSearch", { bg = c.bg_cursearch, fg = c.fg_cursearch })
vim.api.nvim_set_hl(0, "CursorLineNr", { fg = c.fg_cursorlinenr })
vim.api.nvim_set_hl(0, "Cursorline", { bg = c.bg_cursorline })
vim.api.nvim_set_hl(0, "Delimiter", { link = "Normal" })
vim.api.nvim_set_hl(0, "DiagnosticError", { fg = c.fg_error })
vim.api.nvim_set_hl(0, "DiagnosticHint", { fg = c.fg_hint })
vim.api.nvim_set_hl(0, "DiagnosticInfo", { fg = c.fg_info })
vim.api.nvim_set_hl(0, "DiagnosticSignError", { fg = c.fg_error })
vim.api.nvim_set_hl(0, "DiagnosticSignHint", { fg = c.fg_hint })
vim.api.nvim_set_hl(0, "DiagnosticUnderlineError", { undercurl = true, sp = c.fg_error })
vim.api.nvim_set_hl(0, "DiagnosticUnderlineWarn", { undercurl = true, sp = c.fg_warn })
vim.api.nvim_set_hl(0, "DiagnosticUnnecessary", { fg = c.fg_unnecessary })
vim.api.nvim_set_hl(0, "DiagnosticWarn", { fg = c.fg_warn })
vim.api.nvim_set_hl(0, "Directory", { fg = c.fg_dir })
vim.api.nvim_set_hl(0, "ErrorMsg", { fg = c.fg_error })
vim.api.nvim_set_hl(0, "Function", { link = "Normal" })
vim.api.nvim_set_hl(0, "Identifier", { link = "Normal" })
vim.api.nvim_set_hl(0, "Linenr", { fg = c.fg_linenr })
vim.api.nvim_set_hl(0, "Changed", { fg = c.fg_changed })
vim.api.nvim_set_hl(0, "Added", { fg = c.fg_added })
vim.api.nvim_set_hl(0, "Removed", { fg = c.fg_removed })
vim.api.nvim_set_hl(0, "MatchParen", { fg = c.fg_match, bold = true })
vim.api.nvim_set_hl(0, "MoreMsg", { fg = c.fg_more })
vim.api.nvim_set_hl(0, "ModeMsg", { fg = c.fg_mode })
vim.api.nvim_set_hl(0, "NoneText", { fg = c.fg_nontext })
vim.api.nvim_set_hl(0, "Normal", { fg = c.fg, bg = c.bg })
vim.api.nvim_set_hl(0, "NormalFloat", { bg = c.bg_float })
vim.api.nvim_set_hl(0, "Operator", { link = "Normal" })
vim.api.nvim_set_hl(0, "Pmenu", { bg = c.bg_pmenu })
vim.api.nvim_set_hl(0, "Pmenusel", { bg = c.bg_select, bold = true })
vim.api.nvim_set_hl(0, "PreProc", { link = "Normal" })
vim.api.nvim_set_hl(0, "Question", { fg = c.fg_question })
vim.api.nvim_set_hl(0, "Quickfixline", { link = "Question" })
vim.api.nvim_set_hl(0, "Search", { bg = c.bg_search, fg = c.fg_search })
vim.api.nvim_set_hl(0, "SignColumn", { link = "Normal" })
vim.api.nvim_set_hl(0, "Special", { link = "Normal" })
vim.api.nvim_set_hl(0, "SpecialKey", { bg = c.bg_select })
vim.api.nvim_set_hl(0, "Spellbad", { link = "DiagnosticUnderlineError" })
vim.api.nvim_set_hl(0, "Statement", { fg = c.fg, bg = c.bg, bold = true })
vim.api.nvim_set_hl(0, "Statusline", { fg = c.fg_statusline, bg = c.bg_statusline })
vim.api.nvim_set_hl(0, "String", { fg = c.fg, italic = true })
vim.api.nvim_set_hl(0, "Title", { bold = true })
vim.api.nvim_set_hl(0, "Type", { link = "Normal" })
vim.api.nvim_set_hl(0, "Visual", { bg = c.bg_visual })
vim.api.nvim_set_hl(0, "WarningMsg", { fg = c.fg_warningmsg })

-- mini.nvim (https://github.com/nvim-mini/mini.nvim)

-- mini.animate
vim.api.nvim_set_hl(0, "MiniAnimateCursor", { reverse = true, nocombine = true })
vim.api.nvim_set_hl(0, "MiniAnimateNormalFloat", { link = "NormalFloat" })

-- mini.clue
vim.api.nvim_set_hl(0, "MiniClueBorder", { link = "FloatBorder" })
vim.api.nvim_set_hl(0, "MiniClueDescGroup", { link = "DiagnosticHint" })
vim.api.nvim_set_hl(0, "MiniClueDescSingle", { link = "NormalFloat" })
vim.api.nvim_set_hl(0, "MiniClueNextKey", { link = "DiagnosticHint" })
vim.api.nvim_set_hl(0, "MiniClueNextKeyWithPostkeys", { link = "DiagnosticError" })
vim.api.nvim_set_hl(0, "MiniClueSeparator", { link = "DiagnosticInfo" })
vim.api.nvim_set_hl(0, "MiniClueTitle", { link = "Title" })

-- mini.cmdlinepeek
vim.api.nvim_set_hl(0, "MiniCmdlinePeekBorder", { link = "FloatBorder" })
vim.api.nvim_set_hl(0, "MiniCmdlinePeekLineNr", { link = "Linenr" })
vim.api.nvim_set_hl(0, "MiniCmdlinePeekNormal", { link = "NormalFloat" })
vim.api.nvim_set_hl(0, "MiniCmdlinePeekSep", { link = "FloatBorder" })
vim.api.nvim_set_hl(0, "MiniCmdlinePeekSign", { link = "SignColumn" })
vim.api.nvim_set_hl(0, "MiniCmdlinePeekTitle", { link = "Title" })

-- mini.completion
vim.api.nvim_set_hl(0, "MiniCompletionActiveParameter", { underline = true })
vim.api.nvim_set_hl(0, "MiniCompletionDeprecated", { strikethrough = true })
vim.api.nvim_set_hl(0, "MiniCompletionInfoBorderOutdated", { fg = c.fg_warn })

-- mini.cursorword
vim.api.nvim_set_hl(0, "MiniCursorword", { underline = true })
vim.api.nvim_set_hl(0, "MiniCursorwordCurrent", { underline = true })

-- mini.deps
vim.api.nvim_set_hl(0, "MiniDepsChangeAdded", { link = "Added" })
vim.api.nvim_set_hl(0, "MiniDepsChangeRemoved", { link = "Removed" })
vim.api.nvim_set_hl(0, "MiniDepsHint", { link = "DiagnosticHint" })
vim.api.nvim_set_hl(0, "MiniDepsInfo", { link = "DiagnosticInfo" })
vim.api.nvim_set_hl(0, "MiniDepsMsgBreaking", { link = "DiagnosticWarn" })
vim.api.nvim_set_hl(0, "MiniDepsPlaceholder", { link = "Comment" })
vim.api.nvim_set_hl(0, "MiniDepsTitle", { link = "Title" })
vim.api.nvim_set_hl(0, "MiniDepsTitleError", { link = "DiagnosticError" })
vim.api.nvim_set_hl(0, "MiniDepsTitleSame", { link = "DiagnosticHint" })
vim.api.nvim_set_hl(0, "MiniDepsTitleUpdate", { link = "DiagnosticInfo" })

-- mini.diff
vim.api.nvim_set_hl(0, "MiniDiffOverAdd", { link = "DiffAdd" })
vim.api.nvim_set_hl(0, "MiniDiffOverChange", { link = "DiffChange" })
vim.api.nvim_set_hl(0, "MiniDiffOverChangeBuf", { link = "DiffChange" })
vim.api.nvim_set_hl(0, "MiniDiffOverContext", { link = "DiffChange" })
vim.api.nvim_set_hl(0, "MiniDiffOverContextBuf", { link = "Normal" })
vim.api.nvim_set_hl(0, "MiniDiffOverDelete", { link = "DiffDelete" })
vim.api.nvim_set_hl(0, "MiniDiffSignAdd", { fg = c.fg_added })
vim.api.nvim_set_hl(0, "MiniDiffSignChange", { fg = c.fg_changed })
vim.api.nvim_set_hl(0, "MiniDiffSignDelete", { fg = c.fg_removed })

-- mini.doc
vim.api.nvim_set_hl(0, "MiniDoc", { link = "Normal" })

-- mini.files
vim.api.nvim_set_hl(0, "MiniFilesBorder", { link = "FloatBorder" })
vim.api.nvim_set_hl(0, "MiniFilesBorderModified", { fg = c.fg_warn })
vim.api.nvim_set_hl(0, "MiniFilesCursorLine", { link = "Cursorline" })
vim.api.nvim_set_hl(0, "MiniFilesDirectory", { link = "Directory" })
vim.api.nvim_set_hl(0, "MiniFilesFile", { fg = c.fg })
vim.api.nvim_set_hl(0, "MiniFilesNormal", { link = "NormalFloat" })
vim.api.nvim_set_hl(0, "MiniFilesTitle", { link = "Title" })
vim.api.nvim_set_hl(0, "MiniFilesTitleFocused", { link = "Title", bold = true })

-- mini.hipatterns
vim.api.nvim_set_hl(0, "MiniHipatternsFixme", { fg = c.fg_error, bold = true })
vim.api.nvim_set_hl(0, "MiniHipatternsHack", { fg = c.fg_warn, bold = true })
vim.api.nvim_set_hl(0, "MiniHipatternsNote", { fg = c.fg_info, bold = true })
vim.api.nvim_set_hl(0, "MiniHipatternsTodo", { fg = c.fg_hint, bold = true })

-- mini.icons
vim.api.nvim_set_hl(0, "MiniIconsAzure", { fg = c.icon_azure })
vim.api.nvim_set_hl(0, "MiniIconsBlue", { fg = c.icon_blue })
vim.api.nvim_set_hl(0, "MiniIconsCyan", { fg = c.icon_cyan })
vim.api.nvim_set_hl(0, "MiniIconsGreen", { fg = c.icon_green })
vim.api.nvim_set_hl(0, "MiniIconsGrey", { fg = c.icon_grey })
vim.api.nvim_set_hl(0, "MiniIconsOrange", { fg = c.icon_orange })
vim.api.nvim_set_hl(0, "MiniIconsPurple", { fg = c.icon_purple })
vim.api.nvim_set_hl(0, "MiniIconsRed", { fg = c.icon_red })
vim.api.nvim_set_hl(0, "MiniIconsYellow", { fg = c.icon_yellow })

-- mini.indentscope
vim.api.nvim_set_hl(0, "MiniIndentscopeSymbol", { fg = c.fg_nontext })
vim.api.nvim_set_hl(0, "MiniIndentscopeSymbolOff", { fg = c.fg_nontext })

-- mini.jump
vim.api.nvim_set_hl(0, "MiniJump", { bg = c.bg_search, fg = c.fg_search })

-- mini.map
vim.api.nvim_set_hl(0, "MiniMapNormal", { link = "NormalFloat" })
vim.api.nvim_set_hl(0, "MiniMapSymbolCount", { link = "Special" })
vim.api.nvim_set_hl(0, "MiniMapSymbolLine", { link = "Title" })
vim.api.nvim_set_hl(0, "MiniMapSymbolView", { link = "Delimiter" })

-- mini.notify
vim.api.nvim_set_hl(0, "MiniNotifyBorder", { link = "FloatBorder" })
vim.api.nvim_set_hl(0, "MiniNotifyLspProgress", { link = "Comment" })
vim.api.nvim_set_hl(0, "MiniNotifyNormal", { link = "NormalFloat" })
vim.api.nvim_set_hl(0, "MiniNotifyTitle", { link = "Title" })

-- mini.operators
vim.api.nvim_set_hl(0, "MiniOperatorsExchangeFrom", { link = "IncSearch" })

-- mini.pick
vim.api.nvim_set_hl(0, "MiniPickBorder", { link = "FloatBorder" })
vim.api.nvim_set_hl(0, "MiniPickBorderBusy", { fg = c.fg_warn })
vim.api.nvim_set_hl(0, "MiniPickBorderText", { link = "Title" })
vim.api.nvim_set_hl(0, "MiniPickCursor", { blend = 100, nocombine = true })
vim.api.nvim_set_hl(0, "MiniPickHeader", { link = "DiagnosticHint" })
vim.api.nvim_set_hl(0, "MiniPickIconDirectory", { link = "Directory" })
vim.api.nvim_set_hl(0, "MiniPickIconFile", { fg = c.fg })
vim.api.nvim_set_hl(0, "MiniPickMatchCurrent", { link = "Cursorline" })
vim.api.nvim_set_hl(0, "MiniPickMatchMarked", { link = "Visual" })
vim.api.nvim_set_hl(0, "MiniPickMatchRanges", { fg = c.fg_match, bold = true })
vim.api.nvim_set_hl(0, "MiniPickNormal", { link = "NormalFloat" })
vim.api.nvim_set_hl(0, "MiniPickPreviewLine", { link = "Cursorline" })
vim.api.nvim_set_hl(0, "MiniPickPreviewRegion", { link = "IncSearch" })
vim.api.nvim_set_hl(0, "MiniPickPrompt", { link = "DiagnosticInfo" })
vim.api.nvim_set_hl(0, "MiniPickPromptCaret", { link = "Normal" })
vim.api.nvim_set_hl(0, "MiniPickPromptPrefix", { link = "DiagnosticHint" })

-- mini.snippets
vim.api.nvim_set_hl(0, "MiniSnippetsCurrent", { undercurl = true, sp = c.fg_hint })
vim.api.nvim_set_hl(0, "MiniSnippetsCurrentReplace", { undercurl = true, sp = c.fg_warn })
vim.api.nvim_set_hl(0, "MiniSnippetsFinal", { undercurl = true, sp = c.fg_comment })
vim.api.nvim_set_hl(0, "MiniSnippetsUnvisited", { undercurl = true, sp = c.fg_comment })
vim.api.nvim_set_hl(0, "MiniSnippetsVisited", { undercurl = true, sp = c.fg_added })

-- mini.starter
vim.api.nvim_set_hl(0, "MiniStarterCurrent", { bold = true })
vim.api.nvim_set_hl(0, "MiniStarterFooter", { link = "Title" })
vim.api.nvim_set_hl(0, "MiniStarterHeader", { link = "Title" })
vim.api.nvim_set_hl(0, "MiniStarterInactive", { link = "Comment" })
vim.api.nvim_set_hl(0, "MiniStarterItem", { link = "Normal" })
vim.api.nvim_set_hl(0, "MiniStarterItemBullet", { link = "Delimiter" })
vim.api.nvim_set_hl(0, "MiniStarterItemPrefix", { link = "Normal", bold = true })
vim.api.nvim_set_hl(0, "MiniStarterQuery", { fg = c.fg_match, bold = true })
vim.api.nvim_set_hl(0, "MiniStarterSection", { link = "Title" })

-- mini.statusline
vim.api.nvim_set_hl(0, "MiniStatuslineDevinfo", { link = "Statusline" })
vim.api.nvim_set_hl(0, "MiniStatuslineFileinfo", { link = "Statusline" })
vim.api.nvim_set_hl(0, "MiniStatuslineFilename", { link = "Statusline" })
vim.api.nvim_set_hl(0, "MiniStatuslineInactive", { fg = c.fg_linenr, bg = c.bg_statusline })
vim.api.nvim_set_hl(0, "MiniStatuslineModeCommand", { fg = c.fg_statusline, bg = c.bg_statusline, bold = true })
vim.api.nvim_set_hl(0, "MiniStatuslineModeInsert", { fg = c.fg_statusline, bg = c.bg_statusline, bold = true })
vim.api.nvim_set_hl(0, "MiniStatuslineModeNormal", { fg = c.fg_statusline, bg = c.bg_statusline, bold = true })
vim.api.nvim_set_hl(0, "MiniStatuslineModeOther", { fg = c.fg_statusline, bg = c.bg_statusline, bold = true })
vim.api.nvim_set_hl(0, "MiniStatuslineModeReplace", { fg = c.fg_statusline, bg = c.bg_statusline, bold = true })
vim.api.nvim_set_hl(0, "MiniStatuslineModeVisual", { fg = c.fg_statusline, bg = c.bg_statusline, bold = true })

-- mini.surround
vim.api.nvim_set_hl(0, "MiniSurround", { link = "IncSearch" })

-- tabline (native)
vim.api.nvim_set_hl(0, "TabLine", { fg = c.fg_statusline, bg = c.bg })
vim.api.nvim_set_hl(0, "TabLineFill", { bg = c.bg })
vim.api.nvim_set_hl(0, "TabLineSel", { fg = c.fg, bg = c.bg, bold = true })

-- mini.tabline
vim.api.nvim_set_hl(0, "MiniTablineCurrent", { fg = c.fg, bg = c.bg, bold = true })
vim.api.nvim_set_hl(0, "MiniTablineFill", { bg = c.bg })
vim.api.nvim_set_hl(0, "MiniTablineHidden", { fg = c.fg_linenr, bg = c.bg })
vim.api.nvim_set_hl(0, "MiniTablineModifiedCurrent", { fg = c.fg_search, bg = c.bg_search, bold = true })
vim.api.nvim_set_hl(0, "MiniTablineModifiedHidden", { fg = c.fg_search, bg = c.bg_search })
vim.api.nvim_set_hl(0, "MiniTablineModifiedVisible", { fg = c.fg_search, bg = c.bg_search })
vim.api.nvim_set_hl(0, "MiniTablineTabpagesection", { fg = c.fg_statusline, bg = c.bg, bold = true })
vim.api.nvim_set_hl(0, "MiniTablineTrunc", { fg = c.fg_warn, bg = c.bg })
vim.api.nvim_set_hl(0, "MiniTablineVisible", { fg = c.fg_statusline, bg = c.bg })

-- mini.test
vim.api.nvim_set_hl(0, "MiniTestEmphasis", { bold = true })
vim.api.nvim_set_hl(0, "MiniTestFail", { fg = c.fg_error, bold = true })
vim.api.nvim_set_hl(0, "MiniTestPass", { fg = c.fg_added, bold = true })

-- mini.trailspace
vim.api.nvim_set_hl(0, "MiniTrailspace", { bg = c.fg_error })
