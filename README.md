# Revize ve studovně

Zkoušíme revizi pomocí RFID

Soubor `items.txt` obsahuje kódy načtené pomocí RFID čtečky. Seznam čárových kódů získáme pomocí 

    lua itemstobarcode.lua < items.txt > barcodes.txt

Vytvořit `TSV` soubor z Alephu:

    texlua prirtocsv.lua  xml_soubor "ck,sysno,rok,signatura,signatura2,druh,nazev,autor,vydavatel,lokace,status,dilci,popis,pujceno" > studovna.tsv

Porovnání ze souborem z Alephu:

    lua findbarcodes.lua barcodes.txt < studovna.tsv
