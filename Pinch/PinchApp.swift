//
//  PinchApp.swift
//  Pinch
//
//  Created by Danqing Liu on 1/10/23.
//

import ServiceManagement
import SwiftUI

@main
struct PinchApp: App {

    var body: some Scene {
        MenuBarExtra("Pincher", systemImage: "rectangle.and.hand.point.up.left") {
            Button("Fix Pinch Gesture") {
                let task = Process()
                task.launchPath = "/bin/zsh"
                task.arguments = ["-c", "killall Dock"]
                try? task.run()
            }

            Divider()
            
            Button("Start at Login") {
                try? SMAppService.mainApp.register()
            }

            Button("Quit") {
                NSApplication.shared.terminate(nil)
            }.keyboardShortcut("q")
        }
    }

}
