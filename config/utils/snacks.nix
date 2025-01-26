{ lib, config, ... }:
{
  options = {
    snacks.enable = lib.mkEnableOption "Enable snacks module";
  };
  config = lib.mkIf config.snacks.enable {
    plugins.snacks = {
      enable = true;
      settings = {
        bigfile.enabled = true;
        quickfile.enabled = true;
      };
    };
  };
}
