library(leaflet)
library(rgdal)
library(dplyr)
library(openxlsx)

peta <- readOGR("C:/Users/LENOVO/Documents/Course Online Python, SQL, R/Course DQLab Data Scientist/Live Session/Sesi 6/indonesia-prov.geojson")
glimpse(peta@data)

data_covid <- read.xlsx("C:/Users/LENOVO/Documents/Course Online Python, SQL, R/Course DQLab Data Scientist/Live Session/Sesi 6/Data_Harian_Kasus_per_Provinsi_COVID-19_Indonesia.xlsx")
glimpse(data_covid)

peta@data <- inner_join(peta@data, data_covid, by = c("kode" = "Kode_Provi"))
glimpse(peta@data)

bins <- c(0, 500, 1000, 5000, 10000, Inf)
pal <- colorBin("YlOrRd", domain = peta@data$Kasus_Meniggal , bins = bins)

labels <- sprintf(
  "Nama: <strong>%s</strong><br/>Jumlah Meninggal: %g  ",
  peta@data$Propinsi, peta@data$Kasus_Meniggal
) %>% lapply(htmltools::HTML)


leaflet(peta) %>%
  addTiles() %>%
  addPolygons()

leaflet(peta) %>%
  addTiles()%>%
  addPolygons(
    fillColor = ~pal(peta@data$Kasus_Meniggal),
    weight = 2,
    opacity = 1,
    color = "white",
    dashArray = "3",
    fillOpacity = 0.7,
    highlightOptions = highlightOptions(
      weight = 5,
      color = "#666",
      dashArray = "",
      fillOpacity = 0.7,
      bringToFront = TRUE),
    label = labels,
    labelOptions = labelOptions(
      style = list("font-weight" = "normal", padding = "3px 8px"),
      textsize = "15px",
      direction = "auto")) %>%
  addLegend(pal = pal, values = ~peta@data$Kasus_Meniggal, opacity = 0.7, title = NULL,
            position = "topright")
