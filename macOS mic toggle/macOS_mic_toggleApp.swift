//
//  macOS_mic_toggleApp.swift
//  macOS mic toggle
//
//  Created by никита никита on 11.11.2025.
//

import SwiftUI

@main
struct macOS_mic_toggleApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}

import Foundation
import CoreAudio

final class MicController {
    static let shared = MicController()
    
    private func getDefaultInputDevice() -> AudioDeviceID? {
        var deviceID = AudioDeviceID(0)
        var size = UInt32(MemoryLayout.size(ofValue: deviceID))
        
        var addr = AudioObjectPropertyAddress(
            mSelector: kAudioHardwarePropertyDefaultInputDevice,
            mScope: kAudioObjectPropertyScopeGlobal,
            mElement: kAudioObjectPropertyElementMain
        )
        
        let status = AudioObjectGetPropertyData(
            AudioObjectID(kAudioObjectSystemObject),
            &addr,
            0,
            nil,
            &size,
            &deviceID
        )
        
        guard status == noErr, deviceID != 0 else {
            return nil
        }
        
        return deviceID
    }
    
    func setMuted(_ muted: Bool) {
        guard let deviceID = getDefaultInputDevice() else { return }
        
        var muteAddr = AudioObjectPropertyAddress(
            mSelector: kAudioDevicePropertyMute,
            mScope: kAudioDevicePropertyScopeInput,
            mElement: kAudioObjectPropertyElementMain
        )
        
        if AudioObjectHasProperty(deviceID, &muteAddr) {
            var mute: UInt32 = muted ? 1 : 0
            var size = UInt32(MemoryLayout.size(ofValue: mute))
            
            _ = AudioObjectSetPropertyData(
                deviceID,
                &muteAddr,
                0,
                nil,
                size,
                &mute
            )
        }
    }
}
