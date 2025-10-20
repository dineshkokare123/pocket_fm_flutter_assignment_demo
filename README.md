# pocket_fm_flutter_assignment

# 🛒 Shopsy - E-commerce Prototype

A small mobile interface prototype built with **Flutter** to simulate a basic online store flow, focusing on state management and navigation.

## ✨ Key Features

- **Product Listing:** Displayed mock products from a local data file.
- **Product Details:** Dedicated screen for viewing product information.
- **Shared Cart State:** Uses the `provider` package to manage the cart state, including item quantity and total price.
- **Cart Operations:** Allows users to add items, view the total, and remove items.

  ## 📲 Download & Installation

The compiled Android application can be downloaded and installed directly.

### https://github.com/dineshkokare123/pocket_fm_flutter_assignment_demo/releases/tag/v1.0.0

> **Note:** To generate this link, you must first run `flutter build apk --release`, and then upload the resulting `app-release.apk` file (found in `build/app/outputs/flutter-apk/`) to a **GitHub Release** in this repository.
## 🛠️ Local Setup

### Prerequisites

* **Flutter SDK** installed and configured.
* An Android/iOS emulator or a physical device.

### Steps

1.  **Clone the repository:**
    ```bash
    git clone https://github.com/dineshkokare123/pocket_fm_flutter_assignment_demo
    cd shopsy_store
    ```
2.  **Install dependencies:**
    ```bash
    flutter pub get
    ```
3.  **Run the app:**
    ```bash
    flutter run
    ```

    ## 🎯 Evaluation Focus

The prototype successfully demonstrates:

| Requirement | Implementation Detail |
| :--- | :--- |
| **List Rendering** | `ListView.builder` in `ProductListScreen`. |
| **Shared State** | Implemented using the **`Provider`** package (`CartProvider`). |
| **Navigation Flow** | `Navigator.push` used for navigating between List, Detail, and Cart screens. |
| **Mock Data** | Products defined in a local Dart list (simulating a JSON source). |
