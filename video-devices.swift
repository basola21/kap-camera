import AVFoundation

let discoverySession = AVCaptureDevice.DiscoverySession(
    deviceTypes: [
        .builtInWideAngleCamera,
        .external,
        .continuityCamera
    ],
    mediaType: .video,
    position: .unspecified
)

print(discoverySession.devices.map { $0.localizedName }.joined(separator: "\n"))