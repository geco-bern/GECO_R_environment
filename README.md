# GECO R environment

To use this simple R script clone the repository:

```bash
git clone https://github.com/computationales/GECO_R_environment.git
```

In a terminal run the install script:

```r
Rscript "install_GECO_environment.R"
```

This script will install all required libraries and or github hosted packages to support local and cloud computing work. This script should be run after cluster or local updates of R (version increments) or when you install a new computer yourself.


## Euler required modules
```bash
module load gcc/6.3.0
module load rstudio/1.3.1093
module load udunits2/2.2.24
module load geos/3.6.2
module load proj/6.3.1
module load gdal/3.1.2
module load hdf5/1.10.1
module load netcdf/4.4.1 
module load nco/4.6.7
module load cmake
module load r/4.0.2 # use just r for the latest version (might not work)
module load tmux
module load eth_proxy
module load libsodium/1.0.15
module load curl # required for libcurl i.e., RCurl
```
