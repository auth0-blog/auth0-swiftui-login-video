# Companion projects for the video _Integrating Auth0 within a SwiftUI App_

## Project Description

<img src="https://images.ctfassets.net/23aumh6u8s0i/2vCUITSZoWh5vx9rvaT23o/7f5a6ba12dd7948f2a93374a485e2abe/starter_app_1.png" alt="Demo app’s “Logged out” screen." width="250" />&nbsp;&nbsp;&nbsp;<img src="https://images.ctfassets.net/23aumh6u8s0i/EYzWjMRx1fIiX9rU4Jd99/0a85c0549351669da425b614b6e82a8f/updated_logged_in_screen.png" alt="Demo app’s “Logged in” screen." width="250" />

This repository contains bot the starter and completed versions of the project featured in the Auth0 video **_Integrating Auth0 within a SwiftUI App_**. The video walks the viewer through the process of adding [Auth0](https://auth0.com/) authentication to an iOS app based on the [SwiftUI](https://developer.apple.com/xcode/swiftui/) framework.

The resulting app is simple, with two screens. The first is the “Logged out” screen, which appears when the app is launched:

<img src="https://images.ctfassets.net/23aumh6u8s0i/2vCUITSZoWh5vx9rvaT23o/7f5a6ba12dd7948f2a93374a485e2abe/starter_app_1.png" alt="Demo app’s “Logged out” screen." width="250" />

Tapping the **Log in** button starts the login process, which is handled by Auth0. The app delegates login to Auth0, which opens its web-based [Universal Login](https://auth0.com/docs/authenticate/login/auth0-universal-login) page, shown below:

<img src="https://images.ctfassets.net/23aumh6u8s0i/6viU0brK9Sf7kefqWhCpcL/3c0ada420ad13f7cf3a952a433412f76/swiftui_app_acreen_2.png" width="250" />

If the user provides valid login credentials, they are taken to the app’s “Logged in” screen:

<img src="https://images.ctfassets.net/23aumh6u8s0i/EYzWjMRx1fIiX9rU4Jd99/0a85c0549351669da425b614b6e82a8f/updated_logged_in_screen.png" alt="Demo app’s “Logged in” screen." width="250" />

This screen displays the following information gathered from the user’s profile:

1. The user’s photo
2. The user’s name
3. The user’s email address

Tapping the **Log out** button logs the user out and returns them to the initial “Logged out” screen.


## Getting Started

### Prerequisites

* As an iOS project, it needs to be built on a computer running **macOS**, preferably macOS 11.6, a.k.a. “Big Sur” or later.
* The project is built using Apple’s official IDE, **Xcode** (preferably version 12 or later), which is available for download via the [macOS App Store](https://apps.apple.com/) or from the [Apple Developer site](https://developer.apple.com/xcode/).
* You’ll need an **iOS device**, either real or virtual:
	* If you want to deploy the app to a real iOS device, you’ll need a free [Apple Developer account](https://developer.apple.com/programs/), which requires an [Apple ID](https://support.apple.com/apple-id) with [two-factor authentication](https://support.apple.com/en-us/HT204915) enabled.
	* If you want to deploy the app to a virtual iOS device, you just need Xcode, which includes the Simulator (which simulates current iOS devices and operating systems), as well as a facility for downloading simulators for older iOS devices and operating systems.


### Installing and running the app

1. If you don’t already have an Auth0 account, <a href="https://auth0.com/signup" 
  data-amp-replace="CLIENT_ID" 
  data-amp-addparams="anonId=CLIENT_ID(cid-scope-cookie-fallback-name)">
  sign up for a free one</a>.
2. Clone the repo: `git clone https://github.com/auth0-blog/get-started-ios-authentication-swiftui.git`
3. Install the *Auth0.swift* package using Xcode:

	- In Xcode, select **File** → **Add Packages...**. The *Add Packages* window will appear.
	- In *Add Packages* window, enter this URL into the search field: `https://github.com/auth0/Auth0.swift.git`.
	- Select the **Auth0.swift** package that appears in the list of packages and in the **Dependency Rule** menu, select **Up to Next Major Version**.
	- Click **Add Package**.

4. Log into the Auth0 dashboard, select **Applications** → **Applications**, and register the app. The article covers this step in detail.
5. Once you have registered the app, copy these values from the app’s *Settings* page in the Auth0 dashboard:

	- `Domain`
	- `Client ID`

6. In Xcode, open the `Auth0` property list and paste the `Domain ID` and `Client ID` into the appropriate fields.
7. Select a device from Xcode’s device menu (near the center top of its window) and click the **Run** button:

![Selecting a device and running the app from Xcode](https://images.ctfassets.net/23aumh6u8s0i/3QMFg81WXJkPZeMrfxVBf2/4d2de0bdc14f5859094783f9f71a62e3/run_the_app.png)


## Additional Reading

* [**Auth0’s iOS/macOS Quickstart page:**](https://auth0.com/docs/quickstart/native/ios-swift) Provides you with a “starter” project with basic authentication built in.


## License

The code in this repository is licensed under the [Apache 2.0 License](https://www.apache.org/licenses/LICENSE-2.0).
