# Firebase iOS Open Source Development [![Build Status](https://travis-ci.org/firebase/firebase-ios-sdk.svg?branch=master)](https://travis-ci.org/firebase/firebase-ios-sdk)

This repository contains a subset of the Firebase iOS SDK source. It currently
includes FirebaseCore, FirebaseAuth, FirebaseDatabase, FirebaseFirestore,
<<<<<<< HEAD
FirebaseFunctions, FirebaseInAppMessagingDisplay, FirebaseMessaging and
FirebaseStorage.
=======
FirebaseFunctions, FirebaseInstanceID, FirebaseInAppMessaging,
FirebaseInAppMessagingDisplay, FirebaseMessaging and FirebaseStorage.
>>>>>>> refs/remotes/origin/master

The repository also includes GoogleUtilities source. The
[GoogleUtilities](GoogleUtilities/README.md) pod is
a set of utilities used by Firebase and other Google products.

Firebase is an app development platform with tools to help you build, grow and
monetize your app. More information about Firebase can be found at
[https://firebase.google.com](https://firebase.google.com).

## Installation

See the three subsections for details about three different installation methods.
1. [Standard pod install](README.md#standard-pod-install)
1. [Installing from the GitHub repo](README.md#installing-from-github)
1. [Experimental Carthage](README.md#carthage-ios-only)

### Standard pod install

Go to
[https://firebase.google.com/docs/ios/setup](https://firebase.google.com/docs/ios/setup).

### Installing from GitHub

For releases starting with 5.0.0, the source for each release is also deployed
to CocoaPods master and available via standard
[CocoaPods Podfile syntax](https://guides.cocoapods.org/syntax/podfile.html#pod).

These instructions can be used to access the Firebase repo at other branches,
tags, or commits.

#### Background

See
[the Podfile Syntax Reference](https://guides.cocoapods.org/syntax/podfile.html#pod)
for instructions and options about overriding pod source locations.

#### Accessing Firebase Source Snapshots

All of the official releases are tagged in this repo and available via CocoaPods. To access a local
source snapshot or unreleased branch, use Podfile directives like the following:

To access FirebaseFirestore via a branch:
```
pod 'FirebaseCore', :git => 'https://github.com/firebase/firebase-ios-sdk.git', :branch => 'master'
pod 'FirebaseFirestore', :git => 'https://github.com/firebase/firebase-ios-sdk.git', :branch => 'master'
```

To access FirebaseMessaging via a checked out version of the firebase-ios-sdk repo do:

```
pod 'FirebaseCore', :path => '/path/to/firebase-ios-sdk'
pod 'FirebaseMessaging', :path => '/path/to/firebase-ios-sdk'
```

### Carthage (iOS only)

Instructions for the experimental Carthage distribution are at
[Carthage](Carthage.md).

### Rome

Instructions for installing binary frameworks via
[Rome](https://github.com/CocoaPods/Rome) are at [Rome](Rome.md).

## Development

Follow the subsequent instructions to develop, debug, unit test, run integration
tests, and try out reference samples:

```
$ git clone git@github.com:firebase/firebase-ios-sdk.git
$ cd firebase-ios-sdk/Example
$ pod update
$ open Firebase.xcworkspace
```

Firestore and Functions have self contained Xcode projects. See
[Firestore/README.md](Firestore/README.md) and
[Functions/README.md](Functions/README.md).

### Code Formatting

<<<<<<< HEAD
=======
To ensure that the code is formatted consistently, run the script
[./scripts/style.sh](https://github.com/firebase/firebase-ios-sdk/blob/master/scripts/style.sh)
before creating a PR.

>>>>>>> refs/remotes/origin/master
Travis will verify that any code changes are done in a style compliant way. Install
`clang-format` and `swiftformat`.
This command will get the right `clang-format` version:

`brew install https://raw.githubusercontent.com/Homebrew/homebrew-core/773cb75d360b58f32048f5964038d09825a507c8/Formula/clang-format.rb`

### Running Unit Tests

Select a scheme and press Command-u to build a component and run its unit tests.

### Running Sample Apps
In order to run the sample apps and integration tests, you'll need valid
`GoogleService-Info.plist` files for those samples. The Firebase Xcode project contains dummy plist
files without real values, but can be replaced with real plist files. To get your own
`GoogleService-Info.plist` files:

1. Go to the [Firebase Console](https://console.firebase.google.com/)
2. Create a new Firebase project, if you don't already have one
3. For each sample app you want to test, create a new Firebase app with the sample app's bundle
identifier (e.g. `com.google.Database-Example`)
4. Download the resulting `GoogleService-Info.plist` and replace the appropriate dummy plist file
(e.g. in [Example/Database/App/](Example/Database/App/));

Some sample apps like Firebase Messaging ([Example/Messaging/App](Example/Messaging/App)) require
special Apple capabilities, and you will have to change the sample app to use a unique bundle
identifier that you can control in your own Apple Developer account.

## Specific Component Instructions
See the sections below for any special instructions for those components.

### Firebase Auth

If you're doing specific Firebase Auth development, see
[the Auth Sample README](Example/Auth/README.md) for instructions about
building and running the FirebaseAuth pod along with various samples and tests.

### Firebase Database

To run the Database Integration tests, make your database authentication rules
[public](https://firebase.google.com/docs/database/security/quickstart).

### Firebase Storage

To run the Storage Integration tests, follow the instructions in
[FIRStorageIntegrationTests.m](Example/Storage/Tests/Integration/FIRStorageIntegrationTests.m).

#### Push Notifications

Push notifications can only be delivered to specially provisioned App IDs in the developer portal.
In order to actually test receiving push notifications, you will need to:

1. Change the bundle identifier of the sample app to something you own in your Apple Developer
account, and enable that App ID for push notifications.
2. You'll also need to
[upload your APNs Provider Authentication Key or certificate to the Firebase Console](https://firebase.google.com/docs/cloud-messaging/ios/certs)
at **Project Settings > Cloud Messaging > [Your Firebase App]**.
3. Ensure your iOS device is added to your Apple Developer portal as a test device.

#### iOS Simulator

The iOS Simulator cannot register for remote notifications, and will not receive push notifications.
In order to receive push notifications, you'll have to follow the steps above and run the app on a
physical device.

## Community Supported Efforts

We've seen an amazing amount of interest and contributions to improve the Firebase SDKs, and we are
very grateful!  We'd like to empower as many developers as we can to be able to use Firebase and
participate in the Firebase community.

### macOS and tvOS
FirebaseAuth, FirebaseCore, FirebaseDatabase and FirebaseStorage now compile, run unit tests, and
work on macOS and tvOS, thanks to contributions from the community. There are a few tweaks needed,
like ensuring iOS-only, macOS-only, or tvOS-only code is correctly guarded with checks for
`TARGET_OS_IOS`, `TARGET_OS_OSX` and `TARGET_OS_TV`.

For tvOS, checkout the [Sample](Example/tvOSSample).

Keep in mind that macOS and tvOS are not officially supported by Firebase, and this repository is
actively developed primarily for iOS. While we can catch basic unit test issues with Travis, there
may be some changes where the SDK no longer works as expected on macOS or tvOS. If you encounter
this, please [file an issue](https://github.com/firebase/firebase-ios-sdk/issues).

For installation instructions, see [above](README.md#accessing-firebase-source-snapshots).

Note that the Firebase pod is not available for macOS and tvOS. Install a selection of the
`FirebaseAuth`, `FirebaseCore`, `FirebaseDatabase` and `FirebaseStorage` CocoaPods.

## Roadmap

See [Roadmap](ROADMAP.md) for more about the Firebase iOS SDK Open Source
plans and directions.

## Contributing

See [Contributing](CONTRIBUTING.md) for more information on contributing to the Firebase
iOS SDK.

## License

The contents of this repository is licensed under the
[Apache License, version 2.0](http://www.apache.org/licenses/LICENSE-2.0).

Your use of Firebase is governed by the
[Terms of Service for Firebase Services](https://firebase.google.com/terms/).
