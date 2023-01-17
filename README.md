# ✨ Merlino ✨

## Features

Generates flutter feature BLOC/REPO/VIEW

> Heavily inspired by [very_good_cli](<https://github.com/VeryGoodOpenSource/very_good_cli>)

## Installation

```sh
dart pub global activate merlino
```

## Usage

```sh
dart pub global run merlino run
```

## Commands

### create-feature

* `dart pub global run merlino create-feature abc`
Creates a new flutter feature in the root.

* `dart pub global run merlino create-feature abc --path lib/feature`
Creates a new flutter feature in the specified directory.

* `dart pub global run merlino create-feature abc --package-name your_package_name`
Creates a new flutter feature using your project package name.

* `pub run merlino update-feature`
Updates the template of the flutter feature

---

### create-feature-test

* `dart pub global run merlino create-feature-test abc`
Creates a new flutter feature test in the test folder, at root level.

* `dart pub global run merlino create-feature-test abc --path lib/feature`
Creates a new flutter feature test in the test folder, inside the specified directory.

* `dart pub global run merlino create-feature-test abc --package-name your_package_name`
Creates a new flutter feature test using your project package name.

* `pub run merlino update-feature-test`
Updates the template of the flutter feature test

---

## Building from source

* To run locally:

```sh
dart bin/merlino.dart command_name
```
