# BashExecutor

A lightweight Swift package that allows you to execute Bash commands on macOS and provides a safe fallback for iOS/iPadOS.

---

## 🚀 Features

* ⚡ Execute Bash commands on macOS
* 📱 Safe command fallback for iOS/iPadOS
* 🔐 Built-in protection against dangerous commands
* 🧩 Simple and modular Swift package
* 🧑‍💻 Easy to integrate into SwiftUI or backend apps

---

## 💻 Platform Support

| Platform     | Support                         |
| ------------ | ------------------------------- |
| macOS        | ✅ Full Bash support             |
| iOS / iPadOS | ⚠️ Limited (safe fallback only) |

> iOS does not allow direct Bash execution. This package provides a simulated environment instead.

---

## 📦 Installation

### Swift Package Manager

In Xcode:

1. Go to **File → Add Packages**
2. Enter:

```
https://github.com/PineappleSeasoningLemons3402210/BashExecuter_Exe_GitSwift
```

---

## 🧠 Usage

```swift
import BashExecutor

let result = try await BashExecutor.shared.run("echo Hello World")

print(result.output)
```

---

## 🔐 Security

This package blocks dangerous commands such as:

* `rm -rf`
* `shutdown`
* `reboot`
* `dd`
* `sudo`

⚠️ Note:
This is a basic safeguard. For production use, consider sandboxing or server-side execution.

---

## 📁 Project Structure

```
Sources/BashExecutor/
├── BashExecutor.swift
├── BashResult.swift
├── BashError.swift
├── NativeShell.swift
├── ProcessShell.swift
├── Permissions.swift
```

---

## ⚙️ Requirements

* Swift 6.0+
* Xcode 15+

---

## 🚫 Limitations

* Cannot execute real Bash on iOS devices
* Not fully sandboxed
* Not suitable for untrusted input without extra security

---

## 🛣️ Roadmap

* [ ] Async streaming output
* [ ] Pipe support (`|`, `&&`)
* [ ] iOS advanced shell integration
* [ ] SwiftUI terminal interface

---

## 🤝 Contributing

Contributions are welcome!

1. Fork the repository
2. Create a branch
3. Submit a pull request

---

## 📄 License

MIT License

---

## ⚠️ Disclaimer

This tool executes system-level commands. Misuse can damage your system. Use responsibly.

---

## 🔗 Repository

https://github.com/PineappleSeasoningLemons3402210/BashExecuter_Exe_GitSwift
