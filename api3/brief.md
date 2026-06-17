# Agentic Audit Brief: Api3

## Project Overview

- Project: Api3 (`api3`)
- Website: [https://api3.org/](https://api3.org/)
- Lifecycle: active (Tier 0, TVL trajectory)
- Generated: 2026-06-17T07:00:41.388Z
- Pipeline run: brief-regen-topo-2026-06-17
- Chains: ethereum, mantle
- Contract surface: 6 unique implementations (6 raw deployments)
- DeFi Llama TVL: $48,591,689.89
- On-chain TVL (included contracts): $55,231,460.87
- TVL by chain: Ethereum $55,231,460.87

## Project Description

Api3 provides first-party oracle data feeds for smart contracts, with a current product focus that includes OEV Rewards and OEV-enabled, risk-curated DeFi markets. The protocol uses the API3 token for staking and governance, and its ecosystem centers on delivering oracle infrastructure and value recapture mechanisms for DeFi integrations rather than a separate documented 'Update parameters' product family.

### Architecture

The Api3 family provides the token and staking infrastructure, while the Update parameters family manages oracle configurations. Both families share the Api3ReaderProxyV1 contracts to serve data to consumers.

## Contract Surface Quality

- Indexed contracts: 32; live-surface contracts included: 6 (4 live, 2 unknown).
- Excluded by liveness: 26 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 1/3 live.
- Detected codebases: none
- Dependencies extracted: 18; unverified dependencies: 0.

## Audit Coverage Summary

- Verified implementations audited: 2/5 (40.0%)
- Verified + Unaudited implementations: 3
- Verified by bytecode match: 0
- Unverified implementations: 1
- Unique implementations: 6
- Raw deployments: 6
- Audits discovered: 6
- Scoreable audits (matched contracts): 1
- ASD (verified + unaudited TVL): $55,231,460.87
- Latest audit: 2024-10 (aging)
- Staleness: 0 fresh, 1 aging, 5 stale, 0 unknown
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| Quantstamp | Tier 2 | 2 | 40.0% | 2024-10 |

## Contract Surface

### ✅ Verified + Audited (2)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| Api3ReaderProxyV1 | unknown | ethereum | unit-18877 | [`0x5b0cf2...9cd473`](./contracts/ethereum-1/0x5b0cf2b36a65a6bb085d501b971e4c102b9cd473/) | ✅ Audited |
| Api3ReaderProxyV1 | operational_periphery | mantle | unit-18878 | [`0x776e79...3be125`](./contracts/mantle-5000/0x776e79d916e49bbdb8fee0f43ff148c2ed3be125/) | ✅ Audited |

### ⚠️ Verified + Unaudited (3)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| Api3Token | token | ethereum | n/a | [`0x0b3821...31b88a`](./contracts/ethereum-1/0x0b38210ea11411557c13457d4da7dc6ea731b88a/) | ⚠️ Unaudited |
| Api3Pool | core_logic | ethereum | n/a | [`0x6dd655...c76d76`](./contracts/ethereum-1/0x6dd655f10d4b9e242ae186d9050b68f725c76d76/) | ⚠️ Unaudited |
| Safe | unknown | ethereum | unit-18876 | [`0x5a9aa3...2677c2`](./contracts/ethereum-1/0x5a9aa3219dd1cbef6a18fd221464e071df2677c2/) | ⚠️ Unaudited |

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
| UnnamedContract | unknown | ethereum | n/a | `0x9f0566...31f75c` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [2021-12-16 Sigma Prime.pdf](https://github.com/api3dao/contracts/blob/main/audit-reports/2021-12-16%20Sigma%20Prime.pdf) | Sigma Prime | Audit | 2021-12 | stale | Direct | contract_name | 0 | n/a |
| [2022-03-30 Trail of Bits.pdf](https://github.com/api3dao/contracts/blob/main/audit-reports/2022-03-30%20Trail%20of%20Bits.pdf) | Trail of Bits | Audit | 2022-03 | stale | Direct | contract_name | 0 | n/a |
| [2023-03-02 Sigma Prime.pdf](https://github.com/api3dao/contracts/blob/main/audit-reports/2023-03-02%20Sigma%20Prime.pdf) | Sigma Prime | Audit | 2023-03 | stale | Direct | n/a | 0 | n/a |
| [2023-12-20 Quantstamp.pdf](https://github.com/api3dao/contracts/blob/main/audit-reports/2023-12-20%20Quantstamp.pdf) | Quantstamp | Audit | 2023-12 | stale | Direct | n/a | 0 | n/a |
| [2024-02-20 Quantstamp.pdf](https://github.com/api3dao/contracts/blob/main/audit-reports/2024-02-20%20Quantstamp.pdf) | Quantstamp | Audit | 2024-02 | stale | Direct | n/a | 0 | n/a |
| [2024-10-24 Quantstamp.pdf](https://github.com/api3dao/contracts/blob/main/audit-reports/2024-10-24%20Quantstamp.pdf) | Quantstamp | Audit | 2024-10 | aging | Direct | contract_name | 2 | high |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | [`0x0b3821...31b88a`](./contracts/ethereum-1/0x0b38210ea11411557c13457d4da7dc6ea731b88a/) | Api3Token | token | $55,231,460.87 | Verified native implementation with $55,231,460.87 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x6dd655...c76d76`](./contracts/ethereum-1/0x6dd655f10d4b9e242ae186d9050b68f725c76d76/) | Api3Pool | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 2 |
| upstream | 0 |
| standard_library | 2 |
| needs_review | 2 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 5
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=1
- Match method counts: extraction_exact=6

Zero-match audit list:

- [4688] 2021-12-16 Sigma Prime.pdf
- [4689] 2022-03-30 Trail of Bits.pdf
- [4690] 2023-03-02 Sigma Prime.pdf
- [4691] 2023-12-20 Quantstamp.pdf
- [4692] 2024-02-20 Quantstamp.pdf

Fork inheritance lineage and inherited audits are included when available.
