# Clima Flutter ☁️🌡️

A simple and elegant weather app built with Flutter. It fetches current weather data based on your location or a searched city using the OpenWeatherMap API.

## 🚀 Features

* Get weather by **current device location**
* **Search** weather by city name
* Displays temperature, weather icon, and a friendly message
* Clean and responsive UI with background images
* Hot reload support for rapid development

## 📸 Screenshots

<img width="363" height="753" alt="image" src="https://github.com/user-attachments/assets/6c016729-ff79-4a91-a2db-63c6ce846ffa" />
<img width="361" height="752" alt="image" src="https://github.com/user-attachments/assets/1181174e-32c1-4f62-8ece-8e39eab16f8c" />


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
│   ├── location.dart  # Geolocation logic
│   └── networking.dart # HTTP & JSON parsing
└── utilities/
    └── constants.dart # Styling constants
```

## 📄 License

This project is licensed under the MIT License.

---

Made with ❤️ by [msjkee](https://github.com/msjkee)

