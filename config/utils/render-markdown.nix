{ lib, config, ... }:
{
  options = {
    render-markdown.enable = lib.mkEnableOption "Enable markdown module";
  };
  config = lib.mkIf config.render-markdown.enable {
    plugins.render-markdown = {
      enable = true;
    };
  };
}
