# 📦 workbuddy‑tdlib‑integration

**workbuddy‑tdlib‑integration** is a module that integrates **[TDLib](https://core.telegram.org/tdlib)** (Telegram Database Library) into the WorkBuddy project, enabling efficient, secure, and cross‑platform interaction with the Telegram API.

## 🚀 Key Features
- Connect to and communicate with Telegram through TDLib.
- Send and receive messages, manage chats.
- Handle real‑time Telegram events.
- Seamlessly fit into the WorkBuddy architecture.

## 📋 System Requirements
- **Java 11+** or **Kotlin** (IntelliJ IDEA compatible).
- **Gradle** or **Maven** as a build tool.
- Pre‑compiled **TDLib** library for your operating system.

## 🔧 Installation

### 1. Add TDLib to the project
Include the `.so` (Linux), `.dll` (Windows), or `.dylib` (macOS) file in your library path.  
You can also build TDLib from source by following the instructions on [TDLib’s GitHub](https://github.com/tdlib/td).

### 2. Configure in `build.gradle`
```gradle
dependencies {
    implementation 'org.telegram:tdlib:1.x.x'
}
```

### 3. Set up API credentials
- Obtain **api_id** and **api_hash** from [my.telegram.org](https://my.telegram.org/).
- Create a configuration file (`config.json`):
```json
{
  "api_id": 123456,
  "api_hash": "your_api_hash",
  "phone_number": "+84123456789"
}
```

## 📂 Project Structure
```
workbuddy-tdlib-integration/
 ├── src/
 ├── build.gradle
 ├── config.json
 └── README.md
```

## ▶️ Running the project
```bash
gradle run
```
This will initialize TDLib and connect to the Telegram API.

## 🧩 Example usage
```java
TdApi.GetMe request = new TdApi.GetMe();
client.send(request, user -> {
    System.out.println("User: " + user.firstName);
});
```

## 📜 License
This project is licensed under the MIT License – see the [LICENSE](LICENSE) file for details.
