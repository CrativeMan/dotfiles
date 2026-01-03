{
  plugins.nvim-tree = {
    enable = true;
    filesystemWatchers.enable = true;

    view = {
      side = "right";
      preserveWindowProportions = true;
    };

    git = {
      enable = true;
      ignore = false;
    };

    updateFocusedFile = {
      enable = true;
      updateRoot = false;
    };

    renderer = {
      indentMarkers.enable = false;
      icons = {
        show = {
          file = true;
          folder = true;
          folderArrow = true;
          git = true;
        };
        glyphs = {
          default = "󰈚";
          symlink = "";
          folder = {
            default = "";
            empty = "";
            emptyOpen = "";
            open = "";
            symlink = "";
            symlinkOpen = "";
            arrowOpen = "";
            arrowClosed = "";
          };
          git = {
            unstaged = "✗";
            staged = "✓";
            unmerged = "";
            renamed = "➜";
            untracked = "★";
            deleted = "";
            ignored = "◌";
          };
        };
      };
    };
  };
}
