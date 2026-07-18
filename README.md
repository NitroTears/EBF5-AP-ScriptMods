# EBF5-AP-ScriptMods
Repo for the ebf5 archipelago mod.

## Contributing notes
- This project uses JPEXS free flash decompiler (aka FFDEC).
- Scripts are in the `./import/` folder.
- Due to compiler issues, only modified scripts are put into the `./import/scripts/` folder.<br>
reimport `./import/` with JPEXS or copy paste modified scripts into JPEXS when you want to apply changes.<br>
- Most assets can't easily be imported/exported with JPEXS because sprites can only be imported as gif,<br>
and most asset types need to be contained in sprites. If you need to add an asset to the game or edit a sprite,<br>
create a new `ebf5-AP.xdelta` patch with the imported asset/changed sprite (and ideally all scripts up to date)<br>
for a vanila ebf5 v2.1.4 swf, and include it with your commit. Other contributors will need to apply<br>
the patch to their own copy of a vanila ebf5 v2.1.4 swf to continue contributing.
- New scripts should be added to the `./import/scripts/` and `./import/all_scripts/` folders.
- Using the [FFDEC with new script import](https://github.com/kijetesantakalu912345/jpexs-decompiler) fork, you can import new scripts directly into the SWF<br>
without needing to make a new .xdelta or having to create every class in FFDEC before importing them.<br>
  - When it asks you what tag to use, just press ok with the default tag selected for you.<br>
  For technical reasons we're adding our scripts to the first DoABC2 tag.
- For the ActionScript & MXML extension: `asconfig.json` has been gitignored.<br>
if you want to use it (for more than just syntax highlighting to be enabled),<br>
rename `_asconfig.json` to `asconfig.json`. If you would prefer a lighter weight set up,<br>
you can use "ActionScript & MXML without" renaming `_asconfig.json` and "AS2 Language Support".<br>
Make sure not to accidentially delete `_asconfig.json` from the repo.
- `/import/all_scripts/` and `/import/scripts/` should have all modified scripts up to date at all times.<br>

### Getting an up to date swf
1. Apply the `ebf5-AP.xdelta` patch to a vanila ebf5 v2.1.4 swf.<br>
2. With JPEXS, import scripts from `./import/`. This will automatically import scripts from `./import/scripts/`.<br>

### Style guide
This project uses the default formatting settings included with JPEXS. IE:<br>
- `Characters per indent` = 3
- `Curly brace on new line` = true
- `Tab size` = 3
- `Tabs for indent` = false<br>
P-code formatting settings are ignored because P-code is not used in this repo.

### APDebugLogger
The `APDebugLogger` should be used for logging to the screen as it is available at all times.<br>
In game, the logger visibility can be toggled on/off with F3.

### REMOVE THE ASSETS FOLDER FROM SCRIPT EXPORTS!
When/if you need to reexport all scripts, make sure to remove the `./_assets/` folder *BEFORE* commiting the change.<br>

### Changelog
See [CHANGELOG.md](./CHANGELOG.md) for a list of recent changes.
This should be updated with any notable changes to vanilla behavior or useful information that we may want to communicate to users as needed.