# SwiftUIReverseMask

This is the example how to do reverse mask in SwiftUI

## How to Use

at first, create View+Extension

```swift
import SwiftUI

extension View {
    
    func reverseMask<Mask: View>(alignment: Alignment = .center,
                                 @ViewBuilder _ mask: () -> Mask) -> some View {
        self.mask {
            Rectangle()
                .overlay(alignment: alignment) {
                    mask()
                        .blendMode(.destinationOut)
                }
        }
    }
}
```

then, use it like doing mask modifier.

```swift
struct ContentView: View {
    var body: some View {
            
            Image("img_mask")
                .resizable()
                .frame(width: 300, height: 300)
                .reverseMask {
                    Image(systemName: "applelogo")
                        .font(.system(size: 100))
                }
    }
}
```

### Preview

<img width="241" alt="swiftui-reverse-mask-5" src="https://user-images.githubusercontent.com/67716751/198727725-8ab5b95a-5a9e-4fec-9f15-e671460c5398.png">

## Article

[【SwiftUI】 リバースマスクを実装し、Viewを切り抜く方法](https://dev.classmethod.jp/articles/swiftui-reverse-mask/)
