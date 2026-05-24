# nix/modules/home-manager.nix — auto-generated from itoa.caixa.lisp
{ config, lib, pkgs, ... }:
let cfg = config.programs.itoa; in {
  options.programs.itoa = {
    enable = lib.mkEnableOption "itoa";
    package = lib.mkOption { type = lib.types.package; default = pkgs.itoa or null; };
  };
  config = lib.mkIf cfg.enable { home.packages = [ cfg.package ]; };
}
