require('nvim-test').setup()

require('nvim-test.runners.jest'):setup {
  -- args = { "--collectCoverage=true" }, -- default arguments
}
