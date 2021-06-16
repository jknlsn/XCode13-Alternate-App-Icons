# XCode 13 Alternate App Icons

## Preamble

With the beta of XCode 13 creating alternate app icons is now much simpler and requires much less manual steps than previously. This repo shows how to add alternate app icons and a super simple SwiftUI interface for changing them.

## Prepare App Images

Add an `iOS App icon` asset catalog for each alternate app icon you want to add. Also add an `Image Set` for each icon. This is necessary because `Image` will not show an app icon asset.

Populate all the necessary sizes of app icon image in the asset catalog.

## Build Settings

### Asset Catalog Compiler - Options

Set `Include All App Icon Assets` to `Yes`.

Double click on `Alternate App Icon Sets` and type in the names of your alternate app icons assets, separate with a comma i.e. `Green, Blue`.

![Asset Catalog Compiler - Options](https://github.com/jknlsn/XCode13-Alternate-App-Icons/raw/main/Images/E39gw1JVgAIZV-Q.jpeg "Screenshot of XCode build settings")

## Code

```swift
VStack{

    Text("Change App Icon")
        .font(.title)

    HStack{

        Button(action: {
            UIApplication.shared.setAlternateIconName(nil)
        }){
            Image("AppIconImage")
                .cornerRadius(20)
        }

        Button(action: {
            UIApplication.shared.setAlternateIconName("BlueIcon")
        }){
            Image("BlueImage")
                .cornerRadius(20)
        }

        Button(action: {
            UIApplication.shared.setAlternateIconName("GreenIcon")
        }){

            Image("GreenImage")
                .cornerRadius(20)
        }
    }
}
```

## Final result

![Change App Icon](https://github.com/jknlsn/XCode13-Alternate-App-Icons/raw/main/Images/IMG_5950.jpg "Change App Icon")

![You have changed the icon confirmation message](https://github.com/jknlsn/XCode13-Alternate-App-Icons/raw/main/Images/IMG_5952.jpg "You have changed the icon confirmation message")

## References

[XCode 13 Beta Release Notes](https://developer.apple.com/documentation/Xcode-Release-Notes/xcode-13-beta-release-notes)

[Hacking With Swift - How to change your app icon dynamically with setalternateiconname](https://www.hackingwithswift.com/example-code/uikit/how-to-change-your-app-icon-dynamically-with-setalternateiconname)
