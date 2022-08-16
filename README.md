# Revize ve studovně

Zkoušíme revizi pomocí RFID

Soubor `items.txt` obsahuje kódy načtené pomocí RFID čtečky. Seznam čárových kódů získáme pomocí 

    lua itemstobarcode.lua < items.txt > barcodes.txt

Pak pokračujeme podle instrukcí pro revizi studovny v [normální revizi](https://github.com/michal-h21/revize_server).
