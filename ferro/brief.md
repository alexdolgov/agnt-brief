# Agentic Audit Brief: Ferro

## Project Overview

- Project: Ferro (`ferro`)
- Website: [https://ferroprotocol.com](https://ferroprotocol.com)
- Lifecycle: unknown
- Generated: 2026-07-04T14:53:15.327Z
- Pipeline run: v2-pipeline-2026-07-01-2b719a-2d9c
- Chains: cronos
- Contract surface: 1 unique implementations (21 raw deployments)
- DeFi Llama TVL: $4,826,528.69
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## ⚠️ Limited Contract Surface

This brief covers only 1 contract implementation(s). The pipeline may not have discovered all deployed contracts for this project.
Coverage assessment and audit matching are based on this incomplete surface.

## Project Description

Contract surface contains 1 implementation(s). Insufficient contract coverage for automated architecture assessment. Manual review recommended.

## Contract Surface Quality

- Indexed contracts: 21; live-surface contracts included: 21 (0 live, 21 unknown).
- Excluded by liveness: 0 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 0/0 (0.0%)
- Deployed-live implementations: 0 of 1 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 0/0
- Verified + Unaudited implementations: 0
- Verified by bytecode match: 0
- Unverified implementations: 1
- Unique implementations: 1
- Raw deployments: 21
- Audits discovered: 4 (4 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: n/a (unknown)
- Audit staleness (calendar age): 0 fresh, 0 aging, 0 stale, 4 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (0)

- None

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (1)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | cronos | n/a | 21 deployments: cronos `0x1578c5...185afa`; cronos `0x1dd980...cebf53`; cronos `0x260481...f41929`; cronos `0x39bc1e...66c782`; cronos `0x5fa941...ebdf96`; cronos `0x6a4173...aa104b`; cronos `0x6b82ea...5fdd88`; cronos `0x719237...c31bde`; cronos `0x74171b...55992d`; cronos `0x9fae23...7c08a6`; cronos `0xa26a01...34f72e`; cronos `0xa34c0f...2b32d6`; cronos `0xab50fb...3029d0`; cronos `0xac974e...85750d`; cronos `0xb5c745...e67b86`; cronos `0xc73b40...66dd85`; cronos `0xcf3e15...64c92e`; cronos `0xd05a67...fc2c03`; cronos `0xd42e07...edea78`; cronos `0xe8d136...5da5cd`; cronos `0xf2001b...5f677d` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [blocksec_ferro_security_audit_report.pdf](https://3048569451-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2F1eicfNZ2HtbN812ZxEi2%2Fuploads%2FCnJyqIFXMo3iaKTSvNOL%2Fblocksec_ferro_security_audit_report.pdf) | BlockSec | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [SlowMist Audit Report - Veno-Liquid Staking Contracts Core.pdf](https://220372747-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FoOzYIbXVNt7O4xPrl0tz%2Fuploads%2FkW555WIVoUbzUslDZTlZ%2FSlowMist%20Audit%20Report%20-%20Veno-Liquid%20Staking%20Contracts%20Core.pdf) | SlowMist | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [SlowMist Audit Report - Veno - Liquid Staking Contracts Tokenomic.pdf](https://220372747-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FoOzYIbXVNt7O4xPrl0tz%2Fuploads%2FgvneLOUCCjnAQYcHhFj7%2FSlowMist%20Audit%20Report%20-%20Veno%20-%20Liquid%20Staking%20Contracts%20Tokenomic.pdf) | SlowMist | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [SlowMist Audit Report - Veno Liquid Staking Strategy Vault.pdf](https://220372747-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FoOzYIbXVNt7O4xPrl0tz%2Fuploads%2FtzPxX5tBafm0DUCRrLqa%2FSlowMist%20Audit%20Report%20-%20Veno%20Liquid%20Staking%20Strategy%20Vault.pdf) | SlowMist | Audit | n/a | unknown | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 0 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 1 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 4
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Zero-match audit list:

- [20291] blocksec_ferro_security_audit_report.pdf
- [20292] SlowMist Audit Report - Veno-Liquid Staking Contracts Core.pdf
- [20293] SlowMist Audit Report - Veno - Liquid Staking Contracts Tokenomic.pdf
- [20294] SlowMist Audit Report - Veno Liquid Staking Strategy Vault.pdf

Fork inheritance lineage and inherited audits are included when available.
