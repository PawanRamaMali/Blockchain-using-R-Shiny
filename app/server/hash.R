find_hashed_output <- eventReactive(input$start_hash, {
  digest::digest(input$text_to_hash,
                 algo = input$select_hash,
                 serialize = FALSE)




})

 <- renderText({
  find_hashed_output()
})


observeEvent(input$start_hash, {
  input$hashed_output <- digest::digest(input$text_to_hash,
                                algo = input$select_hash,
                                serialize = FALSE)
  output$clip <- renderUI({
    rclipButton(
      "clipbtn",
      " ",
      input$hashed_output,
      icon = icon("clipboard")
    )
  })
})