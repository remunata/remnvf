{
  config.vim = {
    keymaps = [
      {
        key = "<Esc>";
        mode = "n";
        silent = true;
        action = ":nohlsearch<CR>";
      }
      {
        key = "<C-d>";
        mode = "n";
        silent = true;
        action = "<C-d>zz";
      }
      {
        key = "<C-u>";
        mode = "n";
        silent = true;
        action = "<C-u>zz";
      }
      {
        key = "K";
        mode = "v";
        silent = true;
        action = ":m '>+1<CR>gv=gv";
      }
      {
        key = "J";
        mode = "v";
        silent = true;
        action = ":m '<-2<CR>gv=gv";
      }
      {
        key = "H";
        mode = "n";
        silent = true;
        action = ":bprev<CR>";
        desc = "Next buffer";
      }
      {
        key = "L";
        mode = "n";
        silent = true;
        action = ":bnext<CR>";
        desc = "Previous buffer";
      }
      {
        key = "<leader><leader>d";
        mode = "n";
        lua = true;
        action = "function() Snacks.bufdelete() end";
        desc = "Close current buffer";
      }
      {
        key = "<leader><leader>o";
        mode = "n";
        lua = true;
        action = "function() Snacks.bufdelete.other() end";
        desc = "Close other buffers";
      }

      # Window navigation
      {
        key = "<C-h>";
        mode = "n";
        silent = true;
        action = "<C-w>h";
      }
      {
        key = "<C-l>";
        mode = "n";
        silent = true;
        action = "<C-w>l";
      }
      {
        key = "<C-j>";
        mode = "n";
        silent = true;
        action = "<C-w>j";
      }
      {
        key = "<C-k>";
        mode = "n";
        silent = true;
        action = "<C-w>k";
      }

      # Window manipulation
      {
        key = "<C-up>";
        mode = ["n" "t"];
        silent = true;
        action = "<cmd>resize +2<CR>";
      }
      {
        key = "<C-down>";
        mode = ["n" "t"];
        silent = true;
        action = "<cmd>resize -2<CR>";
      }
      {
        key = "<C-left>";
        mode = ["n" "t"];
        silent = true;
        action = "<cmd>vertical resize -2<CR>";
      }
      {
        key = "<C-right>";
        mode = ["n" "t"];
        silent = true;
        action = "<cmd>vertical resize +2<CR>";
      }

      # Remap for dealing with word wrap
      {
        key = "k";
        mode = "n";
        silent = true;
        expr = true;
        action = "v:count == 0 ? 'gk' : 'k'";
      }
      {
        key = "j";
        mode = "n";
        silent = true;
        expr = true;
        action = "v:count == 0 ? 'gj' : 'j'";
      }

      # Copy/paste with system clipboard
      {
        key = "<leader>y";
        mode = ["n" "v" "x"];
        noremap = true;
        silent = true;
        action = "\"+y";
        desc = "Yank to clipboard";
      }
      {
        key = "<leader>Y";
        mode = ["n" "v" "x"];
        noremap = true;
        silent = true;
        action = "\"+yy";
        desc = "Yank line to clipboard";
      }
      {
        key = "<leader>p";
        mode = ["n" "v" "x"];
        noremap = true;
        silent = true;
        action = "\"+p";
        desc = "Paste from clipboard";
      }
      {
        key = "<C-p>";
        mode = "i";
        noremap = true;
        action = "\"+p";
        desc = "Paste from clipboard within insert mode";
      }
      {
        key = "<leader>P";
        mode = "x";
        noremap = true;
        silent = true;
        action = "\"-dP";
        desc = "Paste over selection without erasing unnamed register";
      }

      # Snacks keymaps
      {
        key = "\\";
        mode = "n";
        lua = true;
        action = "function() Snacks.explorer.open() end";
        desc = "Open file explorer";
      }
      {
        key = "<leader>sf";
        mode = "n";
        lua = true;
        action = "function() Snacks.picker.smart() end";
        desc = "Smart find files";
      }
      {
        key = "<leader>sg";
        mode = "n";
        lua = true;
        action = "function() Snacks.picker.grep() end";
        desc = "Grep the whole project";
      }
      {
        key = "<leader>sd";
        mode = "n";
        lua = true;
        action = "function() Snacks.picker.diagnostics() end";
        desc = "Search diagnostics";
      }
      {
        key = "<leader>sk";
        mode = "n";
        lua = true;
        action = "function() Snacks.picker.keymaps() end";
        desc = "Search keymaps";
      }
      {
        key = "<leader>su";
        mode = "n";
        lua = true;
        action = "function() Snacks.picker.undo() end";
        desc = "Search undo history";
      }
      {
        key = "<leader>sn";
        mode = "n";
        lua = true;
        action = "function() Snacks.picker.notifications() end";
        desc = "Search notification history";
      }
    ];
  };
}
