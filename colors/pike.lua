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
			fg_linenr = p.warm_gray_50,
			fg_cursorlinenr = p.warm_gray_70,
			fg_nontext = p.warm_gray_40,
			fg_unnecessary = p.warm_gray_40,
			fg_comment = p.warm_gray_60,
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
		fg_linenr = p.warm_gray_60,
		fg_cursorlinenr = p.warm_gray_70,
		fg_nontext = p.warm_gray_70,
		fg_unnecessary = p.warm_gray_70,
		fg_comment = p.warm_gray_60,
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
	}

vim.api.nvim_set_hl(0, "@variable", { link = "Normal" })
vim.api.nvim_set_hl(0, "ColorColumn", { bg = c.bg_float })
vim.api.nvim_set_hl(0, "Comment", { fg = c.fg_comment, bold = true })
vim.api.nvim_set_hl(0, "Conceal", { bg = c.bg_select })
vim.api.nvim_set_hl(0, "Constant", {})
vim.api.nvim_set_hl(0, "CurSearch", { bg = c.bg_cursearch, fg = c.fg_cursearch })
vim.api.nvim_set_hl(0, "CursorLineNr", { fg = c.fg_cursorlinenr })
vim.api.nvim_set_hl(0, "Cursorline", { bg = c.bg_dim })
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
vim.api.nvim_set_hl(0, "String", { link = "Normal" })
vim.api.nvim_set_hl(0, "Title", { bold = true })
vim.api.nvim_set_hl(0, "Type", { link = "Normal" })
vim.api.nvim_set_hl(0, "Visual", { bg = c.bg_visual })
vim.api.nvim_set_hl(0, "WarningMsg", { fg = c.fg_warningmsg })
