find_hashed_output <- eventReactive(input$start_hash, {
  digest::digest(input$text_to_hash,
                 algo = input$select_hash,
                 serialize = FALSE)
  
  
  
  
})

output$hashed_output <- renderText({
  find_hashed_output()
})


observeEvent(input$start_hash, {
  output_clip <- digest::digest(input$text_to_hash,
                                algo = input$select_hash,
                                serialize = FALSE)
  output$clip <- renderUI({
    rclipButton(
      "clipbtn",
      " ",
      output_clip,
      icon = icon("clipboard")
    )
  })
})