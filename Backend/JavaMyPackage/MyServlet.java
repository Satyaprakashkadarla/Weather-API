import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.URL;
import org.json.JSONObject;

@WebServlet("/weather")
public class MyServlet extends HttpServlet {

    private static final String API_KEY = "your_api_key"; // Replace with your API key
    private static final String API_URL = "http://api.openweathermap.org/data/2.5/weather?q=";

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("application/json");
        String city = request.getParameter("city");
        if (city == null || city.isEmpty()) {
            response.getWriter().write("{\"error\": \"City parameter is missing\"}");
            return;
        }

        String apiUrlWithParams = API_URL + city + "&appid=" + API_KEY;
        HttpURLConnection connection = null;

        try {
            URL url = new URL(apiUrlWithParams);
            connection = (HttpURLConnection) url.openConnection();
            connection.setRequestMethod("GET");

            int responseCode = connection.getResponseCode();
            if (responseCode == HttpURLConnection.HTTP_OK) {
                BufferedReader in = new BufferedReader(new InputStreamReader(connection.getInputStream()));
                String inputLine;
                StringBuilder content = new StringBuilder();

                while ((inputLine = in.readLine()) != null) {
                    content.append(inputLine);
                }

                // Close connections
                in.close();
                connection.disconnect();

                // Parse the JSON response
                JSONObject jsonResponse = new JSONObject(content.toString());
                response.getWriter().write(jsonResponse.toString());
            } else {
                response.getWriter().write("{\"error\": \"Failed to get weather data\"}");
            }
        } catch (Exception e) {
            response.getWriter().write("{\"error\": \"An error occurred: " + e.getMessage() + "\"}");
        } finally {
            if (connection != null) {
                connection.disconnect();
            }
        }
    }
}
