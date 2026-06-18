# Agentic Audit Brief: Dinari

⚠️ Lifecycle status: DECLINING - TVL trajectory indicates non-active lifecycle.

## Project Overview

- Project: Dinari (`dinari`)
- Website: [https://dinari.com](https://dinari.com)
- Lifecycle: declining (Tier 0, 81.9% below peak)
- Generated: 2026-06-18T14:52:10.664Z
- Pipeline run: v2-pipeline-2026-06-18-32b207-4e21
- Chains: arbitrum, base, blast, ethereum, hyperliquid
- Contract surface: 42 unique implementations (96 raw deployments)
- DeFi Llama TVL: $10,832,284.10
- On-chain TVL (included contracts): $27,593.66
- TVL by chain: Blast $23,478.66 | Base $2,531.78 | Ethereum $1,583.22

## Project Description

Dinari is a real-world asset tokenization platform focused on dShares: 1:1-backed tokenized U.S. stocks and ETFs that provide on-chain access to public securities through Dinari's API and related issuance, trading, and redemption infrastructure. USD+ should be described separately as a Treasuries-backed stablecoin product, not as the protocol's primary purpose.

### Architecture

All contracts belong to a single product family deployed by a single deployer cluster, sharing upgradeable proxy patterns (ERC1967Proxy, BeaconProxy) and beacon-based implementations. Core contracts like OrderProcessor, UsdPlusMinter, and CCIPWaypoint interact to facilitate the full lifecycle of RWA tokens, while supporting proxies and beacons provide upgradeability and access control.

## Contract Surface Quality

- Indexed contracts: 358; live-surface contracts included: 96 (96 live, 0 unknown).
- Excluded by liveness: 154 inactive, 108 singleton, 0 uninitialized.
- Deployment units: 24/62 live.
- Detected codebases: none
- Dependencies extracted: 1; unverified dependencies: 0.

## Audit Coverage Summary

- Verified implementations audited: 5/30 (16.7%)
- Verified + Unaudited implementations: 25
- Verified by bytecode match: 0
- Unverified implementations: 12
- Unique implementations: 42
- Raw deployments: 96
- Audits discovered: 4
- Scoreable audits (matched contracts): 3
- ASD (verified + unaudited TVL): $27,593.66
- Latest audit: 2024-12 (aging)
- Staleness: 0 fresh, 2 aging, 2 stale, 0 unknown
- Tier 1 coverage: 10.0% (Sherlock)
- Note: This protocol is classified as [declining]. ASD of $27,593.66 represents exposure in a protocol with declining activity.

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| Sherlock | Tier 1 | 3 | 10.0% | 2023-08 |
| Hacken | Tier 2 | 2 | 6.7% | 2024-12 |
| Pashov Audit Group | Tier 2 | 1 | 3.3% | 2024-12 |

## Contract Surface

### ✅ Verified + Audited (5)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| DividendDistribution | unknown | base | n/a | 4 deployments: ethereum `0xec3b79...5560ce`; base [`0x4f94cb...f85fc8`](./contracts/base-8453/0x4f94cb235e88779d6a0bbc6165fb67861ef85fc8/); arbitrum `0x7e66ea...38e7fc`; blast `0xa2fc79...02e5d0` | ✅ Audited |
| OrderProcessor | unknown | ethereum | unit-37660 | [`0xa8a48c...ac79cb`](./contracts/ethereum-1/0xa8a48c202af4e73ad19513d37158a872a4ac79cb/) | ✅ Audited |
| OrderProcessor | unknown | base | unit-37669 | [`0x63ff43...e539c0`](./contracts/base-8453/0x63ff43009f9ba3584af2ddfc3d5fe2cb8ae539c0/) | ✅ Audited |
| OrderProcessor | unknown | arbitrum | unit-37705 | [`0xfa9224...e4131d`](./contracts/arbitrum-42161/0xfa922457873f750244d93679df0d810881e4131d/) | ✅ Audited |
| TransferRestrictor | unknown | blast | n/a | 4 deployments: ethereum `0x88b92c...84a701`; base `0xe1b2fe...94611e`; arbitrum `0xead337...94bbf7`; blast [`0x5b4680...b4c2f8`](./contracts/blast-81457/0x5b4680dddeba47a6e0ebb200507a357eaeb4c2f8/) | ✅ Audited |

### ⚠️ Verified + Unaudited (25)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| Vault | core_logic | ethereum | n/a | 4 deployments: ethereum [`0x232ca1...f2b839`](./contracts/ethereum-1/0x232ca17c44185ba9099417cd500d2e5e96f2b839/); base `0x714861...0e6b40`; arbitrum `0x991cb3...57e471`; blast `0x6d55e5...aec0ae` | ⚠️ Unaudited |
| BeaconProxy | registry | arbitrum | unit-37677 (35 proxies) | 35 deployments: arbitrum [`0x026fdf...7a5044`](./contracts/arbitrum-42161/0x026fdf3024953cb2e8982bc11c67d336f37a5044/); arbitrum `0x0b5ac0...070193`; arbitrum `0x0c2989...5ae6ad`; arbitrum `0x0c59f6...b1efa7`; arbitrum `0x118346...20d7ec`; arbitrum `0x14297b...2bdf8e`; arbitrum `0x182087...e7b803`; arbitrum `0x2824ef...7640c2`; arbitrum `0x2b7c64...979bff`; arbitrum `0x3619ca...356228`; arbitrum `0x36d37b...1bcf81`; arbitrum `0x3ad63b...89ecdc`; arbitrum `0x3c9f23...1ff0c4`; arbitrum `0x46b979...907fa1`; arbitrum `0x4dafff...53ce5c`; arbitrum `0x519062...39dca6`; arbitrum `0x5b6424...d90d25`; arbitrum `0x67bad4...7da43a`; arbitrum `0x769ff5...d52bdf`; arbitrum `0x77308f...9f8475`; arbitrum `0x8240af...52650b`; arbitrum `0x8e50d1...646410`; arbitrum `0x9c46e1...f6df3a`; arbitrum `0x9da913...4ed4b1`; arbitrum `0xa6f344...36b5fb`; arbitrum `0xb1284f...da5c69`; arbitrum `0xc1ba16...2b428c`; arbitrum `0xc52915...0837ab`; arbitrum `0xce38e1...d6c5a7`; arbitrum `0xd883bc...ca649e`; arbitrum `0xd8f728...7786c5`; arbitrum `0xdd92f0...c9968e`; arbitrum `0xeb0d13...090146`; arbitrum `0xf1f18f...6263fe`; arbitrum `0xf4bd09...40a9d2` | ⚠️ Unaudited |
| ERC1967Proxy | proxy | ethereum | unit-37656 | [`0x60b5e7...47c747`](./contracts/ethereum-1/0x60b5e7eecb2aee0382db86491b8cffa39347c747/) | ⚠️ Unaudited |
| ERC1967Proxy | proxy | ethereum | unit-37657 (3 proxies) | 3 deployments: ethereum [`0x63088e...4c0c25`](./contracts/ethereum-1/0x63088ebebc9aaa8f774c02e025098b97364c0c25/); ethereum `0x95b77a...a486b0`; ethereum `0x98c661...dd7dd3` | ⚠️ Unaudited |
| ERC1967Proxy | proxy | base | unit-37667 | [`0x0bfe52...05fdea`](./contracts/base-8453/0x0bfe520dccab40be814e8dc9eab9f1db6305fdea/) | ⚠️ Unaudited |
| ERC1967Proxy | proxy | base | unit-37671 | [`0x98c661...dd7dd3`](./contracts/base-8453/0x98c6616f1cc0d3e938a16200830dd55663dd7dd3/) | ⚠️ Unaudited |
| ERC1967Proxy | proxy | base | unit-37674 | [`0xbce641...93bc4d`](./contracts/base-8453/0xbce6410a175a1c9b1a25d38d7e1a900f8393bc4d/) | ⚠️ Unaudited |
| ERC1967Proxy | proxy | base | unit-37675 | [`0xbe1d52...1a02bf`](./contracts/base-8453/0xbe1d52375496f944af615ef133c24dc8fa1a02bf/) | ⚠️ Unaudited |
| ERC1967Proxy | proxy | arbitrum | unit-37691 | [`0x7e4d80...a7486b`](./contracts/arbitrum-42161/0x7e4d801e961a0db81938a29efec10d2179a7486b/) | ⚠️ Unaudited |
| ERC1967Proxy | proxy | arbitrum | unit-37698 | [`0xb4ca72...f603b8`](./contracts/arbitrum-42161/0xb4ca72ea4d072c779254269fd56093d3adf603b8/) | ⚠️ Unaudited |
| ERC1967Proxy | proxy | arbitrum | unit-37701 | [`0xd8d541...b90a44`](./contracts/arbitrum-42161/0xd8d541427ad7ce0f4c6de2b21c8a8596cbb90a44/) | ⚠️ Unaudited |
| ERC1967Proxy | proxy | arbitrum | unit-37706 | [`0xfc9051...950cfa`](./contracts/arbitrum-42161/0xfc90518d5136585ba45e34ed5e1d108bd3950cfa/) | ⚠️ Unaudited |
| ERC1967Proxy | proxy | blast | unit-37707 | [`0x6aa1bd...b3c72a`](./contracts/blast-81457/0x6aa1bda7e764bc62589e64f371a4022b80b3c72a/) | ⚠️ Unaudited |
| Forwarder | unknown | ethereum | n/a | 2 deployments: ethereum [`0xb88f1c...d31d52`](./contracts/ethereum-1/0xb88f1c2973584a413b9b8780f6563a684bd31d52/); arbitrum `0xc498e2...748cc7` | ⚠️ Unaudited |
| ForwarderPyth | unknown | blast | n/a | [`0x3aa37e...f84885`](./contracts/blast-81457/0x3aa37e6a6852a483b7f85dc193c4723cf6f84885/) | ⚠️ Unaudited |
| FulfillmentRouter | adapter | ethereum | n/a | 7 deployments: ethereum [`0x462efb...f69c84`](./contracts/ethereum-1/0x462efb6a9519f93d9613ad613842e02417f69c84/); ethereum `0xb9030e...bb4c29`; base `0x63914c...179e8e`; arbitrum `0xc69778...6be797`; arbitrum `0xe4f65f...1114e4`; blast [`0x462efb...f69c84`](./contracts/blast-81457/0x462efb6a9519f93d9613ad613842e02417f69c84/); blast `0xf83042...f6ffdc` | ⚠️ Unaudited |
| TokenLockCheck | token | arbitrum | n/a | 3 deployments: ethereum `0xc63ac7...60e712`; arbitrum [`0x57591e...316b2b`](./contracts/arbitrum-42161/0x57591e07eab6c2b3bee529586253217584316b2b/); blast `0x7e599c...b6a8fc` | ⚠️ Unaudited |
| UpgradeableBeacon | registry | ethereum | unit-37653 | [`0x4062d9...774f27`](./contracts/ethereum-1/0x4062d9cbf85da2913880a3a5641cf05e85774f27/) | ⚠️ Unaudited |
| UpgradeableBeacon | registry | ethereum | unit-37655 | [`0x5ccb54...7e6835`](./contracts/ethereum-1/0x5ccb5482dc15aadd36d6c02c0d44ce0e3e7e6835/) | ⚠️ Unaudited |
| UpgradeableBeacon | registry | base | unit-37670 | [`0x6aa1bd...b3c72a`](./contracts/base-8453/0x6aa1bda7e764bc62589e64f371a4022b80b3c72a/) | ⚠️ Unaudited |
| UpgradeableBeacon | registry | base | unit-37672 | [`0x9b3e9d...817de5`](./contracts/base-8453/0x9b3e9d3fb6849c9f0edcb2a9ebb6af83b7817de5/) | ⚠️ Unaudited |
| UpgradeableBeacon | registry | arbitrum | unit-37681 | [`0x154360...01dacb`](./contracts/arbitrum-42161/0x15436013850211acf89b656f34b426fdae01dacb/) | ⚠️ Unaudited |
| UpgradeableBeacon | registry | arbitrum | unit-37697 | [`0xad2060...3bc7f5`](./contracts/arbitrum-42161/0xad20601c7a3212c7bbf2acdfedbad99d803bc7f5/) | ⚠️ Unaudited |
| UpgradeableBeacon | registry | blast | unit-37709 | [`0x98c661...dd7dd3`](./contracts/blast-81457/0x98c6616f1cc0d3e938a16200830dd55663dd7dd3/) | ⚠️ Unaudited |
| UpgradeableBeacon | registry | blast | unit-37712 | [`0xe1b2fe...94611e`](./contracts/blast-81457/0xe1b2feede3ffe7e63a89a669a08688951c94611e/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (12)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | ethereum | n/a | `0x03d0d0...3184bd` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x91b715...1cc28e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xb6a837...3b519f` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x14297b...2bdf8e` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x5023c1...3b19bf` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xc3c70b...4a0c9e` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x25135f...b97dc7` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x4d8274...eba65e` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0x04f522...a95f6f` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0x3d8037...1419d7` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0x83f669...374472` | ❓ Unverified |
| WrappedDShare | unknown | hyperliquid | unit-37666 | `0x956875...8ae763` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [Audit_Sherlock_230811.pdf](https://assets.dinari.com/audits/Audit_Sherlock_230811.pdf) | Sherlock | Contest | 2023-08 | stale | Direct | contract_name | 3 | high |
| [Audit_Hacken_231212.pdf](https://assets.dinari.com/audits/Audit_Hacken_231212.pdf) | Hacken | Audit | 2023-12 | stale | Direct | contract_name | 7 | high |
| [Audit_Pashov_241224.pdf](https://assets.dinari.com/audits/Audit_Pashov_241224.pdf) | Pashov Audit Group | Audit | 2024-12 | aging | Direct | contract_name | 4 | high |
| [Audit_Hacken_241230.pdf](https://assets.dinari.com/audits/Audit_Hacken_241230.pdf) | Hacken | Audit | 2024-12 | aging | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | [`0x232ca1...f2b839`](./contracts/ethereum-1/0x232ca17c44185ba9099417cd500d2e5e96f2b839/) | Vault | core_logic | $27,593.66 | Verified native implementation with $27,593.66 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xb88f1c...d31d52`](./contracts/ethereum-1/0xb88f1c2973584a413b9b8780f6563a684bd31d52/) | Forwarder | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| blast | [`0x3aa37e...f84885`](./contracts/blast-81457/0x3aa37e6a6852a483b7f85dc193c4723cf6f84885/) | ForwarderPyth | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x462efb...f69c84`](./contracts/ethereum-1/0x462efb6a9519f93d9613ad613842e02417f69c84/) | FulfillmentRouter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x57591e...316b2b`](./contracts/arbitrum-42161/0x57591e07eab6c2b3bee529586253217584316b2b/) | TokenLockCheck | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 15 |
| upstream | 0 |
| standard_library | 23 |
| needs_review | 4 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=3
- Match method counts: extraction_exact=159

Zero-match audit list:

- [2052] Audit_Hacken_241230.pdf

Fork inheritance lineage and inherited audits are included when available.
