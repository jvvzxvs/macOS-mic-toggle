# macOS Mic Toggle

[![License: MIT](https://img.shields.io/badge/license-MIT-blue.svg)](LICENSE)

> **EN:** A single-button macOS utility that mutes/unmutes the system
> microphone directly via CoreAudio (`kAudioDevicePropertyMute`), instead of
> per-app call settings. Spacebar shortcut. SwiftUI + CoreAudio, open in
> Xcode and run (⌘R).

Минималистичная утилита для macOS: одна кнопка мьютит/размьючивает системный
микрофон напрямую через CoreAudio (`AudioObjectSetPropertyData` на
`kAudioDevicePropertyMute`), без обращения к настройкам звонков в конкретных
приложениях. Есть шорткат на пробел.

## Стек

SwiftUI, CoreAudio.

## Запуск

Открыть `macOS mic toggle.xcodeproj` в Xcode, собрать и запустить (⌘R).
