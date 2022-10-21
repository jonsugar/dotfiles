-- ┏━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┓
-- ┃ Luavim General                                                             ┃
-- ┗━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┛

lvim.builtin.alpha.dashboard.section.header.val = {
  " _                                        _",
  "| |                                      (_)",
  "| |     _   _  _ __    __ _  _ __ __   __ _  _ __ ___",
  "| |    | | | || '_ \\  / _` || '__|\\ \\ / /| || '_ ` _ \\",
  "| |____| |_| || | | || (_| || |    \\ V / | || | | | | |",
  "|______|\\__,_||_| |_| \\__,_||_|     \\_/  |_||_| |_| |_|",
  "",
  "  .             *        .     .       .",
  "       .     _     .     .            .       .",
  ".    .   _  / |      .        .  *         _  .     .",
  "        | \\_| |                           | | __",
  "      _ |     |                   _       | |/  |",
  "     | \\      |      ____        | |     /  |    \\",
  "     |  |     \\    +/_\\/_\\+      | |    /   |     \\",
  "   _/____\\--...\\___ \\_||_/ ___...|__\\-..|____\\____/__",
  "      .     .      |_|__|_|         .       .",
  "   .    . .       _/ /__\\ \\_ .          .",
  "      .       .    .           .         .",
}

lvim.log.level = "warn"
lvim.builtin.telescope.pickers = { find_files = { find_command = { "fd", "--no-ignore", "--hidden" } } }
lvim.builtin.alpha.active = true
lvim.builtin.alpha.mode = "dashboard"
lvim.builtin.terminal.active = true
lvim.builtin.nvimtree.setup.view.side = "left"
