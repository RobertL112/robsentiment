#' Tokenize Text
#'
#' This function returns tokenized text.
#' @param text A character vector of text
#' @return tokens
#' @export
#' @examples
#' example_text <- "This  bank sucked!It2 was slow and stinky!"
#' tokens <- rob_token(example_text)

rob_token <- function(text){
  tokens <- unlist(strsplit(text, " "))
  return(tokens)
}