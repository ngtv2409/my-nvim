local files = vim.fn.readdir(vim.fn.stdpath("config") .. "/lua/plugins")
table.sort(files)

-- load all files in plugins/
for _, file in ipairs(files) do
  if file:match("%.lua$") then
    require("plugins." .. file:gsub("%.lua$", ""))
  end
end
