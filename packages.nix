{ config, pkgs, ... }:

{
  nixpkgs.config.firefox =
    { #enableGnomeExtensions = true;
      #enableGoogleTalkPlugin = true;
      enableAdobeFlash = true;
    };

  environment.systemPackages = with pkgs;
    [ # Shells
      zsh

      # Editors
      vim
      emacs

      # Browser
      firefoxWrapper

      # Development
      # (git.override { guiSupport = true; })
      git

      # Desktop Env
      dmenu

      # Bits of Gnome
      # gnome3.gnome_terminal
      evince

      # Terminal emulator
      termite

      # Admin
      acpi
      file
      gparted
      htop
      tree

      # Nix
      nix-repl
    ];

  #nix.binaryCaches = builtins.concatLists [ config.nix.binaryCaches.default [ "https://hydra.nixos.org/" "http://hydra.cryp.to" ] ];
  nix.binaryCaches = [ "http://cache.nixos.org/" "https://hydra.nixos.org/" "http://hydra.cryp.to" ];
}
