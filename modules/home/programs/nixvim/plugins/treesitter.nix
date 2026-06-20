{pkgs, ...}: {
  # nvim-treesitter 0.10+ removed the configs module; shim it so nixvim's
  # generated setup call doesn't crash on startup
  extraConfigLuaPre = ''
    package.loaded["nvim-treesitter.configs"] = { setup = function(_) end }
  '';

  plugins.treesitter = {
    enable = true;
    grammarPackages = with pkgs.vimPlugins.nvim-treesitter.builtGrammars; [
      bash
      lua
      make
      markdown
      nix
      regex
      toml
      vim
      vimdoc
      xml
      yaml
      java
      go
      c
      cpp
    ];
  };
}
