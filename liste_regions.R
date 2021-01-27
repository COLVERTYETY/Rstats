gaz = read.csv(file.choose(), sep = ";", dec = ",")
View(gaz)
different = function(vecteur) {
  a = "AUVERGNE-RHONE-ALPES"
  for (i in vecteur) {
    if((i %in% a) == FALSE) {
      a = c(a, i)
      print(i)
    }
  }
  return(a)
}

regions = different(gaz$LIBREG)
length(regions)
