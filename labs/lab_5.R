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
}

check_password_lab_5 <- function(){
  if (flag_username ==  "a11b33d66e99j143k198n253o319H385I462"){
    if (flag_password == "a11d33w66011314011314011314011314011314011314011314011314011314011314011314011314011314011314011314P99011314011314R143011314011314011314011314011314011314011314011314011314"){
      cat(paste("\033[32mYou did it the password is :", password, "for the user :", username, "do check in the terminal to get your score\033[0m", "/n"))
    }
  }
    
  else {
     cat("\033[31mThe password or the username is worng please try agin\033[0m")
  }
}

main_lab_5 <- function(){
  get_username_and_password()
  get_flag()
  check_password_lab_5()
}

main_lab_5()


