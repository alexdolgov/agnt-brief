# Agentic Audit Brief: Api3

## Project Overview

- Project: Api3 (`api3`)
- Website: [https://api3.org/](https://api3.org/)
- Lifecycle: active (Tier 0, TVL trajectory)
- Generated: 2026-06-10T20:58:57.667Z
- Pipeline run: correction-skeletal-description-fix-all
- Chains: ethereum, mantle
- Contract surface: 28 unique implementations (32 raw deployments)
- DeFi Llama TVL: $55,284,496.11
- On-chain TVL (included contracts): $55,231,460.87
- TVL by chain: Ethereum $55,231,460.87

## Project Description

Api3 provides first-party oracle data feeds for smart contracts, with a current product focus that includes OEV Rewards and OEV-enabled, risk-curated DeFi markets. The protocol uses the API3 token for staking and governance, and its ecosystem centers on delivering oracle infrastructure and value recapture mechanisms for DeFi integrations rather than a separate documented 'Update parameters' product family.

### Architecture

The Api3 family provides the token and staking infrastructure, while the Update parameters family manages oracle configurations. Both families share the Api3ReaderProxyV1 contracts to serve data to consumers.

## Audit Coverage Summary

- Verified implementations audited: 3/14 (21.4%)
- Verified + Unaudited implementations: 11
- Verified by bytecode match: 0
- Unverified implementations: 14
- Unique implementations: 28
- Raw deployments: 32
- Audits discovered: 6
- Scoreable audits (matched contracts): 3
- ASD (verified + unaudited TVL): $55,231,460.87
- Latest audit: 2024-10 (aging)
- Staleness: 0 fresh, 1 aging, 5 stale, 0 unknown
- Tier 1 coverage: 7.1% (Trail of Bits)

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| Quantstamp | Tier 2 | 2 | 14.3% | 2024-10 |
| Sigma Prime | Tier 2 | 2 | 14.3% | 2023-03 |
| Trail of Bits | Tier 1 | 1 | 7.1% | 2022-03 |

## Contract Surface

### ✅ Verified + Audited (3)

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| AccessControlRegistry | registry | ethereum | [`0x747109...ca9497`](./contracts/ethereum-1/0x7471091fd3f158e7586a838bd70f1c7f19ca9497/) | ✅ Audited |
| AirnodeRrp | unknown | ethereum | [`0xf0a346...a059e8`](./contracts/ethereum-1/0xf0a346aa4be63bbedaf3b64277be9e2d99a059e8/) | ✅ Audited |
| Api3ReaderProxyV1 | unknown | ethereum | 2 deployments: ethereum [`0x5b0cf2...9cd473`](./contracts/ethereum-1/0x5b0cf2b36a65a6bb085d501b971e4c102b9cd473/); mantle `0x776e79...3be125` | ✅ Audited |

### ⚠️ Verified + Unaudited (11)

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| Api3Token | token | ethereum | [`0x0b3821...31b88a`](./contracts/ethereum-1/0x0b38210ea11411557c13457d4da7dc6ea731b88a/) | ⚠️ Unaudited |
| Api3CirculatingSupply | unknown | ethereum | 2 deployments: ethereum [`0x5af02b...3a3fa7`](./contracts/ethereum-1/0x5af02b1071614f962a7a6ae02503fe3f453a3fa7/); ethereum `0xcd34bc...8bd0a8` | ⚠️ Unaudited |
| Api3Pool | core_logic | ethereum | [`0x6dd655...c76d76`](./contracts/ethereum-1/0x6dd655f10d4b9e242ae186d9050b68f725c76d76/) | ⚠️ Unaudited |
| Api3Voting | unknown | ethereum | [`0xc215c6...b0521a`](./contracts/ethereum-1/0xc215c66b455e9f7854e7870631f2a01878b0521a/) | ⚠️ Unaudited |
| Convenience | unknown | ethereum | [`0x950872...c19636`](./contracts/ethereum-1/0x95087266018b9637aff3d76d4e0cad7e52c19636/) | ⚠️ Unaudited |
| LockedApi3 | unknown | ethereum | [`0xf84b11...87608f`](./contracts/ethereum-1/0xf84b11c31469706b50e57b398c63d7d13187608f/) | ⚠️ Unaudited |
| Oracle | operational_periphery | ethereum | [`0x78e761...31f85a`](./contracts/ethereum-1/0x78e76126719715eddf107cd70f3a31dddf31f85a/) | ⚠️ Unaudited |
| RequesterAuthorizerWithAirnode | unknown | ethereum | [`0x728f30...02a35c`](./contracts/ethereum-1/0x728f307fd43327be2fb9ef61a9f00d956402a35c/) | ⚠️ Unaudited |
| Safe | unknown | ethereum | [`0x5a9aa3...2677c2`](./contracts/ethereum-1/0x5a9aa3219dd1cbef6a18fd221464e071df2677c2/) | ⚠️ Unaudited |
| TimelockManager | governance | ethereum | 2 deployments: ethereum [`0x41ab01...ba1f03`](./contracts/ethereum-1/0x41ab01244c3f466294dbc36916a8b62d56ba1f03/); ethereum `0xfaef86...f02baa` | ⚠️ Unaudited |
| TimelockManagerReversible | governance | ethereum | 2 deployments: ethereum [`0x0dfe2c...dbb944`](./contracts/ethereum-1/0x0dfe2c661d50ab2424a53297c679eaeb57dbb944/); ethereum `0x310bbf...36f451` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (14)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| UnnamedContract | unknown | ethereum | `0x156671...c9da27` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x18c7ce...de2994` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x5c9e3c...05bb15` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x7603fa...eb999d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x7bf904...87b416` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x83ae72...464cfb` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x944018...4fd6e0` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x9f0566...31f75c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xad738d...3bf5de` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xba26aa...85625a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xbd3c17...60d38e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xbf7bf2...960a53` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xc235c5...3f3feb` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xc67258...c3f979` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [2021-12-16 Sigma Prime.pdf](https://github.com/api3dao/contracts/blob/main/audit-reports/2021-12-16%20Sigma%20Prime.pdf) | Sigma Prime | Audit | 2021-12 | stale | Direct | contract_name | 2 | high |
| [2022-03-30 Trail of Bits.pdf](https://github.com/api3dao/contracts/blob/main/audit-reports/2022-03-30%20Trail%20of%20Bits.pdf) | Trail of Bits | Audit | 2022-03 | stale | Direct | contract_name | 1 | high |
| [2023-03-02 Sigma Prime.pdf](https://github.com/api3dao/contracts/blob/main/audit-reports/2023-03-02%20Sigma%20Prime.pdf) | Sigma Prime | Audit | 2023-03 | stale | Direct | n/a | 0 | n/a |
| [2023-12-20 Quantstamp.pdf](https://github.com/api3dao/contracts/blob/main/audit-reports/2023-12-20%20Quantstamp.pdf) | Quantstamp | Audit | 2023-12 | stale | Direct | n/a | 0 | n/a |
| [2024-02-20 Quantstamp.pdf](https://github.com/api3dao/contracts/blob/main/audit-reports/2024-02-20%20Quantstamp.pdf) | Quantstamp | Audit | 2024-02 | stale | Direct | n/a | 0 | n/a |
| [2024-10-24 Quantstamp.pdf](https://github.com/api3dao/contracts/blob/main/audit-reports/2024-10-24%20Quantstamp.pdf) | Quantstamp | Audit | 2024-10 | aging | Direct | contract_name | 3 | high |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | [`0x0b3821...31b88a`](./contracts/ethereum-1/0x0b38210ea11411557c13457d4da7dc6ea731b88a/) | Api3Token | token | $55,231,460.87 | Verified native implementation with $55,231,460.87 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x5af02b...3a3fa7`](./contracts/ethereum-1/0x5af02b1071614f962a7a6ae02503fe3f453a3fa7/) | Api3CirculatingSupply | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x6dd655...c76d76`](./contracts/ethereum-1/0x6dd655f10d4b9e242ae186d9050b68f725c76d76/) | Api3Pool | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xc215c6...b0521a`](./contracts/ethereum-1/0xc215c66b455e9f7854e7870631f2a01878b0521a/) | Api3Voting | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x950872...c19636`](./contracts/ethereum-1/0x95087266018b9637aff3d76d4e0cad7e52c19636/) | Convenience | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xf84b11...87608f`](./contracts/ethereum-1/0xf84b11c31469706b50e57b398c63d7d13187608f/) | LockedApi3 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x78e761...31f85a`](./contracts/ethereum-1/0x78e76126719715eddf107cd70f3a31dddf31f85a/) | Oracle | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x728f30...02a35c`](./contracts/ethereum-1/0x728f307fd43327be2fb9ef61a9f00d956402a35c/) | RequesterAuthorizerWithAirnode | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x41ab01...ba1f03`](./contracts/ethereum-1/0x41ab01244c3f466294dbc36916a8b62d56ba1f03/) | TimelockManager | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0dfe2c...dbb944`](./contracts/ethereum-1/0x0dfe2c661d50ab2424a53297c679eaeb57dbb944/) | TimelockManagerReversible | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 25 |
| upstream | 0 |
| standard_library | 2 |
| needs_review | 1 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 3
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=3
- Match method counts: extraction_exact=6

Zero-match audit list:

- [4690] 2023-03-02 Sigma Prime.pdf
- [4691] 2023-12-20 Quantstamp.pdf
- [4692] 2024-02-20 Quantstamp.pdf

Fork inheritance lineage and inherited audits are included when available.
