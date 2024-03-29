# installing required R packages from the main repo
options(repos=structure(c(CRAN = "http://cran.r-project.org")))

install_package <- function(package){
  if (grepl("/", package)){
    # github install
    status <- try(
      devtools::install_github(package, quiet = TRUE)
      )
  } else {
    # normal install
    status <- try(install.packages(package, quiet = TRUE))
  }

  if(!inherits(status, "try-error")){
    message(paste0(".... SUCCESS installed: ", package))
  } else {
    message(paste0(".... FAILED install: ", package))
  }
}

message(
  "
  This routine installs all GECO related packages, however
  it does not take care of potential dependencies outside
  the R ecocystem. For example GDAL will need to be installed
  on the system.

  By default the r-project CRAN server will be used, which
  should be reasonably fast. You can change the server on
  the second line of this script.
  "
  )

#---- development ----
message("- Installing development tools")

pkgs <- c(
  "utils",
  "devtools",
  "goodpractice",
  "pkgdown",
  "bookdown",
  "lintr",
  "covr",
  "rmarkdown",
  "knitr",
  "testthat",
  "usethis"
  )

invisible(lapply(pkgs, install_package))

#---- data wrangling and plotting -----
message("- Installing data science tools")

pkgs <- c(
  "tidyverse",
  "broom",
  "multidplyr",
  "lubridate",
  "patchwork"
  )

invisible(lapply(pkgs, install_package))

#---- geospatial libraries -----
message("- Installing geospatial libraries")

pkgs <- c(
  "raster",
  "terra",
  "sf",
  "rnaturalearth",
  "rgdal",
  "rgeos",
  "MODISTools",
  "daymetr",
  "ecmwfr",
  "ncdf4",
  "gdalUtils"
  )

invisible(lapply(pkgs, install_package))

#---- Optimization ----
message("- Installing optimizers")

pkgs <- c(
  "BayesianTools",
  "GenSA"
  )

invisible(lapply(pkgs, install_package))

#---- machine learning in R ----
message("- Installing ML tools")

pkgs <- c(
  "randomForest",
  "keras",
  "caret"
)

invisible(lapply(pkgs, install_package))

#---- ecophys modelling GECO ----
message("- Installing GECO specific packages")

pkgs <- c(
  "hwsdr",
  "signal",
  "rpmodel",
  "ggthemes",
  "LSD",
  "yardstick",
  "virids",
  "scico",
  "bczernecki/climate",
  "computationales/GECO_template",
  "computationales/rsofun" # use the github paths, this works!!
)

invisible(lapply(pkgs, install_package))

