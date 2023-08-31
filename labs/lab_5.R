get_username_and_password <- function(){
  username <<- readline("Enter username : ")
  password <<- readline(paste("Enter password for", username, ": "))
}

get_flag <- function(){
  calculation <- function(str){
    count <<- 0
    temporary_flag <<- ""
    for (x in letters){
      if (grepl(x, str)){
        count <<- count + 1 + round(sqrt(count))
        temporary_flag <<- paste0(temporary_flag, x, (count * nchar(username)))
      }
    }
    for(x in LETTERS){
      if (grepl(x, str)){
        count <<- count + 1 + round(sqrt(count))
        temporary_flag <<- paste0(temporary_flag, x, (count * nchar(username)))
      }
    for(x in 0:9){
      if (grepl(x, str)){
        temporary_flag <<- paste0(temporary_flag, x, (x + nchar(username)))
      }
    }
    }
    return (temporary_flag)
  }
  flag_username <<- calculation(username)
  flag_password <<- calculation(password)
  cat(paste("\033[31myour username flag is :", flag_username, "your password flag is :", flag_password, "do check 5 in the terminal to check if you are right and stat to see your stat\033[0m"))
  
  
}

main_lab_1 <- function(){
  get_username_and_password()
  get_flag()
}

main_lab_1()

