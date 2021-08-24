# gravvy_harvesting
RedM Crop Harvesting

Requires
PolyZone (https://github.com/mkafrin/PolyZone)  
redemrp_inventory version 2 (https://github.com/RedEM-RP/redemrp_inventory)

1) Add ``gravvy_harvesting`` to your resources folder
2) Add ``ensure gravvy_harvesting`` to your server.cfg
3) Start server

Add the following to your config.lua in redemrp_inventory under ``Config.Items``  
I've also included the images I used for each item in the ``items`` folder  
To add these images put them in ``redemrp_inventory -> html -> items``  

The location to begin harvesting is at the Braithwaite Manor in the surrounding fields  
I did not include the fields to the north of the manor

```
["wheat"] =
  {
      label = "Wheat",
      description = "Put it in your mouth like the cool guys",
      weight = 0.05,
      canBeDropped = true,
      canBeUsed = true,
      requireLvl = 0,
      limit = 64,
      imgsrc = "items/wheat.png",
      type = "item_standard",
  },
["apple"] =
  {
      label = "Apple",
      description = "An apple a day...",
      weight = 0.02,
      canBeDropped = true,
      canBeUsed = true,
      requireLvl = 0,
      limit = 32,
      imgsrc = "items/apple.png",
      type = "item_standard",
  },
["corn"] =
  {
      label = "Corn",
      description = "Roasted preferred",
      weight = 0.5,
      canBeDropped = true,
      canBeUsed = true,
      requireLvl = 0,
      limit = 24,
      imgsrc = "items/consumable_corn.png",
      type = "item_standard",
  },
["cotton"] =
  {
      label = "Cotton",
      description = "Soft and fluffy",
      weight = 0.05,
      canBeDropped = true,
      canBeUsed = true,
      requireLvl = 0,
      limit = 100,
      imgsrc = "items/consumable_herb_burdock_root.png",
      type = "item_standard",
  },
```
