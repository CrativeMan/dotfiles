{
  plugins.rustaceanvim = {
    enable = true;
    settings = {
      server = {
        auto_attach = true;
      };
    };
  };

  keymaps = [
    {
      mode = "n";
      key = "<leader>rr";
      action = "<cmd>RustLsp runnables<CR>";
      options.desc = "Rust runnables";
    }
    {
      mode = "n";
      key = "<leader>re";
      action = "<cmd>RustLsp expandMacro<CR>";
      options.desc = "Rust expand macro";
    }
  ];
}
