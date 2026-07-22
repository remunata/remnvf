{
  config.vim = {
    autocomplete.blink-cmp = {
      enable = true;
      mappings = {
        confirm = "<C-y>";
        next = "<C-n>";
        previous = "<C-p>";
      };
    };

    autopairs.nvim-autopairs.enable = true;
    snippets.luasnip.enable = true;
    binds.whichKey.enable = true;
  };
}
