{
  lib,
  inputs,
  ...
}: {
  imports = [inputs.nixvim.homeManagerModules.nixvim];
  programs.nixvim = lib.mkMerge [
    (import ./nixvim.nix)
    (import ./keymap.nix)
    (import ./options.nix)
    (import ./plugins/plugins.nix)
    (import ./plugins/nvim-tree.nix)
    (import ./plugins/telescope.nix)
    (import ./plugins/lsp.nix)
    (import ./plugins/cmp.nix)
    (import ./plugins/treesitter.nix)
  ];
}
