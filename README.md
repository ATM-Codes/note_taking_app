# Note Taking App 📝

A beautiful, minimalist note-taking application built with Flutter and SQLite for offline storage.

![Flutter](https://img.shields.io/badge/Flutter-02569B?style=flat&logo=flutter&logoColor=white)
![Dart](https://img.shields.io/badge/Dart-0175C2?style=flat&logo=dart&logoColor=white)
![SQLite](https://img.shields.io/badge/SQLite-003B57?style=flat&logo=sqlite&logoColor=white)

## 📱 Screenshots

<div style="display: flex; gap: 10px;">
  <img src="screenshot1-home.png" width="200" alt="Home Screen"/>
  <img src="screenshot2-empty.png" width="200" alt="Empty State"/>
  <img src="screenshot3-editor.png" width="200" alt="Note Editor"/>
  <img src="screenshot4-search.png" width="200" alt="Search"/>
<img src="screenshot5-delete.png" width="200" alt="Delete"/>
<img src="screenshot6-delete-box.png" width="200" alt="Delete box"/>
</div>

## ✨ Features

### Core Functionality
- ✅ **Create Notes** - Quick note creation with title and content
- ✅ **Edit Notes** - Tap any note to modify
- ✅ **Delete Notes** - Swipe left with confirmation dialog
- ✅ **Search Notes** - Real-time search by title or content
- ✅ **Persistent Storage** - SQLite database for offline access

### User Experience
- 📊 **Note Count** - See total notes at a glance
- ⏰ **Smart Timestamps** - "2m ago", "1h ago", or full dates
- 🎨 **Beautiful UI** - Material Design with purple theme
- 🔍 **Real-time Search** - Filter notes as you type
- ⚠️ **Delete Confirmation** - Prevents accidental deletions
- 📭 **Empty State** - Helpful messages when no notes exist

## 🛠️ Technologies Used

- **Framework:** Flutter 3.x
- **Language:** Dart
- **Database:** SQLite (sqflite ^2.3.0)
- **State Management:** StatefulWidget
- **Architecture:** Model-View pattern

## 📁 Project Structure
```
lib/
├── models/
│   └── note.dart              # Note data model
├── screens/
│   ├── home_screen.dart       # Main notes list
│   └── note_editor_screen.dart # Create/edit screen
├── services/
│   └── database_helper.dart   # SQLite operations
└── main.dart                  # App entry point
```

## 🎓 What I Learned

### Technical Skills
- **Database Design:** Singleton pattern for database management
- **CRUD Operations:** Complete Create, Read, Update, Delete functionality
- **Search Implementation:** Real-time filtering with case-insensitive matching
- **State Management:** Proper use of setState and widget lifecycle
- **Navigation:** Screen transitions with data passing
- **Dismissible Widget:** Swipe-to-delete with animations
- **Time Formatting:** Relative time display (minutes/hours/days ago)

### Key Concepts Mastered
1. **SQLite Integration**
   - Database initialization and table creation
   - Data persistence across app restarts
   - Efficient queries with orderBy

2. **Widget Lifecycle**
   - initState for loading data
   - dispose for cleaning up controllers
   - mounted check for safe async operations

3. **Search Functionality**
   - TextField state management
   - List filtering with where() method
   - Real-time UI updates

4. **Error Handling**
   - Input validation (empty fields)
   - Null safety with nullable types
   - Safe context usage after async operations

### Problem-Solving Highlights
1. **Mounted Check Issue**
   - Problem: Error when showing SnackBar after async deletion
   - Solution: Check `if (mounted)` before using context

2. **Note Count Update**
   - Problem: Count not updating after swipe delete
   - Solution: Call `_loadNotes()` in onDismissed

3. **Search State Management**
   - Problem: Maintaining separate filtered and full lists
   - Solution: Two lists (_notes and _filteredNotes) with proper synchronization

## 🚀 Setup & Installation

### Prerequisites
- Flutter SDK (3.0 or higher)
- Dart SDK
- Android Studio / VS Code
- Android Emulator or physical device

### Installation Steps

1. **Clone the repository**
```bash
git clone https://github.com/ATM-Codes/note_taking_app.git
cd note_taking_app
```

2. **Install dependencies**
```bash
flutter pub get
```

3. **Run the app**
```bash
flutter run
```

4. **Build APK (optional)**
```bash
flutter build apk --release
```

## 💡 How to Use

1. **Create a Note**
   - Tap the purple + button
   - Enter title and content
   - Tap the checkmark to save

2. **Edit a Note**
   - Tap any note card
   - Modify title or content
   - Tap checkmark to update

3. **Delete a Note**
   - Swipe left on any note
   - Red delete background appears
   - Confirm deletion in dialog

4. **Search Notes**
   - Tap search icon in app bar
   - Type keywords
   - Results filter in real-time
   - Tap X to exit search

## 🔮 Future Enhancements

- [ ] **Categories/Tags** - Organize notes by topics
- [ ] **Color Coding** - Visual organization with colors
- [ ] **Rich Text** - Bold, italic, bullet points
- [ ] **Image Attachments** - Add photos to notes
- [ ] **Cloud Sync** - Backup to Firebase
- [ ] **Dark Mode** - Theme switching
- [ ] **Export** - Share as text/PDF
- [ ] **Pinned Notes** - Keep important notes at top
- [ ] **Archive** - Soft delete with recovery
- [ ] **Reminders** - Set note reminders

## 📊 Development Stats

- **Development Time:** 2 days (Dec 3-6, 2025)
- **Total Coding Hours:** ~5 hours
- **Lines of Code:** ~500
- **Commits:** 10+
- **Features Implemented:** 8

## 🎯 Project Goals

This project was built as part of my journey to become a Flutter developer, demonstrating:
- Clean code practices
- Database management
- User-friendly design
- Problem-solving skills
- Version control proficiency

## 📝 Lessons Learned

1. **Always check `mounted` before using context after async operations**
2. **Maintain separate filtered and source lists for search functionality**
3. **Use Dismissible widget for intuitive swipe-to-delete UX**
4. **Reload data after mutations to keep UI in sync**
5. **Validate user input before database operations**

## 🤝 Contributing

This is a personal learning project, but feedback and suggestions are welcome!

## 📄 License

This project is open source and available under the MIT License.

## 👨‍💻 Developer

**Abaraajith**
- Location: Negombo, Sri Lanka
- GitHub: [@ATM-Codes](https://github.com/ATM-Codes)
- Goal: Flutter/React Developer by February 2026

---

**Built with ❤️ using Flutter**

*Part of my 15-week journey to become a professional mobile developer!*

**Week 3 of 15 - Complete! ✅**