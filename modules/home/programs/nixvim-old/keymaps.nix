{...}:

{
  programs.nixvim = {
    keymaps = [
      {
        mode = "n";
        key = "<C-n>";
        action = "<cmd> NvimTreeToggle <CR>";
      }
      {
        mode = "n";
        key = "<C-c>";
        action = "<cmd> %y+ <CR>";
      }
      {
        key = "<Esc>";
        action = "<cmd> noh <CR>";
      }
      {
        mode = "n";
        key = "<leader>n";
        action = "<cmd> enew <CR>";
      }
      

      {
        mode = "i";
        key = "<CR>";
        action = ''require("cmp").mapping.confirm({ select = false })'';
      }

      # navigation
      {
        mode = "n";
        key = "<C-h>";
        action = "<C-w>h";
      }
      {
        mode = "n";
        key = "<C-j>";
        action = "<C-w>j";
      }
      {
        mode = "n";
        key = "<C-k>";
        action = "<C-w>k";
      }
      {
        mode = "n";
        key = "<C-l>";
        action = "<C-w>l";
      }
    ];
  };
}
