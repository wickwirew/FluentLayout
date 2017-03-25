# FluentLayout

![Swift 3.0.1](https://img.shields.io/badge/Swift-3.0.1-green.svg)
[![CocoaPods compatible](https://img.shields.io/cocoapods/v/FluentLayout.svg)](#cocoapods)
[![License](http://img.shields.io/:license-mit-blue.svg)](http://doge.mit-license.org)

# Usage

![alt tag](https://github.com/wickwirew/FluentLayout/blob/master/Examples/ExampleScreenShot.png)

```swift
layout.create(spacing: 12) {

    // Top Title
    $0.addSection(title: "Lorem Ipsum")

    // Main Image, keep ratio of image
    $0.addImage(named: "snow.png").pinImageAspectRatio()

    // This section holds post information
    $0.addSection {

        // Group to contain the title, time stamp and heart
        $0.addStack(alignment: .center, spacing: 0) {

            // Title and time stamp should be on top of each other
            $0.addStack(axis: .vertical, spacing: 0) {
                $0.addTitleLabel(text: "Neque Porro Quisquam")

                // Add custom label
                $0.add(view: createdTime)
            }

            // Add heart button but pin width to 44
            $0.add(view: heartButton).pin(width: 44)
        }

        // add post body
        $0.addLabel(text: loremIpsum)
    }
}
```
