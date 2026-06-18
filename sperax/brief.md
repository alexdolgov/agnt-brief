# Agentic Audit Brief: Sperax

⚠️ Lifecycle status: DECLINING - TVL dropped 15.7% over 90 days

## Project Overview

- Project: Sperax (`sperax`)
- Website: [http://sperax.io](http://sperax.io)
- Lifecycle: declining (Tier 1, declining)
- Generated: 2026-06-18T04:47:49.411Z
- Pipeline run: v2-pipeline-2026-06-18-32b207-bcf3
- Chains: arbitrum, ethereum
- Contract surface: 10 unique implementations (12 raw deployments)
- DeFi Llama TVL: $1,870,997.00
- On-chain TVL (included contracts): $13,186,650.99
- TVL by chain: Arbitrum $11,561,418.82 | Ethereum $1,625,232.17

## Project Description

Sperax is currently positioned around SperaxOS, a DeFi agent layer. Its historical and on-chain protocol surface also includes the USDs stablecoin, SPA governance/staking assets including veSPA and xSPA, and related vault, strategy, and farm contracts.

### Architecture

The VaultCore uses strategies (Aave, Compound, Stargate) to generate yield, while the MasterPriceOracle provides asset prices for collateral and vault operations. The stablecoin USDs relies on CollateralManager and YieldReserve for backing, and governance tokens (SPA, veSPA, xSPA) control protocol parameters and incentivize liquidity through farms.

## Contract Surface Quality

- Indexed contracts: 175; live-surface contracts included: 12 (12 live, 0 unknown).
- Excluded by liveness: 138 inactive, 25 singleton, 0 uninitialized.
- Deployment units: 3/24 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Verified implementations audited: 3/9 (33.3%)
- Verified + Unaudited implementations: 6
- Verified by bytecode match: 0
- Unverified implementations: 1
- Unique implementations: 10
- Raw deployments: 12
- Audits discovered: 9
- Scoreable audits (matched contracts): 5
- ASD (verified + unaudited TVL): $1,625,232.17
- Latest audit: 2024-06 (stale)
- Staleness: 0 fresh, 0 aging, 9 stale, 0 unknown
- Tier 1 coverage: 11.1% (SlowMist)
- Note: This protocol is classified as [declining]. ASD of $1,625,232.17 represents exposure in a protocol with declining activity.

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| PeckShield | Tier 2 | 1 | 11.1% | 2022-09 |
| Quantstamp | Tier 2 | 1 | 11.1% | 2023-12 |
| SlowMist | Tier 1 | 1 | 11.1% | 2021-12 |
| unknown | Tier 2 | 1 | 11.1% | 2024-06 |

## Contract Surface

### ✅ Verified + Audited (3)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| SperaxTokenL2 | token | arbitrum | n/a | [`0x557555...40ad4b`](./contracts/arbitrum-42161/0x5575552988a3a80504bbaeb1311674fcfd40ad4b/) | ✅ Audited |
| veSPA_v1 | unknown | arbitrum | n/a | [`0xd16f53...69d165`](./contracts/arbitrum-42161/0xd16f5343fddd2dcf6a8791e302a204c13069d165/) | ✅ Audited |
| YieldReserve | unknown | arbitrum | n/a | [`0xfd14c8...29d861`](./contracts/arbitrum-42161/0xfd14c8ef0993fd9409f7820ba8ba80370529d861/) | ✅ Audited |

### ⚠️ Verified + Unaudited (6)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| SperaxToken | token | ethereum | n/a | 2 deployments: ethereum [`0x963148...215bc3`](./contracts/ethereum-1/0x9631483f28b7f5cbf7d435ab249be8f709215bc3/); ethereum `0xb4a3b0...d59008` | ⚠️ Unaudited |
| Dynamic_APR_Farm | unknown | arbitrum | n/a | [`0x7775cd...5ef2be`](./contracts/arbitrum-42161/0x7775cd662acf952101ace08a7144c8bb7d5ef2be/) | ⚠️ Unaudited |
| GnosisSafeL2 | governance | arbitrum | unit-35226 (2 proxies) | 2 deployments: arbitrum [`0x5b12d9...3b1bf1`](./contracts/arbitrum-42161/0x5b12d9846f8612e439730d18e1c12634753b1bf1/); arbitrum `0x6d5240...d51b62` | ⚠️ Unaudited |
| SperaxTokenL1 | token | ethereum | n/a | [`0x2a95fe...f770cb`](./contracts/ethereum-1/0x2a95fe4c7e64e09856989f9ea0b57b9ab5f770cb/) | ⚠️ Unaudited |
| veSPA | unknown | arbitrum | unit-35224 | [`0x2e2071...5f6a17`](./contracts/arbitrum-42161/0x2e2071180682ce6c247b1ef93d382d509f5f6a17/) | ⚠️ Unaudited |
| xSPA | unknown | arbitrum | unit-35223 | [`0x0966e7...b9ccc3`](./contracts/arbitrum-42161/0x0966e72256d6055145902f72f9d3b6a194b9ccc3/) | ⚠️ Unaudited |

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
| UnnamedContract | unknown | arbitrum | n/a | `0xd0497f...61c370` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [Demeter_PeckShield_1.pdf](https://github.com/Sperax/Audit_Reports/blob/main/Demeter_PeckShield_1.pdf) | PeckShield | Audit | 2022-09 | stale | Direct | contract_name | 0 | n/a |
| [Sperax - USDs - Report (1).pdf](https://github.com/Sperax/Audit_Reports/blob/main/Sperax%20-%20USDs%20-%20Report%20(1).pdf) | unknown | Audit | 2023-12 | stale | Direct | contract_name | 1 | high |
| [Demeter Audit Final Report.pdf](https://github.com/Sperax/Audit_Reports/blob/main/Demeter%20Audit%20Final%20Report.pdf) | Unknown | Audit | 2024-06 | stale | Direct | contract_name | 0 | n/a |
| [LM_Certik_1.pdf](https://github.com/Sperax/Audit_Reports/blob/main/LM_Certik_1.pdf) | CertiK | Audit | 2021-12 | stale | Direct | n/a | 0 | n/a |
| [SPA_Certik_2.pdf](https://github.com/Sperax/Audit_Reports/blob/main/SPA_Certik_2.pdf) | CertiK | Audit | 2021-11 | stale | Direct | n/a | 0 | n/a |
| [USDs_Quantstamp.pdf](https://github.com/Sperax/Audit_Reports/blob/main/USDs_Quantstamp.pdf) | Quantstamp | Audit | 2023-12 | stale | Direct | contract_name | 1 | high |
| [USDs_Slowmist_1.pdf](https://github.com/Sperax/Audit_Reports/blob/main/USDs_Slowmist_1.pdf) | SlowMist | Audit | 2021-12 | stale | Direct | contract_name | 1 | high |
| [USDs_Slowmist_2.pdf](https://github.com/Sperax/Audit_Reports/blob/main/USDs_Slowmist_2.pdf) | SlowMist | Audit | 2021-12 | stale | Direct | contract_name | 1 | high |
| [veSPA_PeckShield_1.pdf](https://github.com/Sperax/Audit_Reports/blob/main/veSPA_PeckShield_1.pdf) | PeckShield | Audit | 2022-04 | stale | Direct | contract_name | 1 | high |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | [`0x963148...215bc3`](./contracts/ethereum-1/0x9631483f28b7f5cbf7d435ab249be8f709215bc3/) | SperaxToken | token | $1,625,232.17 | Verified native implementation with $1,625,232.17 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x7775cd...5ef2be`](./contracts/arbitrum-42161/0x7775cd662acf952101ace08a7144c8bb7d5ef2be/) | Dynamic_APR_Farm | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x2a95fe...f770cb`](./contracts/ethereum-1/0x2a95fe4c7e64e09856989f9ea0b57b9ab5f770cb/) | SperaxTokenL1 | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 6 |
| upstream | 0 |
| standard_library | 3 |
| needs_review | 1 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 4
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=5
- Match method counts: extraction_exact=42

Zero-match audit list:

- [2888] Demeter_PeckShield_1.pdf
- [2890] Demeter Audit Final Report.pdf
- [2891] LM_Certik_1.pdf
- [2892] SPA_Certik_2.pdf

Fork inheritance lineage and inherited audits are included when available.
