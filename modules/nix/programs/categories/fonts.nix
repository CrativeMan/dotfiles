{ config, pkgs, inputs, ... }:
let

in
{
  environment.systemPackages = with pkgs; [
    nerdfonts
  ];
}

