
import SwiftUI
import RealityKit

struct ContentView: View {
    @Environment(AppModel.self) private var appModel

    @Environment(\.openImmersiveSpace)
    private var openImmersiveSpace

    @Environment(\.dismissImmersiveSpace)
    private var dismissImmersiveSpace

    var body: some View {
        VStack(spacing: 20) {
            Text("Five Shapes")
                .font(.largeTitle)

           
            Button(
                appModel.immersiveSpaceState == .open
                    ? "Hide Shapes"
                    : "Show Shapes"
            ) {
                Task {
                    let wasOpen = appModel.immersiveSpaceState == .open

                    guard appModel.immersiveSpaceState != .inTransition else {
                        return
                    }

                    appModel.immersiveSpaceState = .inTransition

                    if wasOpen {
                        await dismissImmersiveSpace()
                    } else {
                        await openImmersiveSpace(
                            id: appModel.immersiveSpaceID
                        )
                    }
                }
            }
            .font(.title2)

        }
        .padding()
    }
}

#Preview(windowStyle: .automatic) {
    ContentView()
        .environment(AppModel())
}
