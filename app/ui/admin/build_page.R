##  Tab Build New Test Case ----

tabPanel("Build",
         value = "Build",
         fluidPage
         (
           fluidRow(
             h3("Build you Hashed and Salted Password"),
             
             column(
               3,
               selectInput(
                 inputId = "select_hash",
                 label = "Select Hash Function",
                 choices = c(
                   "md5",
                   "sha1",
                   "crc32",
                   "sha256",
                   "sha512",
                   "xxhash32",
                   "xxhash64",
                   "murmur32",
                   "spookyhash",
                   "blake3"
                 ),
                 selected = "sha512",
                 multiple = FALSE
               ),
             ),
             
             column(
               4,
               textAreaInput(
                 inputId = "text_to_hash",
                 value = "",
                 label = "Enter Password to hash : ",
                 width = "100%",
                 height = "400px",
               ),
               br(),
               
               actionButton(
                 inputId = "start_hash",
                 label = "Submit",
                 icon = NULL,
                 width = "100%",
                 class = "btn-success"
               )
             )
           ),
           
           fluidRow(
             br(),
             column(11,
             textInput(inputId = "hashed_output",
                       label = "",
                       
                                placeholder = FALSE)
             ),
             column(1,
             uiOutput("clip"))
           )
           
         ))