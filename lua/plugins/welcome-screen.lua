return {
  -- dashboard to greet
  {
    'goolord/alpha-nvim',
    dependencies = { 'nvim-tree/nvim-web-devicons' },
    config = function()
      local alpha = require 'alpha'
      local dashboard = require 'alpha.themes.dashboard'

      -- Set header
      dashboard.section.header.val = {
        "██                                                                                 ",
        "█████           ███                                                                ",
        "█████          █ ██                                                                ",
        "██ ███         █ ██                                                                ",
        "█  █████       █ ██                                                                ",
        "██ ███ ██      █ ██                                                                ",
        "██ ███   █    █ ██                                                                 ",
        "█ ██ ██  █    █ ██                                        ███                      ",
        "█ ██ ██  ██  █  ██                                         ██                      ",
        "█ ██ ████ ████  ██      █████                                                      ",
        "█ ██ █ ███ ██   ██    █████████    ███████  ██          █                          ",
        "█ █  █  █████   ██  ███ ██    ████████   ██ ██         ███ ███  ███ █████ █████    ",
        "██ █     ██ ██  ████   █      █ ██ █      ██ ██       ███  ███    ████ █████████   ",
        " ██  █    ██ ██ ████  ███████████ ██      ███ ██     ███    ██    ██ █  ████  ███  ",
        " ██  █     ██ █ ████  █          ██       ███  ██    ██     ██     ███   ███    █  ",
        " ██         ████ █ ██ █          ███    ████   ██  ████     ██    ████   ███    ██ ",
        " ███         ███ █  ███        █  ███   ███     ██  ██     ███    ██ █   ███    ██ ",
        " ██           █████   █████████    ██████       █████     ████     ███   ████   ██ ",
        " ██           █████       ████                   ██       █████     ██    ██    █  ",
        " █                                                         ██ █     ██     █       ",
        "                                                                     █             ",
      }

      -- Set menu
      dashboard.section.buttons.val = {
        dashboard.button('e', '  > New file', ':ene <BAR> startinsert <CR>'),
        dashboard.button('f', '󰈞  > Find file', ':Telescope find_files<CR>'),
        dashboard.button('r', '  > Recent', ':Telescope oldfiles<CR>'),
        dashboard.button('s', '  > Settings', ':e $MYVIMRC | :cd %:p:h<cr>'),
        dashboard.button('q', '󰅚  > Quit NVIM', ':qa<CR>'),
      }

      local fortune = require 'alpha.fortune'
      dashboard.section.footer.val = fortune {
        fortune_list = {
          { '“Not everything is a lesson, Ryan. Sometimes you just fail.”', '', '— Dwight K. Schrute III' },
          {'“Would I rather be feared or loved? Easy. Both. I want people to be afraid of how much they love me.”', '', '— Michael G. Scott'},
          {' “If I had to, I could clean out my desk in five seconds, and nobody would ever know that I’d ever been here. And I’d forget, too.”', '', '— Ryan B. Howard'},
          {'“Guess what, I have flaws. What are they? Oh, I don’t know. I sing in the shower. Sometimes I spend too much time volunteering. Occasionally I’ll hit somebody with my car. So sue me.”', '', '— Michael G. Scott'},
          {'“I don’t hate it. I just don’t like it at all and it’s terrible.”', '', '— Michael G. Scott'},
          {'“I think you’re under-thinking it."', '', '— Big Tuna'},
          {'“I am running away from my responsibilities. And it feels good.”', '', '— Michael G. Scott'},
          {'"I have a warm blanket and several cozy pillows. I read a chapter of a book and then it is lights out by 8:30. That is how I sleep at night."', '', '— Angela Martin'},
          {'“And I knew exactly what to do. But in a much more real sense, I had no idea what to do.”', '', '— Michael G. Scott'},
          {'“I talk a lot, so I’ve learned to tune myself out.”', '', '— Kelly R. Kapoor'},
          {'“I guess I’ve been working so hard, I forgot what it’s like to be hardly working.”', '', '— Michael G. Scott'},
        },
      }

      -- Send config to alpha
      alpha.setup(dashboard.opts)
    end,
  },
}
