# Mule embedded in Web Application Example to dynamically push updates to the UI.

This example demonstrates how to embed Mule in a Java web-application (WAR) and use
Mule's MuleAjaxServlet to setup an AJAX connector. In its root web directory,
index.jsp contains a button that when clicked opens a connection to the CometD
/currentDateAjax channel. The application's Mule flow is mapped to the /currentDateAjax
channel and polls a singleton instance of com.test.CurrentDateService using its
internal Quartz scheduler. The poll event causes CurrentDateService to return the
updated current date to the channel which pushes it to the callback function that
was passed to the mule variable in index.jsp when the button was clicked and the
channel opened. The callback function displays the updated current date on the screen.

## Running the demo

1) Build the application in Maven using "mvn clean install"

2) Deploy the WAR file generated in the previous step to Tomcat.

3) Start Tomcat

4) Open a browser and navigate to http://localhost:8080

5) Click the "Get Current Date" to open the CometD channel and start displaying the current date.

Based on David Dossot's https://github.com/ddossot/mule-webapp-example
