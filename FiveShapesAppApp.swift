
import SwiftUI

@main
struct FiveShapesAppApp: App {
    @State private var appModel = AppModel()

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(appModel)
        }
        .windowStyle(.volumetric)
        .defaultSize(
            width: 0.6,
            height: 0.4,
            depth: 0.6,
            in: .meters
        )

        ImmersiveSpace(id: appModel.immersiveSpaceID) {
            ImmersiveView()
                .environment(appModel)
                .onAppear {
                    appModel.immersiveSpaceState = .open
                }
                .onDisappear {
                    appModel.immersiveSpaceState = .closed
                }
        }
        .immersionStyle(
            selection: .constant(.full),
            in: .full
        )
    }
}
