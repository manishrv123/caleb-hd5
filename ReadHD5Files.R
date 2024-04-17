
#From: https://rpubs.com/michaeldorman/723959
library(stars)

filename = file.path("modis_data","MOD11A1.A2023250.h08v05.061.2023252003330.hdf")
sd = gdal_subdatasets(filename)
print(sd)
r = read_stars(sd[[5]])
plot(r)
