--
-- Built with,
--
--        ,gggg,
--       d8" "8I                         ,dPYb,
--       88  ,dP                         IP'`Yb
--    8888888P"                          I8  8I
--       88                              I8  8'
--       88        gg      gg    ,g,     I8 dPgg,
--  ,aa,_88        I8      8I   ,8'8,    I8dP" "8I
-- dP" "88P        I8,    ,8I  ,8'  Yb   I8P    I8
-- Yb,_,d88b,,_   ,d8b,  ,d8b,,8'_   8) ,d8     I8,
--  "Y8P"  "Y888888P'"Y88P"`Y8P' "YY8P8P88P     `Y8
--

-- This is a starter colorscheme for use with Lush,
-- for usage guides, see :h lush or :LushRunTutorial

--
-- Note: Because this is a lua file, vim will append it to the runtime,
--       which means you can require(...) it in other lua code (this is useful),
--       but you should also take care not to conflict with other libraries.
--
--       (This is a lua quirk, as it has somewhat poor support for namespacing.)
--
--       Basically, name your file,
--
--       "super_theme/lua/lush_theme/super_theme_dark.lua",
--
--       not,
--
--       "super_theme/lua/dark.lua".
--
--       With that caveat out of the way...
--

-- Enable lush.ify on this file, run:
--
--  `:Lushify`
--
--  or
--
--  `:lua require('lush').ify()`

local lush = require('lush')
local hsluv = lush.hsluv

-- local local

local dark = {
    bg0 = hsluv(310, 6, 8),
    bg1 = hsluv(310, 6, 18),
    bg2 = hsluv(310, 6, 36),
    bg3 = hsluv(310, 10, 54),

    fg0 = hsluv(0, 25, 80),
    fg1 = hsluv(0, 25, 70),
    fg8 = hsluv(0, 15, 65),
    fg9 = hsluv(0, 10, 55),

    er0 = hsluv(7, 55, 50),
    er9 = hsluv(7, 55, 20),

    yl0 = hsluv(40, 40, 60),
    yl8 = hsluv(40, 40, 30),
    yl9 = hsluv(40, 40, 20),

    sr0 = hsluv(300, 40, 65),
    sr1 = hsluv(300, 35, 55),
    sr9 = hsluv(300, 35, 20),

    gr0 = hsluv(150, 35, 60),
    gr9 = hsluv(150, 35, 20),

    gb0 = hsluv(260, 35, 60),
    gb1 = hsluv(260, 35, 50),
    gb9 = hsluv(260, 35, 20),

    gp0 = hsluv(270, 50, 65),
    gp1 = hsluv(270, 40, 55),
    gp9 = hsluv(270, 35, 20),

    sa0 = hsluv(340, 35, 65),
    sa1 = hsluv(340, 35, 55),

    pi0 = hsluv(310, 15, 60),
    pi1 = hsluv(310, 15, 45),
}

local light = {
    bg0 = hsluv(310, 20, 90),
    bg1 = hsluv(310, 20, 80),
    bg2 = hsluv(310, 20, 60),
    bg3 = hsluv(310, 20, 50),

    fg0 = hsluv(0, 25, 35),
    fg1 = hsluv(0, 25, 40),
    fg8 = hsluv(0, 15, 45),
    fg9 = hsluv(0, 10, 50),

    er0 = hsluv(7, 55, 30),
    er9 = hsluv(7, 55, 60),

    yl0 = hsluv(40, 40, 30),
    yl8 = hsluv(40, 40, 40),
    yl9 = hsluv(40, 40, 60),

    sr0 = hsluv(300, 40, 30),
    sr1 = hsluv(300, 35, 40),
    sr9 = hsluv(300, 35, 50),

    gr0 = hsluv(150, 35, 30),
    gr9 = hsluv(150, 35, 50),

    gb0 = hsluv(260, 35, 30),
    gb1 = hsluv(260, 35, 40),
    gb9 = hsluv(260, 35, 50),

    gp0 = hsluv(270, 50, 30),
    gp1 = hsluv(270, 40, 40),
    gp9 = hsluv(270, 35, 50),

    sa0 = hsluv(340, 35, 30),
    sa1 = hsluv(340, 35, 50),

    pi0 = hsluv(310, 15, 30),
    pi1 = hsluv(310, 15, 50),
}

local palette = dark

if vim.o.background == "light" then
    palette = light
end

-- LSP/Linters mistakenly show `undefined global` errors in the spec, they may
-- support an annotation like the following. Consult your server documentation.
---@diagnostic disable: undefined-global
local theme = lush(function(injected_functions)
  local sym = injected_functions.sym
  return {
    -- The following are the Neovim (as of 0.8.0-dev+100-g371dfb174) highlight
    -- groups, mostly used for styling UI elements.
    -- Comment them out and add your own properties to override the defaults.
    -- An empty definition `{}` will clear all styling, leaving elements looking
    -- like the 'Normal' group.
    -- To be able to link to a group, it must already be defined, so you may have
    -- to reorder items as you go.
    --
    -- See :h highlight-groups
    --
    Normal         { bg = palette.bg0, fg = palette.fg0 }, -- Normal text
    ColorColumn    { bg = palette.bg1 }, -- Columns set with 'colorcolumn'
    Conceal        { bg = palette.bg0, fg = palette.fg0 }, -- Placeholder characters substituted for concealed text (see 'conceallevel')
    Cursor         { bg = palette.fg0, fg = palette.bg0 }, -- Character under the cursor
    CurSearch      { bg = palette.sr0, fg = palette.bg0 }, -- Highlighting a search pattern under the cursor (see 'hlsearch')
    -- lCursor        { }, -- Character under the cursor when |language-mapping| is used (see 'guicursor')
    -- CursorIM       { }, -- Like Cursor, but used when in IME mode |CursorIM|
    CursorColumn   { bg = palette.bg1 }, -- Screen-column at the cursor, when 'cursorcolumn' is set.
    CursorLine     { CursorColumn }, -- Screen-line at the cursor, when 'cursorline' is set. Low-priority if foreground (ctermfg OR guifg) is not set.
    Directory      { bold = true }, -- Directory names (and other special names in listings)
    DiffAdd        { bg = palette.gr9 }, -- Diff mode: Added line |diff.txt|
    DiffChange     { bg = palette.yl9 }, -- Diff mode: Changed line |diff.txt|
    DiffDelete     { bg = palette.er9 }, -- Diff mode: Deleted line |diff.txt|
    DiffText       { bg = palette.yl8 }, -- Diff mode: Changed text within a changed line |diff.txt|
    -- EndOfBuffer    { }, -- Filler lines (~) after the end of the buffer. By default, this is highlighted like |hl-NonText|.
    -- TermCursor     { }, -- Cursor in a focused terminal
    -- TermCursorNC   { }, -- Cursor in an unfocused terminal
    ErrorMsg       { fg = palette.er0 }, -- Error messages on the command line
    VertSplit      { fg = palette.fg1 }, -- Column separating vertically split windows
    Folded         { bg = palette.bg1 }, -- Line used for closed folds
    LineNr         { fg = palette.fg0 }, -- Line number for ":number" and ":#" commands, and when 'number' or 'relativenumber' option is set.
    LineNrAbove    { LineNr }, -- Line number for when the 'relativenumber' option is set, above the cursor line
    LineNrBelow    { LineNr }, -- Line number for when the 'relativenumber' option is set, below the cursor line
    FoldColumn     { LineNr }, -- 'foldcolumn'
    SignColumn     { LineNr }, -- Column where |signs| are displayed
    IncSearch      { CurSearch }, -- 'incsearch' highlighting; also used for the text replaced with ":s///c"
    Substitute     { bg = palette.sr9, fg = palette.sr0 }, -- |:substitute| replacement text highlighting
    CursorLineNr   { fg = palette.fg0, italic = true, bold = true }, -- Like LineNr when 'cursorline' or 'relativenumber' is set for the cursor line.
    -- CursorLineFold { }, -- Like FoldColumn when 'cursorline' is set for the cursor line
    -- CursorLineSign { }, -- Like SignColumn when 'cursorline' is set for the cursor line
    -- MatchParen     { }, -- Character under the cursor or just before it, if it is a paired bracket, and its match. |pi_paren.txt|
    ModeMsg        { fg = palette.pi1 }, -- 'showmode' message (e.g., "-- INSERT -- ")
    MsgArea        { ModeMsg }, -- Area for messages and cmdline
    MsgSeparator   { ModeMsg }, -- Separator for scrolled messages, `msgsep` flag of 'display'
    MoreMsg        { ModeMsg }, -- |more-prompt|
    -- NonText        { }, -- '@' at the end of the window, characters from 'showbreak' and other characters that do not really exist in the text (e.g., ">" displayed when a double-wide character doesn't fit at the end of the line). See also |hl-EndOfBuffer|.
    NormalFloat    { bg = palette.bg1, fg = palette.fg0 }, -- Normal text in floating windows.
    FloatBorder    { fg = palette.fg1 }, -- Border of floating windows.
    FloatTitle     { fg = palette.fg0, bold = true }, -- Title of floating windows.
    NormalNC       { Normal }, -- normal text in non-current windows
    Pmenu          { bg = palette.bg2, fg = palette.fg0 }, -- Popup menu: Normal item.
    PmenuSel       { bg = palette.pi0, fg = palette.bg0 }, -- Popup menu: Selected item.
    -- PmenuKind      { }, -- Popup menu: Normal item "kind"
    -- PmenuKindSel   { }, -- Popup menu: Selected item "kind"
    -- PmenuExtra     { }, -- Popup menu: Normal item "extra text"
    -- PmenuExtraSel  { }, -- Popup menu: Selected item "extra text"
    -- PmenuSbar      { }, -- Popup menu: Scrollbar.
    -- PmenuThumb     { }, -- Popup menu: Thumb of the scrollbar.
    Question       { fg = palette.fg0 }, -- |hit-enter| prompt and yes/no questions
    QuickFixLine   { Question }, -- Current |quickfix| item in the quickfix window. Combined with |hl-CursorLine| when the cursor is there.
    Search         { bg = palette.sr1, fg = palette.bg0 }, -- Last search pattern highlighting (see 'hlsearch'). Also used for similar items that need to stand out.
    -- SpecialKey     { }, -- Unprintable characters: text displayed differently from what it really is. But not 'listchars' whitespace. |hl-Whitespace|
    SpellBad       { sp = palette.er0, undercurl = true }, -- Word that is not recognized by the spellchecker. |spell| Combined with the highlighting used otherwise.
    SpellCap       { sp = palette.yl0, undercurl = true }, -- Word that should start with a capital. |spell| Combined with the highlighting used otherwise.
    SpellLocal     { sp = palette.gr0, undercurl = true }, -- Word that is recognized by the spellchecker as one that is used in another region. |spell| Combined with the highlighting used otherwise.
    SpellRare      { sp = palette.sr0, undercurl = true }, -- Word that is recognized by the spellchecker as one that is hardly ever used. |spell| Combined with the highlighting used otherwise.
    StatusLine     { bg = palette.bg2 }, -- Status line of current window
    -- StatusLineNC   { }, -- Status lines of not-current windows. Note: If this is equal to "StatusLine" Vim will use "^^^" in the status line of the current window.
    -- TabLine        { }, -- Tab pages line, not active tab page label
    -- TabLineFill    { }, -- Tab pages line, where there are no labels
    -- TabLineSel     { }, -- Tab pages line, active tab page label
    Title          { fg = palette.fg0, bold = true }, -- Titles for output from ":set all", ":autocmd" etc.
    Visual         { bg = palette.bg3 }, -- Visual mode selection
    VisualNOS      { Visual }, -- Visual mode selection when vim is "Not Owning the Selection".
    WarningMsg     { fg = palette.yl0 }, -- Warning messages
    -- Whitespace     { }, -- "nbsp", "space", "tab" and "trail" in 'listchars'
    -- Winseparator   { }, -- Separator between window splits. Inherts from |hl-VertSplit| by default, which it will replace eventually.
    -- WildMenu       { }, -- Current match in 'wildmenu' completion
    -- WinBar         { }, -- Window bar of current window
    -- WinBarNC       { }, -- Window bar of not-current windows

    -- Common vim syntax groups used for all kinds of code and markup.
    -- Commented-out groups should chain up to their preferred (*) group
    -- by default.
    --
    -- See :h group-name
    --
    -- Uncomment and edit if you want more specific syntax highlighting.

    Comment        { fg = palette.bg2, italic = true }, -- Any comment

    Constant       { fg = palette.gp1 }, -- (*) Any constant
    String         { fg = palette.gb0, italic= true }, --   A string constant: "this is a string"
    Character      { fg = palette.gb1, gui = "italic" }, --   A character constant: 'c', '\n'
    Number         { fg = palette.gp0 }, --   A number constant: 234, 0xff
    Boolean        { Constant }, --   A boolean constant: TRUE, false
    Float          { Number }, --   A floating point constant: 2.3e10

    Identifier     { fg = palette.fg0 }, -- (*) Any variable name
    Function       { fg = palette.fg9 }, --   Function name (also: methods for classes)

    Statement      { fg = palette.pi1 }, -- (*) Any statement
    Repeat         { fg = palette.pi1 }, --   for, do, while, etc.
    Conditional    { fg = palette.pi0 }, --   if, then, else, endif, switch, etc.
    Label          { fg = palette.pi1, bold = true }, --   case, default, etc.
    Operator       { Repeat }, --   "sizeof", "+", "*", etc.
    Keyword        { Conditional }, --   any other keyword
    Exception      { Label }, --   try, catch, throw

    PreProc        { fg = palette.pi0, bold = true }, -- (*) Generic Preprocessor
    Include        { PreProc }, --   Preprocessor #include
    Define         { fg = palette.pi1 }, --   Preprocessor #define
    Macro          { PreProc }, --   Same as Define
    PreCondit      { PreProc }, --   Preprocessor #if, #else, #endif, etc.

    Type           { fg = palette.sa0, italic= true }, -- (*) int, long, char, etc.
    StorageClass   { fg = palette.sa1 }, --   static, register, volatile, etc.
    Structure      { Type }, --   struct, union, enum, etc.
    Typedef        { StorageClass }, --   A typedef

    Special        { Constant }, -- (*) Any special symbol
    SpecialChar    { Constant }, --   Special character in a constant
    Tag            { Constant }, --   You can use CTRL-] on this
    Delimiter      { fg = palette.fg8 }, --   Character that needs attention
    SpecialComment { String }, --   Special things inside a comment (e.g. '\n')
    Debug          { String }, --   Debugging statements

    Underlined     { underline = true }, -- Text that stands out, HTML links
    -- Ignore         { }, -- Left blank, hidden |hl-Ignore| (NOTE: May be invisible here in template)
    Error          { ErrorMsg }, -- Any erroneous construct
    -- Todo           { }, -- Anything that needs extra attention; mostly the keywords TODO FIXME and XXX

    -- These groups are for the native LSP client and diagnostic system. Some
    -- other LSP clients may use these groups, or use their own. Consult your
    -- LSP client's documentation.

    -- See :h lsp-highlight, some groups may not be listed, submit a PR fix to lush-template!
    --
    -- LspReferenceText            { } , -- Used for highlighting "text" references
    -- LspReferenceRead            { } , -- Used for highlighting "read" references
    -- LspReferenceWrite           { } , -- Used for highlighting "write" references
    -- LspCodeLens                 { } , -- Used to color the virtual text of the codelens. See |nvim_buf_set_extmark()|.
    -- LspCodeLensSeparator        { } , -- Used to color the seperator between two or more code lens.
    -- LspSignatureActiveParameter { } , -- Used to highlight the active parameter in the signature help. See |vim.lsp.handlers.signature_help()|.

    -- See :h diagnostic-highlights, some groups may not be listed, submit a PR fix to lush-template!
    --
    DiagnosticError            { fg = palette.er0 } , -- Used as the base highlight group. Other Diagnostic highlights link to this by default (except Underline)
    DiagnosticWarn             { fg = palette.yl0 } , -- Used as the base highlight group. Other Diagnostic highlights link to this by default (except Underline)
    DiagnosticInfo             { fg = palette.gb0 } , -- Used as the base highlight group. Other Diagnostic highlights link to this by default (except Underline)
    DiagnosticHint             { fg = palette.pi0 } , -- Used as the base highlight group. Other Diagnostic highlights link to this by default (except Underline)
    DiagnosticOk               { fg = palette.gr0 } , -- Used as the base highlight group. Other Diagnostic highlights link to this by default (except Underline)
    DiagnosticVirtualTextError { DiagnosticError } , -- Used for "Error" diagnostic virtual text.
    DiagnosticVirtualTextWarn  { DiagnosticWarn } , -- Used for "Warn" diagnostic virtual text.
    DiagnosticVirtualTextInfo  { DiagnosticInfo } , -- Used for "Info" diagnostic virtual text.
    DiagnosticVirtualTextHint  { DiagnosticHint } , -- Used for "Hint" diagnostic virtual text.
    DiagnosticVirtualTextOk    { DiagnosticOk } , -- Used for "Ok" diagnostic virtual text.
    -- DiagnosticUnderlineError   { } , -- Used to underline "Error" diagnostics.
    -- DiagnosticUnderlineWarn    { } , -- Used to underline "Warn" diagnostics.
    -- DiagnosticUnderlineInfo    { } , -- Used to underline "Info" diagnostics.
    -- DiagnosticUnderlineHint    { } , -- Used to underline "Hint" diagnostics.
    -- DiagnosticUnderlineOk      { } , -- Used to underline "Ok" diagnostics.
    -- DiagnosticFloatingError    { } , -- Used to color "Error" diagnostic messages in diagnostics float. See |vim.diagnostic.open_float()|
    -- DiagnosticFloatingWarn     { } , -- Used to color "Warn" diagnostic messages in diagnostics float.
    -- DiagnosticFloatingInfo     { } , -- Used to color "Info" diagnostic messages in diagnostics float.
    -- DiagnosticFloatingHint     { } , -- Used to color "Hint" diagnostic messages in diagnostics float.
    -- DiagnosticFloatingOk       { } , -- Used to color "Ok" diagnostic messages in diagnostics float.
    -- DiagnosticSignError        { } , -- Used for "Error" signs in sign column.
    -- DiagnosticSignWarn         { } , -- Used for "Warn" signs in sign column.
    -- DiagnosticSignInfo         { } , -- Used for "Info" signs in sign column.
    -- DiagnosticSignHint         { } , -- Used for "Hint" signs in sign column.
    -- DiagnosticSignOk           { } , -- Used for "Ok" signs in sign column.

    GitSignsAdd    { bg = palette.bg1, fg = palette.gr0 },
    GitSignsChange { bg = palette.bg1, fg = palette.yl0 },
    GitSignsDelete { bg = palette.bg1, fg = palette.er0 },

    TodoBgNOTE { fg = palette.pi0, bold = true },
    TodoBgTODO { fg = palette.sa0, bold = true },
    TodoBgPERF { fg = palette.gr0, bold = true },
    TodoBgHACK { fg = palette.gb0, bold = true },
    TodoBgWARN { fg = palette.er0, bold = true },
    TodoBgFIX  { fg = palette.yl0, bold = true },

    RainbowDelimiterRed     { fg = palette.fg9 },
    RainbowDelimiterYellow  { fg = palette.fg8 },
    RainbowDelimiterBlue    { fg = palette.sa0 },
    RainbowDelimiterGreen   { fg = palette.pi0 },
    RainbowDelimiterOrange  { fg = palette.sr0 },
    RainbowDelimiterViolet  { fg = palette.sr1 },
    RainbowDelimiterCyan    { fg = palette.fg1 },

    -- Tree-Sitter syntax groups.
    --
    -- See :h treesitter-highlight-groups, some groups may not be listed,
    -- submit a PR fix to lush-template!
    --
    -- Tree-Sitter groups are defined with an "@" symbol, which must be
    -- specially handled to be valid lua code, we do this via the special
    -- sym function. The following are all valid ways to call the sym function,
    -- for more details see https://www.lua.org/pil/5.html
    --
    -- sym("@text.literal")
    -- sym('@text.literal')
    -- sym"@text.literal"
    -- sym'@text.literal'
    --
    -- For more information see https://github.com/rktjmp/lush.nvim/issues/109

    -- sym"@text.literal"      { }, -- Comment
    -- sym"@text.reference"    { }, -- Identifier
    -- sym"@text.title"        { }, -- Title
    -- sym"@text.uri"          { }, -- Underlined
    -- sym"@text.underline"    { }, -- Underlined
    -- sym"@text.todo"         { }, -- Todo
    -- sym"@comment"           { }, -- Comment
    -- sym"@punctuation"       { }, -- Delimiter
    sym"@constant"          { Constant }, -- Constant
    sym"@constant.builtin"  { Special }, -- Special
    -- sym"@constant.macro"    { }, -- Define
    -- sym"@define"            { }, -- Define
    -- sym"@macro"             { }, -- Macro
    sym"@string"            { String }, -- String
    sym"@string.escape"     { SpecialChar }, -- SpecialChar
    sym"@string.special"    { SpecialChar }, -- SpecialChar
    sym"@character"         { Character }, -- Character
    sym"@character.special" { SpecialChar }, -- SpecialChar
    sym"@number"            { Number }, -- Number
    sym"@boolean"           { Boolean }, -- Boolean
    sym"@float"             { Float }, -- Float
    sym"@function"          { Function }, -- Function
    sym"@function.builtin"  { Special }, -- Special
    sym"@function.macro"    { Macro }, -- Macro
    sym"@parameter"         { fg = palette.fg1 }, -- Identifier
    sym"@method"            { Function }, -- Function
    sym"@field"             { fg = palette.fg1 }, -- Identifier
    sym"@property"          { fg = palette.fg1 }, -- Identifier
    sym"@constructor"       { Special }, -- Special
    sym"@conditional"       { Conditional }, -- Conditional
    sym"@repeat"            { Repeat }, -- Repeat
    sym"@label"             { Label }, -- Label
    sym"@operator"          { Operator }, -- Operator
    sym"@keyword"           { Keyword }, -- Keyword
    sym"@exception"         { Exception }, -- Exception
    sym"@variable"          { Identifier }, -- Identifier
    sym"@type"              { Type }, -- Type
    sym"@type.definition"   { Typedef }, -- Typedef
    sym"@storageclass"      { StorageClass }, -- StorageClass
    sym"@structure"         { Structure }, -- Structure
    -- sym"@namespace"         { }, -- Identifier
    sym"@include"           { Include }, -- Include
    sym"@preproc"           { PreProc }, -- PreProc
    sym"@debug"             { Debug }, -- Debug
    -- sym"@tag"               { }, -- Tag

    sym"@type.builtin.cpp"              { Type },
    sym"@keyword.repeat.cpp"            { Repeat },
    sym"@keyword.conditional.cpp"       { Conditional },
    sym"@keyword.import.cpp"            { Include },
    sym"@keyword.directive.define.cpp"  { Define },
}
end)

-- Return our parsed theme for extension or use elsewhere.
return theme

-- vi:nowrap
