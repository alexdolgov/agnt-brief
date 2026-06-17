# Agentic Audit Brief: Rain

## Project Overview

- Project: Rain (`rain`)
- Website: [https://www.rain.one/](https://www.rain.one/)
- Lifecycle: active (Tier 0, 18.4% below peak)
- Generated: 2026-06-17T07:00:36.194Z
- Pipeline run: brief-regen-topo-2026-06-17
- Chains: arbitrum
- Contract surface: 31 unique implementations (128 raw deployments)
- DeFi Llama TVL: $26,144,530.33
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Rain is a prediction market protocol on Arbitrum One that allows users to create and participate in markets for forecasting events. Its contract architecture uses a mix of ERC1967 proxy-backed components and direct project-specific contracts, including Rain, RainDeployer, Reservoir, and diamond/facet-style deployments; only the proxy shell bytecode should be treated as OpenZeppelin standard-library code, while the implementations and direct deployments are native Rain protocol logic.

### Architecture

The RainDeployer contract creates and manages market instances, while the Reservoir contract handles liquidity or outcome payouts. All core contracts are accessed through ERC1967Proxy upgradeable proxies, sharing a common deployment infrastructure.

## Contract Surface Quality

- Indexed contracts: 138; live-surface contracts included: 128 (127 live, 1 unknown).
- Excluded by liveness: 0 inactive, 10 singleton, 0 uninitialized.
- Deployment units: 3/8 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Verified implementations audited: 0/30 (0.0%)
- Verified + Unaudited implementations: 30
- Verified by bytecode match: 0
- Unverified implementations: 1
- Unique implementations: 31
- Raw deployments: 128
- Audits discovered: 3
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2025-08 (fresh)
- Staleness: 1 fresh, 0 aging, 0 stale, 2 unknown
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (30)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| AccessControlFacet | governance | arbitrum | n/a | [`0x08d5de...25c9a9`](./contracts/arbitrum-42161/0x08d5de6df06755d23730b7c79d4a43f78325c9a9/) | ⚠️ Unaudited |
| AppStorageFacet | unknown | arbitrum | n/a | [`0xf33a30...5b09e8`](./contracts/arbitrum-42161/0xf33a30106b6448638b6ef09ee8a867bf245b09e8/) | ⚠️ Unaudited |
| CancelOrderFacet | unknown | arbitrum | n/a | 9 deployments: arbitrum [`0x0921fd...ba84d7`](./contracts/arbitrum-42161/0x0921fd1248a20b371b3eeaf58c7e51d246ba84d7/); arbitrum `0x28bb2b...d71d15`; arbitrum `0x459da9...f307d4`; arbitrum `0x58bf2b...35ed9b`; arbitrum `0x7560cb...c566ce`; arbitrum `0x89f6c6...0ba0fc`; arbitrum `0x9b92f2...e8f8d2`; arbitrum `0xb453ac...7a00e0`; arbitrum `0xcd7647...4b4b56` | ⚠️ Unaudited |
| ClaimFacet | unknown | arbitrum | n/a | 9 deployments: arbitrum [`0x38d3d0...2b5a52`](./contracts/arbitrum-42161/0x38d3d0c3cd1c58d72941e923a983abf6eb2b5a52/); arbitrum `0x3e4ac1...0193a3`; arbitrum `0x53099b...1546fa`; arbitrum `0x67176e...41fec2`; arbitrum `0x6ca2ce...dda3d9`; arbitrum `0x8aa370...40a840`; arbitrum `0xbe17a4...3aa6f2`; arbitrum `0xdcc4e0...89b0f1`; arbitrum `0xe1ef15...1a4656` | ⚠️ Unaudited |
| Conduit | unknown | arbitrum | unit-22107 | [`0x106ac3...143bae`](./contracts/arbitrum-42161/0x106ac39ad87d0294dbbbf25167898b498b143bae/) | ⚠️ Unaudited |
| Conduit | unknown | arbitrum | n/a | 2 deployments: arbitrum [`0x177d2f...05a91f`](./contracts/arbitrum-42161/0x177d2fc09efbce70ec80af45a44a43089405a91f/); arbitrum `0xe4de94...6dd731` | ⚠️ Unaudited |
| DiamondCutFacet | unknown | arbitrum | n/a | 10 deployments: arbitrum [`0x03cfee...8d2818`](./contracts/arbitrum-42161/0x03cfee1e3388c58e988ac84b0129c305828d2818/); arbitrum `0x1cbeba...5f0b20`; arbitrum `0x31c463...d90c47`; arbitrum `0x3535de...659839`; arbitrum `0x487c50...20c4af`; arbitrum `0x7593f7...4d07f7`; arbitrum `0x78d3ff...ab65ff`; arbitrum `0x93edbc...406c50`; arbitrum `0x9aa7a6...0cb90c`; arbitrum `0xb55207...1bcb89` | ⚠️ Unaudited |
| DiamondInit | unknown | arbitrum | n/a | [`0x8cc839...714231`](./contracts/arbitrum-42161/0x8cc83934b0a785e6b9863f7328c2f9fbe1714231/) | ⚠️ Unaudited |
| DiamondLoupeFacet | unknown | arbitrum | n/a | 10 deployments: arbitrum [`0x002c69...ab5250`](./contracts/arbitrum-42161/0x002c695d2872d7ab57d496ad9cc391a3fdab5250/); arbitrum `0x06a437...c270ad`; arbitrum `0x8126dc...794c77`; arbitrum `0xc59314...18f607`; arbitrum `0xc5f573...8dbc14`; arbitrum `0xc69016...36ee35`; arbitrum `0xce73e0...0d164b`; arbitrum `0xd456de...4f0a1f`; arbitrum `0xd621f8...573531`; arbitrum `0xeae50b...ce020a` | ⚠️ Unaudited |
| DisputeFacet | unknown | arbitrum | n/a | 9 deployments: arbitrum [`0x058d7d...88bf68`](./contracts/arbitrum-42161/0x058d7dfefe0b13dbe00cfbbd2cbe04d47188bf68/); arbitrum `0x3224e7...409744`; arbitrum `0x3f5758...a858f2`; arbitrum `0x461b4b...ba257c`; arbitrum `0x61b803...d0baa8`; arbitrum `0x95716c...cfe8de`; arbitrum `0xb0da34...298ec5`; arbitrum `0xda29a9...b55399`; arbitrum `0xff4e16...7d65f2` | ⚠️ Unaudited |
| ERC1967Proxy | proxy | arbitrum | unit-22112 | [`0xcccb3c...3623f1`](./contracts/arbitrum-42161/0xcccb3c03d9355b01883779ef15c1be09cf3623f1/) | ⚠️ Unaudited |
| GetterFacet | unknown | arbitrum | n/a | 9 deployments: arbitrum [`0x1ea6ec...90ec38`](./contracts/arbitrum-42161/0x1ea6ecb3463877f3f6abe98f7109097f7a90ec38/); arbitrum `0x204103...c495b7`; arbitrum `0x2d2e23...a2f41d`; arbitrum `0x35e25d...76345a`; arbitrum `0x399123...292a9b`; arbitrum `0x3b578b...893cc2`; arbitrum `0x78d58a...d8154e`; arbitrum `0x8c6084...1a7343`; arbitrum `0xfeb0c9...3d78d9` | ⚠️ Unaudited |
| InfoFacet | periphery | arbitrum | n/a | 9 deployments: arbitrum [`0x0ab66d...9878a2`](./contracts/arbitrum-42161/0x0ab66d9b24e8f15025e588c7fa8655ec1a9878a2/); arbitrum `0x43a98b...8115d7`; arbitrum `0x5adc4e...e02f26`; arbitrum `0x9fac12...bfe820`; arbitrum `0xbf9726...a044b5`; arbitrum `0xc67b30...6c0c01`; arbitrum `0xd65624...2fea98`; arbitrum `0xe15563...71bef5`; arbitrum `0xf4341d...89ed67` | ⚠️ Unaudited |
| MarketTerminationFacet | unknown | arbitrum | n/a | [`0xbe6696...9ed052`](./contracts/arbitrum-42161/0xbe669656a3e300260a89be50c83a255bcd9ed052/) | ⚠️ Unaudited |
| MarketThresholdFacet | unknown | arbitrum | n/a | [`0x51a8c5...067d59`](./contracts/arbitrum-42161/0x51a8c582a52d089b6160bce38bb3e62622067d59/) | ⚠️ Unaudited |
| MetadataFacet | unknown | arbitrum | n/a | [`0x1260e7...d251bf`](./contracts/arbitrum-42161/0x1260e79c65d5cec02c4aca63b9fe000a69d251bf/) | ⚠️ Unaudited |
| Operator | unknown | arbitrum | n/a | [`0xe45cee...2a46d0`](./contracts/arbitrum-42161/0xe45ceeb4f1c2cf4c702bb7183efa75f51e2a46d0/) | ⚠️ Unaudited |
| OracleFeeFacet | operational_periphery | arbitrum | n/a | 9 deployments: arbitrum [`0x267c80...d9314b`](./contracts/arbitrum-42161/0x267c800b7701e3feae0d7d259ba6481692d9314b/); arbitrum `0x692219...278e33`; arbitrum `0x799276...029a3f`; arbitrum `0x912529...4160f7`; arbitrum `0xb9d4bf...1cab80`; arbitrum `0xcd819a...fe76e8`; arbitrum `0xcdbcea...0d3bd7`; arbitrum `0xd99eed...0f91de`; arbitrum `0xf91094...64f61d` | ⚠️ Unaudited |
| PausableFacet | unknown | arbitrum | n/a | [`0x459a99...873649`](./contracts/arbitrum-42161/0x459a994233488a448a4c4e086a56b1e609873649/) | ⚠️ Unaudited |
| QueueFacet | unknown | arbitrum | n/a | [`0x2f20d4...81416a`](./contracts/arbitrum-42161/0x2f20d43ddcf14bbe6ddeeda60618808eec81416a/) | ⚠️ Unaudited |
| Rain | unknown | arbitrum | n/a | [`0x6b6f86...85ddad`](./contracts/arbitrum-42161/0x6b6f8622607fa837b27293258548a9fc3b85ddad/) | ⚠️ Unaudited |
| RainDecisionDiamond | unknown | arbitrum | n/a | [`0x4e25b6...a5d96a`](./contracts/arbitrum-42161/0x4e25b638c778dec7cbf42c6494ea99394aa5d96a/) | ⚠️ Unaudited |
| RainDeployer | unknown | arbitrum | n/a | 6 deployments: arbitrum [`0x16d071...1aa686`](./contracts/arbitrum-42161/0x16d071c5d21d0090b3829b569f9482f52a1aa686/); arbitrum `0x5fbe39...042814`; arbitrum `0x74d2b5...ffe61c`; arbitrum `0x9c7fa9...b8e694`; arbitrum `0xa2849e...0191c9`; arbitrum `0xbc3848...a9a4e1` | ⚠️ Unaudited |
| RainDiamondFactory | registry | arbitrum | n/a | 9 deployments: arbitrum [`0x153b10...a5a1fe`](./contracts/arbitrum-42161/0x153b100927bb9afd796f13955f73120e4da5a1fe/); arbitrum `0x209dd3...0b35ee`; arbitrum `0x71b8b4...613b1d`; arbitrum `0x7af3a1...0da82a`; arbitrum `0x7b4f2e...59d9f8`; arbitrum `0xa9ff29...15feea`; arbitrum `0xbe520f...ee16da`; arbitrum `0xe5a92b...7b7776`; arbitrum `0xee4760...c6e54e` | ⚠️ Unaudited |
| RainPoolDiamond | core_logic | arbitrum | n/a | [`0x6a3682...e03b32`](./contracts/arbitrum-42161/0x6a368244019146427f7243f9875f82a99ce03b32/) | ⚠️ Unaudited |
| RandomNumberService | unknown | arbitrum | n/a | 2 deployments: arbitrum [`0x43f7fe...4a61bd`](./contracts/arbitrum-42161/0x43f7fedcb8de1b82976c3a355598e7d0924a61bd/); arbitrum `0xcb3c3e...cb13ec` | ⚠️ Unaudited |
| Reservoir | unknown | arbitrum | unit-22109 | [`0x3783c9...ef26b5`](./contracts/arbitrum-42161/0x3783c98c39c48750d92a7086d3eacbd231ef26b5/) | ⚠️ Unaudited |
| Reservoir | unknown | arbitrum | n/a | [`0x3d65a0...44b144`](./contracts/arbitrum-42161/0x3d65a08baa7f9109f1307dcc978228de0f44b144/) | ⚠️ Unaudited |
| ResolutionFacet | unknown | arbitrum | n/a | 9 deployments: arbitrum [`0x16dc01...5ae889`](./contracts/arbitrum-42161/0x16dc011486d897e76bb239896694ff878b5ae889/); arbitrum `0x17182c...5a90f9`; arbitrum `0x61b09c...05d572`; arbitrum `0x8c8a09...67d3e3`; arbitrum `0x8d60ea...b7a4b6`; arbitrum `0x910331...af8682`; arbitrum `0xb8859f...308ef4`; arbitrum `0xcf5ba3...16b874`; arbitrum `0xef9f3c...a76544` | ⚠️ Unaudited |
| TradingFacet | unknown | arbitrum | n/a | 9 deployments: arbitrum [`0x165f69...dd1bf2`](./contracts/arbitrum-42161/0x165f692cddd35ca514dbc28aa25a4fec15dd1bf2/); arbitrum `0x231dac...821b69`; arbitrum `0x299e09...3ceffc`; arbitrum `0x390669...9ca0c0`; arbitrum `0x719926...992fa6`; arbitrum `0xa0ce8c...8113bb`; arbitrum `0xd419fc...63bf22`; arbitrum `0xd9329b...0e42ce`; arbitrum `0xee1682...cfbdc7` | ⚠️ Unaudited |

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
| UnnamedContract | unknown | arbitrum | n/a | `0x32bcb5...426b4c` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [DL audit link](https://hacken.io/audits/rain/sca-rain-token-aug2025) | Hacken | Audit | 2025-08 | fresh | Direct | n/a | 0 | n/a |
| [Rendered PDF capture](https://assets.hacken.io/assets/Terms_of_Service_Hacken_io.pdf) | Hacken | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [Rendered PDF capture](https://assets.hacken.io/assets/Privacy_Notice_Hacken_io.pdf) | Hacken | Audit | n/a | unknown | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 0 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 31 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 3
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Zero-match audit list:

- [2735] DL audit link
- [11854] Rendered PDF capture
- [11855] Rendered PDF capture

Fork inheritance lineage and inherited audits are included when available.
