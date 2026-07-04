# Agentic Audit Brief: Stable Jack

## Project Overview

- Project: Stable Jack (`stable-jack`)
- Website: [https://www.stablejack.xyz](https://www.stablejack.xyz)
- Lifecycle: unknown
- Generated: 2026-07-03T21:06:56.584Z
- Pipeline run: v2-pipeline-2026-07-01-3e33f2-b097
- Chains: avalanche, ethereum, sonic
- Contract surface: 254 unique implementations (316 raw deployments)
- DeFi Llama TVL: $1,172,460.00
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Yield. Structurally: 41 project-authored contract(s) across 2 chain(s); 4 ERC4626 vaults, 9 ERC20 tokens, 1 ERC721 NFT; role-gated via AccessControl; upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 8 functional families. Its contracts share 23 common project-authored base contract(s) (aoperator, feem, initializegovernedupgradeabilityproxy). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 394; live-surface contracts included: 310 (82 live, 228 unknown).
- Excluded by liveness: 84 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 3/33 (9.1%)
- Deployed-live implementations: 33 of 254 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 3/36
- Verified + Unaudited implementations: 33
- Verified by bytecode match: 0
- Unverified implementations: 218
- Unique implementations: 254
- Raw deployments: 316
- Audits discovered: 1 (1 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 1
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2024-06 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 1 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 3 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| unknown | Tier 2 | 3 | 8.3% | 2024-06 |

## Contract Surface

### ✅ Verified + Audited (3)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| PlatformFeeDistributor | unknown | ethereum | n/a | 2 deployments: ethereum [`0xd27917...76e973`](./contracts/ethereum-1/0xd2791781c367b2f512396105c8ab26479876e973/); ethereum `0xd6efa5...2a35be` | ✅ Audited |
| PlatformFeeSpliter | unknown | ethereum | n/a | 2 deployments: ethereum [`0x0084c2...63d703`](./contracts/ethereum-1/0x0084c2e1b1823564e597ff4848a88d61ac63d703/); ethereum `0x323668...2380c8` | ✅ Audited |
| RebalancePool | unknown | ethereum | n/a | [`0x3415fc...6473c7`](./contracts/ethereum-1/0x3415fcd2885c486e2d848403d51077f7176473c7/) | ✅ Audited |

### ⚠️ Verified + Unaudited (33)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| AirdropDistributor | operational_periphery | sonic | n/a | 2 deployments: sonic [`0x244c88...05a831`](./contracts/sonic-146/0x244c88a7f5e11b092acd29f0033972d05e05a831/); sonic `0xc49182...9c124c` | ⚠️ Unaudited |
| AirdropReclaimer | operational_periphery | sonic | n/a | [`0x5db8d9...5d261a`](./contracts/sonic-146/0x5db8d98ed02a3b8c2781ab0b80f00cd2b75d261a/) | ⚠️ Unaudited |
| BoringVault | core_logic | avalanche | n/a | [`0xdf788a...f52f67`](./contracts/avalanche-43114/0xdf788ad40181894da035b827cdf55c523bf52f67/) | ⚠️ Unaudited |
| DistributionSwapper | adapter | sonic | n/a | 16 deployments: sonic [`0x05d61a...bfee01`](./contracts/sonic-146/0x05d61aca7111e177ca0a03e7145f342494bfee01/); sonic `0x14cedd...227230`; sonic `0x1bc06e...d86e52`; sonic `0x324a04...64527c`; sonic `0x3692b1...28d3a6`; sonic `0x3a15cc...4b53eb`; sonic `0x4cba4a...c338fd`; sonic `0x4ce11a...e7fb29`; sonic `0x58d02d...df52b2`; sonic `0x61b9bf...54dd5b`; sonic `0x633ff2...7b3b83`; sonic `0x9a7d08...19cf7b`; sonic `0xa55d93...891248`; sonic `0xa9d889...b67eb3`; sonic `0xb8c5b4...6b8b5d`; sonic `0xed801d...8678c5` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | avalanche | n/a | 2 deployments: avalanche [`0x4d4dac...d4d29d`](./contracts/avalanche-43114/0x4d4daca1fa6440ed4508161328368118bed4d29d/); avalanche `0xf99b9e...68d1f2` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | avalanche | n/a | 2 deployments: avalanche [`0x6ed8c6...992952`](./contracts/avalanche-43114/0x6ed8c61b174f605d4ce6c02c431cd9a7ca992952/); avalanche `0xf76e6d...0e67b4` | ⚠️ Unaudited |
| JackTokenBridged | operational_periphery | sonic | n/a | [`0x9d549c...102e36`](./contracts/sonic-146/0x9d549c39e5e1a0e7ef41d4b7d74c49f976102e36/) | ⚠️ Unaudited |
| OSonic | unknown | sonic | n/a | [`0xb1e256...f8a794`](./contracts/sonic-146/0xb1e25689d55734fd3fffc939c4c3eb52dff8a794/) | ⚠️ Unaudited |
| OSonicVaultCore | core_logic | sonic | n/a | [`0xd66afa...836cf3`](./contracts/sonic-146/0xd66afaa7fe071162d055b3cc703cc1eaed836cf3/) | ⚠️ Unaudited |
| OSonicZapper | adapter | sonic | n/a | [`0xe25a2b...2fab21`](./contracts/sonic-146/0xe25a2b256ffb3ad73678d5e80de8d2f6022fab21/) | ⚠️ Unaudited |
| OSVault | core_logic | sonic | n/a | [`0xa3c0ec...180186`](./contracts/sonic-146/0xa3c0eca00d2b76b4d1f170b0ab3fdea16c180186/) | ⚠️ Unaudited |
| PoolBoosterFactorySwapxDouble | registry | sonic | n/a | [`0x840081...5a3b49`](./contracts/sonic-146/0x840081c97256d553a8f234d469d797b9535a3b49/) | ⚠️ Unaudited |
| PriceStorage | unknown | avalanche | n/a | 2 deployments: avalanche [`0x0c66fc...9272af`](./contracts/avalanche-43114/0x0c66fcd3eac84a04a198f2ffe00ca64f3c9272af/); avalanche `0x40b418...6f2166` | ⚠️ Unaudited |
| PriceStorage | unknown | avalanche | n/a | 2 deployments: avalanche [`0x0ef7be...357923`](./contracts/avalanche-43114/0x0ef7be66249217e7588ad9277806080472357923/); avalanche `0x7b4e81...ba9777` | ⚠️ Unaudited |
| ProxyAdmin | unknown | avalanche | n/a | 4 deployments: avalanche [`0x2d1c7b...040dd3`](./contracts/avalanche-43114/0x2d1c7b2eb59f1c93983631be4f05b08b51040dd3/); avalanche `0x36f7b8...51cfc2`; avalanche `0x8e9988...4048d3`; avalanche `0xcfba93...4f5446` | ⚠️ Unaudited |
| RebalancePool | unknown | ethereum | n/a | [`0xa677d9...01a49e`](./contracts/ethereum-1/0xa677d95b91530d56791fba72c01a862f1b01a49e/) | ⚠️ Unaudited |
| RebalancePoolSplitter | unknown | ethereum | n/a | [`0xce5a14...0f2fca`](./contracts/ethereum-1/0xce5a14c662f00c614aa467b82c654548540f2fca/) | ⚠️ Unaudited |
| RewardsDistributor | operational_periphery | sonic | n/a | 15 deployments: sonic [`0x0ab6d0...1de1d3`](./contracts/sonic-146/0x0ab6d071af5b692c88baddd1f6e4f3ad5c1de1d3/); sonic `0x266c10...6e80b6`; sonic `0x29dafa...c8057f`; sonic `0x485eab...a784bd`; sonic `0x66df6a...27d7ed`; sonic `0x7545dd...8fb931`; sonic `0x7b949a...1c33b5`; sonic `0x8329d2...8f85e9`; sonic `0x87c165...cfde21`; sonic `0x9981a5...8333f5`; sonic `0x9987a6...6638af`; sonic `0xa10466...3b11d7`; sonic `0xadeeb0...9f3ec0`; sonic `0xee1e11...145177`; sonic `0xfc7d3e...e4094a` | ⚠️ Unaudited |
| Router | adapter | sonic | n/a | 2 deployments: sonic [`0x10c490...30a829`](./contracts/sonic-146/0x10c490921916e6d2d38535e63080d54e7e30a829/); sonic `0x4d6223...8dc9e0` | ⚠️ Unaudited |
| SimpleToken | unknown | avalanche | n/a | 2 deployments: avalanche [`0xa7c10c...dc760c`](./contracts/avalanche-43114/0xa7c10c510df4b1702e1f36451dd29d7c3edc760c/); avalanche `0xf7cf10...f7dfc7` | ⚠️ Unaudited |
| SimpleToken | unknown | avalanche | n/a | 2 deployments: avalanche [`0xaefa3f...92b29a`](./contracts/avalanche-43114/0xaefa3ffe45781680d5ad99627b7eb9d79192b29a/); avalanche `0xdd1cdf...b6b3b9` | ⚠️ Unaudited |
| StakedAvUSDV2 | token | avalanche | n/a | [`0x06d47f...72219e`](./contracts/avalanche-43114/0x06d47f3fb376649c3a9dafe069b3d6e35572219e/) | ⚠️ Unaudited |
| TestToken | unknown | avalanche | n/a | 2 deployments: avalanche [`0x812571...96453c`](./contracts/avalanche-43114/0x8125713bd45f8b5e807d9899afaa214d5e96453c/); avalanche `0xb6b0ca...40a19f` | ⚠️ Unaudited |
| TokenWrapper | token | sonic | n/a | [`0xb27f55...3e3c8f`](./contracts/sonic-146/0xb27f555175e67783ba16f11de3168f87693e3c8f/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | avalanche | n/a | 2 deployments: avalanche [`0x0363a3...d461db`](./contracts/avalanche-43114/0x0363a3debe776de575c36f524b7877db7dd461db/); avalanche `0xadb77d...b41314` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | avalanche | n/a | 12 deployments: avalanche [`0x19e6a4...056e46`](./contracts/avalanche-43114/0x19e6a4e40974cd1f021a2571829d50c11a056e46/); avalanche `0x35315c...6562bd`; avalanche `0x5559d4...50ee2a`; avalanche `0x698c34...5e715e`; avalanche `0x872e02...bdadc8`; avalanche `0x9b7c44...7dde97`; avalanche `0xa0d0c6...2cc8da`; avalanche `0xa97d50...0da841`; avalanche `0xb05b3d...948dbe`; avalanche `0xbb640e...41b697`; avalanche `0xea6e19...2e61ed`; avalanche `0xf8ae89...fd6b0d` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | avalanche | n/a | 2 deployments: avalanche [`0x383627...00243a`](./contracts/avalanche-43114/0x383627530d4b9435355c9c394c70a66aea00243a/); avalanche `0xabe7a9...c47dc1` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | avalanche | n/a | 2 deployments: avalanche [`0xab2bd1...837451`](./contracts/avalanche-43114/0xab2bd1e640b7d069cfd7a4eb250977f979837451/); avalanche `0xdc325a...5f9d58` | ⚠️ Unaudited |
| VeArtProxy | unknown | sonic | n/a | 2 deployments: sonic [`0x2fc1e7...ec27e9`](./contracts/sonic-146/0x2fc1e74bc8a6d15fe768c10c2ede7d6d95ec27e9/); sonic `0xf2b303...4c90d6` | ⚠️ Unaudited |
| VeArtProxy | unknown | sonic | n/a | 2 deployments: sonic [`0x47bf4c...15d234`](./contracts/sonic-146/0x47bf4c2f17c547a3d9052258b91919d09b15d234/); sonic `0xf00941...470689` | ⚠️ Unaudited |
| VeArtProxy | unknown | sonic | n/a | [`0xeae33e...9ed7b2`](./contracts/sonic-146/0xeae33e053eaf1bcc8d33ab9bde53e5bd699ed7b2/) | ⚠️ Unaudited |
| VotingEscrow | operational_periphery | sonic | n/a | 2 deployments: sonic [`0x0966ca...5bb86b`](./contracts/sonic-146/0x0966cae7338518961c2d35493d3eb481a75bb86b/); sonic `0x1ec2b9...e3a578` | ⚠️ Unaudited |
| Wrapper | unknown | sonic | n/a | 3 deployments: sonic [`0x9fb76f...494206`](./contracts/sonic-146/0x9fb76f7ce5fceaa2c42887ff441d46095e494206/); sonic `0xdb58c4...10c866`; sonic `0xe8a41c...f37c47` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (218)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| Proxy (impl: 0x2c3585ad9f052b12578a474beab0b0cf438e5a00) | proxy | avalanche | n/a | `0xf01069...6ca440` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x50a68c...b7739a` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x5220ff...8ea29e` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x63cde3...5ce654` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x64bd9c...d0f1f6` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x67952c...483d70` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x9fb6b6...9c3b32` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0xc9ec89...a1675e` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0xd0cc28...72ac8b` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0xd3d5e4...624ed7` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0xe59c17...814f64` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0xe7e7de...b94d8f` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0xf22f28...4b13cc` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x003678...83c3ba` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x00b660...44b4a8` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x00d011...45f0e8` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x013b34...6e3273` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x022138...d00c31` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x028f76...8354e9` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x04a462...794ead` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x064b25...f1283e` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x07bc07...d60d49` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x086418...741e33` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x08a312...3422d2` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x0954de...7e418b` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x0b6d8e...318606` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x0c5051...b6d26b` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x0dcaa1...6b530d` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x0f51e9...7ce2cf` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x104a42...54c6ed` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x1177f6...d10b3a` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x11fe6f...65d8fa` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x125eb4...e99c45` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x126f0d...6bdea7` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x1346ed...1ae246` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x1742cc...a2d914` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x1776e8...301b49` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x177a87...886bad` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x193a3d...a94e20` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x1cfd34...5ae4be` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x1e40c7...bcb417` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x210754...6418db` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x21412c...e7449c` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x21c5b8...880ccc` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x226a0c...06a298` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x229c4e...721d1b` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x24517a...c2b6c3` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x259177...c3c3c5` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x26585e...87bd7c` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x2a0dcd...a793fa` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x2d3152...d25d31` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x2d49a6...7ad886` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x2f9d5c...7f5a3f` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x2fbfe6...cff4b9` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x30015e...e8ab1e` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x33fe6a...265c2d` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x34a55a...30ac1c` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x350a85...c0a0ed` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x364ff8...a9eec6` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x37023a...501c9f` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x3a6a12...93ee4d` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x3c5808...444048` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x3d8f8d...31a908` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x3f451c...5a3162` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x4061a9...abe959` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x41c43d...a1e51c` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x41fe11...f16929` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x425692...9ccf9f` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x42b8ec...71d1b7` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x45084f...45c389` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x4707fa...03b135` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x481c49...f9453d` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x4b1df6...78f377` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x4b8aa5...af6cf5` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x4d07ef...6759c5` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x4f238e...8f3a3d` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x532c8e...4084fc` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x534d3f...bf639b` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x5481fa...3d1094` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x56c76f...cc43bb` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x56e32e...a52618` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x589429...17f813` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x593d89...e0e01a` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x5c0133...db54d7` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x5e09be...8a1635` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x600466...19fef0` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x60b86f...ba920f` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x61e3d9...e815c3` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x63e1e3...e6b913` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x644692...121b7d` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x646cc7...df06ae` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x65c11d...d11783` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x65c325...2a2e71` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x66204a...21c9c3` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x664bc5...2ecdbf` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x66a12c...1415f6` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x6752bd...f0a896` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x675bf4...c2d1c2` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x683d22...462f59` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x68503d...00fc1e` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x6a3560...9883ad` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x6b76a1...608c58` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x6bb76b...d94370` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x6c1076...16dc52` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x6c2a02...1d1512` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x708b06...496da0` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x7132c0...0dc8be` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x727828...b15934` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x74c5bc...b7c97b` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x758240...4c56a2` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x75df77...dc033d` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x79a17b...481505` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x7aa5c7...4c17a1` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x7bccff...665957` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x7c24ea...1f0d92` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x7cdfc6...60c8f9` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x7d1389...5b6d22` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x7e9c09...ca451c` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x7f49be...baaf45` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x80960f...674333` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x812c22...a1c1bb` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x83a753...1fdcf3` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x8478b8...99e815` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x85f50b...20522e` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x86bac6...45aadb` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x8c1af7...44a980` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x8da9c1...334ec4` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x8df5ab...afc6b3` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x919e4d...80b8b2` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x92796a...1ec2af` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x933b32...ee3038` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x940d9a...1d8731` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x95e62a...cb21fe` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x968806...68e9d8` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x98b49d...a70b0a` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x99bc5c...1d897c` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x9ab1c7...45ac6a` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x9b0f96...b588a7` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x9d0059...9e500f` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x9e9614...63b232` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x9f829c...4a2530` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xa3fe85...f73600` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xa4dc75...df7ef7` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xa54482...57651a` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xa65ac5...072573` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xa8460b...5aa6f6` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xa861b5...53c06a` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xabc5cc...981941` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xabc8d7...be8ca9` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xac67bf...4f00c1` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xac7a41...7e1e05` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xaec185...66f131` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xaee9ce...198267` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xaef488...1835ec` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xaf3ba8...e41c5d` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xb073f6...fddb74` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xb294a9...d2b8bf` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xb3af67...f178d1` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xb3e8f0...6bebbd` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xb41c8f...ab7960` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xb424b4...ac25bd` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xb616dd...c2abd0` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xb67aec...b1540f` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xb727f2...c60432` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xb77fb6...6d50b7` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xb83893...9e0d2b` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xb8c6c8...ed1b41` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xbab6c3...1d5503` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xbbd4b4...d4cbe8` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xbc33ce...6ef5d7` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xbddc92...4179d4` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xc0108c...4456ea` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xc0ef48...fd1d47` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xc15f86...e16741` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xc2b0a3...54c305` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xc50f9d...1a5462` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xc92a14...427b59` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xc9b584...373a3f` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xcc4187...9670d6` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xcdbce5...096a63` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xcee8a4...11d914` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xcefea5...687927` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xcf26a5...30c100` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xcf2ea8...da655e` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xd2a170...a937a7` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xd2bcdf...50bf4e` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xd4f8d3...c59ef2` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xd5222d...67aad7` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xd8febb...1f56c8` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xd9103e...d33ba6` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xd942d4...5c777f` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xd9b6cd...5ed3c4` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xd9ede0...d6f4af` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xdf14ab...0c577b` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xe1ffe1...7086fe` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xe24f54...f7fe58` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xe36d66...c33876` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xe5a922...b3f01a` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xe7e0af...777b5a` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xe946ca...7b65cd` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xeb5ed5...7800b9` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xede839...abea23` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xef0a8b...1640e2` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xf287cd...6637c8` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xf32222...d7a8d5` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xf339fe...ab18bf` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xf39a46...1f3a81` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xf462b3...009070` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xf4f3e2...552b79` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xf57764...3ac896` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xf57a42...c3c3c1` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xf65fbe...e98d48` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xf6b9a0...2b4f20` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xfb2746...b9ed0d` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xfb47da...fed08b` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xfbf8a6...82a1f3` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xfceba1...28e087` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xff11c9...4640be` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [aUSD_SC_Final_Audit_Report.pdf](https://github.com/Credshields/audit-reports/blob/master/aUSD_SC_Final_Audit_Report.pdf) | unknown | Audit | 2024-06 | stale | Direct | contract_name | 4 | high |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 0 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 254 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=1
- Match method counts: extraction_exact=4

Fork inheritance lineage and inherited audits are included when available.
