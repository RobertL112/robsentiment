#' Sentiment Word Cloud
#'
#' This function creates a word cloud focused around sentiment.
#' @param text A character vector of text
#' @return A wordcloud
#' @importFrom tidytext get_sentiments
#' @importFrom wordcloud wordcloud
#' @importFrom RColorBrewer brewer.pal
#' @export
#' @examples
#' if (interactive()) {
#' example_text <- "this bank sucked it was slow and stinky but they gave free cookies so that was good"
#' rob_cloud(example_text)
#' }


rob_cloud <- function(text){
  afinn <- get_sentiments("afinn")

  #clean text in case it wasn't prepared
  text <- rob_text(text)
  text <- rob_stopwords(text)

  #tokenize text
  tokenized_text <- rob_token(text)

  word_freq <- table(tokenized_text)
  word_freq <- word_freq[word_freq >= min.freq]

  #get sentiment scores
  sentiment_scores <- afinn[afinn$word %in% names(word_freq),]

  colors <- ifelse(sentiment_scores$value > 0, "green",
            ifelse(sentiment_scores$value < 0, "red"))

  names(colors) <- sentiment_scores$word

  #wordcloud
  wordcloud(names(word_freq), freq = word_freq, min.freq = 2, max.words = 150,
            random.order = FALSE, rot.per = 0.35, colors = colors[names(word_freq)])
}
