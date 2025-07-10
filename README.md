# Clima Flutter ☁️🌡️

A simple and elegant weather app built with Flutter. It fetches current weather data based on your location or a searched city using the OpenWeatherMap API.

## 🚀 Features

* Get weather by **current device location**
* **Search** weather by city name
* Displays temperature, weather icon, and a friendly message
* Clean and responsive UI with background images
* Hot reload support for rapid development

## 📸 Screenshots

<img width="363" height="750" alt="image" src="https://github.com/user-attachments/assets/801757f1-4c98-470c-aa1c-dba5d8d0aa16" />
<img width="362" height="746" alt="image" src="https://github.com/user-attachments/assets/68628127-251c-4606-9fe4-6aedcbd14f94" />


## 🛠️ Technologies

* [Flutter SDK](https://flutter.dev)
* [Dart](https://dart.dev)
* [geolocator](https://pub.dev/packages/geolocator)
* [http](https://pub.dev/packages/http)
* [flutter\_dotenv](https://pub.dev/packages/flutter_dotenv)

## 🚦 How to Run

1. Clone the repository:

   ```bash
   git clone https://github.com/msjkee/clima_flutter.git
   cd clima_flutter
   ```
2. Create a file named `.env` in the project root and add your OpenWeatherMap API key:

   ```env
   OPENWEATHER_API_KEY=your_api_key_here
   ```
3. Install dependencies:

   ```bash
   flutter pub get
   ```
4. Run the app:

   ```bash
   flutter run
   ```

## 📦 Dependencies

```yaml
dependencies:
  flutter:
    sdk: flutter
  cupertino_icons: ^1.0.8
  geolocator: ^9.0.2
  http: ^0.13.6
  flutter_dotenv: ^5.0.2
```

## 📁 Project Structure

```
lib/
├── main.dart          # App entry point & .env loading
├── screens/
│   ├── loading_screen.dart
│   ├── location_screen.dart
│   └── city_screen.dart
├── services/
│   ├── location.dart   # Geolocation logic
│   └── networking.dart # HTTP & JSON parsing
└── utilities/
    └── constants.dart  # Styling constants
```

## 📘 What I Learned & Next Steps

**What I Learned:**

* Asynchronous programming with `Future`, `async`/`await`, and `Future.wait`
* Handling HTTP requests and JSON parsing using `http` and `dart:convert`
* Reading and securing API keys with `flutter_dotenv` and `.env`
* Obtaining device location and permissions with `geolocator`
* Navigating between screens using `Navigator.push`/`pop` and named routes
* Managing widget state and lifecycle (`initState`, `setState`, `didUpdateWidget`, `dispose`)
* Building responsive UI with Flutter widgets (`TextField`, `Container`, `SafeArea`, etc.)
* Error handling using `try`/`catch` and null-aware operators (`?.`, `??`)

**Next Steps & Topics to Review:**

* Deepen understanding of state management (Provider, Riverpod)
* Explore form validation and `TextFormField` inside `Form`
* Learn advanced navigation patterns (Navigator 2.0 / Router API)
* Improve error reporting and user feedback (dialogs, snackbars)
* Optimize performance (rebuilds, const constructors)
* Write unit and widget tests for services and UI

## 📄 License

This project is licensed under the MIT License.

---

Made with ❤️ by [msjkee](https://github.com/msjkee) ☁️🌡️
