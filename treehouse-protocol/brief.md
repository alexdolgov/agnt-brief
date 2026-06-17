# Agentic Audit Brief: Treehouse Protocol

⚠️ Lifecycle status: DECLINING - TVL dropped 45.2% over 90 days

## Project Overview

- Project: Treehouse Protocol (`treehouse-protocol`)
- Website: [https://www.treehouse.finance/](https://www.treehouse.finance/)
- Lifecycle: declining (Tier 0, 86.1% below peak)
- Generated: 2026-06-17T07:00:32.799Z
- Pipeline run: brief-regen-topo-2026-06-17
- Chains: ethereum
- Contract surface: 20 unique implementations (22 raw deployments)
- DeFi Llama TVL: $65,970,028.04
- On-chain TVL (included contracts): $1,798,114.23
- TVL by chain: Ethereum $1,798,114.23

## Project Description

Treehouse Protocol is a DeFi fixed-income protocol focused on tAssets, including tETH, and decentralized offered rates (DOR). It provides tokenized yield and fixed-income products rather than operating as a native lending, borrowing, or stablecoin-minting platform.

### Architecture

The protocol's core Vault and SimpleStakingERC20 token handle staking and liquid token issuance, while the LendingPoolv3 proxy enables borrowing. Supporting contracts like WithdrawalQueueERC721 manage unstaking, and CurveStableSwapNG pools facilitate stablecoin swaps, all sharing the same staking and lending infrastructure.

## Contract Surface Quality

- Indexed contracts: 92; live-surface contracts included: 22 (22 live, 0 unknown).
- Excluded by liveness: 59 inactive, 11 singleton, 0 uninitialized.
- Deployment units: 5/10 live.
- Detected codebases: aave-v2, balancer-v2, curve-stableswap
- Unverified dependencies: 8/109.

## Audit Coverage Summary

- Verified implementations audited: 7/19 (36.8%)
- Verified + Unaudited implementations: 12
- Verified by bytecode match: 0
- Unverified implementations: 1
- Unique implementations: 20
- Raw deployments: 22
- Audits discovered: 20
- Scoreable audits (matched contracts): 10
- ASD (verified + unaudited TVL): $1,798,114.23
- Latest audit: 2026-05 (fresh)
- Staleness: 6 fresh, 13 aging, 0 stale, 1 unknown
- Tier 1 coverage: 5.3% (Trail of Bits)
- Note: This protocol is classified as [declining]. ASD of $1,798,114.23 represents exposure in a protocol with declining activity.

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| WatchPug | Tier 2 | 7 | 36.8% | 2026-05 |
| Sigma Prime | Tier 2 | 2 | 10.5% | 2025-03 |
| Trail of Bits | Tier 1 | 1 | 5.3% | 2024-10 |

## Contract Surface

### ✅ Verified + Audited (7)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| GearboxDepositV31 | unknown | ethereum | n/a | [`0x4deed6...cd234f`](./contracts/ethereum-1/0x4deed6b663a64f76f6a59412486a9d9048cd234f/) | ✅ Audited |
| GearboxRedeemV31 | unknown | ethereum | n/a | [`0x90a029...08257a`](./contracts/ethereum-1/0x90a02936ba645ab719574512b578ee85d208257a/) | ✅ Audited |
| PnlAccounting | unknown | ethereum | n/a | [`0xdd317b...acaea7`](./contracts/ethereum-1/0xdd317b85f7bd56361e2e3216610803e433acaea7/) | ✅ Audited |
| RedemptionController | governance | ethereum | n/a | [`0xdf2ee4...eb2510`](./contracts/ethereum-1/0xdf2ee409bee416a53b5c040d8e6dad4a7ceb2510/) | ✅ Audited |
| TreehouseFastlane | unknown | ethereum | n/a | [`0x829525...06c0d6`](./contracts/ethereum-1/0x829525417cd78cba0f99a8736426fc299506c0d6/) | ✅ Audited |
| TreehouseRedemptionV2 | unknown | ethereum | n/a | [`0xcd63a2...aabb85`](./contracts/ethereum-1/0xcd63a29faff07130d3af89bb4f40778938aabb85/) | ✅ Audited |
| TreehouseRouter | adapter | ethereum | n/a | [`0xefa3fa...0628f5`](./contracts/ethereum-1/0xefa3fa8e85d2b3cfdb250cdea156c2c6c90628f5/) | ✅ Audited |

### ⚠️ Verified + Unaudited (12)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| LendingPoolv3 | core_logic | ethereum | unit-20547 | [`0x5fde59...eb357f`](./contracts/ethereum-1/0x5fde59415625401278c4d41c6befce3790eb357f/) | ⚠️ Unaudited |
| AccountingOracle | operational_periphery | ethereum | unit-20550 | [`0x852ded...503cee`](./contracts/ethereum-1/0x852ded011285fe67063a08005c71a85690503cee/) | ⚠️ Unaudited |
| ComposableStablePool | core_logic | ethereum | n/a | [`0x1d1353...4dad14`](./contracts/ethereum-1/0x1d13531bf6344c102280ce4c458781fbf14dad14/) | ⚠️ Unaudited |
| CurveStableSwapNG | operational_periphery | ethereum | n/a | 2 deployments: ethereum [`0x394a1e...41542f`](./contracts/ethereum-1/0x394a1e1b934cb4f4a0dc17bdd592ec078741542f/); ethereum `0xa10d15...0dddb1` | ⚠️ Unaudited |
| DorMigrator | periphery | ethereum | n/a | [`0x83b78c...c9da2a`](./contracts/ethereum-1/0x83b78c4a54507ddc8db1fc3fd41df6edb0c9da2a/) | ⚠️ Unaudited |
| HashConsensus | unknown | ethereum | n/a | 2 deployments: ethereum [`0x7fadb6...df355a`](./contracts/ethereum-1/0x7fadb6358950c5faa66cb5eb8ee5147de3df355a/); ethereum `0xd624b0...f0b288` | ⚠️ Unaudited |
| KPKWSTETHV3RateProvider | unknown | ethereum | n/a | [`0xc8efa0...459ac2`](./contracts/ethereum-1/0xc8efa074aa18368270d5cda1fe733de2b9459ac2/) | ⚠️ Unaudited |
| SimpleStakingERC20 | token | ethereum | n/a | [`0x5e4acc...779dcc`](./contracts/ethereum-1/0x5e4acca7a9989007cd74ae4ed1b096c000779dcc/) | ⚠️ Unaudited |
| StakingRouter | adapter | ethereum | unit-20554 | [`0xfddf38...f12999`](./contracts/ethereum-1/0xfddf38947afb03c621c71b06c9c70bce73f12999/) | ⚠️ Unaudited |
| ValidatorsExitBusOracle | operational_periphery | ethereum | unit-20545 | [`0x0de4ea...bf5c6e`](./contracts/ethereum-1/0x0de4ea0184c2ad0baca7183356aea5b8d5bf5c6e/) | ⚠️ Unaudited |
| Vyper_contract | unknown | ethereum | n/a | [`0xf69753...d27862`](./contracts/ethereum-1/0xf697535848b535900c76f70f1e36ec3985d27862/) | ⚠️ Unaudited |
| WeETHExchangeRateProvider | unknown | ethereum | n/a | [`0x30ed8c...5595e4`](./contracts/ethereum-1/0x30ed8ce7668658271da0ddb350070ffea75595e4/) | ⚠️ Unaudited |

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
| Proxy (impl: 0x62c9e5e52351e02635f48072fa20c03bb650f787) | proxy | ethereum | unit-20552 | `0xad744e...3d8db2` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [Rendered PDF capture](https://www.treehouse.finance/One_Rate_To_Rule_Them_All.pdf) | yAudit | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [Fuzzland tETH Sep Audit Report vF.pdf](https://github.com/treehouse-gaia/audit-report/blob/main/Fuzzland%20tETH%20Sep%20Audit%20Report%20vF.pdf) | unknown | Audit | 2024-09 | aging | Direct | contract_name | 0 | n/a |
| [Sigma Prime tETH Aug Audit Report vF.pdf](https://github.com/treehouse-gaia/audit-report/blob/main/Sigma%20Prime%20tETH%20Aug%20Audit%20Report%20vF.pdf) | Sigma Prime | Audit | 2024-08 | aging | Direct | contract_name | 1 | high |
| [Sigma Prime tETH Mar Audit Report.pdf](https://github.com/treehouse-gaia/audit-report/blob/main/Sigma%20Prime%20tETH%20Mar%20Audit%20Report.pdf) | Sigma Prime | Audit | 2025-03 | aging | Direct | contract_name | 1 | high |
| [Sigma Prime tETH Sep Audit Report vF.pdf](https://github.com/treehouse-gaia/audit-report/blob/main/Sigma%20Prime%20tETH%20Sep%20Audit%20Report%20vF.pdf) | Sigma Prime | Audit | 2024-09 | aging | Direct | contract_name | 1 | high |
| [Trail of Bits tETH Aug Audit Report vF.pdf](https://github.com/treehouse-gaia/audit-report/blob/main/Trail%20of%20Bits%20tETH%20Aug%20Audit%20Report%20vF.pdf) | Trail of Bits | Audit | 2024-08 | aging | Direct | contract_name | 1 | high |
| [Trail of Bits tETH Oct Audit Report vF.pdf](https://github.com/treehouse-gaia/audit-report/blob/main/Trail%20of%20Bits%20tETH%20Oct%20Audit%20Report%20vF.pdf) | Trail of Bits | Audit | 2024-10 | aging | Direct | contract_name | 1 | high |
| [WatchPug Merkl Claim Apr Audit Report vF2.pdf](https://github.com/treehouse-gaia/audit-report/blob/main/WatchPug%20Merkl%20Claim%20Apr%20Audit%20Report%20vF2.pdf) | WatchPug | Audit | 2025-04 | aging | Direct | contract_name | 0 | n/a |
| [WatchPug TREE Token Mar Audit Report.pdf](https://github.com/treehouse-gaia/audit-report/blob/main/WatchPug%20TREE%20Token%20Mar%20Audit%20Report.pdf) | WatchPug | Audit | 2025-03 | aging | Direct | n/a | 0 | n/a |
| [WatchPug tAVAX Aug Audit Report.pdf](https://github.com/treehouse-gaia/audit-report/blob/main/WatchPug%20tAVAX%20Aug%20Audit%20Report.pdf) | WatchPug | Audit | 2025-08 | fresh | Direct | contract_name | 0 | n/a |
| [WatchPug tAVAX Benqi Strategy Audit Report.pdf](https://github.com/treehouse-gaia/audit-report/blob/main/WatchPug%20tAVAX%20Benqi%20Strategy%20Audit%20Report.pdf) | WatchPug | Audit | 2025-10 | fresh | Direct | contract_name | 0 | n/a |
| [WatchPug tAVAX Merkl Claim Audit Report.pdf](https://github.com/treehouse-gaia/audit-report/blob/main/WatchPug%20tAVAX%20Merkl%20Claim%20Audit%20Report.pdf) | WatchPug | Audit | 2025-09 | fresh | Direct | contract_name | 0 | n/a |
| [WatchPug tAVAX Spectra Audit Report.pdf](https://github.com/treehouse-gaia/audit-report/blob/main/WatchPug%20tAVAX%20Spectra%20Audit%20Report.pdf) | WatchPug | Audit | 2025-10 | fresh | Direct | n/a | 0 | n/a |
| [WatchPug tETH Dec 2025 Audit Report vF.pdf](https://github.com/treehouse-gaia/audit-report/blob/main/WatchPug%20tETH%20Dec%202025%20Audit%20Report%20vF.pdf) | WatchPug | Audit | 2025-12 | fresh | Direct | contract_name | 2 | high |
| [WatchPug tETH Dec Audit Report vF.pdf](https://github.com/treehouse-gaia/audit-report/blob/main/WatchPug%20tETH%20Dec%20Audit%20Report%20vF.pdf) | WatchPug | Audit | 2024-12 | aging | Direct | contract_name | 3 | high |
| [WatchPug tETH Dec Audit Report vF2.pdf](https://github.com/treehouse-gaia/audit-report/blob/main/WatchPug%20tETH%20Dec%20Audit%20Report%20vF2.pdf) | WatchPug | Audit | 2024-12 | aging | Direct | contract_name | 2 | high |
| [WatchPug tETH Feb Audit Report vF.pdf](https://github.com/treehouse-gaia/audit-report/blob/main/WatchPug%20tETH%20Feb%20Audit%20Report%20vF.pdf) | WatchPug | Audit | 2025-02 | aging | Direct | contract_name | 1 | high |
| [WatchPug tETH Feb Audit Report vF2.pdf](https://github.com/treehouse-gaia/audit-report/blob/main/WatchPug%20tETH%20Feb%20Audit%20Report%20vF2.pdf) | WatchPug | Audit | 2025-02 | aging | Direct | n/a | 0 | n/a |
| [WatchPug tETH Timelock May Audit Report vF2.pdf](https://github.com/treehouse-gaia/audit-report/blob/main/WatchPug%20tETH%20Timelock%20May%20Audit%20Report%20vF2.pdf) | WatchPug | Audit | 2025-05 | aging | Direct | contract_name | 0 | n/a |
| [WatchPug tHYPE May Audit Report.pdf](https://github.com/treehouse-gaia/audit-report/blob/main/WatchPug%20tHYPE%20May%20Audit%20Report.pdf) | WatchPug | Audit | 2026-05 | fresh | Direct | contract_name | 1 | high |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | [`0x83b78c...c9da2a`](./contracts/ethereum-1/0x83b78c4a54507ddc8db1fc3fd41df6edb0c9da2a/) | DorMigrator | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x7fadb6...df355a`](./contracts/ethereum-1/0x7fadb6358950c5faa66cb5eb8ee5147de3df355a/) | HashConsensus | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xc8efa0...459ac2`](./contracts/ethereum-1/0xc8efa074aa18368270d5cda1fe733de2b9459ac2/) | KPKWSTETHV3RateProvider | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x5e4acc...779dcc`](./contracts/ethereum-1/0x5e4acca7a9989007cd74ae4ed1b096c000779dcc/) | SimpleStakingERC20 | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xf69753...d27862`](./contracts/ethereum-1/0xf697535848b535900c76f70f1e36ec3985d27862/) | Vyper_contract | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x30ed8c...5595e4`](./contracts/ethereum-1/0x30ed8ce7668658271da0ddb350070ffea75595e4/) | WeETHExchangeRateProvider | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 14 |
| upstream | 2 |
| standard_library | 4 |
| needs_review | 0 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 10
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=10
- Match method counts: extraction_exact=93

Zero-match audit list:

- [4607] Rendered PDF capture
- [11318] Fuzzland tETH Sep Audit Report vF.pdf
- [11324] WatchPug Merkl Claim Apr Audit Report vF2.pdf
- [11325] WatchPug TREE Token Mar Audit Report.pdf
- [11326] WatchPug tAVAX Aug Audit Report.pdf
- [11327] WatchPug tAVAX Benqi Strategy Audit Report.pdf
- [11328] WatchPug tAVAX Merkl Claim Audit Report.pdf
- [11329] WatchPug tAVAX Spectra Audit Report.pdf
- [11334] WatchPug tETH Feb Audit Report vF2.pdf
- [11335] WatchPug tETH Timelock May Audit Report vF2.pdf

Fork inheritance lineage and inherited audits are included when available.
