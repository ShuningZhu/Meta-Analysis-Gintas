#Hi, WELCOME!
library(readxl)
library(meta)
LCQ <- read_excel("LCQ data.xlsx")
head(LCQ)
colnames(LCQ)
names(LCQ)<-c('author','year','Ne','Nc','Me','Se','Mc','Sc')
### Do meta analysis
m <- metacont(Ne,Me,Se,Nc,Mc,Sc,
              studlab=paste(author,year), # 
              data=LCQ)

forest(m)


VAS <- read_excel("VAS data.xlsx")
head(VAS)
colnames(VAS)
names(VAS)<-c('author','year','Ne','Nc','Me','Se','Mc','Sc')
### Do meta analysis
m <- metacont(Ne,Me,Se,Nc,Mc,Sc,
              studlab=paste(author,year), # 
              data=VAS)

forest(m)

