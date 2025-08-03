# Proof of Witness Workshop Guide

## Architecture diagram for NOIR 
https://excalidraw.com/#json=ih9AGBbdTSTvwF8R8S6Ka,bvSLLBYwdrKS9l_WjePR4w

## ⚡️ Noir & Barretenberg Setup on Ubuntu

This guide will help you install the **Noir CLI (`nargo`)** and the **Barretenberg Proving Backend (`bb`)** on an Ubuntu system to get started with writing and proving zero-knowledge circuits.

---

## 🔧 Requirements

- Ubuntu 20.04 or newer (native or via WSL)
- curl installed
- Terminal access

---

## 🛠 Step 1: Install Noir CLI (`nargo`)

Noir's CLI tool nargo helps you create, compile, and execute Noir programs.

### Install via noirup

```bash
curl -L https://raw.githubusercontent.com/noir-lang/noirup/refs/heads/main/install | bash
source ~/.bashrc
noirup
```

### Check Installation

```bash
nargo --version
```

---

## 🧪 Step 2: Install Barretenberg Proving Backend (`bb`)

Barretenberg is the backend used to generate and verify ZK proofs for Noir circuits.

### Install via bbup

```bash
curl -L https://raw.githubusercontent.com/AztecProtocol/aztec-packages/refs/heads/master/barretenberg/bbup/install | bash
source ~/.bashrc
bbup
```

### Check Installation

```bash
bb --version
```

---

## 💡 (Optional) Enable Shell Autocompletion

```bash
nargo setup completions bash >> ~/.bashrc
source ~/.bashrc
```

---

## ✅ You're All Set!

You can now:

### Create a new project:

```bash
nargo new hello_world
cd hello_world
```

### Compile and check:

```bash
nargo check
```

### Execute and generate a witness:

```bash
nargo execute
```

### Prove and verify with Barretenberg:

```bash
bb prove -b ./target/hello_world.json -w ./target/hello_world.gz -o ./target
bb write_vk -b ./target/hello_world.json -o ./target
bb verify -k ./target/vk -p ./target/proof -i ./target/public_inputs
```

---

## 📚 Resources

- 🔗 [Official Noir Documentation](https://noir-lang.org/docs)
- 🔗 [Awesome Noir GitHub](https://github.com/noir-lang/awesome-noir)
- 🔗 [Barretenberg GitHub](https://github.com/AztecProtocol/barretenberg)
