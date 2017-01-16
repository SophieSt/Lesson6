# Find the place (i.e. a city) that intersects with this buffer.

find_place = function (points, buffer) {
  points_in = data.frame(gIntersects(buffer[1, ], points, byid = TRUE))
  names(points_in) = "intersection"
  points@data$in_buf = points_in$intersection
  the_place = points[points@data$in_buf == "TRUE", ]
  return (the_place)
}
