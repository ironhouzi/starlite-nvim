-- See `:h cword`
local Modes = {
  default = '<cword>',
  entire_word = '<cWORD>',
}

local function halted_highlight(opts)
  local cursor_mode = opts.mode or Modes.default
  local search_flags = opts.search_flags or ''
  local reg_formatter = opts.reg_formatter or function(s) return s end

  local cursor_string = reg_formatter(vim.fn.expand(cursor_mode))
  local slash_reg = vim.fn.getreg('/')

  if not (vim.go.hlsearch and slash_reg == cursor_string) then
    vim.b.stim_set = false
  end

  if vim.b.stim_set then
    vim.api.nvim_command('normal! n')
  else
    vim.fn.setreg('/', cursor_string)
    vim.fn.search(cursor_string, 'n' .. search_flags)
  end

  vim.go.hlsearch = true
  vim.b.stim_set = true
end

local function strict_fmt(s)
  return '\\<' .. s .. '\\>'
end

return {
  star = function()
    return halted_highlight{reg_formatter=strict_fmt}
  end,
  g_star = function()
    return halted_highlight{}
  end,
  hash = function()
    return halted_highlight{search_flags='b', reg_formatter=strict_fmt}
  end,
  g_hash = function()
    return halted_highlight{search_flags='b'}
  end,
}
