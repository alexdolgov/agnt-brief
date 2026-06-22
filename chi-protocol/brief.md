# Agentic Audit Brief: Chi Protocol

⚠️ Lifecycle status: DECLINING - TVL dropped 20.4% over 90 days

## Project Overview

- Project: Chi Protocol (`chi-protocol`)
- Website: [https://app.chiprotocol.io/](https://app.chiprotocol.io/)
- Lifecycle: declining (Tier 1, declining)
- Generated: 2026-06-19T21:12:23.526Z
- Pipeline run: v2-pipeline-2026-06-19-727228-a815
- Chains: ethereum
- Contract surface: 55 unique implementations (57 raw deployments)
- DeFi Llama TVL: $7,774.67
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Chi Protocol is a partially algorithmic stablecoin system on Ethereum. It issues the CHI stablecoin, which is backed by a combination of collateral assets and algorithmic mechanisms to maintain its peg. The protocol includes staking, locking, and vesting components to incentivize stability and governance participation.

### Architecture

The CHI token contract is the central asset, while StakingManager and LockingManager (both behind proxies) handle staking and locking of tokens for governance and rewards. ChiVesting manages token vesting schedules, and StEthAdapter integrates Lido's stETH as collateral, all sharing the CHI token as the common value unit.

## Contract Surface Quality

- Indexed contracts: 88; live-surface contracts included: 57 (2 live, 55 unknown).
- Excluded by liveness: 17 inactive, 14 singleton, 0 uninitialized.
- Deployment units: 0/7 live.
- Detected codebases: uniswap-v2
- Dependencies extracted: 47; unverified dependencies: 0.

## Audit Coverage Summary

- Verified implementations audited: 2/5 (40.0%)
- Verified + Unaudited implementations: 2
- Verified by bytecode match: 1
- Unverified implementations: 50
- Unique implementations: 55
- Raw deployments: 57
- Audits discovered: 1
- Scoreable audits (matched contracts): 1
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2023-12 (stale)
- Staleness: 0 fresh, 0 aging, 1 stale, 0 unknown
- Tier 1 coverage: No Tier 1 coverage
- Note: This protocol is classified as [declining]. ASD of n/a represents exposure in a protocol with declining activity.

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| ABDK | Tier 2 | 2 | 40.0% | 2023-12 |

## Contract Surface

### ✅ Verified + Audited (2)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| CHI | unknown | ethereum | n/a | [`0x3b2141...b712ba`](./contracts/ethereum-1/0x3b21418081528845a6df4e970bd2185545b712ba/) | ✅ Audited |
| USC | unknown | ethereum | n/a | [`0x38547d...3e142c`](./contracts/ethereum-1/0x38547d918b9645f2d94336b6b61aeb08053e142c/) | ✅ Audited |

### ⚠️ Verified + Unaudited (2)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| DataProvider | unknown | ethereum | n/a | 2 deployments: ethereum [`0x65c03d...cdfa37`](./contracts/ethereum-1/0x65c03de2bf69dbe955ecaaf1b3783f4133cdfa37/); ethereum `0x65f9e9...3bf5b9` | ⚠️ Unaudited |
| RewardControllerV2 | governance | ethereum | n/a | [`0x6347c0...97b064`](./contracts/ethereum-1/0x6347c0d8730780eeeb27321527eb7759d397b064/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (1)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| wstUSC | unknown | ethereum | n/a | 2 deployments: ethereum [`0x6196dc...2b58f0`](./contracts/ethereum-1/0x6196dc0d965816e34feae12fcb8c8094e72b58f0/); ethereum `0x97fdee...730ba2` | ⚠️ Unaudited (bytecode match) |

### ❓ Unverified (50)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | ethereum | n/a | `0x52e11e...ddff0b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x6b06e6...103c59` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x6b944e...84a3f5` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x6dd973...702761` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x6e46b9...b8a1ba` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x71c349...3eeb46` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x72fe0f...a8b356` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x7f6da7...8af5b6` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x8012df...92bf03` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x8329f5...8ee2c4` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x85cd28...4bb307` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x88d1ff...da8739` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x8917ac...93f2a4` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x8a911b...b9b0e0` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x8b75de...eb84bd` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x8bbe02...4c91d6` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x8c3904...335daa` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x8d0175...1fe74e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x96f325...b096b1` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x998d15...cd1134` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x9d5e27...6135c5` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x9d689d...7a050e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x9f93f4...ac6bdc` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xa4b80f...f83d4d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xa579c8...d31bfd` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xa90f87...9111dd` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xab1dca...e241c6` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xb3a362...933bd0` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xb7343a...963871` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xb9cdfa...8909a1` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xb9e08d...9d0258` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xbc2819...5597de` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xc34ac3...726cb7` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xc36303...817e2a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xcdcf3c...a866a3` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xd383a2...66437c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xd4cc67...c156f9` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xd66dab...8685e6` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xd6ec6b...18ca20` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xda8687...9d4758` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xdd0255...9fe9e0` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xdf313b...5c4900` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xdf7391...de2e83` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xe3dd17...956603` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xec6ad5...a1efe4` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xeeddeb...bce407` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xf19375...002b15` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xf40a7f...ae5668` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xf602cb...48b065` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xfb9287...e1b958` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [ABDK_Chi_ChiProtocol_v_1_0.pdf](https://github.com/abdk-consulting/audits/blob/main/chi/ABDK_Chi_ChiProtocol_v_1_0.pdf) | ABDK | Audit | 2023-12 | stale | Direct | contract_name | 2 | high |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | [`0x65c03d...cdfa37`](./contracts/ethereum-1/0x65c03de2bf69dbe955ecaaf1b3783f4133cdfa37/) | DataProvider | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x6347c0...97b064`](./contracts/ethereum-1/0x6347c0d8730780eeeb27321527eb7759d397b064/) | RewardControllerV2 | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x6196dc...2b58f0`](./contracts/ethereum-1/0x6196dc0d965816e34feae12fcb8c8094e72b58f0/) | wstUSC | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 6 |
| upstream | 2 |
| standard_library | 1 |
| needs_review | 46 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=1
- Match method counts: extraction_exact=10

Fork inheritance lineage and inherited audits are included when available.
