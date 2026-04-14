{vars, ...}: {
  home.file."/home/${vars.user}/.config/zed/themes/Zenburn.json" = {
    text = ''
      {
        "name": "Zenburn",
        "author": "Dmitry Geurkov",
        "themes": [
          {
            "name": "Zenburn",
            "appearance": "dark",
            "style": {
              "background": "#3a3a3a",
              "syntax": {
                "string": {
                  "color": "#ea9a9a",
                  "font_style": null,
                  "font_weight": null
                },
                "tag": {
                  "color": "#e2bcbd",
                  "font_style": null,
                  "font_weight": null
                },
                "type": {
                  "color": "#dddeb7",
                  "font_style": null,
                  "font_weight": null
                },
                "number": {
                  "color": "#7fc5c5",
                  "font_style": null,
                  "font_weight": null
                },
                "operator": {
                  "color": "#f4fad7",
                  "font_style": null,
                  "font_weight": null
                },
                "preproc": {
                  "color": "#f9ddb5",
                  "font_style": null,
                  "font_weight": null
                },
                "keyword": {
                  "color": "#f9ddb5",
                  "font_style": null,
                  "font_weight": null
                },
                "comment": {
                  "color": "#95bf98",
                  "font_style": null,
                  "font_weight": null
                },
                "boolean": {
                  "color": "#e1bbbc",
                  "font_style": null,
                  "font_weight": null
                },
                "constant": {
                  "color": "#e2bcbd",
                  "font_style": null,
                  "font_weight": null
                },
                "function": {
                  "color": "#ebee83",
                  "font_style": null,
                  "font_weight": null
                },
                "label": {
                  "color": "#dbdcb6",
                  "font_style": null,
                  "font_weight": null
                },
                "variable": {
                  "color": "#fadeb6",
                  "font_style": null,
                  "font_weight": null
                },
                "string.special.symbol": {
                  "color": "#e2bcbd",
                  "font_style": null,
                  "font_weight": null
                },
                "editor.foreground": {
                  "color": "",
                  "font_style": null,
                  "font_weight": null
                },
                "attribute": {
                  "color": "#dbdcb6",
                  "font_style": null,
                  "font_weight": null
                }
              },
              "players": [],
              "text": "#d0d1d2",
              "editor.line_number": "#b7b8b9",
              "editor.active_line_number": "#f9ddb5",
              "editor.active_line.background": "",
              "editor.gutter.background": null,
              "status_bar.background": "#2a2a2a",
              "tab.active_background": "#2a2a2a",
              "title_bar.background": "#2a2a2a",
              "panel.background": "#2a2a2a",
              "border": "#3f3f3f",
              "error": "#ea9a9a",
              "error.background": "#2f2f2f",
              "hint": "#7fc5c5",
              "info": "#7fc5c5",
              "warning": "#ebee83",
              "warning.background": "#2f2f2f",
              "error.border": "#3f3f3f",
              "warning.border": "#3f3f3f",
              "editor.background": "#3a3a3a",
              "editor.foreground": "#d0d1d2",
              "hint.background": "#2f2f2f",
              "hint.border": "#3f3f3f",
              "info.background": "#2f2f2f",
              "info.border": "#3f3f3f",
              "predictive.background": "#2f2f2f",
              "predictive.border": "#3f3f3f",
              "renamed.background": "#2f2f2f",
              "renamed.border": "#3f3f3f",
              "success.background": "#2f2f2f",
              "unreachable.background": "#2f2f2f",
              "success.border": "#3f3f3f",
              "unreachable.border": "#3f3f3f",
              "predictive": "#7fc5c5"
            }
          }
        ],
        "id": "1RwhRKupgeNflVrmoIYfJ"
      }
    '';
  };

  home.file."/home/${vars.user}/.config/zed/themes/Barbie.json" = {
    text = ''
      {
        "name": "Barbie",
        "author": "masweb",
        "themes": [
          {
            "name": "Barbie",
            "appearance": "dark",
            "style": {
              "background": "#47363e",
              "syntax": {
                "attribute": {
                  "color": "#e7c7ca",
                  "font_style": null,
                  "font_weight": null
                },
                "editor.foreground": {
                  "color": "#debcbc",
                  "font_style": null,
                  "font_weight": null
                },
                "boolean": {
                  "color": "#dcb5b5",
                  "font_style": null,
                  "font_weight": null
                },
                "comment": {
                  "color": "#9e7c8b",
                  "font_style": "italic",
                  "font_weight": null
                },
                "comment.doc": {
                  "color": "#9e7c8b",
                  "font_style": "italic",
                  "font_weight": null
                },
                "constant": {
                  "color": "#db5656",
                  "font_style": null,
                  "font_weight": null
                },
                "constructor": {
                  "color": "#e275a1",
                  "font_style": null,
                  "font_weight": null
                },
                "embedded": {
                  "color": "#fa6f6f",
                  "font_style": null,
                  "font_weight": null
                },
                "emphasis": {
                  "color": "#e07070",
                  "font_style": null,
                  "font_weight": null
                },
                "emphasis.strong": {
                  "color": "#d18080",
                  "font_style": null,
                  "font_weight": null
                },
                "enum": {
                  "color": "#d98282",
                  "font_style": null,
                  "font_weight": null
                },
                "function": {
                  "color": "#d75c79",
                  "font_style": null,
                  "font_weight": null
                },
                "function.method": {
                  "color": "#d19ca8",
                  "font_style": null,
                  "font_weight": null
                },
                "function.special.definition": {
                  "color": "#f691a9",
                  "font_style": "italic",
                  "font_weight": 800
                },
                "hint": {
                  "color": "#a07b83",
                  "font_style": null,
                  "font_weight": null
                },
                "keyword": {
                  "color": "#cca469",
                  "font_style": null,
                  "font_weight": null
                },
                "label": {
                  "color": "#b88c5e",
                  "font_style": null,
                  "font_weight": null
                },
                "link_text": {
                  "color": "#c89d6c",
                  "font_style": null,
                  "font_weight": null
                },
                "link_uri": {
                  "color": "#c1996c",
                  "font_style": null,
                  "font_weight": null
                },
                "number": {
                  "color": "#ed5b5b",
                  "font_style": null,
                  "font_weight": null
                },
                "operator": {
                  "color": "#f28e8e",
                  "font_style": null,
                  "font_weight": null
                },
                "predictive": {
                  "color": "#dcb4c5",
                  "font_style": null,
                  "font_weight": null
                },
                "preproc": {
                  "color": "#b8a8ae",
                  "font_style": null,
                  "font_weight": null
                },
                "property": {
                  "color": "#99abc7",
                  "font_style": null,
                  "font_weight": null
                },
                "punctuation": {
                  "color": "#fab4b4",
                  "font_style": null,
                  "font_weight": null
                },
                "punctuation.bracket": {
                  "color": "#b68181",
                  "font_style": null,
                  "font_weight": null
                },
                "punctuation.delimiter": {
                  "color": "#af7d7d",
                  "font_style": null,
                  "font_weight": null
                },
                "punctuation.list_marker": {
                  "color": "#d7a1a1",
                  "font_style": null,
                  "font_weight": null
                },
                "punctuation.special": {
                  "color": "#bc8c8c",
                  "font_style": null,
                  "font_weight": null
                },
                "string": {
                  "color": "#99bd83",
                  "font_style": null,
                  "font_weight": null
                },
                "string.escape": {
                  "color": "#99bd83",
                  "font_style": null,
                  "font_weight": null
                },
                "string.regex": {
                  "color": "#99bd83",
                  "font_style": null,
                  "font_weight": null
                },
                "string.special": {
                  "color": "#99bd83",
                  "font_style": null,
                  "font_weight": null
                },
                "string.special.symbol": {
                  "color": "#3b7#8dc78805a",
                  "font_style": null,
                  "font_weight": null
                },
                "tag": {
                  "color": "#ccaf83",
                  "font_style": null,
                  "font_weight": null
                },
                "text.literal": {
                  "color": "#f0c5c5",
                  "font_style": null,
                  "font_weight": null
                },
                "title": {
                  "color": "#d5afaf",
                  "font_style": null,
                  "font_weight": null
                },
                "type": {
                  "color": "#e6c795",
                  "font_style": null,
                  "font_weight": null
                },
                "type.builtin": {
                  "color": "#dea7a7",
                  "font_style": null,
                  "font_weight": null
                },
                "variable": {
                  "color": "#a9ceeb",
                  "font_style": null,
                  "font_weight": null
                },
                "variable.special": {
                  "color": "#b8cdeb",
                  "font_style": null,
                  "font_weight": null
                },
                "variant": {
                  "color": "#77c7b1",
                  "font_style": null,
                  "font_weight": null
                },
                "primary": {
                  "color": "#c89898",
                  "font_style": null,
                  "font_weight": null
                }
              },
              "players": [
                {
                  "background": "#9473737d",
                  "cursor": "#638cc2",
                  "selection": "#6cbaa2"
                },
                {
                  "background": "#94737385",
                  "cursor": "#947474",
                  "selection": "#6cbaa2"
                }
              ],
              "background.appearance": "transparent",
              "drop_target.background": "#4f3247",
              "editor.active_line.background": "#544150",
              "editor.active_line_number": "#907286",
              "editor.active_wrap_guide": "#6a4f63",
              "editor.background": "#4f3247",
              "editor.document_highlight.read_background": "#4f3247",
              "editor.document_highlight.write_background": "#473542",
              "editor.foreground": "#cebfbf",
              "editor.gutter.background": "#4f3247",
              "editor.highlighted_line.background": "#4f3247",
              "editor.line_number": "#8e7261",
              "editor.subheader.background": "#4f3247",
              "editor.wrap_guide": "#cab2c3",
              "elevated_surface.background": "#4f3247",
              "pane.focused_border": "#5f4b3f",
              "panel.background": "#4f3247",
              "panel.focused_border": "#4f3247",
              "search.match_background": "#5b4455",
              "status_bar.background": "#4f3247",
              "surface.background": "#4f3247",
              "tab.active_background": "#5b4455",
              "tab.inactive_background": "#4f3247",
              "tab_bar.background": "#4f3247",
              "title_bar.background": "#4f3247",
              "toolbar.background": "#4f3247",
              "text": "#cebfbf",
              "text.accent": "#baa3a3",
              "text.disabled": "#956e6e",
              "text.muted": "#c89c9c",
              "border": "#4f3247",
              "border.disabled": "#4f3247",
              "border.focused": "#4f3247",
              "border.selected": "#722d5e",
              "border.transparent": "#4f3247",
              "border.variant": "#cab2c3#473542",
              "editor.invisible": "#7c716a",
              "element.active": "#3b2a35",
              "element.background": "#261f24",
              "element.disabled": "#7c7b7c",
              "element.hover": "#372732",
              "element.selected": "#4a3041",
              "ghost_element.active": "#c09d87",
              "ghost_element.background": "#261f24",
              "ghost_element.disabled": "#231e21",
              "ghost_element.hover": "#2e222a",
              "ghost_element.selected": "#312727",
              "status_bar.foreground": "#42373e",
              "tab.active_foreground": "#e8dfe5",
              "terminal.ansi.amber": "#c7b4c0",
              "conflict": "#e94584",
              "conflict.background": null,
              "conflict.border": null,
              "created": "#bcdcb9",
              "created.background": "",
              "created.border": null,
              "deleted": "#c78d8d",
              "deleted.background": null,
              "deleted.border": null,
              "hidden": "#876e6e",
              "hidden.background": null,
              "hidden.border": null,
              "ignored": "#565555",
              "ignored.background": null,
              "ignored.border": null,
              "modified": "#ffc1c1",
              "modified.background": null,
              "modified.border": null,
              "error": "#e2b8b8",
              "error.background": "#ba4848",
              "error.border": "#ba4848",
              "hint": "#999999",
              "hint.background": "#5b5b5b",
              "hint.border": "#5b5b5b",
              "info": "#c0e1e5",
              "info.background": "#6da8b8",
              "info.border": "#6da8b8",
              "link_text.hover": "#e3b87f",
              "predictive": "#a5a257",
              "predictive.background": "#757232",
              "predictive.border": "#757232",
              "renamed": "#ade5e0",
              "renamed.background": "#7ab6b1",
              "renamed.border": "#7ab6b1",
              "success": "#b6cfa0",
              "success.background": "#8da37a",
              "success.border": "#8da37a",
              "unreachable": "#d897c4",
              "unreachable.background": "#8c557b",
              "unreachable.border": "#8c557b",
              "warning": "#ede09b",
              "warning.background": "#857939",
              "warning.border": "#b9ac6a",
              "scrollbar.thumb.border": "#261f24",
              "scrollbar.track.background": "#261f2424",
              "scrollbar.track.border": "#261f24",
              "scrollbar_thumb.background": "#261f24",
              "scrollbar.thumb.hover_background": "#281e2554",
              "terminal.ansi.black": "#000000",
              "terminal.ansi.blue": "#6097c3",
              "terminal.ansi.bright_black": "#4b4b4b",
              "terminal.ansi.bright_blue": "#add3ff",
              "terminal.ansi.bright_cyan": "#befff7",
              "terminal.ansi.bright_green": "#d9ffd7",
              "terminal.ansi.bright_magenta": "#ffe5fe",
              "terminal.ansi.bright_red": "#ffdada",
              "terminal.ansi.bright_white": "#ffffff",
              "terminal.ansi.bright_yellow": "#feffd6",
              "terminal.ansi.cyan": "#7ebdba",
              "terminal.ansi.dim_black": "#3b3b3b",
              "terminal.ansi.dim_blue": "#468fe5",
              "terminal.ansi.dim_cyan": "#53b1ac",
              "terminal.ansi.dim_green": "#6ad675",
              "terminal.ansi.dim_magenta": "#ea8bec",
              "terminal.ansi.dim_red": "#d96b6b",
              "terminal.ansi.dim_white": "#ffffff",
              "terminal.ansi.dim_yellow": "#e4d38e",
              "terminal.ansi.green": "#7fca93",
              "terminal.ansi.magenta": "#d89bd7",
              "terminal.ansi.red": "#ea8f8f",
              "terminal.ansi.white": "#ffffff",
              "terminal.ansi.yellow": "#d2cc76",
              "terminal.background": "#4f3247",
              "terminal.bright_foreground": "#efe6e6",
              "terminal.dim_foreground": "#efe6e6",
              "terminal.foreground": "#efe6e6"
            }
          },
          {
            "name": "Barbie Twilight",
            "appearance": "dark",
            "style": {
              "background": "#1f1f21",
              "syntax": {
                "attribute": {
                  "color": "#bd7279",
                  "font_style": null,
                  "font_weight": null
                },
                "editor.foreground": {
                  "color": "#cebfbf",
                  "font_style": null,
                  "font_weight": null
                },
                "boolean": {
                  "color": "#ff8080",
                  "font_style": null,
                  "font_weight": null
                },
                "comment": {
                  "color": "#6a5b62",
                  "font_style": "italic",
                  "font_weight": null
                },
                "comment.doc": {
                  "color": "#6a5b62",
                  "font_style": "italic",
                  "font_weight": null
                },
                "constant": {
                  "color": "#ff8080",
                  "font_style": null,
                  "font_weight": null
                },
                "constructor": {
                  "color": "#bd7390",
                  "font_style": null,
                  "font_weight": null
                },
                "embedded": {
                  "color": "#ff8080",
                  "font_style": null,
                  "font_weight": null
                },
                "emphasis": {
                  "color": "#ffadad",
                  "font_style": null,
                  "font_weight": null
                },
                "emphasis.strong": {
                  "color": "#ffadad",
                  "font_style": null,
                  "font_weight": null
                },
                "enum": {
                  "color": "#ffadad",
                  "font_style": null,
                  "font_weight": null
                },
                "function": {
                  "color": "#d96983",
                  "font_style": null,
                  "font_weight": null
                },
                "function.method": {
                  "color": "#c995a1",
                  "font_style": null,
                  "font_weight": null
                },
                "function.special.definition": {
                  "color": "#f090a7",
                  "font_style": "italic",
                  "font_weight": 800
                },
                "hint": {
                  "color": "#957f84",
                  "font_style": null,
                  "font_weight": null
                },
                "keyword": {
                  "color": "#dcbd8d",
                  "font_style": null,
                  "font_weight": null
                },
                "label": {
                  "color": "#bb9870",
                  "font_style": null,
                  "font_weight": null
                },
                "link_text": {
                  "color": "#bb9870",
                  "font_style": null,
                  "font_weight": null
                },
                "link_uri": {
                  "color": "#bb9870",
                  "font_style": null,
                  "font_weight": null
                },
                "number": {
                  "color": "#ff8080",
                  "font_style": null,
                  "font_weight": null
                },
                "operator": {
                  "color": "#fdaaaa",
                  "font_style": null,
                  "font_weight": null
                },
                "predictive": {
                  "color": "#4d3b42",
                  "font_style": null,
                  "font_weight": null
                },
                "preproc": {
                  "color": "#62545a",
                  "font_style": null,
                  "font_weight": null
                },
                "property": {
                  "color": "#9da8b8",
                  "font_style": null,
                  "font_weight": null
                },
                "punctuation": {
                  "color": "#947474",
                  "font_style": null,
                  "font_weight": null
                },
                "punctuation.bracket": {
                  "color": "#c3a2a2",
                  "font_style": null,
                  "font_weight": null
                },
                "punctuation.delimiter": {
                  "color": "#c3a2a2",
                  "font_style": null,
                  "font_weight": null
                },
                "punctuation.list_marker": {
                  "color": "#c3a2a2",
                  "font_style": null,
                  "font_weight": null
                },
                "punctuation.special": {
                  "color": "#c3a2a2",
                  "font_style": null,
                  "font_weight": null
                },
                "string": {
                  "color": "#c3db9b",
                  "font_style": null,
                  "font_weight": null
                },
                "string.escape": {
                  "color": "#c3db9b",
                  "font_style": null,
                  "font_weight": null
                },
                "string.regex": {
                  "color": "#c3db9b",
                  "font_style": null,
                  "font_weight": null
                },
                "string.special": {
                  "color": "#c3db9b",
                  "font_style": null,
                  "font_weight": null
                },
                "string.special.symbol": {
                  "color": "#c3db9b",
                  "font_style": null,
                  "font_weight": null
                },
                "tag": {
                  "color": "#b19872",
                  "font_style": null,
                  "font_weight": null
                },
                "text.literal": {
                  "color": "#cebfbf",
                  "font_style": null,
                  "font_weight": null
                },
                "title": {
                  "color": "#cebfbf",
                  "font_style": null,
                  "font_weight": null
                },
                "type": {
                  "color": "#c8af88",
                  "font_style": null,
                  "font_weight": null
                },
                "type.builtin": {
                  "color": "#ffd5d5",
                  "font_style": null,
                  "font_weight": null
                },
                "variable": {
                  "color": "#9bb6cb",
                  "font_style": null,
                  "font_weight": null
                },
                "variable.special": {
                  "color": "#b6c5dc",
                  "font_style": null,
                  "font_weight": null
                },
                "variant": {
                  "color": "#90d6c3",
                  "font_style": null,
                  "font_weight": null
                },
                "primary": {
                  "color": "#3e3e3e",
                  "font_style": null,
                  "font_weight": null
                }
              },
              "players": [
                {
                  "background": "#ab8a8a57",
                  "cursor": "#64afe6",
                  "selection": "#ab8a8a57"
                },
                {
                  "background": "#ab8a8a57",
                  "cursor": "#64afe6",
                  "selection": "#ab8a8a57"
                }
              ],
              "background.appearance": "transparent",
              "drop_target.background": "#fe7cb657",
              "editor.active_line.background": "#2d2d31",
              "editor.active_line_number": "#918082",
              "editor.active_wrap_guide": "#af4a7c8c",
              "editor.background": "#1f1f21",
              "editor.document_highlight.read_background": "#1f1f21",
              "editor.document_highlight.write_background": "#1f1f21",
              "editor.foreground": "#b1b1b1",
              "editor.gutter.background": "#1f1f21",
              "editor.highlighted_line.background": "#873b3b",
              "editor.line_number": "#5c4b4b",
              "editor.subheader.background": "#1f1f21",
              "editor.wrap_guide": "#1f1f21",
              "elevated_surface.background": "#1f1f21",
              "pane.focused_border": "#1f1f21",
              "panel.background": "#1f1f21",
              "panel.focused_border": "#1f1f21",
              "search.match_background": "#000000",
              "status_bar.background": "#1f1f21",
              "surface.background": "#1f1f21",
              "tab.active_background": "#1f1f21",
              "tab.inactive_background": "#121215",
              "tab_bar.background": "#121215",
              "title_bar.background": "#121215",
              "toolbar.background": "#202024",
              "text": "#dedede",
              "text.accent": "#ab8a8a",
              "text.disabled": "#42353d",
              "text.muted": "#a8a0a5",
              "border": "#121215",
              "border.disabled": "#1f1f21",
              "border.focused": "#1f1f21",
              "border.selected": "#1f1f21",
              "border.transparent": "#1f1f21",
              "border.variant": "#1f1f21",
              "editor.invisible": "#61616b",
              "element.active": "#8e588994",
              "element.background": "#f8bd3b24",
              "element.disabled": "#121215",
              "element.hover": "#121215",
              "element.selected": "#2a2a30",
              "ghost_element.active": "#1f1f21",
              "ghost_element.background": "#1f1f21",
              "ghost_element.disabled": "#1f1f21",
              "ghost_element.hover": "#1f1f21",
              "ghost_element.selected": "#ab8a8a57",
              "status_bar.foreground": "#323840",
              "tab.active_foreground": "#ededed",
              "terminal.ansi.amber": "#c8c8c8",
              "conflict": "#e94584",
              "conflict.background": null,
              "conflict.border": null,
              "created": "#bcdcb9",
              "created.background": "",
              "created.border": null,
              "deleted": "#c78d8d",
              "deleted.background": null,
              "deleted.border": null,
              "hidden": "#876e6e",
              "hidden.background": null,
              "hidden.border": null,
              "ignored": "#565555",
              "ignored.background": null,
              "ignored.border": null,
              "modified": "#c99595",
              "modified.background": null,
              "modified.border": null,
              "error": "#e2b8b8",
              "error.background": "#ba4848",
              "error.border": "#ba4848",
              "hint": "#999999",
              "hint.background": "#5b5b5b",
              "hint.border": "#f7fb27",
              "info": "#c0e1e5",
              "info.background": "#6da8b8",
              "info.border": "#6da8b8",
              "link_text.hover": "#e3b87f",
              "predictive": "#a5a257",
              "predictive.background": "#757232",
              "predictive.border": "#757232",
              "renamed": "#ade5e0",
              "renamed.background": "#7ab6b1",
              "renamed.border": "#7ab6b1",
              "success": "#b6cfa0",
              "success.background": "#8da37a",
              "success.border": "#8da37a",
              "unreachable": "#d897c4",
              "unreachable.background": "#8c557b",
              "unreachable.border": "#8c557b",
              "warning": "#ede09b",
              "warning.background": "#857939",
              "warning.border": "#b9ac6a",
              "scrollbar.thumb.border": "#1f1f21",
              "scrollbar.track.background": "#1f242624",
              "scrollbar.track.border": "#1f2526",
              "scrollbar_thumb.background": "#9e9e9e",
              "scrollbar.thumb.hover_background": "#1f252954",
              "terminal.ansi.black": "#000000",
              "terminal.ansi.blue": "#6097c3",
              "terminal.ansi.bright_black": "#4b4b4b",
              "terminal.ansi.bright_blue": "#add3ff",
              "terminal.ansi.bright_cyan": "#befff7",
              "terminal.ansi.bright_green": "#d9ffd7",
              "terminal.ansi.bright_magenta": "#ffe5fe",
              "terminal.ansi.bright_red": "#ffdada",
              "terminal.ansi.bright_white": "#ffffff",
              "terminal.ansi.bright_yellow": "#feffd6",
              "terminal.ansi.cyan": "#7ebdba",
              "terminal.ansi.dim_black": "#3b3b3b",
              "terminal.ansi.dim_blue": "#468fe5",
              "terminal.ansi.dim_cyan": "#53b1ac",
              "terminal.ansi.dim_green": "#6ad675",
              "terminal.ansi.dim_magenta": "#ea8bec",
              "terminal.ansi.dim_red": "#d96b6b",
              "terminal.ansi.dim_white": "#ffffff",
              "terminal.ansi.dim_yellow": "#e4d38e",
              "terminal.ansi.green": "#7fca93",
              "terminal.ansi.magenta": "#d89bd7",
              "terminal.ansi.red": "#ea8f8f",
              "terminal.ansi.white": "#ffffff",
              "terminal.ansi.yellow": "#d2cc76",
              "terminal.background": "#1f1f21",
              "terminal.bright_foreground": "#ededed",
              "terminal.dim_foreground": "#e6ebf0",
              "terminal.foreground": "#e6ebf0",
              "text.placeholder": "#6a6e71",
              "icon.accent": "#bb8c9c",
              "icon": "#7c7b7c",
              "icon.disabled": "#453c42",
              "icon.muted": "#4d4d4d",
              "icon.placeholder": "#453c42"
            }
          },
          {
            "name": "Barbie Kent",
            "appearance": "dark",
            "style": {
              "background": "#1e3044",
              "syntax": {
                "attribute": {
                  "color": "#bd7279",
                  "font_style": null,
                  "font_weight": null
                },
                "editor.foreground": {
                  "color": "#cebfbf",
                  "font_style": null,
                  "font_weight": null
                },
                "boolean": {
                  "color": "#ff8080",
                  "font_style": null,
                  "font_weight": null
                },
                "comment": {
                  "color": "#6a5b62",
                  "font_style": "italic",
                  "font_weight": null
                },
                "comment.doc": {
                  "color": "#6a5b62",
                  "font_style": "italic",
                  "font_weight": null
                },
                "constant": {
                  "color": "#ff8080",
                  "font_style": null,
                  "font_weight": null
                },
                "constructor": {
                  "color": "#bd7390",
                  "font_style": null,
                  "font_weight": null
                },
                "embedded": {
                  "color": "#ff8080",
                  "font_style": null,
                  "font_weight": null
                },
                "emphasis": {
                  "color": "#ffadad",
                  "font_style": null,
                  "font_weight": null
                },
                "emphasis.strong": {
                  "color": "#ffadad",
                  "font_style": null,
                  "font_weight": null
                },
                "enum": {
                  "color": "#ffadad",
                  "font_style": null,
                  "font_weight": null
                },
                "function": {
                  "color": "#d96983",
                  "font_style": null,
                  "font_weight": null
                },
                "function.method": {
                  "color": "#c995a1",
                  "font_style": null,
                  "font_weight": null
                },
                "function.special.definition": {
                  "color": "#f090a7",
                  "font_style": "italic",
                  "font_weight": 800
                },
                "hint": {
                  "color": "#957f84",
                  "font_style": null,
                  "font_weight": null
                },
                "keyword": {
                  "color": "#dcbd8d",
                  "font_style": null,
                  "font_weight": null
                },
                "label": {
                  "color": "#bb9870",
                  "font_style": null,
                  "font_weight": null
                },
                "link_text": {
                  "color": "#bb9870",
                  "font_style": null,
                  "font_weight": null
                },
                "link_uri": {
                  "color": "#bb9870",
                  "font_style": null,
                  "font_weight": null
                },
                "number": {
                  "color": "#ff8080",
                  "font_style": null,
                  "font_weight": null
                },
                "operator": {
                  "color": "#fdaaaa",
                  "font_style": null,
                  "font_weight": null
                },
                "predictive": {
                  "color": "#4d3b42",
                  "font_style": null,
                  "font_weight": null
                },
                "preproc": {
                  "color": "#62545a",
                  "font_style": null,
                  "font_weight": null
                },
                "property": {
                  "color": "#9da8b8",
                  "font_style": null,
                  "font_weight": null
                },
                "punctuation": {
                  "color": "#947474",
                  "font_style": null,
                  "font_weight": null
                },
                "punctuation.bracket": {
                  "color": "#c3a2a2",
                  "font_style": null,
                  "font_weight": null
                },
                "punctuation.delimiter": {
                  "color": "#c3a2a2",
                  "font_style": null,
                  "font_weight": null
                },
                "punctuation.list_marker": {
                  "color": "#c3a2a2",
                  "font_style": null,
                  "font_weight": null
                },
                "punctuation.special": {
                  "color": "#c3a2a2",
                  "font_style": null,
                  "font_weight": null
                },
                "string": {
                  "color": "#c3db9b",
                  "font_style": null,
                  "font_weight": null
                },
                "string.escape": {
                  "color": "#c3db9b",
                  "font_style": null,
                  "font_weight": null
                },
                "string.regex": {
                  "color": "#c3db9b",
                  "font_style": null,
                  "font_weight": null
                },
                "string.special": {
                  "color": "#c3db9b",
                  "font_style": null,
                  "font_weight": null
                },
                "string.special.symbol": {
                  "color": "#c3db9b",
                  "font_style": null,
                  "font_weight": null
                },
                "tag": {
                  "color": "#b19872",
                  "font_style": null,
                  "font_weight": null
                },
                "text.literal": {
                  "color": "#cebfbf",
                  "font_style": null,
                  "font_weight": null
                },
                "title": {
                  "color": "#cebfbf",
                  "font_style": null,
                  "font_weight": null
                },
                "type": {
                  "color": "#c8af88",
                  "font_style": null,
                  "font_weight": null
                },
                "type.builtin": {
                  "color": "#ffd5d5",
                  "font_style": null,
                  "font_weight": null
                },
                "variable": {
                  "color": "#9bb6cb",
                  "font_style": null,
                  "font_weight": null
                },
                "variable.special": {
                  "color": "#b6c5dc",
                  "font_style": null,
                  "font_weight": null
                },
                "variant": {
                  "color": "#90d6c3",
                  "font_style": null,
                  "font_weight": null
                },
                "primary": {
                  "color": "#cebfbf",
                  "font_style": null,
                  "font_weight": null
                }
              },
              "players": [
                {
                  "background": "#737f94",
                  "cursor": "#c2639f",
                  "selection": "#6b416b"
                },
                {
                  "background": "#947389",
                  "cursor": "#738094",
                  "selection": "#444452"
                }
              ],
              "background.appearance": "transparent",
              "drop_target.background": "#262f40",
              "editor.active_line.background": "#304161",
              "editor.active_line_number": "#6e8f9c",
              "editor.active_wrap_guide": "#1e3044",
              "editor.background": "#1e3044",
              "editor.document_highlight.read_background": "#907286",
              "editor.document_highlight.write_background": "#907286",
              "editor.foreground": "#cebfbf",
              "editor.gutter.background": "#1e3044",
              "editor.highlighted_line.background": "##1e3044",
              "editor.line_number": "#3c5d68",
              "editor.subheader.background": "#1e3044",
              "editor.wrap_guide": "#39455b",
              "elevated_surface.background": "#1e3044",
              "pane.focused_border": "#5f4b3f",
              "panel.background": "#1e3044",
              "panel.focused_border": "#5f4b3f",
              "search.match_background": "#8b659b",
              "status_bar.background": "#1e3044",
              "surface.background": "#1e3044",
              "tab.active_background": "#1e3044",
              "tab.inactive_background": "#181d26",
              "tab_bar.background": "#1e3044",
              "title_bar.background": "#1e3044",
              "toolbar.background": "#1e3044",
              "text": "#c0c7cf",
              "text.accent": "#a4b1ba",
              "text.disabled": "#6d7d94",
              "text.muted": "#9bb7c7",
              "border": "#1e3044",
              "border.disabled": "#1e3044",
              "border.focused": "#1e3044",
              "border.selected": "#1e3044",
              "border.transparent": "#1e3044",
              "border.variant": "#1d2024",
              "editor.invisible": "#5f4b3f",
              "element.active": "#2a333b",
              "element.background": "#1f2226",
              "element.disabled": "#7c7b7c",
              "element.hover": "#282f38",
              "element.selected": "#3c5162",
              "ghost_element.active": "#c09d87",
              "ghost_element.background": "#261f24",
              "ghost_element.disabled": "#564c52",
              "ghost_element.hover": "#4d3a47",
              "ghost_element.selected": "#1d2636",
              "status_bar.foreground": "#1e3044",
              "tab.active_foreground": "#dfe0e8",
              "terminal.ansi.amber": "#b3b9c7",
              "conflict": "#e94584",
              "conflict.background": null,
              "conflict.border": null,
              "created": "#bcdcb9",
              "created.background": "",
              "created.border": null,
              "deleted": "#c78d8d",
              "deleted.background": null,
              "deleted.border": null,
              "hidden": "#876e6e",
              "hidden.background": null,
              "hidden.border": null,
              "ignored": "#565555",
              "ignored.background": null,
              "ignored.border": null,
              "modified": "#c2e3ff",
              "modified.background": null,
              "modified.border": null,
              "error": "#e2b8b8",
              "error.background": "#ba4848",
              "error.border": "#ba4848",
              "hint": "#999999",
              "hint.background": "#5b5b5b",
              "hint.border": "#5b5b5b",
              "info": "#c0e1e5",
              "info.background": "#6da8b8",
              "info.border": "#6da8b8",
              "link_text.hover": "#e3b87f",
              "predictive": "#a5a257",
              "predictive.background": "#757232",
              "predictive.border": "#757232",
              "renamed": "#ade5e0",
              "renamed.background": "#7ab6b1",
              "renamed.border": "#7ab6b1",
              "success": "#b6cfa0",
              "success.background": "#8da37a",
              "success.border": "#8da37a",
              "unreachable": "#d897c4",
              "unreachable.background": "#8c557b",
              "unreachable.border": "#8c557b",
              "warning": "#ede09b",
              "warning.background": "#857939",
              "warning.border": "#b9ac6a",
              "scrollbar.thumb.border": "#1f2026",
              "scrollbar.track.background": "#261f2424",
              "scrollbar.track.border": "#211f26",
              "scrollbar_thumb.background": "#1f2026",
              "scrollbar.thumb.hover_background": "#281e2554",
              "terminal.ansi.black": "#000000",
              "terminal.ansi.blue": "#6097c3",
              "terminal.ansi.bright_black": "#4b4b4b",
              "terminal.ansi.bright_blue": "#add3ff",
              "terminal.ansi.bright_cyan": "#befff7",
              "terminal.ansi.bright_green": "#d9ffd7",
              "terminal.ansi.bright_magenta": "#ffe5fe",
              "terminal.ansi.bright_red": "#ffdada",
              "terminal.ansi.bright_white": "#ffffff",
              "terminal.ansi.bright_yellow": "#feffd6",
              "terminal.ansi.cyan": "#7ebdba",
              "terminal.ansi.dim_black": "#3b3b3b",
              "terminal.ansi.dim_blue": "#468fe5",
              "terminal.ansi.dim_cyan": "#53b1ac",
              "terminal.ansi.dim_green": "#6ad675",
              "terminal.ansi.dim_magenta": "#ea8bec",
              "terminal.ansi.dim_red": "#d96b6b",
              "terminal.ansi.dim_white": "#ffffff",
              "terminal.ansi.dim_yellow": "#e4d38e",
              "terminal.ansi.green": "#7fca93",
              "terminal.ansi.magenta": "#d89bd7",
              "terminal.ansi.red": "#ea8f8f",
              "terminal.ansi.white": "#ffffff",
              "terminal.ansi.yellow": "#d2cc76",
              "terminal.background": "#1e3044",
              "terminal.bright_foreground": "#efe6e6",
              "terminal.dim_foreground": "#efe6e6",
              "terminal.foreground": "#efe6e6",
              "text.placeholder": "#9bb7c7"
            }
          }
        ],
        "id": "6BftSQu6sav4HDdMNKJiJ"
      }
    '';
  };

  home.file."/home/${vars.user}/.config/zed/themes/Midnight.json" = {
    text = ''
      {
        "$schema": "https://zed.dev/schema/themes/v0.2.0.json",
        "name": "Midnight",
        "author": "blehner",
        "themes": [
          {
            "name": "Catppuccin Latte",
            "appearance": "light",
            "style": {
              "accents": [
                "#8839ef",
                "#7287fd",
                "#209fb5",
                "#40a02b",
                "#df8e1d",
                "#fe640b",
                "#d20f39"
              ],
              "vim.mode.text": "#dce0e8",
              "vim.normal.foreground": "#dce0e8",
              "vim.helix_normal.foreground": "#dce0e8",
              "vim.visual.foreground": "#dce0e8",
              "vim.helix_select.foreground": "#dce0e8",
              "vim.insert.foreground": "#dce0e8",
              "vim.visual_line.foreground": "#dce0e8",
              "vim.visual_block.foreground": "#dce0e8",
              "vim.replace.foreground": "#dce0e8",
              "vim.normal.background": "#dc8a78",
              "vim.helix_normal.background": "#dc8a78",
              "vim.visual.background": "#7287fd",
              "vim.helix_select.background": "#7287fd",
              "vim.insert.background": "#40a02b",
              "vim.visual_line.background": "#7287fd",
              "vim.visual_block.background": "#8839ef",
              "vim.replace.background": "#e64553",
              "background.appearance": "opaque",
              "border": "#ccd0da",
              "border.variant": "#9658eb",
              "border.focused": "#7287fd",
              "border.selected": "#8839ef",
              "border.transparent": "#40a02b",
              "border.disabled": "#9ca0b0",
              "elevated_surface.background": "#e6e9ef",
              "surface.background": "#e6e9ef",
              "background": "#d7dce5",
              "element.background": "#dce0e8",
              "element.hover": "#ccd0da",
              "element.active": "#acb0be4d",
              "element.selected": "#ccd0da4d",
              "element.disabled": "#9ca0b0",
              "drop_target.background": "#ccd0da66",
              "ghost_element.background": "#00000000",
              "ghost_element.hover": "#bcc0cc4d",
              "ghost_element.active": "#acb0be99",
              "ghost_element.selected": "#8f94a766",
              "ghost_element.disabled": "#9ca0b0",
              "text": "#4c4f69",
              "text.muted": "#5c5f77",
              "text.placeholder": "#acb0be",
              "text.disabled": "#bcc0cc",
              "text.accent": "#8839ef",
              "icon": "#4c4f69",
              "icon.muted": "#8c8fa1",
              "icon.disabled": "#9ca0b0",
              "icon.placeholder": "#acb0be",
              "icon.accent": "#8839ef",
              "status_bar.background": "#dce0e8",
              "title_bar.background": "#dce0e8",
              "title_bar.inactive_background": "#e6e9ee",
              "toolbar.background": "#eff1f5",
              "tab_bar.background": "#dce0e8",
              "tab.inactive_background": "#d2d7e2",
              "tab.active_background": "#eff1f5",
              "search.match_background": "#1792994d",
              "search.active_match_background": "#d20f394d",
              "panel.background": "#e6e9ef",
              "panel.focused_border": "#4c4f69",
              "panel.indent_guide": "#ccd0da99",
              "panel.indent_guide_active": "#acb0be",
              "panel.indent_guide_hover": "#8839ef",
              "panel.overlay_background": "#e6e9ef",
              "pane.focused_border": "#4c4f69",
              "pane_group.border": "#ccd0da",
              "scrollbar.thumb.background": "#acb0be80",
              "scrollbar.thumb.hover_background": "#9ca0b0",
              "scrollbar.thumb.active_background": null,
              "scrollbar.thumb.border": null,
              "scrollbar.track.background": "#dce0e8",
              "scrollbar.track.border": "#4c4f6912",
              "minimap.thumb.background": "#8839ef33",
              "minimap.thumb.hover_background": "#8839ef66",
              "minimap.thumb.active_background": "#8839ef99",
              "minimap.thumb.border": null,
              "editor.foreground": "#4c4f69",
              "editor.background": "#eff1f5",
              "editor.gutter.background": "#eff1f5",
              "editor.subheader.background": "#e6e9ef",
              "editor.active_line.background": "#4c4f6912",
              "editor.highlighted_line.background": null,
              "editor.line_number": "#8c8fa1",
              "editor.active_line_number": "#8839ef",
              "editor.invisible": "#7c7f9366",
              "editor.wrap_guide": "#acb0be",
              "editor.active_wrap_guide": "#acb0be",
              "editor.document_highlight.bracket_background": "#8839ef17",
              "editor.document_highlight.read_background": "#6c6f8529",
              "editor.document_highlight.write_background": "#6c6f8529",
              "editor.indent_guide": "#ccd0da99",
              "editor.indent_guide_active": "#acb0be",
              "terminal.background": "#eff1f5",
              "terminal.ansi.background": "#eff1f5",
              "terminal.foreground": "#4c4f69",
              "terminal.dim_foreground": "#8c8fa1",
              "terminal.bright_foreground": "#4c4f69",
              "terminal.ansi.black": "#5c5f77",
              "terminal.ansi.white": "#acb0be",
              "terminal.ansi.red": "#d20f39",
              "terminal.ansi.green": "#40a02b",
              "terminal.ansi.yellow": "#df8e1d",
              "terminal.ansi.blue": "#1e66f5",
              "terminal.ansi.magenta": "#ea76cb",
              "terminal.ansi.cyan": "#179299",
              "terminal.ansi.bright_black": "#6c6f85",
              "terminal.ansi.bright_white": "#bcc0cc",
              "terminal.ansi.bright_red": "#de293e",
              "terminal.ansi.bright_green": "#49af3d",
              "terminal.ansi.bright_yellow": "#eea02d",
              "terminal.ansi.bright_blue": "#456eff",
              "terminal.ansi.bright_magenta": "#fe85d8",
              "terminal.ansi.bright_cyan": "#2d9fa8",
              "terminal.ansi.dim_black": "#5c5f77",
              "terminal.ansi.dim_white": "#acb0be",
              "terminal.ansi.dim_red": "#d20f39",
              "terminal.ansi.dim_green": "#40a02b",
              "terminal.ansi.dim_yellow": "#df8e1d",
              "terminal.ansi.dim_blue": "#1e66f5",
              "terminal.ansi.dim_magenta": "#ea76cb",
              "terminal.ansi.dim_cyan": "#179299",
              "link_text.hover": "#04a5e5",
              "conflict": "#fe640b",
              "conflict.border": "#fe640b",
              "conflict.background": "#fe640b26",
              "created": "#40a02b",
              "created.border": "#40a02b",
              "created.background": "#40a02b26",
              "deleted": "#d20f39",
              "deleted.border": "#d20f39",
              "deleted.background": "#d20f3926",
              "hidden": "#9ca0b0",
              "hidden.border": "#9ca0b0",
              "hidden.background": "#e6e9ef",
              "hint": "#acb0be",
              "hint.border": "#acb0be",
              "hint.background": "#e6e9ef",
              "ignored": "#9ca0b0",
              "ignored.border": "#9ca0b0",
              "ignored.background": "#9ca0b026",
              "modified": "#df8e1d",
              "modified.border": "#df8e1d",
              "modified.background": "#df8e1d26",
              "predictive": "#9ca0b0",
              "predictive.border": "#7287fd",
              "predictive.background": "#e6e9ef",
              "renamed": "#209fb5",
              "renamed.border": "#209fb5",
              "renamed.background": "#209fb526",
              "info": "#179299",
              "info.border": "#179299",
              "info.background": "#7c7f9333",
              "warning": "#df8e1d",
              "warning.border": "#df8e1d",
              "warning.background": "#df8e1d1f",
              "error": "#d20f39",
              "error.border": "#d20f39",
              "error.background": "#d20f391f",
              "success": "#40a02b",
              "success.border": "#40a02b",
              "success.background": "#40a02b1f",
              "unreachable": "#d20f39",
              "unreachable.border": "#d20f39",
              "unreachable.background": "#d20f391f",
              "players": [
                {
                  "cursor": "#dc8a78",
                  "selection": "#7c7f934d",
                  "background": "#dc8a78"
                },
                {
                  "cursor": "#8839ef",
                  "selection": "#8839ef4d",
                  "background": "#8839ef"
                },
                {
                  "cursor": "#7287fd",
                  "selection": "#7287fd4d",
                  "background": "#7287fd"
                },
                {
                  "cursor": "#209fb5",
                  "selection": "#209fb54d",
                  "background": "#209fb5"
                },
                {
                  "cursor": "#40a02b",
                  "selection": "#40a02b4d",
                  "background": "#40a02b"
                },
                {
                  "cursor": "#df8e1d",
                  "selection": "#df8e1d4d",
                  "background": "#df8e1d"
                },
                {
                  "cursor": "#fe640b",
                  "selection": "#fe640b4d",
                  "background": "#fe640b"
                },
                {
                  "cursor": "#d20f39",
                  "selection": "#d20f394d",
                  "background": "#d20f39"
                }
              ],
              "version_control.added": "#40a02b",
              "version_control.deleted": "#d20f39",
              "version_control.modified": "#df8e1d",
              "version_control.renamed": "#209fb5",
              "version_control.conflict": "#fe640b",
              "version_control.conflict_marker.ours": "#40a02b33",
              "version_control.conflict_marker.theirs": "#1e66f533",
              "version_control.ignored": "#9ca0b0",
              "debugger.accent": "#d20f39",
              "editor.debugger_active_line.background": "#fe640b12",
              "syntax": {
                "variable": {
                  "color": "#4c4f69",
                  "font_style": null,
                  "font_weight": null
                },
                "variable.builtin": {
                  "color": "#d20f39",
                  "font_style": null,
                  "font_weight": null
                },
                "variable.parameter": {
                  "color": "#e64553",
                  "font_style": null,
                  "font_weight": null
                },
                "variable.member": {
                  "color": "#1e66f5",
                  "font_style": null,
                  "font_weight": null
                },
                "variable.special": {
                  "color": "#d20f39",
                  "font_style": "italic",
                  "font_weight": null
                },
                "constant": {
                  "color": "#fe640b",
                  "font_style": null,
                  "font_weight": null
                },
                "constant.builtin": {
                  "color": "#fe640b",
                  "font_style": null,
                  "font_weight": null
                },
                "constant.macro": {
                  "color": "#8839ef",
                  "font_style": null,
                  "font_weight": null
                },
                "module": {
                  "color": "#df8e1d",
                  "font_style": "italic",
                  "font_weight": null
                },
                "label": {
                  "color": "#209fb5",
                  "font_style": null,
                  "font_weight": null
                },
                "string": {
                  "color": "#40a02b",
                  "font_style": null,
                  "font_weight": null
                },
                "string.documentation": {
                  "color": "#179299",
                  "font_style": null,
                  "font_weight": null
                },
                "string.regexp": {
                  "color": "#fe640b",
                  "font_style": null,
                  "font_weight": null
                },
                "string.escape": {
                  "color": "#ea76cb",
                  "font_style": null,
                  "font_weight": null
                },
                "string.special": {
                  "color": "#ea76cb",
                  "font_style": null,
                  "font_weight": null
                },
                "string.special.path": {
                  "color": "#ea76cb",
                  "font_style": null,
                  "font_weight": null
                },
                "string.special.symbol": {
                  "color": "#dd7878",
                  "font_style": null,
                  "font_weight": null
                },
                "string.special.url": {
                  "color": "#dc8a78",
                  "font_style": "italic",
                  "font_weight": null
                },
                "character": {
                  "color": "#179299",
                  "font_style": null,
                  "font_weight": null
                },
                "character.special": {
                  "color": "#ea76cb",
                  "font_style": null,
                  "font_weight": null
                },
                "boolean": {
                  "color": "#fe640b",
                  "font_style": null,
                  "font_weight": null
                },
                "number": {
                  "color": "#fe640b",
                  "font_style": null,
                  "font_weight": null
                },
                "number.float": {
                  "color": "#fe640b",
                  "font_style": null,
                  "font_weight": null
                },
                "tag": {
                  "color": "#1e66f5",
                  "font_style": null,
                  "font_weight": null
                },
                "tag.attribute": {
                  "color": "#df8e1d",
                  "font_style": "italic",
                  "font_weight": null
                },
                "tag.delimiter": {
                  "color": "#179299",
                  "font_style": null,
                  "font_weight": null
                },
                "type": {
                  "color": "#df8e1d",
                  "font_style": null,
                  "font_weight": null
                },
                "type.builtin": {
                  "color": "#8839ef",
                  "font_style": "italic",
                  "font_weight": null
                },
                "type.definition": {
                  "color": "#df8e1d",
                  "font_style": null,
                  "font_weight": null
                },
                "type.interface": {
                  "color": "#df8e1d",
                  "font_style": "italic",
                  "font_weight": null
                },
                "type.super": {
                  "color": "#df8e1d",
                  "font_style": "italic",
                  "font_weight": null
                },
                "attribute": {
                  "color": "#fe640b",
                  "font_style": null,
                  "font_weight": null
                },
                "property": {
                  "color": "#1e66f5",
                  "font_style": null,
                  "font_weight": null
                },
                "function": {
                  "color": "#1e66f5",
                  "font_style": null,
                  "font_weight": null
                },
                "function.builtin": {
                  "color": "#fe640b",
                  "font_style": null,
                  "font_weight": null
                },
                "function.call": {
                  "color": "#1e66f5",
                  "font_style": null,
                  "font_weight": null
                },
                "function.macro": {
                  "color": "#179299",
                  "font_style": null,
                  "font_weight": null
                },
                "function.method": {
                  "color": "#1e66f5",
                  "font_style": null,
                  "font_weight": null
                },
                "function.method.call": {
                  "color": "#1e66f5",
                  "font_style": null,
                  "font_weight": null
                },
                "constructor": {
                  "color": "#dd7878",
                  "font_style": null,
                  "font_weight": null
                },
                "operator": {
                  "color": "#04a5e5",
                  "font_style": null,
                  "font_weight": null
                },
                "keyword": {
                  "color": "#8839ef",
                  "font_style": null,
                  "font_weight": null
                },
                "keyword.modifier": {
                  "color": "#8839ef",
                  "font_style": null,
                  "font_weight": null
                },
                "keyword.type": {
                  "color": "#8839ef",
                  "font_style": null,
                  "font_weight": null
                },
                "keyword.coroutine": {
                  "color": "#8839ef",
                  "font_style": null,
                  "font_weight": null
                },
                "keyword.function": {
                  "color": "#8839ef",
                  "font_style": null,
                  "font_weight": null
                },
                "keyword.operator": {
                  "color": "#8839ef",
                  "font_style": null,
                  "font_weight": null
                },
                "keyword.import": {
                  "color": "#8839ef",
                  "font_style": null,
                  "font_weight": null
                },
                "keyword.repeat": {
                  "color": "#8839ef",
                  "font_style": null,
                  "font_weight": null
                },
                "keyword.return": {
                  "color": "#8839ef",
                  "font_style": null,
                  "font_weight": null
                },
                "keyword.debug": {
                  "color": "#8839ef",
                  "font_style": null,
                  "font_weight": null
                },
                "keyword.exception": {
                  "color": "#8839ef",
                  "font_style": null,
                  "font_weight": null
                },
                "keyword.conditional": {
                  "color": "#8839ef",
                  "font_style": null,
                  "font_weight": null
                },
                "keyword.conditional.ternary": {
                  "color": "#8839ef",
                  "font_style": null,
                  "font_weight": null
                },
                "keyword.directive": {
                  "color": "#ea76cb",
                  "font_style": null,
                  "font_weight": null
                },
                "keyword.directive.define": {
                  "color": "#ea76cb",
                  "font_style": null,
                  "font_weight": null
                },
                "keyword.export": {
                  "color": "#04a5e5",
                  "font_style": null,
                  "font_weight": null
                },
                "punctuation": {
                  "color": "#7c7f93",
                  "font_style": null,
                  "font_weight": null
                },
                "punctuation.delimiter": {
                  "color": "#7c7f93",
                  "font_style": null,
                  "font_weight": null
                },
                "punctuation.bracket": {
                  "color": "#7c7f93",
                  "font_style": null,
                  "font_weight": null
                },
                "punctuation.special": {
                  "color": "#ea76cb",
                  "font_style": null,
                  "font_weight": null
                },
                "punctuation.special.symbol": {
                  "color": "#dd7878",
                  "font_style": null,
                  "font_weight": null
                },
                "punctuation.list_marker": {
                  "color": "#179299",
                  "font_style": null,
                  "font_weight": null
                },
                "comment": {
                  "color": "#7c7f93",
                  "font_style": "italic",
                  "font_weight": null
                },
                "comment.doc": {
                  "color": "#7c7f93",
                  "font_style": "italic",
                  "font_weight": null
                },
                "comment.documentation": {
                  "color": "#7c7f93",
                  "font_style": "italic",
                  "font_weight": null
                },
                "comment.info": {
                  "color": "#179299",
                  "font_style": "italic",
                  "font_weight": null
                },
                "comment.error": {
                  "color": "#d20f39",
                  "font_style": "italic",
                  "font_weight": null
                },
                "comment.warning": {
                  "color": "#df8e1d",
                  "font_style": "italic",
                  "font_weight": null
                },
                "comment.warn": {
                  "color": "#df8e1d",
                  "font_style": "italic",
                  "font_weight": null
                },
                "comment.hint": {
                  "color": "#1e66f5",
                  "font_style": "italic",
                  "font_weight": null
                },
                "comment.todo": {
                  "color": "#dd7878",
                  "font_style": "italic",
                  "font_weight": null
                },
                "comment.note": {
                  "color": "#dc8a78",
                  "font_style": "italic",
                  "font_weight": null
                },
                "diff.plus": {
                  "color": "#40a02b",
                  "font_style": null,
                  "font_weight": null
                },
                "diff.minus": {
                  "color": "#d20f39",
                  "font_style": null,
                  "font_weight": null
                },
                "parameter": {
                  "color": "#e64553",
                  "font_style": null,
                  "font_weight": null
                },
                "field": {
                  "color": "#7287fd",
                  "font_style": null,
                  "font_weight": null
                },
                "namespace": {
                  "color": "#df8e1d",
                  "font_style": "italic",
                  "font_weight": null
                },
                "float": {
                  "color": "#fe640b",
                  "font_style": null,
                  "font_weight": null
                },
                "symbol": {
                  "color": "#ea76cb",
                  "font_style": null,
                  "font_weight": null
                },
                "string.regex": {
                  "color": "#fe640b",
                  "font_style": null,
                  "font_weight": null
                },
                "text": {
                  "color": "#4c4f69",
                  "font_style": null,
                  "font_weight": null
                },
                "emphasis.strong": {
                  "color": "#e64553",
                  "font_style": null,
                  "font_weight": 700
                },
                "emphasis": {
                  "color": "#e64553",
                  "font_style": "italic",
                  "font_weight": null
                },
                "embedded": {
                  "color": "#e64553",
                  "font_style": null,
                  "font_weight": null
                },
                "text.literal": {
                  "color": "#40a02b",
                  "font_style": null,
                  "font_weight": null
                },
                "concept": {
                  "color": "#209fb5",
                  "font_style": null,
                  "font_weight": null
                },
                "enum": {
                  "color": "#179299",
                  "font_style": null,
                  "font_weight": 700
                },
                "function.decorator": {
                  "color": "#fe640b",
                  "font_style": null,
                  "font_weight": null
                },
                "type.class.definition": {
                  "color": "#df8e1d",
                  "font_style": null,
                  "font_weight": 700
                },
                "hint": {
                  "color": "#8c8fa1",
                  "font_style": "italic",
                  "font_weight": null
                },
                "link_text": {
                  "color": "#7287fd",
                  "font_style": null,
                  "font_weight": null
                },
                "link_uri": {
                  "color": "#1e66f5",
                  "font_style": "italic",
                  "font_weight": null
                },
                "parent": {
                  "color": "#fe640b",
                  "font_style": null,
                  "font_weight": null
                },
                "predictive": {
                  "color": "#9ca0b0",
                  "font_style": null,
                  "font_weight": null
                },
                "predoc": {
                  "color": "#d20f39",
                  "font_style": null,
                  "font_weight": null
                },
                "primary": {
                  "color": "#e64553",
                  "font_style": null,
                  "font_weight": null
                },
                "tag.doctype": {
                  "color": "#8839ef",
                  "font_style": null,
                  "font_weight": null
                },
                "string.doc": {
                  "color": "#179299",
                  "font_style": "italic",
                  "font_weight": null
                },
                "title": {
                  "color": "#4c4f69",
                  "font_style": null,
                  "font_weight": 800
                },
                "variant": {
                  "color": "#d20f39",
                  "font_style": null,
                  "font_weight": null
                }
              }
            }
          },
          {
            "name": "Catppuccin Frappé",
            "appearance": "dark",
            "style": {
              "accents": [
                "#ca9ee6",
                "#babbf1",
                "#85c1dc",
                "#a6d189",
                "#e5c890",
                "#ef9f76",
                "#e78284"
              ],
              "vim.mode.text": "#232634",
              "vim.normal.foreground": "#232634",
              "vim.helix_normal.foreground": "#232634",
              "vim.visual.foreground": "#232634",
              "vim.helix_select.foreground": "#232634",
              "vim.insert.foreground": "#232634",
              "vim.visual_line.foreground": "#232634",
              "vim.visual_block.foreground": "#232634",
              "vim.replace.foreground": "#232634",
              "vim.normal.background": "#f2d5cf",
              "vim.helix_normal.background": "#f2d5cf",
              "vim.visual.background": "#babbf1",
              "vim.helix_select.background": "#babbf1",
              "vim.insert.background": "#a6d189",
              "vim.visual_line.background": "#babbf1",
              "vim.visual_block.background": "#ca9ee6",
              "vim.replace.background": "#ea999c",
              "background.appearance": "opaque",
              "border": "#414559",
              "border.variant": "#af8cca",
              "border.focused": "#babbf1",
              "border.selected": "#ca9ee6",
              "border.transparent": "#a6d189",
              "border.disabled": "#737994",
              "elevated_surface.background": "#292c3c",
              "surface.background": "#292c3c",
              "background": "#383c52",
              "element.background": "#232634",
              "element.hover": "#414559",
              "element.active": "#6268804d",
              "element.selected": "#4145594d",
              "element.disabled": "#737994",
              "drop_target.background": "#41455966",
              "ghost_element.background": "#00000000",
              "ghost_element.hover": "#51576d4d",
              "ghost_element.active": "#62688099",
              "ghost_element.selected": "#7c829a66",
              "ghost_element.disabled": "#737994",
              "text": "#c6d0f5",
              "text.muted": "#b5bfe2",
              "text.placeholder": "#626880",
              "text.disabled": "#51576d",
              "text.accent": "#ca9ee6",
              "icon": "#c6d0f5",
              "icon.muted": "#838ba7",
              "icon.disabled": "#737994",
              "icon.placeholder": "#626880",
              "icon.accent": "#ca9ee6",
              "status_bar.background": "#232634",
              "title_bar.background": "#232634",
              "title_bar.inactive_background": "#2a2e3e",
              "toolbar.background": "#303446",
              "tab_bar.background": "#232634",
              "tab.inactive_background": "#1d202b",
              "tab.active_background": "#303446",
              "search.match_background": "#81c8be4d",
              "search.active_match_background": "#e782844d",
              "panel.background": "#292c3c",
              "panel.focused_border": "#c6d0f5",
              "panel.indent_guide": "#41455999",
              "panel.indent_guide_active": "#626880",
              "panel.indent_guide_hover": "#ca9ee6",
              "panel.overlay_background": "#292c3c",
              "pane.focused_border": "#c6d0f5",
              "pane_group.border": "#414559",
              "scrollbar.thumb.background": "#62688080",
              "scrollbar.thumb.hover_background": "#737994",
              "scrollbar.thumb.active_background": null,
              "scrollbar.thumb.border": null,
              "scrollbar.track.background": "#232634",
              "scrollbar.track.border": "#c6d0f512",
              "minimap.thumb.background": "#ca9ee633",
              "minimap.thumb.hover_background": "#ca9ee666",
              "minimap.thumb.active_background": "#ca9ee699",
              "minimap.thumb.border": null,
              "editor.foreground": "#c6d0f5",
              "editor.background": "#303446",
              "editor.gutter.background": "#303446",
              "editor.subheader.background": "#292c3c",
              "editor.active_line.background": "#c6d0f512",
              "editor.highlighted_line.background": null,
              "editor.line_number": "#838ba7",
              "editor.active_line_number": "#ca9ee6",
              "editor.invisible": "#949cbb66",
              "editor.wrap_guide": "#626880",
              "editor.active_wrap_guide": "#626880",
              "editor.document_highlight.bracket_background": "#ca9ee617",
              "editor.document_highlight.read_background": "#a5adce29",
              "editor.document_highlight.write_background": "#a5adce29",
              "editor.indent_guide": "#41455999",
              "editor.indent_guide_active": "#626880",
              "terminal.background": "#303446",
              "terminal.ansi.background": "#303446",
              "terminal.foreground": "#c6d0f5",
              "terminal.dim_foreground": "#838ba7",
              "terminal.bright_foreground": "#c6d0f5",
              "terminal.ansi.black": "#51576d",
              "terminal.ansi.white": "#a5adce",
              "terminal.ansi.red": "#e78284",
              "terminal.ansi.green": "#a6d189",
              "terminal.ansi.yellow": "#e5c890",
              "terminal.ansi.blue": "#8caaee",
              "terminal.ansi.magenta": "#f4b8e4",
              "terminal.ansi.cyan": "#81c8be",
              "terminal.ansi.bright_black": "#626880",
              "terminal.ansi.bright_white": "#b5bfe2",
              "terminal.ansi.bright_red": "#e67172",
              "terminal.ansi.bright_green": "#8ec772",
              "terminal.ansi.bright_yellow": "#d9ba73",
              "terminal.ansi.bright_blue": "#7b9ef0",
              "terminal.ansi.bright_magenta": "#f4b8e4",
              "terminal.ansi.bright_cyan": "#5abfb5",
              "terminal.ansi.dim_black": "#51576d",
              "terminal.ansi.dim_white": "#a5adce",
              "terminal.ansi.dim_red": "#e78284",
              "terminal.ansi.dim_green": "#a6d189",
              "terminal.ansi.dim_yellow": "#e5c890",
              "terminal.ansi.dim_blue": "#8caaee",
              "terminal.ansi.dim_magenta": "#f4b8e4",
              "terminal.ansi.dim_cyan": "#81c8be",
              "link_text.hover": "#99d1db",
              "conflict": "#ef9f76",
              "conflict.border": "#ef9f76",
              "conflict.background": "#ef9f7626",
              "created": "#a6d189",
              "created.border": "#a6d189",
              "created.background": "#a6d18926",
              "deleted": "#e78284",
              "deleted.border": "#e78284",
              "deleted.background": "#e7828426",
              "hidden": "#737994",
              "hidden.border": "#737994",
              "hidden.background": "#292c3c",
              "hint": "#626880",
              "hint.border": "#626880",
              "hint.background": "#292c3c",
              "ignored": "#737994",
              "ignored.border": "#737994",
              "ignored.background": "#73799426",
              "modified": "#e5c890",
              "modified.border": "#e5c890",
              "modified.background": "#e5c89026",
              "predictive": "#737994",
              "predictive.border": "#babbf1",
              "predictive.background": "#292c3c",
              "renamed": "#85c1dc",
              "renamed.border": "#85c1dc",
              "renamed.background": "#85c1dc26",
              "info": "#81c8be",
              "info.border": "#81c8be",
              "info.background": "#949cbb33",
              "warning": "#e5c890",
              "warning.border": "#e5c890",
              "warning.background": "#e5c8901f",
              "error": "#e78284",
              "error.border": "#e78284",
              "error.background": "#e782841f",
              "success": "#a6d189",
              "success.border": "#a6d189",
              "success.background": "#a6d1891f",
              "unreachable": "#e78284",
              "unreachable.border": "#e78284",
              "unreachable.background": "#e782841f",
              "players": [
                {
                  "cursor": "#f2d5cf",
                  "selection": "#949cbb40",
                  "background": "#f2d5cf"
                },
                {
                  "cursor": "#ca9ee6",
                  "selection": "#ca9ee640",
                  "background": "#ca9ee6"
                },
                {
                  "cursor": "#babbf1",
                  "selection": "#babbf140",
                  "background": "#babbf1"
                },
                {
                  "cursor": "#85c1dc",
                  "selection": "#85c1dc40",
                  "background": "#85c1dc"
                },
                {
                  "cursor": "#a6d189",
                  "selection": "#a6d18940",
                  "background": "#a6d189"
                },
                {
                  "cursor": "#e5c890",
                  "selection": "#e5c89040",
                  "background": "#e5c890"
                },
                {
                  "cursor": "#ef9f76",
                  "selection": "#ef9f7640",
                  "background": "#ef9f76"
                },
                {
                  "cursor": "#e78284",
                  "selection": "#e7828440",
                  "background": "#e78284"
                }
              ],
              "version_control.added": "#a6d189",
              "version_control.deleted": "#e78284",
              "version_control.modified": "#e5c890",
              "version_control.renamed": "#85c1dc",
              "version_control.conflict": "#ef9f76",
              "version_control.conflict_marker.ours": "#a6d18933",
              "version_control.conflict_marker.theirs": "#8caaee33",
              "version_control.ignored": "#737994",
              "debugger.accent": "#e78284",
              "editor.debugger_active_line.background": "#ef9f7612",
              "syntax": {
                "variable": {
                  "color": "#c6d0f5",
                  "font_style": null,
                  "font_weight": null
                },
                "variable.builtin": {
                  "color": "#e78284",
                  "font_style": null,
                  "font_weight": null
                },
                "variable.parameter": {
                  "color": "#ea999c",
                  "font_style": null,
                  "font_weight": null
                },
                "variable.member": {
                  "color": "#8caaee",
                  "font_style": null,
                  "font_weight": null
                },
                "variable.special": {
                  "color": "#e78284",
                  "font_style": "italic",
                  "font_weight": null
                },
                "constant": {
                  "color": "#ef9f76",
                  "font_style": null,
                  "font_weight": null
                },
                "constant.builtin": {
                  "color": "#ef9f76",
                  "font_style": null,
                  "font_weight": null
                },
                "constant.macro": {
                  "color": "#ca9ee6",
                  "font_style": null,
                  "font_weight": null
                },
                "module": {
                  "color": "#e5c890",
                  "font_style": "italic",
                  "font_weight": null
                },
                "label": {
                  "color": "#85c1dc",
                  "font_style": null,
                  "font_weight": null
                },
                "string": {
                  "color": "#a6d189",
                  "font_style": null,
                  "font_weight": null
                },
                "string.documentation": {
                  "color": "#81c8be",
                  "font_style": null,
                  "font_weight": null
                },
                "string.regexp": {
                  "color": "#ef9f76",
                  "font_style": null,
                  "font_weight": null
                },
                "string.escape": {
                  "color": "#f4b8e4",
                  "font_style": null,
                  "font_weight": null
                },
                "string.special": {
                  "color": "#f4b8e4",
                  "font_style": null,
                  "font_weight": null
                },
                "string.special.path": {
                  "color": "#f4b8e4",
                  "font_style": null,
                  "font_weight": null
                },
                "string.special.symbol": {
                  "color": "#eebebe",
                  "font_style": null,
                  "font_weight": null
                },
                "string.special.url": {
                  "color": "#f2d5cf",
                  "font_style": "italic",
                  "font_weight": null
                },
                "character": {
                  "color": "#81c8be",
                  "font_style": null,
                  "font_weight": null
                },
                "character.special": {
                  "color": "#f4b8e4",
                  "font_style": null,
                  "font_weight": null
                },
                "boolean": {
                  "color": "#ef9f76",
                  "font_style": null,
                  "font_weight": null
                },
                "number": {
                  "color": "#ef9f76",
                  "font_style": null,
                  "font_weight": null
                },
                "number.float": {
                  "color": "#ef9f76",
                  "font_style": null,
                  "font_weight": null
                },
                "tag": {
                  "color": "#8caaee",
                  "font_style": null,
                  "font_weight": null
                },
                "tag.attribute": {
                  "color": "#e5c890",
                  "font_style": "italic",
                  "font_weight": null
                },
                "tag.delimiter": {
                  "color": "#81c8be",
                  "font_style": null,
                  "font_weight": null
                },
                "type": {
                  "color": "#e5c890",
                  "font_style": null,
                  "font_weight": null
                },
                "type.builtin": {
                  "color": "#ca9ee6",
                  "font_style": "italic",
                  "font_weight": null
                },
                "type.definition": {
                  "color": "#e5c890",
                  "font_style": null,
                  "font_weight": null
                },
                "type.interface": {
                  "color": "#e5c890",
                  "font_style": "italic",
                  "font_weight": null
                },
                "type.super": {
                  "color": "#e5c890",
                  "font_style": "italic",
                  "font_weight": null
                },
                "attribute": {
                  "color": "#ef9f76",
                  "font_style": null,
                  "font_weight": null
                },
                "property": {
                  "color": "#8caaee",
                  "font_style": null,
                  "font_weight": null
                },
                "function": {
                  "color": "#8caaee",
                  "font_style": null,
                  "font_weight": null
                },
                "function.builtin": {
                  "color": "#ef9f76",
                  "font_style": null,
                  "font_weight": null
                },
                "function.call": {
                  "color": "#8caaee",
                  "font_style": null,
                  "font_weight": null
                },
                "function.macro": {
                  "color": "#81c8be",
                  "font_style": null,
                  "font_weight": null
                },
                "function.method": {
                  "color": "#8caaee",
                  "font_style": null,
                  "font_weight": null
                },
                "function.method.call": {
                  "color": "#8caaee",
                  "font_style": null,
                  "font_weight": null
                },
                "constructor": {
                  "color": "#eebebe",
                  "font_style": null,
                  "font_weight": null
                },
                "operator": {
                  "color": "#99d1db",
                  "font_style": null,
                  "font_weight": null
                },
                "keyword": {
                  "color": "#ca9ee6",
                  "font_style": null,
                  "font_weight": null
                },
                "keyword.modifier": {
                  "color": "#ca9ee6",
                  "font_style": null,
                  "font_weight": null
                },
                "keyword.type": {
                  "color": "#ca9ee6",
                  "font_style": null,
                  "font_weight": null
                },
                "keyword.coroutine": {
                  "color": "#ca9ee6",
                  "font_style": null,
                  "font_weight": null
                },
                "keyword.function": {
                  "color": "#ca9ee6",
                  "font_style": null,
                  "font_weight": null
                },
                "keyword.operator": {
                  "color": "#ca9ee6",
                  "font_style": null,
                  "font_weight": null
                },
                "keyword.import": {
                  "color": "#ca9ee6",
                  "font_style": null,
                  "font_weight": null
                },
                "keyword.repeat": {
                  "color": "#ca9ee6",
                  "font_style": null,
                  "font_weight": null
                },
                "keyword.return": {
                  "color": "#ca9ee6",
                  "font_style": null,
                  "font_weight": null
                },
                "keyword.debug": {
                  "color": "#ca9ee6",
                  "font_style": null,
                  "font_weight": null
                },
                "keyword.exception": {
                  "color": "#ca9ee6",
                  "font_style": null,
                  "font_weight": null
                },
                "keyword.conditional": {
                  "color": "#ca9ee6",
                  "font_style": null,
                  "font_weight": null
                },
                "keyword.conditional.ternary": {
                  "color": "#ca9ee6",
                  "font_style": null,
                  "font_weight": null
                },
                "keyword.directive": {
                  "color": "#f4b8e4",
                  "font_style": null,
                  "font_weight": null
                },
                "keyword.directive.define": {
                  "color": "#f4b8e4",
                  "font_style": null,
                  "font_weight": null
                },
                "keyword.export": {
                  "color": "#99d1db",
                  "font_style": null,
                  "font_weight": null
                },
                "punctuation": {
                  "color": "#949cbb",
                  "font_style": null,
                  "font_weight": null
                },
                "punctuation.delimiter": {
                  "color": "#949cbb",
                  "font_style": null,
                  "font_weight": null
                },
                "punctuation.bracket": {
                  "color": "#949cbb",
                  "font_style": null,
                  "font_weight": null
                },
                "punctuation.special": {
                  "color": "#f4b8e4",
                  "font_style": null,
                  "font_weight": null
                },
                "punctuation.special.symbol": {
                  "color": "#eebebe",
                  "font_style": null,
                  "font_weight": null
                },
                "punctuation.list_marker": {
                  "color": "#81c8be",
                  "font_style": null,
                  "font_weight": null
                },
                "comment": {
                  "color": "#949cbb",
                  "font_style": "italic",
                  "font_weight": null
                },
                "comment.doc": {
                  "color": "#949cbb",
                  "font_style": "italic",
                  "font_weight": null
                },
                "comment.documentation": {
                  "color": "#949cbb",
                  "font_style": "italic",
                  "font_weight": null
                },
                "comment.info": {
                  "color": "#81c8be",
                  "font_style": "italic",
                  "font_weight": null
                },
                "comment.error": {
                  "color": "#e78284",
                  "font_style": "italic",
                  "font_weight": null
                },
                "comment.warning": {
                  "color": "#e5c890",
                  "font_style": "italic",
                  "font_weight": null
                },
                "comment.warn": {
                  "color": "#e5c890",
                  "font_style": "italic",
                  "font_weight": null
                },
                "comment.hint": {
                  "color": "#8caaee",
                  "font_style": "italic",
                  "font_weight": null
                },
                "comment.todo": {
                  "color": "#eebebe",
                  "font_style": "italic",
                  "font_weight": null
                },
                "comment.note": {
                  "color": "#f2d5cf",
                  "font_style": "italic",
                  "font_weight": null
                },
                "diff.plus": {
                  "color": "#a6d189",
                  "font_style": null,
                  "font_weight": null
                },
                "diff.minus": {
                  "color": "#e78284",
                  "font_style": null,
                  "font_weight": null
                },
                "parameter": {
                  "color": "#ea999c",
                  "font_style": null,
                  "font_weight": null
                },
                "field": {
                  "color": "#babbf1",
                  "font_style": null,
                  "font_weight": null
                },
                "namespace": {
                  "color": "#e5c890",
                  "font_style": "italic",
                  "font_weight": null
                },
                "float": {
                  "color": "#ef9f76",
                  "font_style": null,
                  "font_weight": null
                },
                "symbol": {
                  "color": "#f4b8e4",
                  "font_style": null,
                  "font_weight": null
                },
                "string.regex": {
                  "color": "#ef9f76",
                  "font_style": null,
                  "font_weight": null
                },
                "text": {
                  "color": "#c6d0f5",
                  "font_style": null,
                  "font_weight": null
                },
                "emphasis.strong": {
                  "color": "#ea999c",
                  "font_style": null,
                  "font_weight": 700
                },
                "emphasis": {
                  "color": "#ea999c",
                  "font_style": "italic",
                  "font_weight": null
                },
                "embedded": {
                  "color": "#ea999c",
                  "font_style": null,
                  "font_weight": null
                },
                "text.literal": {
                  "color": "#a6d189",
                  "font_style": null,
                  "font_weight": null
                },
                "concept": {
                  "color": "#85c1dc",
                  "font_style": null,
                  "font_weight": null
                },
                "enum": {
                  "color": "#81c8be",
                  "font_style": null,
                  "font_weight": 700
                },
                "function.decorator": {
                  "color": "#ef9f76",
                  "font_style": null,
                  "font_weight": null
                },
                "type.class.definition": {
                  "color": "#e5c890",
                  "font_style": null,
                  "font_weight": 700
                },
                "hint": {
                  "color": "#838ba7",
                  "font_style": "italic",
                  "font_weight": null
                },
                "link_text": {
                  "color": "#babbf1",
                  "font_style": null,
                  "font_weight": null
                },
                "link_uri": {
                  "color": "#8caaee",
                  "font_style": "italic",
                  "font_weight": null
                },
                "parent": {
                  "color": "#ef9f76",
                  "font_style": null,
                  "font_weight": null
                },
                "predictive": {
                  "color": "#737994",
                  "font_style": null,
                  "font_weight": null
                },
                "predoc": {
                  "color": "#e78284",
                  "font_style": null,
                  "font_weight": null
                },
                "primary": {
                  "color": "#ea999c",
                  "font_style": null,
                  "font_weight": null
                },
                "tag.doctype": {
                  "color": "#ca9ee6",
                  "font_style": null,
                  "font_weight": null
                },
                "string.doc": {
                  "color": "#81c8be",
                  "font_style": "italic",
                  "font_weight": null
                },
                "title": {
                  "color": "#c6d0f5",
                  "font_style": null,
                  "font_weight": 800
                },
                "variant": {
                  "color": "#e78284",
                  "font_style": null,
                  "font_weight": null
                }
              }
            }
          },
          {
            "name": "Catppuccin Macchiato",
            "appearance": "dark",
            "style": {
              "accents": [
                "#c6a0f6",
                "#b7bdf8",
                "#7dc4e4",
                "#a6da95",
                "#eed49f",
                "#f5a97f",
                "#ed8796"
              ],
              "vim.mode.text": "#181926",
              "vim.normal.foreground": "#181926",
              "vim.helix_normal.foreground": "#181926",
              "vim.visual.foreground": "#181926",
              "vim.helix_select.foreground": "#181926",
              "vim.insert.foreground": "#181926",
              "vim.visual_line.foreground": "#181926",
              "vim.visual_block.foreground": "#181926",
              "vim.replace.foreground": "#181926",
              "vim.normal.background": "#f4dbd6",
              "vim.helix_normal.background": "#f4dbd6",
              "vim.visual.background": "#b7bdf8",
              "vim.helix_select.background": "#b7bdf8",
              "vim.insert.background": "#a6da95",
              "vim.visual_line.background": "#b7bdf8",
              "vim.visual_block.background": "#c6a0f6",
              "vim.replace.background": "#ee99a0",
              "background.appearance": "opaque",
              "border": "#363a4f",
              "border.variant": "#a98cd5",
              "border.focused": "#b7bdf8",
              "border.selected": "#c6a0f6",
              "border.transparent": "#a6da95",
              "border.disabled": "#6e738d",
              "elevated_surface.background": "#1e2030",
              "surface.background": "#1e2030",
              "background": "#2c2f46",
              "element.background": "#181926",
              "element.hover": "#363a4f",
              "element.active": "#5b60784d",
              "element.selected": "#363a4f4d",
              "element.disabled": "#6e738d",
              "drop_target.background": "#363a4f66",
              "ghost_element.background": "#00000000",
              "ghost_element.hover": "#494d644d",
              "ghost_element.active": "#5b607899",
              "ghost_element.selected": "#73799566",
              "ghost_element.disabled": "#6e738d",
              "text": "#cad3f5",
              "text.muted": "#b8c0e0",
              "text.placeholder": "#5b6078",
              "text.disabled": "#494d64",
              "text.accent": "#c6a0f6",
              "icon": "#cad3f5",
              "icon.muted": "#8087a2",
              "icon.disabled": "#6e738d",
              "icon.placeholder": "#5b6078",
              "icon.accent": "#c6a0f6",
              "status_bar.background": "#181926",
              "title_bar.background": "#181926",
              "title_bar.inactive_background": "#1e1f30",
              "toolbar.background": "#24273a",
              "tab_bar.background": "#181926",
              "tab.inactive_background": "#12121c",
              "tab.active_background": "#24273a",
              "search.match_background": "#8bd5ca4d",
              "search.active_match_background": "#ed87964d",
              "panel.background": "#1e2030",
              "panel.focused_border": "#cad3f5",
              "panel.indent_guide": "#363a4f99",
              "panel.indent_guide_active": "#5b6078",
              "panel.indent_guide_hover": "#c6a0f6",
              "panel.overlay_background": "#1e2030",
              "pane.focused_border": "#cad3f5",
              "pane_group.border": "#363a4f",
              "scrollbar.thumb.background": "#5b607880",
              "scrollbar.thumb.hover_background": "#6e738d",
              "scrollbar.thumb.active_background": null,
              "scrollbar.thumb.border": null,
              "scrollbar.track.background": "#181926",
              "scrollbar.track.border": "#cad3f512",
              "minimap.thumb.background": "#c6a0f633",
              "minimap.thumb.hover_background": "#c6a0f666",
              "minimap.thumb.active_background": "#c6a0f699",
              "minimap.thumb.border": null,
              "editor.foreground": "#cad3f5",
              "editor.background": "#24273a",
              "editor.gutter.background": "#24273a",
              "editor.subheader.background": "#1e2030",
              "editor.active_line.background": "#cad3f512",
              "editor.highlighted_line.background": null,
              "editor.line_number": "#8087a2",
              "editor.active_line_number": "#c6a0f6",
              "editor.invisible": "#939ab766",
              "editor.wrap_guide": "#5b6078",
              "editor.active_wrap_guide": "#5b6078",
              "editor.document_highlight.bracket_background": "#c6a0f617",
              "editor.document_highlight.read_background": "#a5adcb29",
              "editor.document_highlight.write_background": "#a5adcb29",
              "editor.indent_guide": "#363a4f99",
              "editor.indent_guide_active": "#5b6078",
              "terminal.background": "#24273a",
              "terminal.ansi.background": "#24273a",
              "terminal.foreground": "#cad3f5",
              "terminal.dim_foreground": "#8087a2",
              "terminal.bright_foreground": "#cad3f5",
              "terminal.ansi.black": "#494d64",
              "terminal.ansi.white": "#a5adcb",
              "terminal.ansi.red": "#ed8796",
              "terminal.ansi.green": "#a6da95",
              "terminal.ansi.yellow": "#eed49f",
              "terminal.ansi.blue": "#8aadf4",
              "terminal.ansi.magenta": "#f5bde6",
              "terminal.ansi.cyan": "#8bd5ca",
              "terminal.ansi.bright_black": "#5b6078",
              "terminal.ansi.bright_white": "#b8c0e0",
              "terminal.ansi.bright_red": "#ec7486",
              "terminal.ansi.bright_green": "#8ccf7f",
              "terminal.ansi.bright_yellow": "#e1c682",
              "terminal.ansi.bright_blue": "#78a1f6",
              "terminal.ansi.bright_magenta": "#f2a9dd",
              "terminal.ansi.bright_cyan": "#63cbc0",
              "terminal.ansi.dim_black": "#494d64",
              "terminal.ansi.dim_white": "#a5adcb",
              "terminal.ansi.dim_red": "#ed8796",
              "terminal.ansi.dim_green": "#a6da95",
              "terminal.ansi.dim_yellow": "#eed49f",
              "terminal.ansi.dim_blue": "#8aadf4",
              "terminal.ansi.dim_magenta": "#f5bde6",
              "terminal.ansi.dim_cyan": "#8bd5ca",
              "link_text.hover": "#91d7e3",
              "conflict": "#f5a97f",
              "conflict.border": "#f5a97f",
              "conflict.background": "#f5a97f26",
              "created": "#a6da95",
              "created.border": "#a6da95",
              "created.background": "#a6da9526",
              "deleted": "#ed8796",
              "deleted.border": "#ed8796",
              "deleted.background": "#ed879626",
              "hidden": "#6e738d",
              "hidden.border": "#6e738d",
              "hidden.background": "#1e2030",
              "hint": "#5b6078",
              "hint.border": "#5b6078",
              "hint.background": "#1e2030",
              "ignored": "#6e738d",
              "ignored.border": "#6e738d",
              "ignored.background": "#6e738d26",
              "modified": "#eed49f",
              "modified.border": "#eed49f",
              "modified.background": "#eed49f26",
              "predictive": "#6e738d",
              "predictive.border": "#b7bdf8",
              "predictive.background": "#1e2030",
              "renamed": "#7dc4e4",
              "renamed.border": "#7dc4e4",
              "renamed.background": "#7dc4e426",
              "info": "#8bd5ca",
              "info.border": "#8bd5ca",
              "info.background": "#939ab733",
              "warning": "#eed49f",
              "warning.border": "#eed49f",
              "warning.background": "#eed49f1f",
              "error": "#ed8796",
              "error.border": "#ed8796",
              "error.background": "#ed87961f",
              "success": "#a6da95",
              "success.border": "#a6da95",
              "success.background": "#a6da951f",
              "unreachable": "#ed8796",
              "unreachable.border": "#ed8796",
              "unreachable.background": "#ed87961f",
              "players": [
                {
                  "cursor": "#f4dbd6",
                  "selection": "#939ab740",
                  "background": "#f4dbd6"
                },
                {
                  "cursor": "#c6a0f6",
                  "selection": "#c6a0f640",
                  "background": "#c6a0f6"
                },
                {
                  "cursor": "#b7bdf8",
                  "selection": "#b7bdf840",
                  "background": "#b7bdf8"
                },
                {
                  "cursor": "#7dc4e4",
                  "selection": "#7dc4e440",
                  "background": "#7dc4e4"
                },
                {
                  "cursor": "#a6da95",
                  "selection": "#a6da9540",
                  "background": "#a6da95"
                },
                {
                  "cursor": "#eed49f",
                  "selection": "#eed49f40",
                  "background": "#eed49f"
                },
                {
                  "cursor": "#f5a97f",
                  "selection": "#f5a97f40",
                  "background": "#f5a97f"
                },
                {
                  "cursor": "#ed8796",
                  "selection": "#ed879640",
                  "background": "#ed8796"
                }
              ],
              "version_control.added": "#a6da95",
              "version_control.deleted": "#ed8796",
              "version_control.modified": "#eed49f",
              "version_control.renamed": "#7dc4e4",
              "version_control.conflict": "#f5a97f",
              "version_control.conflict_marker.ours": "#a6da9533",
              "version_control.conflict_marker.theirs": "#8aadf433",
              "version_control.ignored": "#6e738d",
              "debugger.accent": "#ed8796",
              "editor.debugger_active_line.background": "#f5a97f12",
              "syntax": {
                "variable": {
                  "color": "#cad3f5",
                  "font_style": null,
                  "font_weight": null
                },
                "variable.builtin": {
                  "color": "#ed8796",
                  "font_style": null,
                  "font_weight": null
                },
                "variable.parameter": {
                  "color": "#ee99a0",
                  "font_style": null,
                  "font_weight": null
                },
                "variable.member": {
                  "color": "#8aadf4",
                  "font_style": null,
                  "font_weight": null
                },
                "variable.special": {
                  "color": "#ed8796",
                  "font_style": "italic",
                  "font_weight": null
                },
                "constant": {
                  "color": "#f5a97f",
                  "font_style": null,
                  "font_weight": null
                },
                "constant.builtin": {
                  "color": "#f5a97f",
                  "font_style": null,
                  "font_weight": null
                },
                "constant.macro": {
                  "color": "#c6a0f6",
                  "font_style": null,
                  "font_weight": null
                },
                "module": {
                  "color": "#eed49f",
                  "font_style": "italic",
                  "font_weight": null
                },
                "label": {
                  "color": "#7dc4e4",
                  "font_style": null,
                  "font_weight": null
                },
                "string": {
                  "color": "#a6da95",
                  "font_style": null,
                  "font_weight": null
                },
                "string.documentation": {
                  "color": "#8bd5ca",
                  "font_style": null,
                  "font_weight": null
                },
                "string.regexp": {
                  "color": "#f5a97f",
                  "font_style": null,
                  "font_weight": null
                },
                "string.escape": {
                  "color": "#f5bde6",
                  "font_style": null,
                  "font_weight": null
                },
                "string.special": {
                  "color": "#f5bde6",
                  "font_style": null,
                  "font_weight": null
                },
                "string.special.path": {
                  "color": "#f5bde6",
                  "font_style": null,
                  "font_weight": null
                },
                "string.special.symbol": {
                  "color": "#f0c6c6",
                  "font_style": null,
                  "font_weight": null
                },
                "string.special.url": {
                  "color": "#f4dbd6",
                  "font_style": "italic",
                  "font_weight": null
                },
                "character": {
                  "color": "#8bd5ca",
                  "font_style": null,
                  "font_weight": null
                },
                "character.special": {
                  "color": "#f5bde6",
                  "font_style": null,
                  "font_weight": null
                },
                "boolean": {
                  "color": "#f5a97f",
                  "font_style": null,
                  "font_weight": null
                },
                "number": {
                  "color": "#f5a97f",
                  "font_style": null,
                  "font_weight": null
                },
                "number.float": {
                  "color": "#f5a97f",
                  "font_style": null,
                  "font_weight": null
                },
                "tag": {
                  "color": "#8aadf4",
                  "font_style": null,
                  "font_weight": null
                },
                "tag.attribute": {
                  "color": "#eed49f",
                  "font_style": "italic",
                  "font_weight": null
                },
                "tag.delimiter": {
                  "color": "#8bd5ca",
                  "font_style": null,
                  "font_weight": null
                },
                "type": {
                  "color": "#eed49f",
                  "font_style": null,
                  "font_weight": null
                },
                "type.builtin": {
                  "color": "#c6a0f6",
                  "font_style": "italic",
                  "font_weight": null
                },
                "type.definition": {
                  "color": "#eed49f",
                  "font_style": null,
                  "font_weight": null
                },
                "type.interface": {
                  "color": "#eed49f",
                  "font_style": "italic",
                  "font_weight": null
                },
                "type.super": {
                  "color": "#eed49f",
                  "font_style": "italic",
                  "font_weight": null
                },
                "attribute": {
                  "color": "#f5a97f",
                  "font_style": null,
                  "font_weight": null
                },
                "property": {
                  "color": "#8aadf4",
                  "font_style": null,
                  "font_weight": null
                },
                "function": {
                  "color": "#8aadf4",
                  "font_style": null,
                  "font_weight": null
                },
                "function.builtin": {
                  "color": "#f5a97f",
                  "font_style": null,
                  "font_weight": null
                },
                "function.call": {
                  "color": "#8aadf4",
                  "font_style": null,
                  "font_weight": null
                },
                "function.macro": {
                  "color": "#8bd5ca",
                  "font_style": null,
                  "font_weight": null
                },
                "function.method": {
                  "color": "#8aadf4",
                  "font_style": null,
                  "font_weight": null
                },
                "function.method.call": {
                  "color": "#8aadf4",
                  "font_style": null,
                  "font_weight": null
                },
                "constructor": {
                  "color": "#f0c6c6",
                  "font_style": null,
                  "font_weight": null
                },
                "operator": {
                  "color": "#91d7e3",
                  "font_style": null,
                  "font_weight": null
                },
                "keyword": {
                  "color": "#c6a0f6",
                  "font_style": null,
                  "font_weight": null
                },
                "keyword.modifier": {
                  "color": "#c6a0f6",
                  "font_style": null,
                  "font_weight": null
                },
                "keyword.type": {
                  "color": "#c6a0f6",
                  "font_style": null,
                  "font_weight": null
                },
                "keyword.coroutine": {
                  "color": "#c6a0f6",
                  "font_style": null,
                  "font_weight": null
                },
                "keyword.function": {
                  "color": "#c6a0f6",
                  "font_style": null,
                  "font_weight": null
                },
                "keyword.operator": {
                  "color": "#c6a0f6",
                  "font_style": null,
                  "font_weight": null
                },
                "keyword.import": {
                  "color": "#c6a0f6",
                  "font_style": null,
                  "font_weight": null
                },
                "keyword.repeat": {
                  "color": "#c6a0f6",
                  "font_style": null,
                  "font_weight": null
                },
                "keyword.return": {
                  "color": "#c6a0f6",
                  "font_style": null,
                  "font_weight": null
                },
                "keyword.debug": {
                  "color": "#c6a0f6",
                  "font_style": null,
                  "font_weight": null
                },
                "keyword.exception": {
                  "color": "#c6a0f6",
                  "font_style": null,
                  "font_weight": null
                },
                "keyword.conditional": {
                  "color": "#c6a0f6",
                  "font_style": null,
                  "font_weight": null
                },
                "keyword.conditional.ternary": {
                  "color": "#c6a0f6",
                  "font_style": null,
                  "font_weight": null
                },
                "keyword.directive": {
                  "color": "#f5bde6",
                  "font_style": null,
                  "font_weight": null
                },
                "keyword.directive.define": {
                  "color": "#f5bde6",
                  "font_style": null,
                  "font_weight": null
                },
                "keyword.export": {
                  "color": "#91d7e3",
                  "font_style": null,
                  "font_weight": null
                },
                "punctuation": {
                  "color": "#939ab7",
                  "font_style": null,
                  "font_weight": null
                },
                "punctuation.delimiter": {
                  "color": "#939ab7",
                  "font_style": null,
                  "font_weight": null
                },
                "punctuation.bracket": {
                  "color": "#939ab7",
                  "font_style": null,
                  "font_weight": null
                },
                "punctuation.special": {
                  "color": "#f5bde6",
                  "font_style": null,
                  "font_weight": null
                },
                "punctuation.special.symbol": {
                  "color": "#f0c6c6",
                  "font_style": null,
                  "font_weight": null
                },
                "punctuation.list_marker": {
                  "color": "#8bd5ca",
                  "font_style": null,
                  "font_weight": null
                },
                "comment": {
                  "color": "#939ab7",
                  "font_style": "italic",
                  "font_weight": null
                },
                "comment.doc": {
                  "color": "#939ab7",
                  "font_style": "italic",
                  "font_weight": null
                },
                "comment.documentation": {
                  "color": "#939ab7",
                  "font_style": "italic",
                  "font_weight": null
                },
                "comment.info": {
                  "color": "#8bd5ca",
                  "font_style": "italic",
                  "font_weight": null
                },
                "comment.error": {
                  "color": "#ed8796",
                  "font_style": "italic",
                  "font_weight": null
                },
                "comment.warning": {
                  "color": "#eed49f",
                  "font_style": "italic",
                  "font_weight": null
                },
                "comment.warn": {
                  "color": "#eed49f",
                  "font_style": "italic",
                  "font_weight": null
                },
                "comment.hint": {
                  "color": "#8aadf4",
                  "font_style": "italic",
                  "font_weight": null
                },
                "comment.todo": {
                  "color": "#f0c6c6",
                  "font_style": "italic",
                  "font_weight": null
                },
                "comment.note": {
                  "color": "#f4dbd6",
                  "font_style": "italic",
                  "font_weight": null
                },
                "diff.plus": {
                  "color": "#a6da95",
                  "font_style": null,
                  "font_weight": null
                },
                "diff.minus": {
                  "color": "#ed8796",
                  "font_style": null,
                  "font_weight": null
                },
                "parameter": {
                  "color": "#ee99a0",
                  "font_style": null,
                  "font_weight": null
                },
                "field": {
                  "color": "#b7bdf8",
                  "font_style": null,
                  "font_weight": null
                },
                "namespace": {
                  "color": "#eed49f",
                  "font_style": "italic",
                  "font_weight": null
                },
                "float": {
                  "color": "#f5a97f",
                  "font_style": null,
                  "font_weight": null
                },
                "symbol": {
                  "color": "#f5bde6",
                  "font_style": null,
                  "font_weight": null
                },
                "string.regex": {
                  "color": "#f5a97f",
                  "font_style": null,
                  "font_weight": null
                },
                "text": {
                  "color": "#cad3f5",
                  "font_style": null,
                  "font_weight": null
                },
                "emphasis.strong": {
                  "color": "#ee99a0",
                  "font_style": null,
                  "font_weight": 700
                },
                "emphasis": {
                  "color": "#ee99a0",
                  "font_style": "italic",
                  "font_weight": null
                },
                "embedded": {
                  "color": "#ee99a0",
                  "font_style": null,
                  "font_weight": null
                },
                "text.literal": {
                  "color": "#a6da95",
                  "font_style": null,
                  "font_weight": null
                },
                "concept": {
                  "color": "#7dc4e4",
                  "font_style": null,
                  "font_weight": null
                },
                "enum": {
                  "color": "#8bd5ca",
                  "font_style": null,
                  "font_weight": 700
                },
                "function.decorator": {
                  "color": "#f5a97f",
                  "font_style": null,
                  "font_weight": null
                },
                "type.class.definition": {
                  "color": "#eed49f",
                  "font_style": null,
                  "font_weight": 700
                },
                "hint": {
                  "color": "#8087a2",
                  "font_style": "italic",
                  "font_weight": null
                },
                "link_text": {
                  "color": "#b7bdf8",
                  "font_style": null,
                  "font_weight": null
                },
                "link_uri": {
                  "color": "#8aadf4",
                  "font_style": "italic",
                  "font_weight": null
                },
                "parent": {
                  "color": "#f5a97f",
                  "font_style": null,
                  "font_weight": null
                },
                "predictive": {
                  "color": "#6e738d",
                  "font_style": null,
                  "font_weight": null
                },
                "predoc": {
                  "color": "#ed8796",
                  "font_style": null,
                  "font_weight": null
                },
                "primary": {
                  "color": "#ee99a0",
                  "font_style": null,
                  "font_weight": null
                },
                "tag.doctype": {
                  "color": "#c6a0f6",
                  "font_style": null,
                  "font_weight": null
                },
                "string.doc": {
                  "color": "#8bd5ca",
                  "font_style": "italic",
                  "font_weight": null
                },
                "title": {
                  "color": "#cad3f5",
                  "font_style": null,
                  "font_weight": 800
                },
                "variant": {
                  "color": "#ed8796",
                  "font_style": null,
                  "font_weight": null
                }
              }
            }
          },
          {
            "name": "Dark",
            "appearance": "dark",
            "style": {
              "accents": [
                "#cba6f7",
                "#b4befe",
                "#74c7ec",
                "#a6e3a1",
                "#f9e2af",
                "#fab387",
                "#f38ba8"
              ],
              "vim.mode.text": "#11111b",
              "vim.normal.foreground": "#11111b",
              "vim.helix_normal.foreground": "#11111b",
              "vim.visual.foreground": "#11111b",
              "vim.helix_select.foreground": "#11111b",
              "vim.insert.foreground": "#11111b",
              "vim.visual_line.foreground": "#11111b",
              "vim.visual_block.foreground": "#11111b",
              "vim.replace.foreground": "#11111b",
              "vim.normal.background": "#f5e0dc",
              "vim.helix_normal.background": "#f5e0dc",
              "vim.visual.background": "#b4befe",
              "vim.helix_select.background": "#b4befe",
              "vim.insert.background": "#a6e3a1",
              "vim.visual_line.background": "#b4befe",
              "vim.visual_block.background": "#cba6f7",
              "vim.replace.background": "#eba0ac",
              "background.appearance": "opaque",
              "border": "#323345a1",
              "border.variant": "#ac8fd4",
              "border.focused": "#b4befe",
              "border.selected": "#cba6f7",
              "border.transparent": "#a6e3a1",
              "border.disabled": "#6c7086",
              "elevated_surface.background": "#11111C",
              "surface.background": "#383856",
              "background": "#11111C",
              "element.background": "#11111C",
              "element.hover": "#313244",
              "element.active": "#585b704d",
              "element.selected": "#3132444d",
              "element.disabled": "#6c7086",
              "drop_target.background": "#31324466",
              "ghost_element.background": "#00000000",
              "ghost_element.hover": "#45475a4d",
              "ghost_element.active": "#585b7099",
              "ghost_element.selected": "#6f728d66",
              "ghost_element.disabled": "#6c7086",
              "text": "#cdd6f4",
              "text.muted": "#bac2de",
              "text.placeholder": "#585b70",
              "text.disabled": "#45475a",
              "text.accent": "#cba6f7",
              "icon": "#cdd6f4",
              "icon.muted": "#7f849c",
              "icon.disabled": "#6c7086",
              "icon.placeholder": "#585b70",
              "icon.accent": "#cba6f7",
              "status_bar.background": "#11111b",
              "title_bar.background": "#11111C",
              "title_bar.inactive_background": "#171725",
              "toolbar.background": "#11111C",
              "tab_bar.background": "#11111C",
              "tab.inactive_background": "#11111C",
              "tab.active_background": "#a2a2fa14",
              "search.match_background": "#94e3d659",
              "search.active_match_background": "#f38ba84d",
              "panel.background": "#11111C",
              "panel.focused_border": "#cdd6f4",
              "panel.indent_guide": "#31324499",
              "panel.indent_guide_active": "#585b70",
              "panel.indent_guide_hover": "#cba6f7",
              "panel.overlay_background": "#181825",
              "pane.focused_border": "#cdd6f4",
              "pane_group.border": "#313244",
              "scrollbar.thumb.background": "#585b7080",
              "scrollbar.thumb.hover_background": "#6c7086",
              "scrollbar.thumb.active_background": null,
              "scrollbar.thumb.border": null,
              "scrollbar.track.background": "#11111C",
              "scrollbar.track.border": "#cdd6f412",
              "minimap.thumb.background": "#cba6f733",
              "minimap.thumb.hover_background": "#cba6f766",
              "minimap.thumb.active_background": "#cba6f799",
              "minimap.thumb.border": null,
              "editor.foreground": "#ccd7fd",
              "editor.background": "#11111C",
              "editor.gutter.background": "#11111C",
              "editor.subheader.background": "#11111C",
              "editor.active_line.background": "#ced7f50d",
              "editor.highlighted_line.background": null,
              "editor.line_number": "#56609280",
              "editor.active_line_number": "#cba6f7",
              "editor.invisible": "#42539766",
              "editor.wrap_guide": "#585b70",
              "editor.active_wrap_guide": "#585b70",
              "editor.document_highlight.bracket_background": "#cba6f717",
              "editor.document_highlight.read_background": "#a6adc829",
              "editor.document_highlight.write_background": "#a6adc829",
              "editor.indent_guide": "#31324499",
              "editor.indent_guide_active": "#585b70",
              "terminal.background": "#11111C",
              "terminal.ansi.background": "#1e1e2e",
              "terminal.foreground": "#cdd6f4",
              "terminal.dim_foreground": "#7f849c",
              "terminal.bright_foreground": "#cdd6f4",
              "terminal.ansi.black": "#45475a",
              "terminal.ansi.white": "#a6adc8",
              "terminal.ansi.red": "#f38ba8",
              "terminal.ansi.green": "#a6e3a1",
              "terminal.ansi.yellow": "#f9e2af",
              "terminal.ansi.blue": "#89b4fa",
              "terminal.ansi.magenta": "#f5c2e7",
              "terminal.ansi.cyan": "#94e2d5",
              "terminal.ansi.bright_black": "#585b70",
              "terminal.ansi.bright_white": "#bac2de",
              "terminal.ansi.bright_red": "#f37799",
              "terminal.ansi.bright_green": "#89d88b",
              "terminal.ansi.bright_yellow": "#ebd391",
              "terminal.ansi.bright_blue": "#74a8fc",
              "terminal.ansi.bright_magenta": "#f2aede",
              "terminal.ansi.bright_cyan": "#6bd7ca",
              "terminal.ansi.dim_black": "#45475a",
              "terminal.ansi.dim_white": "#a6adc8",
              "terminal.ansi.dim_red": "#f38ba8",
              "terminal.ansi.dim_green": "#a6e3a1",
              "terminal.ansi.dim_yellow": "#f9e2af",
              "terminal.ansi.dim_blue": "#89b4fa",
              "terminal.ansi.dim_magenta": "#f5c2e7",
              "terminal.ansi.dim_cyan": "#94e2d5",
              "link_text.hover": "#89dceb",
              "conflict": "#fab387",
              "conflict.border": "#fab387",
              "conflict.background": "#fab38726",
              "created": "#a6e3a1",
              "created.border": "#a6e3a1",
              "created.background": "#a6e3a126",
              "deleted": "#f38ba8",
              "deleted.border": "#f38ba8",
              "deleted.background": "#f38ba826",
              "hidden": "#6c7086",
              "hidden.border": "#6c7086",
              "hidden.background": "#181825",
              "hint": "#585b70",
              "hint.border": "#585b70",
              "hint.background": "#181825",
              "ignored": "#6c7086",
              "ignored.border": "#6c7086",
              "ignored.background": "#6c708626",
              "modified": "#f9e2af",
              "modified.border": "#f9e2af",
              "modified.background": "#f9e2af26",
              "predictive": "#6c7086",
              "predictive.border": "#b4befe",
              "predictive.background": "#181825",
              "renamed": "#74c7ec",
              "renamed.border": "#74c7ec",
              "renamed.background": "#74c7ec26",
              "info": "#94e2d5",
              "info.border": "#94e2d5",
              "info.background": "#9399b233",
              "warning": "#f9e2af",
              "warning.border": "#f9e2af",
              "warning.background": "#f9e2af1f",
              "error": "#f38ba8",
              "error.border": "#f38ba8",
              "error.background": "#f38ba81f",
              "success": "#a6e3a1",
              "success.border": "#a6e3a1",
              "success.background": "#a6e3a11f",
              "unreachable": "#f38ba8",
              "unreachable.border": "#f38ba8",
              "unreachable.background": "#f38ba81f",
              "players": [
                {
                  "cursor": "#f5e0dc",
                  "selection": "#9399b240",
                  "background": "#f5e0dc"
                },
                {
                  "cursor": "#cba6f7",
                  "selection": "#cba6f740",
                  "background": "#cba6f7"
                },
                {
                  "cursor": "#b4befe",
                  "selection": "#b4befe40",
                  "background": "#b4befe"
                },
                {
                  "cursor": "#74c7ec",
                  "selection": "#74c7ec40",
                  "background": "#74c7ec"
                },
                {
                  "cursor": "#a6e3a1",
                  "selection": "#a6e3a140",
                  "background": "#a6e3a1"
                },
                {
                  "cursor": "#f9e2af",
                  "selection": "#f9e2af40",
                  "background": "#f9e2af"
                },
                {
                  "cursor": "#fab387",
                  "selection": "#fab38740",
                  "background": "#fab387"
                },
                {
                  "cursor": "#f38ba8",
                  "selection": "#f38ba840",
                  "background": "#f38ba8"
                }
              ],
              "version_control.added": "#a6e3a1",
              "version_control.deleted": "#f38ba8",
              "version_control.modified": "#f9e2af",
              "version_control.renamed": "#74c7ec",
              "version_control.conflict": "#fab387",
              "version_control.conflict_marker.ours": "#a6e3a133",
              "version_control.conflict_marker.theirs": "#89b4fa33",
              "version_control.ignored": "#6c7086",
              "debugger.accent": "#f38ba8",
              "editor.debugger_active_line.background": "#fab38712",
              "syntax": {
                "variable": {
                  "color": "#cdd6f4",
                  "font_style": null,
                  "font_weight": null
                },
                "variable.builtin": {
                  "color": "#f38ba8",
                  "font_style": null,
                  "font_weight": null
                },
                "variable.parameter": {
                  "color": "#eba0ac",
                  "font_style": null,
                  "font_weight": null
                },
                "variable.member": {
                  "color": "#89b4fa",
                  "font_style": null,
                  "font_weight": null
                },
                "variable.special": {
                  "color": "#f38ba8",
                  "font_style": "italic",
                  "font_weight": null
                },
                "constant": {
                  "color": "#fab387",
                  "font_style": null,
                  "font_weight": null
                },
                "constant.builtin": {
                  "color": "#fab387",
                  "font_style": null,
                  "font_weight": null
                },
                "constant.macro": {
                  "color": "#cba6f7",
                  "font_style": null,
                  "font_weight": null
                },
                "module": {
                  "color": "#f9e2af",
                  "font_style": "italic",
                  "font_weight": null
                },
                "label": {
                  "color": "#74c7ec",
                  "font_style": null,
                  "font_weight": null
                },
                "string": {
                  "color": "#a6e3a1",
                  "font_style": null,
                  "font_weight": null
                },
                "string.documentation": {
                  "color": "#94e2d5",
                  "font_style": null,
                  "font_weight": null
                },
                "string.regexp": {
                  "color": "#fab387",
                  "font_style": null,
                  "font_weight": null
                },
                "string.escape": {
                  "color": "#f5c2e7",
                  "font_style": null,
                  "font_weight": null
                },
                "string.special": {
                  "color": "#f5c2e7",
                  "font_style": null,
                  "font_weight": null
                },
                "string.special.path": {
                  "color": "#f5c2e7",
                  "font_style": null,
                  "font_weight": null
                },
                "string.special.symbol": {
                  "color": "#f2cdcd",
                  "font_style": null,
                  "font_weight": null
                },
                "string.special.url": {
                  "color": "#f5e0dc",
                  "font_style": "italic",
                  "font_weight": null
                },
                "character": {
                  "color": "#94e2d5",
                  "font_style": null,
                  "font_weight": null
                },
                "character.special": {
                  "color": "#f5c2e7",
                  "font_style": null,
                  "font_weight": null
                },
                "boolean": {
                  "color": "#fab387",
                  "font_style": null,
                  "font_weight": null
                },
                "number": {
                  "color": "#fab387",
                  "font_style": null,
                  "font_weight": null
                },
                "number.float": {
                  "color": "#fab387",
                  "font_style": null,
                  "font_weight": null
                },
                "tag": {
                  "color": "#89b4fa",
                  "font_style": null,
                  "font_weight": null
                },
                "tag.attribute": {
                  "color": "#f9e2af",
                  "font_style": "italic",
                  "font_weight": null
                },
                "tag.delimiter": {
                  "color": "#94e2d5",
                  "font_style": null,
                  "font_weight": null
                },
                "type": {
                  "color": "#f9e2af",
                  "font_style": null,
                  "font_weight": null
                },
                "type.builtin": {
                  "color": "#cba6f7",
                  "font_style": "italic",
                  "font_weight": null
                },
                "type.definition": {
                  "color": "#f9e2af",
                  "font_style": null,
                  "font_weight": null
                },
                "type.interface": {
                  "color": "#f9e2af",
                  "font_style": "italic",
                  "font_weight": null
                },
                "type.super": {
                  "color": "#f9e2af",
                  "font_style": "italic",
                  "font_weight": null
                },
                "attribute": {
                  "color": "#fab387",
                  "font_style": null,
                  "font_weight": null
                },
                "property": {
                  "color": "#89b4fa",
                  "font_style": null,
                  "font_weight": null
                },
                "function": {
                  "color": "#89b4fa",
                  "font_style": null,
                  "font_weight": null
                },
                "function.builtin": {
                  "color": "#fab387",
                  "font_style": null,
                  "font_weight": null
                },
                "function.call": {
                  "color": "#89b4fa",
                  "font_style": null,
                  "font_weight": null
                },
                "function.macro": {
                  "color": "#94e2d5",
                  "font_style": null,
                  "font_weight": null
                },
                "function.method": {
                  "color": "#89b4fa",
                  "font_style": null,
                  "font_weight": null
                },
                "function.method.call": {
                  "color": "#89b4fa",
                  "font_style": null,
                  "font_weight": null
                },
                "constructor": {
                  "color": "#f2cdcd",
                  "font_style": null,
                  "font_weight": null
                },
                "operator": {
                  "color": "#89dceb",
                  "font_style": null,
                  "font_weight": null
                },
                "keyword": {
                  "color": "#cba6f7",
                  "font_style": null,
                  "font_weight": null
                },
                "keyword.modifier": {
                  "color": "#cba6f7",
                  "font_style": null,
                  "font_weight": null
                },
                "keyword.type": {
                  "color": "#cba6f7",
                  "font_style": null,
                  "font_weight": null
                },
                "keyword.coroutine": {
                  "color": "#cba6f7",
                  "font_style": null,
                  "font_weight": null
                },
                "keyword.function": {
                  "color": "#cba6f7",
                  "font_style": null,
                  "font_weight": null
                },
                "keyword.operator": {
                  "color": "#cba6f7",
                  "font_style": null,
                  "font_weight": null
                },
                "keyword.import": {
                  "color": "#cba6f7",
                  "font_style": null,
                  "font_weight": null
                },
                "keyword.repeat": {
                  "color": "#cba6f7",
                  "font_style": null,
                  "font_weight": null
                },
                "keyword.return": {
                  "color": "#cba6f7",
                  "font_style": null,
                  "font_weight": null
                },
                "keyword.debug": {
                  "color": "#cba6f7",
                  "font_style": null,
                  "font_weight": null
                },
                "keyword.exception": {
                  "color": "#cba6f7",
                  "font_style": null,
                  "font_weight": null
                },
                "keyword.conditional": {
                  "color": "#cba6f7",
                  "font_style": null,
                  "font_weight": null
                },
                "keyword.conditional.ternary": {
                  "color": "#cba6f7",
                  "font_style": null,
                  "font_weight": null
                },
                "keyword.directive": {
                  "color": "#f5c2e7",
                  "font_style": null,
                  "font_weight": null
                },
                "keyword.directive.define": {
                  "color": "#f5c2e7",
                  "font_style": null,
                  "font_weight": null
                },
                "keyword.export": {
                  "color": "#89dceb",
                  "font_style": null,
                  "font_weight": null
                },
                "punctuation": {
                  "color": "#9399b2",
                  "font_style": null,
                  "font_weight": null
                },
                "punctuation.delimiter": {
                  "color": "#9399b2",
                  "font_style": null,
                  "font_weight": null
                },
                "punctuation.bracket": {
                  "color": "#9399b2",
                  "font_style": null,
                  "font_weight": null
                },
                "punctuation.special": {
                  "color": "#f5c2e7",
                  "font_style": null,
                  "font_weight": null
                },
                "punctuation.special.symbol": {
                  "color": "#f2cdcd",
                  "font_style": null,
                  "font_weight": null
                },
                "punctuation.list_marker": {
                  "color": "#94e2d5",
                  "font_style": null,
                  "font_weight": null
                },
                "comment": {
                  "color": "#9399b2",
                  "font_style": "italic",
                  "font_weight": null
                },
                "comment.doc": {
                  "color": "#9399b2",
                  "font_style": "italic",
                  "font_weight": null
                },
                "comment.documentation": {
                  "color": "#9399b2",
                  "font_style": "italic",
                  "font_weight": null
                },
                "comment.info": {
                  "color": "#94e2d5",
                  "font_style": "italic",
                  "font_weight": null
                },
                "comment.error": {
                  "color": "#f38ba8",
                  "font_style": "italic",
                  "font_weight": null
                },
                "comment.warning": {
                  "color": "#f9e2af",
                  "font_style": "italic",
                  "font_weight": null
                },
                "comment.warn": {
                  "color": "#f9e2af",
                  "font_style": "italic",
                  "font_weight": null
                },
                "comment.hint": {
                  "color": "#89b4fa",
                  "font_style": "italic",
                  "font_weight": null
                },
                "comment.todo": {
                  "color": "#f2cdcd",
                  "font_style": "italic",
                  "font_weight": null
                },
                "comment.note": {
                  "color": "#f5e0dc",
                  "font_style": "italic",
                  "font_weight": null
                },
                "diff.plus": {
                  "color": "#a6e3a1",
                  "font_style": null,
                  "font_weight": null
                },
                "diff.minus": {
                  "color": "#f38ba8",
                  "font_style": null,
                  "font_weight": null
                },
                "parameter": {
                  "color": "#eba0ac",
                  "font_style": null,
                  "font_weight": null
                },
                "field": {
                  "color": "#b4befe",
                  "font_style": null,
                  "font_weight": null
                },
                "namespace": {
                  "color": "#f9e2af",
                  "font_style": "italic",
                  "font_weight": null
                },
                "float": {
                  "color": "#fab387",
                  "font_style": null,
                  "font_weight": null
                },
                "symbol": {
                  "color": "#f5c2e7",
                  "font_style": null,
                  "font_weight": null
                },
                "string.regex": {
                  "color": "#fab387",
                  "font_style": null,
                  "font_weight": null
                },
                "text": {
                  "color": "#cdd6f4",
                  "font_style": null,
                  "font_weight": null
                },
                "emphasis.strong": {
                  "color": "#eba0ac",
                  "font_style": null,
                  "font_weight": 700
                },
                "emphasis": {
                  "color": "#eba0ac",
                  "font_style": "italic",
                  "font_weight": null
                },
                "embedded": {
                  "color": "#eba0ac",
                  "font_style": null,
                  "font_weight": null
                },
                "text.literal": {
                  "color": "#a6e3a1",
                  "font_style": null,
                  "font_weight": null
                },
                "concept": {
                  "color": "#74c7ec",
                  "font_style": null,
                  "font_weight": null
                },
                "enum": {
                  "color": "#94e2d5",
                  "font_style": null,
                  "font_weight": 700
                },
                "function.decorator": {
                  "color": "#fab387",
                  "font_style": null,
                  "font_weight": null
                },
                "type.class.definition": {
                  "color": "#f9e2af",
                  "font_style": null,
                  "font_weight": 700
                },
                "hint": {
                  "color": "#7f849c",
                  "font_style": "italic",
                  "font_weight": null
                },
                "link_text": {
                  "color": "#b4befe",
                  "font_style": null,
                  "font_weight": null
                },
                "link_uri": {
                  "color": "#89b4fa",
                  "font_style": "italic",
                  "font_weight": null
                },
                "parent": {
                  "color": "#fab387",
                  "font_style": null,
                  "font_weight": null
                },
                "predictive": {
                  "color": "#6c7086",
                  "font_style": null,
                  "font_weight": null
                },
                "predoc": {
                  "color": "#f38ba8",
                  "font_style": null,
                  "font_weight": null
                },
                "primary": {
                  "color": "#eba0ac",
                  "font_style": null,
                  "font_weight": null
                },
                "tag.doctype": {
                  "color": "#cba6f7",
                  "font_style": null,
                  "font_weight": null
                },
                "string.doc": {
                  "color": "#94e2d5",
                  "font_style": "italic",
                  "font_weight": null
                },
                "title": {
                  "color": "#cdd6f4",
                  "font_style": null,
                  "font_weight": 800
                },
                "variant": {
                  "color": "#f38ba8",
                  "font_style": null,
                  "font_weight": null
                }
              }
            }
          }
        ],
        "id": "3EnRSEAuCMURaTUn3CA7b"
      }
    '';
  };
}
