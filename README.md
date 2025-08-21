 # Block-Display-Builder
## WARNING:
- Use it at your own risk, this datapack create entities which means that the more you create the more lag you add to your world or server.
- I recomend creating a backup of your minecraft world before using it.
## Credit:
- This datapack uses the [blockstate](https://github.com/Triton365/BlockState) datapack by Triton365.
- You will find his MIT license in the datapack here: `data/bdb/loot_table/LICENSE`
## How to install it:
1. Download the latest release of the datapack directly [here](https://github.com/mrGrayJacket/Block-Display-Builder/releases/download/v3.3.1/bdb3.3.1.zip) or see the releases in [this page](https://github.com/mrGrayJacket/Block-Display-Builder/releases).
2. Navigate your world folder which is located by default in `C:\Users\<username>\AppData\Roaming\.minecraft\saves\<your_world_folder>` in windows.
3. In your **world folder** go to `datapacks` and put the datapack you downloaded it their.
## How to use:
### Getting the menu:
Their is two ways to get it:
1. Using the command `/reload` to get the book which allows you to access the menu on right clicking. (the book was added in version 3.3 and above (older versions will just show the menu)).
2. Using the command `/function bdb:show_menu` which will show the menu directly.
### Settings:
In settings you have:
- Collision: to make the block display solid (can step on it and interact with it).
- Translation: this will simply spawn all the block display in one place and translate their display to their correct location.
- Speed: control the speed of creating the block display (the more speed you add the more pressure you give to your computer or the server (effect the server side of the game)).
### Block display values:
This menu allows you to control the scale and some other block display related stuff.
## How to unistall the datapack:
Enter your world, write this command: `/function bdb:uninstall`, leave the world and delete the datapack from your world folder.
**NOTE**:
1. When you use the uninstall function the datapack will not be able to work properly unless you restart the world or type: `/reload`.
2. The uninstall function deletes only scoreboards; it does not remove data storages.
## Features:
- User friendly menu.
- Simple display to show the selected area.
- Customizable settings.
- Works on unloaded chunks.
- Saves the hotbar before start using the datapack (added in version 3.3+).
## Limitations:
- ~~Water and lava can't be rendered~~ (Fixed...., kinda)
- Chests and beds and some other special blocks will be broken.(due to how block display render them).
- The more block display you add the more your world will lag.
## Future plans:
- This datapack will be updated in my free time to match the latest releases of minecraft java.
- Adding more control to the block display placement.
- Adding an animation section to save/load animations.
- Fixing the limitation or at least making them less impacting.
- Fixing my spagetti code before it gets worst.
