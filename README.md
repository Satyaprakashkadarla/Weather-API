
# Weather - API

This is a 5-Day Weather Forecast Application that provides developers and users with access to real-time and forecasted weather data for various locations worldwide. By leveraging Weather APIs, the application enhances user experience and functionality, allowing seamless integration of weather information into applications, websites, or services.


## API Reference

#### Get all items

```http
  GET /api/items
```

| Parameter | Type     | Description                |
| :-------- | :------- | :------------------------- |
| `api_key` | `string` | **Required**. Your API key |

#### Get item

```http
  GET /api/items/${id}
```

| Parameter | Type     | Description                       |
| :-------- | :------- | :-------------------------------- |
| `id`      | `string` | **Required**. Id of item to fetch |




## Deployment

To deploy this project run

```bash
  npm run deploy
```


## Environment Variables

To run this project, you will need to add the following environment variables to your .env file

`API_KEY`

`ANOTHER_API_KEY`


## Features

- Light/dark mode toggle
- Live previews
- Fullscreen mode
- Cross platform
- Responsive and user-friendly interface.
- Search functionality for city-specific weather data.
- Logs user search history in SQL database.
- Built using robust backend logic powered by JSP and Java Servlets.
- Real-time weather updates for any location worldwide.


## Roadmap

- Additional browser support

- Add more integrations


## Run Locally

Clone the project

```bash
  git clone https://link-to-your-weather-api-project

```

Go to the project directory

```bash
  cd my-project
```

Install dependencies

```bash
  POST /api/weather
  GET /api/weather
  GET /api/weather/${id}
  mysql -u your-username -p your-database-name < database-schema.sql

```

Start the server

```bash
  path-to-tomcat/bin/startup.sh
  http://localhost:8080/weather-api

```


## Screenshots Layouts
iPad Mini View 
![Screenshot 2025-03-29 120039](https://github.com/user-attachments/assets/749e7c56-a787-4049-962b-162ef3e96333)
## iPad Pro
![Screenshot 2025-03-29 120050](https://github.com/user-attachments/assets/7b86d18e-b38e-4d7a-af86-021c7e36afc9)
## Laptop View
![Screenshot 2025-03-29 120100](https://github.com/user-attachments/assets/7d7b3a02-f1c4-489b-9aac-82aed5c6d954)





