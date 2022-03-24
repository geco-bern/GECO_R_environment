# installing required R packages from the main repo
options(repos=structure(c(CRAN = "http://cran.r-project.org")))

message(
  "
  This routine installs all CES related packages, however
  it does not take care of potential dependencies outside
  the R ecocystem. For example GDAL will need to be installed
  on the system.

  By default the r-project CRAN server will be used, which
  should be reasonably fast. You can change the server on
  the second line of this script.
  "
  )

#---- data wrangling and plotting -----
# tidyverse environment
install.packages("tidyverse")

# patchwork for plotting with ggplot2
install.packages("patchwork")

#---- geospatial libraries -----
install.packages("raster")
install.packages("terra")
install.packages("sf")
install.packages("rnaturalearth")
install.packages("rgdal")
install.packages("rgeos")
install.packages("MODISTools")
install.packages("daymetr")
install.packages("ecmwfr")

#---- development ----
install.packages("devtools")
install.packages("goodpractice")
install.packages("pkgdown")
install.packages("bookdown")
install.packages("lintr")

#---- Optimization ----
install.packages("BayesianTools")
install.packages("GenSA")

#---- ecophys modelling CES ----
install.packages("hwsdr")
install.packages("rpmodel")
install.packages("climate")
devtools::install_github("computationales/rsofun")
devtools::install_github("computationales/ingestr")

#---- deep learning in R ----
install.packages("keras")
install.packages("caret")
