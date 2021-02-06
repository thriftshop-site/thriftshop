# Thriftshop App

A Platform Where Developers Can Showcase their App at Targeted Community Niche.
Community Dictates the Timeline and Development of Apps they Like.
Users Benefits From The Community by lowering the Cost of App Development.
The Developer Benefits From Getting App Revenue on the Platform.

## Development

### Requirements
- Neovim
- VSCODE
- NodeJS
- Flutter Version Manager
- Dart SDK

### Development
1. Setting Up 

`git clone username/repo repo`

`cd repo`

`code .`

`ctrl + p` then type `flutter change sdk` choose `beta`

2. Usage with VSCODE

- open your terminal
- cd to your `repo` folder
- open vscode  `code .`
- type `ctrl + p` then type `flutter change sdk` choose `beta`
- go to pubspec.yaml, `save`, it will fetch the correct dependencies using correct `flutter and dart sdk`
- run local firebase server with `firebase emulators:start`
- press `f5` then launch your emulator 
- to check local firestore go to `http://localhost:4000/firestore`
- try to sign up new user


3. Set Up Firebase (Android Production)

- create new android project in firebase
- add project name `dev.goldcoders.thriftshop`
- on your project folder `cd android` then run `./gradlew signingReport`
- Get SHA1 paste on SHA Requirements in Firebase site creation of new project
- Download `google-services.json` and put it in your project folder inside `android/app`
- open in editor `android/app/build.gradle` change this to the same name you name your app in creating new android app in firebase

```dart
// on line 42 android/app/build.gradle
applicationId "dev.goldcoders.thriftshop"
```

4. Export and Import Data

Read this for [Exporting Data from Production](https://cloud.google.com/sdk/gcloud/reference/beta/firestore/export) 

> On Local , You Can Create Your Data on Emulator UI

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

Our Test Suites is Located at https://github.com/thriftshop-site/thriftshop-firestore-rules

## [Issues](https://github.com/thriftshop-site/thriftshop/issues)

## [License](https://github.com/thriftshop-site/thriftshop/blob/main/LICENSE)

## References
- [Firebase Emulator: Install and Config](https://firebase.google.com/docs/emulator-suite/install_and_configure#startup)
- [Firebase Emulator](https://codelabs.developers.google.com/firebase-emulator#0)
- [Firebase Emulator Test](https://developers.google.com/codelabs/firebase-emulator-test-rules#0)
- [Local development with Firebase Emulator Suite](https://www.youtube.com/watch?v=yAFQVjxNWE8)