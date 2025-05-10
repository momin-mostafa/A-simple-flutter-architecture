
# 🧪 Repository Dependency Injection - Flutter Clean Architecture

A POC Flutter project showcasing **layered clean architecture** with **repository pattern** and **dependency injection**, built for modularity, scalability, and testability.
Which is heavily inspired by google, robert c martin. It's inspired but don't strictly follows. 

---

## 📦 Features

- ✅ Clean separation of concerns  
- ✅ Easily testable architecture  
- ✅ Repository pattern to abstract data access  
- ✅ Dependency injection for flexibility and modular design  

---

## 🧱 Architecture

For a detailed explanation of the architecture and testing strategy, see:  
👉 [ARCHITECTURE.md](ARCHITECTURE.md)

---

## 💉 Dependency Injection

This project injects dependencies (e.g., repositories) at runtime using Flutter’s `Provider` or other service locators.

### Why DI?

- 🔁 Swap implementations (e.g., real vs. mock repositories)  
- 🧪 Makes testing easy by injecting mocks  
- 🔒 Avoids tight coupling  

---

## ✅ Testing

The architecture is designed with **testability in mind**:

- **Domain layer** is isolated and easy to unit test.
- **Repository interfaces** allow mocking in tests.
- UI tests only rely on the domain logic, not actual data sources.

### Example (in pseudocode):

```dart
final mockRepository = MockRepository();
final useCase = UseCase(mockRepository);

test('should return expected data', () {
  when(mockRepository.getData()).thenReturn(...);
  expect(useCase.execute(), expectedResult);
});
````

---

## 🚀 Getting Started

```bash
git clone https://github.com/momin-mostafa/repository_dependecy_injection.git
cd repository_dependecy_injection
flutter pub get
flutter run
```

---

## 🧪 Run Tests

```bash
flutter test
```

---

## 📚 Resources

* [Flutter Docs](https://flutter.dev)
* [Provider Package](https://pub.dev/packages/provider)
* [Clean Architecture](https://8thlight.com/blog/uncle-bob/2012/08/13/the-clean-architecture.html)
* [Googles Recommended Architecture](https://developer.android.com/topic/architecture)

---

## 🛠 Author

**[Momin Mostafa](https://github.com/momin-mostafa)**

```

