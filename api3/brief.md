# Agentic Audit Brief: Api3

⚠️ Lifecycle status: UNKNOWN - TVL trajectory indicates non-active lifecycle.

## Project Overview

- Project: Api3 (`api3`)
- Website: [https://api3.org/](https://api3.org/)
- Lifecycle: unknown (Tier 0, TVL trajectory)
- Generated: 2026-06-18T04:44:42.292Z
- Pipeline run: v2-pipeline-2026-06-18-32b207-bcf3
- Chains: ethereum, mantle
- Contract surface: 20 unique implementations (21 raw deployments)
- DeFi Llama TVL: $48,591,689.89
- On-chain TVL (included contracts): $72,229,230.56
- TVL by chain: Ethereum $72,229,230.56

## Project Description

Api3 provides first-party oracle data feeds for smart contracts, with a current product focus that includes OEV Rewards and OEV-enabled, risk-curated DeFi markets. The protocol uses the API3 token for staking and governance, and its ecosystem centers on delivering oracle infrastructure and value recapture mechanisms for DeFi integrations rather than a separate documented 'Update parameters' product family.

### Architecture

The Api3 family provides the token and staking infrastructure, while the Update parameters family manages oracle configurations. Both families share the Api3ReaderProxyV1 contracts to serve data to consumers.

## Contract Surface Quality

- Indexed contracts: 53; live-surface contracts included: 21 (12 live, 9 unknown).
- Excluded by liveness: 29 inactive, 3 singleton, 0 uninitialized.
- Deployment units: 2/8 live.
- Detected codebases: none
- Dependencies extracted: 1; unverified dependencies: 0.

## Audit Coverage Summary

- Verified implementations audited: 3/19 (15.8%)
- Verified + Unaudited implementations: 16
- Verified by bytecode match: 0
- Unverified implementations: 1
- Unique implementations: 20
- Raw deployments: 21
- Audits discovered: 6
- Scoreable audits (matched contracts): 3
- ASD (verified + unaudited TVL): $72,229,230.56
- Latest audit: 2024-10 (aging)
- Staleness: 0 fresh, 1 aging, 5 stale, 0 unknown
- Tier 1 coverage: 5.3% (Trail of Bits)
- Note: This protocol is classified as [unknown]. ASD of $72,229,230.56 represents exposure in a protocol with unknown activity.

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| Quantstamp | Tier 2 | 3 | 15.8% | 2024-10 |
| Sigma Prime | Tier 2 | 1 | 5.3% | 2023-03 |
| Trail of Bits | Tier 1 | 1 | 5.3% | 2022-03 |

## Contract Surface

### ✅ Verified + Audited (3)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| AccessControlRegistry | registry | ethereum | n/a | [`0x92e512...3b6df1`](./contracts/ethereum-1/0x92e5125adf385d86bedb950793526106143b6df1/) | ✅ Audited |
| Api3ReaderProxyV1 | unknown | ethereum | unit-35216 | [`0x5b0cf2...9cd473`](./contracts/ethereum-1/0x5b0cf2b36a65a6bb085d501b971e4c102b9cd473/) | ✅ Audited |
| Api3ReaderProxyV1 | unknown | mantle | unit-35218 | [`0x776e79...3be125`](./contracts/mantle-5000/0x776e79d916e49bbdb8fee0f43ff148c2ed3be125/) | ✅ Audited |

### ⚠️ Verified + Unaudited (16)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| Api3Token | token | ethereum | n/a | [`0x0b3821...31b88a`](./contracts/ethereum-1/0x0b38210ea11411557c13457d4da7dc6ea731b88a/) | ⚠️ Unaudited |
| VaultV2 | core_logic | ethereum | n/a | 2 deployments: ethereum [`0x36cfe1...da2439`](./contracts/ethereum-1/0x36cfe1568461e499391ef0a555300f1ae2da2439/); ethereum `0x54210d...c6e3f4` | ⚠️ Unaudited |
| VaultV2 | core_logic | ethereum | unit-35217 | [`0xe2221a...a4e53b`](./contracts/ethereum-1/0xe2221aa07ec3266da87763e2b1e28d07a8a4e53b/) | ⚠️ Unaudited |
| ACL | governance | ethereum | unit-35212 | [`0x1e7ecc...f4195a`](./contracts/ethereum-1/0x1e7ecc6d3b5b4cfdfc71cb7c3ea9ac4a55f4195a/) | ⚠️ Unaudited |
| AdaptiveCurveIrm | unknown | ethereum | n/a | [`0x870ac1...ba00bc`](./contracts/ethereum-1/0x870ac11d48b15db9a138cf899d20f13f79ba00bc/) | ⚠️ Unaudited |
| AirnodeRrpV0DryRun | unknown | ethereum | n/a | [`0x2e7682...75193f`](./contracts/ethereum-1/0x2e768206bf5112e7d7efaf1d9df614c26475193f/) | ⚠️ Unaudited |
| Api3Pool | core_logic | ethereum | n/a | [`0x6dd655...c76d76`](./contracts/ethereum-1/0x6dd655f10d4b9e242ae186d9050b68f725c76d76/) | ⚠️ Unaudited |
| Kernel | unknown | ethereum | unit-35214 | [`0x593ea9...d06dba`](./contracts/ethereum-1/0x593ea926ee9820a933488b6a288433c387d06dba/) | ⚠️ Unaudited |
| Morpho | unknown | ethereum | n/a | [`0xbbbbbb...eeffcb`](./contracts/ethereum-1/0xbbbbbbbbbb9cc5e90e3b3af64bdaf62c37eeffcb/) | ⚠️ Unaudited |
| MorphoChainlinkOracleV2Factory | operational_periphery | ethereum | n/a | [`0x3a7bb3...3ad766`](./contracts/ethereum-1/0x3a7bb36ee3f3ee32a60e9f2b33c1e5f2e83ad766/) | ⚠️ Unaudited |
| MorphoMarketV1AdapterV2Factory | adapter | ethereum | n/a | [`0x32bb1c...61ccc1`](./contracts/ethereum-1/0x32bb1c0d48d8b1b3363e86eeb9a0300bad61ccc1/) | ⚠️ Unaudited |
| MorphoVaultV1AdapterFactory | adapter | ethereum | n/a | [`0xd1b8e2...f63394`](./contracts/ethereum-1/0xd1b8e2dee25c2b89dcd2f98448a7ce87d6f63394/) | ⚠️ Unaudited |
| RegistryList | registry | ethereum | n/a | [`0x3696c5...d9364e`](./contracts/ethereum-1/0x3696c5eae4a7ffd04ea163564571e9cd8ed9364e/) | ⚠️ Unaudited |
| RequesterAuthorizerWithAirnode | unknown | ethereum | n/a | [`0xf18c10...9e6178`](./contracts/ethereum-1/0xf18c105d0375e80980e4eed829a4a68a539e6178/) | ⚠️ Unaudited |
| Safe | unknown | ethereum | unit-35215 | [`0x5a9aa3...2677c2`](./contracts/ethereum-1/0x5a9aa3219dd1cbef6a18fd221464e071df2677c2/) | ⚠️ Unaudited |
| VaultV2Factory | registry | ethereum | n/a | [`0xa1d94f...6c0405`](./contracts/ethereum-1/0xa1d94f746defa1928926b84fb2596c06926c0405/) | ⚠️ Unaudited |

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
| [2021-12-16 Sigma Prime.pdf](https://github.com/api3dao/contracts/blob/main/audit-reports/2021-12-16%20Sigma%20Prime.pdf) | Sigma Prime | Audit | 2021-12 | stale | Direct | contract_name | 1 | high |
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
| ethereum | [`0x2e7682...75193f`](./contracts/ethereum-1/0x2e768206bf5112e7d7efaf1d9df614c26475193f/) | AirnodeRrpV0DryRun | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x6dd655...c76d76`](./contracts/ethereum-1/0x6dd655f10d4b9e242ae186d9050b68f725c76d76/) | Api3Pool | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x3696c5...d9364e`](./contracts/ethereum-1/0x3696c5eae4a7ffd04ea163564571e9cd8ed9364e/) | RegistryList | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 5 |
| upstream | 4 |
| standard_library | 3 |
| needs_review | 8 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 3
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=3
- Match method counts: extraction_exact=9

Zero-match audit list:

- [14936] 2023-03-02 Sigma Prime.pdf
- [14937] 2023-12-20 Quantstamp.pdf
- [14938] 2024-02-20 Quantstamp.pdf

Fork inheritance lineage and inherited audits are included when available.
