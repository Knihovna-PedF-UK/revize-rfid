-- získat čárové kódy ze souboru items.txt
-- užití:  lua itemstobarcode.lua < items.txt  > barcodes.txt

local t = {}
local used = {} -- nechceme duplikáty
local i = 1 -- číslo řádku
for line in io.lines() do
  -- jednotlivé položky jsou oddělené tabuátorem, čárový kód je druhá položka
  -- pokud nemáme čárový kód, uložíme číslo řádku, abysme viděli, kolik kódů se nenačetlo
  local barcode = line:match("[^\t]+\t([^\t]+)") or "empty " .. i
  if barcode then
    if not used[barcode] then
      t[#t+1] = barcode
    end
    used[barcode] = true
  end
  i = i + 1
end

table.sort(t)
for _, x in ipairs(t) do
  print(x)
end
