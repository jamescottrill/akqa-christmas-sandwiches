library(shiny)
library(shinyjs)
library(shinydashboard)
library(odbc)
library(DBI)
library(dplyr)
library(RMySQL)


updateTables <- function(){
    con <- dbConnect(RMySQL::MySQL(),
                     user = Sys.getenv('SQL_USER'),
                     password = Sys.getenv('SQL_PASSWORD'),
                     dbname = "sandwiches")
    users <- dbGetQuery(con, "SELECT id,name FROM user;")
    sandwiches <- dbGetQuery(con, "SELECT id,name,brand,price,temperature,format FROM sandwich;")
    reviews <- dbGetQuery(con, "SELECT reviewerId,sandwichId,flavour,christmasness,structure,valueformoney,comments FROM review;")
    dbDisconnect(con)
    return(list(
        users = users,
        sandwiches = sandwiches,
        reviews = reviews
    ))
}

tables <- updateTables()
users <- tables$users
sandwiches <- tables$sandwiches
reviews <- tables$reviews

updateUsers <- function(){
    con <- dbConnect(RMySQL::MySQL(),
                     user = Sys.getenv('SQL_USER'),
                     password = Sys.getenv('SQL_PASSWORD'),
                     dbname = "sandwiches")
    users <- dbGetQuery(con, "SELECT id,name FROM user;")
    dbDisconnect(con)
    return(users)
}

updateSandwiches <- function(){
    con <- dbConnect(RMySQL::MySQL(),
                     user = Sys.getenv('SQL_USER'),
                     password = Sys.getenv('SQL_PASSWORD'),
                     host = '127.0.0.1',
                     dbname = "sandwiches")
    sandwiches <- dbGetQuery(con, "SELECT id,name,brand,price,temperature,format FROM sandwich;")
    dbDisconnect(con)
    return(sandwiches)
}

updateReviews <- function(){
    con <- dbConnect(RMySQL::MySQL(),
                     user = Sys.getenv('SQL_USER'),
                     password = Sys.getenv('SQL_PASSWORD'),
                     dbname = "sandwiches")
    reviews<-dbGetQuery(con, "SELECT reviewerId,sandwichId,flavour,christmasness,structure,valueformoney,comments FROM review;")
    dbDisconnect(con)
    return(reviews)
}

emptyTextField <- function(session, id){
    updateTextInput(session, id, value = "")
}
# walk(list.files(path=paste0(getwd(),",abstracts/"),pattern="\\.R",full.names=TRUE),source)

ui <-
    dashboardPage(
    dashboardHeader(title = "AKQA Christmas Sandwiches",
                    titleWidth = 300),
    dashboardSidebar(
        width = 300,
        sidebarMenu(
            menuItem("Overview", tabName = "overview"),
            menuItem("Sandwich Scores", tabName = "sandwichScores"),
            menuItem("Reviewer Scores", tabName = "reviewerScores"),
            menuItem("Add a Review", tabName = "review"),
            menuItem("New Sandwich", tabName = "sandwich"),
            menuItem("New User Registration", tabName = "user")
            # menuItem("Update Review",tabName="update")
        )
    ),
    dashboardBody(
        useShinyjs(),
        tabItems(
            ## Overview
            tabItem(tabName = "overview",
                h2("Overview"),
                DT::dataTableOutput('overviewTable')
            ),
            ## Sandwich cores
            tabItem(tabName = "sandwichScores",
                    h2("Sandwich Scores"),
                    selectInput("sandwichScoreBrand", "Brand", sandwiches %>% select(brand) %>% distinct() %>% arrange(brand)),
                    selectInput("sandwichScoreName", "Sandwich", ""),
                    DT::dataTableOutput('sandwichScoreTable')
            ),
            
            ## Reviewer Scores
            tabItem(tabName="reviewerScores",
                    h2("Reviewer Scores"),
                    selectInput("reviewerScoreName", "Name", users %>% select(name) %>% distinct() %>% arrange(name)),
                    DT::dataTableOutput('reviewerScoreTable')
            ),
            ## New Review
            tabItem(tabName="review",
                    h2("Add a Review"),
                    selectInput("reviewUser", "User", users %>% select(name) %>% arrange(name)),
                    selectInput("reviewBrand", "Brand", sandwiches %>% select(brand) %>% distinct() %>% arrange(brand)),
                    selectInput("reviewSandwich", "Sandwich", ""),
                    textInput('flavour', "Flavour"),
                    textInput('christmasness', "Christmasness"),
                    textInput('structure', "Structure"),
                    textInput('valueformoney', "Value For Money"),
                    textAreaInput('comments', "Comments"),
                    actionButton(inputId = "submitReview", label = "Submit Review"),
                    shinyjs::hidden(
                        div(
                            id = "new_review_message",
                            h3("Thanks, your review has been saved!"),
                            actionLink("close", "Close")
                        )
                    )
            ),
            ## New Sandwich
            tabItem(tabName="sandwich",
                    h2("New Sandwich"),
                    textOutput("validationErrors"),
                    selectInput("newBrand", "Brand", bind_rows(sandwiches %>% 
                                                                   select(brand) %>%
                                                                   distinct() %>% 
                                                                   arrange(brand),
                                                               list("brand"="Add New Brand")
                                                               )
                                ),
                    conditionalPanel(
                        condition = "input.newBrand == 'Add New Brand'",
                        textInput('newCustom', "New Brand Name")
                    ),
                    textInput('newName', "Name"),
                    textInput('newPrice', "Price"),
                    selectInput("newFormat", "Format", c("Sandwich"="sandwich", "Wrap"="wrap", "Baguette"="baguette", "Pies… Are you serious??"="pies")),
                    selectInput("newTemperature", "Temperature",c("Cold"="cold", "Warm"="warm")),
                    actionButton(inputId = "submitSandwich", label = "Save Sandwich"),
                    shinyjs::hidden(
                        div(
                            id = "new_sw_message",
                            h3("Thanks, the sandwich has been saved!"),
                             actionLink("closeNewSandwich", "Dismiss")
                        )
                    )
                    
            ),
            ## New User
            tabItem(tabName="user",
                    # tags$head(tags$script(src = "message-handler.js")),
                    h2("New User Registration"),
                    textInput("nameIn","Name"),
                    actionButton(inputId = "register", label = "Register")
            ),
            ## Update Review
            tabItem(tabName="update",
                    h2("Update a Review")
                
            )
        )
    )
)

# Define server logic required to draw a histogram
server <- function(input, output, session) {
    ##Overview Tab
    overview <- reactive({
        output <- reviews %>% 
            left_join(sandwiches %>% 
                          select(c(name, brand, price,id)), 
                      by = c("sandwichId"="id")) %>%
            select(c(name, brand, price, flavour, christmasness, structure, valueformoney)) %>%
            group_by(name, brand, price) %>%
            summarise_all(list(mean)) %>%
            ungroup() %>%
            rowwise() %>%
            mutate(Overall=mean(c(flavour, christmasness, structure, valueformoney))) %>%
            mutate_if(is.numeric,round,2) %>% arrange(desc(Overall))
        colnames(output) <- c("Name", "Brand", "Price", "Flavour", "Christmasness", "Structure", "Value For Money", "Overall")
        return(output)
    })

    
    output$overviewTable <- DT::renderDataTable({
        overview()
    })
    
    ##Sandwich Score Tab ##
    sandwichScoreName <- reactive({
        brandSelected <- input$sandwichScoreBrand
        sandwichScoreName <- sandwiches %>% filter(brand==brandSelected) %>% select(name) %>% arrange(name)
        sandwichScoreName$name
    })
    
    observe({
        updateSelectInput(session, "sandwichScoreName",
                          choices = sandwichScoreName() )
        })
    
    swName<-reactive({input$sandwichScoreName})
    swReviews<-reactive({
        swId<-sandwiches %>% filter(name==swName()) %>% select(id)
        swId<-as.numeric(swId$id)
        swReviews<-reviews %>%
            filter(sandwichId==swId) %>%
            left_join(users, by=c('reviewerId'='id')) %>%
            rowwise() %>%
            mutate(overall=round(sum(flavour, christmasness, structure, valueformoney)/4,2)) %>%
            select(name, overall, flavour, christmasness, structure, valueformoney, comments) %>%
            arrange(desc(overall))
        colnames(swReviews)<-c('Reviewer', 'Overall', 'Flavour', 'Christmasness', 'Structure', 'Value For Money', 'Comments')
        return (swReviews)
    })
    
    output$sandwichScoreTable <- DT::renderDataTable({
        swReviews()
    })
    
    
    ##Reviewer Score Tab ##
    # reviewerName<-reactive({input$reviewerScoreName})
    reviewerScore <- reactive({
        rId <- users %>% filter(name==input$reviewerScoreName) %>% select(id)
        rId <- as.numeric(rId$id)
        reviewerScore <- reviews %>%
            filter(reviewerId==rId) %>%
            left_join(sandwiches, by=c('sandwichId'='id')) %>%
            rowwise() %>%
            mutate(overall=round(sum(flavour,christmasness,structure,valueformoney)/4, 2)) %>%
            select(name, overall, flavour, christmasness, structure, valueformoney, comments) %>%
            arrange(desc(overall))
        colnames(reviewerScore) <- c('Sandwich', 'Overall', 'Flavour', 'Christmasness', 'Structure', 'Value For Money', 'Comments')
        return (reviewerScore)
    })
    output$reviewerScoreTable <- DT::renderDataTable({
        reviewerScore()
    })
    
    ##New Review Tab##
    brandSandwiches <- reactive({
        brandSelected <- input$reviewBrand
        brandSandwiches <- sandwiches %>% 
            filter(brand==brandSelected) %>% 
            select(name) %>% 
            arrange(name)
        brandSandwiches$name
    })
    observe({
        updateSelectInput(session, "reviewSandwich",
                          choices = brandSandwiches()
        )})
    
    timestamp <- Sys.time()
    year <- format(Sys.Date(),"%Y")
    
    observeEvent(input$submitReview,{
        hide("new_review_message")
        
        userId <- reactive({
            id <- users %>% 
                filter(name==input$reviewUser) %>% 
                select(id)
            id$id[1]
            })
        
        sandwichId <- reactive({
            id <- sandwiches %>% 
                filter(name == input$reviewSandwich & brand == input$reviewBrand) %>%
                select(id)
            id$id[1]
            })
        
        flavour <- reactive({input$flavour})
        christmasness <- reactive({input$christmasness})
        structure <- reactive({input$structure})
        valueformoney <- reactive({input$valueformoney})
        
        con <- dbConnect(RMySQL::MySQL(),
                         user = Sys.getenv('SQL_USER'),
                         password = Sys.getenv('SQL_PASSWORD'),
                         host = '127.0.0.1',
                         dbname = "sandwiches")
        
        comments <- reactive({dbEscapeStrings(con,input$comments)})
        
        query <- sprintf("INSERT INTO `review` (reviewerId, sandwichId, flavour, christmasness, structure, valueformoney, comments) \
                         VALUES ('%s','%s','%s','%s','%s','%s','%s')", 
                         userId(), sandwichId(), flavour(), christmasness(), structure(), valueformoney(), comments() )
        dbGetQuery(con,query)
        dbDisconnect(con)
        reviews <<- updateReviews()
        sandwiches <<- reviews <<- updateSandwiches
        shinyjs::show("new_review_message")
        
        output$overviewTable <- DT::renderDataTable({
            overview()
        })
        
        output$sandwichScoreTable <- DT::renderDataTable({
            swReviews()
        })
        
        output$reviewerScoreTable <- DT::renderDataTable({
            reviewerScore()
        })
    })
    
    observeEvent(input$closeNewReview,{
        shinyjs::hide('new_review_message')
    })
    
    ##New Sandwich Tab##
    observeEvent(input$submitSandwich,{
        
        con <- dbConnect(RMySQL::MySQL(),
                         user = Sys.getenv('SQL_USER'),
                         password = Sys.getenv('SQL_PASSWORD'),
                         dbname = "sandwiches")
        
        brandName <- if(input$newBrand !='Add New Brand') input$newBrand else dbEscapeStrings(con,input$newCustom)
        name <- dbEscapeStrings(con,input$newName)
        price <- input$newPrice
        price <- as.numeric(gsub("£","",price))
        format <- input$newFormat
        temperature <- input$newTemperature
        timestamp <- format(Sys.time(), "%Y-%m-%d %X")
        
        validate(
            need(name !="","Sandwich Name is Required"),
            need(price!="", "Price is required"),
            need(is.numeric(price),"Price needs to be a number in the format X.XX, don't include any other values!")
        )
        
        query <- sprintf("INSERT INTO `sandwich` (brand, name, price, format, temperature, timestamp) VALUES ('%s', '%s', '%s', '%s', '%s', '%s')",
                       brandName,
                       name,
                       price,
                       format,
                       temperature,
                       timestamp)
        dbGetQuery(con, query)
        dbDisconnect(con)
        
        sandwiches <<- updateSandwiches()
        
        choices <- sandwiches %>% select(brand) %>%distinct() %>% arrange(brand)
        
        updateSelectInput(session, 
                          inputId = "newBrand", 
                          label = "Brand", 
                          choices = bind_rows(choices, 
                                              list("brand"="Add New Brand")))
        updateSelectInput(session, 
                          inputId = "sandwichScoreBrand", 
                          label = "Brand", 
                          choices = choices, selected = tail(choices, 1) )
        
        updateSelectInput(session, 
                          inputId = "reviewBrand", 
                          label = "Brand", 
                          choices = choices, selected = tail(choices, 1) )
        
        updateSelectInput(session, 
                          inputId = "sandwichScoreBrand", 
                          label = "Brand", 
                          choices = choices, selected = head(choices, 1) )
        
        updateSelectInput(session, 
                          inputId = "reviewBrand", 
                          label = "Brand", 
                          choices = choices, selected = head(choices, 1) )

        
        shinyjs::show("new_sw_message")
    })
    
    observeEvent(input$closeNewSandwich,{
        shinyjs::hide('new_sw_message')
    })

    
    ## New Reviewer Tab ##
    observeEvent(input$register,{
        con <- dbConnect(RMySQL::MySQL(),
                         user = Sys.getenv('SQL_USER'),
                         password = Sys.getenv('SQL_PASSWORD'),
                         dbname = "sandwiches")
        name <- reactive({dbEscapeStrings(con,input$nameIn)})
        query <- sprintf("INSERT INTO `user` (name) VALUES ('%s')",name())
        dbGetQuery(con,query)
        dbDisconnect(con)
        emptyTextField(session,"nameIn")
        
        users <<- updateUsers()
        
        updateSelectInput(session, 
                          inputId = "reviewerScoreName", 
                          label = "User", 
                          choices = {users %>% select(name) %>% distinct() %>% arrange(name)})
        
        updateSelectInput(session, 
                          inputId = "reviewUser", 
                          label = "User", 
                          choices = users %>% select(name) %>% distinct() %>% arrange(name))
        
        showNotification(sprintf("Thank you for registering, %s!", name()), duration = 10, type = "message")
    })
}

# Run the application 
shinyApp(ui = ui, server = server)
