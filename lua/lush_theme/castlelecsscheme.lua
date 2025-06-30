local lush = require("lush")
local hsl = lush.hsl

local colors = {
   bg = hsl("#272b34"),
   white = hsl("#dedede"),
   pink = hsl("#ff66b0"),
   yellow = hsl("#feffad"),
   purple = hsl("#beadfa"),
   search = hsl("#adadad"),
}

---@diagnostic disable: undefined-global
local theme = lush(function(injected_functions)
   local sym = injected_functions.sym

   return {
      TermCursor                                                     { gui="reverse", }, -- TermCursor     xxx cterm=reverse gui=reverse
      GitSignsAddInline                                              { TermCursor }, -- GitSignsAddInline xxx links to TermCursor
      GitSignsDeleteInline                                           { TermCursor }, -- GitSignsDeleteInline xxx links to TermCursor
      GitSignsChangeInline                                           { TermCursor }, -- GitSignsChangeInline xxx links to TermCursor
      Directory                                                      { fg="cyan", }, -- Directory      xxx guifg=Cyan
      NeoTreeDirectoryIcon                                           { Directory }, -- NeoTreeDirectoryIcon xxx links to Directory
      NeoTreeDirectoryName                                           { Directory }, -- NeoTreeDirectoryName xxx links to Directory
      OilDir                                                         { Directory }, -- OilDir         xxx links to Directory
      ErrorMsg                                                       { bg="red", fg="white", }, -- ErrorMsg       xxx guifg=White guibg=Red
      NvimInvalidSpacing                                             { ErrorMsg }, -- NvimInvalidSpacing xxx links to ErrorMsg
      IncSearch                                                      { gui="reverse", }, -- IncSearch      xxx cterm=reverse gui=reverse
      Search                                                         { bg="#adadad", }, -- Search         xxx guibg=#adadad
      CurSearch                                                      { Search }, -- CurSearch      xxx links to Search
      QuickFixLine                                                   { Search }, -- QuickFixLine   xxx links to Search
      Substitute                                                     { Search }, -- Substitute     xxx links to Search
      NeoTreePreview                                                 { Search }, -- NeoTreePreview xxx links to Search
      MoreMsg                                                        { gui="bold", fg="seagreen", }, -- MoreMsg        xxx cterm=bold gui=bold guifg=SeaGreen
      ModeMsg                                                        { gui="bold", }, -- ModeMsg        xxx cterm=bold gui=bold
      LineNr                                                         { fg="#69748c", }, -- LineNr         xxx guifg=#69748c
      LineNrAbove                                                    { LineNr }, -- LineNrAbove    xxx links to LineNr
      LineNrBelow                                                    { LineNr }, -- LineNrBelow    xxx links to LineNr
      CursorLineNr                                                   { fg="#feffad", }, -- CursorLineNr   xxx guifg=#feffad
      MarkSignNumHL                                                  { CursorLineNr }, -- MarkSignNumHL  xxx links to CursorLineNr
      Question                                                       { gui="bold", fg="green", }, -- Question       xxx cterm=bold gui=bold guifg=Green
      StatusLine                                                     { bg = colors.bg, fg = colors.white },
      StatusLineNC                                                   { StatusLine }, -- StatusLineNC   xxx cterm=reverse gui=reverse
      StatusLineTermNC                                               { StatusLine }, -- StatusLineTermNC xxx links to StatusLineNC
      NeoTreeStatusLineNC                                            { StatusLine }, -- NeoTreeStatusLineNC xxx links to StatusLineNC
      Title                                                          { fg=colors.pink, }, -- Title          xxx guifg=#ff8f8f
      FloatTitle                                                     { Title }, -- FloatTitle     xxx links to Title
      sym"@markup.heading"                                           { Title }, -- @markup.heading xxx links to Title
      htmlTitle                                                      { Title }, -- htmlTitle      xxx links to Title
      htmlH1                                                         { Title }, -- htmlH1         xxx links to Title
      sym"@text.title"                                               { Title }, -- @text.title    xxx links to Title
      Visual                                                         { bg="nvimdarkgrey4", }, -- Visual         xxx ctermfg=0 ctermbg=15 guibg=NvimDarkGrey4
      VisualNOS                                                      { Visual }, -- VisualNOS      xxx links to Visual
      LspReferenceText                                               { Visual }, -- LspReferenceText xxx links to Visual
      LspSignatureActiveParameter                                    { Visual }, -- LspSignatureActiveParameter xxx links to Visual
      SnippetTabstop                                                 { Visual }, -- SnippetTabstop xxx links to Visual
      WarningMsg                                                     { fg="red", }, -- WarningMsg     xxx guifg=Red
      WildMenu                                                       { bg="yellow", fg="black", }, -- WildMenu       xxx guifg=Black guibg=Yellow
      Folded                                                         { bg="darkgrey", fg="cyan", }, -- Folded         xxx guifg=Cyan guibg=DarkGrey
      FoldColumn                                                     { bg="grey", fg="cyan", }, -- FoldColumn     xxx guifg=Cyan guibg=Grey
      CursorLineFold                                                 { FoldColumn }, -- CursorLineFold xxx links to FoldColumn
      DiffAdd                                                        { bg="#43a800", }, -- DiffAdd        xxx guibg=#43a800
      DiffChange                                                     { DiffAdd }, -- DiffChange     xxx links to DiffAdd
      GitSignsAddLn                                                  { DiffAdd }, -- GitSignsAddLn  xxx links to DiffAdd
      GitSignsAddPreview                                             { DiffAdd }, -- GitSignsAddPreview xxx links to DiffAdd
      DiffDelete                                                     { bg="#ff4747", }, -- DiffDelete     xxx guibg=#ff4747
      GitSignsDeletePreview                                          { DiffDelete }, -- GitSignsDeletePreview xxx links to DiffDelete
      GitSignsDeleteVirtLn                                           { DiffDelete }, -- GitSignsDeleteVirtLn xxx links to DiffDelete
      DiffText                                                       { fg="#43a800", }, -- DiffText       xxx guifg=#43a800
      SignColumn                                                     { fg="nvimdarkgrey4", }, -- SignColumn     xxx guifg=NvimDarkGrey4
      CursorLineSign                                                 { SignColumn }, -- CursorLineSign xxx links to SignColumn
      Conceal                                                        { bg="darkgrey", fg="lightgrey", }, -- Conceal        xxx guifg=LightGrey guibg=DarkGrey
      SpellBad                                                       { gui="undercurl", sp="red", }, -- SpellBad       xxx cterm=undercurl gui=undercurl guisp=Red
      SpellCap                                                       { gui="undercurl", sp="blue", }, -- SpellCap       xxx cterm=undercurl gui=undercurl guisp=Blue
      SpellRare                                                      { gui="undercurl", sp="magenta", }, -- SpellRare      xxx cterm=undercurl gui=undercurl guisp=Magenta
      SpellLocal                                                     { gui="undercurl", sp="cyan", }, -- SpellLocal     xxx cterm=undercurl gui=undercurl guisp=Cyan
      PmenuSel                                                       { bg=colors.bg, }, -- PmenuSel       xxx guibg=DarkGrey
      PmenuKindSel                                                   { PmenuSel }, -- PmenuKindSel   xxx links to PmenuSel
      PmenuExtraSel                                                  { PmenuSel }, -- PmenuExtraSel  xxx links to PmenuSel
      PmenuMatch                                                     { gui="bold", }, -- PmenuMatch     xxx cterm=bold gui=bold
      PmenuMatchSel                                                  { gui="bold", }, -- PmenuMatchSel  xxx cterm=bold gui=bold
      PmenuSbar                                                      { bg="grey", }, -- PmenuSbar      xxx guibg=Grey
      PmenuThumb                                                     { bg="white", }, -- PmenuThumb     xxx guibg=White
      TabLine                                                        { bg=colors.bg, gui="underline", }, -- TabLine        xxx cterm=underline gui=underline guibg=DarkGrey
      TabLineFill                                                    { TabLine }, -- TabLineFill    xxx links to TabLine
      TabLineSel                                                     { gui="bold", }, -- TabLineSel     xxx cterm=bold gui=bold
      CursorColumn                                                   { bg="grey40", }, -- CursorColumn   xxx guibg=Grey40
      ColorColumn                                                    { bg="#595959", }, -- ColorColumn    xxx guibg=#595959
      CursorLine                                                     { ColorColumn }, -- CursorLine     xxx links to ColorColumn
      Whitespace                                                     { fg="#393f4c", }, -- Whitespace     xxx guifg=#393f4c
      SpecialKey                                                     { Whitespace }, -- SpecialKey     xxx links to Whitespace
      NonText                                                        { Whitespace }, -- NonText        xxx links to Whitespace
      NormalFloat                                                    { bg=colors.bg, }, -- NormalFloat    xxx guibg=NvimDarkGrey1
      FloatBorder                                                    { NormalFloat }, -- FloatBorder    xxx links to NormalFloat
      WinBar                                                         { gui="bold", }, -- WinBar         xxx cterm=bold gui=bold
      WinBarNC                                                       { WinBar }, -- WinBarNC       xxx links to WinBar
      Cursor                                                         { bg=colors.yellow, fg=colors.yellow, }, -- Cursor         xxx guifg=Yellow guibg=Yellow
      CursorIM                                                       { Cursor }, -- CursorIM       xxx links to Cursor
      RedrawDebugNormal                                              { gui="reverse", }, -- RedrawDebugNormal xxx cterm=reverse gui=reverse
      Underlined                                                     { gui="underline", fg="#80a0ff", }, -- Underlined     xxx cterm=underline gui=underline guifg=#80a0ff
      sym"@string.special.url"                                       { Underlined }, -- @string.special.url xxx links to Underlined
      sym"@markup.link"                                              { Underlined }, -- @markup.link   xxx links to Underlined
      sym"@text.uri"                                                 { Underlined }, -- @text.uri      xxx links to Underlined
      htmlLink                                                       { Underlined }, -- htmlLink       xxx links to Underlined
      helpUnderlined                                                 { Underlined }, -- helpUnderlined xxx links to Underlined
      sym"@text.underline"                                           { Underlined }, -- @text.underline xxx links to Underlined
      lCursor                                                        { bg="fg", fg="bg", }, -- lCursor        xxx guifg=bg guibg=fg
      Normal                                                         { bg="#272b34", fg="#dedede", }, -- Normal         xxx guifg=#dedede guibg=#272b34
      WinSeparator                                                   { Normal }, -- WinSeparator   xxx links to Normal
      VertSplit                                                      { Normal }, -- VertSplit      xxx links to Normal
      Pmenu                                                          { Normal }, -- Pmenu          xxx links to Normal
      Identifier                                                     { Normal }, -- Identifier     xxx links to Normal
      NvimSpacing                                                    { Normal }, -- NvimSpacing    xxx links to Normal
      sym"@neorg.rendered.latex"                                     { Normal }, -- @neorg.rendered.latex xxx links to Normal
      cssMediaComma                                                  { Normal }, -- cssMediaComma  xxx links to Normal
      dtdTag                                                         { Normal }, -- dtdTag         xxx links to Normal
      NeoTreeNormal                                                  { Normal }, -- NeoTreeNormal  xxx links to Normal
      Constant                                                       { fg="#50af99", }, -- Constant       xxx guifg=#50af99
      sym"@constant"                                                 { Constant }, -- @constant      xxx links to Constant
      sym"@lsp.type.enumMember"                                      { Constant }, -- @lsp.type.enumMember xxx links to Constant
      helpConstant                                                   { Constant }, -- helpConstant   xxx links to Constant
      cssUnicodeRange                                                { Constant }, -- cssUnicodeRange xxx links to Constant
      cssKeyFrameProp                                                { Constant }, -- cssKeyFrameProp xxx links to Constant
      cssColor                                                       { Constant }, -- cssColor       xxx links to Constant
      vbConst                                                        { Constant }, -- vbConst        xxx links to Constant
      yamlConstant                                                   { Constant }, -- yamlConstant   xxx links to Constant
      cssPseudoClassLang                                             { Constant }, -- cssPseudoClassLang xxx links to Constant
      vbDefine                                                       { Constant }, -- vbDefine       xxx links to Constant
      dtdConstant                                                    { Constant }, -- dtdConstant    xxx links to Constant
      cssFunction                                                    { Constant }, -- cssFunction    xxx links to Constant
      cssAttr                                                        { Constant }, -- cssAttr        xxx links to Constant
      Number                                                         { fg="#dedede", }, -- Number         xxx guifg=#dedede
      Float                                                          { Number }, -- Float          xxx links to Number
      sym"@number"                                                   { Number }, -- @number        xxx links to Number
      NvimNumber                                                     { Number }, -- NvimNumber     xxx links to Number
      cssUnitDecorators                                              { Number }, -- cssUnitDecorators xxx links to Number
      yamlTimestamp                                                  { Number }, -- yamlTimestamp  xxx links to Number
      cssValueFrequency                                              { Number }, -- cssValueFrequency xxx links to Number
      cssValueAngle                                                  { Number }, -- cssValueAngle  xxx links to Number
      cssValueInteger                                                { Number }, -- cssValueInteger xxx links to Number
      helpNumber                                                     { Number }, -- helpNumber     xxx links to Number
      yamlInteger                                                    { Number }, -- yamlInteger    xxx links to Number
      yamlYAMLVersion                                                { Number }, -- yamlYAMLVersion xxx links to Number
      cssValueLength                                                 { Number }, -- cssValueLength xxx links to Number
      vbNumber                                                       { Number }, -- vbNumber       xxx links to Number
      cssValueNumber                                                 { Number }, -- cssValueNumber xxx links to Number
      cssValueTime                                                   { Number }, -- cssValueTime   xxx links to Number
      Boolean                                                        { fg="#ff66b0", }, -- Boolean        xxx guifg=#ff66b0
      sym"@boolean"                                                  { Boolean }, -- @boolean       xxx links to Boolean
      helpBoolean                                                    { Boolean }, -- helpBoolean    xxx links to Boolean
      vbBoolean                                                      { Boolean }, -- vbBoolean      xxx links to Boolean
      javaScriptBoolean                                              { Boolean }, -- javaScriptBoolean xxx links to Boolean
      Statement                                                      { gui="bold", fg="#ff66b0", }, -- Statement      xxx cterm=bold gui=bold guifg=#ff66b0
      Conditional                                                    { Statement }, -- Conditional    xxx links to Statement
      Repeat                                                         { Statement }, -- Repeat         xxx links to Statement
      Label                                                          { Statement }, -- Label          xxx links to Statement
      Keyword                                                        { Statement }, -- Keyword        xxx links to Statement
      Exception                                                      { Statement }, -- Exception      xxx links to Statement
      Operator                                                       { Statement }, -- Operator       xxx links to Statement
      helpStatement                                                  { Statement }, -- helpStatement  xxx links to Statement
      helpHeadline                                                   { Statement }, -- helpHeadline   xxx links to Statement
      htmlStatement                                                  { Statement }, -- htmlStatement  xxx links to Statement
      cssAtRuleLogical                                               { Statement }, -- cssAtRuleLogical xxx links to Statement
      cssTagName                                                     { Statement }, -- cssTagName     xxx links to Statement
      vbKeyword                                                      { Statement }, -- vbKeyword      xxx links to Statement
      vbStatement                                                    { Statement }, -- vbStatement    xxx links to Statement
      javaScriptStatement                                            { Statement }, -- javaScriptStatement xxx links to Statement
      dtdEntity                                                      { Statement }, -- dtdEntity      xxx links to Statement
      dtdTagName                                                     { Statement }, -- dtdTagName     xxx links to Statement
      xmlDocTypeKeyword                                              { Statement }, -- xmlDocTypeKeyword xxx links to Statement
      xmlCdataCdata                                                  { Statement }, -- xmlCdataCdata  xxx links to Statement
      xmlEntity                                                      { Statement }, -- xmlEntity      xxx links to Statement
      Include                                                        { fg="#ff66b0", }, -- Include        xxx guifg=#ff66b0
      helpInclude                                                    { Include }, -- helpInclude    xxx links to Include
      cssAtRule                                                      { Include }, -- cssAtRule      xxx links to Include
      sym"@include"                                                  { Include }, -- @include       xxx links to Include
      PreProc                                                        { gui="bold", fg="#beadfa", }, -- PreProc        xxx cterm=bold gui=bold guifg=#beadfa
      PreCondit                                                      { PreProc }, -- PreCondit      xxx links to PreProc
      helpPreProc                                                    { PreProc }, -- helpPreProc    xxx links to PreProc
      helpHeader                                                     { PreProc }, -- helpHeader     xxx links to PreProc
      helpSectionDelim                                               { PreProc }, -- helpSectionDelim xxx links to PreProc
      yamlDocumentEnd                                                { PreProc }, -- yamlDocumentEnd xxx links to PreProc
      yamlDocumentStart                                              { PreProc }, -- yamlDocumentStart xxx links to PreProc
      markdownRule                                                   { PreProc }, -- markdownRule   xxx links to PreProc
      cssPagePseudo                                                  { PreProc }, -- cssPagePseudo  xxx links to PreProc
      cssAtKeyword                                                   { PreProc }, -- cssAtKeyword   xxx links to PreProc
      cssPseudoClassId                                               { PreProc }, -- cssPseudoClassId xxx links to PreProc
      vbPreProc                                                      { PreProc }, -- vbPreProc      xxx links to PreProc
      vbMethods                                                      { PreProc }, -- vbMethods      xxx links to PreProc
      htmlHead                                                       { PreProc }, -- htmlHead       xxx links to PreProc
      htmlPreProcAttrName                                            { PreProc }, -- htmlPreProcAttrName xxx links to PreProc
      htmlPreProc                                                    { PreProc }, -- htmlPreProc    xxx links to PreProc
      htmlPreStmt                                                    { PreProc }, -- htmlPreStmt    xxx links to PreProc
      sym"@preproc"                                                  { PreProc }, -- @preproc       xxx links to PreProc
      Define                                                         { fg="#ff66b0", }, -- Define         xxx guifg=#ff66b0
      Typedef                                                        { Define }, -- Typedef        xxx links to Define
      sym"@constant.macro"                                           { Define }, -- @constant.macro xxx links to Define
      helpDefine                                                     { Define }, -- helpDefine     xxx links to Define
      sym"@define"                                                   { Define }, -- @define        xxx links to Define
      Macro                                                          { fg="#ff66b0", }, -- Macro          xxx guifg=#ff66b0
      sym"@attribute"                                                { Macro }, -- @attribute     xxx links to Macro
      sym"@lsp.type.macro"                                           { Macro }, -- @lsp.type.macro xxx links to Macro
      sym"@function.macro"                                           { Macro }, -- @function.macro xxx links to Macro
      helpMacro                                                      { Macro }, -- helpMacro      xxx links to Macro
      sym"@macro"                                                    { Macro }, -- @macro         xxx links to Macro
      StorageClass                                                   { fg="#3dcfff", }, -- StorageClass   xxx guifg=#3dcfff
      helpStorageClass                                               { StorageClass }, -- helpStorageClass xxx links to StorageClass
      cssProp                                                        { StorageClass }, -- cssProp        xxx links to StorageClass
      sym"@storageclass"                                             { StorageClass }, -- @storageclass  xxx links to StorageClass
      Type                                                           { fg="#3dcfff", }, -- Type           xxx guifg=#3dcfff
      sym"@type"                                                     { Type }, -- @type          xxx links to Type
      sym"@lsp.type.type"                                            { Type }, -- @lsp.type.type xxx links to Type
      NvimNumberPrefix                                               { Type }, -- NvimNumberPrefix xxx links to Type
      NvimOptionSigil                                                { Type }, -- NvimOptionSigil xxx links to Type
      helpType                                                       { Type }, -- helpType       xxx links to Type
      helpOption                                                     { Type }, -- helpOption     xxx links to Type
      yamlAlias                                                      { Type }, -- yamlAlias      xxx links to Type
      yamlAnchor                                                     { Type }, -- yamlAnchor     xxx links to Type
      yamlNodeTag                                                    { Type }, -- yamlNodeTag    xxx links to Type
      markdownId                                                     { Type }, -- markdownId     xxx links to Type
      vbTypeSpecifier                                                { Type }, -- vbTypeSpecifier xxx links to Type
      vbTypes                                                        { Type }, -- vbTypes        xxx links to Type
      javaScriptType                                                 { Type }, -- javaScriptType xxx links to Type
      htmlArg                                                        { Type }, -- htmlArg        xxx links to Type
      dtdType                                                        { Type }, -- dtdType        xxx links to Type
      xmlCdataEnd                                                    { Type }, -- xmlCdataEnd    xxx links to Type
      xmlCdataStart                                                  { Type }, -- xmlCdataStart  xxx links to Type
      xmlProcessing                                                  { Type }, -- xmlProcessing  xxx links to Type
      xmlAttrib                                                      { Type }, -- xmlAttrib      xxx links to Type
      xmlEntityPunct                                                 { Type }, -- xmlEntityPunct xxx links to Type
      Structure                                                      { fg="#3dcfff", }, -- Structure      xxx guifg=#3dcfff
      sym"@module"                                                   { Structure }, -- @module        xxx links to Structure
      sym"@lsp.type.class"                                           { Structure }, -- @lsp.type.class xxx links to Structure
      sym"@lsp.type.enum"                                            { Structure }, -- @lsp.type.enum xxx links to Structure
      sym"@lsp.type.interface"                                       { Structure }, -- @lsp.type.interface xxx links to Structure
      sym"@lsp.type.namespace"                                       { Structure }, -- @lsp.type.namespace xxx links to Structure
      sym"@lsp.type.struct"                                          { Structure }, -- @lsp.type.struct xxx links to Structure
      helpStructure                                                  { Structure }, -- helpStructure  xxx links to Structure
      Tag                                                            { gui="bold", fg="#beadfa", }, -- Tag            xxx cterm=bold gui=bold guifg=#beadfa
      sym"@tag"                                                      { Tag }, -- @tag           xxx links to Tag
      helpTag                                                        { Tag }, -- helpTag        xxx links to Tag
      xmlNamespace                                                   { Tag }, -- xmlNamespace   xxx links to Tag
      Special                                                        { fg="#feffad", }, -- Special        xxx guifg=#feffad
      SpecialComment                                                 { Special }, -- SpecialComment xxx links to Special
      Debug                                                          { Special }, -- Debug          xxx links to Special
      sym"@variable.builtin"                                         { Special }, -- @variable.builtin xxx links to Special
      sym"@variable.parameter.builtin"                               { Special }, -- @variable.parameter.builtin xxx links to Special
      sym"@constant.builtin"                                         { Special }, -- @constant.builtin xxx links to Special
      sym"@module.builtin"                                           { Special }, -- @module.builtin xxx links to Special
      sym"@type.builtin"                                             { Special }, -- @type.builtin  xxx links to Special
      sym"@attribute.builtin"                                        { Special }, -- @attribute.builtin xxx links to Special
      sym"@function.builtin"                                         { Special }, -- @function.builtin xxx links to Special
      sym"@constructor"                                              { Special }, -- @constructor   xxx links to Special
      Delimiter                                                      { Special }, -- Delimiter      xxx links to Special
      sym"@punctuation.special"                                      { Special }, -- @punctuation.special xxx links to Special
      sym"@markup"                                                   { Special }, -- @markup        xxx links to Special
      sym"@tag.builtin"                                              { Special }, -- @tag.builtin   xxx links to Special
      yamlFlowMappingMerge                                           { Special }, -- yamlFlowMappingMerge xxx links to Special
      yamlKeyValueDelimiter                                          { Special }, -- yamlKeyValueDelimiter xxx links to Special
      markdownEscape                                                 { Special }, -- markdownEscape xxx links to Special
      cssFontDescriptor                                              { Special }, -- cssFontDescriptor xxx links to Special
      cssMediaType                                                   { Special }, -- cssMediaType   xxx links to Special
      cssAttrComma                                                   { Special }, -- cssAttrComma   xxx links to Special
      cssCustomProp                                                  { Special }, -- cssCustomProp  xxx links to Special
      cssImportant                                                   { Special }, -- cssImportant   xxx links to Special
      cssUnicodeEscape                                               { Special }, -- cssUnicodeEscape xxx links to Special
      cssSelectorOp2                                                 { Special }, -- cssSelectorOp2 xxx links to Special
      cssSelectorOp                                                  { Special }, -- cssSelectorOp  xxx links to Special
      vbEvents                                                       { Special }, -- vbEvents       xxx links to Special
      javaScriptEmbed                                                { Special }, -- javaScriptEmbed xxx links to Special
      javaScriptSpecial                                              { Special }, -- javaScriptSpecial xxx links to Special
      javaScript                                                     { Special }, -- javaScript     xxx links to Special
      htmlCssDefinition                                              { Special }, -- htmlCssDefinition xxx links to Special
      htmlSpecialChar                                                { Special }, -- htmlSpecialChar xxx links to Special
      yamlMappingKeyStart                                            { Special }, -- yamlMappingKeyStart xxx links to Special
      yamlFlowIndicator                                              { Special }, -- yamlFlowIndicator xxx links to Special
      yamlBlockMappingMerge                                          { Special }, -- yamlBlockMappingMerge xxx links to Special
      helpSpecial                                                    { Special }, -- helpSpecial    xxx links to Special
      OilChange                                                      { Special }, -- OilChange      xxx links to Special
      SpecialChar                                                    { fg="#feffad", }, -- SpecialChar    xxx guifg=#feffad
      sym"@string.special"                                           { SpecialChar }, -- @string.special xxx links to SpecialChar
      sym"@string.escape"                                            { SpecialChar }, -- @string.escape xxx links to SpecialChar
      sym"@character.special"                                        { SpecialChar }, -- @character.special xxx links to SpecialChar
      NvimRegister                                                   { SpecialChar }, -- NvimRegister   xxx links to SpecialChar
      NvimStringSpecial                                              { SpecialChar }, -- NvimStringSpecial xxx links to SpecialChar
      NeoTreeFilterTerm                                              { SpecialChar }, -- NeoTreeFilterTerm xxx links to SpecialChar
      yamlEscape                                                     { SpecialChar }, -- yamlEscape     xxx links to SpecialChar
      yamlSingleEscape                                               { SpecialChar }, -- yamlSingleEscape xxx links to SpecialChar
      helpSpecialChar                                                { SpecialChar }, -- helpSpecialChar xxx links to SpecialChar
      NeoTreeBufferNumber                                            { SpecialChar }, -- NeoTreeBufferNumber xxx links to SpecialChar
      Ignore                                                         { bg="#dedede", fg="bg", }, -- Ignore         xxx guifg=bg guibg=#dedede
      helpIgnore                                                     { Ignore }, -- helpIgnore     xxx links to Ignore
      helpBar                                                        { Ignore }, -- helpBar        xxx links to Ignore
      helpStar                                                       { Ignore }, -- helpStar       xxx links to Ignore
      helpBacktick                                                   { Ignore }, -- helpBacktick   xxx links to Ignore
      DiagnosticError                                                { fg="red", }, -- DiagnosticError xxx guifg=Red
      DiagnosticFloatingError                                        { DiagnosticError }, -- DiagnosticFloatingError xxx links to DiagnosticError
      DiagnosticVirtualTextError                                     { DiagnosticError }, -- DiagnosticVirtualTextError xxx links to DiagnosticError
      DiagnosticVirtualLinesError                                    { DiagnosticError }, -- DiagnosticVirtualLinesError xxx links to DiagnosticError
      DiagnosticSignError                                            { DiagnosticError }, -- DiagnosticSignError xxx links to DiagnosticError
      sym"@comment.error"                                            { DiagnosticError }, -- @comment.error xxx links to DiagnosticError
      OilDelete                                                      { DiagnosticError }, -- OilDelete      xxx links to DiagnosticError
      DiagnosticWarn                                                 { fg="orange", }, -- DiagnosticWarn xxx guifg=Orange
      DiagnosticFloatingWarn                                         { DiagnosticWarn }, -- DiagnosticFloatingWarn xxx links to DiagnosticWarn
      DiagnosticVirtualTextWarn                                      { DiagnosticWarn }, -- DiagnosticVirtualTextWarn xxx links to DiagnosticWarn
      DiagnosticVirtualLinesWarn                                     { DiagnosticWarn }, -- DiagnosticVirtualLinesWarn xxx links to DiagnosticWarn
      DiagnosticSignWarn                                             { DiagnosticWarn }, -- DiagnosticSignWarn xxx links to DiagnosticWarn
      sym"@comment.warning"                                          { DiagnosticWarn }, -- @comment.warning xxx links to DiagnosticWarn
      OilMove                                                        { DiagnosticWarn }, -- OilMove        xxx links to DiagnosticWarn
      DiagnosticInfo                                                 { fg="lightblue", }, -- DiagnosticInfo xxx guifg=LightBlue
      DiagnosticFloatingInfo                                         { DiagnosticInfo }, -- DiagnosticFloatingInfo xxx links to DiagnosticInfo
      DiagnosticVirtualTextInfo                                      { DiagnosticInfo }, -- DiagnosticVirtualTextInfo xxx links to DiagnosticInfo
      DiagnosticVirtualLinesInfo                                     { DiagnosticInfo }, -- DiagnosticVirtualLinesInfo xxx links to DiagnosticInfo
      DiagnosticSignInfo                                             { DiagnosticInfo }, -- DiagnosticSignInfo xxx links to DiagnosticInfo
      sym"@comment.note"                                             { DiagnosticInfo }, -- @comment.note  xxx links to DiagnosticInfo
      OilCreate                                                      { DiagnosticInfo }, -- OilCreate      xxx links to DiagnosticInfo
      DiagnosticOk                                                   { fg="lightgreen", }, -- DiagnosticOk   xxx guifg=LightGreen
      DiagnosticFloatingOk                                           { DiagnosticOk }, -- DiagnosticFloatingOk xxx links to DiagnosticOk
      DiagnosticVirtualTextOk                                        { DiagnosticOk }, -- DiagnosticVirtualTextOk xxx links to DiagnosticOk
      DiagnosticVirtualLinesOk                                       { DiagnosticOk }, -- DiagnosticVirtualLinesOk xxx links to DiagnosticOk
      DiagnosticSignOk                                               { DiagnosticOk }, -- DiagnosticSignOk xxx links to DiagnosticOk
      DiagnosticVirtualTextHint                                      { fg="#c7f1ff", }, -- DiagnosticVirtualTextHint xxx guifg=#c7f1ff
      DiagnosticHint                                                 { DiagnosticVirtualTextHint }, -- DiagnosticHint xxx links to DiagnosticVirtualTextHint
      DiagnosticSignHint                                             { DiagnosticVirtualTextHint }, -- DiagnosticSignHint xxx links to DiagnosticVirtualTextHint
      Comment                                                        { gui="italic", fg="#387a6b", }, -- Comment        xxx cterm=italic gui=italic guifg=#387a6b
      DiagnosticUnnecessary                                          { Comment }, -- DiagnosticUnnecessary xxx links to Comment
      sym"@comment"                                                  { Comment }, -- @comment       xxx links to Comment
      sym"@lsp.type.comment"                                         { Comment }, -- @lsp.type.comment xxx links to Comment
      sym"@text.literal"                                             { Comment }, -- @text.literal  xxx links to Comment
      xmlAttribPunct                                                 { Comment }, -- xmlAttribPunct xxx links to Comment
      xmlComment                                                     { Comment }, -- xmlComment     xxx links to Comment
      xmlProcessingDelim                                             { Comment }, -- xmlProcessingDelim xxx links to Comment
      dtdComment                                                     { Comment }, -- dtdComment     xxx links to Comment
      htmlComment                                                    { Comment }, -- htmlComment    xxx links to Comment
      javaScriptComment                                              { Comment }, -- javaScriptComment xxx links to Comment
      vbComment                                                      { Comment }, -- vbComment      xxx links to Comment
      vbLineLabel                                                    { Comment }, -- vbLineLabel    xxx links to Comment
      cssComment                                                     { Comment }, -- cssComment     xxx links to Comment
      cssVendor                                                      { Comment }, -- cssVendor      xxx links to Comment
      cssHacks                                                       { Comment }, -- cssHacks       xxx links to Comment
      markdownBlockquote                                             { Comment }, -- markdownBlockquote xxx links to Comment
      yamlComment                                                    { Comment }, -- yamlComment    xxx links to Comment
      helpExample                                                    { Comment }, -- helpExample    xxx links to Comment
      helpCommand                                                    { Comment }, -- helpCommand    xxx links to Comment
      helpComment                                                    { Comment }, -- helpComment    xxx links to Comment
      vbLineNumber                                                   { Comment }, -- vbLineNumber   xxx links to Comment
      htmlCssStyleComment                                            { Comment }, -- htmlCssStyleComment xxx links to Comment
      javaScriptLineComment                                          { Comment }, -- javaScriptLineComment xxx links to Comment
      xmlCommentPart                                                 { Comment }, -- xmlCommentPart xxx links to Comment
      OilLinkTarget                                                  { Comment }, -- OilLinkTarget  xxx links to Comment
      OilTrashSourcePath                                             { Comment }, -- OilTrashSourcePath xxx links to Comment
      MarkVirtTextHL                                                 { Comment }, -- MarkVirtTextHL xxx links to Comment
      sym"@variable"                                                 { fg="nvimlightgrey2", }, -- @variable      xxx guifg=NvimLightGrey2
      sym"@lsp.type.variable"                                        { sym"@variable" }, -- @lsp.type.variable xxx links to @variable
      String                                                         { fg="#77c0af", }, -- String         xxx guifg=#77c0af
      Character                                                      { String }, -- Character      xxx links to String
      sym"@string"                                                   { String }, -- @string        xxx links to String
      NvimString                                                     { String }, -- NvimString     xxx links to String
      xmlCdata                                                       { String }, -- xmlCdata       xxx links to String
      cssAttributeSelector                                           { String }, -- cssAttributeSelector xxx links to String
      helpURL                                                        { String }, -- helpURL        xxx links to String
      helpHyperTextEntry                                             { String }, -- helpHyperTextEntry xxx links to String
      markdownUrlTitle                                               { String }, -- markdownUrlTitle xxx links to String
      cssURL                                                         { String }, -- cssURL         xxx links to String
      vbString                                                       { String }, -- vbString       xxx links to String
      helpString                                                     { String }, -- helpString     xxx links to String
      yamlString                                                     { String }, -- yamlString     xxx links to String
      yamlTagPrefix                                                  { String }, -- yamlTagPrefix  xxx links to String
      yamlTagHandle                                                  { String }, -- yamlTagHandle  xxx links to String
      cssStringQQ                                                    { String }, -- cssStringQQ    xxx links to String
      cssStringQ                                                     { String }, -- cssStringQ     xxx links to String
      javaScriptRegexpString                                         { String }, -- javaScriptRegexpString xxx links to String
      javaScriptStringT                                              { String }, -- javaScriptStringT xxx links to String
      javaScriptStringS                                              { String }, -- javaScriptStringS xxx links to String
      javaScriptStringD                                              { String }, -- javaScriptStringD xxx links to String
      htmlPreAttr                                                    { String }, -- htmlPreAttr    xxx links to String
      htmlValue                                                      { String }, -- htmlValue      xxx links to String
      htmlString                                                     { String }, -- htmlString     xxx links to String
      xmlString                                                      { String }, -- xmlString      xxx links to String
      Function                                                       { fg="#3dcfff", }, -- Function       xxx guifg=#3dcfff
      sym"@function"                                                 { Function }, -- @function      xxx links to Function
      sym"@lsp.type.decorator"                                       { Function }, -- @lsp.type.decorator xxx links to Function
      sym"@lsp.type.function"                                        { Function }, -- @lsp.type.function xxx links to Function
      sym"@lsp.type.method"                                          { Function }, -- @lsp.type.method xxx links to Function
      sym"@method"                                                   { Function }, -- @method        xxx links to Function
      helpFunction                                                   { Function }, -- helpFunction   xxx links to Function
      cssBraces                                                      { Function }, -- cssBraces      xxx links to Function
      cssFunctionComma                                               { Function }, -- cssFunctionComma xxx links to Function
      cssFunctionName                                                { Function }, -- cssFunctionName xxx links to Function
      cssIdentifier                                                  { Function }, -- cssIdentifier  xxx links to Function
      cssClassName                                                   { Function }, -- cssClassName   xxx links to Function
      cssClassNameDot                                                { Function }, -- cssClassNameDot xxx links to Function
      javaScriptBraces                                               { Function }, -- javaScriptBraces xxx links to Function
      javaScriptFunction                                             { Function }, -- javaScriptFunction xxx links to Function
      htmlTag                                                        { Function }, -- htmlTag        xxx links to Function
      dtdFunction                                                    { Function }, -- dtdFunction    xxx links to Function
      xmlDocTypeDecl                                                 { Function }, -- xmlDocTypeDecl xxx links to Function
      xmlInlineDTD                                                   { Function }, -- xmlInlineDTD   xxx links to Function
      xmlTagName                                                     { Function }, -- xmlTagName     xxx links to Function
      xmlTag                                                         { Function }, -- xmlTag         xxx links to Function
      Todo                                                           { gui="bold,underline", fg="#feffad", }, -- Todo           xxx cterm=bold,underline gui=bold,underline guifg=#feffad
      sym"@comment.todo"                                             { Todo }, -- @comment.todo  xxx links to Todo
      sym"@text.todo"                                                { Todo }, -- @text.todo     xxx links to Todo
      helpDeprecated                                                 { Todo }, -- helpDeprecated xxx links to Todo
      helpNote                                                       { Todo }, -- helpNote       xxx links to Todo
      helpTodo                                                       { Todo }, -- helpTodo       xxx links to Todo
      yamlTodo                                                       { Todo }, -- yamlTodo       xxx links to Todo
      vbTodo                                                         { Todo }, -- vbTodo         xxx links to Todo
      javaScriptCommentTodo                                          { Todo }, -- javaScriptCommentTodo xxx links to Todo
      dtdTodo                                                        { Todo }, -- dtdTodo        xxx links to Todo
      xmlTodo                                                        { Todo }, -- xmlTodo        xxx links to Todo
      helpWarning                                                    { Todo }, -- helpWarning    xxx links to Todo
      sym"@markup.strong"                                            { gui="bold", }, -- @markup.strong xxx cterm=bold gui=bold
      sym"@neorg.footnotes.title"                                    { sym"@markup.strong" }, -- @neorg.footnotes.title xxx links to @markup.strong
      sym"@neorg.definitions.title"                                  { sym"@markup.strong" }, -- @neorg.definitions.title xxx links to @markup.strong
      sym"@neorg.markup.bold"                                        { sym"@markup.strong" }, -- @neorg.markup.bold xxx links to @markup.strong
      sym"@markup.italic"                                            { gui="italic", }, -- @markup.italic xxx cterm=italic gui=italic
      sym"@neorg.footnotes.content"                                  { sym"@markup.italic" }, -- @neorg.footnotes.content xxx links to @markup.italic
      sym"@neorg.markup.italic"                                      { sym"@markup.italic" }, -- @neorg.markup.italic xxx links to @markup.italic
      sym"@neorg.definitions.content"                                { sym"@markup.italic" }, -- @neorg.definitions.content xxx links to @markup.italic
      sym"@markup.strikethrough"                                     { gui="strikethrough", }, -- @markup.strikethrough xxx cterm=strikethrough gui=strikethrough
      sym"@neorg.markup.strikethrough"                               { sym"@markup.strikethrough" }, -- @neorg.markup.strikethrough xxx links to @markup.strikethrough
      sym"@markup.underline"                                         { gui="underline", }, -- @markup.underline xxx cterm=underline gui=underline
      sym"@neorg.markup.underline"                                   { sym"@markup.underline" }, -- @neorg.markup.underline xxx links to @markup.underline
      Added                                                          { fg="nvimlightgreen", }, -- Added          xxx ctermfg=10 guifg=NvimLightGreen
      sym"@diff.plus"                                                { Added }, -- @diff.plus     xxx links to Added
      GitSignsAdd                                                    { Added }, -- GitSignsAdd    xxx links to Added
      Removed                                                        { fg="nvimlightred", }, -- Removed        xxx ctermfg=9 guifg=NvimLightRed
      sym"@diff.minus"                                               { Removed }, -- @diff.minus    xxx links to Removed
      GitSignsDelete                                                 { Removed }, -- GitSignsDelete xxx links to Removed
      Changed                                                        { fg="nvimlightcyan", }, -- Changed        xxx ctermfg=14 guifg=NvimLightCyan
      sym"@diff.delta"                                               { Changed }, -- @diff.delta    xxx links to Changed
      GitSignsChange                                                 { Changed }, -- GitSignsChange xxx links to Changed
      sym"@markup.heading.1.delimiter.vimdoc"                        { bg="bg", gui="underdouble,nocombine", sp="fg", fg="bg", }, -- @markup.heading.1.delimiter.vimdoc xxx cterm=underdouble,nocombine gui=underdouble,nocombine guifg=bg guibg=bg guisp=fg
      sym"@markup.heading.2.delimiter.vimdoc"                        { bg="bg", gui="underline,nocombine", sp="fg", fg="bg", }, -- @markup.heading.2.delimiter.vimdoc xxx cterm=underline,nocombine gui=underline,nocombine guifg=bg guibg=bg guisp=fg
      DiagnosticDeprecated                                           { gui="strikethrough", sp="red", }, -- DiagnosticDeprecated xxx cterm=strikethrough gui=strikethrough guisp=Red
      sym"@lsp.mod.deprecated"                                       { DiagnosticDeprecated }, -- @lsp.mod.deprecated xxx links to DiagnosticDeprecated
      FloatShadow                                                    { bg="black", blend=80, }, -- FloatShadow    xxx guibg=Black blend=80
      FloatShadowThrough                                             { bg="black", blend=100, }, -- FloatShadowThrough xxx guibg=Black blend=100
      MatchParen                                                     { bg="#adadad", gui="underline", }, -- MatchParen     xxx cterm=underline gui=underline guibg=#adadad
      RedrawDebugClear                                               { bg="yellow", }, -- RedrawDebugClear xxx guibg=Yellow
      RedrawDebugComposed                                            { bg="green", }, -- RedrawDebugComposed xxx guibg=Green
      RedrawDebugRecompose                                           { bg="red", }, -- RedrawDebugRecompose xxx guibg=Red
      Error                                                          { fg="#ff4747", }, -- Error          xxx guifg=#ff4747
      NvimInvalid                                                    { Error }, -- NvimInvalid    xxx links to Error
      sym"@neorg.error"                                              { Error }, -- @neorg.error   xxx links to Error
      helpError                                                      { Error }, -- helpError      xxx links to Error
      yamlReservedDirective                                          { Error }, -- yamlReservedDirective xxx links to Error
      markdownError                                                  { Error }, -- markdownError  xxx links to Error
      cssDeprecated                                                  { Error }, -- cssDeprecated  xxx links to Error
      cssBraceError                                                  { Error }, -- cssBraceError  xxx links to Error
      cssError                                                       { Error }, -- cssError       xxx links to Error
      vbError                                                        { Error }, -- vbError        xxx links to Error
      javaScriptError                                                { Error }, -- javaScriptError xxx links to Error
      htmlPreProcAttrError                                           { Error }, -- htmlPreProcAttrError xxx links to Error
      htmlPreError                                                   { Error }, -- htmlPreError   xxx links to Error
      htmlError                                                      { Error }, -- htmlError      xxx links to Error
      dtdError                                                       { Error }, -- dtdError       xxx links to Error
      xmlCommentError                                                { Error }, -- xmlCommentError xxx links to Error
      xmlError                                                       { Error }, -- xmlError       xxx links to Error
      DiagnosticUnderlineError                                       { gui="underline", sp="red", }, -- DiagnosticUnderlineError xxx cterm=underline gui=underline guisp=Red
      DiagnosticUnderlineWarn                                        { gui="underline", sp="orange", }, -- DiagnosticUnderlineWarn xxx cterm=underline gui=underline guisp=Orange
      DiagnosticUnderlineInfo                                        { gui="underline", sp="lightblue", }, -- DiagnosticUnderlineInfo xxx cterm=underline gui=underline guisp=LightBlue
      DiagnosticUnderlineHint                                        { gui="underline", sp="lightgrey", }, -- DiagnosticUnderlineHint xxx cterm=underline gui=underline guisp=LightGrey
      DiagnosticUnderlineOk                                          { gui="underline", sp="lightgreen", }, -- DiagnosticUnderlineOk xxx cterm=underline gui=underline guisp=LightGreen
      NvimInternalError                                              { bg="red", fg="#272b34", }, -- NvimInternalError xxx guifg=#272b34 guibg=Red
      NvimFigureBrace                                                { NvimInternalError }, -- NvimFigureBrace xxx links to NvimInternalError
      NvimSingleQuotedUnknownEscape                                  { NvimInternalError }, -- NvimSingleQuotedUnknownEscape xxx links to NvimInternalError
      NvimInvalidSingleQuotedUnknownEscape                           { NvimInternalError }, -- NvimInvalidSingleQuotedUnknownEscape xxx links to NvimInternalError
      CmpItemAbbrDeprecatedDefault                                   { fg="#387a6b", }, -- CmpItemAbbrDeprecatedDefault xxx guifg=#387a6b
      CmpItemKindDefault                                             { fg="#feffad", }, -- CmpItemKindDefault xxx guifg=#feffad
      TelescopeSelection                                             { bg="#adadad", }, -- TelescopeSelection xxx guibg=#adadad
      TelescopePreviewMatch                                          { TelescopeSelection }, -- TelescopePreviewMatch xxx links to TelescopeSelection
      TelescopePreviewLine                                           { TelescopeSelection }, -- TelescopePreviewLine xxx links to TelescopeSelection
      TelescopeMatching                                              { TelescopeSelection }, -- TelescopeMatching xxx links to TelescopeSelection
      TelescopeMultiSelection                                        { TelescopeSelection }, -- TelescopeMultiSelection xxx links to TelescopeSelection
      TelescopeSelectionCaret                                        { TelescopeSelection }, -- TelescopeSelectionCaret xxx links to TelescopeSelection
      GitSignsStagedAdd                                              { fg="#597b60", }, -- GitSignsStagedAdd xxx guifg=#597b60
      GitSignsStagedChange                                           { fg="#467c7b", }, -- GitSignsStagedChange xxx guifg=#467c7b
      GitSignsStagedDelete                                           { fg="#7f605c", }, -- GitSignsStagedDelete xxx guifg=#7f605c
      GitSignsStagedChangedelete                                     { fg="#467c7b", }, -- GitSignsStagedChangedelete xxx guifg=#467c7b
      GitSignsStagedTopdelete                                        { fg="#7f605c", }, -- GitSignsStagedTopdelete xxx guifg=#7f605c
      GitSignsStagedUntracked                                        { fg="#597b60", }, -- GitSignsStagedUntracked xxx guifg=#597b60
      GitSignsStagedAddNr                                            { fg="#597b60", }, -- GitSignsStagedAddNr xxx guifg=#597b60
      GitSignsStagedChangeNr                                         { fg="#467c7b", }, -- GitSignsStagedChangeNr xxx guifg=#467c7b
      GitSignsStagedDeleteNr                                         { fg="#7f605c", }, -- GitSignsStagedDeleteNr xxx guifg=#7f605c
      GitSignsStagedChangedeleteNr                                   { fg="#467c7b", }, -- GitSignsStagedChangedeleteNr xxx guifg=#467c7b
      GitSignsStagedTopdeleteNr                                      { fg="#7f605c", }, -- GitSignsStagedTopdeleteNr xxx guifg=#7f605c
      GitSignsStagedUntrackedNr                                      { fg="#597b60", }, -- GitSignsStagedUntrackedNr xxx guifg=#597b60
      GitSignsStagedAddLn                                            { bg="#43a800", }, -- GitSignsStagedAddLn xxx guibg=#43a800
      GitSignsStagedChangeLn                                         { bg="#43a800", }, -- GitSignsStagedChangeLn xxx guibg=#43a800
      GitSignsStagedChangedeleteLn                                   { bg="#43a800", }, -- GitSignsStagedChangedeleteLn xxx guibg=#43a800
      GitSignsStagedUntrackedLn                                      { bg="#43a800", }, -- GitSignsStagedUntrackedLn xxx guibg=#43a800
      GitSignsStagedAddCul                                           { fg="#597b60", }, -- GitSignsStagedAddCul xxx guifg=#597b60
      GitSignsStagedChangeCul                                        { fg="#467c7b", }, -- GitSignsStagedChangeCul xxx guifg=#467c7b
      GitSignsStagedDeleteCul                                        { fg="#7f605c", }, -- GitSignsStagedDeleteCul xxx guifg=#7f605c
      GitSignsStagedChangedeleteCul                                  { fg="#467c7b", }, -- GitSignsStagedChangedeleteCul xxx guifg=#467c7b
      GitSignsStagedTopdeleteCul                                     { fg="#7f605c", }, -- GitSignsStagedTopdeleteCul xxx guifg=#7f605c
      GitSignsStagedUntrackedCul                                     { fg="#597b60", }, -- GitSignsStagedUntrackedCul xxx guifg=#597b60
      sym"@neorg.markup.inline_comment"                              { fg="#858585", }, -- @neorg.markup.inline_comment xxx guifg=#858585
      sym"@neorg.markup.verbatim"                                    { fg="#b1b1b1", }, -- @neorg.markup.verbatim xxx guifg=#b1b1b1
      sym"@neorg.tags.ranged_verbatim.code_block"                    { bg="#21242c", }, -- @neorg.tags.ranged_verbatim.code_block xxx guibg=#21242c
      DevIconSettingsJson                                            { fg="#854cc7", }, -- DevIconSettingsJson xxx ctermfg=98 guifg=#854cc7
      DevIconOPUS                                                    { fg="#f88a02", }, -- DevIconOPUS    xxx guifg=#f88a02
      DevIconAwk                                                     { fg="#4d5a5e", }, -- DevIconAwk     xxx ctermfg=240 guifg=#4d5a5e
      DevIconLicense                                                 { fg="#cbcb41", }, -- DevIconLicense xxx ctermfg=185 guifg=#cbcb41
      DevIconVerilog                                                 { fg="#019833", }, -- DevIconVerilog xxx ctermfg=28 guifg=#019833
      DevIconKotlin                                                  { fg="#7f52ff", }, -- DevIconKotlin  xxx ctermfg=99 guifg=#7f52ff
      DevIconC                                                       { fg="#599eff", }, -- DevIconC       xxx ctermfg=111 guifg=#599eff
      DevIconCp                                                      { fg="#519aba", }, -- DevIconCp      xxx ctermfg=74 guifg=#519aba
      DevIconMustache                                                { fg="#e37933", }, -- DevIconMustache xxx ctermfg=166 guifg=#e37933
      DevIconConfigRu                                                { fg="#701516", }, -- DevIconConfigRu xxx ctermfg=52 guifg=#701516
      DevIconDsStore                                                 { fg="#41535b", }, -- DevIconDsStore xxx ctermfg=239 guifg=#41535b
      DevIconGo                                                      { fg="#00add8", }, -- DevIconGo      xxx ctermfg=38 guifg=#00add8
      DevIconCoffee                                                  { fg="#cbcb41", }, -- DevIconCoffee  xxx ctermfg=185 guifg=#cbcb41
      DevIconSolidity                                                { fg="#519aba", }, -- DevIconSolidity xxx ctermfg=74 guifg=#519aba
      DevIconClojureDart                                             { fg="#519aba", }, -- DevIconClojureDart xxx ctermfg=74 guifg=#519aba
      DevIconTxt                                                     { fg="#89e051", }, -- DevIconTxt     xxx ctermfg=113 guifg=#89e051
      DevIconBashProfile                                             { fg="#89e051", }, -- DevIconBashProfile xxx ctermfg=113 guifg=#89e051
      DevIconStyl                                                    { fg="#8dc149", }, -- DevIconStyl    xxx ctermfg=113 guifg=#8dc149
      DevIconSystemVerilog                                           { fg="#019833", }, -- DevIconSystemVerilog xxx ctermfg=28 guifg=#019833
      DevIconWebpack                                                 { fg="#519aba", }, -- DevIconWebpack xxx ctermfg=74 guifg=#519aba
      DevIconMint                                                    { fg="#87c095", }, -- DevIconMint    xxx ctermfg=108 guifg=#87c095
      DevIconHrl                                                     { fg="#b83998", }, -- DevIconHrl     xxx ctermfg=163 guifg=#b83998
      DevIconMdx                                                     { fg="#519aba", }, -- DevIconMdx     xxx ctermfg=74 guifg=#519aba
      DevIconGemspec                                                 { fg="#701516", }, -- DevIconGemspec xxx ctermfg=52 guifg=#701516
      DevIconSvg                                                     { fg="#ffb13b", }, -- DevIconSvg     xxx ctermfg=214 guifg=#ffb13b
      DevIconRake                                                    { fg="#701516", }, -- DevIconRake    xxx ctermfg=52 guifg=#701516
      DevIconRs                                                      { fg="#dea584", }, -- DevIconRs      xxx ctermfg=216 guifg=#dea584
      DevIconSuo                                                     { fg="#854cc7", }, -- DevIconSuo     xxx ctermfg=98 guifg=#854cc7
      DevIconMaterial                                                { fg="#b83998", }, -- DevIconMaterial xxx ctermfg=163 guifg=#b83998
      DevIconRmd                                                     { fg="#519aba", }, -- DevIconRmd     xxx ctermfg=74 guifg=#519aba
      DevIconMarkdown                                                { fg="#dddddd", }, -- DevIconMarkdown xxx ctermfg=253 guifg=#dddddd
      DevIconFsscript                                                { fg="#519aba", }, -- DevIconFsscript xxx ctermfg=74 guifg=#519aba
      DevIconScheme                                                  { fg="#eeeeee", }, -- DevIconScheme  xxx ctermfg=255 guifg=#eeeeee
      DevIconLog                                                     { fg="#dddddd", }, -- DevIconLog     xxx ctermfg=253 guifg=#dddddd
      DevIconFs                                                      { fg="#519aba", }, -- DevIconFs      xxx ctermfg=74 guifg=#519aba
      DevIconWasm                                                    { fg="#5c4cdb", }, -- DevIconWasm    xxx ctermfg=62 guifg=#5c4cdb
      DevIconTFVars                                                  { fg="#5f43e9", }, -- DevIconTFVars  xxx ctermfg=93 guifg=#5f43e9
      DevIconJavaScriptReactSpec                                     { fg="#20c2e3", }, -- DevIconJavaScriptReactSpec xxx ctermfg=45 guifg=#20c2e3
      DevIconJavaScriptReactTest                                     { fg="#20c2e3", }, -- DevIconJavaScriptReactTest xxx ctermfg=45 guifg=#20c2e3
      DevIconLock                                                    { fg="#bbbbbb", }, -- DevIconLock    xxx ctermfg=250 guifg=#bbbbbb
      DevIconH                                                       { fg="#a074c4", }, -- DevIconH       xxx ctermfg=140 guifg=#a074c4
      DevIconR                                                       { fg="#2266ba", }, -- DevIconR       xxx ctermfg=25 guifg=#2266ba
      DevIconSpecJs                                                  { fg="#cbcb41", }, -- DevIconSpecJs  xxx ctermfg=185 guifg=#cbcb41
      DevIconPp                                                      { fg="#ffa61a", }, -- DevIconPp      xxx ctermfg=214 guifg=#ffa61a
      DevIconTestJs                                                  { fg="#cbcb41", }, -- DevIconTestJs  xxx ctermfg=185 guifg=#cbcb41
      DevIconJpg                                                     { fg="#a074c4", }, -- DevIconJpg     xxx ctermfg=140 guifg=#a074c4
      DevIconXls                                                     { fg="#207245", }, -- DevIconXls     xxx ctermfg=29 guifg=#207245
      DevIconXcPlayground                                            { fg="#e37933", }, -- DevIconXcPlayground xxx ctermfg=166 guifg=#e37933
      DevIconIco                                                     { fg="#cbcb41", }, -- DevIconIco     xxx ctermfg=185 guifg=#cbcb41
      DevIconJson                                                    { fg="#cbcb41", }, -- DevIconJson    xxx ctermfg=185 guifg=#cbcb41
      DevIconQuery                                                   { fg="#90a850", }, -- DevIconQuery   xxx ctermfg=107 guifg=#90a850
      DevIconVlang                                                   { fg="#5d87bf", }, -- DevIconVlang   xxx ctermfg=67 guifg=#5d87bf
      DevIconFsx                                                     { fg="#519aba", }, -- DevIconFsx     xxx ctermfg=74 guifg=#519aba
      DevIconTypeScriptReactSpec                                     { fg="#1354bf", }, -- DevIconTypeScriptReactSpec xxx ctermfg=26 guifg=#1354bf
      DevIconTypeScriptReactTest                                     { fg="#1354bf", }, -- DevIconTypeScriptReactTest xxx ctermfg=26 guifg=#1354bf
      DevIconHh                                                      { fg="#a074c4", }, -- DevIconHh      xxx ctermfg=140 guifg=#a074c4
      DevIconDiff                                                    { fg="#41535b", }, -- DevIconDiff    xxx ctermfg=239 guifg=#41535b
      DevIconCrystal                                                 { fg="#c8c8c8", }, -- DevIconCrystal xxx ctermfg=251 guifg=#c8c8c8
      DevIconTerminal                                                { fg="#31b53e", }, -- DevIconTerminal xxx ctermfg=34 guifg=#31b53e
      DevIconImportConfiguration                                     { fg="#ececec", }, -- DevIconImportConfiguration xxx ctermfg=255 guifg=#ececec
      DevIconBat                                                     { fg="#c1f12e", }, -- DevIconBat     xxx ctermfg=191 guifg=#c1f12e
      DevIconRakefile                                                { fg="#701516", }, -- DevIconRakefile xxx ctermfg=52 guifg=#701516
      DevIconFortran                                                 { fg="#734f96", }, -- DevIconFortran xxx ctermfg=97 guifg=#734f96
      NeoTreeDotfile                                                 { fg="#626262", }, -- NeoTreeDotfile xxx guifg=#626262
      NeoTreeHiddenByName                                            { NeoTreeDotfile }, -- NeoTreeHiddenByName xxx links to NeoTreeDotfile
      NeoTreeWindowsHidden                                           { NeoTreeDotfile }, -- NeoTreeWindowsHidden xxx links to NeoTreeDotfile
      NeoTreeGitIgnored                                              { NeoTreeDotfile }, -- NeoTreeGitIgnored xxx links to NeoTreeDotfile
      NeoTreeModified                                                { fg="#d7d787", }, -- NeoTreeModified xxx guifg=#d7d787
      DevIconCobol                                                   { fg="#005ca5", }, -- DevIconCobol   xxx ctermfg=25 guifg=#005ca5
      NeoTreeGitModified                                             { fg="#d7af5f", }, -- NeoTreeGitModified xxx guifg=#d7af5f
      NeoTreeGitRenamed                                              { NeoTreeGitModified }, -- NeoTreeGitRenamed xxx links to NeoTreeGitModified
      DevIconPm                                                      { fg="#519aba", }, -- DevIconPm      xxx ctermfg=74 guifg=#519aba
      DevIconHpp                                                     { fg="#a074c4", }, -- DevIconHpp     xxx ctermfg=140 guifg=#a074c4
      NeoTreeTitleBar                                                { bg="#dedede", fg="#272b34", }, -- NeoTreeTitleBar xxx guifg=#272b34 guibg=#dedede
      NeoTreeDimText                                                 { fg="#5d6067", }, -- NeoTreeDimText xxx guifg=#5d6067
      NeoTreeIndentMarker                                            { NeoTreeDimText }, -- NeoTreeIndentMarker xxx links to NeoTreeDimText
      NeoTreeExpander                                                { NeoTreeDimText }, -- NeoTreeExpander xxx links to NeoTreeDimText
      NeoTreeRootName                                                { gui="bold,italic", }, -- NeoTreeRootName xxx cterm=bold,italic gui=bold,italic
      DevIconSlim                                                    { fg="#e34c26", }, -- DevIconSlim    xxx ctermfg=196 guifg=#e34c26
      DevIconBrewfile                                                { fg="#701516", }, -- DevIconBrewfile xxx ctermfg=52 guifg=#701516
      lualine_y_filetype_DevIconTxt_normal                           { bg="#303030", fg="#89e051", }, -- lualine_y_filetype_DevIconTxt_normal xxx guifg=#89e051 guibg=#303030
      DevIconNPMIgnore                                               { fg="#e8274b", }, -- DevIconNPMIgnore xxx ctermfg=197 guifg=#e8274b
      DevIconMjs                                                     { fg="#f1e05a", }, -- DevIconMjs     xxx ctermfg=185 guifg=#f1e05a
      DevIconJsx                                                     { fg="#20c2e3", }, -- DevIconJsx     xxx ctermfg=45 guifg=#20c2e3
      DevIconDocx                                                    { fg="#185abd", }, -- DevIconDocx    xxx ctermfg=26 guifg=#185abd
      DevIconRproj                                                   { fg="#358a5b", }, -- DevIconRproj   xxx ctermfg=29 guifg=#358a5b
      DevIconEjs                                                     { fg="#cbcb41", }, -- DevIconEjs     xxx ctermfg=185 guifg=#cbcb41
      DevIconGitCommit                                               { fg="#f54d27", }, -- DevIconGitCommit xxx ctermfg=196 guifg=#f54d27
      DevIconPsd                                                     { fg="#519aba", }, -- DevIconPsd     xxx ctermfg=74 guifg=#519aba
      DevIconCMakeLists                                              { fg="#dce3eb", }, -- DevIconCMakeLists xxx ctermfg=254 guifg=#dce3eb
      DevIconSass                                                    { fg="#f55385", }, -- DevIconSass    xxx ctermfg=204 guifg=#f55385
      DevIconCjs                                                     { fg="#cbcb41", }, -- DevIconCjs     xxx ctermfg=185 guifg=#cbcb41
      Cursor2                                                        { bg="white", fg="white", }, -- Cursor2        xxx guifg=White guibg=White
      DevIconSml                                                     { fg="#e37933", }, -- DevIconSml     xxx ctermfg=166 guifg=#e37933
      DevIconVim                                                     { fg="#019833", }, -- DevIconVim     xxx ctermfg=28 guifg=#019833
      DevIconWebp                                                    { fg="#a074c4", }, -- DevIconWebp    xxx ctermfg=140 guifg=#a074c4
      DevIconJpeg                                                    { fg="#a074c4", }, -- DevIconJpeg    xxx ctermfg=140 guifg=#a074c4
      DevIconXlsx                                                    { fg="#207245", }, -- DevIconXlsx    xxx ctermfg=29 guifg=#207245
      DevIconBash                                                    { fg="#89e051", }, -- DevIconBash    xxx ctermfg=113 guifg=#89e051
      DevIconGitLogo                                                 { fg="#f14c28", }, -- DevIconGitLogo xxx ctermfg=196 guifg=#f14c28
      DevIconBmp                                                     { fg="#a074c4", }, -- DevIconBmp     xxx ctermfg=140 guifg=#a074c4
      DevIconMd                                                      { fg="#dddddd", }, -- DevIconMd      xxx ctermfg=253 guifg=#dddddd
      DevIconPhp                                                     { fg="#a074c4", }, -- DevIconPhp     xxx ctermfg=140 guifg=#a074c4
      DevIconPsScriptModulefile                                      { fg="#6975c4", }, -- DevIconPsScriptModulefile xxx ctermfg=68 guifg=#6975c4
      DevIconOpenTypeFont                                            { fg="#ececec", }, -- DevIconOpenTypeFont xxx ctermfg=255 guifg=#ececec
      DevIconGif                                                     { fg="#a074c4", }, -- DevIconGif     xxx ctermfg=140 guifg=#a074c4
      DevIconPackedResource                                          { fg="#6d8086", }, -- DevIconPackedResource xxx ctermfg=66 guifg=#6d8086
      DevIconEdn                                                     { fg="#519aba", }, -- DevIconEdn     xxx ctermfg=74 guifg=#519aba
      DevIconVimrc                                                   { fg="#019833", }, -- DevIconVimrc   xxx ctermfg=28 guifg=#019833
      DevIconClojureJS                                               { fg="#519aba", }, -- DevIconClojureJS xxx ctermfg=74 guifg=#519aba
      DevIconEex                                                     { fg="#a074c4", }, -- DevIconEex     xxx ctermfg=140 guifg=#a074c4
      DevIconMotoko                                                  { fg="#9772fb", }, -- DevIconMotoko  xxx ctermfg=135 guifg=#9772fb
      DevIconMl                                                      { fg="#e37933", }, -- DevIconMl      xxx ctermfg=166 guifg=#e37933
      DevIconNim                                                     { fg="#f3d400", }, -- DevIconNim     xxx ctermfg=220 guifg=#f3d400
      DevIconPng                                                     { fg="#a074c4", }, -- DevIconPng     xxx ctermfg=140 guifg=#a074c4
      DevIconCs                                                      { fg="#596706", }, -- DevIconCs      xxx ctermfg=58 guifg=#596706
      lualine_b_inactive                                             { bg="#272b34", gui="nocombine", fg="#dedede", }, -- lualine_b_inactive xxx gui=nocombine guifg=#dedede guibg=#272b34
      DevIconSvelteConfig                                            { fg="#ff3e00", }, -- DevIconSvelteConfig xxx ctermfg=196 guifg=#ff3e00
      DevIconTsx                                                     { fg="#1354bf", }, -- DevIconTsx     xxx ctermfg=26 guifg=#1354bf
      lualine_a_inactive                                             { bg="#141414", gui="nocombine", }, -- lualine_a_inactive xxx gui=nocombine guibg=#141414
      lualine_b_tabs_inactive                                        { lualine_a_inactive }, -- lualine_b_tabs_inactive xxx links to lualine_a_inactive
      lualine_y_filetype_DevIconTxt_insert                           { bg="#303030", fg="#89e051", }, -- lualine_y_filetype_DevIconTxt_insert xxx guifg=#89e051 guibg=#303030
      lualine_y_filetype_DevIconDefault_insert                       { bg="#303030", fg="#6d8086", }, -- lualine_y_filetype_DevIconDefault_insert xxx guifg=#6d8086 guibg=#303030
      lualine_y_filetype_DevIconMd_inactive                          { bg="#080808", fg="#ffffff", }, -- lualine_y_filetype_DevIconMd_inactive xxx guifg=#ffffff guibg=#080808
      lualine_y_filetype_DevIconMd_terminal                          { bg="#303030", fg="#ffffff", }, -- lualine_y_filetype_DevIconMd_terminal xxx guifg=#ffffff guibg=#303030
      lualine_y_filetype_DevIconDefault_command                      { bg="#303030", fg="#6d8086", }, -- lualine_y_filetype_DevIconDefault_command xxx guifg=#6d8086 guibg=#303030
      lualine_y_filetype_DevIconDefault_inactive                     { bg="#080808", fg="#6d8086", }, -- lualine_y_filetype_DevIconDefault_inactive xxx guifg=#6d8086 guibg=#080808
      lualine_y_filetype_DevIconMd_normal                            { bg="#303030", fg="#ffffff", }, -- lualine_y_filetype_DevIconMd_normal xxx guifg=#ffffff guibg=#303030
      lualine_y_filetype_DevIconMd_insert                            { bg="#303030", fg="#ffffff", }, -- lualine_y_filetype_DevIconMd_insert xxx guifg=#ffffff guibg=#303030
      lualine_y_filetype_DevIconDefault_terminal                     { bg="#303030", fg="#6d8086", }, -- lualine_y_filetype_DevIconDefault_terminal xxx guifg=#6d8086 guibg=#303030
      lualine_y_filetype_DevIconDefault_replace                      { bg="#303030", fg="#6d8086", }, -- lualine_y_filetype_DevIconDefault_replace xxx guifg=#6d8086 guibg=#303030
      lualine_y_filetype_DevIconDefault_visual                       { bg="#303030", fg="#6d8086", }, -- lualine_y_filetype_DevIconDefault_visual xxx guifg=#6d8086 guibg=#303030
      lualine_y_filetype_DevIconDefault_normal                       { bg="#303030", fg="#6d8086", }, -- lualine_y_filetype_DevIconDefault_normal xxx guifg=#6d8086 guibg=#303030
      Underline                                                      { gui="bold,underline", fg="#beadfa", }, -- Underline      xxx cterm=bold,underline gui=bold,underline guifg=#beadfa
      DevIconProcfile                                                { fg="#a074c4", }, -- DevIconProcfile xxx ctermfg=140 guifg=#a074c4
      lualine_y_filetype_DevIconMd_command                           { bg="#303030", fg="#ffffff", }, -- lualine_y_filetype_DevIconMd_command xxx guifg=#ffffff guibg=#303030
      lualine_y_filetype_DevIconTxt_inactive                         { bg="#080808", fg="#89e051", }, -- lualine_y_filetype_DevIconTxt_inactive xxx guifg=#89e051 guibg=#080808
      lualine_y_filetype_DevIconTxt_command                          { bg="#303030", fg="#89e051", }, -- lualine_y_filetype_DevIconTxt_command xxx guifg=#89e051 guibg=#303030
      lualine_y_filetype_DevIconTxt_replace                          { bg="#303030", fg="#89e051", }, -- lualine_y_filetype_DevIconTxt_replace xxx guifg=#89e051 guibg=#303030
      lualine_y_filetype_DevIconTxt_visual                           { bg="#303030", fg="#89e051", }, -- lualine_y_filetype_DevIconTxt_visual xxx guifg=#89e051 guibg=#303030
      lualine_y_filetype_DevIconMd_replace                           { bg="#303030", fg="#ffffff", }, -- lualine_y_filetype_DevIconMd_replace xxx guifg=#ffffff guibg=#303030
      lualine_y_filetype_DevIconMd_visual                            { bg="#303030", fg="#ffffff", }, -- lualine_y_filetype_DevIconMd_visual xxx guifg=#ffffff guibg=#303030
      lualine_c_inactive                                             { bg="#080808", fg="#080808", }, -- lualine_c_inactive xxx guifg=#080808 guibg=#080808
      lualine_a_replace                                              { bg="#ff5189", fg="#080808", }, -- lualine_a_replace xxx guifg=#080808 guibg=#ff5189
      lualine_a_visual                                               { bg="#beadfa", gui="nocombine", fg="#272b34", }, -- lualine_a_visual xxx gui=nocombine guifg=#272b34 guibg=#beadfa
      lualine_a_normal                                               { bg="#ff66b0", gui="nocombine", fg="#272b34", }, -- lualine_a_normal xxx gui=nocombine guifg=#272b34 guibg=#ff66b0
      lualine_b_tabs_active                                          { lualine_a_normal }, -- lualine_b_tabs_active xxx links to lualine_a_normal
      lualine_c_normal                                               { bg="#272b34", gui="nocombine", fg="#dedede", }, -- lualine_c_normal xxx gui=nocombine guifg=#dedede guibg=#272b34
      lualine_b_normal                                               { bg="#beadfa", gui="nocombine", fg="#272b34", }, -- lualine_b_normal xxx gui=nocombine guifg=#272b34 guibg=#beadfa
      lualine_a_insert                                               { bg="#feffad", gui="nocombine", fg="#272b34", }, -- lualine_a_insert xxx gui=nocombine guifg=#272b34 guibg=#feffad
      DevIconSln                                                     { fg="#854cc7", }, -- DevIconSln     xxx ctermfg=98 guifg=#854cc7
      DevIconEx                                                      { fg="#a074c4", }, -- DevIconEx      xxx ctermfg=140 guifg=#a074c4
      DevIconPyd                                                     { fg="#ffe291", }, -- DevIconPyd     xxx ctermfg=222 guifg=#ffe291
      DevIconPl                                                      { fg="#519aba", }, -- DevIconPl      xxx ctermfg=74 guifg=#519aba
      DevIconKotlinScript                                            { fg="#7f52ff", }, -- DevIconKotlinScript xxx ctermfg=99 guifg=#7f52ff
      DevIconErl                                                     { fg="#b83998", }, -- DevIconErl     xxx ctermfg=163 guifg=#b83998
      DevIconFsharp                                                  { fg="#519aba", }, -- DevIconFsharp  xxx ctermfg=74 guifg=#519aba
      ExtraWhitespace                                                { bg="#ff0000", }, -- ExtraWhitespace xxx guibg=#ff0000
      htmlStrike                                                     { gui="strikethrough", }, -- htmlStrike     xxx cterm=strikethrough gui=strikethrough
      markdownStrike                                                 { htmlStrike }, -- markdownStrike xxx links to htmlStrike
      htmlBoldUnderline                                              { gui="bold,underline", }, -- htmlBoldUnderline xxx cterm=bold,underline gui=bold,underline
      htmlUnderlineBold                                              { htmlBoldUnderline }, -- htmlUnderlineBold xxx links to htmlBoldUnderline
      NeoTreeMessage                                                 { gui="italic", fg="#5d6067", }, -- NeoTreeMessage xxx cterm=italic gui=italic guifg=#5d6067
      htmlBoldItalic                                                 { gui="bold,italic", }, -- htmlBoldItalic xxx cterm=bold,italic gui=bold,italic
      htmlItalicBold                                                 { htmlBoldItalic }, -- htmlItalicBold xxx links to htmlBoldItalic
      markdownBoldItalic                                             { htmlBoldItalic }, -- markdownBoldItalic xxx links to htmlBoldItalic
      DevIconCsh                                                     { fg="#4d5a5e", }, -- DevIconCsh     xxx ctermfg=240 guifg=#4d5a5e
      htmlBold                                                       { gui="bold", }, -- htmlBold       xxx cterm=bold gui=bold
      markdownBold                                                   { htmlBold }, -- markdownBold   xxx links to htmlBold
      htmlBoldUnderlineItalic                                        { gui="bold,underline,italic", }, -- htmlBoldUnderlineItalic xxx cterm=bold,underline,italic gui=bold,underline,italic
      htmlBoldItalicUnderline                                        { htmlBoldUnderlineItalic }, -- htmlBoldItalicUnderline xxx links to htmlBoldUnderlineItalic
      htmlUnderlineBoldItalic                                        { htmlBoldUnderlineItalic }, -- htmlUnderlineBoldItalic xxx links to htmlBoldUnderlineItalic
      htmlItalicBoldUnderline                                        { htmlBoldUnderlineItalic }, -- htmlItalicBoldUnderline xxx links to htmlBoldUnderlineItalic
      htmlItalicUnderlineBold                                        { htmlBoldUnderlineItalic }, -- htmlItalicUnderlineBold xxx links to htmlBoldUnderlineItalic
      htmlUnderlineItalicBold                                        { htmlBoldUnderlineItalic }, -- htmlUnderlineItalicBold xxx links to htmlBoldUnderlineItalic
      DevIconHtml                                                    { fg="#e44d26", }, -- DevIconHtml    xxx ctermfg=196 guifg=#e44d26
      NeoTreeGitAdded                                                { fg="#5faf5f", }, -- NeoTreeGitAdded xxx guifg=#5faf5f
      NeoTreeGitStaged                                               { NeoTreeGitAdded }, -- NeoTreeGitStaged xxx links to NeoTreeGitAdded
      NeoTreeGitDeleted                                              { fg="#ff5900", }, -- NeoTreeGitDeleted xxx guifg=#ff5900
      DevIconFavicon                                                 { fg="#cbcb41", }, -- DevIconFavicon xxx ctermfg=185 guifg=#cbcb41
      htmlItalic                                                     { gui="italic", }, -- htmlItalic     xxx cterm=italic gui=italic
      markdownItalic                                                 { htmlItalic }, -- markdownItalic xxx links to htmlItalic
      DevIconXml                                                     { fg="#e37933", }, -- DevIconXml     xxx ctermfg=166 guifg=#e37933
      DevIconTor                                                     { fg="#519aba", }, -- DevIconTor     xxx ctermfg=74 guifg=#519aba
      DevIconWebmanifest                                             { fg="#f1e05a", }, -- DevIconWebmanifest xxx ctermfg=185 guifg=#f1e05a
      DevIconRlib                                                    { fg="#dea584", }, -- DevIconRlib    xxx ctermfg=216 guifg=#dea584
      NeoTreeFloatTitle                                              { bg="#272b34", fg="#dedede", }, -- NeoTreeFloatTitle xxx guifg=#dedede guibg=#272b34
      DevIconTs                                                      { fg="#519aba", }, -- DevIconTs      xxx guifg=#519aba
      NeoTreeFadeText1                                               { fg="#626262", }, -- NeoTreeFadeText1 xxx guifg=#626262
      NeoTreeFadeText2                                               { fg="#444444", }, -- NeoTreeFadeText2 xxx guifg=#444444
      DevIconGulpfile                                                { fg="#cc3e44", }, -- DevIconGulpfile xxx ctermfg=167 guifg=#cc3e44
      DevIconBazel                                                   { fg="#89e051", }, -- DevIconBazel   xxx ctermfg=113 guifg=#89e051
      DevIconBinaryGLTF                                              { fg="#ffb13b", }, -- DevIconBinaryGLTF xxx ctermfg=214 guifg=#ffb13b
      NeoTreeFileNameOpened                                          { gui="bold", }, -- NeoTreeFileNameOpened xxx cterm=bold gui=bold
      DevIconGodotProject                                            { fg="#6d8086", }, -- DevIconGodotProject xxx ctermfg=66 guifg=#6d8086
      DevIconPackageLockJson                                         { fg="#7a0d21", }, -- DevIconPackageLockJson xxx ctermfg=52 guifg=#7a0d21
      DevIconConf                                                    { fg="#6d8086", }, -- DevIconConf    xxx ctermfg=66 guifg=#6d8086
      DevIconAi                                                      { fg="#cbcb41", }, -- DevIconAi      xxx ctermfg=185 guifg=#cbcb41
      DevIconPpt                                                     { fg="#cb4a32", }, -- DevIconPpt     xxx ctermfg=160 guifg=#cb4a32
      DevIconVagrantfile                                             { fg="#1563ff", }, -- DevIconVagrantfile xxx ctermfg=27 guifg=#1563ff
      DevIconLua                                                     { fg="#51a0cf", }, -- DevIconLua     xxx ctermfg=74 guifg=#51a0cf
      DevIconGemfile                                                 { fg="#701516", }, -- DevIconGemfile xxx ctermfg=52 guifg=#701516
      DevIconJs                                                      { fg="#cbcb41", }, -- DevIconJs      xxx ctermfg=185 guifg=#cbcb41
      DevIconGitlabCI                                                { fg="#e24329", }, -- DevIconGitlabCI xxx ctermfg=196 guifg=#e24329
      DevIconPyo                                                     { fg="#ffe291", }, -- DevIconPyo     xxx ctermfg=222 guifg=#ffe291
      DevIconCxx                                                     { fg="#519aba", }, -- DevIconCxx     xxx ctermfg=74 guifg=#519aba
      DevIconClojure                                                 { fg="#8dc149", }, -- DevIconClojure xxx ctermfg=113 guifg=#8dc149
      DevIconPyc                                                     { fg="#ffe291", }, -- DevIconPyc     xxx ctermfg=222 guifg=#ffe291
      DevIconDropbox                                                 { fg="#0061fe", }, -- DevIconDropbox xxx ctermfg=27 guifg=#0061fe
      DevIconCMake                                                   { fg="#dce3eb", }, -- DevIconCMake   xxx ctermfg=254 guifg=#dce3eb
      DevIconDrools                                                  { fg="#ffafaf", }, -- DevIconDrools  xxx ctermfg=217 guifg=#ffafaf
      DevIconLiquid                                                  { fg="#95bf47", }, -- DevIconLiquid  xxx ctermfg=106 guifg=#95bf47
      DevIconsbt                                                     { fg="#cc3e44", }, -- DevIconsbt     xxx ctermfg=167 guifg=#cc3e44
      DevIconYaml                                                    { fg="#6d8086", }, -- DevIconYaml    xxx ctermfg=66 guifg=#6d8086
      DevIconBashrc                                                  { fg="#89e051", }, -- DevIconBashrc  xxx ctermfg=113 guifg=#89e051
      DevIconDoc                                                     { fg="#185abd", }, -- DevIconDoc     xxx ctermfg=26 guifg=#185abd
      DevIconEnv                                                     { fg="#faf743", }, -- DevIconEnv     xxx ctermfg=227 guifg=#faf743
      DevIconVHDL                                                    { fg="#019833", }, -- DevIconVHDL    xxx ctermfg=28 guifg=#019833
      DevIconGruntfile                                               { fg="#e37933", }, -- DevIconGruntfile xxx ctermfg=166 guifg=#e37933
      DevIconVue                                                     { fg="#8dc149", }, -- DevIconVue     xxx ctermfg=113 guifg=#8dc149
      DevIconMakefile                                                { fg="#6d8086", }, -- DevIconMakefile xxx ctermfg=66 guifg=#6d8086
      DevIconVala                                                    { fg="#7b3db9", }, -- DevIconVala    xxx ctermfg=91 guifg=#7b3db9
      DevIconHxx                                                     { fg="#a074c4", }, -- DevIconHxx     xxx ctermfg=140 guifg=#a074c4
      DevIconXul                                                     { fg="#e37933", }, -- DevIconXul     xxx ctermfg=166 guifg=#e37933
      DevIconDefault                                                 { fg="#6d8086", }, -- DevIconDefault xxx ctermfg=66 guifg=#6d8086
      DevIconZig                                                     { fg="#f69a1b", }, -- DevIconZig     xxx ctermfg=172 guifg=#f69a1b
      DevIconRss                                                     { fg="#fb9d3b", }, -- DevIconRss     xxx ctermfg=215 guifg=#fb9d3b
      DevIconGvimrc                                                  { fg="#019833", }, -- DevIconGvimrc  xxx ctermfg=28 guifg=#019833
      DevIconFennel                                                  { fg="#fff3d7", }, -- DevIconFennel  xxx ctermfg=230 guifg=#fff3d7
      DevIconTwig                                                    { fg="#8dc149", }, -- DevIconTwig    xxx ctermfg=113 guifg=#8dc149
      DevIconReScriptInterface                                       { fg="#f55385", }, -- DevIconReScriptInterface xxx ctermfg=204 guifg=#f55385
      DevIconToml                                                    { fg="#9c4221", }, -- DevIconToml    xxx ctermfg=124 guifg=#9c4221
      DevIconSpecTs                                                  { fg="#519aba", }, -- DevIconSpecTs  xxx ctermfg=74 guifg=#519aba
      DevIconTestTs                                                  { fg="#519aba", }, -- DevIconTestTs  xxx ctermfg=74 guifg=#519aba
      DevIconCson                                                    { fg="#cbcb41", }, -- DevIconCson    xxx ctermfg=185 guifg=#cbcb41
      DevIconDb                                                      { fg="#dad8d8", }, -- DevIconDb      xxx ctermfg=188 guifg=#dad8d8
      DevIconHtm                                                     { fg="#e34c26", }, -- DevIconHtm     xxx ctermfg=196 guifg=#e34c26
      DevIconConfiguration                                           { fg="#6d8086", }, -- DevIconConfiguration xxx ctermfg=66 guifg=#6d8086
      DevIconFsi                                                     { fg="#519aba", }, -- DevIconFsi     xxx ctermfg=74 guifg=#519aba
      DevIconClojureC                                                { fg="#8dc149", }, -- DevIconClojureC xxx ctermfg=113 guifg=#8dc149
      DevIconYml                                                     { fg="#6d8086", }, -- DevIconYml     xxx ctermfg=66 guifg=#6d8086
      DevIconProlog                                                  { fg="#e4b854", }, -- DevIconProlog  xxx ctermfg=179 guifg=#e4b854
      DevIconSvelte                                                  { fg="#ff3e00", }, -- DevIconSvelte  xxx ctermfg=196 guifg=#ff3e00
      DevIconMli                                                     { fg="#e37933", }, -- DevIconMli     xxx ctermfg=166 guifg=#e37933
      DevIconTextScene                                               { fg="#a074c4", }, -- DevIconTextScene xxx guifg=#a074c4
      DevIconTextResource                                            { fg="#cbcb41", }, -- DevIconTextResource xxx guifg=#cbcb41
      DevIconBzl                                                     { fg="#89e051", }, -- DevIconBzl     xxx ctermfg=113 guifg=#89e051
      DevIconBazelBuild                                              { fg="#89e051", }, -- DevIconBazelBuild xxx ctermfg=113 guifg=#89e051
      DevIconGDScript                                                { fg="#6d8086", }, -- DevIconGDScript xxx ctermfg=66 guifg=#6d8086
      DevIconSql                                                     { fg="#dad8d8", }, -- DevIconSql     xxx ctermfg=188 guifg=#dad8d8
      DevIconBazelWorkspace                                          { fg="#89e051", }, -- DevIconBazelWorkspace xxx ctermfg=113 guifg=#89e051
      DevIconIni                                                     { fg="#6d8086", }, -- DevIconIni     xxx ctermfg=66 guifg=#6d8086
      DevIconLess                                                    { fg="#563d7c", }, -- DevIconLess    xxx ctermfg=54 guifg=#563d7c
      DevIconPdf                                                     { fg="#b30b00", }, -- DevIconPdf     xxx ctermfg=124 guifg=#b30b00
      DevIconScss                                                    { fg="#f55385", }, -- DevIconScss    xxx ctermfg=204 guifg=#f55385
      lualine_y_filetype_DevIconTxt_terminal                         { bg="#303030", fg="#89e051", }, -- lualine_y_filetype_DevIconTxt_terminal xxx guifg=#89e051 guibg=#303030
      DevIconHaml                                                    { fg="#eaeae1", }, -- DevIconHaml    xxx ctermfg=255 guifg=#eaeae1
      DevIconScala                                                   { fg="#cc3e44", }, -- DevIconScala   xxx ctermfg=167 guifg=#cc3e44
      DevIconPsb                                                     { fg="#519aba", }, -- DevIconPsb     xxx ctermfg=74 guifg=#519aba
      DevIconHbs                                                     { fg="#f0772b", }, -- DevIconHbs     xxx ctermfg=202 guifg=#f0772b
      DevIconJava                                                    { fg="#cc3e44", }, -- DevIconJava    xxx ctermfg=167 guifg=#cc3e44
      DevIconHs                                                      { fg="#a074c4", }, -- DevIconHs      xxx ctermfg=140 guifg=#a074c4
      DevIconCpp                                                     { fg="#519aba", }, -- DevIconCpp     xxx ctermfg=74 guifg=#519aba
      DevIconSh                                                      { fg="#4d5a5e", }, -- DevIconSh      xxx ctermfg=240 guifg=#4d5a5e
      DevIconSwift                                                   { fg="#e37933", }, -- DevIconSwift   xxx ctermfg=166 guifg=#e37933
      DevIconDesktopEntry                                            { fg="#563d7c", }, -- DevIconDesktopEntry xxx ctermfg=54 guifg=#563d7c
      DevIconHeex                                                    { fg="#a074c4", }, -- DevIconHeex    xxx ctermfg=140 guifg=#a074c4
      DevIconNPMrc                                                   { fg="#e8274b", }, -- DevIconNPMrc   xxx ctermfg=197 guifg=#e8274b
      DevIconEditorConfig                                            { fg="#fff2f2", }, -- DevIconEditorConfig xxx ctermfg=255 guifg=#fff2f2
      DevIconMixLock                                                 { fg="#a074c4", }, -- DevIconMixLock xxx ctermfg=140 guifg=#a074c4
      DevIconZshenv                                                  { fg="#89e051", }, -- DevIconZshenv  xxx ctermfg=113 guifg=#89e051
      DevIconJl                                                      { fg="#a270ba", }, -- DevIconJl      xxx ctermfg=133 guifg=#a270ba
      DevIconGraphQL                                                 { fg="#e535ab", }, -- DevIconGraphQL xxx ctermfg=199 guifg=#e535ab
      DevIconPrisma                                                  { fg="#5a67d8", }, -- DevIconPrisma  xxx ctermfg=62 guifg=#5a67d8
      DevIconZshprofile                                              { fg="#89e051", }, -- DevIconZshprofile xxx ctermfg=113 guifg=#89e051
      DevIconPsManifestfile                                          { fg="#6975c4", }, -- DevIconPsManifestfile xxx ctermfg=68 guifg=#6975c4
      DevIconZshrc                                                   { fg="#89e051", }, -- DevIconZshrc   xxx ctermfg=113 guifg=#89e051
      DevIconPsScriptfile                                            { fg="#4273ca", }, -- DevIconPsScriptfile xxx ctermfg=68 guifg=#4273ca
      DevIconReScript                                                { fg="#cc3e44", }, -- DevIconReScript xxx ctermfg=167 guifg=#cc3e44
      DevIconPackageJson                                             { fg="#e8274b", }, -- DevIconPackageJson xxx ctermfg=197 guifg=#e8274b
      DevIconNodeModules                                             { fg="#e8274b", }, -- DevIconNodeModules xxx ctermfg=197 guifg=#e8274b
      DevIconGitConfig                                               { fg="#f54d27", }, -- DevIconGitConfig xxx ctermfg=196 guifg=#f54d27
      DevIconGitModules                                              { fg="#f54d27", }, -- DevIconGitModules xxx ctermfg=196 guifg=#f54d27
      DevIconGitAttributes                                           { fg="#f54d27", }, -- DevIconGitAttributes xxx ctermfg=196 guifg=#f54d27
      DevIconGitIgnore                                               { fg="#f54d27", }, -- DevIconGitIgnore xxx ctermfg=196 guifg=#f54d27
      DevIconPy                                                      { fg="#ffbc03", }, -- DevIconPy      xxx ctermfg=214 guifg=#ffbc03
      DevIconRb                                                      { fg="#701516", }, -- DevIconRb      xxx ctermfg=52 guifg=#701516
      DevIconOrgMode                                                 { fg="#77aa99", }, -- DevIconOrgMode xxx ctermfg=73 guifg=#77aa99
      DevIconNix                                                     { fg="#7ebae4", }, -- DevIconNix     xxx ctermfg=110 guifg=#7ebae4
      DevIconFish                                                    { fg="#4d5a5e", }, -- DevIconFish    xxx ctermfg=240 guifg=#4d5a5e
      DevIconBabelrc                                                 { fg="#cbcb41", }, -- DevIconBabelrc xxx ctermfg=185 guifg=#cbcb41
      DevIconEslintrc                                                { fg="#4b32c3", }, -- DevIconEslintrc xxx ctermfg=56 guifg=#4b32c3
      DevIconElm                                                     { fg="#519aba", }, -- DevIconElm     xxx ctermfg=74 guifg=#519aba
      DevIconLuau                                                    { fg="#00a2ff", }, -- DevIconLuau    xxx ctermfg=75 guifg=#00a2ff
      DevIconZsh                                                     { fg="#89e051", }, -- DevIconZsh     xxx ctermfg=113 guifg=#89e051
      DevIconTex                                                     { fg="#3d6117", }, -- DevIconTex     xxx ctermfg=22 guifg=#3d6117
      DevIconDockerfile                                              { fg="#458ee6", }, -- DevIconDockerfile xxx ctermfg=68 guifg=#458ee6
      DevIconDump                                                    { fg="#dad8d8", }, -- DevIconDump    xxx ctermfg=188 guifg=#dad8d8
      htmlUnderline                                                  { gui="underline", }, -- htmlUnderline  xxx cterm=underline gui=underline
      htmlUnderlineItalic                                            { gui="underline,italic", }, -- htmlUnderlineItalic xxx cterm=underline,italic gui=underline,italic
      htmlItalicUnderline                                            { htmlUnderlineItalic }, -- htmlItalicUnderline xxx links to htmlUnderlineItalic
      DevIconDart                                                    { fg="#03589c", }, -- DevIconDart    xxx ctermfg=25 guifg=#03589c
      DevIconJsonc                                                   { fg="#cbcb41", }, -- DevIconJsonc   xxx ctermfg=185 guifg=#cbcb41
      DevIconD                                                       { fg="#b03931", }, -- DevIconD       xxx ctermfg=124 guifg=#b03931
      DevIconJson5                                                   { fg="#cbcb41", }, -- DevIconJson5   xxx ctermfg=185 guifg=#cbcb41
      DevIconTerraform                                               { fg="#5f43e9", }, -- DevIconTerraform xxx ctermfg=93 guifg=#5f43e9
      DevIconLhs                                                     { fg="#a074c4", }, -- DevIconLhs     xxx ctermfg=140 guifg=#a074c4
      DevIconCss                                                     { fg="#663399", }, -- DevIconCss     xxx ctermfg=91 guifg=#663399
      DevIconCPlusPlus                                               { fg="#f34b7d", }, -- DevIconCPlusPlus xxx ctermfg=204 guifg=#f34b7d
      DevIconTcl                                                     { fg="#1e5cb3", }, -- DevIconTcl     xxx ctermfg=25 guifg=#1e5cb3
      DevIconLeex                                                    { fg="#a074c4", }, -- DevIconLeex    xxx ctermfg=140 guifg=#a074c4
      DevIconExs                                                     { fg="#a074c4", }, -- DevIconExs     xxx ctermfg=140 guifg=#a074c4
      DevIconSig                                                     { fg="#e37933", }, -- DevIconSig     xxx ctermfg=166 guifg=#e37933
      DevIconKsh                                                     { fg="#4d5a5e", }, -- DevIconKsh     xxx ctermfg=240 guifg=#4d5a5e
      NeoTreeFileStatsHeader                                         { gui="bold,italic", fg="#828489", }, -- NeoTreeFileStatsHeader xxx cterm=bold,italic gui=bold,italic guifg=#828489
      DevIconCsv                                                     { fg="#89e051", }, -- DevIconCsv     xxx ctermfg=113 guifg=#89e051
      NeoTreeFileStats                                               { fg="#707278", }, -- NeoTreeFileStats xxx guifg=#707278
      DevIconEpp                                                     { fg="#ffa61a", }, -- DevIconEpp     xxx ctermfg=214 guifg=#ffa61a
      NeoTreeTabSeparatorInactive                                    { bg="#141414", fg="#101010", }, -- NeoTreeTabSeparatorInactive xxx guifg=#101010 guibg=#141414
      NeoTreeTabSeparatorActive                                      { fg="#0a0a0a", }, -- NeoTreeTabSeparatorActive xxx guifg=#0a0a0a
      NeoTreeTabInactive                                             { bg="#141414", fg="#777777", }, -- NeoTreeTabInactive xxx guifg=#777777 guibg=#141414
      NeoTreeTabActive                                               { gui="bold", }, -- NeoTreeTabActive xxx cterm=bold gui=bold
      DevIconErb                                                     { fg="#701516", }, -- DevIconErb     xxx ctermfg=52 guifg=#701516
      NeoTreeGitUntracked                                            { gui="italic", fg="#ff8700", }, -- NeoTreeGitUntracked xxx cterm=italic gui=italic guifg=#ff8700
      NeoTreeGitConflict                                             { gui="bold,italic", fg="#ff8700", }, -- NeoTreeGitConflict xxx cterm=bold,italic gui=bold,italic guifg=#ff8700
      NeoTreeGitUnstaged                                             { NeoTreeGitConflict }, -- NeoTreeGitUnstaged xxx links to NeoTreeGitConflict
      lualine_transparent                                            { bg="#272b34", gui="nocombine", fg="#dedede", }, -- lualine_transparent xxx gui=nocombine guifg=#dedede guibg=#272b34
      lualine_x_insert                                               { bg="#272b34", gui="nocombine", fg="#dedede", }, -- lualine_x_insert xxx gui=nocombine guifg=#dedede guibg=#272b34
      lualine_b_insert                                               { bg="#beadfa", gui="nocombine", fg="#272b34", }, -- lualine_b_insert xxx gui=nocombine guifg=#272b34 guibg=#beadfa
      lualine_y_insert                                               { bg="#272b34", gui="nocombine", fg="#dedede", }, -- lualine_y_insert xxx gui=nocombine guifg=#dedede guibg=#272b34
      lualine_x_command                                              { bg="#272b34", gui="nocombine", fg="#dedede", }, -- lualine_x_command xxx gui=nocombine guifg=#dedede guibg=#272b34
      lualine_b_command                                              { bg="#beadfa", gui="nocombine", fg="#272b34", }, -- lualine_b_command xxx gui=nocombine guifg=#272b34 guibg=#beadfa
      lualine_a_command                                              { bg="#beadfa", gui="nocombine", fg="#272b34", }, -- lualine_a_command xxx gui=nocombine guifg=#272b34 guibg=#beadfa
      lualine_y_command                                              { bg="#272b34", gui="nocombine", fg="#dedede", }, -- lualine_y_command xxx gui=nocombine guifg=#dedede guibg=#272b34
      lualine_z_normal                                               { bg="#272b34", gui="nocombine", fg="#dedede", }, -- lualine_z_normal xxx gui=nocombine guifg=#dedede guibg=#272b34
      lualine_y_normal                                               { bg="#272b34", gui="nocombine", fg="#dedede", }, -- lualine_y_normal xxx gui=nocombine guifg=#dedede guibg=#272b34
      lualine_x_normal                                               { bg="#272b34", gui="nocombine", fg="#dedede", }, -- lualine_x_normal xxx gui=nocombine guifg=#dedede guibg=#272b34
      lualine_x_visual                                               { bg="#272b34", gui="nocombine", fg="#dedede", }, -- lualine_x_visual xxx gui=nocombine guifg=#dedede guibg=#272b34
      lualine_b_visual                                               { bg="#beadfa", gui="nocombine", fg="#272b34", }, -- lualine_b_visual xxx gui=nocombine guifg=#272b34 guibg=#beadfa
      lualine_y_visual                                               { bg="#272b34", gui="nocombine", fg="#dedede", }, -- lualine_y_visual xxx gui=nocombine guifg=#dedede guibg=#272b34
      lualine_y_diff_added_normal                                    { bg="#272b34", gui="nocombine", fg="#b3f6c0", }, -- lualine_y_diff_added_normal xxx gui=nocombine guifg=#b3f6c0 guibg=#272b34
      lualine_y_diff_added_insert                                    { bg="#272b34", gui="nocombine", fg="#b3f6c0", }, -- lualine_y_diff_added_insert xxx gui=nocombine guifg=#b3f6c0 guibg=#272b34
      lualine_y_diff_added_visual                                    { bg="#272b34", gui="nocombine", fg="#b3f6c0", }, -- lualine_y_diff_added_visual xxx gui=nocombine guifg=#b3f6c0 guibg=#272b34
      lualine_y_diff_added_replace                                   { bg="#beadfa", gui="nocombine", fg="#b3f6c0", }, -- lualine_y_diff_added_replace xxx gui=nocombine guifg=#b3f6c0 guibg=#beadfa
      lualine_y_diff_added_command                                   { bg="#272b34", gui="nocombine", fg="#b3f6c0", }, -- lualine_y_diff_added_command xxx gui=nocombine guifg=#b3f6c0 guibg=#272b34
      lualine_y_diff_added_terminal                                  { bg="#beadfa", gui="nocombine", fg="#b3f6c0", }, -- lualine_y_diff_added_terminal xxx gui=nocombine guifg=#b3f6c0 guibg=#beadfa
      lualine_y_diff_added_inactive                                  { bg="#272b34", gui="nocombine", fg="#b3f6c0", }, -- lualine_y_diff_added_inactive xxx gui=nocombine guifg=#b3f6c0 guibg=#272b34
      lualine_y_diff_modified_normal                                 { bg="#272b34", gui="nocombine", fg="#8cf8f7", }, -- lualine_y_diff_modified_normal xxx gui=nocombine guifg=#8cf8f7 guibg=#272b34
      lualine_y_diff_modified_insert                                 { bg="#272b34", gui="nocombine", fg="#8cf8f7", }, -- lualine_y_diff_modified_insert xxx gui=nocombine guifg=#8cf8f7 guibg=#272b34
      lualine_y_diff_modified_visual                                 { bg="#272b34", gui="nocombine", fg="#8cf8f7", }, -- lualine_y_diff_modified_visual xxx gui=nocombine guifg=#8cf8f7 guibg=#272b34
      lualine_y_diff_modified_replace                                { bg="#beadfa", gui="nocombine", fg="#8cf8f7", }, -- lualine_y_diff_modified_replace xxx gui=nocombine guifg=#8cf8f7 guibg=#beadfa
      lualine_y_diff_modified_command                                { bg="#272b34", gui="nocombine", fg="#8cf8f7", }, -- lualine_y_diff_modified_command xxx gui=nocombine guifg=#8cf8f7 guibg=#272b34
      lualine_y_diff_modified_terminal                               { bg="#beadfa", gui="nocombine", fg="#8cf8f7", }, -- lualine_y_diff_modified_terminal xxx gui=nocombine guifg=#8cf8f7 guibg=#beadfa
      lualine_y_diff_modified_inactive                               { bg="#272b34", gui="nocombine", fg="#8cf8f7", }, -- lualine_y_diff_modified_inactive xxx gui=nocombine guifg=#8cf8f7 guibg=#272b34
      lualine_y_diff_removed_normal                                  { bg="#272b34", gui="nocombine", fg="#ffc0b9", }, -- lualine_y_diff_removed_normal xxx gui=nocombine guifg=#ffc0b9 guibg=#272b34
      lualine_y_diff_removed_insert                                  { bg="#272b34", gui="nocombine", fg="#ffc0b9", }, -- lualine_y_diff_removed_insert xxx gui=nocombine guifg=#ffc0b9 guibg=#272b34
      lualine_y_diff_removed_visual                                  { bg="#272b34", gui="nocombine", fg="#ffc0b9", }, -- lualine_y_diff_removed_visual xxx gui=nocombine guifg=#ffc0b9 guibg=#272b34
      lualine_y_diff_removed_replace                                 { bg="#beadfa", gui="nocombine", fg="#ffc0b9", }, -- lualine_y_diff_removed_replace xxx gui=nocombine guifg=#ffc0b9 guibg=#beadfa
      lualine_y_diff_removed_command                                 { bg="#272b34", gui="nocombine", fg="#ffc0b9", }, -- lualine_y_diff_removed_command xxx gui=nocombine guifg=#ffc0b9 guibg=#272b34
      lualine_y_diff_removed_terminal                                { bg="#beadfa", gui="nocombine", fg="#ffc0b9", }, -- lualine_y_diff_removed_terminal xxx gui=nocombine guifg=#ffc0b9 guibg=#beadfa
      lualine_y_diff_removed_inactive                                { bg="#272b34", gui="nocombine", fg="#ffc0b9", }, -- lualine_y_diff_removed_inactive xxx gui=nocombine guifg=#ffc0b9 guibg=#272b34
      lualine_x_diagnostics_error_normal                             { bg="#272b34", gui="nocombine", fg="#ff0000", }, -- lualine_x_diagnostics_error_normal xxx gui=nocombine guifg=#ff0000 guibg=#272b34
      lualine_x_diagnostics_error_insert                             { bg="#272b34", gui="nocombine", fg="#ff0000", }, -- lualine_x_diagnostics_error_insert xxx gui=nocombine guifg=#ff0000 guibg=#272b34
      lualine_x_diagnostics_error_visual                             { bg="#272b34", gui="nocombine", fg="#ff0000", }, -- lualine_x_diagnostics_error_visual xxx gui=nocombine guifg=#ff0000 guibg=#272b34
      lualine_x_diagnostics_error_replace                            { bg="#272b34", gui="nocombine", fg="#ff0000", }, -- lualine_x_diagnostics_error_replace xxx gui=nocombine guifg=#ff0000 guibg=#272b34
      lualine_x_diagnostics_error_command                            { bg="#272b34", gui="nocombine", fg="#ff0000", }, -- lualine_x_diagnostics_error_command xxx gui=nocombine guifg=#ff0000 guibg=#272b34
      lualine_x_diagnostics_error_terminal                           { bg="#272b34", gui="nocombine", fg="#ff0000", }, -- lualine_x_diagnostics_error_terminal xxx gui=nocombine guifg=#ff0000 guibg=#272b34
      lualine_x_diagnostics_error_inactive                           { bg="#272b34", gui="nocombine", fg="#ff0000", }, -- lualine_x_diagnostics_error_inactive xxx gui=nocombine guifg=#ff0000 guibg=#272b34
      lualine_x_diagnostics_warn_normal                              { bg="#272b34", gui="nocombine", fg="#ffa500", }, -- lualine_x_diagnostics_warn_normal xxx gui=nocombine guifg=#ffa500 guibg=#272b34
      lualine_x_diagnostics_warn_insert                              { bg="#272b34", gui="nocombine", fg="#ffa500", }, -- lualine_x_diagnostics_warn_insert xxx gui=nocombine guifg=#ffa500 guibg=#272b34
      lualine_x_diagnostics_warn_visual                              { bg="#272b34", gui="nocombine", fg="#ffa500", }, -- lualine_x_diagnostics_warn_visual xxx gui=nocombine guifg=#ffa500 guibg=#272b34
      lualine_x_diagnostics_warn_replace                             { bg="#272b34", gui="nocombine", fg="#ffa500", }, -- lualine_x_diagnostics_warn_replace xxx gui=nocombine guifg=#ffa500 guibg=#272b34
      lualine_x_diagnostics_warn_command                             { bg="#272b34", gui="nocombine", fg="#ffa500", }, -- lualine_x_diagnostics_warn_command xxx gui=nocombine guifg=#ffa500 guibg=#272b34
      lualine_x_diagnostics_warn_terminal                            { bg="#272b34", gui="nocombine", fg="#ffa500", }, -- lualine_x_diagnostics_warn_terminal xxx gui=nocombine guifg=#ffa500 guibg=#272b34
      lualine_x_diagnostics_warn_inactive                            { bg="#272b34", gui="nocombine", fg="#ffa500", }, -- lualine_x_diagnostics_warn_inactive xxx gui=nocombine guifg=#ffa500 guibg=#272b34
      lualine_x_diagnostics_info_normal                              { bg="#272b34", gui="nocombine", fg="#add8e6", }, -- lualine_x_diagnostics_info_normal xxx gui=nocombine guifg=#add8e6 guibg=#272b34
      lualine_x_diagnostics_info_insert                              { bg="#272b34", gui="nocombine", fg="#add8e6", }, -- lualine_x_diagnostics_info_insert xxx gui=nocombine guifg=#add8e6 guibg=#272b34
      lualine_x_diagnostics_info_visual                              { bg="#272b34", gui="nocombine", fg="#add8e6", }, -- lualine_x_diagnostics_info_visual xxx gui=nocombine guifg=#add8e6 guibg=#272b34
      lualine_x_diagnostics_info_replace                             { bg="#272b34", gui="nocombine", fg="#add8e6", }, -- lualine_x_diagnostics_info_replace xxx gui=nocombine guifg=#add8e6 guibg=#272b34
      lualine_x_diagnostics_info_command                             { bg="#272b34", gui="nocombine", fg="#add8e6", }, -- lualine_x_diagnostics_info_command xxx gui=nocombine guifg=#add8e6 guibg=#272b34
      lualine_x_diagnostics_info_terminal                            { bg="#272b34", gui="nocombine", fg="#add8e6", }, -- lualine_x_diagnostics_info_terminal xxx gui=nocombine guifg=#add8e6 guibg=#272b34
      lualine_x_diagnostics_info_inactive                            { bg="#272b34", gui="nocombine", fg="#add8e6", }, -- lualine_x_diagnostics_info_inactive xxx gui=nocombine guifg=#add8e6 guibg=#272b34
      lualine_x_diagnostics_hint_normal                              { bg="#272b34", gui="nocombine", fg="#c7f1ff", }, -- lualine_x_diagnostics_hint_normal xxx gui=nocombine guifg=#c7f1ff guibg=#272b34
      lualine_x_diagnostics_hint_insert                              { bg="#272b34", gui="nocombine", fg="#c7f1ff", }, -- lualine_x_diagnostics_hint_insert xxx gui=nocombine guifg=#c7f1ff guibg=#272b34
      lualine_x_diagnostics_hint_visual                              { bg="#272b34", gui="nocombine", fg="#c7f1ff", }, -- lualine_x_diagnostics_hint_visual xxx gui=nocombine guifg=#c7f1ff guibg=#272b34
      lualine_x_diagnostics_hint_replace                             { bg="#272b34", gui="nocombine", fg="#c7f1ff", }, -- lualine_x_diagnostics_hint_replace xxx gui=nocombine guifg=#c7f1ff guibg=#272b34
      lualine_x_diagnostics_hint_command                             { bg="#272b34", gui="nocombine", fg="#c7f1ff", }, -- lualine_x_diagnostics_hint_command xxx gui=nocombine guifg=#c7f1ff guibg=#272b34
      lualine_x_diagnostics_hint_terminal                            { bg="#272b34", gui="nocombine", fg="#c7f1ff", }, -- lualine_x_diagnostics_hint_terminal xxx gui=nocombine guifg=#c7f1ff guibg=#272b34
      lualine_x_diagnostics_hint_inactive                            { bg="#272b34", gui="nocombine", fg="#c7f1ff", }, -- lualine_x_diagnostics_hint_inactive xxx gui=nocombine guifg=#c7f1ff guibg=#272b34
      TodoBgNOTE                                                     { bg="#c7f1ff", gui="bold", fg="#272b34", }, -- TodoBgNOTE     xxx gui=bold guifg=#272b34 guibg=#c7f1ff
      TodoFgNOTE                                                     { fg="#c7f1ff", }, -- TodoFgNOTE     xxx guifg=#c7f1ff
      TodoSignNOTE                                                   { fg="#c7f1ff", }, -- TodoSignNOTE   xxx guifg=#c7f1ff
      TodoBgPERF                                                     { bg="#dedede", gui="bold", fg="#272b34", }, -- TodoBgPERF     xxx gui=bold guifg=#272b34 guibg=#dedede
      TodoFgPERF                                                     { fg="#dedede", }, -- TodoFgPERF     xxx guifg=#dedede
      TodoSignPERF                                                   { fg="#dedede", }, -- TodoSignPERF   xxx guifg=#dedede
      TodoBgHACK                                                     { bg="#ffa500", gui="bold", fg="#272b34", }, -- TodoBgHACK     xxx gui=bold guifg=#272b34 guibg=#ffa500
      TodoFgHACK                                                     { fg="#ffa500", }, -- TodoFgHACK     xxx guifg=#ffa500
      TodoSignHACK                                                   { fg="#ffa500", }, -- TodoSignHACK   xxx guifg=#ffa500
      TodoBgTEST                                                     { bg="#dedede", gui="bold", fg="#272b34", }, -- TodoBgTEST     xxx gui=bold guifg=#272b34 guibg=#dedede
      TodoFgTEST                                                     { fg="#dedede", }, -- TodoFgTEST     xxx guifg=#dedede
      TodoSignTEST                                                   { fg="#dedede", }, -- TodoSignTEST   xxx guifg=#dedede
      TodoBgTODO                                                     { bg="#add8e6", gui="bold", fg="#272b34", }, -- TodoBgTODO     xxx gui=bold guifg=#272b34 guibg=#add8e6
      TodoFgTODO                                                     { fg="#add8e6", }, -- TodoFgTODO     xxx guifg=#add8e6
      TodoSignTODO                                                   { fg="#add8e6", }, -- TodoSignTODO   xxx guifg=#add8e6
      TodoBgWARN                                                     { bg="#ffa500", gui="bold", fg="#272b34", }, -- TodoBgWARN     xxx gui=bold guifg=#272b34 guibg=#ffa500
      TodoFgWARN                                                     { fg="#ffa500", }, -- TodoFgWARN     xxx guifg=#ffa500
      TodoSignWARN                                                   { fg="#ffa500", }, -- TodoSignWARN   xxx guifg=#ffa500
      TodoBgFIX                                                      { bg="#ff0000", gui="bold", fg="#272b34", }, -- TodoBgFIX      xxx gui=bold guifg=#272b34 guibg=#ff0000
      TodoFgFIX                                                      { fg="#ff0000", }, -- TodoFgFIX      xxx guifg=#ff0000
      TodoSignFIX                                                    { fg="#ff0000", }, -- TodoSignFIX    xxx guifg=#ff0000
      lualine_transitional_lualine_a_normal_to_StatusLine            { bg=colors.bg, gui="nocombine", fg="#ff66b0", }, -- lualine_transitional_lualine_a_normal_to_StatusLine xxx gui=nocombine guifg=#ff66b0
      lualine_transitional_lualine_a_normal_to_lualine_c_normal      { bg="#272b34", gui="nocombine", fg="#ff66b0", }, -- lualine_transitional_lualine_a_normal_to_lualine_c_normal xxx gui=nocombine guifg=#ff66b0 guibg=#272b34
      lualine_transitional_lualine_b_tabs_active_to_TabLineFill      { bg="#a9a9a9", gui="nocombine", fg="#ff66b0", }, -- lualine_transitional_lualine_b_tabs_active_to_TabLineFill xxx gui=nocombine guifg=#ff66b0 guibg=#a9a9a9
      lualine_transitional_lualine_b_tabs_active_to_lualine_c_normal { bg="#272b34", gui="nocombine", fg="#ff66b0", }, -- lualine_transitional_lualine_b_tabs_active_to_lualine_c_normal xxx gui=nocombine guifg=#ff66b0 guibg=#272b34
      DevIconLibreOfficeFormula                                      { fg="#ff5a96", }, -- DevIconLibreOfficeFormula xxx ctermfg=204 guifg=#ff5a96
      DevIconNswag                                                   { fg="#85ea2d", }, -- DevIconNswag   xxx ctermfg=112 guifg=#85ea2d
      DevIconBSPWM                                                   { fg="#2f2f2f", }, -- DevIconBSPWM   xxx ctermfg=236 guifg=#2f2f2f
      DevIconXSettingsdConf                                          { fg="#e54d18", }, -- DevIconXSettingsdConf xxx ctermfg=196 guifg=#e54d18
      DevIconMpp                                                     { fg="#519aba", }, -- DevIconMpp     xxx ctermfg=74 guifg=#519aba
      DevIconxmonad                                                  { fg="#fd4d5d", }, -- DevIconxmonad  xxx ctermfg=203 guifg=#fd4d5d
      DevIconUI                                                      { fg="#015bf0", }, -- DevIconUI      xxx ctermfg=27 guifg=#015bf0
      DevIconMOV                                                     { fg="#fd971f", }, -- DevIconMOV     xxx ctermfg=208 guifg=#fd971f
      DevIconWranglerConfig                                          { fg="#f48120", }, -- DevIconWranglerConfig xxx ctermfg=208 guifg=#f48120
      DevIconMobi                                                    { fg="#eab16d", }, -- DevIconMobi    xxx ctermfg=215 guifg=#eab16d
      DevIconHTTP                                                    { fg="#008ec7", }, -- DevIconHTTP    xxx ctermfg=31 guifg=#008ec7
      DevIconWeston                                                  { fg="#ffbb01", }, -- DevIconWeston  xxx ctermfg=214 guifg=#ffbb01
      DevIconMkv                                                     { fg="#fd971f", }, -- DevIconMkv     xxx ctermfg=208 guifg=#fd971f
      DevIconVLC                                                     { fg="#ee7a00", }, -- DevIconVLC     xxx ctermfg=208 guifg=#ee7a00
      DevIconSha256                                                  { fg="#8c86af", }, -- DevIconSha256  xxx ctermfg=103 guifg=#8c86af
      DevIconSharedObject                                            { fg="#dcddd6", }, -- DevIconSharedObject xxx ctermfg=253 guifg=#dcddd6
      DevIconDll                                                     { fg="#4d2c0b", }, -- DevIconDll     xxx ctermfg=52 guifg=#4d2c0b
      DevIconRazorPage                                               { fg="#512bd4", }, -- DevIconRazorPage xxx ctermfg=56 guifg=#512bd4
      DevIconFeature                                                 { fg="#00a818", }, -- DevIconFeature xxx ctermfg=34 guifg=#00a818
      DevIconcudah                                                   { fg="#a074c4", }, -- DevIconcudah   xxx ctermfg=140 guifg=#a074c4
      DevIconcuda                                                    { fg="#89e051", }, -- DevIconcuda    xxx ctermfg=113 guifg=#89e051
      DevIconUbuntu                                                  { fg="#dd4814", }, -- DevIconUbuntu  xxx ctermfg=196 guifg=#dd4814
      DevIconCentos                                                  { fg="#a2518d", }, -- DevIconCentos  xxx ctermfg=132 guifg=#a2518d
      DevIconMaven                                                   { fg="#7a0d21", }, -- DevIconMaven   xxx ctermfg=52 guifg=#7a0d21
      DevIconGradleSettings                                          { fg="#005f87", }, -- DevIconGradleSettings xxx ctermfg=24 guifg=#005f87
      DevIconGv                                                      { fg="#30638e", }, -- DevIconGv      xxx ctermfg=24 guifg=#30638e
      DevIconGradleBuildScript                                       { fg="#005f87", }, -- DevIconGradleBuildScript xxx ctermfg=24 guifg=#005f87
      DevIconOpenBSD                                                 { fg="#f2ca30", }, -- DevIconOpenBSD xxx ctermfg=220 guifg=#f2ca30
      DevIconPrettierConfig                                          { fg="#4285f4", }, -- DevIconPrettierConfig xxx ctermfg=33 guifg=#4285f4
      DevIconElf                                                     { fg="#9f0500", }, -- DevIconElf     xxx ctermfg=124 guifg=#9f0500
      DevIconLuaurc                                                  { fg="#00a2ff", }, -- DevIconLuaurc  xxx ctermfg=75 guifg=#00a2ff
      DevIconVsix                                                    { fg="#854cc7", }, -- DevIconVsix    xxx ctermfg=98 guifg=#854cc7
      DevIconBunLockfile                                             { fg="#eadcd1", }, -- DevIconBunLockfile xxx ctermfg=253 guifg=#eadcd1
      DevIconJustfile                                                { fg="#6d8086", }, -- DevIconJustfile xxx ctermfg=66 guifg=#6d8086
      DevIconXsession                                                { fg="#e54d18", }, -- DevIconXsession xxx ctermfg=196 guifg=#e54d18
      DevIconXInitrc                                                 { fg="#e54d18", }, -- DevIconXInitrc xxx ctermfg=196 guifg=#e54d18
      DevIconTrueTypeFont                                            { fg="#ececec", }, -- DevIconTrueTypeFont xxx ctermfg=255 guifg=#ececec
      DevIconLib                                                     { fg="#4d2c0b", }, -- DevIconLib     xxx ctermfg=52 guifg=#4d2c0b
      DevIconSecurity                                                { fg="#bec4c9", }, -- DevIconSecurity xxx ctermfg=251 guifg=#bec4c9
      DevIconTypoScriptConfig                                        { fg="#ff8700", }, -- DevIconTypoScriptConfig xxx ctermfg=208 guifg=#ff8700
      DevIconArch                                                    { fg="#0f94d2", }, -- DevIconArch    xxx ctermfg=67 guifg=#0f94d2
      DevIconDownload                                                { fg="#44cda8", }, -- DevIconDownload xxx ctermfg=43 guifg=#44cda8
      DevIconTorrent                                                 { fg="#44cda8", }, -- DevIconTorrent xxx ctermfg=43 guifg=#44cda8
      DevIconGTK                                                     { fg="#ffffff", }, -- DevIconGTK     xxx ctermfg=231 guifg=#ffffff
      DevIconPreCommitConfig                                         { fg="#f8b424", }, -- DevIconPreCommitConfig xxx ctermfg=214 guifg=#f8b424
      DevIconnode                                                    { fg="#5fa04e", }, -- DevIconnode    xxx ctermfg=71 guifg=#5fa04e
      DevIconCache                                                   { fg="#ffffff", }, -- DevIconCache   xxx ctermfg=231 guifg=#ffffff
      DevIconNuxtConfig                                              { fg="#00c58e", }, -- DevIconNuxtConfig xxx ctermfg=42 guifg=#00c58e
      DevIconNano                                                    { fg="#440077", }, -- DevIconNano    xxx ctermfg=54 guifg=#440077
      DevIconStaticLibraryArchive                                    { fg="#dcddd6", }, -- DevIconStaticLibraryArchive xxx ctermfg=253 guifg=#dcddd6
      DevIconLocalization                                            { fg="#2596be", }, -- DevIconLocalization xxx ctermfg=31 guifg=#2596be
      DevIconMailmap                                                 { fg="#f54d27", }, -- DevIconMailmap xxx ctermfg=196 guifg=#f54d27
      DevIconLibreOfficeWriter                                       { fg="#2dcbfd", }, -- DevIconLibreOfficeWriter xxx ctermfg=81 guifg=#2dcbfd
      DevIconLibreOfficeImpress                                      { fg="#fe9c45", }, -- DevIconLibreOfficeImpress xxx ctermfg=215 guifg=#fe9c45
      DevIconLibreOfficeGraphics                                     { fg="#fffb57", }, -- DevIconLibreOfficeGraphics xxx ctermfg=227 guifg=#fffb57
      DevIconStorybookTsx                                            { fg="#ff4785", }, -- DevIconStorybookTsx xxx ctermfg=204 guifg=#ff4785
      DevIconFIGletFontFormat                                        { fg="#ececec", }, -- DevIconFIGletFontFormat xxx ctermfg=255 guifg=#ececec
      DevIconFIGletFontControl                                       { fg="#ececec", }, -- DevIconFIGletFontControl xxx ctermfg=255 guifg=#ececec
      DevIconStorybookMjs                                            { fg="#ff4785", }, -- DevIconStorybookMjs xxx ctermfg=204 guifg=#ff4785
      DevIconGodotTextScene                                          { fg="#6d8086", }, -- DevIconGodotTextScene xxx ctermfg=66 guifg=#6d8086
      DevIconStorybookJsx                                            { fg="#ff4785", }, -- DevIconStorybookJsx xxx ctermfg=204 guifg=#ff4785
      DevIconGodotTextResource                                       { fg="#6d8086", }, -- DevIconGodotTextResource xxx ctermfg=66 guifg=#6d8086
      DevIconFdmdownload                                             { fg="#44cda8", }, -- DevIconFdmdownload xxx ctermfg=43 guifg=#44cda8
      DevIconFreeCAD                                                 { fg="#cb333b", }, -- DevIconFreeCAD xxx ctermfg=160 guifg=#cb333b
      DevIconSte                                                     { fg="#839463", }, -- DevIconSte     xxx ctermfg=101 guifg=#839463
      DevIconOggSpeexAudio                                           { fg="#0075aa", }, -- DevIconOggSpeexAudio xxx ctermfg=24 guifg=#0075aa
      DevIconGleam                                                   { fg="#ffaff3", }, -- DevIconGleam   xxx ctermfg=219 guifg=#ffaff3
      DevIconBlender                                                 { fg="#ea7600", }, -- DevIconBlender xxx ctermfg=208 guifg=#ea7600
      DevIconFusion360                                               { fg="#839463", }, -- DevIconFusion360 xxx ctermfg=101 guifg=#839463
      DevIconExe                                                     { fg="#9f0500", }, -- DevIconExe     xxx ctermfg=124 guifg=#9f0500
      DevIconEpub                                                    { fg="#eab16d", }, -- DevIconEpub    xxx ctermfg=215 guifg=#eab16d
      DevIconSolveSpace                                              { fg="#839463", }, -- DevIconSolveSpace xxx ctermfg=101 guifg=#839463
      DevIconElisp                                                   { fg="#8172be", }, -- DevIconElisp   xxx ctermfg=97 guifg=#8172be
      DevIconAzureCli                                                { fg="#0078d4", }, -- DevIconAzureCli xxx ctermfg=32 guifg=#0078d4
      DevIconGradle                                                  { fg="#005f87", }, -- DevIconGradle  xxx ctermfg=24 guifg=#005f87
      DevIconGroovy                                                  { fg="#4a687c", }, -- DevIconGroovy  xxx ctermfg=24 guifg=#4a687c
      DevIconTmux                                                    { fg="#14ba19", }, -- DevIconTmux    xxx ctermfg=34 guifg=#14ba19
      DevIconAutoCADDxf                                              { fg="#839463", }, -- DevIconAutoCADDxf xxx ctermfg=101 guifg=#839463
      DevIconAutoCADDwg                                              { fg="#839463", }, -- DevIconAutoCADDwg xxx ctermfg=101 guifg=#839463
      DevIconApp                                                     { fg="#9f0500", }, -- DevIconApp     xxx ctermfg=124 guifg=#9f0500
      DevIconASM                                                     { fg="#0071c5", }, -- DevIconASM     xxx ctermfg=25 guifg=#0071c5
      DevIconMonkeysAudio                                            { fg="#00afff", }, -- DevIconMonkeysAudio xxx ctermfg=39 guifg=#00afff
      DevIconAndroid                                                 { fg="#34a853", }, -- DevIconAndroid xxx ctermfg=35 guifg=#34a853
      DevIconAudioInterchangeFileFormat                              { fg="#00afff", }, -- DevIconAudioInterchangeFileFormat xxx ctermfg=39 guifg=#00afff
      DevIconTypst                                                   { fg="#0dbcc0", }, -- DevIconTypst   xxx ctermfg=37 guifg=#0dbcc0
      DevIconAdvancedAudioCoding                                     { fg="#00afff", }, -- DevIconAdvancedAudioCoding xxx ctermfg=39 guifg=#00afff
      DevIconAsciinema                                               { fg="#fd971f", }, -- DevIconAsciinema xxx ctermfg=208 guifg=#fd971f
      DevIconConfig                                                  { fg="#6d8086", }, -- DevIconConfig  xxx ctermfg=66 guifg=#6d8086
      DevIconAsc                                                     { fg="#576d7f", }, -- DevIconAsc     xxx ctermfg=242 guifg=#576d7f
      DevIconSrt                                                     { fg="#ffb713", }, -- DevIconSrt     xxx ctermfg=214 guifg=#ffb713
      DevIconSsa                                                     { fg="#ffb713", }, -- DevIconSsa     xxx ctermfg=214 guifg=#ffb713
      DevIconAss                                                     { fg="#ffb713", }, -- DevIconAss     xxx ctermfg=214 guifg=#ffb713
      DevIconXorgConf                                                { fg="#e54d18", }, -- DevIconXorgConf xxx ctermfg=196 guifg=#e54d18
      DevIconZorin                                                   { fg="#14a1e8", }, -- DevIconZorin   xxx ctermfg=39 guifg=#14a1e8
      DevIconStp                                                     { fg="#839463", }, -- DevIconStp     xxx ctermfg=101 guifg=#839463
      DevIconClangConfig                                             { fg="#6d8086", }, -- DevIconClangConfig xxx ctermfg=66 guifg=#6d8086
      DevIconHexadecimal                                             { fg="#2e63ff", }, -- DevIconHexadecimal xxx ctermfg=27 guifg=#2e63ff
      DevIconConda                                                   { fg="#43b02a", }, -- DevIconConda   xxx ctermfg=34 guifg=#43b02a
      DevIconMATE                                                    { fg="#9bda5c", }, -- DevIconMATE    xxx ctermfg=113 guifg=#9bda5c
      DevIconLXQt                                                    { fg="#0191d2", }, -- DevIconLXQt    xxx ctermfg=32 guifg=#0191d2
      DevIconLXDE                                                    { fg="#a4a4a4", }, -- DevIconLXDE    xxx ctermfg=248 guifg=#a4a4a4
      DevIconGNOME                                                   { fg="#ffffff", }, -- DevIconGNOME   xxx ctermfg=231 guifg=#ffffff
      DevIconM3u8                                                    { fg="#ed95ae", }, -- DevIconM3u8    xxx ctermfg=211 guifg=#ed95ae
      DevIconSub                                                     { fg="#ffb713", }, -- DevIconSub     xxx ctermfg=214 guifg=#ffb713
      DevIconBudgie                                                  { fg="#4e5361", }, -- DevIconBudgie  xxx ctermfg=240 guifg=#4e5361
      DevIconDockerIgnore                                            { fg="#458ee6", }, -- DevIconDockerIgnore xxx ctermfg=68 guifg=#458ee6
      DevIconPxi                                                     { fg="#5aa7e4", }, -- DevIconPxi     xxx ctermfg=39 guifg=#5aa7e4
      DevIconPyx                                                     { fg="#5aa7e4", }, -- DevIconPyx     xxx ctermfg=39 guifg=#5aa7e4
      DevIconPyw                                                     { fg="#5aa7e4", }, -- DevIconPyw     xxx ctermfg=39 guifg=#5aa7e4
      DevIconPyi                                                     { fg="#ffbc03", }, -- DevIconPyi     xxx ctermfg=214 guifg=#ffbc03
      DevIconQt                                                      { fg="#40cd52", }, -- DevIconQt      xxx ctermfg=77 guifg=#40cd52
      DevIconTypeScriptDeclaration                                   { fg="#d59855", }, -- DevIconTypeScriptDeclaration xxx ctermfg=172 guifg=#d59855
      DevIconNfo                                                     { fg="#ffffcd", }, -- DevIconNfo     xxx ctermfg=230 guifg=#ffffcd
      DevIconriver                                                   { fg="#000000", }, -- DevIconriver   xxx ctermfg=16 guifg=#000000
      DevIconJWM                                                     { fg="#0078cd", }, -- DevIconJWM     xxx ctermfg=32 guifg=#0078cd
      DevIconHyprland                                                { fg="#00aaae", }, -- DevIconHyprland xxx ctermfg=37 guifg=#00aaae
      DevIconFluxbox                                                 { fg="#555555", }, -- DevIconFluxbox xxx ctermfg=240 guifg=#555555
      DevIconPyLintConfig                                            { fg="#6d8086", }, -- DevIconPyLintConfig xxx ctermfg=66 guifg=#6d8086
      DevIconCheckhealth                                             { fg="#75b4fb", }, -- DevIconCheckhealth xxx ctermfg=75 guifg=#75b4fb
      DevIconEnlightenment                                           { fg="#ffffff", }, -- DevIconEnlightenment xxx ctermfg=231 guifg=#ffffff
      DevIconCrdownload                                              { fg="#44cda8", }, -- DevIconCrdownload xxx ctermfg=43 guifg=#44cda8
      DevIcondwm                                                     { fg="#1177aa", }, -- DevIcondwm     xxx ctermfg=31 guifg=#1177aa
      DevIconawesome                                                 { fg="#535d6c", }, -- DevIconawesome xxx ctermfg=59 guifg=#535d6c
      DevIconMpv                                                     { fg="#3b1342", }, -- DevIconMpv     xxx ctermfg=53 guifg=#3b1342
      DevIconPKGBUILD                                                { fg="#0f94d2", }, -- DevIconPKGBUILD xxx ctermfg=67 guifg=#0f94d2
      DevIconXresources                                              { fg="#e54d18", }, -- DevIconXresources xxx ctermfg=196 guifg=#e54d18
      DevIconBuildProps                                              { fg="#00a2ff", }, -- DevIconBuildProps xxx ctermfg=75 guifg=#00a2ff
      DevIconBuildTargets                                            { fg="#00a2ff", }, -- DevIconBuildTargets xxx ctermfg=75 guifg=#00a2ff
      DevIconXauthority                                              { fg="#e54d18", }, -- DevIconXauthority xxx ctermfg=196 guifg=#e54d18
      DevIconFreeCADConfig                                           { fg="#cb333b", }, -- DevIconFreeCADConfig xxx ctermfg=160 guifg=#cb333b
      DevIconPrusaSlicer                                             { fg="#ec6b23", }, -- DevIconPrusaSlicer xxx ctermfg=202 guifg=#ec6b23
      DevIconGitBlameIgnore                                          { fg="#f54d27", }, -- DevIconGitBlameIgnore xxx ctermfg=196 guifg=#f54d27
      DevIconEslintIgnore                                            { fg="#4b32c3", }, -- DevIconEslintIgnore xxx ctermfg=56 guifg=#4b32c3
      DevIconNotebook                                                { fg="#f57d01", }, -- DevIconNotebook xxx ctermfg=208 guifg=#f57d01
      DevIconBz2                                                     { fg="#eca517", }, -- DevIconBz2     xxx ctermfg=214 guifg=#eca517
      DevIconBz                                                      { fg="#eca517", }, -- DevIconBz      xxx ctermfg=214 guifg=#eca517
      DevIconBoundaryRepresentation                                  { fg="#839463", }, -- DevIconBoundaryRepresentation xxx ctermfg=101 guifg=#839463
      DevIconCodespell                                               { fg="#35da60", }, -- DevIconCodespell xxx ctermfg=41 guifg=#35da60
      DevIconGoMod                                                   { fg="#00add8", }, -- DevIconGoMod   xxx ctermfg=38 guifg=#00add8
      DevIconSway                                                    { fg="#68751c", }, -- DevIconSway    xxx ctermfg=64 guifg=#68751c
      DevIconZst                                                     { fg="#eca517", }, -- DevIconZst     xxx ctermfg=214 guifg=#eca517
      DevIconZip                                                     { fg="#eca517", }, -- DevIconZip     xxx ctermfg=214 guifg=#eca517
      DevIconXz                                                      { fg="#eca517", }, -- DevIconXz      xxx ctermfg=214 guifg=#eca517
      DevIconXpi                                                     { fg="#ff1b01", }, -- DevIconXpi     xxx ctermfg=196 guifg=#ff1b01
      DevIconLogos                                                   { fg="#599eff", }, -- DevIconLogos   xxx ctermfg=111 guifg=#599eff
      DevIconXcLocalization                                          { fg="#2596be", }, -- DevIconXcLocalization xxx ctermfg=31 guifg=#2596be
      DevIconTempl                                                   { fg="#dbbd30", }, -- DevIconTempl   xxx ctermfg=178 guifg=#dbbd30
      DevIconTemplate                                                { fg="#dbbd30", }, -- DevIconTemplate xxx ctermfg=178 guifg=#dbbd30
      DevIconGIMP                                                    { fg="#635b46", }, -- DevIconGIMP    xxx ctermfg=240 guifg=#635b46
      DevIconMp4                                                     { fg="#fd971f", }, -- DevIconMp4     xxx ctermfg=208 guifg=#fd971f
      DevIconXaml                                                    { fg="#512bd4", }, -- DevIconXaml    xxx ctermfg=56 guifg=#512bd4
      DevIconDevuan                                                  { fg="#404a52", }, -- DevIconDevuan  xxx ctermfg=238 guifg=#404a52
      DevIconi3                                                      { fg="#e8ebee", }, -- DevIconi3      xxx ctermfg=255 guifg=#e8ebee
      DevIconLrc                                                     { fg="#ffb713", }, -- DevIconLrc     xxx ctermfg=214 guifg=#ffb713
      DevIconRaspberryPiOS                                           { fg="#be1848", }, -- DevIconRaspberryPiOS xxx ctermfg=161 guifg=#be1848
      DevIconObjectiveC                                              { fg="#599eff", }, -- DevIconObjectiveC xxx ctermfg=111 guifg=#599eff
      DevIconTailwindConfig                                          { fg="#20c2e3", }, -- DevIconTailwindConfig xxx ctermfg=45 guifg=#20c2e3
      DevIconDeepin                                                  { fg="#2ca7f8", }, -- DevIconDeepin  xxx ctermfg=39 guifg=#2ca7f8
      DevIconWavPack                                                 { fg="#00afff", }, -- DevIconWavPack xxx ctermfg=39 guifg=#00afff
      DevIconDot                                                     { fg="#30638e", }, -- DevIconDot     xxx ctermfg=24 guifg=#30638e
      DevIconVRML                                                    { fg="#888888", }, -- DevIconVRML    xxx ctermfg=102 guifg=#888888
      DevIconHyprpaper                                               { fg="#00aaae", }, -- DevIconHyprpaper xxx ctermfg=37 guifg=#00aaae
      DevIconTxz                                                     { fg="#eca517", }, -- DevIconTxz     xxx ctermfg=214 guifg=#eca517
      DevIconWebm                                                    { fg="#fd971f", }, -- DevIconWebm    xxx ctermfg=208 guifg=#fd971f
      DevIconWebOpenFontFormat                                       { fg="#ececec", }, -- DevIconWebOpenFontFormat xxx ctermfg=255 guifg=#ececec
      DevIconWindowsMediaAudio                                       { fg="#00afff", }, -- DevIconWindowsMediaAudio xxx ctermfg=39 guifg=#00afff
      DevIconOggVorbis                                               { fg="#0075aa", }, -- DevIconOggVorbis xxx ctermfg=24 guifg=#0075aa
      DevIconSvgz                                                    { fg="#ffb13b", }, -- DevIconSvgz    xxx ctermfg=214 guifg=#ffb13b
      DevIconOggVideo                                                { fg="#fd971f", }, -- DevIconOggVideo xxx ctermfg=208 guifg=#fd971f
      DevIconBlade                                                   { fg="#f05340", }, -- DevIconBlade   xxx ctermfg=203 guifg=#f05340
      DevIconArcoLinux                                               { fg="#6690eb", }, -- DevIconArcoLinux xxx ctermfg=68 guifg=#6690eb
      DevIconTypoScript                                              { fg="#ff8700", }, -- DevIconTypoScript xxx ctermfg=208 guifg=#ff8700
      DevIconEmbeddedOpenTypeFont                                    { fg="#ececec", }, -- DevIconEmbeddedOpenTypeFont xxx ctermfg=255 guifg=#ececec
      DevIconBin                                                     { fg="#9f0500", }, -- DevIconBin     xxx ctermfg=124 guifg=#9f0500
      DevIconOut                                                     { fg="#9f0500", }, -- DevIconOut     xxx ctermfg=124 guifg=#9f0500
      DevIconPart                                                    { fg="#44cda8", }, -- DevIconPart    xxx ctermfg=43 guifg=#44cda8
      DevIconStorybookSvelte                                         { fg="#ff4785", }, -- DevIconStorybookSvelte xxx ctermfg=204 guifg=#ff4785
      DevIconObjectiveCPlusPlus                                      { fg="#519aba", }, -- DevIconObjectiveCPlusPlus xxx ctermfg=74 guifg=#519aba
      DevIconVanillaOS                                               { fg="#fabd4d", }, -- DevIconVanillaOS xxx ctermfg=214 guifg=#fabd4d
      DevIconCppm                                                    { fg="#519aba", }, -- DevIconCppm    xxx ctermfg=74 guifg=#519aba
      DevIconCxxm                                                    { fg="#519aba", }, -- DevIconCxxm    xxx ctermfg=74 guifg=#519aba
      DevIconLinux                                                   { fg="#fdfdfb", }, -- DevIconLinux   xxx ctermfg=231 guifg=#fdfdfb
      DevIconM3u                                                     { fg="#ed95ae", }, -- DevIconM3u     xxx ctermfg=211 guifg=#ed95ae
      DevIconTumbleweed                                              { fg="#35b9ab", }, -- DevIconTumbleweed xxx ctermfg=37 guifg=#35b9ab
      DevIcon3gp                                                     { fg="#fd971f", }, -- DevIcon3gp     xxx ctermfg=208 guifg=#fd971f
      DevIconHurl                                                    { fg="#ff0288", }, -- DevIconHurl    xxx ctermfg=198 guifg=#ff0288
      DevIconIxx                                                     { fg="#519aba", }, -- DevIconIxx     xxx ctermfg=74 guifg=#519aba
      DevIconTrisquelGNULinux                                        { fg="#0f58b6", }, -- DevIconTrisquelGNULinux xxx ctermfg=25 guifg=#0f58b6
      DevIconParrot                                                  { fg="#54deff", }, -- DevIconParrot  xxx ctermfg=45 guifg=#54deff
      DevIconDconf                                                   { fg="#ffffff", }, -- DevIconDconf   xxx ctermfg=231 guifg=#ffffff
      DevIconTails                                                   { fg="#56347c", }, -- DevIconTails   xxx ctermfg=54 guifg=#56347c
      DevIcon3DObjectFile                                            { fg="#888888", }, -- DevIcon3DObjectFile xxx ctermfg=102 guifg=#888888
      DevIconCue                                                     { fg="#ed95ae", }, -- DevIconCue     xxx ctermfg=211 guifg=#ed95ae
      DevIconVercel                                                  { fg="#ffffff", }, -- DevIconVercel  xxx ctermfg=231 guifg=#ffffff
      DevIconSolus                                                   { fg="#4b5163", }, -- DevIconSolus   xxx ctermfg=239 guifg=#4b5163
      DevIconGentoo                                                  { fg="#b1abce", }, -- DevIconGentoo  xxx ctermfg=146 guifg=#b1abce
      DevIconSlackware                                               { fg="#475fa9", }, -- DevIconSlackware xxx ctermfg=61 guifg=#475fa9
      DevIconSlnx                                                    { fg="#854cc7", }, -- DevIconSlnx    xxx ctermfg=98 guifg=#854cc7
      DevIconAUTHORS                                                 { fg="#a172ff", }, -- DevIconAUTHORS xxx ctermfg=135 guifg=#a172ff
      DevIconSabayon                                                 { fg="#c6c6c6", }, -- DevIconSabayon xxx ctermfg=251 guifg=#c6c6c6
      DevIconRedhat                                                  { fg="#ee0000", }, -- DevIconRedhat  xxx ctermfg=196 guifg=#ee0000
      DevIconRockyLinux                                              { fg="#0fb37d", }, -- DevIconRockyLinux xxx ctermfg=36 guifg=#0fb37d
      DevIconPackagesProps                                           { fg="#00a2ff", }, -- DevIconPackagesProps xxx ctermfg=75 guifg=#00a2ff
      DevIconPls                                                     { fg="#ed95ae", }, -- DevIconPls     xxx ctermfg=211 guifg=#ed95ae
      DevIconMojo                                                    { fg="#ff4c1f", }, -- DevIconMojo    xxx ctermfg=196 guifg=#ff4c1f
      DevIconKiCadSymbolTable                                        { fg="#ffffff", }, -- DevIconKiCadSymbolTable xxx ctermfg=231 guifg=#ffffff
      DevIconQubesOS                                                 { fg="#3774d8", }, -- DevIconQubesOS xxx ctermfg=33 guifg=#3774d8
      DevIconpostmarketOS                                            { fg="#009900", }, -- DevIconpostmarketOS xxx ctermfg=28 guifg=#009900
      DevIconPuppyLinux                                              { fg="#a2aeb9", }, -- DevIconPuppyLinux xxx ctermfg=145 guifg=#a2aeb9
      DevIconIcs                                                     { fg="#2b2e83", }, -- DevIconIcs     xxx ctermfg=18 guifg=#2b2e83
      DevIconTSConfig                                                { fg="#519aba", }, -- DevIconTSConfig xxx ctermfg=74 guifg=#519aba
      DevIconQtile                                                   { fg="#ffffff", }, -- DevIconQtile   xxx ctermfg=231 guifg=#ffffff
      DevIconPop_OS                                                  { fg="#48b9c7", }, -- DevIconPop_OS  xxx ctermfg=73 guifg=#48b9c7
      DevIconCowsayFile                                              { fg="#965824", }, -- DevIconCowsayFile xxx ctermfg=130 guifg=#965824
      DevIconParabolaGNULinuxLibre                                   { fg="#797dac", }, -- DevIconParabolaGNULinuxLibre xxx ctermfg=103 guifg=#797dac
      DevIconXeroLinux                                               { fg="#888fe2", }, -- DevIconXeroLinux xxx ctermfg=104 guifg=#888fe2
      DevIconLabView                                                 { fg="#fec60a", }, -- DevIconLabView xxx ctermfg=220 guifg=#fec60a
      DevIconReadme                                                  { fg="#ededed", }, -- DevIconReadme  xxx ctermfg=255 guifg=#ededed
      DevIconopenSUSE                                                { fg="#6fb424", }, -- DevIconopenSUSE xxx ctermfg=70 guifg=#6fb424
      DevIconEbook                                                   { fg="#eab16d", }, -- DevIconEbook   xxx ctermfg=215 guifg=#eab16d
      DevIconFreeBSD                                                 { fg="#c90f02", }, -- DevIconFreeBSD xxx ctermfg=160 guifg=#c90f02
      sym"DevIconPy.typed"                                           { fg="#ffbc03", }, -- DevIconPy.typed xxx ctermfg=214 guifg=#ffbc03
      DevIconPub                                                     { fg="#e3c58e", }, -- DevIconPub     xxx ctermfg=222 guifg=#e3c58e
      DevIconTgz                                                     { fg="#eca517", }, -- DevIconTgz     xxx ctermfg=214 guifg=#eca517
      DevIconNobaraLinux                                             { fg="#ffffff", }, -- DevIconNobaraLinux xxx ctermfg=231 guifg=#ffffff
      DevIconVoid                                                    { fg="#295340", }, -- DevIconVoid    xxx ctermfg=23 guifg=#295340
      DevIconGoWork                                                  { fg="#00add8", }, -- DevIconGoWork  xxx ctermfg=38 guifg=#00add8
      DevIconNixOS                                                   { fg="#7ab1db", }, -- DevIconNixOS   xxx ctermfg=110 guifg=#7ab1db
      DevIconGz                                                      { fg="#eca517", }, -- DevIconGz      xxx ctermfg=214 guifg=#eca517
      DevIconMXLinux                                                 { fg="#ffffff", }, -- DevIconMXLinux xxx ctermfg=231 guifg=#ffffff
      DevIconBz3                                                     { fg="#eca517", }, -- DevIconBz3     xxx ctermfg=214 guifg=#eca517
      DevIconStorybookVue                                            { fg="#ff4785", }, -- DevIconStorybookVue xxx ctermfg=204 guifg=#ff4785
      DevIconOggMultiplex                                            { fg="#fd971f", }, -- DevIconOggMultiplex xxx ctermfg=208 guifg=#fd971f
      DevIconMageia                                                  { fg="#2397d4", }, -- DevIconMageia  xxx ctermfg=67 guifg=#2397d4
      DevIconPlatformio                                              { fg="#f6822b", }, -- DevIconPlatformio xxx ctermfg=208 guifg=#f6822b
      DevIconArtix                                                   { fg="#41b4d7", }, -- DevIconArtix   xxx ctermfg=38 guifg=#41b4d7
      DevIconLXLE                                                    { fg="#474747", }, -- DevIconLXLE    xxx ctermfg=238 guifg=#474747
      DevIconManjaro                                                 { fg="#33b959", }, -- DevIconManjaro xxx ctermfg=35 guifg=#33b959
      DevIconLocOS                                                   { fg="#fab402", }, -- DevIconLocOS   xxx ctermfg=214 guifg=#fab402
      DevIconFedora                                                  { fg="#072a5e", }, -- DevIconFedora  xxx ctermfg=17 guifg=#072a5e
      DevIconHyprlock                                                { fg="#00aaae", }, -- DevIconHyprlock xxx ctermfg=37 guifg=#00aaae
      DevIconLeap                                                    { fg="#fbc75d", }, -- DevIconLeap    xxx ctermfg=221 guifg=#fbc75d
      DevIconHypridle                                                { fg="#00aaae", }, -- DevIconHypridle xxx ctermfg=37 guifg=#00aaae
      DevIconKubuntu                                                 { fg="#007ac2", }, -- DevIconKubuntu xxx ctermfg=32 guifg=#007ac2
      DevIconKDEneon                                                 { fg="#20a6a4", }, -- DevIconKDEneon xxx ctermfg=37 guifg=#20a6a4
      DevIconZigObjectNotation                                       { fg="#f69a1b", }, -- DevIconZigObjectNotation xxx ctermfg=172 guifg=#f69a1b
      DevIconKali                                                    { fg="#2777ff", }, -- DevIconKali    xxx ctermfg=69 guifg=#2777ff
      DevIconLXQtConfigFile                                          { fg="#0192d3", }, -- DevIconLXQtConfigFile xxx ctermfg=32 guifg=#0192d3
      DevIconapk                                                     { fg="#34a853", }, -- DevIconapk     xxx ctermfg=35 guifg=#34a853
      DevIconWavPackCorrection                                       { fg="#00afff", }, -- DevIconWavPackCorrection xxx ctermfg=39 guifg=#00afff
      DevIconIllumos                                                 { fg="#ff430f", }, -- DevIconIllumos xxx ctermfg=196 guifg=#ff430f
      DevIconLXDEConfigFile                                          { fg="#909090", }, -- DevIconLXDEConfigFile xxx ctermfg=246 guifg=#909090
      DevIconHyperbolaGNULinuxLibre                                  { fg="#c0c0c0", }, -- DevIconHyperbolaGNULinuxLibre xxx ctermfg=250 guifg=#c0c0c0
      DevIconKritarc                                                 { fg="#f245fb", }, -- DevIconKritarc xxx ctermfg=201 guifg=#f245fb
      DevIconGuix                                                    { fg="#ffcc00", }, -- DevIconGuix    xxx ctermfg=220 guifg=#ffcc00
      DevIconKritadisplayrc                                          { fg="#f245fb", }, -- DevIconKritadisplayrc xxx ctermfg=201 guifg=#f245fb
      DevIconMPEG4                                                   { fg="#00afff", }, -- DevIconMPEG4   xxx ctermfg=39 guifg=#00afff
      DevIconKdenliverc                                              { fg="#83b8f2", }, -- DevIconKdenliverc xxx ctermfg=110 guifg=#83b8f2
      DevIconArchlabs                                                { fg="#503f42", }, -- DevIconArchlabs xxx ctermfg=238 guifg=#503f42
      DevIconGentooBuild                                             { fg="#4c416e", }, -- DevIconGentooBuild xxx ctermfg=60 guifg=#4c416e
      DevIconGarudaLinux                                             { fg="#2974e1", }, -- DevIconGarudaLinux xxx ctermfg=33 guifg=#2974e1
      DevIconRobotsTxt                                               { fg="#5d7096", }, -- DevIconRobotsTxt xxx ctermfg=60 guifg=#5d7096
      DevIconKdenliveLayoutsrc                                       { fg="#83b8f2", }, -- DevIconKdenliveLayoutsrc xxx ctermfg=110 guifg=#83b8f2
      DevIconKDEglobals                                              { fg="#1c99f3", }, -- DevIconKDEglobals xxx ctermfg=32 guifg=#1c99f3
      DevIconGradleWrapperProperties                                 { fg="#005f87", }, -- DevIconGradleWrapperProperties xxx ctermfg=24 guifg=#005f87
      DevIconOdin                                                    { fg="#3882d2", }, -- DevIconOdin    xxx ctermfg=32 guifg=#3882d2
      DevIconKalgebrarc                                              { fg="#1c99f3", }, -- DevIconKalgebrarc xxx ctermfg=32 guifg=#1c99f3
      DevIconKiCadCache                                              { fg="#ffffff", }, -- DevIconKiCadCache xxx ctermfg=231 guifg=#ffffff
      DevIconIonic                                                   { fg="#4f8ff7", }, -- DevIconIonic   xxx ctermfg=33 guifg=#4f8ff7
      DevIconBicepParameters                                         { fg="#9f74b3", }, -- DevIconBicepParameters xxx ctermfg=133 guifg=#9f74b3
      DevIconEndeavour                                               { fg="#7b3db9", }, -- DevIconEndeavour xxx ctermfg=91 guifg=#7b3db9
      DevIconIndexTheme                                              { fg="#2db96f", }, -- DevIconIndexTheme xxx ctermfg=35 guifg=#2db96f
      DevIconElementary                                              { fg="#5890c2", }, -- DevIconElementary xxx ctermfg=67 guifg=#5890c2
      DevIconAlmalinux                                               { fg="#ff4649", }, -- DevIconAlmalinux xxx ctermfg=203 guifg=#ff4649
      DevIconCantorrc                                                { fg="#1c99f3", }, -- DevIconCantorrc xxx ctermfg=32 guifg=#1c99f3
      DevIconI18nConfig                                              { fg="#7986cb", }, -- DevIconI18nConfig xxx ctermfg=104 guifg=#7986cb
      DevIconGPRBuildProject                                         { fg="#6d8086", }, -- DevIconGPRBuildProject xxx ctermfg=66 guifg=#6d8086
      DevIconKdb                                                     { fg="#529b34", }, -- DevIconKdb     xxx ctermfg=71 guifg=#529b34
      DevIconDebian                                                  { fg="#a80030", }, -- DevIconDebian  xxx ctermfg=88 guifg=#a80030
      DevIconStorybookTypeScript                                     { fg="#ff4785", }, -- DevIconStorybookTypeScript xxx ctermfg=204 guifg=#ff4785
      DevIconWindows                                                 { fg="#00a4ef", }, -- DevIconWindows xxx ctermfg=39 guifg=#00a4ef
      DevIconCrystalLinux                                            { fg="#a900ff", }, -- DevIconCrystalLinux xxx ctermfg=129 guifg=#a900ff
      DevIconHyprlandd                                               { fg="#00aaae", }, -- DevIconHyprlandd xxx ctermfg=37 guifg=#00aaae
      DevIconKiCad                                                   { fg="#ffffff", }, -- DevIconKiCad   xxx ctermfg=231 guifg=#ffffff
      DevIconBigLinux                                                { fg="#189fc8", }, -- DevIconBigLinux xxx ctermfg=38 guifg=#189fc8
      DevIconInfo                                                    { fg="#ffffcd", }, -- DevIconInfo    xxx ctermfg=230 guifg=#ffffcd
      DevIconArchcraft                                               { fg="#86bba3", }, -- DevIconArchcraft xxx ctermfg=108 guifg=#86bba3
      DevIconGradleWrapperScript                                     { fg="#005f87", }, -- DevIconGradleWrapperScript xxx ctermfg=24 guifg=#005f87
      DevIconKDEPlasma                                               { fg="#1b89f4", }, -- DevIconKDEPlasma xxx ctermfg=33 guifg=#1b89f4
      DevIconGradleProperties                                        { fg="#005f87", }, -- DevIconGradleProperties xxx ctermfg=24 guifg=#005f87
      DevIconSha384                                                  { fg="#8c86af", }, -- DevIconSha384  xxx ctermfg=103 guifg=#8c86af
      DevIconApple                                                   { fg="#a2aaad", }, -- DevIconApple   xxx ctermfg=248 guifg=#a2aaad
      DevIconAdaSpecification                                        { fg="#a074c4", }, -- DevIconAdaSpecification xxx ctermfg=140 guifg=#a074c4
      DevIconAstro                                                   { fg="#e23f67", }, -- DevIconAstro   xxx ctermfg=197 guifg=#e23f67
      DevIconAOSC                                                    { fg="#c00000", }, -- DevIconAOSC    xxx ctermfg=124 guifg=#c00000
      DevIconCommitlintConfig                                        { fg="#2b9689", }, -- DevIconCommitlintConfig xxx ctermfg=30 guifg=#2b9689
      DevIconSha512                                                  { fg="#8c86af", }, -- DevIconSha512  xxx ctermfg=103 guifg=#8c86af
      DevIconKiCadFootprintTable                                     { fg="#ffffff", }, -- DevIconKiCadFootprintTable xxx ctermfg=231 guifg=#ffffff
      DevIconPatch                                                   { fg="#41535b", }, -- DevIconPatch   xxx ctermfg=239 guifg=#41535b
      DevIconMd5                                                     { fg="#8c86af", }, -- DevIconMd5     xxx ctermfg=103 guifg=#8c86af
      DevIconOpusAudioFile                                           { fg="#0075aa", }, -- DevIconOpusAudioFile xxx ctermfg=24 guifg=#0075aa
      DevIconSketchUp                                                { fg="#839463", }, -- DevIconSketchUp xxx ctermfg=101 guifg=#839463
      DevIconTypoScriptSetup                                         { fg="#ff8700", }, -- DevIconTypoScriptSetup xxx ctermfg=208 guifg=#ff8700
      DevIconSolidWorksAsm                                           { fg="#839463", }, -- DevIconSolidWorksAsm xxx ctermfg=101 guifg=#839463
      DevIconLibrecadFontFile                                        { fg="#ececec", }, -- DevIconLibrecadFontFile xxx ctermfg=255 guifg=#ececec
      DevIconMagnet                                                  { fg="#a51b16", }, -- DevIconMagnet  xxx ctermfg=124 guifg=#a51b16
      DevIconSolidWorksPrt                                           { fg="#839463", }, -- DevIconSolidWorksPrt xxx ctermfg=101 guifg=#839463
      DevIconM4V                                                     { fg="#fd971f", }, -- DevIconM4V     xxx ctermfg=208 guifg=#fd971f
      DevIconAPL                                                     { fg="#24a148", }, -- DevIconAPL     xxx ctermfg=35 guifg=#24a148
      DevIconAvif                                                    { fg="#a074c4", }, -- DevIconAvif    xxx ctermfg=140 guifg=#a074c4
      DevIconAdaFile                                                 { fg="#599eff", }, -- DevIconAdaFile xxx ctermfg=111 guifg=#599eff
      DevIconScalaScript                                             { fg="#cc3e44", }, -- DevIconScalaScript xxx ctermfg=167 guifg=#cc3e44
      DevIconAdaBody                                                 { fg="#599eff", }, -- DevIconAdaBody xxx ctermfg=111 guifg=#599eff
      DevIconCodeOfConduct                                           { fg="#e41662", }, -- DevIconCodeOfConduct xxx ctermfg=161 guifg=#e41662
      DevIconSublime                                                 { fg="#e37933", }, -- DevIconSublime xxx ctermfg=166 guifg=#e37933
      DevIconAppleScript                                             { fg="#6d8085", }, -- DevIconAppleScript xxx ctermfg=66 guifg=#6d8085
      DevIconNushell                                                 { fg="#3aa675", }, -- DevIconNushell xxx ctermfg=36 guifg=#3aa675
      DevIconSignature                                               { fg="#e37933", }, -- DevIconSignature xxx ctermfg=166 guifg=#e37933
      DevIconKrita                                                   { fg="#f245fb", }, -- DevIconKrita   xxx ctermfg=201 guifg=#f245fb
      DevIconLinuxKernelObject                                       { fg="#dcddd6", }, -- DevIconLinuxKernelObject xxx ctermfg=253 guifg=#dcddd6
      DevIconStep                                                    { fg="#839463", }, -- DevIconStep    xxx ctermfg=101 guifg=#839463
      DevIconSha224                                                  { fg="#8c86af", }, -- DevIconSha224  xxx ctermfg=103 guifg=#8c86af
      DevIconSha1                                                    { fg="#8c86af", }, -- DevIconSha1    xxx ctermfg=103 guifg=#8c86af
      DevIconOpenSCAD                                                { fg="#f9d72c", }, -- DevIconOpenSCAD xxx ctermfg=220 guifg=#f9d72c
      DevIconKdenlive                                                { fg="#83b8f2", }, -- DevIconKdenlive xxx ctermfg=110 guifg=#83b8f2
      DevIconKdbx                                                    { fg="#529b34", }, -- DevIconKdbx    xxx ctermfg=71 guifg=#529b34
      DevIconKbx                                                     { fg="#737672", }, -- DevIconKbx     xxx ctermfg=243 guifg=#737672
      DevIconBibTeX                                                  { fg="#cbcb41", }, -- DevIconBibTeX  xxx ctermfg=185 guifg=#cbcb41
      DevIconObjectFile                                              { fg="#9f0500", }, -- DevIconObjectFile xxx ctermfg=124 guifg=#9f0500
      DevIconJpegXl                                                  { fg="#a074c4", }, -- DevIconJpegXl  xxx ctermfg=140 guifg=#a074c4
      DevIconBicep                                                   { fg="#519aba", }, -- DevIconBicep   xxx ctermfg=74 guifg=#519aba
      DevIconAlpine                                                  { fg="#0d597f", }, -- DevIconAlpine  xxx ctermfg=24 guifg=#0d597f
      DevIconNorg                                                    { fg="#4878be", }, -- DevIconNorg    xxx ctermfg=32 guifg=#4878be
      DevIconBackup                                                  { fg="#6d8086", }, -- DevIconBackup  xxx ctermfg=66 guifg=#6d8086
      DevIconBlueprint                                               { fg="#5796e2", }, -- DevIconBlueprint xxx ctermfg=68 guifg=#5796e2
      DevIconRar                                                     { fg="#eca517", }, -- DevIconRar     xxx ctermfg=214 guifg=#eca517
      DevIconCinnamon                                                { fg="#dc682e", }, -- DevIconCinnamon xxx ctermfg=166 guifg=#dc682e
      DevIconTypeScript                                              { fg="#519aba", }, -- DevIconTypeScript xxx ctermfg=74 guifg=#519aba
      DevIconIso                                                     { fg="#d0bec8", }, -- DevIconIso     xxx ctermfg=181 guifg=#d0bec8
      DevIconMts                                                     { fg="#519aba", }, -- DevIconMts     xxx ctermfg=74 guifg=#519aba
      DevIconCts                                                     { fg="#519aba", }, -- DevIconCts     xxx ctermfg=74 guifg=#519aba
      DevIconPrettierIgnore                                          { fg="#4285f4", }, -- DevIconPrettierIgnore xxx ctermfg=33 guifg=#4285f4
      DevIconXfce                                                    { fg="#00aadf", }, -- DevIconXfce    xxx ctermfg=74 guifg=#00aadf
      DevIconImg                                                     { fg="#d0bec8", }, -- DevIconImg     xxx ctermfg=181 guifg=#d0bec8
      DevIconImage                                                   { fg="#d0bec8", }, -- DevIconImage   xxx ctermfg=181 guifg=#d0bec8
      DevIconGoSum                                                   { fg="#00add8", }, -- DevIconGoSum   xxx ctermfg=38 guifg=#00add8
      DevIconIgs                                                     { fg="#839463", }, -- DevIconIgs     xxx ctermfg=101 guifg=#839463
      DevIconIges                                                    { fg="#839463", }, -- DevIconIges    xxx ctermfg=101 guifg=#839463
      DevIconIge                                                     { fg="#839463", }, -- DevIconIge     xxx ctermfg=101 guifg=#839463
      DevIconGCode                                                   { fg="#1471ad", }, -- DevIconGCode   xxx ctermfg=32 guifg=#1471ad
      DevIconIfc                                                     { fg="#839463", }, -- DevIconIfc     xxx ctermfg=101 guifg=#839463
      DevIcon7z                                                      { fg="#eca517", }, -- DevIcon7z      xxx ctermfg=214 guifg=#eca517
      DevIconIfb                                                     { fg="#2b2e83", }, -- DevIconIfb     xxx ctermfg=18 guifg=#2b2e83
      DevIconFreeLosslessAudioCodec                                  { fg="#0075aa", }, -- DevIconFreeLosslessAudioCodec xxx ctermfg=24 guifg=#0075aa
      DevIconSRCINFO                                                 { fg="#0f94d2", }, -- DevIconSRCINFO xxx ctermfg=67 guifg=#0f94d2
      DevIconIcalendar                                               { fg="#2b2e83", }, -- DevIconIcalendar xxx ctermfg=18 guifg=#2b2e83
      DevIconIcal                                                    { fg="#2b2e83", }, -- DevIconIcal    xxx ctermfg=18 guifg=#2b2e83
      DevIconPptx                                                    { fg="#cb4a32", }, -- DevIconPptx    xxx ctermfg=160 guifg=#cb4a32
      DevIconArduino                                                 { fg="#56b6c2", }, -- DevIconArduino xxx ctermfg=73 guifg=#56b6c2
      DevIconHuff                                                    { fg="#4242c7", }, -- DevIconHuff    xxx ctermfg=56 guifg=#4242c7
      DevIconPulseCodeModulation                                     { fg="#0075aa", }, -- DevIconPulseCodeModulation xxx ctermfg=24 guifg=#0075aa
      DevIconLibreOfficeCalc                                         { fg="#78fc4e", }, -- DevIconLibreOfficeCalc xxx ctermfg=119 guifg=#78fc4e
      DevIconCPlusPlusModule                                         { fg="#f34b7d", }, -- DevIconCPlusPlusModule xxx ctermfg=204 guifg=#f34b7d
      DevIconStorybookJavaScript                                     { fg="#ff4785", }, -- DevIconStorybookJavaScript xxx ctermfg=204 guifg=#ff4785
      DevIconPxd                                                     { fg="#5aa7e4", }, -- DevIconPxd     xxx ctermfg=39 guifg=#5aa7e4
      DevIconHaxe                                                    { fg="#ea8220", }, -- DevIconHaxe    xxx ctermfg=208 guifg=#ea8220
      DevIconWaveformAudioFile                                       { fg="#00afff", }, -- DevIconWaveformAudioFile xxx ctermfg=39 guifg=#00afff
      DevIconCSharpProject                                           { fg="#512bd4", }, -- DevIconCSharpProject xxx ctermfg=56 guifg=#512bd4
      DevIconThunderbird                                             { fg="#137be1", }, -- DevIconThunderbird xxx ctermfg=33 guifg=#137be1
      DevIconMPEGAudioLayerIII                                       { fg="#00afff", }, -- DevIconMPEGAudioLayerIII xxx ctermfg=39 guifg=#00afff
      lualine_transitional_lualine_a_command_to_StatusLine           { bg=colors.bg, gui="nocombine", fg="#beadfa", }, -- lualine_transitional_lualine_a_command_to_StatusLine xxx gui=nocombine guifg=#beadfa
      lualine_transitional_lualine_a_command_to_lualine_c_normal     { bg="#272b34", gui="nocombine", fg="#beadfa", }, -- lualine_transitional_lualine_a_command_to_lualine_c_normal xxx gui=nocombine guifg=#beadfa guibg=#272b34
      lualine_transitional_lualine_a_insert_to_StatusLine            { bg=colors.bg, gui="nocombine", fg="#feffad", }, -- lualine_transitional_lualine_a_insert_to_StatusLine xxx gui=nocombine guifg=#feffad
      lualine_transitional_lualine_a_insert_to_lualine_c_normal      { bg="#272b34", gui="nocombine", fg="#feffad", }, -- lualine_transitional_lualine_a_insert_to_lualine_c_normal xxx gui=nocombine guifg=#feffad guibg=#272b34
      lualine_transitional_lualine_a_visual_to_StatusLine            { bg=colors.bg, gui="nocombine", fg="#beadfa", }, -- lualine_transitional_lualine_a_visual_to_StatusLine xxx gui=nocombine guifg=#beadfa
      lualine_transitional_lualine_a_visual_to_lualine_c_normal      { bg="#272b34", gui="nocombine", fg="#beadfa", }, -- lualine_transitional_lualine_a_visual_to_lualine_c_normal xxx gui=nocombine guifg=#beadfa guibg=#272b34
      lushify_272B34                                                 { bg="#272b34", fg="#ffffff", }, -- lushify_272B34 xxx guifg=#ffffff guibg=#272b34
      lushify_DEDEDE                                                 { bg="#dedede", fg="#000000", }, -- lushify_DEDEDE xxx guifg=#000000 guibg=#dedede
      lushify_FF66B0                                                 { bg="#ff66b0", fg="#000000", }, -- lushify_FF66B0 xxx guifg=#000000 guibg=#ff66b0
      lushify_FEFFAD                                                 { bg="#feffad", fg="#000000", }, -- lushify_FEFFAD xxx guifg=#000000 guibg=#feffad
      lushify_BEADFA                                                 { bg="#beadfa", fg="#000000", }, -- lushify_BEADFA xxx guifg=#000000 guibg=#beadfa
      lushify_ADADAD                                                 { bg="#adadad", fg="#000000", }, -- lushify_ADADAD xxx guifg=#000000 guibg=#adadad 
   }
end)

return theme

