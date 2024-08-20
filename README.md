# CSI4142: Toronto Ward Gentrification Study 🥭🌠🕰️🍄🎨

## 🪄 Phase 2: Physical Design and Data Staging 🪄

### 🚴🏻‍♀️ Overview
This project is a part of the coursework for CSI4142 at the University of Ottawa. In our research, our focus is on analyzing gentrification across different Toronto neighborhoods by examining contributing factors and finding correlations. The study involves analyzing data related to Age, Education, Demolition, Ward, Income, Household, Building Permit, Ethnocultural, Employment, Shelter, and Industry to determine their relationship with high and low gentrification levels.

### 🥨 Team Members
- Serena Iyoha 
- Shannon Noah 
- Tina Trinh 

### 🎋 Data Staging Steps (ETL Process)
- **Extraction**: Data extracted from CSVs.
- **Transformation**: Includes data cleaning, conversion, integration, discretization, and feature engineering.
- **Loading**: Involves generating surrogate keys and loading the integrated/final dataset into a data mart.

### 🐌 Prerequisites
- Ensure Python 3.6 or newer is installed.
- PostgreSQL must be installed for database management.
- For geospatial analysis, a Mapbox API key is required.

### 👒 Required Libraries
Install the following libraries using pip:

```bash
pip install pandas sqlalchemy requests Shapely json folium geopandas


For Windows:
To work with the project's database, PostgreSQL must be installed on your machine. Visit the official PostgreSQL download page and download the Windows installer for PostgreSQL.
For macOS:
Open the terminal and run "brew install postgresql" or download the macOS installer from the official PostgreSQL download page.

Restoring the database:
Launch pgAdmin, which should have come included with the PostgreSQL installation.
In the left sidebar, navigate to the "Servers" section and expand it. You should see "PostgreSQL 16". If prompted, enter your password to connect to the server.
Right-click on "Databases," then select "Create" > "Database...".
In the "Database" field, enter "main" as the name of the database.
Click "Save" to create the database.
Navigate to the newly created main database, right-click on it, and choose "Restore".
In the "Restore Database" window, you'll need to specify the source file to restore from. Click the "..." button next to the "Filename" field to browse for the file.
Navigate to the project folder where the database.backup file is located, select it, and click "Open".
Once the file is selected, click "Restore" to begin the restoration process.

For the geospatial analysis:
This part of the assignment uses the Mapbox API to make geocoding requests. As such, you need to sign up on Mapbox and generate a personal API key to run the program. 

Once the API key is generated, you simply paste to replace the "YOUR API KEY" string in the mapbox_key.json file. From there, you can begin running the geospatial Jupyer Notebook to see the full analysis by pressing Run All in your respective IDE

