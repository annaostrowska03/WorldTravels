# 🌍 World Travels: [worldtravels.azurewebsites.net](https://worldtravels.azurewebsites.net/)
**author**: Anna Ostrowska ([@annaostrowska03](https://github.com/annaostrowska03))

link to the application: [worldtravels.azurewebsites.net](https://worldtravels.azurewebsites.net/)

### **World Travels** is a travel recommendation app that suggests travel destinations based on user preferences and displays them on an interactive map.


## Features

- **Personalized Recommendations**: Suggests travel destinations based on user input (budget, prefered temperatures, regions, activities etc.).
- **Interactive Map**: Displays recommended destinations using Azure Maps.


## Technologies
- Frontend: Blazor Web App
- Backend: .NET Core
- Database: Azure SQL
- Maps and weather data: Azure Maps
- Datasets: Kaggle


## Description of directories
- SCVtoDatabase: datasets providing informatioin about cities, coutries and Cost of Living Index with a code to import them to the database
- DataCreationSQL: queries for creating additional data tables and providing additional or missing data (ex. activities)
- GetTemperatureData: code for connecting to Azure Maps API and filling the data table with average temperatures in every week of every month in each location
- VacationPlannerApp: application code
- World_Travels_report: document describing the process of app development, sources and app features

## Architectute
![architecture drawio](https://github.com/user-attachments/assets/7f7eb938-ddaf-45be-8aae-477b8c2f77e2)

