<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="ISO-8859-1">
	<style>
      #root {
        width: 100vw;
        height: 100vh;
        position: absolute;
        background: rgb(0, 75, 121);
        background: radial-gradient(
          circle,
          rgba(0, 75, 121, 1) 0%,
          rgba(0, 19, 42, 1) 100%
        );
      }
      #backbtn {
        font-weight: 100;
        text-decoration: none;
        color: black;
      }
      #myVideo {
        position: fixed;
        right: 0;
        bottom: 0;
        min-width: 100%;
        min-height: 100%;
        width: auto;
        height: auto;
        z-index: -1;
      }
    </style>
</head>
  <body>
    <div>
      <a href="index.jsp" id="backBtn">BACK</a>
    </div>
    <div id="root"></div>
  </body>
  <script src="https://unpkg.com/@zegocloud/zego-uikit-prebuilt/zego-uikit-prebuilt.js"></script>
<script>
window.onload = function () {
    function getUrlParams(url) {
        let urlStr = url.split('?')[1];
        const urlSearchParams = new URLSearchParams(urlStr);
        const result = Object.fromEntries(urlSearchParams.entries());
        return result;
    }


        // Generate a Token by calling a method.
        // @param 1: appID
        // @param 2: serverSecret
        // @param 3: Room ID
        // @param 4: User ID
        // @param 5: Username
    const roomID = getUrlParams(window.location.href)['roomID'] || (Math.floor(Math.random() * 10000) + "");
    const userID = Math.floor(Math.random() * 10000) + "";
    const userName = "userName" + userID;
    const appID = 2129147094;
    const serverSecret = "9ea1ba38d5074217903afa4c5e10d8c5";
    const kitToken = ZegoUIKitPrebuilt.generateKitTokenForTest(appID, serverSecret, roomID, userID, userName);

    
        // You can assign different roles based on url parameters.
        let role = getUrlParams(window.location.href)['role'] || 'Host';
        role = role === 'Host' ? ZegoUIKitPrebuilt.Host : ZegoUIKitPrebuilt.Audience;
        let config = {}
        if(role === 'Host'){
            config = {
           	turnOnCameraWhenJoining: true,
           	showMyCameraToggleButton: true,
           	showAudioVideoSettingsButton: true,
           	showScreenSharingButton: true,
           	showTextChat: true,
           	showUserList: true,
         }
        }
        const zp = ZegoUIKitPrebuilt.create(kitToken);
        zp.joinRoom({
            container: document.querySelector("#root"),
            scenario: {
                mode: ZegoUIKitPrebuilt.LiveStreaming,
                config: {
                            role,
                },
            },
            sharedLinks: [{
                name: 'Join as an audience',
                url:
                window.location.protocol + '//' +
                window.location.host +
                window.location.pathname +
                '?roomID=' +
                roomID +
                '&role=Audience',
            }],
            ...config
            });
}
</script>

</html>
