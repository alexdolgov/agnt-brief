# Agentic Audit Brief: Neverland

## Project Overview

- Project: Neverland (`neverland`)
- Website: [https://neverland.money](https://neverland.money)
- Lifecycle: unknown
- Generated: 2026-07-04T14:53:38.716Z
- Pipeline run: v2-2026-07-04-db4eb6
- Chains: ethereum
- Contract surface: 2 unique implementations (2 raw deployments)
- DeFi Llama TVL: $105,489,922.34
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## ⚠️ Limited Contract Surface

This brief covers only 2 contract implementation(s). The pipeline may not have discovered all deployed contracts for this project.
Coverage assessment and audit matching are based on this incomplete surface.

## Project Description

Contract surface contains 2 implementation(s). Insufficient contract coverage for automated architecture assessment. Manual review recommended.

## Contract Surface Quality

- Indexed contracts: 2; live-surface contracts included: 2 (2 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 0/2 (0.0%)
- Deployed-live implementations: 2 of 2 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 0/2
- Verified + Unaudited implementations: 2
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 2
- Raw deployments: 2
- Audits discovered: 14 (14 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2026-02 (fresh)
- Audit staleness (calendar age): 7 fresh, 0 aging, 6 stale, 1 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (2)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| AgoraDollarErc1967Proxy | unknown | ethereum | n/a | [`0x00000000efe302beaa2b3e6e1b18d08d69a9012a`](./contracts/ethereum-1/0x00000000efe302beaa2b3e6e1b18d08d69a9012a/) | ⚠️ Unaudited |
| WBTCOFTAdapter | unknown | ethereum | n/a | [`0x0555e30da8f98308edb960aa94c0db47230d2b9c`](./contracts/ethereum-1/0x0555e30da8f98308edb960aa94c0db47230d2b9c/) | ⚠️ Unaudited |

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
| [01-11-2021_OpenZeppelin_AaveV3.pdf (also discovered via alternate URL)](https://github.com/Neverland-Money/security-audits/blob/main/lending-system/01-11-2021_OpenZeppelin_AaveV3.pdf) | OpenZeppelin | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [07-01-2022_TrailOfBits_AaveV3.pdf (also discovered via alternate URL)](https://github.com/Neverland-Money/security-audits/blob/main/lending-system/07-01-2022_TrailOfBits_AaveV3.pdf) | Trail of Bits | Audit | 2021-11 | stale | Direct | n/a | 0 | n/a |
| [09-12-2022_PeckShield_AaveV3-0-1.pdf (also discovered via alternate URL)](https://github.com/Neverland-Money/security-audits/blob/main/lending-system/09-12-2022_PeckShield_AaveV3-0-1.pdf) | PeckShield | Audit | 2022-12 | stale | Direct | n/a | 0 | n/a |
| [14-01-2022_PeckShield_AaveV3.pdf (also discovered via alternate URL)](https://github.com/Neverland-Money/security-audits/blob/main/lending-system/14-01-2022_PeckShield_AaveV3.pdf) | PeckShield | Audit | 2022-01 | stale | Direct | n/a | 0 | n/a |
| [23-12-2022_SigmaPrime_AaveV3-0-1.pdf (also discovered via alternate URL)](https://github.com/Neverland-Money/security-audits/blob/main/lending-system/23-12-2022_SigmaPrime_AaveV3-0-1.pdf) | Sigma Prime | Audit | 2022-12 | stale | Direct | n/a | 0 | n/a |
| [27-01-2022_ABDK_AaveV3.pdf (also discovered via alternate URL)](https://github.com/Neverland-Money/security-audits/blob/main/lending-system/27-01-2022_ABDK_AaveV3.pdf) | ABDK | Audit | 2022-01 | stale | Direct | n/a | 0 | n/a |
| [27-01-2022_SigmaPrime_AaveV3.pdf (also discovered via alternate URL)](https://github.com/Neverland-Money/security-audits/blob/main/lending-system/27-01-2022_SigmaPrime_AaveV3.pdf) | Sigma Prime | Audit | 2023-04 | stale | Direct | n/a | 0 | n/a |
| [2026-02-17_Octane_NeverlandContractsOracles.pdf (also discovered via alternate URL)](https://github.com/Neverland-Money/security-audits/blob/main/price-oracles/2026-02-17_Octane_NeverlandContractsOracles.pdf) | Octane | Audit | 2026-02 | fresh | Direct | n/a | 0 | n/a |
| [2025-08-22_ComposableSecurity_NeverlandContracts.pdf](https://github.com/Neverland-Money/security-audits/blob/main/tokenomics-and-revenue/2025-08-22_ComposableSecurity_NeverlandContracts.pdf) | ComposableSecurity | Audit | 2025-08 | fresh | Direct | n/a | 0 | n/a |
| [2025-10-10_ComposableSecurity_NeverlandContracts.pdf](https://github.com/Neverland-Money/security-audits/blob/main/tokenomics-and-revenue/2025-10-10_ComposableSecurity_NeverlandContracts.pdf) | ComposableSecurity | Audit | 2025-10 | fresh | Direct | n/a | 0 | n/a |
| [2025_08_Neverland.pdf](https://github.com/ComposableSecurity/.github/blob/main/reports/2025_08_Neverland.pdf) | unknown | Audit | 2025-08 | fresh | Direct | n/a | 0 | n/a |
| [security-audits (GitHub directory)](https://github.com/Neverland-Money/security-audits) | unknown | Audit | 2025-08 | fresh | Direct | n/a | 0 | n/a |
| [2025-08-22_ComposableSecurity_NeverlandContracts.pdf](https://audit.neverland.money/tokenomics-and-revenue/2025-08-22_ComposableSecurity_NeverlandContracts.pdf) | Composable Security | Audit | 2025-08 | fresh | Direct | n/a | 0 | n/a |
| [2025-10-10_ComposableSecurity_NeverlandContracts.pdf](https://audit.neverland.money/tokenomics-and-revenue/2025-10-10_ComposableSecurity_NeverlandContracts.pdf) | Composable Security | Audit | 2025-10 | fresh | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | [`0x00000000efe302beaa2b3e6e1b18d08d69a9012a`](./contracts/ethereum-1/0x00000000efe302beaa2b3e6e1b18d08d69a9012a/) | AgoraDollarErc1967Proxy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0555e30da8f98308edb960aa94c0db47230d2b9c`](./contracts/ethereum-1/0x0555e30da8f98308edb960aa94c0db47230d2b9c/) | WBTCOFTAdapter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

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
- Audits with zero matched contracts: 14
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Zero-match audit list:

- [20869] 01-11-2021_OpenZeppelin_AaveV3.pdf
- [20870] 07-01-2022_TrailOfBits_AaveV3.pdf
- [20871] 09-12-2022_PeckShield_AaveV3-0-1.pdf
- [20872] 14-01-2022_PeckShield_AaveV3.pdf
- [20873] 23-12-2022_SigmaPrime_AaveV3-0-1.pdf
- [20874] 27-01-2022_ABDK_AaveV3.pdf
- [20875] 27-01-2022_SigmaPrime_AaveV3.pdf
- [20876] 2026-02-17_Octane_NeverlandContractsOracles.pdf
- [20877] 2025-08-22_ComposableSecurity_NeverlandContracts.pdf
- [20878] 2025-10-10_ComposableSecurity_NeverlandContracts.pdf
- [20879] 2025_08_Neverland.pdf
- [20880] security-audits (GitHub directory)
- [20888] 2025-08-22_ComposableSecurity_NeverlandContracts.pdf
- [20889] 2025-10-10_ComposableSecurity_NeverlandContracts.pdf

Fork inheritance lineage and inherited audits are included when available.
