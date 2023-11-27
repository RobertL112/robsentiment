#' Remove Stop Words
#'
#' This function removes stopwords from text.
#' @param text A character vector of text
#' @param additional_stops A character vector of additional custom stops
#' @return A character vector of text
#' @importFrom tm Corpus VectorSource tm_map removeWords stopwords
#' @export
#' @examples
#' example_text <- "This bank sucked!It2 was slow and stinky!"
#' example_text <- rob_stopwords(example_text)

rob_stopwords <- function(text, additional_stops = NULL){
  custom_stopwords <- c(stopwords(kind = 'en'), additional_stops)
  corpus <- Corpus(VectorSource(text))
  corpus_clean <- tm_map(corpus, removeWords, custom_stopwords)
  text <- sapply(corpus_clean, as.character)
  text <- gsub("\\s+"," ",text)        #remove multiple spaces
  return(text)
}
