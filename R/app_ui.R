#' The application User-Interface
#'
#' @param request Internal parameter for `{shiny}`.
#'     DO NOT REMOVE.
#' @import shiny
#' @importFrom bslib bs_theme layout_column_wrap
#'
#' @noRd
app_ui <- function(request) {
  tagList(

    golem_add_external_resources(),

    navbarPage(

      theme = bs_theme(bootswatch = "spacelab"),

      # thematic_shiny(),

      ##

      title = tagList(#icon("home"),
        # img(src="www/WMlogo.png", width = "50px"),
        "soydiveryagro"
      ),

      footer = tagList(
        hr(),
        layout_column_wrap(
          width = 1/3,
          "Version 0.0.0 - January 2025",
          p(
            align = "center",
            downloadLink("downloadManual", "User manual")
          ),
          p(
            align = "right",
            "Report an issue"
            # tags$a(
            #   "Report an Issue",
            #   href = "mailto:MESE@efsa.europa.eu?subject=%5BR4EU%5D%20WaterManage4You&body=First%20Name%3A%0D%0ALast%20Name%3A%0D%0AOrganization%3A%0D%0ACountry%3A%0D%0ASoftware Version%3A%201.0.1%0D%0AFeedback%20or%20Issue%3A"
            # )
          )
        )
      ),
      tabPanel("Home",
               mod_welcome_ui("welcome_1")
      ),
      tabPanel("Documentation",
               "BB"
               # mod_doc_ui("doc_1")
      ),
      tabPanel("About",
               "CC"
               # mod_about_ui("about_1")
      ),
      tabPanel("Wheat predictor",
               mod_prediction_ui("prediction_1")
      )
      # tabPanel("About", "ee")
    )
  )
}

#' Add external Resources to the Application
#'
#' This function is internally used to add external
#' resources inside the Shiny application.
#'
#' @import shiny
#' @importFrom golem add_resource_path activate_js favicon bundle_resources
#' @noRd
golem_add_external_resources <- function() {
  add_resource_path(
    "www",
    app_sys("app/www")
  )

  tags$head(
    favicon(),
    bundle_resources(
      path = app_sys("app/www"),
      app_title = "soildiveragro"
    )
    # Add here other external resources
    # for example, you can add shinyalert::useShinyalert()
  )
}
