# Agentic Audit Brief: Extra Finance

## Project Overview

- Project: Extra Finance (`extra-finance`)
- Website: [https://extrafi.io/](https://extrafi.io/)
- Lifecycle: active (Tier 0, 82.7% below peak)
- Generated: 2026-06-10T20:59:03.977Z
- Pipeline run: correction-skeletal-description-fix-all
- Chains: base, berachain, optimism
- Contract surface: 268 unique implementations (290 raw deployments)
- DeFi Llama TVL: $32,304,487.00
- On-chain TVL (included contracts): $99.99
- TVL by chain: Base $99.99

## Project Description

Extra Finance is primarily a DeFi lending and leveraged yield farming protocol deployed on Optimism and Base. It enables users to lend assets and use leverage in yield farming strategies. Berachain/Bera contracts should be treated as an additional deployment with negligible current TVL unless documentation supports otherwise; any vault products should be described as related or curated vaults rather than the primary native protocol architecture.

### Architecture

The LendingPool supplies liquidity for leveraged farming positions managed by BeraPositionManager and deployed via BeraFarmingVaultFactory. EXTRA token and VeToken govern the protocol through GnosisSafe multisigs, while vaults operate independently to optimize yields.

## Audit Coverage Summary

- Verified implementations audited: 1/19 (5.3%)
- Verified + Unaudited implementations: 16
- Verified by bytecode match: 2
- Unverified implementations: 249
- Unique implementations: 268
- Raw deployments: 290
- Audits discovered: 3
- Scoreable audits (matched contracts): 1
- Active bug bounty: Immunefi ([program](https://immunefi.com/bug-bounty/extrafinance/information))
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2024-12 (aging)
- Staleness: 0 fresh, 2 aging, 0 stale, 0 unknown
- Tier 1 coverage: 5.3% (Sherlock)

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| Sherlock | Tier 1 | 1 | 5.3% | 2024-12 |

## Contract Surface

### ✅ Verified + Audited (1)

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| LendingPool | core_logic | optimism | 3 deployments: optimism [`0xbb505c...c71cbd`](./contracts/optimism-10/0xbb505c54d71e9e599cb8435b4f0ceec05fc71cbd/); base [`0xbb505c...c71cbd`](./contracts/base-8453/0xbb505c54d71e9e599cb8435b4f0ceec05fc71cbd/); berachain [`0xbb505c...c71cbd`](./contracts/berachain-80094/0xbb505c54d71e9e599cb8435b4f0ceec05fc71cbd/) | ✅ Audited |

### ⚠️ Verified + Unaudited (16)

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| AddressRegistry | registry | optimism | 2 deployments: optimism [`0x856031...3a01d2`](./contracts/optimism-10/0x85603119c938750dfb5904f8a501b64f3f3a01d2/); base [`0x856031...3a01d2`](./contracts/base-8453/0x85603119c938750dfb5904f8a501b64f3f3a01d2/) | ⚠️ Unaudited |
| Airdrop | operational_periphery | optimism | [`0x5b4140...9556a8`](./contracts/optimism-10/0x5b414093362a7c768273d5f0405744b8c09556a8/) | ⚠️ Unaudited |
| BeraFarmingVaultFactory | registry | berachain | 2 deployments: berachain [`0x155620...25729b`](./contracts/berachain-80094/0x155620a2e6a9392c754b73296d9655061525729b/); berachain `0x6fbc69...5487b2` | ⚠️ Unaudited |
| BeraPositionManager | governance | berachain | 2 deployments: berachain [`0xf9cfb8...957055`](./contracts/berachain-80094/0xf9cfb8a62f50e10adde5aa888b44cf01c5957055/); berachain `0xf9d40a...1dc9cc` | ⚠️ Unaudited |
| EXTRA | unknown | optimism | 3 deployments: optimism [`0x2dad3a...7938f8`](./contracts/optimism-10/0x2dad3a13ef0c6366220f989157009e501e7938f8/); optimism `0x4db48b...53360b`; optimism `0xaea838...7716f0` | ⚠️ Unaudited |
| EXTRAoft | unknown | base | [`0x2dad3a...7938f8`](./contracts/base-8453/0x2dad3a13ef0c6366220f989157009e501e7938f8/) | ⚠️ Unaudited |
| EXTRAoftProxy | unknown | optimism | [`0x0c9d44...616ef4`](./contracts/optimism-10/0x0c9d44f5a573f6cfc9e8264a5ca72a1184616ef4/) | ⚠️ Unaudited |
| GnosisSafeL2 | governance | optimism | 3 deployments: optimism [`0x4059e1...927a8c`](./contracts/optimism-10/0x4059e170d325163e2ec96cf8ca489c40b6927a8c/); optimism `0x750f71...9bd40a`; optimism `0x89f088...715c83` | ⚠️ Unaudited |
| GnosisSafeProxy | governance | optimism | 3 deployments: optimism [`0x48f12d...85f703`](./contracts/optimism-10/0x48f12df639322e43ce83bb6e12bba46c8e85f703/); optimism `0x94440d...b2a38d`; optimism `0xc918a6...07babf` | ⚠️ Unaudited |
| MetaMorphoV1_1 | unknown | base | 2 deployments: base [`0x234792...753b5e`](./contracts/base-8453/0x23479229e52ab6aad312d0b03df9f33b46753b5e/); base `0x5a3209...f87a8c` | ⚠️ Unaudited |
| ProxyAdmin | governance | optimism | [`0x777a16...21be10`](./contracts/optimism-10/0x777a1665e66218fb020fb15b0b1f0ee66621be10/) | ⚠️ Unaudited |
| RewardsDistributorV2 | operational_periphery | optimism | [`0x269270...6b77b8`](./contracts/optimism-10/0x2692709313de4dc1ca15fe77a385c9eb2b6b77b8/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | proxy | optimism | 3 deployments: optimism [`0xc60e33...c38600`](./contracts/optimism-10/0xc60e33b114131e9dd577bc6bebf29c44c8c38600/); optimism `0xcb7669...bc499e`; berachain `0xc99255...2ebd50` | ⚠️ Unaudited |
| VaultFactory | registry | base | [`0x155620...25729b`](./contracts/base-8453/0x155620a2e6a9392c754b73296d9655061525729b/) | ⚠️ Unaudited |
| VeloPositionManager | governance | optimism | 2 deployments: optimism [`0xf9cfb8...957055`](./contracts/optimism-10/0xf9cfb8a62f50e10adde5aa888b44cf01c5957055/); base [`0xf9cfb8...957055`](./contracts/base-8453/0xf9cfb8a62f50e10adde5aa888b44cf01c5957055/) | ⚠️ Unaudited |
| VestingWallet | operational_periphery | optimism | 5 deployments: optimism [`0x8756d9...4fdb9c`](./contracts/optimism-10/0x8756d971a8fcede86763a67980fa161ff54fdb9c/); optimism `0x8774da...a35545`; optimism `0x8edfb6...a7f0f7`; optimism `0x94114a...7d4ec4`; optimism `0xa24c39...438ba2` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (2)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| RewardDistributor | operational_periphery | optimism | 2 deployments: optimism [`0xb7d861...1d322a`](./contracts/optimism-10/0xb7d8613728efcfbb18bcd63deec06f64441d322a/); base [`0xb7d861...1d322a`](./contracts/base-8453/0xb7d8613728efcfbb18bcd63deec06f64441d322a/) | ⚠️ Unaudited (bytecode match) |
| VeToken | token | optimism | 3 deployments: optimism [`0x292a1f...5f5e66`](./contracts/optimism-10/0x292a1f318b1ab0c7701f30f42603adc7f95f5e66/); optimism `0xe0bec4...e91466`; base `0xe0bec4...e91466` | ⚠️ Unaudited (bytecode match) |

### ❓ Unverified (249)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| UnnamedContract | unknown | optimism | `0x052a8d...7f8804` | ❓ Unverified |
| UnnamedContract | unknown | optimism | `0x0e4e71...849109` | ❓ Unverified |
| UnnamedContract | unknown | optimism | `0x0fc448...7b959b` | ❓ Unverified |
| UnnamedContract | unknown | optimism | `0x155620...25729b` | ❓ Unverified |
| UnnamedContract | unknown | optimism | `0x169133...2c4566` | ❓ Unverified |
| UnnamedContract | unknown | optimism | `0x1a97e8...1744dd` | ❓ Unverified |
| UnnamedContract | unknown | optimism | `0x1dfdac...906c98` | ❓ Unverified |
| UnnamedContract | unknown | optimism | `0x1e4273...0f1163` | ❓ Unverified |
| UnnamedContract | unknown | optimism | `0x21dfd3...875aa1` | ❓ Unverified |
| UnnamedContract | unknown | optimism | `0x263b6b...cab044` | ❓ Unverified |
| UnnamedContract | unknown | optimism | `0x292545...0fc23b` | ❓ Unverified |
| UnnamedContract | unknown | optimism | `0x2b5b65...d4707d` | ❓ Unverified |
| UnnamedContract | unknown | optimism | `0x2c58ec...1a1525` | ❓ Unverified |
| UnnamedContract | unknown | optimism | `0x2f879c...178511` | ❓ Unverified |
| UnnamedContract | unknown | optimism | `0x360b86...591b53` | ❓ Unverified |
| UnnamedContract | unknown | optimism | `0x37b25e...544cab` | ❓ Unverified |
| UnnamedContract | unknown | optimism | `0x3afcb1...ec01d5` | ❓ Unverified |
| UnnamedContract | unknown | optimism | `0x40059b...e0462d` | ❓ Unverified |
| UnnamedContract | unknown | optimism | `0x400ce8...395057` | ❓ Unverified |
| UnnamedContract | unknown | optimism | `0x47efc0...86dfef` | ❓ Unverified |
| UnnamedContract | unknown | optimism | `0x48ccc1...ac13af` | ❓ Unverified |
| UnnamedContract | unknown | optimism | `0x4b677e...7010c6` | ❓ Unverified |
| UnnamedContract | unknown | optimism | `0x4d8125...146cc3` | ❓ Unverified |
| UnnamedContract | unknown | optimism | `0x4e2b3e...2e447c` | ❓ Unverified |
| UnnamedContract | unknown | optimism | `0x4effe4...89c6ff` | ❓ Unverified |
| UnnamedContract | unknown | optimism | `0x4f4940...ee354c` | ❓ Unverified |
| UnnamedContract | unknown | optimism | `0x512c21...a07d5c` | ❓ Unverified |
| UnnamedContract | unknown | optimism | `0x5620e8...8d92db` | ❓ Unverified |
| UnnamedContract | unknown | optimism | `0x5a583c...6fb7e5` | ❓ Unverified |
| UnnamedContract | unknown | optimism | `0x5adf45...d5e99d` | ❓ Unverified |
| UnnamedContract | unknown | optimism | `0x5c6bca...ef3ad9` | ❓ Unverified |
| UnnamedContract | unknown | optimism | `0x67bb09...79313c` | ❓ Unverified |
| UnnamedContract | unknown | optimism | `0x73c3c0...d2b5bd` | ❓ Unverified |
| UnnamedContract | unknown | optimism | `0x73cf41...119199` | ❓ Unverified |
| UnnamedContract | unknown | optimism | `0x797de5...40f5a3` | ❓ Unverified |
| UnnamedContract | unknown | optimism | `0x7fd13c...40766f` | ❓ Unverified |
| UnnamedContract | unknown | optimism | `0x803800...445493` | ❓ Unverified |
| UnnamedContract | unknown | optimism | `0x8e625c...7939f8` | ❓ Unverified |
| UnnamedContract | unknown | optimism | `0x901850...1c0ac8` | ❓ Unverified |
| UnnamedContract | unknown | optimism | `0x9511d7...aebecd` | ❓ Unverified |
| UnnamedContract | unknown | optimism | `0x987fe5...01ba57` | ❓ Unverified |
| UnnamedContract | unknown | optimism | `0x9ac8ad...70f602` | ❓ Unverified |
| UnnamedContract | unknown | optimism | `0x9ace8a...9099cc` | ❓ Unverified |
| UnnamedContract | unknown | optimism | `0x9f4c4f...ff99ca` | ❓ Unverified |
| UnnamedContract | unknown | optimism | `0xa4b43b...05a75b` | ❓ Unverified |
| UnnamedContract | unknown | optimism | `0xa4dd7d...df7045` | ❓ Unverified |
| UnnamedContract | unknown | optimism | `0xa69b52...5c0d3f` | ❓ Unverified |
| UnnamedContract | unknown | optimism | `0xa6c33e...d312bb` | ❓ Unverified |
| UnnamedContract | unknown | optimism | `0xac9e42...00f2b4` | ❓ Unverified |
| UnnamedContract | unknown | optimism | `0xb1bff5...fab895` | ❓ Unverified |
| UnnamedContract | unknown | optimism | `0xbced1e...6e3ee0` | ❓ Unverified |
| UnnamedContract | unknown | optimism | `0xbde053...a11e86` | ❓ Unverified |
| UnnamedContract | unknown | optimism | `0xbded0c...74bd06` | ❓ Unverified |
| UnnamedContract | unknown | optimism | `0xbedfda...a807e4` | ❓ Unverified |
| UnnamedContract | unknown | optimism | `0xc54ea0...9a0916` | ❓ Unverified |
| UnnamedContract | unknown | optimism | `0xc719a0...a0b932` | ❓ Unverified |
| UnnamedContract | unknown | optimism | `0xcefa66...ca1e13` | ❓ Unverified |
| UnnamedContract | unknown | optimism | `0xd01e63...593566` | ❓ Unverified |
| UnnamedContract | unknown | optimism | `0xd0d899...824314` | ❓ Unverified |
| UnnamedContract | unknown | optimism | `0xdc1586...ffa417` | ❓ Unverified |
| UnnamedContract | unknown | optimism | `0xdcf0f4...838943` | ❓ Unverified |
| UnnamedContract | unknown | optimism | `0xe06c1b...27c6d0` | ❓ Unverified |
| UnnamedContract | unknown | optimism | `0xe14a21...262a43` | ❓ Unverified |
| UnnamedContract | unknown | optimism | `0xe62667...00e7a8` | ❓ Unverified |
| UnnamedContract | unknown | optimism | `0xe6a76d...dad71c` | ❓ Unverified |
| UnnamedContract | unknown | optimism | `0xe9c3d9...ab8879` | ❓ Unverified |
| UnnamedContract | unknown | optimism | `0xeb9433...493d90` | ❓ Unverified |
| UnnamedContract | unknown | optimism | `0xec120b...73a132` | ❓ Unverified |
| UnnamedContract | unknown | optimism | `0xecce0f...0edd80` | ❓ Unverified |
| UnnamedContract | unknown | optimism | `0xee8175...12301f` | ❓ Unverified |
| UnnamedContract | unknown | optimism | `0xf082e2...ed2433` | ❓ Unverified |
| UnnamedContract | unknown | optimism | `0xf1f46d...b3c3fe` | ❓ Unverified |
| UnnamedContract | unknown | optimism | `0xf39f1a...76b87e` | ❓ Unverified |
| UnnamedContract | unknown | optimism | `0xf9d40a...1dc9cc` | ❓ Unverified |
| UnnamedContract | unknown | optimism | `0xfe9779...6cef66` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x06978c...acd2e0` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x0c07d7...9809c9` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x101b48...3f33ce` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x12b5fa...f6a5a6` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x24f8dc...548347` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x2c58ec...1a1525` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x2e0fd3...bb86a2` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x383a53...b6ceb8` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x387eea...330a38` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x3afcb1...ec01d5` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x47efc0...86dfef` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x4ca5c4...5e3f6f` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x4cbd1a...3bc0b0` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x4f4940...ee354c` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x5b5bf5...4b3308` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x630b85...980bfc` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x6348a9...30364b` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x670f4d...6ae5c9` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x7acd35...e99746` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x7ec980...1649db` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x839416...7e25f7` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x84c0c6...4e398e` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x9059ec...f53599` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x90a06c...7e1e6b` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x977814...67c7ba` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x992e93...7fac59` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x9fdcda...59ab29` | ❓ Unverified |
| UnnamedContract | unknown | base | `0xac9e42...00f2b4` | ❓ Unverified |
| UnnamedContract | unknown | base | `0xb45602...1b2043` | ❓ Unverified |
| UnnamedContract | unknown | base | `0xc22665...4601f5` | ❓ Unverified |
| UnnamedContract | unknown | base | `0xc45d44...557158` | ❓ Unverified |
| UnnamedContract | unknown | base | `0xcefa66...ca1e13` | ❓ Unverified |
| UnnamedContract | unknown | base | `0xd12d93...046b73` | ❓ Unverified |
| UnnamedContract | unknown | base | `0xd55226...d62dfb` | ❓ Unverified |
| UnnamedContract | unknown | base | `0xdfb0e0...d078b8` | ❓ Unverified |
| UnnamedContract | unknown | base | `0xe3695a...e1f112` | ❓ Unverified |
| UnnamedContract | unknown | base | `0xe6d980...f78e8f` | ❓ Unverified |
| UnnamedContract | unknown | base | `0xec120b...73a132` | ❓ Unverified |
| UnnamedContract | unknown | base | `0xecce0f...0edd80` | ❓ Unverified |
| UnnamedContract | unknown | base | `0xf2d3ce...e3eed7` | ❓ Unverified |
| UnnamedContract | unknown | base | `0xf9d40a...1dc9cc` | ❓ Unverified |
| UnnamedContract | unknown | berachain | `0x02d99b...69e368` | ❓ Unverified |
| UnnamedContract | unknown | berachain | `0x03554a...7332b8` | ❓ Unverified |
| UnnamedContract | unknown | berachain | `0x04575b...195eb3` | ❓ Unverified |
| UnnamedContract | unknown | berachain | `0x046d56...912c7c` | ❓ Unverified |
| UnnamedContract | unknown | berachain | `0x064356...da123d` | ❓ Unverified |
| UnnamedContract | unknown | berachain | `0x0b62f1...1a9e43` | ❓ Unverified |
| UnnamedContract | unknown | berachain | `0x0cd4c9...8f5928` | ❓ Unverified |
| UnnamedContract | unknown | berachain | `0x0e4e71...849109` | ❓ Unverified |
| UnnamedContract | unknown | berachain | `0x0e6d7e...ac91bc` | ❓ Unverified |
| UnnamedContract | unknown | berachain | `0x0eafb5...1b9859` | ❓ Unverified |
| UnnamedContract | unknown | berachain | `0x164783...7c5ea8` | ❓ Unverified |
| UnnamedContract | unknown | berachain | `0x1a5da4...869faa` | ❓ Unverified |
| UnnamedContract | unknown | berachain | `0x1b93f7...12529d` | ❓ Unverified |
| UnnamedContract | unknown | berachain | `0x1cad45...6f1ded` | ❓ Unverified |
| UnnamedContract | unknown | berachain | `0x1fa731...cec1a0` | ❓ Unverified |
| UnnamedContract | unknown | berachain | `0x2089a3...14eb69` | ❓ Unverified |
| UnnamedContract | unknown | berachain | `0x20aa90...fc28db` | ❓ Unverified |
| UnnamedContract | unknown | berachain | `0x2100c7...596c1c` | ❓ Unverified |
| UnnamedContract | unknown | berachain | `0x21c830...57686c` | ❓ Unverified |
| UnnamedContract | unknown | berachain | `0x232567...6fe17d` | ❓ Unverified |
| UnnamedContract | unknown | berachain | `0x237f53...7b1fd7` | ❓ Unverified |
| UnnamedContract | unknown | berachain | `0x24638a...2f2184` | ❓ Unverified |
| UnnamedContract | unknown | berachain | `0x273609...4834f8` | ❓ Unverified |
| UnnamedContract | unknown | berachain | `0x275ebe...39d5b7` | ❓ Unverified |
| UnnamedContract | unknown | berachain | `0x292a1f...5f5e66` | ❓ Unverified |
| UnnamedContract | unknown | berachain | `0x294f5a...508432` | ❓ Unverified |
| UnnamedContract | unknown | berachain | `0x29bb9f...a8015f` | ❓ Unverified |
| UnnamedContract | unknown | berachain | `0x2aedc3...2e79de` | ❓ Unverified |
| UnnamedContract | unknown | berachain | `0x2b0441...8da727` | ❓ Unverified |
| UnnamedContract | unknown | berachain | `0x2c1574...a2c1a9` | ❓ Unverified |
| UnnamedContract | unknown | berachain | `0x2dad3a...7938f8` | ❓ Unverified |
| UnnamedContract | unknown | berachain | `0x35b958...f849df` | ❓ Unverified |
| UnnamedContract | unknown | berachain | `0x3c28da...0cfb6e` | ❓ Unverified |
| UnnamedContract | unknown | berachain | `0x3d0fe7...bc4fc6` | ❓ Unverified |
| UnnamedContract | unknown | berachain | `0x3f5a13...c75f61` | ❓ Unverified |
| UnnamedContract | unknown | berachain | `0x40059b...e0462d` | ❓ Unverified |
| UnnamedContract | unknown | berachain | `0x46448e...1a5e14` | ❓ Unverified |
| UnnamedContract | unknown | berachain | `0x480ffb...cd36ad` | ❓ Unverified |
| UnnamedContract | unknown | berachain | `0x4b677e...7010c6` | ❓ Unverified |
| UnnamedContract | unknown | berachain | `0x4ecd43...b7a993` | ❓ Unverified |
| UnnamedContract | unknown | berachain | `0x50994a...3390eb` | ❓ Unverified |
| UnnamedContract | unknown | berachain | `0x54a25a...465aaa` | ❓ Unverified |
| UnnamedContract | unknown | berachain | `0x562aac...c2b51e` | ❓ Unverified |
| UnnamedContract | unknown | berachain | `0x5672ad...f6d355` | ❓ Unverified |
| UnnamedContract | unknown | berachain | `0x591403...fe2a70` | ❓ Unverified |
| UnnamedContract | unknown | berachain | `0x5fb925...c22bcc` | ❓ Unverified |
| UnnamedContract | unknown | berachain | `0x62bf85...dee468` | ❓ Unverified |
| UnnamedContract | unknown | berachain | `0x64020e...d5f692` | ❓ Unverified |
| UnnamedContract | unknown | berachain | `0x65ef3b...842650` | ❓ Unverified |
| UnnamedContract | unknown | berachain | `0x6a2e11...2892a7` | ❓ Unverified |
| UnnamedContract | unknown | berachain | `0x6d7fac...bf1cc7` | ❓ Unverified |
| UnnamedContract | unknown | berachain | `0x754429...653846` | ❓ Unverified |
| UnnamedContract | unknown | berachain | `0x75abbd...d546a6` | ❓ Unverified |
| UnnamedContract | unknown | berachain | `0x760c19...e57a1f` | ❓ Unverified |
| UnnamedContract | unknown | berachain | `0x783f70...1e7215` | ❓ Unverified |
| UnnamedContract | unknown | berachain | `0x78b62a...6125a2` | ❓ Unverified |
| UnnamedContract | unknown | berachain | `0x7961ed...7ed37d` | ❓ Unverified |
| UnnamedContract | unknown | berachain | `0x7acd35...e99746` | ❓ Unverified |
| UnnamedContract | unknown | berachain | `0x7c3c68...8111f2` | ❓ Unverified |
| UnnamedContract | unknown | berachain | `0x831267...7280af` | ❓ Unverified |
| UnnamedContract | unknown | berachain | `0x83fd66...35f287` | ❓ Unverified |
| UnnamedContract | unknown | berachain | `0x8461c2...86905a` | ❓ Unverified |
| UnnamedContract | unknown | berachain | `0x84a163...b6a93f` | ❓ Unverified |
| UnnamedContract | unknown | berachain | `0x856031...3a01d2` | ❓ Unverified |
| UnnamedContract | unknown | berachain | `0x890104...474d88` | ❓ Unverified |
| UnnamedContract | unknown | berachain | `0x8946f9...1f04a2` | ❓ Unverified |
| UnnamedContract | unknown | berachain | `0x8ed6c0...75bd2c` | ❓ Unverified |
| UnnamedContract | unknown | berachain | `0x8fda30...af260d` | ❓ Unverified |
| UnnamedContract | unknown | berachain | `0x8fe3b5...b3c285` | ❓ Unverified |
| UnnamedContract | unknown | berachain | `0x91a950...6d9ba7` | ❓ Unverified |
| UnnamedContract | unknown | berachain | `0x94e3dc...95a844` | ❓ Unverified |
| UnnamedContract | unknown | berachain | `0x9633d6...4edf00` | ❓ Unverified |
| UnnamedContract | unknown | berachain | `0x975b34...095218` | ❓ Unverified |
| UnnamedContract | unknown | berachain | `0x99a8f0...4cf75a` | ❓ Unverified |
| UnnamedContract | unknown | berachain | `0x9c33a1...beb5e7` | ❓ Unverified |
| UnnamedContract | unknown | berachain | `0x9c8225...3d964c` | ❓ Unverified |
| UnnamedContract | unknown | berachain | `0x9ef496...1fc822` | ❓ Unverified |
| UnnamedContract | unknown | berachain | `0x9f2ec9...a241b2` | ❓ Unverified |
| UnnamedContract | unknown | berachain | `0xa1082b...4e1860` | ❓ Unverified |
| UnnamedContract | unknown | berachain | `0xa30695...7e91ca` | ❓ Unverified |
| UnnamedContract | unknown | berachain | `0xa4dd7d...df7045` | ❓ Unverified |
| UnnamedContract | unknown | berachain | `0xa5246b...d207f0` | ❓ Unverified |
| UnnamedContract | unknown | berachain | `0xa69b52...5c0d3f` | ❓ Unverified |
| UnnamedContract | unknown | berachain | `0xad0bb2...99d21c` | ❓ Unverified |
| UnnamedContract | unknown | berachain | `0xaea838...7716f0` | ❓ Unverified |
| UnnamedContract | unknown | berachain | `0xb104d3...32cdeb` | ❓ Unverified |
| UnnamedContract | unknown | berachain | `0xb2d44e...0453da` | ❓ Unverified |
| UnnamedContract | unknown | berachain | `0xb3bbc3...4b23ad` | ❓ Unverified |
| UnnamedContract | unknown | berachain | `0xb489a7...fd8143` | ❓ Unverified |
| UnnamedContract | unknown | berachain | `0xb4b22d...031ef2` | ❓ Unverified |
| UnnamedContract | unknown | berachain | `0xb581dc...0708d5` | ❓ Unverified |
| UnnamedContract | unknown | berachain | `0xb7d861...1d322a` | ❓ Unverified |
| UnnamedContract | unknown | berachain | `0xb85d46...36e41a` | ❓ Unverified |
| UnnamedContract | unknown | berachain | `0xb9cd83...a8db63` | ❓ Unverified |
| UnnamedContract | unknown | berachain | `0xbb8a50...dfeae6` | ❓ Unverified |
| UnnamedContract | unknown | berachain | `0xbc1724...1bf67b` | ❓ Unverified |
| UnnamedContract | unknown | berachain | `0xbc4580...0743d6` | ❓ Unverified |
| UnnamedContract | unknown | berachain | `0xbc8816...84ee3c` | ❓ Unverified |
| UnnamedContract | unknown | berachain | `0xc0e5b3...b3adce` | ❓ Unverified |
| UnnamedContract | unknown | berachain | `0xc1d418...2a7d01` | ❓ Unverified |
| UnnamedContract | unknown | berachain | `0xc333d2...c9b5d3` | ❓ Unverified |
| UnnamedContract | unknown | berachain | `0xc6739b...b4e40b` | ❓ Unverified |
| UnnamedContract | unknown | berachain | `0xc8fb71...b309e3` | ❓ Unverified |
| UnnamedContract | unknown | berachain | `0xcefa66...ca1e13` | ❓ Unverified |
| UnnamedContract | unknown | berachain | `0xd11bdc...869397` | ❓ Unverified |
| UnnamedContract | unknown | berachain | `0xd38389...4c6df0` | ❓ Unverified |
| UnnamedContract | unknown | berachain | `0xd46565...bb42cc` | ❓ Unverified |
| UnnamedContract | unknown | berachain | `0xd4a8db...0a10bd` | ❓ Unverified |
| UnnamedContract | unknown | berachain | `0xd50c41...bb36ac` | ❓ Unverified |
| UnnamedContract | unknown | berachain | `0xd61af2...09c2b7` | ❓ Unverified |
| UnnamedContract | unknown | berachain | `0xd73400...3a0653` | ❓ Unverified |
| UnnamedContract | unknown | berachain | `0xd95414...158a79` | ❓ Unverified |
| UnnamedContract | unknown | berachain | `0xdb261d...408507` | ❓ Unverified |
| UnnamedContract | unknown | berachain | `0xdc598d...644daf` | ❓ Unverified |
| UnnamedContract | unknown | berachain | `0xdda769...d1ffd5` | ❓ Unverified |
| UnnamedContract | unknown | berachain | `0xddad0a...cedd5e` | ❓ Unverified |
| UnnamedContract | unknown | berachain | `0xde2f6a...7422b9` | ❓ Unverified |
| UnnamedContract | unknown | berachain | `0xdece17...944f45` | ❓ Unverified |
| UnnamedContract | unknown | berachain | `0xe1289b...e816ac` | ❓ Unverified |
| UnnamedContract | unknown | berachain | `0xe2f8e0...a4d708` | ❓ Unverified |
| UnnamedContract | unknown | berachain | `0xea6bac...c1e0bc` | ❓ Unverified |
| UnnamedContract | unknown | berachain | `0xec120b...73a132` | ❓ Unverified |
| UnnamedContract | unknown | berachain | `0xec7665...a2aa99` | ❓ Unverified |
| UnnamedContract | unknown | berachain | `0xecce0f...0edd80` | ❓ Unverified |
| UnnamedContract | unknown | berachain | `0xedf2d2...ce6c68` | ❓ Unverified |
| UnnamedContract | unknown | berachain | `0xee7435...d2218c` | ❓ Unverified |
| UnnamedContract | unknown | berachain | `0xf0523d...6c5b4e` | ❓ Unverified |
| UnnamedContract | unknown | berachain | `0xf18432...8abab3` | ❓ Unverified |
| UnnamedContract | unknown | berachain | `0xf215f1...d3501c` | ❓ Unverified |
| UnnamedContract | unknown | berachain | `0xf2c585...a27c2d` | ❓ Unverified |
| UnnamedContract | unknown | berachain | `0xf548bf...4d8b7c` | ❓ Unverified |
| UnnamedContract | unknown | berachain | `0xf61b0a...3abd56` | ❓ Unverified |
| UnnamedContract | unknown | berachain | `0xfd82aa...592c56` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [Active Bug Bounty Program](https://immunefi.com/bug-bounty/extrafinance/information) | Immunefi | Bug Bounty | Ongoing | n/a | Direct | n/a | n/a | n/a |
| [Source](https://github.com/peckshield/publications/blob/master/audit_reports/PeckShield-Audit-Report-ExtraFi-v1.0.pdf) | PeckShield | Audit | 2024-11 | aging | Direct | n/a | 0 | n/a |
| [3. <>](https://github.com/sherlock-protocol/sherlock-reports/blob/main/audits/2024.12.01%20-%20Final%20-%20Extra%20Finance%20Audit%20Report.pdf) | Sherlock | Contest | 2024-12 | aging | Direct | contract_name | 3 | high |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| optimism | [`0x856031...3a01d2`](./contracts/optimism-10/0x85603119c938750dfb5904f8a501b64f3f3a01d2/) | AddressRegistry | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0x5b4140...9556a8`](./contracts/optimism-10/0x5b414093362a7c768273d5f0405744b8c09556a8/) | Airdrop | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0x2dad3a...7938f8`](./contracts/optimism-10/0x2dad3a13ef0c6366220f989157009e501e7938f8/) | EXTRA | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x2dad3a...7938f8`](./contracts/base-8453/0x2dad3a13ef0c6366220f989157009e501e7938f8/) | EXTRAoft | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0x0c9d44...616ef4`](./contracts/optimism-10/0x0c9d44f5a573f6cfc9e8264a5ca72a1184616ef4/) | EXTRAoftProxy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0xb7d861...1d322a`](./contracts/optimism-10/0xb7d8613728efcfbb18bcd63deec06f64441d322a/) | RewardDistributor | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0x269270...6b77b8`](./contracts/optimism-10/0x2692709313de4dc1ca15fe77a385c9eb2b6b77b8/) | RewardsDistributorV2 | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x155620...25729b`](./contracts/base-8453/0x155620a2e6a9392c754b73296d9655061525729b/) | VaultFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0xf9cfb8...957055`](./contracts/optimism-10/0xf9cfb8a62f50e10adde5aa888b44cf01c5957055/) | VeloPositionManager | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0x292a1f...5f5e66`](./contracts/optimism-10/0x292a1f318b1ab0c7701f30f42603adc7f95f5e66/) | VeToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 29 |
| upstream | 1 |
| standard_library | 7 |
| needs_review | 231 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=1
- Match method counts: extraction_exact=3

Zero-match audit list:

- [4257] Source

Fork inheritance lineage and inherited audits are included when available.
