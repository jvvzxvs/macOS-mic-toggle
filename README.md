# macOS Mic Toggle

Минималистичная утилита для macOS: одна кнопка мьютит/размьючивает системный
микрофон напрямую через CoreAudio (`AudioObjectSetPropertyData` на
`kAudioDevicePropertyMute`), без обращения к настройкам звонков в конкретных
приложениях. Есть шорткат на пробел.

## Стек

SwiftUI, CoreAudio.

## Запуск

Открыть `macOS mic toggle.xcodeproj` в Xcode, собрать и запустить (⌘R).
