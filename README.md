# 🚀 Sui Token Workshop — Move + Sui Object-Centric Programming

This repository contains the results of a technical workshop focused on learning and building with the Sui blockchain using the Move programming language.

We covered key Sui development concepts and built a custom token contract that was successfully published to Sui **testnet**.

---

## 🧠 What We Learned

### 🔹 Sui's Object-Centric Design
- Everything on the Sui blockchain is an **object**, including coins, tokens, smart contracts, and more.
- Objects have unique IDs and can be **owned**, **shared**, or **immutable**.
- This design ensures scalability and parallel execution on Sui.

---

### 🔹 Creating a New Move Package

```bash
sui move new <package_name>
````

This creates a new Move package with the default structure:

```
my_package/
  ├── Move.toml
  └── sources/
        └── main.move
```

---

### 🔹 Building a Move Package

```bash
cd <package_name>
sui move build
```

This compiles your Move code and verifies that all modules are valid.

---

### 🔹 Publishing a Package to the Blockchain

```bash
cd <package_name>
sui client publish
```

This deploys your compiled Move code to the currently active Sui network (e.g., testnet, devnet, localnet).

> ✅ **Our Token Contract was published to Testnet at:**

```
0xfe50c4f1b3c8011236e55fc3a6d7e332d80c6189e9a132709eacddd22ea65e63
```

You can explore it on [Sui Explorer](https://custom.suiscan.xyz/custom/object/0xfe50c4f1b3c8011236e55fc3a6d7e332d80c6189e9a132709eacddd22ea65e63/txs?network=https%3A%2F%2Ffullnode.testnet.sui.io%3A443).

---

### 🔹 Checking the Active Environment

To verify which Sui network you're connected to:

```bash
sui client envs
```

This lists all configured environments and shows the currently active one.

---

### 🔹 Common Data Types in Move

| Type   | Description                      |
| ------ | -------------------------------- |
| `u8`   | Unsigned 8-bit integer           |
| `u16`  | Unsigned 16-bit integer          |
| `u32`  | Unsigned 32-bit integer          |
| `u64`  | Unsigned 64-bit integer (common) |
| `u128` | Unsigned 128-bit integer         |
| `i8`   | Signed 8-bit integer             |
| `i16`  | Signed 16-bit integer            |
| `i32`  | Signed 32-bit integer            |
| `i64`  | Signed 64-bit integer            |
| `i128` | Signed 128-bit integer           |

---

## 🪙 Our Token Contract

This repo includes:

* The full Move source code for the token contract (`sources/`)
* The testnet `packageId` for the published module

---

## 📦 Tools & Requirements

* Rust (`https://rustup.rs`)
* Git
* Sui CLI
* Code editor (VS Code + Move syntax highlighting recommended)

---

## 📜 License

This project was built for educational purposes during a Move + Sui developer workshop. Feel free to fork and build upon it!
