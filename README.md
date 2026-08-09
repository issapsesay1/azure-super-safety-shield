markdown
# Azure Enterprise Security-as-Code: The Super Safety Shield

## Overview
This repository contains a production-ready **Security as Code (SaC)** implementation designed to neutralize unknown, zero-day phishing attacks targeting an enterprise Microsoft Azure ecosystem.

## Architecture Design
- **Level 1: Proactive Interception (Defender Safe Links):** Enforces real-time URL Detonation. When an unknown link is clicked, it pauses execution and detonates the payload in an isolated cloud sandbox.
- **Level 2: Reactive Containment (Entra Conditional Access):** Monitors user telemetry dynamically. If an unknown link initiates a credential harvest, the system blocks global cloud access.

## Tech Stack & Compliance
- **Infrastructure Framework:** Terraform (HashiCorp AzureAD)
- **Security Framework Alignment:** NIST SP 800-207 (Zero Trust Architecture)
