#Chat App - Documentation
#Project Overview
This is a Flutter-based chat app that allows users to enter their username and start chatting. The app provides a simple interface for sending and displaying messages. The messages are stored temporarily in memory and displayed in real-time without the need for an external database or Firebase.

#Features
- Login Screen: The user enters a username to start chatting.
- Chat Screen: The user can send and receive messages, which are displayed in real-time.
- Message Bubble: Each message has a sender's name, message text, and timestamp.
- Message Input: A text field for entering new messages and a send button.

#Tech Stack
- Dart: Language used to write the application.
- Flutter: UI framework to build the mobile app.
- State Management: Local state management using Flutter's built-in setState.

#Project Structure
lib/
 ├── main.dart              
 ├── screens/
 │    ├── login_screen.dart 
 │    ├── chat_screen.dart  
 ├── widgets/
 │    ├── message_bubble.dart 
 │    ├── message_input.dart  
 └── models/
      └── message.dart  
      
#Installation and Setup
Ensure you have the following installed on your system:
* Flutter SDK: Install Flutter
* Dart SDK: Comes bundled with Flutter.

#Steps to Run the Project
Clone the Repository (if available via GitHub):
git clone https://github.com/your-repo/chat-app.git

Navigate to the project directory:
cd chat-app

Install dependencies:
flutter pub get

Run the app:
flutter run

#How to Use the App
- Login: Enter a username on the login screen and press the "Login" button.
- Chat: On the chat screen, you will see a text field at the bottom to input messages.
- Send Message: Type your message and press the send button to see it appear in the chat window.

#Limitations and Future Improvements
- Message Persistence: Currently, messages are stored only in memory and are lost when the app is closed. We could use local storage (e.g., SQLite or SharedPreferences) to persist messages.
- Real-Time Messaging: This app works with local state, so it doesn’t support real-time communication between multiple users. For real-time chat, a backend service like Firebase or WebSockets could be integrated.
- User Profiles: Add support for displaying profile pictures or other user details.

#Conclusion
This is a simple chat app built using Flutter and Dart without any backend or Firebase integration. The project demonstrates the basic concepts of building a Flutter app, handling user inputs, and displaying real-time updates within the app using local state management.
