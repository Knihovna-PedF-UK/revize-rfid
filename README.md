# Revize ve studovně

Zkoušíme revizi pomocí RFID

Soubor `items.txt` obsahuje kódy načtené pomocí RFID čtečky. Seznam čárových kódů získáme pomocí 

    lua itemstobarcode.lua < items.txt > barcodes.txt

Porovnání ze souborem z Alephu:

    lua findbarcodes.lua barcodes.txt < studovna.tsv
