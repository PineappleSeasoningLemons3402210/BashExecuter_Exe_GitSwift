import Foundation

enum ProcessShell {

    static func run(_ command: String) async throws -> BashResult {

        let process = Process()
        let outputPipe = Pipe()
        let errorPipe = Pipe()

        process.standardOutput = outputPipe
        process.standardError = errorPipe

        process.executableURL = URL(fileURLWithPath: "/bin/bash")
        process.arguments = ["-c", command]

        do {
            try process.run()
            process.waitUntilExit()

            let outputData = outputPipe.fileHandleForReading.readDataToEndOfFile()
            let errorData = errorPipe.fileHandleForReading.readDataToEndOfFile()

            return BashResult(
                output: String(decoding: outputData, as: UTF8.self),
                error: String(decoding: errorData, as: UTF8.self),
                exitCode: process.terminationStatus
            )

        } catch {
            throw BashError.executionFailed(error.localizedDescription)
        }
    }
}
