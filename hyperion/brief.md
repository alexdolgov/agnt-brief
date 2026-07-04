# Agentic Audit Brief: Hyperion

## Project Overview

- Project: Hyperion (`hyperion`)
- Website: [https://hyperion.xyz/](https://hyperion.xyz/)
- Lifecycle: unknown
- Generated: 2026-07-04T14:53:21.733Z
- Pipeline run: v2-pipeline-2026-07-01-3e33f2-bd47
- Chains: ethereum
- Contract surface: 2 unique implementations (2 raw deployments)
- DeFi Llama TVL: $7,371,267.62
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## ⚠️ Limited Contract Surface

This brief covers only 2 contract implementation(s). The pipeline may not have discovered all deployed contracts for this project.
Coverage assessment and audit matching are based on this incomplete surface.

## Project Description

Contract surface contains 2 implementation(s). Insufficient contract coverage for automated architecture assessment. Manual review recommended.

## Contract Surface Quality

- Indexed contracts: 2; live-surface contracts included: 2 (0 live, 2 unknown).
- Excluded by liveness: 0 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 0/0 (0.0%)
- Deployed-live implementations: 0 of 2 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 0/0
- Verified + Unaudited implementations: 0
- Verified by bytecode match: 0
- Unverified implementations: 2
- Unique implementations: 2
- Raw deployments: 2
- Audits discovered: 5 (5 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2025-07 (aging)
- Audit staleness (calendar age): 0 fresh, 5 aging, 0 stale, 0 unknown
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

### ❓ Unverified (2)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | ethereum | n/a | `0x69faed...a47349` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x8b4a2c...f99a68` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [Hyperion Audit Report.pdf](https://github.com/Hyperionxyz/audits/blob/main/Hyperion%20Audit%20Report.pdf) | MoveBit | Audit | 2025-02 | aging | Direct | n/a | 0 | n/a |
| [ExVul Smart Contract Audit Report for Hyperionxyz Vaults.pdf](https://github.com/Hyperionxyz/audits/blob/main/ExVul%20Smart%20Contract%20Audit%20Report%20for%20Hyperionxyz%20Vaults.pdf) | ExVul | Audit | 2025-04 | aging | Direct | n/a | 0 | n/a |
| [Hyperion OFT Audit Report-2025-7-8.pdf](https://github.com/Hyperionxyz/audits/blob/main/Hyperion%20OFT%20Audit%20Report-2025-7-8.pdf) | Unknown | Audit | 2025-07 | aging | Direct | n/a | 0 | n/a |
| [Hyperion Token Audit Report.pdf](https://github.com/Hyperionxyz/audits/blob/main/Hyperion%20Token%20Audit%20Report.pdf) | Unknown | Audit | 2025-07 | aging | Direct | n/a | 0 | n/a |
| [LaunchPad Audit Report-2025-6-18.pdf](https://github.com/Hyperionxyz/audits/blob/main/LaunchPad%20Audit%20Report-2025-6-18.pdf) | Unknown | Audit | 2025-06 | aging | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 0 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 2 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 5
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Zero-match audit list:

- [1888] Hyperion Audit Report.pdf
- [1889] ExVul Smart Contract Audit Report for Hyperionxyz Vaults.pdf
- [1890] Hyperion OFT Audit Report-2025-7-8.pdf
- [1891] Hyperion Token Audit Report.pdf
- [1892] LaunchPad Audit Report-2025-6-18.pdf

Fork inheritance lineage and inherited audits are included when available.
