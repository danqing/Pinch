//
//  PinchApp.swift
//  Pinch
//
//  Created by Danqing Liu on 1/10/23.
//

import CoreFoundation
import ServiceManagement
import SwiftUI

@main
struct PinchApp: App {
    
    @State private var startAtLogin = SMAppService.mainApp.status == .enabled
    
    private var prefPanesSupport: Bundle!
        
    var body: some Scene {
        MenuBarExtra("Pincher", systemImage: "arrow.up.left.and.arrow.down.right.circle.fill") {
            Button("Fix Pinch Gesture") {
                let task = Process.launchedProcess(launchPath: "/usr/bin/killall", arguments: ["Dock"])
                task.waitUntilExit()
                
                toggleTrackpad(mode: false)
                DispatchQueue.main.asyncAfter(deadline: .now() + 0.5) {
                    toggleTrackpad(mode: true)
                }
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
    
    func toggleTrackpad(mode: Bool) {
        let app = "com.apple.driver.AppleBluetoothMultitouch.trackpad" as CFString
        CFPreferencesSetAppValue("TrackpadPinch" as CFString, mode ? kCFBooleanTrue : kCFBooleanFalse, app)
        CFPreferencesAppSynchronize(app)
        GestureHandler.sharedInstance().setTwoFingerPinch(mode)
    }

}
