
import SwiftUI
import RealityKit

struct ImmersiveView: View {
    var body: some View {
        RealityView { content in

            // 1. Cyan sphere
            let sphere1 = ModelEntity(
                mesh: .generateSphere(radius: 0.1),
                materials: [
                    SimpleMaterial(color: .cyan, isMetallic: false)
                ]
            )
            sphere1.position = [-0.6, 1.2, -1.0]
            content.add(sphere1)

            // 2. Red sphere
            let sphere2 = ModelEntity(
                mesh: .generateSphere(radius: 0.1),
                materials: [
                    SimpleMaterial(color: .red, isMetallic: false)
                ]
            )
            sphere2.position = [-0.3, 1.2, -1.0]
            content.add(sphere2)

            // 3. Yellow box
            let box1 = ModelEntity(
                mesh: .generateBox(size: 0.15),
                materials: [
                    SimpleMaterial(color: .yellow, isMetallic: false)
                ]
            )
            box1.position = [0.0, 1.2, -1.0]
            content.add(box1)

            // 4. Green box
            let box2 = ModelEntity(
                mesh: .generateBox(size: 0.15),
                materials: [
                    SimpleMaterial(color: .green, isMetallic: false)
                ]
            )
            box2.position = [0.3, 1.2, -1.0]
            content.add(box2)

            // 5. Purple sphere
            let sphere3 = ModelEntity(
                mesh: .generateSphere(radius: 0.1),
                materials: [
                    SimpleMaterial(color: .purple, isMetallic: false)
                ]
            )
            sphere3.position = [0.6, 1.2, -1.0]
            content.add(sphere3)

            // Start the animations after adding all five shapes.
            Task { @MainActor in
                try? await Task.sleep(
                    for: .milliseconds(300)
                )

                sphere1.move(
                    to: Transform(
                        translation: [-0.6, 1.6, -1.0]
                    ),
                    relativeTo: nil,
                    duration: 2.0
                )

                sphere2.move(
                    to: Transform(
                        translation: [-0.3, 1.6, -1.0]
                    ),
                    relativeTo: nil,
                    duration: 2.0
                )

                box1.move(
                    to: Transform(
                        translation: [0.0, 1.6, -1.0]
                    ),
                    relativeTo: nil,
                    duration: 2.0
                )

                box2.move(
                    to: Transform(
                        translation: [0.3, 1.6, -1.0]
                    ),
                    relativeTo: nil,
                    duration: 2.0
                )

                sphere3.move(
                    to: Transform(
                        translation: [0.6, 1.6, -1.0]
                    ),
                    relativeTo: nil,
                    duration: 2.0
                )
            }
        }
    }
}
