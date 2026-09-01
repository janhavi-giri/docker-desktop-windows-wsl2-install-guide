# Docker Desktop Installation Guide for Windows Using WSL2

## Overview

This guide walks through installing Docker Desktop on Windows using WSL2 and resolving common startup issues.

---

# Prerequisites

- Windows 11
- Administrator Access
- Internet Connectivity
- Docker Desktop Installer

---

# Step 1: Install Docker Desktop

Download and install Docker Desktop.

Launch Docker Desktop.

Possible initial error:

```text
Virtualization support not detected
```

If encountered, proceed with the next steps.

---

# Step 2: Verify Hardware Virtualization

Open:

```text
Ctrl + Shift + Esc
```

Navigate to:

```text
Performance → CPU
```

Verify:

```text
Virtualization = Enabled
```

If disabled, work with IT to enable virtualization in BIOS.

---

# Step 3: Enable WSL Components

Open:

```text
Windows + R
```

Run:

```text
optionalfeatures
```

Enable:

✅ Windows Subsystem for Linux

✅ Virtual Machine Platform

Click:

```text
OK
```

Allow Windows to install components.

---

# Step 4: Reboot

Restart the machine.

This step is mandatory.

---

# Step 5: Verify WSL Installation

Open Command Prompt:

```cmd
wsl --status
```

If WSL is not installed, continue to the next step.

---

# Step 6: Install WSL

Open Command Prompt as Administrator:

```cmd
wsl --install
```

Allow installation to complete.

---

# Step 7: Install Ubuntu

Verify distributions:

```cmd
wsl -l -v
```

If no distributions exist:

```cmd
wsl --install Ubuntu
```

Allow Ubuntu installation to complete.

---

# Step 8: Configure Ubuntu

Ubuntu launches automatically.

Create:

```text
Username
Password
```

Complete initial setup.

---

# Step 9: Verify WSL2

Run:

```cmd
wsl --status
```

Expected:

```text
Default Distribution: Ubuntu
Default Version: 2
```

Run:

```cmd
wsl -l -v
```

Expected:

```text
Ubuntu Running 2
```

---

# Step 10: Start Docker Desktop

Launch Docker Desktop.

Docker creates internal WSL distributions:

```text
docker-desktop
docker-desktop-data
```

Allow initialization to finish.

---

# Step 11: Verify Docker Engine

Run:

```cmd
docker version
```

Expected:

```text
Client:
Server:
```

sections should both appear.

---

# Step 12: Validate Installation

Run:

```cmd
docker run hello-world
```

Expected:

```text
Hello from Docker!
```

Installation complete.

---
