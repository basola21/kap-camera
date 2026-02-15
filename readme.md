# kap-selfie

> [Kap](https://github.com/wulkano/kap) plugin - Show a camera while recording

A fork of [karaggeorge/kap-camera](https://github.com/karaggeorge/kap-camera) with fixes for modern macOS (14+) and Apple Silicon.

## What was fixed

- **Deprecated Swift API**: Replaced `AVCaptureDevice.devices(for:)` with `AVCaptureDevice.DiscoverySession` using `.builtInWideAngleCamera`, `.external`, and `.continuityCamera` device types.
- **Build target**: Universal binary supporting both Apple Silicon (arm64) and Intel (x86_64), targeting macOS 14.0.
- **Electron compatibility**: Added `contextIsolation: false` and `enableRemoteModule: true` to `webPreferences` for Electron 13+.

## Install

In the `Kap` menu, go to `Preferences…`, select the `Plugins` pane, search for `kap-selfie`, and toggle it.

## Usage

In the cropper or by right-clicking the tray icon, click the `…` icon, then `Plugins` and make sure `Show Camera` is enabled.

The plugin creates a window showing the selected camera on the bottom-left corner of the recording.
The window is click-through and its hover opacity and size can be adjusted.

To move the window, hold Command before you hover over it, then click and drag it anywhere on the screen.
