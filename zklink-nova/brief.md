# Agentic Audit Brief: zkLink Nova

⚠️ Lifecycle status: DECLINING - TVL dropped 4.7% over 90 days

## Project Overview

- Project: zkLink Nova (`zklink-nova`)
- Website: [https://zklink.io](https://zklink.io)
- Lifecycle: declining (Tier 1, declining)
- Generated: 2026-06-17T07:00:50.523Z
- Pipeline run: brief-regen-topo-2026-06-17
- Chains: arbitrum, base, blast, ethereum, linea, manta, mantle, merlin, scroll, zksync-era
- Contract surface: 132 unique implementations (214 raw deployments)
- DeFi Llama TVL: $10,422,155.54
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

zkLink Nova is an aggregated Layer 3 zkEVM network that unifies liquidity and assets across Ethereum and Ethereum Layer 2 rollups. It supports Ethereum-compatible dApp deployment and cross-chain liquidity aggregation through a unified zkEVM environment secured by zero-knowledge proofs.

### Architecture

The ZKL token is used across the zkLink Nova ecosystem for fees and governance. The zkLink Nova family relies on gateway contracts and verifiers to enable cross-chain transfers, while the Contract Addresses family provides additional proxy and bridge instances that extend the protocol's multi-chain reach.

## Contract Surface Quality

- Indexed contracts: 843; live-surface contracts included: 214 (37 live, 177 unknown).
- Excluded by liveness: 437 inactive, 192 singleton, 0 uninitialized.
- Deployment units: 4/101 live.
- Detected codebases: none
- Unverified dependencies: 6/22.

## Audit Coverage Summary

- Verified implementations audited: 7/47 (14.9%)
- Verified + Unaudited implementations: 40
- Verified by bytecode match: 0
- Unverified implementations: 85
- Unique implementations: 132
- Raw deployments: 214
- Audits discovered: 7
- Scoreable audits (matched contracts): 7
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2024-07 (aging)
- Staleness: 0 fresh, 1 aging, 6 stale, 0 unknown
- Tier 1 coverage: 8.5% (OpenZeppelin)
- Note: This protocol is classified as [declining]. ASD of n/a represents exposure in a protocol with declining activity.

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| ABDK | Tier 2 | 6 | 12.8% | 2024-07 |
| Secure3 | Tier 2 | 5 | 10.6% | 2024-04 |
| OpenZeppelin | Tier 1 | 4 | 8.5% | 2024-01 |

## Contract Surface

### ✅ Verified + Audited (7)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| AdminFacet | unknown | linea | unit-31346 | [`0x5cb18b...c5df05`](./contracts/linea-59144/0x5cb18b6e4e6f3b46ce646b0f4704d53724c5df05/) | ✅ Audited |
| ArbitrumL2Gateway | unknown | arbitrum | n/a | [`0xa194fb...dd3a2e`](./contracts/arbitrum-42161/0xa194fb4eab262ec9886a119609bbb2800bdd3a2e/) | ✅ Audited |
| L1ERC20Bridge | operational_periphery | manta | n/a | 4 deployments: manta [`0x0d53ce...731470`](./contracts/manta-169/0x0d53ce63f3a72879d543ed6272a081308a731470/); manta `0x5f58bc...fef28c`; base `0x413552...374b1d`; arbitrum `0x5f58bc...fef28c` | ✅ Audited |
| L1ERC20Bridge | operational_periphery | linea | unit-31348 | [`0x62ce24...e630f8`](./contracts/linea-59144/0x62ce247f34dc316f93d3830e4bf10959fce630f8/) | ✅ Audited |
| OptimismL2Gateway | unknown | manta | n/a | 3 deployments: manta [`0x50efc7...726211`](./contracts/manta-169/0x50efc7f1290479cb879473512d89fdc80b726211/); manta `0x55fa52...52235e`; manta `0xbfa352...63283f` | ✅ Audited |
| ValidatorTimelock | governance | linea | n/a | [`0x509ff5...507e01`](./contracts/linea-59144/0x509ff56c152315edee91a2e0f059195519507e01/) | ✅ Audited |
| ZkLink | unknown | arbitrum | n/a | 14 deployments: manta `0x5715de...b8ce05`; manta `0x7c56da...bc88b3`; manta `0xe89635...99cc13`; manta `0xfb0ad0...8f5585`; base `0x314bf0...51de47`; base `0x55fa52...52235e`; base `0x664e1c...a83e10`; base `0xd5941f...d35bd2`; arbitrum [`0x04c6a5...325d1e`](./contracts/arbitrum-42161/0x04c6a52f3bf9f73618cd70f234adb95a73325d1e/); arbitrum `0x31f0c8...7f3611`; arbitrum `0x50efc7...726211`; arbitrum `0x55fa52...52235e`; arbitrum `0x79926e...410db0`; arbitrum `0xaa46d9...81865a` | ✅ Audited |

### ⚠️ Verified + Unaudited (40)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| AdminFacet | unknown | linea | n/a | [`0xce8e69...f35503`](./contracts/linea-59144/0xce8e69a2685c80eb6bd825d0552f44bb34f35503/) | ⚠️ Unaudited |
| Baja | unknown | blast | n/a | [`0x5fe853...ab3204`](./contracts/blast-81457/0x5fe8534a6f96cb01261bd96e98c17c2c1cab3204/) | ⚠️ Unaudited |
| ComplexOrderRouter | adapter | mantle | n/a | [`0x6154dc...8ed3d8`](./contracts/mantle-5000/0x6154dce92267af35c733dba5d20e36ee3f8ed3d8/) | ⚠️ Unaudited |
| CumulativeMerkleDrop | operational_periphery | ethereum | n/a | [`0x1349a8...7b6610`](./contracts/ethereum-1/0x1349a8d352b1971cbebeacf55fb75526f47b6610/) | ⚠️ Unaudited |
| CustomBridgedToken | operational_periphery | linea | unit-31344 (2 proxies) | 2 deployments: linea [`0x3aab22...05a9b4`](./contracts/linea-59144/0x3aab2285ddcddad8edf438c1bab47e1a9d05a9b4/); linea `0xb5bedd...68fc8f` | ⚠️ Unaudited |
| EmptyVerifier | periphery | arbitrum | n/a | 8 deployments: manta `0x437a10...2bbcac`; base `0x624658...c283ab`; base `0x87743f...9a43fb`; base `0xef7007...e80cc7`; base `0xf63e81...e0c3ea`; arbitrum [`0x273d59...7583c0`](./contracts/arbitrum-42161/0x273d59aed2d793167c162e64b9162154b07583c0/); arbitrum `0xa84860...256cd6`; arbitrum `0xf9c947...8eee64` | ⚠️ Unaudited |
| ERC1967Proxy | proxy | scroll | n/a | 3 deployments: manta `0xd784d7...455657`; manta `0xe946ab...ea39d0`; scroll [`0x119b94...4fd1a2`](./contracts/scroll-534352/0x119b9459d9119d07c23ad06778aeabec804fd1a2/) | ⚠️ Unaudited |
| ExecutorFacet | unknown | linea | n/a | [`0x1b1928...7d1206`](./contracts/linea-59144/0x1b19287ce898217d937571eaba97ec50f27d1206/) | ⚠️ Unaudited |
| FastPriceFeed | operational_periphery | mantle | n/a | [`0x391536...a377ca`](./contracts/mantle-5000/0x391536d06480e554cfa60f9e2be0f3bbe5a377ca/) | ⚠️ Unaudited |
| FrogRichToken | token | blast | n/a | [`0x038f1c...27efce`](./contracts/blast-81457/0x038f1c6ed5fccf690a920a27b39366eeef27efce/) | ⚠️ Unaudited |
| GettersFacet | unknown | linea | n/a | [`0xb1d035...12e3cb`](./contracts/linea-59144/0xb1d0354063527e4426c4becbdb75fe0fb112e3cb/) | ⚠️ Unaudited |
| KTX | unknown | mantle | n/a | [`0x779f4e...61159a`](./contracts/mantle-5000/0x779f4e5fb773e17bc8e809f4ef1abb140861159a/) | ⚠️ Unaudited |
| LsdETH | unknown | ethereum | n/a | [`0x9dc7e1...b97c5b`](./contracts/ethereum-1/0x9dc7e196092dac94f0c76cfb020b60fa75b97c5b/) | ⚠️ Unaudited |
| MailboxFacet | unknown | linea | n/a | [`0x11bf5b...5780ba`](./contracts/linea-59144/0x11bf5bc6327f7becb0ae753932a181c8fb5780ba/) | ⚠️ Unaudited |
| Manta | unknown | manta | n/a | [`0x95cef1...c544e5`](./contracts/manta-169/0x95cef13441be50d20ca4558cc0a27b601ac544e5/) | ⚠️ Unaudited |
| MantaMintableERC20WithBridgeFlag | operational_periphery | manta | n/a | 6 deployments: manta [`0x34c7ad...201ce0`](./contracts/manta-169/0x34c7ad65e4163306f8745996688b476914201ce0/); manta `0x77b6f9...1c2300`; manta `0x9bf486...7a2c6c`; manta `0xa53e00...b6527e`; manta `0xbdad40...61fb07`; manta `0xc8d4bc...45b986` | ⚠️ Unaudited |
| MultiCall | periphery | arbitrum | n/a | 5 deployments: manta `0xdc0771...d2208b`; base `0x85079c...8b1f4e`; base `0x98ceda...00673b`; arbitrum [`0x7769c1...3ea458`](./contracts/arbitrum-42161/0x7769c18828569692dfb65affa0856533613ea458/); arbitrum `0xa00509...36fb60` | ⚠️ Unaudited |
| NETH | unknown | ethereum | n/a | [`0xc65720...c7789a`](./contracts/ethereum-1/0xc6572019548dfeba782ba5a2093c836626c7789a/) | ⚠️ Unaudited |
| NethOFTAdapter | adapter | ethereum | n/a | [`0x3343f9...3283ce`](./contracts/ethereum-1/0x3343f9de5612b6f8a433abc3eaae245cfa3283ce/) | ⚠️ Unaudited |
| OBTC | unknown | ethereum | n/a | [`0xb1e128...de0e3c`](./contracts/ethereum-1/0xb1e12802831da99d2d47b6a55049d69bf7de0e3c/) | ⚠️ Unaudited |
| OrderBook | unknown | mantle | n/a | [`0x661d88...471e7c`](./contracts/mantle-5000/0x661d88e548214f5606a0491f03b072fd0f471e7c/) | ⚠️ Unaudited |
| PositionManager | governance | mantle | n/a | [`0x9831aa...f677a0`](./contracts/mantle-5000/0x9831aa46badb308f8e87a7e3ab080adfd4f677a0/) | ⚠️ Unaudited |
| PositionRouter | adapter | mantle | n/a | [`0x8a7f1c...d1bd7c`](./contracts/mantle-5000/0x8a7f1c607306f52ed07f9a705b54869159d1bd7c/) | ⚠️ Unaudited |
| Proxy | proxy | manta | n/a | 20 deployments: manta [`0x028781...7fa131`](./contracts/manta-169/0x028781ceed4a2264466ef5ab73c91603087fa131/); manta `0x5bc75b...a73e61`; base `0x09cb6c...ee1c72`; base `0x161f4b...0477f0`; base `0x683669...2216f5`; base `0x7769c1...3ea458`; base `0x83bc73...c0055c`; base `0xa84860...256cd6`; base `0xaa46d9...81865a`; base `0xe4589e...a1be0d`; arbitrum `0x0c0404...f1e821`; arbitrum `0x2b73ab...e33fe6`; arbitrum `0x43bcb7...b7a7a6`; arbitrum `0x46c8d0...a3fa1b`; arbitrum `0x69bdfb...00688c`; arbitrum `0x95fb80...e85f3c`; arbitrum `0x996bae...6ea506`; arbitrum `0xe469c1...6d344f`; arbitrum `0xed5d1e...082ac3`; linea `0x3e9856...0c2fa1` | ⚠️ Unaudited |
| ProxyAdmin | governance | arbitrum | n/a | [`0xbcf5eb...da237d`](./contracts/arbitrum-42161/0xbcf5eb280f6c476dd57bacbdec8d6b984ada237d/) | ⚠️ Unaudited |
| RadiantOFT | unknown | arbitrum | n/a | [`0x3082cc...50aaa0`](./contracts/arbitrum-42161/0x3082cc23568ea640225c2467653db90e9250aaa0/) | ⚠️ Unaudited |
| RewardDistributor | operational_periphery | mantle | n/a | 2 deployments: mantle [`0x02170f...2e0a5f`](./contracts/mantle-5000/0x02170fea1fd31a26aaf6dd06adf01b36db2e0a5f/); mantle `0x9c5582...32733c` | ⚠️ Unaudited |
| RewardRouter | adapter | mantle | n/a | [`0x207d39...d688ca`](./contracts/mantle-5000/0x207d39314707001ae36f12335dd8b1f65cd688ca/) | ⚠️ Unaudited |
| RewardTracker | unknown | mantle | n/a | [`0x57acdf...81f7ab`](./contracts/mantle-5000/0x57acdfef9d2d2c53e6316b3483ca9a14b481f7ab/) | ⚠️ Unaudited |
| RNethOFTAdapter | adapter | ethereum | n/a | [`0xcea368...8ded56`](./contracts/ethereum-1/0xcea3681131dd151ee72a5c8dbba555cb8b8ded56/) | ⚠️ Unaudited |
| Router | adapter | mantle | n/a | [`0xea02de...dc4583`](./contracts/mantle-5000/0xea02deeb067acec119095845d780665883dc4583/) | ⚠️ Unaudited |
| TinyTigerCatToken | token | blast | n/a | [`0xf782e1...957028`](./contracts/blast-81457/0xf782e172a14ee1c85cd980c15375ba0e87957028/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | proxy | scroll | n/a | 2 deployments: manta `0x44a65d...7168ff`; scroll [`0x3c7c0e...db976c`](./contracts/scroll-534352/0x3c7c0ebfcd5786ef48df5ed127cddeb806db976c/) | ⚠️ Unaudited |
| UpgradeGatekeeper | operational_periphery | arbitrum | n/a | 8 deployments: manta `0x9dc756...bbc88c`; base `0x53d9d2...c6db6a`; base `0x649dfa...7cd82d`; base `0x72343e...f2fcad`; arbitrum [`0x2e8ad1...f4a190`](./contracts/arbitrum-42161/0x2e8ad1434663b209ee59ef1a6612114239f4a190/); arbitrum `0x89f273...24f0cc`; arbitrum `0xd6bbb0...a2e86c`; arbitrum `0xf9f8a1...341a70` | ⚠️ Unaudited |
| Verifier | periphery | base | n/a | 4 deployments: base [`0x5715de...b8ce05`](./contracts/base-8453/0x5715dec4cd747675e47b969d3a15aab909b8ce05/); arbitrum [`0x5715de...b8ce05`](./contracts/arbitrum-42161/0x5715dec4cd747675e47b969d3a15aab909b8ce05/); arbitrum `0x6d6ce5...927962`; linea `0x902c38...400458` | ⚠️ Unaudited |
| Vester | operational_periphery | mantle | n/a | 2 deployments: mantle [`0x2e4f63...132f0c`](./contracts/mantle-5000/0x2e4f63c3ffdf457ff210a29ef10ce3b12c132f0c/); mantle `0xb6f417...6d227c` | ⚠️ Unaudited |
| WBTC | token | mantle | n/a | [`0xcabae6...aebfa2`](./contracts/mantle-5000/0xcabae6f6ea1ecab08ad02fe02ce9a44f09aebfa2/) | ⚠️ Unaudited |
| WithdrawalFinalizer | operational_periphery | linea | n/a | [`0x6fe38b...f414a2`](./contracts/linea-59144/0x6fe38b4a1b540f86072dd36b7df60bc1b4f414a2/) | ⚠️ Unaudited |
| wUSDM | unknown | ethereum | unit-31272 | [`0x57f5e0...af7812`](./contracts/ethereum-1/0x57f5e098cad7a3d1eed53991d4d66c45c9af7812/) | ⚠️ Unaudited |
| ZkLinkPeriphery | periphery | arbitrum | n/a | 14 deployments: manta `0xdd5097...7a3545`; base `0x21fe89...86c3b8`; base `0x31f0c8...7f3611`; base `0x502c84...34af12`; base `0x703651...2a62a2`; base `0xd784d7...455657`; arbitrum [`0x09cb6c...ee1c72`](./contracts/arbitrum-42161/0x09cb6c5a235939258e3f6ae2989cf6f26eee1c72/); arbitrum `0x30b2c7...e81ad9`; arbitrum `0x3203e8...307352`; arbitrum `0x4563c3...cfc027`; arbitrum `0x803460...f2809b`; arbitrum `0x928732...88bc8d`; arbitrum `0xd784d7...455657`; arbitrum `0xe89635...99cc13` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (85)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | manta | n/a | `0x1f282e...d83ce2` | ❓ Unverified |
| UnnamedContract | unknown | manta | n/a | `0x649dfa...7cd82d` | ❓ Unverified |
| UnnamedContract | unknown | manta | n/a | `0xa898e1...ee5b09` | ❓ Unverified |
| UnnamedContract | unknown | manta | n/a | `0xc8a31a...250e67` | ❓ Unverified |
| UnnamedContract | unknown | zksync-era | n/a | `0x67ba43...77bf2f` | ❓ Unverified |
| UnnamedContract | unknown | zksync-era | n/a | `0x7187db...68c44a` | ❓ Unverified |
| UnnamedContract | unknown | zksync-era | n/a | `0xab3ddb...bf2d08` | ❓ Unverified |
| UnnamedContract | unknown | zksync-era | n/a | `0xafe8c7...83273a` | ❓ Unverified |
| UnnamedContract | unknown | zksync-era | n/a | `0xc203a2...182535` | ❓ Unverified |
| UnnamedContract | unknown | zksync-era | n/a | `0xebeaf6...34ade0` | ❓ Unverified |
| UnnamedContract | unknown | merlin | n/a | `0x41d903...fb0f71` | ❓ Unverified |
| UnnamedContract | unknown | merlin | n/a | `0xad16ed...44b6b6` | ❓ Unverified |
| UnnamedContract | unknown | merlin | n/a | `0xf5b90f...661d73` | ❓ Unverified |
| UnnamedContract | unknown | merlin | n/a | `0xfc385a...0fcede` | ❓ Unverified |
| UnnamedContract | unknown | mantle | n/a | `0xd7ceb9...fc081a` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x067c71...ea47ca` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x0c0404...f1e821` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x0c89bc...2907aa` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x46c8d0...a3fa1b` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x4ac2cc...bee425` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x50efc7...726211` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x5bd512...326eaa` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x67ebb0...accb3e` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x70df54...c2ed88` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x79926e...410db0` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x7c56da...bc88b3` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x803460...f2809b` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xa9f1f8...680027` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xad7e3e...878581` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xdd5097...7a3545` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xe89635...99cc13` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xe946ab...ea39d0` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xebda7f...068105` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xfb0ad0...8f5585` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x028781...7fa131` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x03b485...227ff3` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x08ca91...85e388` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x119b94...4fd1a2` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x144a96...19a491` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x161f4b...0477f0` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x1b8605...9d0d42` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x20039e...51df38` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x24b9f1...4efe95` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x2d28ff...ac6c2f` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x33ab2c...b72b10` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x34d517...ecbf93` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x3717aa...3a611b` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x3c3f4b...9aa98e` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x57da86...34a9c8` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x603d3f...8dead2` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x6a8324...cba1f1` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x6c2256...c20bc7` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x72343e...f2fcad` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x786980...d47c63` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x7f0013...36e356` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x7f3bc4...185c5c` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x81dee5...f81f8c` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x941ec8...0a190c` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x9a0bb8...33ef1c` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x9f74c1...41c0d1` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xacb89c...818730` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xb08af9...78abd8` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xb8d9f0...a3a2d9` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xc3392b...0686bb` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xc8b602...3e427c` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xcdcdf6...80613d` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xd3aaa3...d79e41` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xd5941f...d35bd2` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xd7425f...843b26` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xd8428a...f1bce7` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xd9e5c4...03134f` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xdc0771...d2208b` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xdcaa28...49cab6` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xe2510e...25ddb4` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xe3469d...430ff2` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xe946ab...ea39d0` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xebda7f...068105` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xf3727a...6a0e94` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xf4fe03...2dd32a` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xfa0e19...a3afe2` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xfb8836...31ff78` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xfcf873...969110` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xfeaec8...2ae1c0` | ❓ Unverified |
| UnnamedContract | unknown | scroll | n/a | `0x986c90...388e92` | ❓ Unverified |
| UnnamedContract | unknown | scroll | n/a | `0xc97c5e...a331b3` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [Secure3_zklink_Nova_2024.3.pdf](https://github.com/zkLinkProtocol/zklink-audit-report/blob/master/zkLink%20Nova/Secure3_zklink_Nova_2024.3.pdf) | Secure3 | Audit | 2024-03 | stale | Direct | contract_name | 18 | high |
| [ABDK_zkLink_Nova_2024.3.pdf](https://github.com/zkLinkProtocol/zklink-audit-report/blob/master/zkLink%20Nova/ABDK_zkLink_Nova_2024.3.pdf) | ABDK | Audit | 2024-03 | stale | Direct | contract_name | 19 | high |
| [Secure3_zkLink_Nova_mergeToken & bridgeUpdate_2024.4](https://github.com/zkLinkProtocol/zklink-audit-report/blob/master/zkLink%20Nova/Secure3_zkLink_Nova_mergeToken_2024.4.pdf) | Secure3 | Audit | 2024-04 | stale | Direct | contract_name | 5 | high |
| [ABDK_zkLink_Mergetoken_2024.7.pdf](https://github.com/zkLinkProtocol/zklink-audit-report/blob/master/zkLink%20Nova/ABDK_zkLink_Mergetoken_2024.7.pdf) | ABDK | Audit | 2024-07 | aging | Direct | contract_name | 5 | high |
| [Secure3_zkLink Nova Arbitrator Upgrade_2024.4](https://github.com/zkLinkProtocol/zklink-audit-report/blob/master/zkLink%20Nova/Secure3_zkLink%20Nova%20Arbitrator%20Upgrade_2024.4.pdf) | Secure3 | Audit | 2024-04 | stale | Direct | contract_name | 14 | high |
| [ABDK_zkLink_CostOptimisation_2024.6.pdf](https://github.com/zkLinkProtocol/zklink-audit-report/blob/master/zkLink%20Nova/ABDK_zkLink_CostOptimisation_2024.6.pdf) | ABDK | Audit | 2024-06 | stale | Direct | contract_name | 14 | high |
| [zkSync Era Governance Audit Report](https://www.openzeppelin.com/news/december-diff-and-governance-audit) | OpenZeppelin | Audit | 2024-01 | stale | Direct | contract_name | 7 | high |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| linea | [`0xce8e69...f35503`](./contracts/linea-59144/0xce8e69a2685c80eb6bd825d0552f44bb34f35503/) | AdminFacet | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| mantle | [`0x6154dc...8ed3d8`](./contracts/mantle-5000/0x6154dce92267af35c733dba5d20e36ee3f8ed3d8/) | ComplexOrderRouter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1349a8...7b6610`](./contracts/ethereum-1/0x1349a8d352b1971cbebeacf55fb75526f47b6610/) | CumulativeMerkleDrop | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x273d59...7583c0`](./contracts/arbitrum-42161/0x273d59aed2d793167c162e64b9162154b07583c0/) | EmptyVerifier | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| linea | [`0x1b1928...7d1206`](./contracts/linea-59144/0x1b19287ce898217d937571eaba97ec50f27d1206/) | ExecutorFacet | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| mantle | [`0x391536...a377ca`](./contracts/mantle-5000/0x391536d06480e554cfa60f9e2be0f3bbe5a377ca/) | FastPriceFeed | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| linea | [`0xb1d035...12e3cb`](./contracts/linea-59144/0xb1d0354063527e4426c4becbdb75fe0fb112e3cb/) | GettersFacet | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| mantle | [`0x779f4e...61159a`](./contracts/mantle-5000/0x779f4e5fb773e17bc8e809f4ef1abb140861159a/) | KTX | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x9dc7e1...b97c5b`](./contracts/ethereum-1/0x9dc7e196092dac94f0c76cfb020b60fa75b97c5b/) | LsdETH | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| linea | [`0x11bf5b...5780ba`](./contracts/linea-59144/0x11bf5bc6327f7becb0ae753932a181c8fb5780ba/) | MailboxFacet | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x7769c1...3ea458`](./contracts/arbitrum-42161/0x7769c18828569692dfb65affa0856533613ea458/) | MultiCall | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xc65720...c7789a`](./contracts/ethereum-1/0xc6572019548dfeba782ba5a2093c836626c7789a/) | NETH | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xb1e128...de0e3c`](./contracts/ethereum-1/0xb1e12802831da99d2d47b6a55049d69bf7de0e3c/) | OBTC | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| mantle | [`0x661d88...471e7c`](./contracts/mantle-5000/0x661d88e548214f5606a0491f03b072fd0f471e7c/) | OrderBook | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| mantle | [`0x9831aa...f677a0`](./contracts/mantle-5000/0x9831aa46badb308f8e87a7e3ab080adfd4f677a0/) | PositionManager | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| manta | [`0x028781...7fa131`](./contracts/manta-169/0x028781ceed4a2264466ef5ab73c91603087fa131/) | Proxy | proxy | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| mantle | [`0x207d39...d688ca`](./contracts/mantle-5000/0x207d39314707001ae36f12335dd8b1f65cd688ca/) | RewardRouter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xcea368...8ded56`](./contracts/ethereum-1/0xcea3681131dd151ee72a5c8dbba555cb8b8ded56/) | RNethOFTAdapter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| mantle | [`0xea02de...dc4583`](./contracts/mantle-5000/0xea02deeb067acec119095845d780665883dc4583/) | Router | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x2e8ad1...f4a190`](./contracts/arbitrum-42161/0x2e8ad1434663b209ee59ef1a6612114239f4a190/) | UpgradeGatekeeper | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x5715de...b8ce05`](./contracts/base-8453/0x5715dec4cd747675e47b969d3a15aab909b8ce05/) | Verifier | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| linea | [`0x6fe38b...f414a2`](./contracts/linea-59144/0x6fe38b4a1b540f86072dd36b7df60bc1b4f414a2/) | WithdrawalFinalizer | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x09cb6c...ee1c72`](./contracts/arbitrum-42161/0x09cb6c5a235939258e3f6ae2989cf6f26eee1c72/) | ZkLinkPeriphery | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 83 |
| upstream | 1 |
| standard_library | 6 |
| needs_review | 42 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=7
- Match method counts: extraction_exact=497

Fork inheritance lineage and inherited audits are included when available.
