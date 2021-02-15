ui <- fluidPage(
  titlePanel(title = "Projet de l'U.E Fouille de Données"),
  sidebarLayout
  (
    sidebarPanel(
      numericInput(inputId = "n", "Nombre de Variables", value=10, min = 3),
      textInput(inputId = "title", "Intitulé du Graphique", "Boîte à moustache en R"),
      radioButtons(inputId = "color", "Choisir la couleur", list("Blue", "Green"),"Green"),
      submitButton("Appliquer les Modifications")
    ),
    mainPanel
    (
      plotOutput(outputId = "box")
    )
  )
)