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
    
    @State private var startAtLogin = SMAppService.mainApp.status == .enabled
        
    var body: some Scene {
        MenuBarExtra("Pincher", systemImage: "arrow.up.left.and.arrow.down.right.circle.fill") {
            Button("Fix Pinch Gesture") {
                let task = Process.launchedProcess(launchPath: "/bin/zsh", arguments: ["-c", "killall Dock"])
                task.waitUntilExit()
            }

            Divider()
            
            Button(startAtLogin ? "Stop Starting at Login" : "Start at Login") {
                if SMAppService.mainApp.status == .enabled {
                    try? SMAppService.mainApp.unregister()
                } else {
                    try? SMAppService.mainApp.register()
                }
                startAtLogin = !startAtLogin
            }

            Button("Quit") {
                NSApplication.shared.terminate(nil)
            }.keyboardShortcut("q")
        }
    }

}
