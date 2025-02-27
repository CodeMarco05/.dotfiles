Module description for the different installed stuff

- When sometime error with recognising keys or remembering
whichkey plugin

none-ls 
- is used to inject LSP Diagnostic and code actions into vim
- you can specify formaters via downloading them over mason and then enable them in the file (typecraft video)
- is linting and formating the code watch again https://youtu.be/SxuwQJ0JHMU?si=K-imnHHlh7xKgFOB
- makes the functions from the languages behave like a lsp

- diagnostics.package gives linting
- formatting.package gives the formatter
- when you install a linter give it diagnostics and a formatter give it formatting

mason (lsp-config) file
- here install the language severs and formatters -> specify formater in none-ls
- lsp-config is there to communicate with language servers

treesitter
- for linting the code 
- install is set to auto 

the completion file is for 
- snippets and then copleting and inserting them

the lsp-config file is for configuring the different lsps and installing them  (capabilities adds just mroe snipets especially codeblocks)

usefull vim motions / commands

<C-o> jump mark back
<C-^> go back one file -> like harpoon
:nohlsearch highlighted search go away


:Copilot tab to see options
