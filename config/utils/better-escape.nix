{ lib, config, ... }:
{
  options = {
    better-escape.enable = lib.mkEnableOption "Enable better-escape module";
  };
  config = lib.mkIf config.better-escape.enable {
    plugins.better-escape = {
      enable = true;
      settings = {
        timeout = 200;
        default_mappings = false;
        mappings = {
          i = {
            j = {
              j = "<Esc>";
              x = "<Esc>:x<CR>";
            };
          };
        };
      };
    };
  };
}
