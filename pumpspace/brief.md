# Agentic Audit Brief: PumpSpace

## Project Overview

- Project: PumpSpace (`pumpspace`)
- Website: [https://pumpspace.io/](https://pumpspace.io/)
- Lifecycle: active (Tier 0, TVL trajectory)
- Generated: 2026-06-18T04:14:48.449Z
- Pipeline run: v2-pipeline-2026-06-18-32b207-bcf3
- Chains: avalanche
- Contract surface: 365 unique implementations (432 raw deployments)
- DeFi Llama TVL: $3,329,801.00
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

PumpSpace is an Avalanche-based memecoin and community-token liquidity platform supporting token swaps, liquidity provision, PumpSpace V2 and V3/Trident AMM-style markets, multi-token farms, and yield optimization. The live TVL-bearing product family should be identified as PumpSpace V2 where applicable; PumpSpace V3 should be treated as present in metadata but not assumed to have current DefiLlama TVL without independent supporting evidence.

### Architecture

PumpSpace V3 appears to be an evolution of the original PumpSpace, sharing the same deployer cluster and proxy patterns. Both families rely on a common set of proxy implementations (e.g., ERC1967Proxy, TransparentUpgradeableProxy) for upgradeability, indicating shared infrastructure.

## Contract Surface Quality

- Indexed contracts: 798; live-surface contracts included: 432 (430 live, 2 unknown).
- Excluded by liveness: 201 inactive, 165 singleton, 0 uninitialized.
- Deployment units: 0/68 live.
- Detected codebases: uniswap-v2
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Verified implementations audited: 2/5 (40.0%)
- Verified + Unaudited implementations: 3
- Verified by bytecode match: 0
- Unverified implementations: 360
- Unique implementations: 365
- Raw deployments: 432
- Audits discovered: 3
- Scoreable audits (matched contracts): 2
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2025-01 (aging)
- Staleness: 0 fresh, 3 aging, 0 stale, 0 unknown
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| Cyberscope | Tier 2 | 2 | 40.0% | 2025-01 |

## Contract Surface

### ✅ Verified + Audited (2)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| DexRouter | adapter | avalanche | n/a | [`0xe8a55f...a59946`](./contracts/avalanche-43114/0xe8a55f6b4ee94d2dbe02e724bc23228e15a59946/) | ✅ Audited |
| TransparentUpgradeableProxy | proxy | avalanche | n/a | 67 deployments: avalanche [`0x0091eb...efe2e8`](./contracts/avalanche-43114/0x0091eb7bd9b40d258695335bebf07f4d31efe2e8/); avalanche `0x0567ea...2e61d9`; avalanche `0x05c36f...14f9a9`; avalanche `0x0655fa...c46f6a`; avalanche `0x08ea82...18a999`; avalanche `0x0ceca8...f97e7c`; avalanche `0x170af5...fa0cf1`; avalanche `0x1bc3b0...cef890`; avalanche `0x1c654e...19128d`; avalanche `0x1cb5af...2f7762`; avalanche `0x1cf028...f2d30d`; avalanche `0x20d6cc...25471f`; avalanche `0x264f4f...48966d`; avalanche `0x2b0771...f95ac0`; avalanche `0x2b20f3...3c6a78`; avalanche `0x33f436...74ef65`; avalanche `0x36206c...9b38c8`; avalanche `0x38554e...dbb0dc`; avalanche `0x388983...cd0aca`; avalanche `0x3d04c0...a2fa41`; avalanche `0x40b937...1e6e4e`; avalanche `0x4731bc...711d8d`; avalanche `0x53cb24...bc88d7`; avalanche `0x53ee88...b640ba`; avalanche `0x558ff3...3dca38`; avalanche `0x567a6d...c37205`; avalanche `0x56d6cd...2128dd`; avalanche `0x5f4038...e7798e`; avalanche `0x65ba62...cef275`; avalanche `0x68e315...163136`; avalanche `0x6f0885...7811bf`; avalanche `0x703079...09fc31`; avalanche `0x72a992...514018`; avalanche `0x77c8df...4f474f`; avalanche `0x7c12fc...4d046c`; avalanche `0x83fff7...021a73`; avalanche `0x89aee1...f05dad`; avalanche `0x8a23e3...e321bf`; avalanche `0x8f164d...76be5c`; avalanche `0x9070fb...55e55e`; avalanche `0x95207b...f550cf`; avalanche `0x9c6bbe...7e1b2f`; avalanche `0xa84304...0547ba`; avalanche `0xa90f84...8078e8`; avalanche `0xaf52c1...838de2`; avalanche `0xb56ef6...660c48`; avalanche `0xb6e2f9...ebfda8`; avalanche `0xb8c9d8...849657`; avalanche `0xbba343...960acf`; avalanche `0xbce94b...050961`; avalanche `0xc13e4d...5de4b3`; avalanche `0xc1ecba...146bfd`; avalanche `0xc7a901...8aa357`; avalanche `0xc91c9f...d3a04e`; avalanche `0xd4ed16...5332ce`; avalanche `0xd6d1dc...0dd368`; avalanche `0xd6f5fe...2ddfb0`; avalanche `0xdcf100...587dfc`; avalanche `0xdf724b...34e3e5`; avalanche `0xe64bcb...201a27`; avalanche `0xe88ab8...b9b0b1`; avalanche `0xebe319...c0e78f`; avalanche `0xee27a3...598068`; avalanche `0xfbff2e...f86d30`; avalanche `0xfc320c...8276fd`; avalanche `0xfddb02...90f7a4`; avalanche `0xfea23d...e2dc52` | ✅ Audited |

### ⚠️ Verified + Unaudited (3)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| ProxyAdmin | governance | avalanche | n/a | 2 deployments: avalanche [`0x2116ac...82ce66`](./contracts/avalanche-43114/0x2116ac862bc0a5b7b01cf1dd92f6fe127d82ce66/); avalanche `0xdce8c2...d00214` | ⚠️ Unaudited |
| PumpSpecialRouter | adapter | avalanche | n/a | [`0x4ec533...8390e2`](./contracts/avalanche-43114/0x4ec53317186098956956ae9a7092853e218390e2/) | ⚠️ Unaudited |
| PumpSplitRouter | adapter | avalanche | n/a | [`0x27d8d5...a553ba`](./contracts/avalanche-43114/0x27d8d5d536581daaf743abaf339f4658e9a553ba/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (360)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | avalanche | n/a | `0x0086e2...210f85` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x00a194...1b608c` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x022f2b...6d06de` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x02a2b2...70e01d` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x02a9d3...4cd6a5` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x03868a...5e2e62` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x04b7b6...ce758f` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x06667b...d4a0e4` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x06f227...30a18c` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x0771e7...54f8af` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x07df97...ca336e` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x084283...c5e84a` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x08c4b5...20e447` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x093859...313f1a` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x09d116...5c558e` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x0a31f5...95d4d4` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x0a5a62...83331e` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x0c42f7...0f8cc2` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x0c81c0...bfce1b` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x0cd21d...356609` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x0cfeae...2e4cc8` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x0d3638...bc1063` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x0d7781...9d8ba7` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x0e3d14...9c724c` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x0f656b...2fed89` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x0f969e...7e88a9` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x10f8a0...9e7061` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x110092...5efe50` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x11f41a...cecfda` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x13e732...a0d3ee` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x160116...bd60f2` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x162c79...cb6c01` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x16b926...901886` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x172dad...fc9655` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x18d773...4cd439` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x18f500...97a769` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x198763...24ef01` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x19e9eb...3d2f32` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x1ab8b6...6be9fc` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x1b4392...be8b07` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x1bb992...749ad2` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x1bf7b8...ffd2d5` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x1de4b8...dd44f3` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x1ea538...7cff85` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x1f7d74...b53a5e` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x1fdc90...c71086` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x201408...23afec` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x2071a5...2e7ebc` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x20d037...86f841` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x21f6b1...349ec4` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x220966...ebcfd2` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x22351f...0159be` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x2270d6...da0be3` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x235727...3d1e58` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x23a179...10e948` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x253d59...02d0e9` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x25c0d5...69c751` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x25e8b9...bd7bd4` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x26b42c...4d4616` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x273eb3...69ffa0` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x2792cf...a35a42` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x29ab40...b10eaf` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x29dc03...404e35` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x2a7bc0...bb5da6` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x2d2120...d12338` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x2d3651...3bbd23` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x2d8f40...52ef9d` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x2e0e4c...c0dc16` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x2f332a...0a3974` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x2fc55f...0caa0e` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x30a7c4...76f198` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x30fc3b...df5897` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x317e2f...754ef0` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x352bb3...b47e14` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x3590aa...c2790d` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x3a81c2...f68b52` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x3b7f15...bd64b4` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x3ea03c...4eaac3` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x3ffc8c...3b7722` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x41151d...65757a` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x41e4f4...e6434d` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x42a4f9...70b934` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x42e82e...107935` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x452e8e...187121` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x452f56...3765c2` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x4791c0...7f2354` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x479c19...9181a4` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x485d3c...7e6a3b` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x488eb2...583a1f` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x4a06cb...8c06d9` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x4a321a...56cd63` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x4a3a3c...dce09b` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x4b5d52...fac955` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x4baa3b...61001a` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x4c0197...54b342` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x4c09af...2b19ea` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x4cc75f...5f47cd` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x4cdef4...12ac07` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x4cedac...a86c3b` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x4dd3cf...fde825` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x4e4603...c95351` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x4e898e...159e73` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x4ed0a7...a34270` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x503bea...644f53` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x50aaf0...cb6681` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x516320...cd9be0` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x539ed1...72b31d` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x53c4c1...c6f872` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x5413b3...b9a40e` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x554b6f...ab2863` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x559e0a...7ba135` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x55e7a8...fe817d` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x56067c...30acb2` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x563ffb...6d287d` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x56dc8b...7ee086` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x574316...4eafc5` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x580e92...16e301` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x58a36a...6b22b0` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x5a356f...f209e8` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x5b2ed6...e2625c` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x5bd4ec...b905ea` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x5d0b6f...388b11` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x5d11b5...71fa7d` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x5d6d98...f04bff` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x5dea10...f9e238` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x5df2f2...5b26c7` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x5f533a...6f4abc` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x5f7eea...e55922` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x5fae78...2f263c` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x5fe726...981086` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x60ae52...2baa82` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x60eb75...987602` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x61201f...2d57bc` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x616adf...030a08` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x61a447...c22405` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x6214d1...d82170` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x62afaa...5f1205` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x633888...41b66c` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x63e926...48e104` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x651bcd...a8d7e2` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x652607...5ec08f` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x65757e...5d9583` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x678ce6...b26983` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x68b3c8...f17811` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x692e8a...1423a2` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x6940e4...47445b` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x69442d...3da164` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x6984f1...de2461` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x6a69db...b97a60` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x6ac2ae...a4ec43` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x6b3ea9...7696e1` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x6b97e8...301dbe` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x6c9606...b660f7` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x6dbb1c...dfae81` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x6dc69e...9ab7a2` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x6e2e8f...8dccfb` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x6e4b74...a79d1b` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x6e4d31...f76859` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x6f0b7f...05f32b` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x725679...0d4a19` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x73742e...436860` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x743c78...58fbc9` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x756e4e...0a8d41` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x75f238...25f8b2` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x7759de...dc58de` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x779006...b8f6c9` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x785c7d...b004d4` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x787a5a...073ca2` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x78c857...117c42` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x7911e6...d999bc` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x79c4c5...11c966` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x7a2d9e...364a97` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x7bf8ec...6d74fa` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x7c842e...e1bde0` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x7ccc51...31204b` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x7d3273...c32a64` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x80aaae...aa48ef` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x80f96e...e23040` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x829de3...4edb94` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x82bb0c...1def3c` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x8407f7...b6eeaf` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x84f022...608b3f` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x8556bf...dac725` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x85b3d8...2e1364` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x85f370...76a5af` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x867203...fda002` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x86875f...866da1` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x883fca...5bac74` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x8a0cce...5ce372` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x8a930e...427c4c` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x8ad90c...7a687a` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x8c7039...5b3188` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x8ca8a1...7814da` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x8d0d83...5dcf65` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x8d18f9...af92ab` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x8e3260...d0e5ad` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x8e753f...f37491` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x8fa479...7f68db` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x8fcbdf...b7a829` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x90633f...b66168` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x90dc4f...ca59d1` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x90de38...4a1a5a` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x914340...162721` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x929f35...7ab777` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x93960d...64446a` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x93a723...48a762` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x93ed12...e77c02` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x94405c...b5f6b0` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x96e9e8...500036` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x97dffc...1e453d` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x9a78fb...072dbd` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x9ac77f...d36c25` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x9bc773...dcd68d` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x9de382...57e7d8` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x9df6e4...d1e7e0` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x9e2380...82122c` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xa0b8b1...189310` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xa0c3b1...9435f9` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xa1235e...fa1698` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xa16aa5...d65b8c` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xa1aba1...cee33b` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xa24abd...b53d93` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xa4595b...427b25` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xa4bd6b...1c126c` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xa4eeed...61ec2c` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xa54e15...43ba00` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xa602f2...714c61` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xa6b808...eaab5e` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xa6eae1...4bac1c` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xa778b9...861892` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xa85825...43c641` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xa914a5...112806` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xa91f3d...ce74a4` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xa9c19f...587061` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xab4fba...f84024` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xab6570...e4a5bb` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xad1ad7...56ad75` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xad4391...df540b` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xad4cb7...214dc6` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xadc77c...7863e8` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xaef18e...895b0f` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xaf46ab...992b21` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xaf7c36...8582b7` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xb0ff02...2dadd8` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xb11bf4...6236a9` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xb27e03...f3fab1` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xb36c40...cf7a7a` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xb46a6a...39d149` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xb489b4...ff3461` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xb4bcdd...0521f7` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xb5c852...dff798` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xb7218e...513a96` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xb79fd2...ab950c` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xb7f6fe...e62f1b` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xb828e7...6f8eeb` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xb8edd2...38a29d` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xb935fc...3c298e` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xbb2637...8a8ca3` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xbb5362...33551b` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xbb62b2...da8495` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xbd57a6...ad7566` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xc05291...59a134` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xc071dc...326e57` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xc114b5...4171c3` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xc218a4...78c744` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xc28aa1...20545f` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xc2ed33...296020` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xc2f89a...7ba804` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xc55b42...ce7aad` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xc5626a...250245` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xc7e136...b31834` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xc86846...f48b14` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xcac79f...db23fd` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xcaf3cb...8d2c15` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xcb911a...c6f00c` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xcc0e14...97211e` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xcc1101...6b305f` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xcc972a...cb96fb` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xcd9bc4...ed0c41` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xcd9eea...3fd3e4` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xcde5a1...2bd140` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xce050b...e417cf` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xd067a7...6f028c` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xd07560...95e58a` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xd086ec...3a2ca4` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xd20fe3...cc34ff` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xd2a112...af8f58` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xd335a7...0d72c1` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xd36feb...33ff51` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xd37615...190e08` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xd38e08...92f5a7` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xd47174...e82c6d` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xd4b257...53ec02` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xd5c476...f822ba` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xd64ebf...9bd907` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xd88d44...3c354e` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xd8990b...51bcdd` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xd8a0ec...e81a63` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xd98bc2...401455` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xda8580...0e1428` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xdb5ca3...d36871` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xdbc346...f66f85` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xdc852d...675ea8` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xdeca29...e2ef7e` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xe03e13...65b514` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xe070cd...695711` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xe1301b...a4f9ef` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xe212b8...e0a3b8` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xe38dc5...0bf95f` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xe579ab...e7f1b5` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xe6295c...f91f32` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xe6f764...c7d5be` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xe74150...9cbb39` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xe7b0a5...809270` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xe7b77f...5a15b4` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xe7d0fd...e319d1` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xe821fd...0d0f01` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xe8420c...b292e2` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xe90e42...e2462d` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xe94240...e3a84a` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xe994f1...4dccf1` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xe99c03...87e1ba` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xe9eb6b...11517e` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xeb8dde...19f050` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xecc7d1...37f68f` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xee2321...4c5848` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xee9f75...c1ecd8` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xef0e8c...a91ba6` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xef9bec...174dcb` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xeff1db...70d504` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xf04502...b81441` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xf0bc86...36a1a3` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xf0c193...0d1496` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xf0e0ed...06238e` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xf1680e...1c7347` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xf1e4e7...1c4319` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xf34ff8...68da78` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xf36f1c...8ea3f2` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xf3a904...564cac` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xf3d7dd...dfc9f1` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xf3f259...60c764` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xf3f8e5...b91cf0` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xf40028...5df726` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xf43bda...2f11f1` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xf55276...c58b50` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xf59c56...654ff4` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xf5d295...734cd4` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xf6444d...13e6f5` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xf79c40...862c82` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xf83022...faec5d` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xf8c743...f9e1ed` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xf97603...569138` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xf9d499...986226` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xfa33f2...093a83` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xfb6686...1488fb` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xfbdd81...1cd864` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xfc95e0...5c08db` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xfd11f8...bf82c5` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xff58ac...e2013d` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xffad3a...6cae19` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [dexAudit.pdf](https://github.com/cyberscope-io/audits/blob/main/pumpspace/dexAudit.pdf) | Cyberscope | Audit | 2025-01 | aging | Direct | contract_name | 1 | high |
| [DexAudit](https://www.cyberscope.io/audits/pumpspace?assessmentIndex=1) | Cyberscope | Audit | 2025-01 | aging | Direct | contract_name | 67 | high |
| [audit.pdf (also discovered via alternate URL)](https://github.com/cyberscope-io/audits/blob/main/pumpspace/audit.pdf) | unknown | Audit | 2025-01 | aging | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| avalanche | [`0x4ec533...8390e2`](./contracts/avalanche-43114/0x4ec53317186098956956ae9a7092853e218390e2/) | PumpSpecialRouter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x27d8d5...a553ba`](./contracts/avalanche-43114/0x27d8d5d536581daaf743abaf339f4658e9a553ba/) | PumpSplitRouter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 28 |
| upstream | 0 |
| standard_library | 2 |
| needs_review | 335 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=2
- Match method counts: extraction_exact=84

Zero-match audit list:

- [2668] audit.pdf

Fork inheritance lineage and inherited audits are included when available.
