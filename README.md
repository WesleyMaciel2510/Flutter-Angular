# 🚀 Flutter Angular App
This Flutter app provides a login interface that integrates with a Java Spring Boot server for authentication. 
The app uses the http package for API calls and implements state management using provider.

## 📱 ScreenShots

<p align="center">
  <img src="https://github.com/user-attachments/assets/f416c912-d907-46f7-880f-ca3ad3d8fdcf" width="200" />
  <img src="https://github.com/user-attachments/assets/94529a21-bed8-4e63-ab68-0535f2539dfa" width="200" />
  <img src="https://github.com/user-attachments/assets/6e120ad5-ff40-4bb7-8bba-e1aeb0597d18" width="200" />
</p>

<p align="center">
  <img src="https://github.com/user-attachments/assets/cc92b3fa-efb9-416a-8422-30b4a12cbe17" width="200" />
  <img src="https://github.com/user-attachments/assets/99dcc463-0d12-4ed4-9921-f3f436d520b2" width="200" />
  <img src="https://github.com/user-attachments/assets/5d54fc85-ebd9-406e-8f0c-0aa9505d1b00" width="200" />
</p>

<p align="center">
  <img src="https://github.com/user-attachments/assets/538ac0a1-19f2-4cc0-ac1f-df27691a9bf4" width="200" />
  <img src="https://github.com/user-attachments/assets/2d6d8f70-0e9e-4a4f-9be1-3c2136bcb2de" width="200" />
  <img src="https://github.com/user-attachments/assets/165bcf4b-2b03-4494-894b-9ed9f51cf154" width="200" />
  <img src="https://github.com/user-attachments/assets/64af37e9-0b60-46bb-8afc-f4eee2395fbd" width="200" />
</p>
 
## 📋 Features
🌍 Location Permissions: The app requests access to the device's fine and coarse location.
📸 Camera Access: Camera permission is required for potential future features.
🔐 User Authentication: Handles user login with email and password, communicating with a Spring Boot backend server.
📝 Logging: Uses the logger package for detailed logging of events and errors.
🌐 Environment Variables: Support for loading environment variables using flutter_dotenv.

## 🛠️ Dependencies
This project uses the following Dart packages:

✅ permission_handler: To request permissions at runtime.
✅ cupertino_icons: For iOS-styled icons.
✅ http: For making HTTP requests.
✅ flutter_lints: For linting Dart code.
✅ logger: For logging events and errors.
✅ intl: For internationalization and formatting.
✅ font_awesome_flutter: For using FontAwesome icons.
✅ flutter_rating_bar: For displaying rating bars.
✅ provider: For state management.
✅ flutter_dotenv: For loading environment variables from a .env file.

## 🔐 Permissions
The app requires the following permissions, as declared in the AndroidManifest.xml file:

<uses-permission android:name="android.permission.ACCESS_FINE_LOCATION"/>
<uses-permission android:name="android.permission.ACCESS_COARSE_LOCATION"/>
<uses-permission android:name="android.permission.CAMERA"/>

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
