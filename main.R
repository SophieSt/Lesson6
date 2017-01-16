### Team: Kraftfahrzeug-Haftpflichtversicherung
### Authors: Felten, Bettina; Stuhler, Sophie C.
### Date: 16-01-2017

# Import libraries
library(sp)
library(rgdal)
library(rgeos)


# Source functions
source('R/checkdir.R')
source('R/getsourcedata.R')
source('R/select_industrial.R')
source('R/reproject.R')
source('R/buffer.R')
source('R/find_place.R')
source('R/plot_result.R')


# call functions
checkdir('data')
getsourcedata('http://www.mapcruzin.com/download-shapefile/netherlands-places-shape.zip', 'data', 'places')
getsourcedata('http://www.mapcruzin.com/download-shapefile/netherlands-railways-shape.zip', 'data', 'railway')
railway = readOGR('data/railways.shp')
places = readOGR('data/places.shp')
industrial = select_industrial(railway)
industrial_rd = reproject(industrial)
places_rd = reproject(places)
industrial_buff = buffer(industrial_rd, 1000)
the_place = find_place(places_rd, industrial_buff)
plot_result(industrial_buff, the_place)
