find_hashed_output <- eventReactive(input$start_hash, {
  
  digest::digest(input$text_to_hash,
                 algo = input$select_hash,
                 serialize = FALSE)
  
  

  
})

output$hashed_output <- renderText({
  find_hashed_output()
})


observeEvent(input$start_hash, {
  print(output$hashed_output)
  output$clip <- renderUI({
    rclipButton("clipbtn", " ",clipText = output$hashed_output,icon = icon("clipboard"))
  })
})