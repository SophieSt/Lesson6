# Plot the resulting buffer and place with name and population

plot_result = function (buffer, place) {
  cityname = place@data$name
  plot(buffer, axes=T, col = 'pink', border = 'darkred',
       main = paste0('Place(s) within 1000 m around Industrial Railway:\n', cityname))
  points(place, col = 'gray10')
  text(place@coords[1], place@coords[2]+75, cityname)
  box()
  mtext(side = 1, "Longitude", line = 2.5, cex=1.1)
  mtext(side = 2, "Latitude", line = 2.5, cex=1.1)
}