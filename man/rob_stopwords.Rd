% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/rob_stopwords.R
\name{rob_stopwords}
\alias{rob_stopwords}
\title{Remove Stop Words}
\usage{
rob_stopwords(text, additional_stops = NULL)
}
\arguments{
\item{text}{A character vector of text}

\item{additional_stops}{A character vector of additional custom stops}
}
\value{
A character vector of text
}
\description{
This function removes stopwords from text.
}
\examples{
example_text <- "This bank sucked!It2 was slow and stinky!"
example_text <- rob_stopwords(example_text)
}
