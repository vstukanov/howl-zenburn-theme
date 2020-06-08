{:delegate_to} = howl.util.table

-- Foreground --
zenburn_fg_m1     = '#656555'
zenburn_fg_m05    = '#989890'
zenburn_fg        = '#DCDCCC'
zenburn_fg_p1     = '#FFFFEF'
zenburn_fg_p2     = '#FFFFFD'

-- Background --
zenburn_bg_m2     = '#000000'
zenburn_bg_m1     = '#2B2B2B'
zenburn_bg_m08    = '#303030'
zenburn_bg_m05    = '#383838'
zenburn_bg        = '#3F3F3F'
zenburn_bg_p05    = '#494949'
zenburn_bg_p1     = '#4F4F4F'
zenburn_bg_p2     = '#5F5F5F'
zenburn_bg_p3     = '#6F6F6F'

-- Red --
zenburn_red_m6    = '#6C3333'
zenburn_red_m5    = '#7C4343'
zenburn_red_m4    = '#8C5353'
zenburn_red_m3    = '#9C6363'
zenburn_red_m2    = '#AC7373'
zenburn_red_m1    = '#BC8383'
zenburn_red       = '#CC9393'
zenburn_red_p1    = '#DCA3A3'
zenburn_red_p2    = '#ECB3B3'

-- Orange --
zenburn_orange    = '#DFAF8F'

-- Yellow --
zenburn_yellow_m2 = '#D0BF8F'
zenburn_yellow_m1 = '#E0CF9F'
zenburn_yellow    = '#F0DFAF'

-- Green --
zenburn_green_m5  = '#2F4F2F'
zenburn_green_m4  = '#3F5F3F'
zenburn_green_m3  = '#4F6F4F'
zenburn_green_m2  = '#5F7F5F'
zenburn_green_m1  = '#6F8F6F'
zenburn_green     = '#7F9F7F'
zenburn_green_p1  = '#8FB28F'
zenburn_green_p2  = '#9FC59F'
zenburn_green_p3  = '#AFD8AF'
zenburn_green_p4  = '#BFEBBF'

-- Cyan --
zenburn_cyan      = '#93E0E3'

-- Blue --
zenburn_blue_p3   = '#BDE0F3'
zenburn_blue_p2   = '#ACE0E3'
zenburn_blue_p1   = '#94BFF3'
zenburn_blue      = '#8CD0D3'
zenburn_blue_m1   = '#7CB8BB'
zenburn_blue_m2   = '#6CA0A3'
zenburn_blue_m3   = '#5C888B'
zenburn_blue_m4   = '#4C7073'
zenburn_blue_m5   = '#366060'

-- Magenta --
zenburn_magenta   = '#DC8CC3'

-- Base Palette (Monokai) --
background   = zenburn_bg
current      = zenburn_bg_m08
selection    = zenburn_bg_m2
foreground   = zenburn_fg
comment      = zenburn_green

red          = zenburn_red
orange       = zenburn_orange
yellow       = zenburn_yellow
green        = zenburn_green
aqua         = zenburn_cyan
blue         = zenburn_blue
purple       = '#AE81FF'
magenta      = zenburn_magenta
grey         = zenburn_bg_p2

grey_darker  = '#1c1d23'
grey_darkest = zenburn_bg_m1
grey_light   = '#a6a6a6'
embedded_bg  = '#484848'
border_color = zenburn_bg_m1

-- General styling for context boxes (editor, command_line)
content_box = {
  background:
    color: background

  border:
    width: 1
    color: border_color

  border_right:
    width: 3
    color: border_color

  border_bottom:
    width: 3
    color: border_color

  header:
    background:
      color: grey_darkest

    border_bottom:
      color: grey_darker

    color: white
    font: bold: true
    padding: 1

  footer:
    background:
      color: grey_darkest

    border_top:
      color: grey_darker

    color: grey
    font: bold: false
    padding: 1
}

return {
  window:
    background:
      color: background

    status:
      font: bold: false, italic: true
      color: grey

      info: color: grey_light
      warning: color: orange
      'error': color: red

  :content_box

  popup:
    background:
      color: grey_darkest
    border:
      color: grey

  editor: delegate_to content_box, {
    scrollbars:
      slider:
        color: '#7A7A7A'

    indicators:
      default:
        color: grey_light

      title:
        font: bold: false

      vi:
        font: bold: true

    caret:
      color: grey_light
      width: 2

    current_line:
      background: current

    gutter:
      color: zenburn_fg_m05
      background:
        color: zenburn_bg_m05
        alpha: 1
  }

  flairs:
    indentation_guide:
      type: flair.PIPE,
      foreground: comment,
      :background,
      line_width: 1

    indentation_guide_1:
      type: flair.PIPE,
      foreground: zenburn_bg_p1,
      line_width: 1

    indentation_guide_2:
      type: flair.PIPE,
      foreground: zenburn_bg_p1,
      line_width: 1

    indentation_guide_3:
      type: flair.PIPE,
      foreground: zenburn_bg_p1,
      line_width: 1

    edge_line:
      type: flair.PIPE,
      foreground: blue,
      foreground_alpha: 0.3,
      line_width: 0.5

    search:
      type: highlight.UNDERLINE
      foreground: zenburn_yellow_m1
      background: zenburn_bg_p3
      text_color: zenburn_yellow_m1
      line_width: 2

    search_secondary:
      type: flair.RECTANGLE
      background: zenburn_bg_p3
      text_color: zenburn_yellow_m1
      height: 'text'

    replace_strikeout:
      type: flair.ROUNDED_RECTANGLE
      foreground: black
      background: red
      text_color: black
      height: 'text'

    brace_highlight:
      type: flair.RECTANGLE
      text_color: foreground
      background: zenburn_green_p1
      height: 'text'

    brace_highlight_secondary:
      type: flair.RECTANGLE
      foreground: zenburn_green_p1
      text_color: foreground
      line_width: 1
      height: 'text'

    list_selection:
      type: flair.UNDERLINE
      foreground: zenburn_yellow
      text_color: zenburn_yellow
      line_width: 1

    list_highlight:
      type: highlight.UNDERLINE
      foreground: zenburn_yellow
      text_color: zenburn_yellow
      background: zenburn_green_m2
      line_width: 1

    cursor:
      type: flair.RECTANGLE
      background: foreground
      width: 2
      height: 'text'

    block_cursor:
      type: flair.ROUNDED_RECTANGLE,
      background: foreground
      text_color: background
      height: 'text',
      min_width: 'letter'

    selection:
      type: highlight.ROUNDED_RECTANGLE
      background: selection
      background_alpha: 0.4
      min_width: 'letter'

  styles:
    default:
      color: foreground

    red: color: red
    green: color: green
    yellow: color: yellow
    blue: color: blue
    magenta: color: purple
    cyan: color: aqua

    popup:
      background: grey_darkest
      color: foreground

    comment:
      font: italic: true
      color: comment

    variable:
      color: zenburn_orange

    label:
      color: orange
      font: italic: true

    key:
      color: '#DAA686'
      font: bold: false

    fdecl:
      color: zenburn_orange
      font: bold: true

    keyword:
      color: zenburn_yellow
      font: bold: true

    class:
      color: zenburn_fg
      font: bold: true

    type_def:
      color: zenburn_fg
      font:
        bold: true

    definition:
      color: yellow

    function:
      color: blue
      font: bold: true

    type:
      color: blue
      font: italic: true

    char: color: green
    number: color: zenburn_green_p4
    operator: color: zenburn_fg
    preproc: color: aqua
    special: color: zenburn_green_p4
    tag: color: green
    member:
      color: zenburn_yellow
      font: bold: true
    info: color: blue

    constant:
      color: yellow

    string:
      color: zenburn_red

    regex:
      color: green
      background: embedded_bg

    embedded:
      color: blue
      background: embedded_bg

    -- Markup and visual styles

    error:
      font: italic: true
      color: white
      background: red

    warning:
      font: italic: true
      color: orange

    h1:
      font: bold: true
      color: magenta

    h2:
      font: bold: true
      color: aqua

    h3:
      font: italic: true
      color: purple

    emphasis:
      font:
        bold: true
        italic: true

    strong: font: italic: true
    link_label: color: aqua
    link_url: color: comment

    table:
      color: blue
      background: embedded_bg
      underline: true

    addition: color: green
    deletion: color: red
    change: color: yellow
  }
