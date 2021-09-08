text <- readLines("data/Blockchain.txt")

library("tm")
library("SnowballC")
library("wordcloud")
library("RColorBrewer")
# Load the data as a corpus file
# ?Corpus()
# ?VectorSource()
docs <- Corpus(VectorSource(text))

inspect(corpus_block)

# ?tm_map


to_space <- content_transformer(function(x, pattern) gsub(pattern, " ", x))

docs <- tm_map(docs, to_space, "/")
docs <- tm_map(docs, to_space, "@")
docs <- tm_map(docs, to_space, "\\|")

docs <- tm_map(docs, content_transformer(tolower))

docs <- tm_map(docs, removeNumbers)

docs <- tm_map(docs, removeWords, stopwords("english"))
docs <- tm_map(docs, removeWords, c("all", "not"))
docs <- tm_map(docs, removePunctuation)
docs <- tm_map(docs, stripWhitespace)

dtm <- TermDocumentMatrix(docs)
dtm
m <- as.matrix(dtm)
v <- sort(rowSums(m), decreasing = TRUE)
d <- data.frame(word = names(v), freq = v)

wordcloud(
    words = d$word, freq = d$freq, min.freq = 15, max.words = 100, random.order = FALSE,
    colors = brewer.pal(9, "Dark2"), rot.per = 0.5, width = 1000, height = 1000,
)
