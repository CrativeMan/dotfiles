{
  keymaps = [
    # Toggle NvimTree
    {
      mode = "n";
      key = "<C-n>";
      action = "<cmd> NvimTreeToggle <CR>";
    }
    # Copy to clipboard
    {
      mode = "n";
      key = "<C-c>";
      action = "<cmd> %y+ <CR>";
    }
  ];
}
