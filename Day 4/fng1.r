library("tm")
library("SnowballC")
library("wordcloud")
library("RColorBrewer")
# Load the data
text <- readLines("data/Blockchain.txt")
text
# Load the data as a Corpus
?Corpus()
?VectorSource()

docs <- Corpus(VectorSource(text))
docs

# Inspect the content of the document
?inspect()
inspect(docs)

# Text Transformation
# tm_map()
?tm_map()
# Replace special characters from the text "/", "@", and "|"
?content_transformer()
?gsub()
tospace <- content_transformer(function(x, pattern) gsub(pattern, " ", x))

docs <- tm_map(docs, tospace, "/")
docs <- tm_map(docs, tospace, "@")
docs <- tm_map(docs, tospace, "\\|")

# stop-words

# Convert the text
docs <- tm_map(docs, content_transformer(tolower))
# Remove number
docs <- tm_map(docs, removeNumbers)
# REMOVE COMMON STOP WORDS
docs <- tm_map(docs, removeWords, stopwords("english"))
# Specify stopwords
docs <- tm_map(docs, removeWords, c("all", "not"))
# Remove punctuation
docs <- tm_map(docs, removePunctuation)
# Eliminate extra white spaces
docs <- tm_map(docs, stripWhitespace)