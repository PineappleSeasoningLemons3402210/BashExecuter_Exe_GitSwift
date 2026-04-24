import Foundation

enum NativeShell {

    static func run(_ command: String) throws -> BashResult {

        let parts = command.split(separator: " ")
        guard let cmd = parts.first else {
            throw BashError.executionFailed("Empty command")
        }

        switch cmd {

        case "echo":
            return BashResult(
                output: parts.dropFirst().joined(separator: " "),
                error: "",
                exitCode: 0
            )

        case "pwd":
            return BashResult(
                output: FileManager.default.currentDirectoryPath,
                error: "",
                exitCode: 0
            )

        case "ls":
            let files = try FileManager.default.contentsOfDirectory(atPath: ".")
            return BashResult(
                output: files.joined(separator: "\n"),
                error: "",
                exitCode: 0
            )

        default:
            return BashResult(
                output: "",
                error: "Command not supported on iOS",
                exitCode: 127
            )
        }
    }
}
