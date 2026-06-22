# Agentic Audit Brief: Solidly Labs

⚠️ Lifecycle status: DEAD - TVL dropped 51.2% over 90 days

## Project Overview

- Project: Solidly Labs (`solidly-labs`)
- Website: [https://solidly.com](https://solidly.com)
- Lifecycle: dead (Tier 1, dead)
- Generated: 2026-06-21T10:08:16.447Z
- Pipeline run: v2-pipeline-2026-06-21-727228-48f6
- Chains: ethereum
- Contract surface: 2 unique implementations (2 raw deployments)
- DeFi Llama TVL: $187,311.00
- On-chain TVL (included contracts): $367,055.50
- TVL by chain: Ethereum $367,055.50

## ⚠️ Limited Contract Surface

This brief covers only 2 contract implementation(s). The pipeline may not have discovered all deployed contracts for this project.
Coverage assessment and audit matching are based on this incomplete surface.

## Project Description

Contract surface contains 2 implementation(s). Insufficient contract coverage for automated architecture assessment. Manual review recommended.

## Contract Surface Quality

- Indexed contracts: 3; live-surface contracts included: 2 (2 live, 0 unknown).
- Excluded by liveness: 1 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 2/3 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Verified implementations audited: 2/2 (100.0%)
- Verified + Unaudited implementations: 0
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 2
- Raw deployments: 2
- Audits discovered: 3
- Scoreable audits (matched contracts): 1
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2024-05 (stale)
- Staleness: 0 fresh, 0 aging, 2 stale, 1 unknown
- Tier 1 coverage: No Tier 1 coverage
- Note: This protocol is classified as [dead]. ASD of n/a represents exposure in a protocol with dead activity.

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| unknown | Tier 2 | 2 | 100.0% | n/a |

## Contract Surface

### ✅ Verified + Audited (2)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| BaseV2TokenInterface | token | ethereum | unit-42264 | [`0x777172...a60990`](./contracts/ethereum-1/0x777172d858dc1599914a1c4c6c9fc48c99a60990/) | ✅ Audited |
| VeV2Interface | unknown | ethereum | unit-42265 | [`0x77730e...eaaf73`](./contracts/ethereum-1/0x77730ed992d286c53f3a0838232c3957daeaaf73/) | ✅ Audited |

### ⚠️ Verified + Unaudited (0)

- None

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (0)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

- None

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [Cyfrin_Memebox_Audit.pdf](https://github.com/SolidlyLabs/Solidly-Audits/blob/main/Memebox%20(Solidly%20V2%20Memecore)/Cyfrin_Memebox_Audit.pdf) | Cyfrin | Audit | 2024-05 | stale | Direct | n/a | 0 | n/a |
| [audit_solidly.pdf](https://github.com/SolidlyLabs/Solidly-Audits/blob/main/Solidly%20V2/audit_solidly.pdf) | unknown | Audit | n/a | unknown | Direct | contract_name | 2 | high |
| [cyfrin_solidlyV3.pdf](https://github.com/SolidlyLabs/Solidly-Audits/blob/main/Solidly%20V3/cyfrin_solidlyV3.pdf) | Cyfrin | Audit | 2024-04 | stale | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 2 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 0 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 2
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=1
- Match method counts: extraction_exact=3

Zero-match audit list:

- [13871] Cyfrin_Memebox_Audit.pdf
- [13873] cyfrin_solidlyV3.pdf

Fork inheritance lineage and inherited audits are included when available.
