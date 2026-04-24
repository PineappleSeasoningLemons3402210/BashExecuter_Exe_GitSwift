public enum BashError: Error {
    case forbiddenCommand
    case executionFailed(String)
}
