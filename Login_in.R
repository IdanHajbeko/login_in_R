start <- function(style = 1){
  if (style == 1){
    cat("
██╗░░░░░░█████╗░░██████╗░██╗███╗░░██╗
██║░░░░░██╔══██╗██╔════╝░██║████╗░██║
██║░░░░░██║░░██║██║░░██╗░██║██╔██╗██║
██║░░░░░██║░░██║██║░░╚██╗██║██║╚████║
███████╗╚█████╔╝╚██████╔╝██║██║░╚███║
╚══════╝░╚════╝░░╚═════╝░╚═╝╚═╝░░╚══╝\n")
  }
  else if (style == 2){
    cat("
╭╮
┃┃
┃┃╭━━┳━━┳┳━╮╱╭┳━╮╱╭━╮
┃┃┃╭╮┃╭╮┣┫╭╮╮┣┫╭╮╮┃╭╯
┃╰┫╰╯┃╰╯┃┃┃┃┃┃┃┃┃┃┃┃
╰━┻━━┻━╮┣┻╯╰╯╰┻╯╰╯╰╯
╱╱╱╱╱╭━╯┃
╱╱╱╱╱╰━━╯\n")
  }
  else if (style == 3){
    cat("
██╗░░░░░░█████╗░░██████╗░██╗███╗░░██╗  ██╗███╗░░██╗  ██████╗░
██║░░░░░██╔══██╗██╔════╝░██║████╗░██║  ██║████╗░██║  ██╔══██╗
██║░░░░░██║░░██║██║░░██╗░██║██╔██╗██║  ██║██╔██╗██║  ██████╔╝
██║░░░░░██║░░██║██║░░╚██╗██║██║╚████║  ██║██║╚████║  ██╔══██╗
███████╗╚█████╔╝╚██████╔╝██║██║░╚███║  ██║██║░╚███║  ██║░░██║
╚══════╝░╚════╝░░╚═════╝░╚═╝╚═╝░░╚══╝  ╚═╝╚═╝░░╚══╝  ╚═╝░░╚═╝\n")
  }
  
  cat("\033[32mWelcome to the login page created in R\033[0m\n")
  cat("Created by idan hajbeko/n")
  cat("This is like hack the box just it bad i made it and it in R")
  cat("use the commands in that order to start -help, -rules, -story, -start")
}

help <- function(){
  cat("**Help Command**

The help command provides information about the available commands and their usage. Here is a list of commands and a brief description of each:

1. **Command Name 1**
   - Description: Brief description of what this command does.
   - Usage: How to use the command, including any required arguments or options.
   - Example: An example of how the command is used in a real scenario.

2. **Command Name 2**
   - Description: Brief description of what this command does.
   - Usage: How to use the command, including any required arguments or options.
   - Example: An example of how the command is used in a real scenario.

3. **Command Name 3**
   - Description: Brief description of what this command does.
   - Usage: How to use the command, including any required arguments or options.
   - Example: An example of how the command is used in a real scenario.

...
")
}

terminal <- function(){
  
}

start(3)
help()
name = readline("what is your name: ")



