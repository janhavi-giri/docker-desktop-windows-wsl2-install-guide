# Docker Desktop Troubleshooting Guide

Common issues: virtualization support not detected, WSL not installed, Docker Engine not starting.

## Issue 1

### Symptom

```text
Virtualization support not detected
```

### Resolution

Verify:

```text
Task Manager → Performance → CPU
```

Confirm:

```text
Virtualization = Enabled
```

Enable virtualization in BIOS if necessary.

---

## Issue 2

### Symptom

```text
Windows Subsystem for Linux is not installed
```

### Resolution

Enable:

```text
Windows Subsystem for Linux
Virtual Machine Platform
```

Then reboot.

---

## Issue 3

### Symptom

```text
Windows Subsystem for Linux has no installed distributions
```

### Resolution

Install Ubuntu:

```cmd
wsl --install Ubuntu
```

---

## Issue 4

### Symptom

```text
Docker Desktop is unable to start
```

### Resolution

Verify:

```cmd
wsl --status
```

and

```cmd
wsl -l -v
```

Ensure Ubuntu is installed and running.

---

## Issue 5

### Symptom

```text
Starting Docker Engine...
```

never finishes.

### Resolution

Verify:

```cmd
wsl --status
```

Install Ubuntu if missing.

Restart Docker Desktop.

---

## Issue 6

### Symptom

```text
Windows Subsystem for Linux must be updated to the latest version
```

### Resolution

Run:

```cmd
wsl --update
```

Then:

```cmd
wsl --shutdown
```

Restart Docker Desktop.

---

## Verification Commands

### Verify WSL

```cmd
wsl --status
```

```cmd
wsl -l -v
```

### Verify Docker

```cmd
docker version
```

```cmd
docker run hello-world
```

### Verify Running Containers

```cmd
docker ps
```

---
