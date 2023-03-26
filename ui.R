library(shiny)
library(shinythemes)




# Define UI for application that draws a Scatterplot
ui <- fluidPage(
  # Selection of theme
  theme = shinytheme("cerulean"),
  # Application title
  titlePanel("North West Crime Statistics"),
  
  # Sidebar with a slider input for number of bins 
  sidebarLayout(
    sidebarPanel(
      selectInput ("crime",
                   "Select crime:",
                   list("Murder", "Sexual Offences" = "SexualOffences","Attempted Murder" = "AttemptedMurder",
                        "Assault with Intent to Inflict Grievous Bodily Harm" = "SeriousAssault",
                        "Common Assault" = "Assault","Common Robbery" = "Robbery",
                        "Robbery with Aggravating Circumstances" = "SeriousRobbery",
                        "Rape","Sexual Assault" = "SexualAssault","Attempted Sexual Offences" = "AttemptedSexualOffence",
                        "Contact Sexual Offences" = "ContactSexualOffence","CarJacking",
                        "Robbery at Residential Premises" = "ResidentialPremisisRobbery",
                        "Robbery at non-Residential Premises" = "NonResidentialPremisisRobbery",
                        "Cash In Transit" = "CashInTansit","Bank Robbery" = "BankRobbery",
                        "Truck Hijacking" = "Truckhijacking","Arson", "Malicious Damage to Property" = "MaliciousPropertyDamage",
                        "Burglary at non-Residential Premises" = "NonResidenceBurglery", "Burglary at Residential Premises" = "ResidencialBurglery",
                        "Theft of Motor Vehicles and Motorcycle" = "MotorTheft", "Theft out of or from Motor Vehicle " = "MotorGoodsTheft",
                        "Stock Theft" = "StockTheft", "All Theft not Mentioned elsewhere" = "OtherTheft",
                        "Commercial Crimes" = "CommecialCrimes", "ShopLifiting",
                        "Illegal Possession of Firearms and Ammunition" = "IllegalPossessionofFirearms",
                        "Drug Related Crime" = "DrugCrimes","Driving Under the Influence of Alcohol or Drugs" = "DrunkenDriving",
                        "Sexual Offences Detected as a Result of Police Action" = "PoliceSexualOffence")),
      selectInput ("Station",
                   "Select Police Station:",
                   list("Amalia","Assen","Atamelang","Bedwang","Beisisvlei","Bethanie",
                        "Bloemhof","Boitekong","Boons","Boshoek","Brey","Brits")),
      
      submitButton("Submit")
      ),
    
    # Show a plot of the generated distribution
    mainPanel(
      plotOutput("distPlot")
    )
  )
)