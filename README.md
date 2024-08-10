# 🚀 Flutter Angular App
This Flutter app provides a login interface that integrates with a Java Spring Boot server for authentication. 
The app uses the http package for API calls and implements state management using provider.

## 📱 Video
<ul style="list-style-type: none; padding: 0; margin: 0; display: flex; flex-wrap: wrap;">
  <li style="margin-right: 20px;">🌍 Demonstration to Prove that the Application was tested and it is working with the SpringBoot Server.</li>

https://github.com/user-attachments/assets/857a0ca1-3a98-466d-83a7-ecbb5f24fc2c

</ul>

## 📱 ScreenShots

<p align="left">
  <img src="https://github.com/user-attachments/assets/f416c912-d907-46f7-880f-ca3ad3d8fdcf" width="200" />
  <img src="https://github.com/user-attachments/assets/94529a21-bed8-4e63-ab68-0535f2539dfa" width="200" />
  <img src="https://github.com/user-attachments/assets/6e120ad5-ff40-4bb7-8bba-e1aeb0597d18" width="200" />
</p>

<p align="left">
  <img src="https://github.com/user-attachments/assets/cc92b3fa-efb9-416a-8422-30b4a12cbe17" width="200" />
  <img src="https://github.com/user-attachments/assets/99dcc463-0d12-4ed4-9921-f3f436d520b2" width="200" />
  <img src="https://github.com/user-attachments/assets/5d54fc85-ebd9-406e-8f0c-0aa9505d1b00" width="200" />
</p>

<p align="left">
  <img src="https://github.com/user-attachments/assets/538ac0a1-19f2-4cc0-ac1f-df27691a9bf4" width="200" />
  <img src="https://github.com/user-attachments/assets/2d6d8f70-0e9e-4a4f-9be1-3c2136bcb2de" width="200" />
  <img src="https://github.com/user-attachments/assets/165bcf4b-2b03-4494-894b-9ed9f51cf154" width="200" />
  <img src="https://github.com/user-attachments/assets/64af37e9-0b60-46bb-8afc-f4eee2395fbd" width="200" />
</p>
 
## 📋 Features

<ul style="list-style-type: none; padding: 0; margin: 0; display: flex; flex-wrap: wrap;">
  <li style="margin-right: 20px;">🌍 Location Permissions: The app requests access to the device's fine and coarse location.</li>
  <li style="margin-right: 20px;">📸 Camera Access: Camera permission is required for potential future features.</li>
  <li style="margin-right: 20px;">🔐 User Authentication: Handles user login with email and password, communicating with a Spring Boot backend server.</li>
  <li style="margin-right: 20px;">📝 Logging: Uses the logger package for detailed logging of events and errors.</li>
  <li style="margin-right: 20px;">🌐 Environment Variables: Support for loading environment variables using flutter_dotenv.</li>
</ul>

## 🛠️ Dependencies

<ul style="list-style-type: none; padding: 0; margin: 0; display: flex; flex-wrap: wrap;">
  <li style="margin-right: 20px;">✅ permission_handler: To request permissions at runtime.</li>
  <li style="margin-right: 20px;">✅ cupertino_icons: For iOS-styled icons.</li>
  <li style="margin-right: 20px;">✅ http: For making HTTP requests.</li>
  <li style="margin-right: 20px;">✅ flutter_lints: For linting Dart code.</li>
  <li style="margin-right: 20px;">✅ logger: For logging events and errors.</li>
  <li style="margin-right: 20px;">✅ intl: For internationalization and formatting.</li>
  <li style="margin-right: 20px;">✅ font_awesome_flutter: For using FontAwesome icons.</li>
  <li style="margin-right: 20px;">✅ flutter_rating_bar: For displaying rating bars.</li>
  <li style="margin-right: 20px;">✅ provider: For state management.</li>
  <li style="margin-right: 20px;">✅ flutter_dotenv: For loading environment variables from a .env file.</li>
</ul>

## 🔐 Permissions
The app requires the following permissions, as declared in the AndroidManifest.xml file:
```xml
<uses-permission android:name="android.permission.ACCESS_FINE_LOCATION"/>
<uses-permission android:name="android.permission.ACCESS_COARSE_LOCATION"/>
<uses-permission android:name="android.permission.CAMERA"/>
```
## 🏗️ Project Structure
The app is organized into several key components:

- Authentication Service: Handles login and logout functionalities, using provider for state management.
- Environment Loader: Uses flutter_dotenv to load environment variables, such as server URLs.
- HTTP Client: Utilizes the http package to communicate with the backend server.

## 🧑‍💻 How to Run
Clone the repository:

**git clone https://github.com/WesleyMaciel2510/flutter-login-app.git**

Install dependencies:

**flutter pub get**

Configure environment variables:

Run the app:

**flutter run**

## 🔗 Integration with Backend
This app connects to a Java Spring Boot server for authentication. Make sure the server is running locally or remotely, and update the API endpoint in the AuthService class accordingly.

## 📄 License
This project is licensed under the MIT License - see the LICENSE file for details.

## ✨ Contributing
Contributions are welcome! Please fork the repository and create a pull request with your changes.
