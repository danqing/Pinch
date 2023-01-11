//
//  PinchApp.swift
//  Pinch
//
//  Created by Danqing Liu on 1/10/23.
//

import SwiftUI

@main
struct PinchApp: App {

    var body: some Scene {
        MenuBarExtra("Pincher", systemImage: "rectangle.and.hand.point.up.left") {
            Button("Fix Pinch Gesture") {
                let task = Process()
                task.launchPath = "/bin/zsh"
                task.arguments = ["killall Dock"]
                try? task.run()
            }

            Divider()

            Button("Quit") {
                NSApplication.shared.terminate(nil)
            }.keyboardShortcut("q")
        }
    }

}
