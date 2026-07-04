# Agentic Audit Brief: BasisOS

⚠️ Lifecycle status: DECLINING - TVL dropped 44.6% over 90 days

## Project Overview

- Project: BasisOS (`basisos`)
- Website: [https://basisos.org/](https://basisos.org/)
- Lifecycle: declining (Tier 0, 99.5% below peak)
- Generated: 2026-07-03T21:05:33.378Z
- Pipeline run: v2-pipeline-2026-07-01-3e33f2-b097
- Chains: arbitrum, base
- Contract surface: 201 unique implementations (297 raw deployments)
- DeFi Llama TVL: $24,193.58
- On-chain TVL (included contracts): $34,095.49
- TVL by chain: Base $34,095.49

## Project Description

Basis Trading. Structurally: 17 project-authored contract(s) across 2 chain(s); 1 ERC4626 vault, 2 ERC20 tokens; upgradeable via ERC1967/UUPS proxies; built on openzeppelin-upgradeable.

### Architecture

The protocol comprises 7 functional families. Its contracts share 5 common project-authored base contract(s) (proxy, ownableupgradeable, contextupgradeable). Dominant framework: openzeppelin-upgradeable.

## Contract Surface Quality

- Indexed contracts: 325; live-surface contracts included: 287 (49 live, 238 unknown).
- Excluded by liveness: 38 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 0/21 (0.0%)
- Deployed-live implementations: 21 of 201 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 0/21
- Verified + Unaudited implementations: 21
- Verified by bytecode match: 0
- Unverified implementations: 180
- Unique implementations: 201
- Raw deployments: 297
- Audits discovered: 1 (1 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): $34,095.49
- Latest audit: 2024-11 (aging)
- Audit staleness (calendar age): 0 fresh, 1 aging, 0 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage
- Note: This protocol is classified as [declining]. ASD of $34,095.49 represents exposure in a protocol with declining activity.

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (21)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| AgentToken | token | base | n/a | [`0x73cb47...37240a`](./contracts/base-8453/0x73cb479f2ccf77bad90bcda91e3987358437240a/) | ⚠️ Unaudited |
| BasisStrategy | unknown | arbitrum | n/a | 3 deployments: arbitrum [`0x0443f9...60795a`](./contracts/arbitrum-42161/0x0443f96d3a1e95278b93cac0e83fa89c0460795a/); arbitrum `0x191f85...f495a1`; arbitrum `0x80f947...8c87ce` | ⚠️ Unaudited |
| BasisStrategy | core_logic | arbitrum | n/a | 2 deployments: arbitrum [`0xab9f15...aaffe6`](./contracts/arbitrum-42161/0xab9f15715d12e6d0f250f799082412545eaaffe6/); arbitrum `0xd19daa...e44bee` | ⚠️ Unaudited |
| BeaconProxy | unknown | arbitrum | n/a | 7 deployments: arbitrum [`0x4401b9...d2c626`](./contracts/arbitrum-42161/0x4401b95febcef99343140915b5ecd95695d2c626/); arbitrum `0x705e55...5ebb00`; arbitrum `0x8b3066...0850be`; arbitrum `0xa27d2f...7e4c45`; arbitrum `0xc57be8...65c7c8`; arbitrum `0xd6e39c...441632`; arbitrum `0xd79dd1...9a4d1d` | ⚠️ Unaudited |
| BrotherSwapper | unknown | arbitrum | n/a | 2 deployments: arbitrum [`0x722780...b3afd9`](./contracts/arbitrum-42161/0x7227804a345ab8030ef85785a694e939e0b3afd9/); arbitrum `0xe2b22d...310c11` | ⚠️ Unaudited |
| CustomPriceFeed | operational_periphery | arbitrum | n/a | [`0x4dcbaa...946eba`](./contracts/arbitrum-42161/0x4dcbaac36253093a2d1fbd8e3f1026c097946eba/) | ⚠️ Unaudited |
| CustomPriceFeed | unknown | arbitrum | n/a | 2 deployments: arbitrum [`0x6576eb...98ceb1`](./contracts/arbitrum-42161/0x6576ebcfa41e019d563802a7194eefc92f98ceb1/); arbitrum `0x97ff3e...a78f86` | ⚠️ Unaudited |
| CustomPriceFeed | operational_periphery | arbitrum | n/a | [`0xdc4ec1...ab8c9e`](./contracts/arbitrum-42161/0xdc4ec101818e31e26dde776c008f69299aab8c9e/) | ⚠️ Unaudited |
| CustomPriceFeed | operational_periphery | arbitrum | n/a | [`0xeb1685...9091c9`](./contracts/arbitrum-42161/0xeb16850f16a9cb224bfd9aa6020ca3c3c09091c9/) | ⚠️ Unaudited |
| LlamaTvlAdapter | adapter | arbitrum | n/a | [`0xdd5c8a...24df97`](./contracts/arbitrum-42161/0xdd5c8ab2e9f113b397ff2b8528c649baef24df97/) | ⚠️ Unaudited |
| LogarithmVault | unknown | arbitrum | n/a | 7 deployments: arbitrum [`0x059270...d596b6`](./contracts/arbitrum-42161/0x0592700f01f3ad1c17f7d1bb4fec8aad19d596b6/); arbitrum `0x23f685...5da555`; arbitrum `0x3c6c0c...2237b8`; arbitrum `0x7248c9...26c879`; arbitrum `0x72ca10...c5a2e2`; arbitrum `0x79f76e...6bbeda`; arbitrum `0xe5fc57...519659` | ⚠️ Unaudited |
| LogarithmVault | core_logic | arbitrum | n/a | 3 deployments: arbitrum [`0x27261c...09ecd5`](./contracts/arbitrum-42161/0x27261c12eacc6684a23832b06cb3fdc31d09ecd5/); arbitrum `0x4e8ba8...6dc22b`; arbitrum `0xa71fcf...2df968` | ⚠️ Unaudited |
| LogarithmVault | unknown | arbitrum | n/a | 3 deployments: arbitrum [`0x3c435c...7fe884`](./contracts/arbitrum-42161/0x3c435c69fa9af7aa9674bc360c765651557fe884/); arbitrum `0x550f5d...ab42db`; arbitrum `0x803ed5...4f2ba1` | ⚠️ Unaudited |
| OffChainPositionManager | unknown | arbitrum | n/a | 7 deployments: arbitrum [`0x105755...83c535`](./contracts/arbitrum-42161/0x105755108a8dfcd90c5a0de597bb3a8bce83c535/); arbitrum `0x47ef0f...facc45`; arbitrum `0x4d79db...984204`; arbitrum `0x7ca37a...25eb4f`; arbitrum `0x97d012...f10cf5`; arbitrum `0xdae9b0...46b7af`; arbitrum `0xeda462...f12d86` | ⚠️ Unaudited |
| OffChainPositionManager | governance | arbitrum | n/a | [`0x23050c...01b48e`](./contracts/arbitrum-42161/0x23050c5e3066b4cd77253a4665c67f2c0701b48e/) | ⚠️ Unaudited |
| OffChainPositionManager | unknown | arbitrum | n/a | 3 deployments: arbitrum [`0x255192...440be4`](./contracts/arbitrum-42161/0x2551927db13c58eb0c551843d45feecb96440be4/); arbitrum `0x6ecafe...1ed04c`; arbitrum `0xba4e53...387165` | ⚠️ Unaudited |
| SpotManager | unknown | arbitrum | n/a | 4 deployments: arbitrum [`0x28d21b...0c5201`](./contracts/arbitrum-42161/0x28d21b1b23440dec140d74f569a0aeb98b0c5201/); arbitrum `0x30ed7e...71dc7e`; arbitrum `0x473100...90eafb`; arbitrum `0x8984bb...a3e3e7` | ⚠️ Unaudited |
| SpotManager | governance | arbitrum | n/a | [`0x5834ce...a39d46`](./contracts/arbitrum-42161/0x5834cee2689919db003063a0c683fa83d8a39d46/) | ⚠️ Unaudited |
| SpotManager | unknown | arbitrum | n/a | 3 deployments: arbitrum [`0x6c8684...43272b`](./contracts/arbitrum-42161/0x6c86843f9341221ba1ca118f0cd16eeef643272b/); arbitrum `0xabe9b6...5297c8`; arbitrum `0xd2e090...845054` | ⚠️ Unaudited |
| XSpotManager | unknown | arbitrum | n/a | 5 deployments: arbitrum [`0x3981ce...2a0748`](./contracts/arbitrum-42161/0x3981cedd1001a847848acdd616eeb7f68f2a0748/); arbitrum `0x5ece9f...99b455`; arbitrum `0x7123d4...205450`; arbitrum `0x761a6e...1f913f`; arbitrum `0xac4dd4...fe730b` | ⚠️ Unaudited |
| XSpotManager | unknown | arbitrum | n/a | 2 deployments: arbitrum [`0xc66fd9...c4adf8`](./contracts/arbitrum-42161/0xc66fd949e2d19550138d778ef38d032188c4adf8/); arbitrum `0xd6f58e...d9e958` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (180)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| Proxy (impl: 0x17eaadc22316628f48c8c56cc4b053cc907afe4f) | unknown | arbitrum | n/a | `0x93b20c...ed5457` | ❓ Unverified |
| Proxy (impl: 0x36419f10439371a0465aaf48cf922b3e0148a69f) | unknown | arbitrum | n/a | 2 deployments: arbitrum `0x0db51e...5f60aa`; arbitrum `0x36419f...48a69f` | ❓ Unverified |
| Proxy (impl: 0x3f134f6f05484926fc51b33d1e230fc6038e9eb9) | unknown | arbitrum | n/a | 2 deployments: arbitrum `0x232ae6...b1fa7a`; arbitrum `0x3f134f...8e9eb9` | ❓ Unverified |
| Proxy (impl: 0x7770c98201dd6d2312629941ead46f9021719b03) | unknown | arbitrum | n/a | 3 deployments: arbitrum `0x5b76bd...d7ce14`; arbitrum `0x7770c9...719b03`; arbitrum `0xbcdbff...55b806` | ❓ Unverified |
| Proxy (impl: 0x88544643603646772a126d0d843bfb137cd3d2c2) | unknown | arbitrum | n/a | 3 deployments: arbitrum `0x3a614e...4ea074`; arbitrum `0x885446...d3d2c2`; arbitrum `0xc01608...423208` | ❓ Unverified |
| Proxy (impl: 0x896999bc2fecfd39066d5b3c496571b549b8ee04) | unknown | arbitrum | n/a | 2 deployments: arbitrum `0x27bfc4...8092ee`; arbitrum `0x896999...b8ee04` | ❓ Unverified |
| Proxy (impl: 0x8b0ca0885c07d16703e33b8c34f3e42c00c052ea) | unknown | arbitrum | n/a | 2 deployments: arbitrum `0x3aa745...70f788`; arbitrum `0x8b0ca0...c052ea` | ❓ Unverified |
| Proxy (impl: 0x8b651e4295806a2d15ebfa4e3efd6e5c46660ae1) | unknown | arbitrum | n/a | 3 deployments: arbitrum `0x881ada...0d4de1`; arbitrum `0x8b651e...660ae1`; arbitrum `0xc14da3...3d3b24` | ❓ Unverified |
| Proxy (impl: 0x8b788279a9d90a76c274ffeb110bfbc5fa5c7678) | unknown | arbitrum | n/a | 2 deployments: arbitrum `0x51dc6b...14ec77`; arbitrum `0x8b7882...5c7678` | ❓ Unverified |
| Proxy (impl: 0x91e31839c4b304f9e010614f49a23f9c0fe03a55) | unknown | arbitrum | n/a | 2 deployments: arbitrum `0x26ad95...7e08c9`; arbitrum `0x91e318...e03a55` | ❓ Unverified |
| Proxy (impl: 0x93f1019571bc11d885f2b8e4794e76db0f1ac91d) | unknown | arbitrum | n/a | 2 deployments: arbitrum `0x2cc156...e30514`; arbitrum `0x93f101...1ac91d` | ❓ Unverified |
| Proxy (impl: 0x9b2a5e2cbaabe0aa7518c667359d4587de8167e2) | unknown | arbitrum | n/a | 4 deployments: arbitrum `0x1231fa...3ae735`; arbitrum `0x8bdb3e...60f587`; arbitrum `0x9b2a5e...8167e2`; arbitrum `0xcef3d7...1051a0` | ❓ Unverified |
| Proxy (impl: 0xaa92ef35f866f0ede56cbd73331f9808eb71c8b8) | unknown | arbitrum | n/a | 2 deployments: arbitrum `0x8baab9...a9a24f`; arbitrum `0xaa92ef...71c8b8` | ❓ Unverified |
| Proxy (impl: 0xaeb876858b377abd4c8653160fb5d76a3f282ed8) | unknown | arbitrum | n/a | 2 deployments: arbitrum `0xa05833...e5109c`; arbitrum `0xaeb876...282ed8` | ❓ Unverified |
| Proxy (impl: 0xaf862a4599432d91c8d33927125cd7094f73bfca) | unknown | arbitrum | n/a | 2 deployments: arbitrum `0x75032e...321ed1`; arbitrum `0xaf862a...73bfca` | ❓ Unverified |
| Proxy (impl: 0xb3eae416802e218e49378cec948a95b88d26d9b1) | unknown | arbitrum | n/a | 2 deployments: arbitrum `0x8f63fe...32686b`; arbitrum `0xb3eae4...26d9b1` | ❓ Unverified |
| Proxy (impl: 0xcda9fc2dc00ed41380a434e2ea9b8b7a6adac154) | unknown | arbitrum | n/a | 2 deployments: arbitrum `0x541a39...d4fc89`; arbitrum `0xcda9fc...dac154` | ❓ Unverified |
| Proxy (impl: 0xd1c7f8ceb3a643c90548ea133db38cc6ddfceb96) | unknown | arbitrum | n/a | 2 deployments: arbitrum `0x5fd836...a06530`; arbitrum `0xd1c7f8...fceb96` | ❓ Unverified |
| Proxy (impl: 0xd1e394ef58479bfd357e3c3a7b15bc5728d061cf) | unknown | arbitrum | n/a | 3 deployments: arbitrum `0x1ec52d...4e700f`; arbitrum `0x97e207...fe45bc`; arbitrum `0xd1e394...d061cf` | ❓ Unverified |
| Proxy (impl: 0xdd24d5192018edfea9b2b105eb8fc831c71c8096) | unknown | arbitrum | n/a | 5 deployments: arbitrum `0x15c6a4...9b2fbd`; arbitrum `0x6e7799...c989ee`; arbitrum `0x8bbc58...dd7326`; arbitrum `0xdd24d5...1c8096`; arbitrum `0xde56f3...4d7d93` | ❓ Unverified |
| Proxy (impl: 0xe12502dbe2617e2aa31d32e8e3e88471b1a82492) | unknown | arbitrum | n/a | 2 deployments: arbitrum `0x372b06...ae725b`; arbitrum `0xe12502...a82492` | ❓ Unverified |
| Proxy (impl: 0xe76c36f32bcf1b3c972dfd6f72ee284eb67b8564) | unknown | arbitrum | n/a | 2 deployments: arbitrum `0x7f9266...ef3a79`; arbitrum `0xe76c36...7b8564` | ❓ Unverified |
| Proxy (impl: 0xe7cf980dca976d1b74084ba6277cc6227d681420) | unknown | arbitrum | n/a | 3 deployments: arbitrum `0x01b407...10ffeb`; arbitrum `0xe5227e...a08a74`; arbitrum `0xe7cf98...681420` | ❓ Unverified |
| Proxy (impl: 0xf7a2080311493c51e712f58786742d0220ea4b05) | unknown | arbitrum | n/a | 2 deployments: arbitrum `0xc69c6a...3b0740`; arbitrum `0xf7a208...ea4b05` | ❓ Unverified |
| Proxy (impl: 0xf86f0605b1e54eae3ddac726800a65506d135fd9) | unknown | arbitrum | n/a | 2 deployments: arbitrum `0x79bd58...c2d53b`; arbitrum `0xf86f06...135fd9` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | 3 deployments: arbitrum `0x026004...cda2c4`; arbitrum `0x2f1aac...7dc9d5`; arbitrum `0x6c4723...766554` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | 2 deployments: arbitrum `0x03a89f...3ae335`; arbitrum `0xaeaa44...2b47d1` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | 2 deployments: arbitrum `0x057659...a99516`; arbitrum `0x424b0a...ac180c` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x07c289...6da9a7` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x089b82...216b02` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x090a89...1c05e7` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | 2 deployments: arbitrum `0x09cc7b...ee07a6`; arbitrum `0xf1accc...071443` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x10f4bb...e157bf` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x112040...829726` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x16693c...94da17` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | 2 deployments: arbitrum `0x1749ae...9fb732`; arbitrum `0x4050c5...e3ea6a` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x19dd9f...64f929` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x1aba73...b26ba8` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | 2 deployments: arbitrum `0x1d1eb2...3bd86d`; arbitrum `0xaff8aa...0f401a` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x1dc658...bb3dba` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | 2 deployments: arbitrum `0x22649d...248b6e`; arbitrum `0x536c58...56d805` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x22f494...0ce7b4` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x23a21f...67940f` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x242696...903f61` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x248105...567e7d` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x25080b...29e9dd` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x25c107...bf7ec8` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x26e647...a165d6` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x28f21b...b97603` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x2c18b8...ac0ebe` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x2dfbf6...320acd` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x2e739e...1ebfff` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | 2 deployments: arbitrum `0x2f23a5...dfc051`; arbitrum `0xec48d9...f5add9` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x32cf01...939901` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | 2 deployments: arbitrum `0x32f10d...edf063`; arbitrum `0x554f54...30d1e0` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x3463fd...877120` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | 2 deployments: arbitrum `0x36989a...385f0a`; arbitrum `0x9bd204...08f787` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x378731...725069` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x37c229...649ded` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x39d285...c7f7c2` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x39f265...16a4c2` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x3d019e...5b5bbe` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | 2 deployments: arbitrum `0x3f216a...36abc3`; arbitrum `0xa8f739...d3ba9e` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x433226...0b31d4` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x4438ed...44cdbf` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x461366...62769a` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x4692c9...d9f506` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x472e74...445753` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x483f29...0000a5` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x4908d6...6566f0` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x4b443a...efa8ab` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x4bbad6...deb559` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x5525fd...5f2e72` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x57cb99...03a9d6` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x58de9c...bfb61b` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x59a5eb...f9160a` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x5db1c2...34c3a9` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x5fd515...5831f9` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x60d782...6ce480` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | 2 deployments: arbitrum `0x6135c5...be265a`; arbitrum `0xacdaf2...b44063` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x631491...5b49ac` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x63a6a8...5e43b7` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | 2 deployments: arbitrum `0x6456fc...a3e8a2`; arbitrum `0xefb997...a906b9` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x6723af...46bd1f` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | 2 deployments: arbitrum `0x6724e9...35bfde`; arbitrum `0xb75898...d49b2a` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | 2 deployments: arbitrum `0x695ed3...0b955e`; arbitrum `0xe9f183...633d5b` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x696e96...c01646` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x6decb9...847391` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x6ea4f0...2a8e1b` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x73de28...3c48f9` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | 2 deployments: arbitrum `0x742392...c77464`; arbitrum `0x8a2604...d3d179` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | 2 deployments: arbitrum `0x742edc...6f9e0c`; arbitrum `0xa65926...df4aed` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x755144...a10345` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x75f0ab...ded760` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x760a20...1bbb58` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x775fae...02800d` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x779991...a953a5` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x799aea...a64554` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | 2 deployments: arbitrum `0x79b093...e0ff55`; arbitrum `0x949c99...c3fb70` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x79b5bb...d6a424` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x79b8a0...2e66d3` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x7bd924...615916` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | 2 deployments: arbitrum `0x7be33e...75f171`; arbitrum `0x9ffea3...9c37ea` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x7c1d69...c208fe` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x7c2906...535a0a` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x7cfa2b...f25b6a` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x7eedf6...54630d` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x816b8b...4bffdf` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x817a42...cfa8b9` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x8283e8...57b5cc` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x83e73c...a61fe8` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x892628...bed8d6` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x898e3f...72548e` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x898fe6...9f9085` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x8aa429...178f7f` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x8b85e5...c579ae` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x8d6ce0...d6e836` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x8dacac...f492f9` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x8dec31...95ab5f` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x8fc78e...9c3f91` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x907102...c5059a` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | 2 deployments: arbitrum `0x939a5a...4237e1`; arbitrum `0xee34c2...007483` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x93f75f...877476` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x940628...3e8ae8` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x95613c...c90490` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | 2 deployments: arbitrum `0x957987...8a6455`; arbitrum `0xfa8efe...9286d1` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x9f5c4f...d7fde9` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xa4749a...20f463` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xa9b3f3...7a5a5e` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xaa93db...986801` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xab4e75...9ce159` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xae309d...9b4c1a` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xb03b94...7716d7` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xb075a4...bc6176` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xb396f6...b8d586` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xb47d2d...d73b32` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xb7eed6...bbabaf` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xb8b007...32bc43` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xb97ba2...c37fef` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xba6ea5...3aa122` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xbaffac...c987ae` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xbb7eae...f35cf6` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xbd9699...f95290` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xbf399c...cb791e` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xc5254d...7dc709` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | 2 deployments: arbitrum `0xc7a1bb...469ab0`; arbitrum `0xfc56b9...bcff3b` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xc800d4...7a1bd9` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xc825c4...9a1f2c` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xc8e802...55df2a` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xc96033...fcafb1` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xca097e...3688d6` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xcb022c...5c07af` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xd060cb...2ad111` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xd22ec1...b05091` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xd6b1f0...c36d47` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xd99e2f...04a21d` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xd9d59a...7f8b21` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xddb66f...66d228` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xde9cf6...0d1863` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xe2d3eb...df4733` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xe3400c...d89e34` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xe414be...e322ae` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xe47e0a...273d2d` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xe57170...0229ed` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xe83c11...e93ba4` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xe85e87...8156f0` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xe8b06e...d9454f` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xe9771b...729108` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xe99827...594a56` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xeb1396...a8cc77` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xed6c7f...9f3fe0` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xed99e4...486408` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xee9a00...1d0dde` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xf2b268...cf212c` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xf3cfe4...a5e7cd` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xf885d9...453813` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xf9b33e...a0d9eb` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xfacd90...c04e7d` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xfc1e8f...83b6e6` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xfcad4b...9b5073` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [BasisOS-nov-24(Final).pdf](https://github.com/Hexens/Smart-Contract-Review-Public-Reports/blob/main/BasisOS-nov-24(Final).pdf) | unknown | Audit | 2024-11 | aging | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| base | [`0x73cb47...37240a`](./contracts/base-8453/0x73cb479f2ccf77bad90bcda91e3987358437240a/) | AgentToken | token | $34,095.49 | Verified native implementation with $34,095.49 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0xab9f15...aaffe6`](./contracts/arbitrum-42161/0xab9f15715d12e6d0f250f799082412545eaaffe6/) | BasisStrategy | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x4dcbaa...946eba`](./contracts/arbitrum-42161/0x4dcbaac36253093a2d1fbd8e3f1026c097946eba/) | CustomPriceFeed | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0xdc4ec1...ab8c9e`](./contracts/arbitrum-42161/0xdc4ec101818e31e26dde776c008f69299aab8c9e/) | CustomPriceFeed | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0xeb1685...9091c9`](./contracts/arbitrum-42161/0xeb16850f16a9cb224bfd9aa6020ca3c3c09091c9/) | CustomPriceFeed | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x27261c...09ecd5`](./contracts/arbitrum-42161/0x27261c12eacc6684a23832b06cb3fdc31d09ecd5/) | LogarithmVault | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x23050c...01b48e`](./contracts/arbitrum-42161/0x23050c5e3066b4cd77253a4665c67f2c0701b48e/) | OffChainPositionManager | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x5834ce...a39d46`](./contracts/arbitrum-42161/0x5834cee2689919db003063a0c683fa83d8a39d46/) | SpotManager | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 13 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 188 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Zero-match audit list:

- [12743] BasisOS-nov-24(Final).pdf

Fork inheritance lineage and inherited audits are included when available.
