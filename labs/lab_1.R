get_username_and_password <- function(){
  username <<- readline("Enter username : ")
  password <<- readline(paste("Enter \033[31mpassword\033[0m for", username, ": "))
}

check_lab_5 <- function(){
  if (username == "IdANHajbeko" && password == "W0r3t_Pass0rd_3v3r"){
    cat(paste("\033[32mYou did it the password is :", password, "for the user :", username, "do check in the terminal to get your score\033[0m", "/n"))
  }
  else {
    cat("\033[31mThe password or the username is worng please try agin\033[0m")
  }
}

main_lab_1 <- function(){
  get_username_and_password()
  check_lab_5()
}

main_lab_1()