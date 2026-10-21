
import SwiftUI
import Observation

@Observable
class AppModel {
    let immersiveSpaceID = "ImmersiveSpace"

    var immersiveSpaceState: ImmersiveSpaceState = .closed
}

enum ImmersiveSpaceState {
    case closed
    case inTransition
    case open
}
