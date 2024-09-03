A simple Visual Studio Code environment for working on Elite Observatory Core custom criteria.

## Getting Started
If you're not already familiar with using VSCode some direction is likely necessary. The following steps should get you rolling:

1. Download and install [VSCode](https://code.visualstudio.com/Download)
2. Install the VSCode [Lua Language Server extension](https://marketplace.visualstudio.com/items?itemName=sumneko.lua)
3. [Download](https://github.com/Xjph/observatory-custom-criteria/archive/refs/heads/main.zip) or Clone this repo and place it somewhere convenient
4. Place the `.lua` file with your criteria in it alongside the files from this repo, in the same folder as `criteria.d.lua`
5. Open *the folder* in VSCode

### Files Included
- README.MD
  - The file you are reading now.
- criteria.lua
  - A basic template for criteria writing.
- criteria.d.lua
  - Annotated type definitions for types and global values used by Observatory criteria. This is the file that you're probably here for.
- .vscode\settings.json
  - Default settings for lua-language-server to disable warnings for unexpected expressions. Required for simple criteria to not be incorrectly flagged as errors.