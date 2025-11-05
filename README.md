# CarouselView

## Requirements

- iOS 18.0+
- Xcode 16.0+
- SwiftUI

## Installation

### Manual Installation

1. Clone the repository:
```bash
git clone https://github.com/singhmanav/CarouselView.git
```

2. Open the project in Xcode:
```bash
cd CarouselView
open atlys.xcodeproj
```

3. Build and run the project (⌘ + R)

## Usage

### Basic Implementation

```swift
import SwiftUI

struct ContentView: View {
    let carouselImages = [
        "image1",
        "image2",
        "image3",
        "image4",
        "image5"
    ]
    
    var body: some View {
        VStack {
            CarouselView(images: carouselImages)
        }
    }
}
```

### Adding Images

1. Open your Xcode project
2. Navigate to `Assets.xcassets`
3. Right-click and select "New Image Set"
4. Name your image set (e.g., "image1")
5. Drag your image into the appropriate slot (1x, 2x, 3x)
6. Reference the image by its name in the `carouselImages` array

## License

This project is available for use under the MIT License. Feel free to use it in your projects.

## Author

**Manav**

- GitHub: [@singhmanav](https://github.com/singhmanav)

---

**Note**: This component requires iOS 17+ due to the use of modern SwiftUI scroll APIs like `.scrollPosition(id:)` and `.scrollTransition()`.
