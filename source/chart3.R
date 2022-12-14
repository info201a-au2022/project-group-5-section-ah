devtools::install_github("jeromefroe/circlepackeR")
library(circlepackeR)         
library(data.tree)

top_500_movies <- read.csv("../data/top-500-movies.csv")

genre_number <- sort(table(top_500_movies$genre), decreasing = TRUE)[1:10]

dafaf <- data.frame(genre_number)

dafaf1 <- dafaf %>% 
  unite("both", Var1:Freq, sep = " - ", na.rm = TRUE, remove = FALSE)

data <- data.frame(
  root=rep("root", 10),
  group=c(rep("Genres", 10)), 
  subgroup= rep(dafaf1$both, each=1),
  subsubgroup=rep(dafaf1$both, 1),
  value=dafaf1
)

data$pathString <- paste("world", data$group, data$subgroup, data$subsubgroup, sep = "/")
population2 <- as.Node(data)

chart3 <- circlepackeR(population2, size = "value.Freq", color_min = "hsl(200, 100%, 50%)", color_max = "hsl(300, 70%, 20%)")


chart3
