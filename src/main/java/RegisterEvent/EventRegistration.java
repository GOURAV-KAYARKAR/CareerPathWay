package RegisterEvent;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

@MultipartConfig(maxFileSize = 16177215) // Handles large file uploads
public class EventRegistration extends HttpServlet {
    private static final long serialVersionUID = 1L;

    public EventRegistration() {
        super();
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html");
        PrintWriter out = response.getWriter();

        // Retrieve form data
        String showDate = request.getParameter("ticket-show-date");
        String name = request.getParameter("ticket-show-name");
        String timing = request.getParameter("ticket-timing");
        String author = request.getParameter("ticket-author");
        String totalTicket = request.getParameter("total-ticket");
        String ticketPrice = request.getParameter("ticket-price");
        Part imagePart = request.getPart("ticket-image");

        // Debugging form data
        out.println("Show Date: " + showDate);  // Add similar logs for other parameters if needed

        // Check if any form parameter is null
        if (showDate == null || name == null || timing == null || author == null || totalTicket == null || ticketPrice == null || imagePart == null) {
            out.println("<h2>Error: Missing form data. Please ensure all fields are filled.</h2>");
            return;
        }

        // Handling image data
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        byte[] buffer = new byte[4096];
        int bytesRead;
        try (InputStream inputStream = imagePart.getInputStream()) {
            while ((bytesRead = inputStream.read(buffer)) != -1) {
                byteArrayOutputStream.write(buffer, 0, bytesRead);
            }
        } catch (IOException e) {
            e.printStackTrace();
            out.println("<h2>Error: Image upload failed. " + e.getMessage() + "</h2>");
            return;
        }
        byte[] imageData = byteArrayOutputStream.toByteArray();

        // Database connection and insertion
        Connection con = null;
        PreparedStatement pst = null;
        try {
            // Load MySQL driver
            Class.forName("com.mysql.cj.jdbc.Driver");

            // Database connection (make sure your URL, username, and password are correct)
            con = DriverManager.getConnection("jdbc:mysql://localhost:3306/event", "root", "@root1234");
            if (con == null) {
                out.println("<h2>Error: Could not establish database connection.</h2>");
                return;
            }

            // Prepare SQL query
            String query = "INSERT INTO EventRegistration(Event_Date, Event_Name, Event_Timing, Event_Host, TotalTickets, TicketPrice, Event_Image) VALUES (?, ?, ?, ?, ?, ?, ?)";
            pst = con.prepareStatement(query);
            pst.setString(1, showDate);
            pst.setString(2, name);
            pst.setString(3, timing);
            pst.setString(4, author);
            pst.setString(5, totalTicket);
            pst.setString(6, ticketPrice);
            pst.setBytes(7, imageData);

            // Execute query
            int rowsAffected = pst.executeUpdate();

            // Check if insert was successful and redirect accordingly
            if (rowsAffected > 0) {
                response.sendRedirect("index.jsp"); // Redirect to index page on success
            } else {
                out.println("<h2>Error: Could not insert data. Please try again.</h2>");
            }

        } catch (ClassNotFoundException e) {
            out.println("<h2>Error: MySQL Driver not found. " + e.getMessage() + "</h2>");
        } catch (SQLException e) {
            out.println("<h2>Error: Database connection issue. " + e.getMessage() + "</h2>");
        } finally {
            // Close resources
            try {
                if (pst != null) pst.close();
                if (con != null) con.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
    }
}
