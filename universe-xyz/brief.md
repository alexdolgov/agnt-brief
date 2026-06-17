# Agentic Audit Brief: Universe XYZ

⚠️ Lifecycle status: DEAD - TVL dropped 25.5% over 90 days

## Project Overview

- Project: Universe XYZ (`universe-xyz`)
- Lifecycle: dead (Tier 0, 99.4% below peak)
- Generated: 2026-06-17T23:02:37.857Z
- Pipeline run: v2-pipeline-2026-06-17-2a130c-9ddf
- Chains: ethereum
- Contract surface: 7 unique implementations (7 raw deployments)
- DeFi Llama TVL: $1,189,526.59
- On-chain TVL (included contracts): $216,115.35
- TVL by chain: Ethereum $216,115.35

## Project Description

Universe XYZ is an Ethereum NFT/community platform underpinned by the $XYZ token. Staking or yield components should only be described when specifically tied to verified Universe XYZ-owned contracts.

### Architecture

The IlluviumERC20 token is used within the Staking contract for reward distribution, while the UniswapV2Pair provides liquidity for the token. Supporting contracts like BarnBridgeToken and Comp may serve as external reward tokens or governance interfaces.

## Contract Surface Quality

- Indexed contracts: 210; live-surface contracts included: 7 (7 live, 0 unknown).
- Excluded by liveness: 198 inactive, 5 singleton, 0 uninitialized.
- Deployment units: 1/5 live.
- Detected codebases: uniswap-v2
- Dependencies extracted: 3; unverified dependencies: 0.

## Audit Coverage Summary

- Verified implementations audited: 1/7 (14.3%)
- Verified + Unaudited implementations: 6
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 7
- Raw deployments: 7
- Audits discovered: 3
- Scoreable audits (matched contracts): 1
- ASD (verified + unaudited TVL): $216,115.35
- Latest audit: 2022-03 (stale)
- Staleness: 0 fresh, 0 aging, 3 stale, 0 unknown
- Tier 1 coverage: No Tier 1 coverage
- Note: This protocol is classified as [dead]. ASD of $216,115.35 represents exposure in a protocol with dead activity.

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| Quantstamp | Tier 2 | 1 | 14.3% | 2021-02 |

## Contract Surface

### ✅ Verified + Audited (1)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| Rewards | unknown | ethereum | n/a | [`0xf306ad...c31205`](./contracts/ethereum-1/0xf306ad6a3e2abd5cfd6687a2c86998f1d9c31205/) | ✅ Audited |

### ⚠️ Verified + Unaudited (6)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| XYZToken | token | ethereum | n/a | [`0x618679...fa2883`](./contracts/ethereum-1/0x618679df9efcd19694bb1daa8d00718eacfa2883/) | ⚠️ Unaudited |
| BarnBridgeToken | operational_periphery | ethereum | n/a | [`0x0391d2...37750f`](./contracts/ethereum-1/0x0391d2021f89dc339f60fff84546ea23e337750f/) | ⚠️ Unaudited |
| Staking | unknown | ethereum | n/a | [`0x2d6157...ba0c09`](./contracts/ethereum-1/0x2d615795a8bdb804541c69798f13331126ba0c09/) | ⚠️ Unaudited |
| SushiLPPool | core_logic | ethereum | unit-33478 | [`0xe98477...571cc2`](./contracts/ethereum-1/0xe98477bdc16126bb0877c6e3882e3edd72571cc2/) | ⚠️ Unaudited |
| UniswapV2Pair | unknown | ethereum | n/a | [`0xbbbdb1...14d69a`](./contracts/ethereum-1/0xbbbdb106a806173d1eea1640961533ff3114d69a/) | ⚠️ Unaudited |
| Vesting | operational_periphery | ethereum | n/a | [`0xf38cc3...b13abf`](./contracts/ethereum-1/0xf38cc32a49435e5c272362193580177b31b13abf/) | ⚠️ Unaudited |

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
| [HAECHI-DAO.pdf](https://github.com/UniverseXYZ/xyzDAO-PM/blob/master/audits/HAECHI-DAO.pdf) | Haechi | Audit | 2021-01 | stale | Direct | contract_name | 0 | n/a |
| [PerfectAbstractions-Marketplace-Audit.pdf](https://github.com/UniverseXYZ/xyzDAO-PM/blob/master/audits/PerfectAbstractions-Marketplace-Audit.pdf) | Perfect Abstractions | Audit | 2022-03 | stale | Direct | n/a | 0 | n/a |
| [Quantstamp-DAO.pdf](https://github.com/UniverseXYZ/xyzDAO-PM/blob/master/audits/Quantstamp-DAO.pdf) | Quantstamp | Audit | 2021-02 | stale | Direct | contract_name | 1 | high |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | [`0x618679...fa2883`](./contracts/ethereum-1/0x618679df9efcd19694bb1daa8d00718eacfa2883/) | XYZToken | token | $216,115.35 | Verified native implementation with $216,115.35 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x2d6157...ba0c09`](./contracts/ethereum-1/0x2d615795a8bdb804541c69798f13331126ba0c09/) | Staking | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xf38cc3...b13abf`](./contracts/ethereum-1/0xf38cc32a49435e5c272362193580177b31b13abf/) | Vesting | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 4 |
| upstream | 1 |
| standard_library | 1 |
| needs_review | 1 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 2
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=1
- Match method counts: extraction_exact=9

Zero-match audit list:

- [14702] HAECHI-DAO.pdf
- [14703] PerfectAbstractions-Marketplace-Audit.pdf

Fork inheritance lineage and inherited audits are included when available.
