-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")

-- 判断当前是否处于 SSH 远程连接中
local is_ssh = os.getenv("SSH_CLIENT") ~= nil or os.getenv("SSH_TTY") ~= nil

if is_ssh then
  -- 【远端模式】强制使用 OSC 52，避免寻找 X11/Wayland 导致卡顿
  vim.g.clipboard = {
    name = "OSC 52",
    copy = {
      ["+"] = require("vim.ui.clipboard.osc52").copy("+"),
      ["*"] = require("vim.ui.clipboard.osc52").copy("*"),
    },
    paste = {
      ["+"] = require("vim.ui.clipboard.osc52").paste("+"),
      ["*"] = require("vim.ui.clipboard.osc52").paste("*"),
    },
  }
else
  -- 【本地模式】打通系统原生剪贴板 (Mac/Win/Linux桌面自动适配)
  vim.opt.clipboard = "unnamedplus"
end
