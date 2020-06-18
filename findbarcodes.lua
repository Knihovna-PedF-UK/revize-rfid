-- použítí
-- lua findbarcodes.lua barcodes.txt < seznamjednotek.tsv
-- soubor barcodes obsahuje čárové kódy vygenerované pomocí itemstobarcode.lua
-- seznamjednotek.tsv -- soubor vygenerovaný pomocí `prirtocsv`
--
local barcodefile = arg[1]

local barcodes = {}

-- nahrát čárové kódy do tabulky pro hledání
for line in io.lines(barcodefile) do
  barcodes[line] = true
end

-- zpracovat tsv soubor ze stdin
local first = true
for line in io.lines() do
  -- čárový kód je v prvním sloupci
  local barcode = line:match("^(.-)\t")

  print(line, barcodes[barcode])
end
