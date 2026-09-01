# docker-desktop-windows-wsl2-install-guide
Docker Desktop &amp; WSL2 Setup for AI and Engineering Workloads on Windows
# Docker Desktop & WSL2 Installation Guide for Windows

A practical guide for installing Docker Desktop on Windows using WSL2 and troubleshooting common startup issues.

This guide was developed from a real-world Docker Desktop installation and troubleshooting exercise on a Windows enterprise laptop.

---

## Topics Covered

- Docker Desktop installation
- Windows Subsystem for Linux (WSL2)
- Virtual Machine Platform
- Ubuntu installation
- Docker Engine startup issues
- Common troubleshooting steps
- Validation and testing

---

## Environment

- Windows 11 Enterprise
- Docker Desktop
- WSL2 Backend
- Ubuntu 24.x

---

## Quick Validation

```bash
docker run hello-world
```

Expected output:

```text
Hello from Docker!
This message shows that your installation appears to be working correctly.
```

---

## Repository Contents

### Documentation

| File | Purpose |
|--------|--------|
| docs/Docker_Desktop_Installation_Guide.md | Complete installation guide |
| docs/Troubleshooting.md | Troubleshooting reference |

### Scripts

| Script | Purpose |
|--------|--------|
| scripts/verify-wsl.cmd | Verify WSL configuration |
| scripts/verify-docker.cmd | Verify Docker installation |

---

## Architecture

```text
Windows
  |
  +-- Virtual Machine Platform
  |
  +-- WSL2
       |
       +-- Ubuntu
       |
       +-- Docker Desktop
             |
             +-- docker-desktop
             +-- docker-desktop-data
```

---

## Validation Checklist

- [ ] Virtualization Enabled
- [ ] WSL Installed
- [ ] Virtual Machine Platform Enabled
- [ ] Ubuntu Installed
- [ ] WSL Version 2
- [ ] Docker Desktop Starts
- [ ] Docker Engine Running
- [ ] docker run hello-world Successful

---

## License

MIT
