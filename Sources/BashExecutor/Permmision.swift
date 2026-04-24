enum Permissions {

    static let blocked = [
        "rm -rf",
        "shutdown",
        "reboot",
        "mkfs",
        "dd",
        "sudo"
    ]

    static func validate(_ command: String) throws {
        for bad in blocked {
            if command.lowercased().contains(bad) {
                throw BashError.forbiddenCommand
            }
        }
    }
}
