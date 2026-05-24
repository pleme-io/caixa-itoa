# nix/modules/darwin.nix — auto-generated from itoa.caixa.lisp
{ config, lib, pkgs, ... }:
let cfg = config.services.itoa; in {
  options.services.itoa = {
    enable = lib.mkEnableOption "itoa";
    package = lib.mkOption { type = lib.types.package; default = pkgs.itoa or null; };
  };
  config = lib.mkIf cfg.enable {
    environment.systemPackages = [ cfg.package ];
  };
}
