A simple Visual Studio Code environment for working on Elite Observatory Core custom criteria.

### Files Included
- README.MD
  - The file you are reading now.
- criteria.lua
  - A basic template for criteria writing.
- criteria.d.lua
  - Annotated type definitions for types and global values used by Observatory criteria. This is the file that you're probably here for.
- .vscode\settings.json
  - Default settings for lua-language-server to disable warnings for unexpected expressions. Required for simple criteria to not be incorrectly flagged as errors.

Requires the [lua-language-server VSCode extension](https://marketplace.visualstudio.com/items?itemName=sumneko.lua) for full support of intellisense for criteria globals and types.