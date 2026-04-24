import Foundation

public actor BashExecutor {

    public static let shared = BashExecutor()

    public init() {}

    public func run(_ command: String) async throws -> BashResult {
        try Permissions.validate(command)

        #if os(macOS)
        return try await ProcessShell.run(command)
        #else
        return try NativeShell.run(command)
        #endif
    }
}
