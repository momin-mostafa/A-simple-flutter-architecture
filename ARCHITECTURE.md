---

# 📐 Architecture Overview

This Flutter project uses a **layered clean architecture** with **repository pattern** and **dependency injection**, making it modular, testable, and scalable.

---

## 🗂️ Directory Structure

```
lib/
├── main.dart
├── presentation/
│   └── state/                     # View-Model 
│   └── ui/
│       └── some_view.dart         # View
├── domain/
│   └── business_logic.dart        # Pure business rules
├── data/
│   ├── model/                      
│   │   └── DTO/                   # Raw data structures from APIs
│   │   └── DAO/                   # Data access objects (local DB)
│   ├── data_sources/              # Remote & local data providers
│   └── repositories/
│       └── repository_impl.dart   # Concrete repository implementations
```

---

## 🧱 Architecture

### 1. **Presentation Layer** (`presentation/`)

* **Responsibility**: UI rendering and user interaction.
* **Depends On**: `state` View Model (not on `data`).
* **Example**: `some_view.dart` uses `Provider` or `StateNotifier` to get state.

### 2. **Domain Layer** (`domain/`)

* **Responsibility**: Business logic and core rules.
* **Pure Dart**: No framework or I/O code. Easily unit-testable. Uses `mixin` to be used with View Model
* **Defines**:  Behaviour of software.
* **Example**: `view_model.dart` uses `SomeBusinessLogic`.

### 3. **Data Layer** (`data/`)

* **Responsibility**: Provides concrete data through APIs, local DBs, etc.
* **Repository**: repository is interface the View-Model will use.
* **data sources**: interface that repository will use.
* **DTO**: Used for serialization/deserialization from external sources.
* **DAO**: Used for interacting with local persistence like SQLite or Hive.

---

## 💉 Dependency Injection

* Dependencies are injected from a single place (e.g., via `main.dart` or a dedicated injector).
* Helps in **replacing concrete implementations with mocks** in tests.
* Promotes **constructor-based injection** for immutability and easier testing.

---

## ✅ Testability Benefits

* **Separation of Concerns**: UI, logic, and data are clearly separated.
* **Mockable**: Domain uses interfaces, so you can mock repositories in tests.
* **No side-effects** in domain logic = deterministic unit tests.
* **Reusability**: Business logic can be reused in other apps (e.g., CLI, web).

### Example: Testing the Domain Layer

```dart
final mockRepo = MockRepository();
final useCase = SomeUseCase(mockRepo);

test('should return expected result', () {
  when(mockRepo.getSomething()).thenReturn(...);
  expect(useCase.execute(), ...);
});
```

---

## 🚀 Summary

| Feature              | Benefit                              |
| -------------------- | ------------------------------------ |
| Layered structure    | Separation of concerns               |
| Repository pattern   | Inversion of control, testability    |
| DTO/DAO separation   | Clear data flow (API ↔️ Model ↔️ DB) |
| Dependency injection | Mocking and easier config            |

---
