# robsentiment
This package combines some features necessary for text analysis and, specifically, sentiment analysis. The functions work as follows: 

rob_text() takes in text and performs basic cleaning techniques. It then returns the same text in a cleaned format. 

rob_token() tokenizes the text and returns the tokens. 

rob_sentiment_score() returns the sentiment score of your text with values ranging from –5(negative) to +5(positve). 

rob_stopwords() removes stopwords from your text and gives you the option to supply your own stopwords. 

rob_cloud simply takes in a text vector and returns a wordcloud with positive words being colored green, and negative words red. 
