{ nixos, lib, pkgs, config, stdenv, ... }:

{
  imports =
    [
      ./persistence.nix
      ../../hardware/t490.nix
      ../../modules/i3.nix
      # ../../modules/desktop.nix
      ../../modules/fonts.nix
      ../../modules/dev.nix
      ../../modules/office.nix
      #../../modules/lxc.nix
      ../../users/sth/user.nix
    ];

  networking.hostName = "twentyone"; # Define your hostname.
  networking.hostId = "9e8572a8";

  networking.interfaces.enp0s31f6.useDHCP = true;
  networking.interfaces.wlp0s20f3.useDHCP = true;
}
