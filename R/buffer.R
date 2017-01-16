# Buffer the "industrial" railways with a buffer of 1000m (hint: gBuffer with byid=TRUE)

buffer = function (bufferobject, distance) {
  buffered = gBuffer(bufferobject, byid = TRUE, width = distance)
  return (buffered)
}






