#' Sentiment Score
#'
#' This function returns the sentiment score of your text.
#' @param text A character vector of text
#' @return A numeric value representing sentiment
#' @importFrom tidytext get_sentiments
#' @export
#' @examples
#' if (interactive()) {
#'     example_text <- "this bank sucked! It was slow and stinky!"
#'     sentiment <- rob_sentiment_score(example_text)
#' }

rob_sentiment_score <- function(text){
  sentiment <- get_sentiments("afinn")
  tokenized_text <- rob_token(text)
  sentiment_score <- sum(sentiment$score[sentiment$word %in% tokenized_text])

  return(sentiment_score)
}
