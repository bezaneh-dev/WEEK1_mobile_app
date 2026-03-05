# Week 1: Flutter Developer ID Badge App 📱

Welcome to Week 1 of our Flutter learning journey! This repository contains the introductory materials, practice references, and solution code for building your very first Flutter application—a simple and elegant **Developer ID Card**.

## 🎯 Project Overview
This project is designed for absolute beginners. It introduces the core layouts and widget properties you will use every day in Flutter UI development. By the end of this project, you will have a digital ID card that displays a profile avatar, name, title, and contact details.

## 🧠 Concepts Covered
In this week's simple layout, we explored:
-   **Core Layouts:** Stacking widgets vertically with `Column` and side-by-side with `Row`.
-   **Containers & Styling:** Using `Container` and `BoxDecoration` to add internal padding, nice background colors, rounded corners (`borderRadius`), and drop shadows (`BoxShadow`).
-   **Typography & Icons:** Displaying information using stylized `Text` widgets and built-in Material `Icon`s.
-   **Images:** Creating a circular profile picture using the `CircleAvatar` widget.
-   **Spacing:** Fine-tuning UI structure using `SizedBox` and `Divider`.
-   **Responsive Adjustments:** Using `Expanded` to prevent text from causing the dreaded right-side "overflow" warning on small mobile screens.
-   **Code Organization:** Doing things the "clean" way by extracting repetitive tasks into small, reusable helper functions (like `buildContactRow`).

## 📂 Repository Structure
-   `solution_code/main.dart` - Contains the final, heavily-commented successful ID Badge app code.
-   `resources.txt` - Essential, curated reading materials, video links, toolchains fixes, and documentation for beginners.
-   `tasks_guide.txt` - Step-by-step guidance on tasks and structure.
-   `notes.txt` - Extra concepts and miscellaneous tips.

## 🚀 Getting Started

If you want to run this app yourself:

1.  Make sure [Flutter is installed](https://docs.flutter.dev/get-started/install) on your machine.
2.  Open your terminal and create a new project:
    ```bash
    flutter create my_id_app
    cd my_id_app
    ```
3.  Replace the contents of your `lib/main.dart` file with the final code from our `solution_code/main.dart`.
4.  Run the app on an emulator, web browser, or your connected physical device:
    ```bash
    flutter run
    ```
    *(Note: For the best experience, open the code in VS Code or Android Studio!)*

## 📚 Further Learning
Before moving on to the next assignment, be sure to check out the **`resources.txt`** file in this repo. It contains vital links to Flutter "Widget of the Week" videos (which visually explain `Row`, `Column`, `Container`, etc.) and official quick-start coding labs!