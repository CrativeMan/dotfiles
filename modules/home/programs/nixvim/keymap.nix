{
  keymaps = [
    # Toggle NvimTree
    {
      mode = "n";
      key = "<C-n>";
      action = "<cmd>NvimTreeToggle<CR>";
      options.desc = "Toggle file tree";
    }
    # Copy to clipboard
    {
      mode = "n";
      key = "<C-c>";
      action = "<cmd>%y+<CR>";
      options.desc = "Copy buffer to clipboard";
    }

    # Buffer navigation
    {
      mode = "n";
      key = "<S-h>";
      action = "<cmd>bprevious<CR>";
      options.desc = "Previous buffer";
    }
    {
      mode = "n";
      key = "<S-l>";
      action = "<cmd>bnext<CR>";
      options.desc = "Next buffer";
    }
    {
      mode = "n";
      key = "<leader>bd";
      action = "<cmd>bdelete<CR>";
      options.desc = "Delete buffer";
    }

    # Window navigation
    {
      mode = "n";
      key = "<C-h>";
      action = "<C-w>h";
      options.desc = "Focus left split";
    }
    {
      mode = "n";
      key = "<C-j>";
      action = "<C-w>j";
      options.desc = "Focus split below";
    }
    {
      mode = "n";
      key = "<C-k>";
      action = "<C-w>k";
      options.desc = "Focus split above";
    }
    {
      mode = "n";
      key = "<C-l>";
      action = "<C-w>l";
      options.desc = "Focus right split";
    }

    # Split creation
    {
      mode = "n";
      key = "<leader>sv";
      action = "<cmd>vsplit<CR>";
      options.desc = "Vertical split";
    }
    {
      mode = "n";
      key = "<leader>sh";
      action = "<cmd>split<CR>";
      options.desc = "Horizontal split";
    }
    {
      mode = "n";
      key = "<leader>sc";
      action = "<C-w>c";
      options.desc = "Close split";
    }

    # Telescope extras
    {
      mode = "n";
      key = "<leader>ft";
      action = "<cmd>TodoTelescope<CR>";
      options.desc = "Find TODOs";
    }

    # Trouble
    {
      mode = "n";
      key = "<leader>xx";
      action = "<cmd>Trouble diagnostics toggle<CR>";
      options.desc = "Project diagnostics";
    }
    {
      mode = "n";
      key = "<leader>xd";
      action = "<cmd>Trouble diagnostics toggle filter.buf=0<CR>";
      options.desc = "File diagnostics";
    }
  ];
}
