// swift-tools-version:5.10
// The swift-tools-version declares the minimum version of Swift required to build this package.
import PackageDescription

let package = Package(
    name: "SocketRocket",
    defaultLocalization: "en",
    platforms: [.macOS(.v11), .iOS(.v12)],
    products: [
        .library(
            name: "SocketRocket",
            targets: ["SocketRocket"]
        ),
    ],
    dependencies: [],
    targets: [
        .target(
            name: "SocketRocket",
            path: ".",
            exclude: [
                "SocketRocket/Resources",
                "TestChat",
                "TestChatServer",
                "Tests",
                "TestSupport",
                "Configurations",
                "SocketRocket.xcodeproj",
                "Vendor",
            ],
            sources: [
                "include/SocketRocket/SRWebSocket.h",
                "include/SocketRocket/NSRunLoop+SRWebSocket.h",
                "include/SocketRocket/NSURLRequest+SRWebSocket.h",
                "include/SocketRocket/SRSecurityPolicy.h",
                "include/SocketRocket/SocketRocket.h",
                "SocketRocket/NSRunLoop+SRWebSocket.m",
                "SocketRocket/NSURLRequest+SRWebSocket.m",
                "SocketRocket/SRSecurityPolicy.m",
                "SocketRocket/SRWebSocket.m",
                "SocketRocket/Internal/SRConstants.m",
                "SocketRocket/Internal/SRConstants.h",
                "SocketRocket/Internal/Delegate/SRDelegateController.m",
                "SocketRocket/Internal/Delegate/SRDelegateController.h",
                "SocketRocket/Internal/IOConsumer/SRIOConsumer.m",
                "SocketRocket/Internal/IOConsumer/SRIOConsumer.h",
                "SocketRocket/Internal/IOConsumer/SRIOConsumerPool.m",
                "SocketRocket/Internal/IOConsumer/SRIOConsumerPool.h",
                "SocketRocket/Internal/Proxy/SRProxyConnect.m",
                "SocketRocket/Internal/Proxy/SRProxyConnect.h",
                "SocketRocket/Internal/RunLoop/SRRunLoopThread.m",
                "SocketRocket/Internal/RunLoop/SRRunLoopThread.h",
                "SocketRocket/Internal/Security/SRPinningSecurityPolicy.h",
                "SocketRocket/Internal/Security/SRPinningSecurityPolicy.m",
                "SocketRocket/Internal/Utilities/SRError.h",
                "SocketRocket/Internal/Utilities/SRError.m",
                "SocketRocket/Internal/Utilities/SRHash.h",
                "SocketRocket/Internal/Utilities/SRHash.m",
                "SocketRocket/Internal/Utilities/SRHTTPConnectMessage.h",
                "SocketRocket/Internal/Utilities/SRHTTPConnectMessage.m",
                "SocketRocket/Internal/Utilities/SRLog.m",
                "SocketRocket/Internal/Utilities/SRLog.h",
                "SocketRocket/Internal/Utilities/SRMutex.h",
                "SocketRocket/Internal/Utilities/SRMutex.m",
                "SocketRocket/Internal/Utilities/SRRandom.m",
                "SocketRocket/Internal/Utilities/SRRandom.h",
                "SocketRocket/Internal/Utilities/SRSIMDHelpers.h",
                "SocketRocket/Internal/Utilities/SRSIMDHelpers.m",
                "SocketRocket/Internal/Utilities/SRURLUtilities.m",
                "SocketRocket/Internal/Utilities/SRURLUtilities.h",
            ],
            publicHeadersPath: "include",
            cSettings: [
                .headerSearchPath("include"),
                .headerSearchPath("include/SocketRocket"),
                .headerSearchPath("SocketRocket/Internal"),
                .headerSearchPath("SocketRocket/Internal/Delegate"),
                .headerSearchPath("SocketRocket/Internal/IOConsumer"),
                .headerSearchPath("SocketRocket/Internal/Proxy"),
                .headerSearchPath("SocketRocket/Internal/RunLoop"),
                .headerSearchPath("SocketRocket/Internal/Security"),
                .headerSearchPath("SocketRocket/Internal/Utilities")
            ]
        )
    ]
)
