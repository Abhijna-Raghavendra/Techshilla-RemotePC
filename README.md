# LinkPC
This app permits individuals to remotely supervise and handle the activities occurring on their personal computers using their smartphones. The application has a user-friendly interface that enables users to terminate processes, power off, or put their PCs in hibernation mode.

# Basic Architecture

(1). A mobile app (to manage your PC)
The frontend includes a simple UI containing the control options for the PC (shut-down / hibernate / terminate-process/ etc.). 

![WhatsApp Image 2023-04-14 at 22 26 18](https://user-images.githubusercontent.com/95121592/232114725-06204295-ec89-4c49-bc44-fca777349acf.jpeg)

As soon as the users click on the "Login with Google" button, they would be prompted to choose an email id with which they want to login.

![WhatsApp Image 2023-04-14 at 22 26 17 (1)](https://user-images.githubusercontent.com/95121592/232115177-d60e1d6b-e58a-4668-a8c4-f1b455958f2e.jpeg)

After the authentication, the user would be logged in and the first screen visible would be the "Profile" screen. This page would have the username and the list of the remote devices that are connected to it.

![WhatsApp Image 2023-04-14 at 22 26 17](https://user-images.githubusercontent.com/95121592/232115884-2e7c3397-d656-4cd8-9c5e-2dab6bd49d20.jpeg)

We also have the task screen that would list all the ongoing tasks on the connected device. The users can terminate tasks running on their PC from this screen. 

The main functionality of the app is on the "Options" screen. This screen has the options to either sleep, hibernate, restart or shutdown the connected PC. The battery status of the device would also be displayed on the top. 

![WhatsApp Image 2023-04-14 at 22 26 16](https://user-images.githubusercontent.com/95121592/232118696-22857468-865f-44f5-8dc8-feb15746b2b1.jpeg)

We have used electron.js for developing the Desktop app, Flutter for the mobile app(both Android and IOS) and a FireBase backend. We have used the modular Google Oauth for the login system making it more convenient for the user. We have also tried implementing the battery status feature that indicates the current battery percentage of the device.
