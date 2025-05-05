#' The application server-side
#'
#' @param input,output,session Internal parameters for {shiny}.
#'     DO NOT REMOVE.
#' @import shiny
#' @noRd
app_server <- function(input, output, session) {
  # Your application server logic

  mod_welcome_server("welcome_1")
  mod_prediction_server("prediction_1")
  mod_doc_server("doc_1")
  mod_about_server("about_1")
}
