
import SwiftUI
import RealityKit

struct ImmersiveView: View {
    var body: some View {
        RealityView { content in

            let sphere1 = ModelEntity(
                mesh: .generateSphere(radius: 0.1),
                materials: [
                    SimpleMaterial(color: .cyan, isMetallic: false)
                ]
            )
            sphere1.position = [-0.6, 1.2, -1]
            content.add(sphere1)
            sphere1.move(
                to: Transform(translation: [-0.6, 1.6, -1]),
                relativeTo: nil,
                duration: 2.0
            )

            let sphere2 = ModelEntity(
                mesh: .generateSphere(radius: 0.1),
                materials: [
                    SimpleMaterial(color: .red, isMetallic: false)
                ]
            )
            sphere2.position = [-0.3, 1.2, -1]
            content.add(sphere2)
            sphere2.move(
                to: Transform(translation: [-0.3, 1.6, -1]),
                relativeTo: nil,
                duration: 2.0
            )

            let box1 = ModelEntity(
                mesh: .generateBox(size: 0.15),
                materials: [
                    SimpleMaterial(color: .yellow, isMetallic: false)
                ]
            )
            box1.position = [0, 1.2, -1]
            content.add(box1)
            box1.move(
                to: Transform(translation: [0, 1.6, -1]),
                relativeTo: nil,
                duration: 2.0
            )

            let box2 = ModelEntity(
                mesh: .generateBox(size: 0.15),
                materials: [
                    SimpleMaterial(color: .green, isMetallic: false)
                ]
            )
            box2.position = [0.3, 1.2, -1]
            content.add(box2)
            box2.move(
                to: Transform(translation: [0.3, 1.6, -1]),
                relativeTo: nil,
                duration: 2.0
            )

            let sphere3 = ModelEntity(
                mesh: .generateSphere(radius: 0.1),
                materials: [
                    SimpleMaterial(color: .purple, isMetallic: false)
                ]
            )
            sphere3.position = [0.6, 1.2, -1]
            content.add(sphere3)
            sphere3.move(
                to: Transform(translation: [0.6, 1.6, -1]),
                relativeTo: nil,
                duration: 2.0
            )
        }
    }
}
