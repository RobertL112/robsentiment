#' Clean Text
#'
#' This function returns cleaned text.
#' @param text A character vector of text
#' @return A cleaned character vector of text
#' @importFrom tm removePunctuation
#' @export
#' @examples
#' example_text <- "This  bank sucked!It2 was slow and stinky!"
#' clean_text <- rob_text(example_text)

rob_text <- function(text){
  text <- tolower(text)                #lowercase
  text <- gsub("[[:digit:]]+"," ",text)   #remove numbers
  text <- gsub("\\s+"," ",text)        #remove multiple spaces
  text <- removePunctuation(text)
  return(text)
}
