# Thriftshop App

A Platform Where Developers Can Showcase their App at Targeted Community Niche.
Community Dictates the Timeline and Development of Apps they Like.
Users Benefits From The Community by lowering the Cost of App Development.
The Developer Benefits From Getting App Revenue on the Platform.


## Requirements
- Neovim
- VSCODE
- NodeJS
- Flutter Version Manager
- Dart SDK
- Firebase CLI
- Android Studio

## Setting Up

> Clone Repo

`git clone https://github.com/thriftshop-site/thriftshop`

`cd thriftshop`

`code .`

`ctrl + p` then type `flutter change sdk` choose `beta`

## Offline First Development

> Clone  thriftshop-firestore-rules

`git clone https://github.com/thriftshop-site/thriftshop-firestore-rules`

- run the Emulator

`firebase emulators:start`

## Usage with VSCODE with Android Emulators

- open your terminal
- cd to your `thriftshop` folder
- open vscode  `code .`
- type `ctrl + p` then type `flutter change sdk` choose `beta`
- go to pubspec.yaml, `save`, it will fetch the correct dependencies using correct `flutter and dart sdk`
- press `f5` then launch your emulator 


## Production Set Up with Firebase

- create new android project in [firebase](https://console.firebase.google.com/)
- add project name `dev.goldcoders.thriftshop`
- on your project folder `cd android` then run `./gradlew signingReport`
- Get SHA1 paste on SHA Requirements in Firebase site creation of new project
- Download `google-services.json` and put it in your project folder inside `android/app`
- open in editor `android/app/build.gradle` change this to the same name you name your app in creating new android app in firebase

```dart
// on line 42 android/app/build.gradle
applicationId "dev.goldcoders.thriftshop"
```

## Export and Import Data

> Go to `thriftshop-firestore-rules` Directory

- Create Your Storage folder ie.: `mkdir firestore`

- Starting From Clean Slate

run: `firebase emulators:start --import=firestore --export-on-exit=firestore`

- If You Want To Export Prior Exit , open new terminal, run the following commands:

```sh
mkdir new_firestore
firebase emulators:export new_firestore
```

- if You want to Export The Users Used for Authentication, run the following commands:

```sh
// firestore emulator for auth should be running
mkdir firebase_auth
cd firebase_auth
touch users.json
firebase auth:export users.json  //(it can be .json/.csv)
```

## Testing 

> We Can Run Our Test Suite Using this Command 
Note: Make Sure You are @ `thriftshop-firestore-rules`

run: `firebase emulators:exec --only firestore "yarn test-firestore"`


## [Issues](https://github.com/thriftshop-site/thriftshop/issues)

## [License](https://github.com/thriftshop-site/thriftshop/blob/main/LICENSE)
