# Select the "industrial" (type == "industrial") railways

select_industrial = function (railway){
  industrial = subset(railway, type == 'industrial')
  return (industrial)
}

