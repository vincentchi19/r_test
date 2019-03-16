rm(list=ls())

library(lubridate)
library(tidyr)
library(data.table)
library(ggplot)
library(readr)
library(readxl)

teom<-function(){
  return(year(Sys.Date())*100+month(Sys.Date()))
}

eomchg<-function(eom,xx){
  eomx=12*as.interger(eom/100)+eom%%100
  prevmox=eomx+xx
  prevmo=100*as.integer((prevmox-1)/12)+(prevmox-1)%%12+1
  
  return(prevmo)
}