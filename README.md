# Scube Control & Monitoring System (SCM)

## Project Overview

This Flutter application was developed as part of the technical assessment for the Flutter Developer position at **Scube Technologies Ltd**. The project implements a sophisticated **Control & Monitoring System** based on a provided Figma design and prototype.

The application focuses on delivering a high-fidelity user interface with real-time data visualization, focusing on energy monitoring, revenue tracking, and system analysis.

### Key Features
* **Secure Authentication**: A professional login interface with form validation and a sleek UI.
* **Dynamic Dashboard**: A comprehensive summary view featuring **Radial Gauges** for real-time power monitoring.
* **Advanced Data Visualization**: 
    * **Data View**: Monitoring energy metrics (kWh/Sqft).
    * **Revenue View**: Financial tracking (TK) with a custom toggle system.
* **Energy Analysis**: Detailed breakdown of data sources (Data A, B, C, D) with percentage distribution and cost analysis.
* **Custom Date Filtering**: Functionality to toggle between "Today's Data" and "Custom Date Range" with a built-in search mechanism.
* **Responsive UI**: Optimized layouts that strictly adhere to the Figma design specifications.

---

## 🏗️ Architecture & State Management

The project follows a **Feature-based Clean Architecture** to ensure scalability and maintainability:

* **State Management**: [GetX](https://pub.dev/packages/get) for reactive state updates, dependency injection, and efficient route management.
* **Folder Structure**:
    * `core/`: App-wide constants, themes, and colors.
    * `data/`: Models and providers.
    * `modules/`: Feature-specific logic (Login, Dashboard, Data View).
    * `routes/`: Centralized navigation configuration.

---

## 🚀 How to Run the App

Follow these steps to set up and run the application on your local machine:

### Prerequisites
* Flutter SDK (v3.16.0 or higher)
* Dart SDK (v3.0.0 or higher)
* A physical Android/iOS device or an Emulator/Simulator

### Steps
1.  **Clone the Repository**
    ```bash
    git clone [https://github.com/your-username/scube-task-app.git](https://github.com/your-username/scube-task-app.git)
    cd scube-task-app
    ```

2.  **Install Dependencies**
    ```bash
    flutter pub get
    ```

3.  **Run the Application**
    ```bash
    flutter run
    ```

---

## 📦 Dependencies Used

This project leverages the following industry-standard packages:

| Package | Purpose |
| :--- | :--- |
| `get` | High-performance state management, navigation, and DI. |
| `syncfusion_flutter_gauges` | Used for rendering professional Radial Gauges and Charts. |
| `google_fonts` | For implementing the exact typography required by the Figma design. |
| `intl` | Used for formatting numbers, currency, and dates. |

---

## 📸 Screenshots

| Login Screen | Dashboard | Data/Revenue View |
| :---: | :---: | :---: |
| ![Login](link_to_screenshot) | ![Dashboard](link_to_screenshot) | ![Data View](link_to_screenshot) |

---

## 🤝 Contact
**Developed by**: Md. Monjur E Elahe
**Email**: monjureelahe@gmail.com
**GitHub**: https://github.com/monjurelahe
