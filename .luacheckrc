---@diagnostic disable: lowercase-global

ignore = {
  '111',     -- non-std global vars
  '121',     -- read-only global var 'vim'
  '122',     -- read-only field of global var 'vim'
  '212/_.*', -- unused args starting with '_' prefix
  '214',     -- used var with unused hint ('_' prefix)
}

read_globals = {
  'vim',
}
