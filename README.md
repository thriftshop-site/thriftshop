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

2. Set Up You Firebase Project

- create new android project
- add project name `dev.goldcoders.thriftshop`
- on your project folder `cd android` then run `./gradlew signingReport`
- Get SHA1 paste on SHA Requirements in Firebase site creation of new project
- Download `google-services.json` and put it in your project folder inside `android/app`
- open in editor `android/app/build.gradle` change this to the same name you name your app in creating new android app in firebase

```
// on line 42 android/app/build.gradle
applicationId "dev.goldcoders.thriftshop"
```

3. Usage with VSCODE

- open your terminal
- cd to your `repo` folder
- open vscode  `code .`
- type `ctrl + p` then type `flutter change sdk` choose `beta`
- go to pubspec.yaml, `save`, it will fetch the correct dependencies using correct `flutter and dart sdk`
- run local firebase server with `firebase emulators:start`
- press `f5` then launch your emulator 
- to check local firestore go to `http://localhost:4000/firestore`
- try to sign up new user

## Todo

- Splash Page
- Login Page
- Profile Page
- Dashboard Page
- Settings Page
- Playstore Like Page
- Entry Page
- Vote Page
- Cart Page
- License Page