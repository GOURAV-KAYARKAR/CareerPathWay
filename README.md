
# Live Streaming with Zego UIKit Prebuilt  

This project demonstrates a live-streaming application using **ZegoUIKitPrebuilt**. The code is written in JSP and dynamically assigns roles (Host or Audience) and manages room sessions with user-friendly features.

## Features  
- **Dynamic Role Assignment**: User roles (Host or Audience) are determined by URL parameters.  
- **Live Streaming**: Hosts can manage live streams with advanced controls.  
- **Audience Participation**: Simple access for viewers via shared links.  
- **Secure Token Generation**: Uses `generateKitTokenForTest` for testing. Replace with server-side token generation for production.  
- **Customizable UI**: Includes options for video control, chat, screen sharing, and user list.  

## Setup Instructions  
1. **Prerequisites**:  
   - Install a web server supporting JSP (e.g., Apache Tomcat).  
   - Internet access to load the ZegoUIKitPrebuilt script.  

2. **Deployment**:  
   - Place the JSP file in the appropriate directory of your web server.  
   - Start the server and navigate to the JSP file's URL.  

3. **Usage**:  
   - By default, a user is assigned a unique ID, and the room ID is generated randomly.  
   - Access the link with a `?role=Host` or `?role=Audience` parameter to join as a host or audience member, respectively.  

## Configuration  
- **App ID and Server Secret**:  
   Update the `appID` and `serverSecret` with your Zego account credentials.  

- **Production Environment**:  
   Replace `generateKitTokenForTest` with a server-side token generation method for enhanced security.  

## Example URL  
- Host:  
  ```
  http://localhost:8080/your-file.jsp?role=Host  
  ```  

- Audience:  
  ```
  http://localhost:8080/your-file.jsp?roomID=1234&role=Audience  
  ```  

## Technologies Used  
- **Frontend**: HTML, CSS, JavaScript  
- **Backend**: JSP  
- **SDK**: ZegoUIKitPrebuilt  

## License  
This project is for educational and demonstration purposes. Ensure compliance with Zego's terms and policies when using their SDK in production.
