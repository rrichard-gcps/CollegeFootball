require(rvest)

source(file = "schools.R")

for(i in id){
  for(j in sch){
  cfb <- html(paste0('http://www.ourlads.com/ncaa-football-depth-charts/roster.aspx?id=',i)) 
  assign(paste0("cfb.",j),cfb)
  }
}
