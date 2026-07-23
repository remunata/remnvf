{
  lib,
  pkgs,
  ...
}: let
  php-cs-fixer-command = lib.generators.mkLuaInline ''
    function(self, ctx)
      local match = vim.fs.find("vendor/bin/php-cs-fixer", {
        path = ctx.dirname,
        upward = true,
        type = "file",
      })[1]

      if match and vim.fn.executable(match) == 1 then
        return match
      end

      return "${pkgs.php85Packages.php-cs-fixer}/bin/php-cs-fixer"
    end
  '';
in {
  config.vim.formatter.conform-nvim.setupOpts = {
    formatters_by_ft = {
      php = lib.mkLuaInline ''
        function(bufnr)
          local bufname = vim.api.nvim_buf_get_name(bufnr)
          -- If inside "Views", return empty table {}
          -- This prevents php-cs-fixer from running and triggers LSP fallback
          if bufname:match("/Views/") then
            return {}
          end
          -- Otherwise, use php-cs-fixer for everything else (Controllers, Models)
          return { "php_cs_fixer" }
        end
      '';
    };
    formatters = {
      php-cs-fixer = {
        command = lib.mkForce php-cs-fixer-command;
      };
    };
  };
}
