# Agentic Audit Brief: Team Finance

## Project Overview

- Project: Team Finance (`team-finance`)
- Website: [https://www.team.finance](https://www.team.finance)
- Lifecycle: active (Tier 0, 77.4% below peak)
- Generated: 2026-05-27T20:05:10.339Z
- Pipeline run: v2-pipeline-2026-05-27-de70dc-1ce2
- Chains: arbitrum, avalanche, base, blast, cronos, ethereum, fantom, kava, klaytn, mantle, polygon
- Contract surface: 66 unique implementations (119 raw deployments)
- DeFi Llama TVL: $53,004,117.17
- On-chain TVL (included contracts): $4,817.35
- TVL by chain: Ethereum $4,796.64 | Base $20.01 | Mantle $0.71

## Project Description

Team Finance is a token locker protocol that allows projects to lock their tokens for a set period, providing trust and transparency to investors. It supports multiple chains and offers features like liquidity locking and vesting schedules.

### Architecture

The protocol consists of a single product family centered around token locking. Core locking logic is implemented in LockToken contracts, which are deployed behind upgradeable proxies (AdminUpgradeabilityProxy and TransparentUpgradeableProxy) for future improvements. Supporting contracts like StakingPool and PriceEstimator provide additional functionality, while unnamed contracts likely serve as registries or adapters.

## Audit Coverage Summary

- Verified implementations audited: 0/7 (0.0%)
- Verified + Unaudited implementations: 3
- Verified by bytecode match: 4
- Unverified implementations: 59
- Unique implementations: 66
- Raw deployments: 119
- Audits discovered: 0
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): $4,817.35
- Latest audit: n/a (unknown)
- Staleness: 0 fresh, 0 aging, 0 stale, 0 unknown
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (3)

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| AdminUpgradeabilityProxy | unknown | polygon | [`0xe2fe53...1435fb`](./contracts/polygon-137/0xe2fe530c047f2d85298b07d9333c05737f1435fb/) | ⚠️ Unaudited |
| PriceEstimator | operational_periphery | polygon | [`0x5fbf0a...e5dc93`](./contracts/polygon-137/0x5fbf0a43c282272f3d5b595dc50fe9ae7be5dc93/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | proxy | mantle | 9 deployments: mantle [`0x39b9eb...0c3340`](./contracts/mantle-5000/0x39b9eb9b2be5d721d28eb40443f48cb0ad0c3340/); mantle `0xe0b0d2...f72a75`; mantle `0xf076a6...8a64cc`; base `0x80825c...b2c9fe`; base `0x950818...7a22fb`; base `0x962f07...f5c3c2`; arbitrum `0xde002f...811cdc`; arbitrum `0xf076a6...8a64cc`; avalanche `0xf8282d...d8e0e5` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (4)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| LockToken | token | ethereum | 23 deployments: ethereum [`0x13f23d...d204a6`](./contracts/ethereum-1/0x13f23dbea59e4d9009f99258d45eed9527d204a6/); ethereum `0x2a20a1...2c7d3a`; ethereum `0x48d118...248359`; ethereum `0xc77aab...878bd5`; ethereum `0xd4745c...64c675`; ethereum `0xdbf723...c6220a`; ethereum `0xe2fe53...1435fb`; polygon `0x3ef744...6e56c7`; polygon `0x586c21...9af55c`; polygon `0xc80764...028ebe`; mantle `0xbfef87...9dca3f`; mantle `0xd03450...328b14`; base `0x4f0fd5...a7c33a`; base `0xeb8bb3...ff6db6`; arbitrum `0xe0b0d2...f72a75`; avalanche `0x2cc5c6...05c1d9`; avalanche `0x88ada0...b70367`; avalanche `0x8e5595...db3020`; avalanche `0x935a45...c4b7a1`; avalanche `0xd4745c...64c675`; avalanche `0xd8ef3d...7b439a`; avalanche `0xe2fe53...1435fb`; blast `0xd98287...8c7255` | ⚠️ Unaudited (bytecode match) |
| StakingPool | proxy | blast | 7 deployments: base `0x9e9ce7...4040e6`; arbitrum `0x53a8e3...019e95`; blast [`0x327f6f...61af36`](./contracts/blast-81457/0x327f6f8868dc046f4050b0eedbcbfafd9e61af36/); blast `0x5b1c4d...73ecb7`; blast `0x624a4c...02143c`; blast `0x7efc85...e1fdac`; blast `0xdd111b...cc6485` | ⚠️ Unaudited (bytecode match) |
| ProxyAdmin | governance | base | 12 deployments: ethereum `0xdcaa5d...e29e5d`; polygon `0xdcaa5d...e29e5d`; mantle `0x7592e7...c54e1a`; mantle `0xb2240b...2ca908`; base [`0x2784d0...bd6859`](./contracts/base-8453/0x2784d0d9543b602facaedb2c35227f055dbd6859/); base `0xb1e794...573b75`; arbitrum `0x28f47d...b3c11c`; arbitrum `0xded4a1...c41e9f`; avalanche `0xaf2249...d98385`; avalanche `0xdcaa5d...e29e5d`; blast `0x89e9a9...de2e34`; blast `0x8b6582...a32872` | ⚠️ Unaudited (bytecode match) |
| TeamToken | unknown | blast | 7 deployments: polygon `0x900eec...08f3ba`; mantle `0xb377c1...20b546`; base `0x950077...175eb8`; base `0xd1de18...28bb59`; base `0xe37ef0...692c73`; arbitrum `0x446eb0...8c40b9`; blast [`0x2fec57...fcb61f`](./contracts/blast-81457/0x2fec57c84c581372f01f433bd4aba4dbaffcb61f/) | ⚠️ Unaudited (bytecode match) |

### ❓ Unverified (59)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| UnnamedContract | unknown | ethereum | `0x3ef744...6e56c7` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x62bec6...7c8b91` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x767a21...f1f5e8` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x935a45...c4b7a1` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xb8a00e...a9a5aa` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xd9ab25...00baef` | ❓ Unverified |
| UnnamedContract | unknown | cronos | `0x05b711...e7995f` | ❓ Unverified |
| UnnamedContract | unknown | cronos | `0xb6061e...1bc194` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x26029d...606ed4` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x2d1dd9...cf2898` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x3217ee...ba91e9` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x594dbb...e02b0d` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0xaf2249...d98385` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0xc6a673...3541eb` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0xccebbe...90b63e` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0xd18458...048d41` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0xd4745c...64c675` | ❓ Unverified |
| UnnamedContract | unknown | fantom | `0xc2995a...12c12d` | ❓ Unverified |
| UnnamedContract | unknown | fantom | `0xccebbe...90b63e` | ❓ Unverified |
| UnnamedContract | unknown | kava | `0xa9ec65...2502d6` | ❓ Unverified |
| UnnamedContract | unknown | mantle | `0x28f47d...b3c11c` | ❓ Unverified |
| UnnamedContract | unknown | mantle | `0x458fe9...3ee345` | ❓ Unverified |
| UnnamedContract | unknown | mantle | `0x7c58c1...54f377` | ❓ Unverified |
| UnnamedContract | unknown | klaytn | `0x070a08...a16d97` | ❓ Unverified |
| UnnamedContract | unknown | klaytn | `0x0c89c0...518820` | ❓ Unverified |
| UnnamedContract | unknown | klaytn | `0x5dd3d6...0c14b8` | ❓ Unverified |
| UnnamedContract | unknown | klaytn | `0x6c7c87...fa7cfd` | ❓ Unverified |
| UnnamedContract | unknown | klaytn | `0x7c2aa3...778934` | ❓ Unverified |
| UnnamedContract | unknown | klaytn | `0x854b4c...28a152` | ❓ Unverified |
| UnnamedContract | unknown | klaytn | `0x9b83f4...2f5abe` | ❓ Unverified |
| UnnamedContract | unknown | klaytn | `0xb5c902...cd73f7` | ❓ Unverified |
| UnnamedContract | unknown | klaytn | `0xf26194...4c2bf8` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x256c6f...b88efd` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x37e7a4...a3541f` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x9bad40...bb559b` | ❓ Unverified |
| UnnamedContract | unknown | base | `0xe8c8ab...21ac94` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x458fe9...3ee345` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x541895...9676eb` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x64b4c8...25cf4f` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x7592e7...c54e1a` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x8a7ab0...0f91d1` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x994913...ab89d1` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xbfef87...9dca3f` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xd03450...328b14` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xe5540c...30bc5d` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x38533f...493385` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x4db57b...345520` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x594dbb...e02b0d` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x62bec6...7c8b91` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x673038...26c948` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xbe28de...cc3437` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xccebbe...90b63e` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xd05367...022c90` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xf439cb...d7438f` | ❓ Unverified |
| UnnamedContract | unknown | blast | `0x1557b1...38c18b` | ❓ Unverified |
| UnnamedContract | unknown | blast | `0x6877bd...8083dd` | ❓ Unverified |
| UnnamedContract | unknown | blast | `0x6adbcd...e8fd0b` | ❓ Unverified |
| UnnamedContract | unknown | blast | `0x7e9e76...649f99` | ❓ Unverified |
| UnnamedContract | unknown | blast | `0x7f28fb...1a1482` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | [`0x13f23d...d204a6`](./contracts/ethereum-1/0x13f23dbea59e4d9009f99258d45eed9527d204a6/) | LockToken | token | $4,797.34 | Verified native implementation with $4,797.34 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| blast | [`0x327f6f...61af36`](./contracts/blast-81457/0x327f6f8868dc046f4050b0eedbcbfafd9e61af36/) | StakingPool | proxy | $20.01 | Verified native implementation with $20.01 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 17 |
| upstream | 0 |
| standard_library | 4 |
| needs_review | 45 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Fork inheritance lineage and inherited audits are included when available.
