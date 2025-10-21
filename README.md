# 🧑‍💻 Flutter Social Feed Task

A mobile application developed for a technical assessment using **Flutter**, implementing a post feed and details screen by fetching data from a mock REST API and managing state with **Provider**.

## 🎯 Task Requirements Met

| Requirement | Implementation Details |
| :--- | :--- |
| **Framework** | Flutter 3.x+ (Dart) |
| **State Management** | **Provider** (`ChangeNotifierProvider`, `Consumer`) |
| **Backend** | **`my-json-server.typicode.com`** (Implemented via `DioHelper`) |
| **UI Fidelity** | Reusable widgets (`PostWidget`, `CommentWidget`) for component parity. |
| **Responsiveness** | `MediaQuery` used for proportional spacing (e.g., `SizedBox(height: screenHeight * 0.02)`). |
| **Spacing/Padding** | Consistent, explicit padding across all container widgets. |

***

## 💡 Technical Implementation & Structure

### 1. State Management (Provider)

The application follows a simple **Provider** pattern to manage the state of the main feed:

* **`HomeScreenProvider`**: Extends `ChangeNotifier`. It handles the core business logic:
    * **Data Fetching:** Calls `DioHelper.getPosts()`.
    * **State Tracking:** Manages the feed state using discriminated unions (classes extending `HomeScreenStates`): `HomeScreenInitialState`, **`HomeScreenLoadingState`**, **`HomeScreenSuccessState`**, and `HomeScreenErrorState`.
* **`HomeScreen` Widget**: Uses `ChangeNotifierProvider` to create the provider instance and **`Consumer`** to rebuild the UI based on the current state. This ensures a clean separation between UI and data logic (SoC).

### 2. Networking & Data Layer

* **HTTP Client:** The **`dio`** package is used for network requests.
* **Service Abstraction (`shared/dio_helper/DioHelper.dart`)**: This abstract class encapsulates the `Dio` instance initialization and the `getPosts()` method, abstracting API communication from the Provider logic.
* **Configuration (`assets/.env`)**: The base URL for the mock API is loaded securely via the **`flutter_dotenv`** package, adhering to best practices for environment-specific variables.
* **Models:** Data transformation from raw JSON to Dart objects (`PostModel`, `CommentModel`) is handled within the `models/` directory, including custom `fromJson` factory constructors.

### 3. UI and Responsiveness

* **Widget Structure**: UI is divided into modular, reusable components:
    * `screens/home_screen/`: The main feed view.
    * `screens/post_screen/`: The details view, including comments.
    * `screens/post_screen/components/`: Houses `PostWidget` and `CommentWidget`.
* **Responsive Sizing**: Vertical spacing between posts on the `HomeScreen` is calculated relative to the screen height (`MediaQuery.of(context).size.height * 0.02`), ensuring proportional spacing on all devices.

***

## ⚙️ Project Setup

### Prerequisites

* Flutter SDK (3.x+)

### Installation

1.  **Clone the repository:**
    ```bash
    git clone [Your Repository Link]
    cd ebtech_task
    ```

2.  **Install dependencies:**
    ```bash
    flutter pub get
    ```

3.  **Configure Environment:**
    Create an **`assets/.env`** file in the project root and provide the mock server endpoint:
    ```env
    BASE_URL=[https://my-json-server.typicode.com/](https://my-json-server.typicode.com/)[your-username]/[your-repo]
    ```

4.  **Run the App:**
    ```bash
    flutter run
    ```

***

## 📂 Key Directories

| Directory | Purpose |
| :--- | :--- |
| `lib/models/` | Data structure definition and JSON serialization (`PostModel`, `CommentModel`). |
| `lib/screens/` | Contains all major screen widgets (`HomeScreen`, `PostScreen`). |
| `lib/screens/.../provider/` | Contains the `ChangeNotifier` (`HomeScreenProvider`) and state classes. |
| `lib/shared/dio_helper/` | Network configuration and API call methods. |
| `lib/shared/` | Shared utilities like constants, loading indicators, and application initialization. |

***

*Developed by: Ammar Hammoud*