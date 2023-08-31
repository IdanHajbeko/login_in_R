start_text <- function(){
cat("
██╗░░░░░░█████╗░░██████╗░██╗███╗░░██╗  ██╗███╗░░██╗  ██████╗░
██║░░░░░██╔══██╗██╔════╝░██║████╗░██║  ██║████╗░██║  ██╔══██╗
██║░░░░░██║░░██║██║░░██╗░██║██╔██╗██║  ██║██╔██╗██║  ██████╔╝
██║░░░░░██║░░██║██║░░╚██╗██║██║╚████║  ██║██║╚████║  ██╔══██╗
███████╗╚█████╔╝╚██████╔╝██║██║░╚███║  ██║██║░╚███║  ██║░░██║
╚══════╝░╚════╝░░╚═════╝░╚═╝╚═╝░░╚══╝  ╚═╝╚═╝░░╚══╝  ╚═╝░░╚═╝\n")
  }
  
  cat("\033[32mWelcome to the login page created in R\033[0m\n")
  cat("\033[32mCreated by idan hajbeko\033[0m\n")
  cat("\033[32mThis is like hack the box just it bad i made it and it in R\033[0m\n")
  cat("\033[32mUse the commands in that order to start help, levels, rules, story, start\033[0m\n")

help <- function(){
  cat("**Help Command**

The help command provides information about the available commands and their usage. Here is a list of commands and a brief description of each:

1. **rules**
   - \033[32mDescription\033[0mdsf: Disply the rules of the lab what to do and what not.
   - \033[34mUsage\033[0m: Type: \"rules level_number\" in the terminal.
   - \033[31mExample\033[0m: rules 2.

2. **story**
   - \033[32mDescription\033[0m: Tell you the story of the .
   - \033[34mUsage\033[0m: Type: \"story level_number\" in the terminal.
   - \033[31mExample\033[0m: story 1\033[0m.

3. **levels**
   - \033[32mDescription\033[0m: Show you all the levels.
   - \033[34mUsage\033[0m: Just type \"levels\" in the terminal.
   - \033[31mExample\033[0m: levels.

4. **start**
   - \033[32mDescription\033[0m: Start the lab with the level you choose.
   - \033[34mUsage\033[0m: Type: \"start level_number\".
   - \033[31mExample\033[0m: start 3.
  
5. **quit**
   - \033[32mDescription\033[0m: Quit the programm.
   - \033[34mUsage\033[0m: Just type: \"quit\" in the terminal.
   - \033[31mExample\033[0m: quit.")
}

rules <- function(level){
  cat(paste("rules of", level, "will be here\n"))
}

story <- function(level){
  cat(paste("story of", level, "will be here\n"))
}

start <- function(level){
  if (level == "5"){
    source("C:/Users/barry/Downloads/login_in_R-main/login_in_R-main/labs/lab_5.R")
  }
}

terminal <- function(){
  while (TRUE){
    command = readline("terminal>  ")
    if (command == "help"){
      help()
    }
     
    else if (grepl("rules", command)){
      split_v <- strsplit(command, " ")
      after_space <- split_v[[1]][2]
      if (is.na(after_space) != TRUE){
        rules(after_space)
      }
      else if (after_space %in% levels_list != TRUE && !is.na(after_space)){
        cat("\033[31mplease specify a valid level\033[0m\n")
      }
      else{
        cat("\033[31mplease specify the level\033[0m\n")
      }
    }
    
    else if (grepl("story", command)){
      split_v <- strsplit(command, " ")
      after_space <- split_v[[1]][2]
      if (is.na(after_space) != TRUE){
        story(after_space)
      }
      else if (after_space %in% levels_list != TRUE && !is.na(after_space)){
        cat("\033[31mplease specify a valid level\033[0m\n")
      }
      else{
        cat("\033[31mplease specify the level\033[0m\n")
      }
    }
    
    else if (grepl("start", command)){
      split_v <- strsplit(command, " ")
      after_space <- split_v[[1]][2]
      if (!is.na(after_space) && after_space %in% levels_list){
        start(after_space)
      }
      
      else if (after_space %in% levels_list != TRUE && !is.na(after_space)){
        cat("\033[31mplease specify a valid level\033[0m\n")
      }
      else{
        cat("\033[31mplease specify the level\033[0m\n")
      }
    }
  
    else if (command == "quit" | command == "q"){
      cat("bye :)")
      break
    }
    
    else if (command == ""){
      
    }
    
    else{
      cat(paste0("\033[31m", "No command named ", '"' , command , '"', " check it and try agin", "\033[0m\n"))
    }
  }
}

main <- function(){
  levels_list <<- 1:5
  start_text()
  terminal()
}

main() 



