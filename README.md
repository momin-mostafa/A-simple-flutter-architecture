# 🧪 Flutter Architecture: Pragmatic, Layered, and Testable

This is a POC Flutter project demonstrating a **layered clean architecture** using the **repository pattern** and **dependency injection**, aimed at improving modularity, scalability, and testability.

It draws inspiration from Google’s recommended practices and Robert C. Martin’s Clean Architecture — but doesn't follow them dogmatically. Instead, it adapts core ideas to suit real-world development in Flutter, with a focus on **practicality over perfection**.

---

## 🤔 Why This Architecture?

Over the past few years, I’ve explored and worked with multiple mobile architectures. Each of them works well **in theory**, when followed perfectly. But in the **real world**, especially on live projects with multiple developers, things rarely remain in an ideal state.

As developers, we're problem solvers first. When faced with bugs, deadlines, or product pivots, we often prioritize **getting things working** over enforcing architectural purity. That’s when most architectures begin to break down.

I found that:

- Some patterns introduced **too much boilerplate**, slowing down iteration.
- Many Flutter architectures were tightly coupled to specific **state management** or **DI libraries**, making them harder to reason about or swap.
- And most importantly, **testability and maintainability** suffered over time.

This project is my attempt to build a **lightweight**, **tool-agnostic**, and **test-friendly** architecture that encourages good separation of concerns — while staying flexible enough to evolve with the project.

---

## 📦 Features

- ✅ Clean separation of concerns  
- ✅ Easily testable architecture  
- ✅ Repository pattern to abstract data access  
- ✅ Dependency injection without overengineering  

---

## 🧱 Architecture

For a detailed breakdown of the layered structure and testing rationale:  
👉 [ARCHITECTURE.md](ARCHITECTURE.md)

---

## 💉 Dependency Injection

This project uses basic DI principles, wired through `Provider` (or any service locator of your choice), to inject dependencies like repositories into your business logic.

### Why DI?

- 🔁 Easily swap implementations (e.g., production vs. mock)
- 🧪 Simplifies unit testing by allowing isolated components
- 🔒 Keeps layers decoupled and maintainable  

---

## ✅ Testing

This architecture is built with **testing in mind**:

- The **domain layer** is pure and independent of external packages or Flutter SDK.
- Repositories are defined via **interfaces**, so mocks can be injected.
- UI and ViewModels can be tested without relying on real data sources.

### Example (pseudocode):

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
* [Clean Architecture by Uncle Bob](https://8thlight.com/blog/uncle-bob/2012/08/13/the-clean-architecture.html)
* [Google's Recommended Architecture](https://developer.android.com/topic/architecture)

---

## 🛠 Author

**[Momin Mostafa](https://github.com/momin-mostafa)**

--- 

There are some known issues. Please check [KNOWN_ISSUES](KNOWN_ISSUES.md)