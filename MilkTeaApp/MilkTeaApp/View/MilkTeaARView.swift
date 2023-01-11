//
//  MilkTeaARView.swift
//  MilkTeaApp
//
//  Created by itst on 9/1/2023.
//


import SwiftUI
import RealityKit

struct MilkTeaARView: View {
    //MARK - body
    var body: some View {
        return ARViewContainer().edgesIgnoringSafeArea(.all)
    }
}

struct ARViewContainer: UIViewRepresentable {
    func updateUIView(_ uiView: ARView, context: Context) {}
    
    
    func makeUIView(context: Context) -> ARView {
        
        let arView = ARView(frame: .zero)
        
        // Load the scene from the "Milktea" rcproject File
        let boxAnchor = try! Milktea.loadTea()
        
        // Add the box anchor to the scene
        arView.scene.anchors.append(boxAnchor)
        
        return arView
        
    }
    
}

struct MilkTeaARView_Previews: PreviewProvider {
    static var previews: some View {
        MilkTeaARView()
    }
}
//
//  ARView.swift
//  MilkTeaApp
//
//  Created by itst on 9/1/2023.
//



