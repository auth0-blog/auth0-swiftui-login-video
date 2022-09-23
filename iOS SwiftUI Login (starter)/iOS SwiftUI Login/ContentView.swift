//
//  ContentView.swift
//  iOS SwiftUI Login
//
//  Created by Auth0 on 7/18/22.
//  Companion project for the Auth0 video
//  “Integrating Auth0 within a SwiftUI app”
//
//  Licensed under the Apache 2.0 license
//  (https://www.apache.org/licenses/LICENSE-2.0)
//


import SwiftUI

struct ContentView: View {
  
  @State private var isAuthenticated = false
  @State var userProfile = Profile.empty
  
  var body: some View {
      
    if isAuthenticated {
      
      // “Logged in” screen
      // ------------------
      // When the user is logged in, they should see:
      //
      // - The title text “You’re logged in!”
      // - Their photo
      // - Their name
      // - Their email address
      // - The "Log out” button
      
      VStack {
        
        Text("You’re logged in!")
          .modifier(TitleStyle())
  
        UserImage(urlString: userProfile.picture)
        
        VStack {
          Text("Name: \(userProfile.name)")
          Text("Email: \(userProfile.email)")
        }
        .padding()
        
        Button("Log out") {
          logout()
        }
        .buttonStyle(MyButtonStyle())
        
      } // VStack
    
    } else {
      
      // “Logged out” screen
      // ------------------
      // When the user is logged out, they should see:
      //
      // - The title text “SwiftUI Login Demo”
      // - The ”Log in” button
      
      VStack {
        
        Text("SwiftUI Login demo")
          .modifier(TitleStyle())
        
        Button("Log in") {
          login()
        }
        .buttonStyle(MyButtonStyle())
        
      } // VStack
      
    } // if isAuthenticated
    
  } // body
  
  
  // MARK: Custom views
  // ------------------
  
  struct UserImage: View {
    // Given the URL of the user’s picture, this view asynchronously
    // loads that picture and displays it. It displays a “person”
    // placeholder image while downloading the picture or if
    // the picture has failed to download.
    
    var urlString: String
    
    var body: some View {
      AsyncImage(url: URL(string: urlString)) { image in
        image
          .frame(maxWidth: 128)
      } placeholder: {
        Image(systemName: "person.circle.fill")
          .resizable()
          .scaledToFit()
          .frame(maxWidth: 128)
          .foregroundColor(.blue)
          .opacity(0.5)
      }
      .padding(40)
    }
  }
  
  
  // MARK: View modifiers
  // --------------------
  
  struct TitleStyle: ViewModifier {
    let titleFontBold = Font.title.weight(.bold)
    let navyBlue = Color(red: 0, green: 0, blue: 0.5)
    
    func body(content: Content) -> some View {
      content
        .font(titleFontBold)
        .foregroundColor(navyBlue)
        .padding()
    }
  }
  
  struct MyButtonStyle: ButtonStyle {
    let navyBlue = Color(red: 0, green: 0, blue: 0.5)
    
    func makeBody(configuration: Configuration) -> some View {
      configuration.label
        .padding()
        .background(navyBlue)
        .foregroundColor(.white)
        .clipShape(Capsule())
    }
  }
  
}


extension ContentView {
  
  private func login() {
    // TODO: Implement a full `login()` method.
    isAuthenticated = true
  }
  
  private func logout() {
    // TODO: Implement a full `logout()` method.
    isAuthenticated = false
  }
  
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
