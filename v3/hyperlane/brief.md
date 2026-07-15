# Agentic Audit Brief: Hyperlane

## Export Authority

- Production state: **published scope**
- Raw selected rows: 0 across 0 audit(s)
- Eligible audit results: 18 (0 matched; 18 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e9e09d06b414f9cd852c36a58d42ce16279465f2d9791cd2a8178f3f54b89ecd`

## Project Overview

- Project: Hyperlane (`hyperlane`)
- Website: [https://www.hyperlane.xyz/](https://www.hyperlane.xyz/)
- Lifecycle: unknown
- Generated: 2026-07-15T18:30:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: arbitrum, arbitrum-sepolia, avalanche, avalanche-fuji, base, base-sepolia, berachain, bitlayer, blast, bob, boba, bsc, celo, ethereum, fraxtal, gnosis, hashkey, hyperliquid, ink, kaia, linea, lukso, manta-pacific, mantle, megaeth, metis, mode, monad, opbnb, optimism, optimism-sepolia, plasma, polygon, polygon-amoy, scroll, sei, sepolia, sonic, swellchain, unichain, x-layer, zksync-era, zora
- Contract surface: 218 unique implementations (218 raw deployments)
- Coverage basis: 0/1 confirmed own live verified implementations (0.0%); conservative 0.0% with 0 needs-review implementation(s)
- DeFi Llama TVL: $95,364,597.33
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for Hyperlane. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 1 contract row(s) across arbitrum, arbitrum-sepolia, avalanche, avalanche-fuji, base, base-sepolia, berachain, bitlayer, blast, bob, boba, bsc, celo, ethereum, fraxtal, gnosis, hashkey, hyperliquid, ink, kaia, linea, lukso, manta-pacific, mantle, megaeth, metis, mode, monad, opbnb, optimism, optimism-sepolia, plasma, polygon, polygon-amoy, sei, sepolia, sonic, swellchain, unichain, x-layer, zksync-era. Structural roles: 1 supporting. 1 row(s) use upgradeable patterns.

## Logic Topography

- Exact-run contract rows: 1
- Structural roles: supporting (1)
- Contract kinds: contract (1)
- Detected standards: erc1967proxy (1)
- Frameworks: layerzero (1), openzeppelin (1), openzeppelin-upgradeable (1)
- Upgradeable-pattern rows: 1

## Fork Analysis

0 of 127 contracts are derived from known codebases. 127 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0x36fda9...bfef35`, chain 1)
- UnnamedContract (`0x48e6c3...5f8cca`, chain 1)
- UnnamedContract (`0xc005dc...65d239`, chain 1)
- UnnamedContract (`0xc00b94...72a4a9`, chain 1)
- UnnamedContract (`0x36fda9...bfef35`, chain 10)
- UnnamedContract (`0x3e343d...652e75`, chain 10)
- UnnamedContract (`0x68ee9b...b2e28f`, chain 10)
- UnnamedContract (`0xd4c190...dcc80d`, chain 10)
- UnnamedContract (`0x062200...94784e`, chain 42)
- UnnamedContract (`0x2f2afa...4a85a7`, chain 42)
- UnnamedContract (`0x4e55ad...9c39bd`, chain 42)
- UnnamedContract (`0x7e0956...100362`, chain 42)
- UnnamedContract (`0x2971b9...efe8a4`, chain 56)
- UnnamedContract (`0x36fda9...bfef35`, chain 56)
- UnnamedContract (`0xf453b5...959897`, chain 56)
- UnnamedContract (`0xfdb9cd...484f26`, chain 56)
- UnnamedContract (`0x2684c6...c61645`, chain 100)
- UnnamedContract (`0x36fda9...bfef35`, chain 100)
- UnnamedContract (`0xad09d7...0bb74f`, chain 100)
- UnnamedContract (`0xef0ade...126362`, chain 100)
- UnnamedContract (`0x3a464f...e0775e`, chain 130)
- UnnamedContract (`0x43320f...5a021b`, chain 130)
- UnnamedContract (`0x9eaac3...fc9e47`, chain 130)
- UnnamedContract (`0xbb88a3...6d97de`, chain 130)
- UnnamedContract (`0x36fda9...bfef35`, chain 137)
- UnnamedContract (`0x5d934f...6b96bb`, chain 137)
- UnnamedContract (`0x73fbd2...e2dff6`, chain 137)
- UnnamedContract (`0xd8b641...ff04a3`, chain 137)
- UnnamedContract (`0x284226...cc5d54`, chain 143)
- UnnamedContract (`0x3a464f...e0775e`, chain 143)
- UnnamedContract (`0x7947b7...66e591`, chain 143)
- UnnamedContract (`0x845236...3a89ca`, chain 143)
- UnnamedContract (`0x3a464f...e0775e`, chain 146)
- UnnamedContract (`0x4ee9de...211de7`, chain 146)
- UnnamedContract (`0xdc1508...d4b0f6`, chain 146)
- UnnamedContract (`0xefad3f...2c3df6`, chain 146)
- UnnamedContract (`0x3a867f...172aa7`, chain 177)
- UnnamedContract (`0x5b7a80...f67e3b`, chain 177)
- UnnamedContract (`0xd23343...35399f`, chain 177)
- UnnamedContract (`0xd79a14...00086e`, chain 177)
- UnnamedContract (`0x0054d1...cca9bd`, chain 196)
- UnnamedContract (`0x2f2afa...4a85a7`, chain 196)
- UnnamedContract (`0x39d3c2...6f33ac`, chain 196)
- UnnamedContract (`0x4848d5...dd79d8`, chain 196)
- UnnamedContract (`0x3a464f...e0775e`, chain 204)
- UnnamedContract (`0x76f2cc...7285fb`, chain 204)
- UnnamedContract (`0x8847a9...bab5dc`, chain 204)
- UnnamedContract (`0xcdd89f...1fe5ab`, chain 204)
- UnnamedContract (`0x2f9db5...d135e3`, chain 252)
- UnnamedContract (`0x62b759...840c05`, chain 252)
- UnnamedContract (`0x8358d8...afb147`, chain 252)
- UnnamedContract (`0xd59a20...18f594`, chain 252)
- UnnamedContract (`0x6bd0a2...d8cb6e`, chain 324)
- UnnamedContract (`0x823500...1487ee`, chain 324)
- UnnamedContract (`0xd55078...9f636d`, chain 324)
- UnnamedContract (`0x1cf975...3142e9`, chain 999)
- UnnamedContract (`0x3862a9...5690e3`, chain 999)
- UnnamedContract (`0x3a464f...e0775e`, chain 999)
- UnnamedContract (`0x4eb0d9...9c6fce`, chain 999)
- UnnamedContract (`0x2f2afa...4a85a7`, chain 1329)
- UnnamedContract (`0xa70482...98d292`, chain 1329)
- UnnamedContract (`0xca1b69...bcfe49`, chain 1329)
- UnnamedContract (`0xdb670e...f8ed54`, chain 1329)
- UnnamedContract (`0x3a464f...e0775e`, chain 1923)
- UnnamedContract (`0x5c0215...cb4764`, chain 1923)
- UnnamedContract (`0x95fb6c...1c35b7`, chain 1923)
- UnnamedContract (`0xbc53da...cc8853`, chain 1923)
- UnnamedContract (`0x2ff6cf...d8b310`, chain 4326)
- UnnamedContract (`0xd23343...35399f`, chain 4326)
- UnnamedContract (`0xe2ee93...2ba2a6`, chain 4326)
- UnnamedContract (`0xf9ae87...ecb73f`, chain 4326)
- UnnamedContract (`0x31e819...b15751`, chain 5000)
- UnnamedContract (`0x398633...1176aa`, chain 5000)
- UnnamedContract (`0x5332d1...8db86d`, chain 5000)
- UnnamedContract (`0x62b759...840c05`, chain 5000)
- UnnamedContract (`0x3a867f...172aa7`, chain 8217)
- UnnamedContract (`0x696348...21df6d`, chain 8217)
- UnnamedContract (`0xcda455...469c96`, chain 8217)
- UnnamedContract (`0xcfe6db...8538a7`, chain 8217)
- UnnamedContract (`0x19dc38...480117`, chain 8453)
- UnnamedContract (`0x44647c...384d07`, chain 8453)
- UnnamedContract (`0xb7c930...8d5f03`, chain 8453)
- UnnamedContract (`0xea87ae...f64f1d`, chain 8453)
- UnnamedContract (`0x3a464f...e0775e`, chain 9745)
- UnnamedContract (`0x6d4813...52704f`, chain 9745)
- UnnamedContract (`0x9fe454...0cd5a9`, chain 9745)
- UnnamedContract (`0xa7d42b...fd2cc9`, chain 9745)
- UnnamedContract (`0x12582c...1e69f0`, chain 34443)
- UnnamedContract (`0x2f2afa...4a85a7`, chain 34443)
- UnnamedContract (`0x860ec5...ff3c50`, chain 34443)
- UnnamedContract (`0xe2ee93...2ba2a6`, chain 34443)
- UnnamedContract (`0x36fda9...bfef35`, chain 42161)
- UnnamedContract (`0x748040...6a0930`, chain 42161)
- UnnamedContract (`0x979ca5...daabb9`, chain 42161)
- UnnamedContract (`0xf90a3d...7760d7`, chain 42161)
- UnnamedContract (`0x04db77...70d366`, chain 42220)
- UnnamedContract (`0x1ea7ac...312953`, chain 42220)
- UnnamedContract (`0x36fda9...bfef35`, chain 42220)
- UnnamedContract (`0x50da3b...7954bb`, chain 42220)
- UnnamedContract (`0x2c5868...8a6587`, chain 43114)
- UnnamedContract (`0x36fda9...bfef35`, chain 43114)
- UnnamedContract (`0x84eea6...cce95a`, chain 43114)
- UnnamedContract (`0xff06af...1febd6`, chain 43114)
- UnnamedContract (`0x55ba00...2f9ae3`, chain 57073)
- UnnamedContract (`0x65dcf8...a1d615`, chain 57073)
- UnnamedContract (`0x7f50c5...1d7b39`, chain 57073)
- UnnamedContract (`0xa8a311...473642`, chain 57073)
- UnnamedContract (`0x273bc6...6aef42`, chain 59144)
- UnnamedContract (`0xbfc8dc...dc9e55`, chain 59144)
- UnnamedContract (`0xc077a0...c01dd7`, chain 59144)
- UnnamedContract (`0x781be4...56dafb`, chain 60808)
- UnnamedContract (`0x8358d8...afb147`, chain 60808)
- UnnamedContract (`0xa6f0a3...3a9fa8`, chain 60808)
- UnnamedContract (`0xe03dad...6aaa2b`, chain 60808)
- UnnamedContract (`0x7f50c5...1d7b39`, chain 80094)
- UnnamedContract (`0x82540c...2e0f3e`, chain 80094)
- UnnamedContract (`0x84fcd6...c32f27`, chain 80094)
- UnnamedContract (`0x8f2387...419532`, chain 80094)
- UnnamedContract (`0x17e216...10ac84`, chain 81457)
- UnnamedContract (`0x3a867f...172aa7`, chain 81457)
- UnnamedContract (`0x7d58d7...63227e`, chain 81457)
- UnnamedContract (`0xc9b8ea...b26465`, chain 81457)
- UnnamedContract (`0x3a464f...e0775e`, chain 200901)
- UnnamedContract (`0x441a01...b17575`, chain 200901)
- UnnamedContract (`0xbb2254...6c20fc`, chain 200901)
- UnnamedContract (`0xe0208d...9472fd`, chain 200901)
- TransparentUpgradeableProxy (`0x02d16b...82c4d9`, chain 59144)

## Contract Surface Quality

- Logic-topography rows: 1; live-surface rows included: 1 (1 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 127/152 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 0/1 (0.0%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 127 own, 18 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 73 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 9
- Confirmed-live implementations: 127 of 218 unique; 91 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 0/67
- Verified + Unaudited implementations: 67
- Verified by bytecode match: 0
- Unverified implementations: 151
- Unique implementations: 218
- Raw deployments: 218
- Audits discovered: 17 (17 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2025-06 (aging)
- Audit staleness (calendar age): 0 fresh, 10 aging, 7 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (67)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| AbacusConnectionManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x02d16b...82c4d9` | ⚠️ Unaudited |
| AmountRoutingHook | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mode | n/a | `0x08b446...9f5dee` | ⚠️ Unaudited |
| AmountRoutingIsm | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x016529...a3c4a9` | ⚠️ Unaudited |
| CCIPHook | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0x00acc2...5da583` | ⚠️ Unaudited |
| CCIPIsm | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x0e389a...b46659` | ⚠️ Unaudited |
| CircleBridgeAdapter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x0bff79...bbc2ed` | ⚠️ Unaudited |
| DefaultFallbackRoutingIsm | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x00cff6...cbb476` | ⚠️ Unaudited |
| DefaultHook | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mode | n/a | `0x004640...214bd3` | ⚠️ Unaudited |
| DistributionPoolProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | manta-pacific | n/a | `0x0d6312...699ae4` | ⚠️ Unaudited |
| DomainRoutingHook | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x00acc2...5da583` | ⚠️ Unaudited |
| DomainRoutingIsmFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x0b48a7...fd66f7` | ⚠️ Unaudited |
| ECDSAStakeRegistry | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x272cf0...d48910` | ⚠️ Unaudited |
| EverclearEthBridge | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x02e058...c51260` | ⚠️ Unaudited |
| FallbackDomainRoutingHook | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x01e92d...f6c0fd` | ⚠️ Unaudited |
| HelloWorld | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x00ecd1...927eaf` | ⚠️ Unaudited |
| HypERC20 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mode | n/a | `0x003fdf...c1147e` | ⚠️ Unaudited |
| HypERC20Collateral | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | `0x01348f...b80f37` | ⚠️ Unaudited |
| HypERC4626 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x04b833...f1a1dc` | ⚠️ Unaudited |
| HypERC721URICollateral | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4ff0fc...ba4f62` | ⚠️ Unaudited |
| HypERC721URIStorage | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0x426d6a...132b7d` | ⚠️ Unaudited |
| HyperlaneArbiter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x088470...ec6da4` | ⚠️ Unaudited |
| HyperlaneServiceManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x296af8...d30682` | ⚠️ Unaudited |
| HyperlaneTribunal | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x339b23...7984f1` | ⚠️ Unaudited |
| HyperToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7ea7ae...9d48fe` | ⚠️ Unaudited |
| HypMinter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x36d224...5bd0c1` | ⚠️ Unaudited |
| HypNative | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x05a674...0ddba0` | ⚠️ Unaudited |
| HypXERC20 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | fraxtal | n/a | `0x005c5b...31a5bc` | ⚠️ Unaudited |
| HypXERC20Lockbox | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0x10ed03...6aa053` | ⚠️ Unaudited |
| InboxValidatorManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x086ef9...18301f` | ⚠️ Unaudited |
| InterchainAccountIsm | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x0389fa...abcb48` | ⚠️ Unaudited |
| InterchainAccountRouter | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | optimism | n/a | `0x03d6cc...d901ad` | ⚠️ Unaudited |
| LinearFee | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x01d89d...01471a` | ⚠️ Unaudited |
| LiquidityLayerRouter | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x75fe1c...22d8e1` | ⚠️ Unaudited |
| ManagedXERC20Lockbox | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x07e437...3f7f31` | ⚠️ Unaudited |
| MerkleDistributor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0a4e39...9386bf` | ⚠️ Unaudited |
| MerkleDistributorWithDeadline | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x04c0ad...ce1eeb` | ⚠️ Unaudited |
| MerkleTreeHook | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mode | n/a | `0x005c5b...31a5bc` | ⚠️ Unaudited |
| MultisigIsm | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x32b92b...36d04c` | ⚠️ Unaudited |
| Network | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3d92e7...5cd4de` | ⚠️ Unaudited |
| Outbox | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | `0x0761b0...7f5004` | ⚠️ Unaudited |
| OutboxValidatorManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0x1ab68d...724555` | ⚠️ Unaudited |
| PausableHook | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x05318b...2546da` | ⚠️ Unaudited |
| PausableIsm | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x00e401...6c11ea` | ⚠️ Unaudited |
| ProxyAdmin | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x0007b3...ab0627` | ⚠️ Unaudited |
| RoutingFee | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xa24205...239a01` | ⚠️ Unaudited |
| StagingToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x17736d...40f78d` | ⚠️ Unaudited |
| StaticAggregationHookFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | manta-pacific | n/a | `0x0761b0...7f5004` | ⚠️ Unaudited |
| StaticAggregationIsmFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x070d4f...0705fc` | ⚠️ Unaudited |
| StaticMerkleRootWeightedMultisigIsmFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | manta-pacific | n/a | `0x0a5d83...54f2c5` | ⚠️ Unaudited |
| StaticMessageIdMultisigIsmFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x113d00...9fb189` | ⚠️ Unaudited |
| StaticMessageIdWeightedMultisigIsmFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x17736d...40f78d` | ⚠️ Unaudited |
| StaticMultisigIsmFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x21581d...1ed9cc` | ⚠️ Unaudited |
| StaticProtocolFee | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8b05bf...79e6d8` | ⚠️ Unaudited |
| StorageGasOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x03b260...03c5af` | ⚠️ Unaudited |
| TestRecipient | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x007174...71cce2` | ⚠️ Unaudited |
| TimelockController | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | manta-pacific | n/a | `0x004640...214bd3` | ⚠️ Unaudited |
| TokenBridgeCctp | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | optimism | n/a | `0x004879...c7f867` | ⚠️ Unaudited |
| TokenBridgeCctpV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x01bfbc...fc278c` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | sei | n/a | `0x018ee5...b39beb` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | project_anchor | own_supporting | 1 | linea | unit-242870 | `0x02d16b...82c4d9` | ⚠️ Unaudited |
| TrustedRelayerIsm | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x0cde89...26253b` | ⚠️ Unaudited |
| UpgradeBeacon | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x0d6312...699ae4` | ⚠️ Unaudited |
| UpgradeBeaconController | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x02d16b...82c4d9` | ⚠️ Unaudited |
| UpgradeBeaconProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x02d16b...82c4d9` | ⚠️ Unaudited |
| UpgradeBeaconProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | `0x02d16b...82c4d9` | ⚠️ Unaudited |
| ValidatorAnnounce | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0x062200...94784e` | ⚠️ Unaudited |
| XERC20Lockbox | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x271f31...ed3858` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (151)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-242716 | `0x36fda9...bfef35` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-242718 | `0x48e6c3...5f8cca` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-242722 | `0xc005dc...65d239` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-242723 | `0xc00b94...72a4a9` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-242724 | `0x36fda9...bfef35` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-242725 | `0x3e343d...652e75` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-242726 | `0x68ee9b...b2e28f` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-242727 | `0xd4c190...dcc80d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | lukso | unit-242789 | `0x062200...94784e` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | lukso | unit-242790 | `0x2f2afa...4a85a7` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | lukso | unit-242791 | `0x4e55ad...9c39bd` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | lukso | unit-242792 | `0x7e0956...100362` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-242825 | `0x2971b9...efe8a4` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-242826 | `0x36fda9...bfef35` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-242827 | `0xf453b5...959897` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-242828 | `0xfdb9cd...484f26` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | gnosis | unit-242728 | `0x2684c6...c61645` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | gnosis | unit-242729 | `0x36fda9...bfef35` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | gnosis | unit-242730 | `0xad09d7...0bb74f` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | gnosis | unit-242731 | `0xef0ade...126362` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | unichain | unit-242738 | `0x3a464f...e0775e` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | unichain | unit-242739 | `0x43320f...5a021b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | unichain | unit-242740 | `0x9eaac3...fc9e47` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | unichain | unit-242741 | `0xbb88a3...6d97de` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-242746 | `0x36fda9...bfef35` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-242747 | `0x5d934f...6b96bb` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-242748 | `0x73fbd2...e2dff6` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-242749 | `0xd8b641...ff04a3` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | monad | unit-242750 | `0x284226...cc5d54` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | monad | unit-242751 | `0x3a464f...e0775e` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | monad | unit-242752 | `0x7947b7...66e591` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | monad | unit-242753 | `0x845236...3a89ca` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | sonic | unit-242754 | `0x3a464f...e0775e` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | sonic | unit-242755 | `0x4ee9de...211de7` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | sonic | unit-242756 | `0xdc1508...d4b0f6` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | sonic | unit-242757 | `0xefad3f...2c3df6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | manta-pacific | n/a | `0x149db7...f8f112` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | manta-pacific | n/a | `0x620ffe...6976ea` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | hashkey | unit-242758 | `0x3a867f...172aa7` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | hashkey | unit-242759 | `0x5b7a80...f67e3b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | hashkey | unit-242760 | `0xd23343...35399f` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | hashkey | unit-242761 | `0xd79a14...00086e` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | x-layer | unit-242766 | `0x0054d1...cca9bd` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | x-layer | unit-242767 | `0x2f2afa...4a85a7` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | x-layer | unit-242768 | `0x39d3c2...6f33ac` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | x-layer | unit-242769 | `0x4848d5...dd79d8` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | opbnb | unit-242774 | `0x3a464f...e0775e` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | opbnb | unit-242775 | `0x76f2cc...7285fb` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | opbnb | unit-242776 | `0x8847a9...bab5dc` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | opbnb | unit-242777 | `0xcdd89f...1fe5ab` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | fraxtal | unit-242778 | `0x2f9db5...d135e3` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | fraxtal | unit-242779 | `0x62b759...840c05` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | fraxtal | unit-242780 | `0x8358d8...afb147` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | fraxtal | unit-242781 | `0xd59a20...18f594` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | boba | n/a | `0x625324...35b404` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | boba | n/a | `0x9eaac3...fc9e47` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | boba | n/a | `0xbb88a3...6d97de` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | zksync-era | unit-242782 | `0x6bd0a2...d8cb6e` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | zksync-era | unit-242783 | `0x823500...1487ee` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | zksync-era | unit-242784 | `0xd55078...9f636d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | hyperliquid | unit-242866 | `0x1cf975...3142e9` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | hyperliquid | unit-242867 | `0x3862a9...5690e3` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | hyperliquid | unit-242868 | `0x3a464f...e0775e` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | hyperliquid | unit-242869 | `0x4eb0d9...9c6fce` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0x04bd82...27336e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0x2c61cd...d62e67` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | sei | unit-242742 | `0x2f2afa...4a85a7` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | sei | unit-242743 | `0xa70482...98d292` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | sei | unit-242744 | `0xca1b69...bcfe49` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | sei | unit-242745 | `0xdb670e...f8ed54` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | swellchain | unit-242762 | `0x3a464f...e0775e` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | swellchain | unit-242763 | `0x5c0215...cb4764` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | swellchain | unit-242764 | `0x95fb6c...1c35b7` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | swellchain | unit-242765 | `0xbc53da...cc8853` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | megaeth | unit-242817 | `0x2ff6cf...d8b310` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | megaeth | unit-242818 | `0xd23343...35399f` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | megaeth | unit-242819 | `0xe2ee93...2ba2a6` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | megaeth | unit-242820 | `0xf9ae87...ecb73f` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | mantle | unit-242821 | `0x31e819...b15751` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | mantle | unit-242822 | `0x398633...1176aa` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | mantle | unit-242823 | `0x5332d1...8db86d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | mantle | unit-242824 | `0x62b759...840c05` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | kaia | unit-242851 | `0x3a867f...172aa7` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | kaia | unit-242852 | `0x696348...21df6d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | kaia | unit-242853 | `0xcda455...469c96` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | kaia | unit-242854 | `0xcfe6db...8538a7` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-242855 | `0x19dc38...480117` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-242856 | `0x44647c...384d07` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-242857 | `0xb7c930...8d5f03` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-242858 | `0xea87ae...f64f1d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | plasma | unit-242862 | `0x3a464f...e0775e` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | plasma | unit-242863 | `0x6d4813...52704f` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | plasma | unit-242864 | `0x9fe454...0cd5a9` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | plasma | unit-242865 | `0xa7d42b...fd2cc9` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | mode | unit-242785 | `0x12582c...1e69f0` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | mode | unit-242786 | `0x2f2afa...4a85a7` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | mode | unit-242787 | `0x860ec5...ff3c50` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | mode | unit-242788 | `0xe2ee93...2ba2a6` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-242793 | `0x36fda9...bfef35` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-242794 | `0x748040...6a0930` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-242796 | `0x979ca5...daabb9` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-242798 | `0xf90a3d...7760d7` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | celo | unit-242803 | `0x04db77...70d366` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | celo | unit-242805 | `0x1ea7ac...312953` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | celo | unit-242806 | `0x36fda9...bfef35` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | celo | unit-242807 | `0x50da3b...7954bb` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | avalanche-fuji | unit-242810 | `0x44a7e1...58d398` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | avalanche-fuji | unit-242811 | `0x5b6cff...35b3b0` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | avalanche-fuji | unit-242812 | `0x9ff6ac...c2f612` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | avalanche | unit-242813 | `0x2c5868...8a6587` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | avalanche | unit-242814 | `0x36fda9...bfef35` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | avalanche | unit-242815 | `0x84eea6...cce95a` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | avalanche | unit-242816 | `0xff06af...1febd6` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ink | unit-242829 | `0x55ba00...2f9ae3` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ink | unit-242830 | `0x65dcf8...a1d615` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ink | unit-242831 | `0x7f50c5...1d7b39` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ink | unit-242832 | `0xa8a311...473642` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | linea | unit-242833 | `0x273bc6...6aef42` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | linea | unit-242834 | `0xbfc8dc...dc9e55` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | linea | unit-242835 | `0xc077a0...c01dd7` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bob | unit-242836 | `0x781be4...56dafb` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bob | unit-242837 | `0x8358d8...afb147` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bob | unit-242838 | `0xa6f0a3...3a9fa8` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bob | unit-242839 | `0xe03dad...6aaa2b` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | polygon-amoy | unit-242840 | `0x04438e...61ea48` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | polygon-amoy | unit-242841 | `0x541484...414517` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | polygon-amoy | unit-242842 | `0xddf4c3...ae6e75` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | berachain | unit-242843 | `0x7f50c5...1d7b39` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | berachain | unit-242844 | `0x82540c...2e0f3e` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | berachain | unit-242845 | `0x84fcd6...c32f27` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | berachain | unit-242846 | `0x8f2387...419532` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | blast | unit-242847 | `0x17e216...10ac84` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | blast | unit-242848 | `0x3a867f...172aa7` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | blast | unit-242849 | `0x7d58d7...63227e` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | blast | unit-242850 | `0xc9b8ea...b26465` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | base-sepolia | unit-242859 | `0x6966b0...e02039` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | base-sepolia | unit-242860 | `0x783c4a...3ae213` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | base-sepolia | unit-242861 | `0x86fb9f...f67afd` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bitlayer | unit-242770 | `0x3a464f...e0775e` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bitlayer | unit-242771 | `0x441a01...b17575` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bitlayer | unit-242772 | `0xbb2254...6c20fc` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bitlayer | unit-242773 | `0xe0208d...9472fd` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | arbitrum-sepolia | unit-242800 | `0x598fac...cb71f8` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | arbitrum-sepolia | unit-242801 | `0x6c1364...13f78c` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | arbitrum-sepolia | unit-242802 | `0xad34a6...6e031c` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-242732 | `0x4917a9...7f2d0d` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-242733 | `0xedc1a3...370c07` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-242734 | `0xffaef0...884766` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | optimism-sepolia | unit-242735 | `0x6966b0...e02039` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | optimism-sepolia | unit-242736 | `0x783c4a...3ae213` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | optimism-sepolia | unit-242737 | `0x86fb9f...f67afd` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [[Original]() (also discovered via alternate URL)](https://raw.githubusercontent.com/hyperlane-xyz/v4-docs/refs/heads/main/assets/ChainLight_Hyperlane_2Q_2025_Security_Audit_v1.0.pdf) | ChainLight | Audit | 2025-06 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 13 | high |
| [[Original]()](https://raw.githubusercontent.com/hyperlane-xyz/v4-docs/refs/heads/main/assets/ChainLight_Hyperlane_HyperToken_Security_Audit_v1.0.pdf) | ChainLight | Audit | 2025-04 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 3 | high |
| [[Original]()](https://raw.githubusercontent.com/hyperlane-xyz/v4-docs/refs/heads/main/assets/ChainLight_Hyperlane_PR_5752_5757_Security_Audit_v1.0.pdf) | ChainLight | Audit | 2025-04 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 1 | medium |
| [[Original]()](https://raw.githubusercontent.com/hyperlane-xyz/v4-docs/refs/heads/main/assets/Offbeat_Security_Hyperlane_Compound_Staker_Rewards.pdf) | Offbeat Security | Audit | 2025-03 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 1 | high |
| [[Original]()](https://raw.githubusercontent.com/hyperlane-xyz/v4-docs/refs/heads/main/assets/ChainSecurity_Hyperlane_Superchain_USDT_audit_draft.pdf) | ChainSecurity | Audit | 2025-02 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 4 | high |
| [[Original]()](https://raw.githubusercontent.com/hyperlane-xyz/v4-docs/refs/heads/main/assets/ChainLight_Hyperlane_CCIP_Warp_Route_Security_Audit_v1.1.pdf) | ChainLight | Audit | 2025-02 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 7 | high |
| [[Mirror]()](https://raw.githubusercontent.com/hyperlane-xyz/v4-docs/refs/heads/main/assets/chainlight-v3.1-protocol-audit.pdf) | ChainLight | Audit | 2024-12 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 26 | high |
| [[Original]()](https://github.com/trailofbits/publications/blob/master/reviews/2023-09-hyperlane-securityreview.pdf) | Trail of Bits | Audit | 2023-09 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 15 | high |
| [[Mirror]()](https://raw.githubusercontent.com/hyperlane-xyz/v4-docs/refs/heads/main/assets/hyperlane-v3-protocol-audit.pdf) | unknown | Audit | 2023-11 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 15 | high |
| [[Mirror]()](https://raw.githubusercontent.com/hyperlane-xyz/v4-docs/refs/heads/main/assets/hyperlane-v2-protocol-audit.pdf) | unknown | Audit | 2023-04 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 41 | high |
| [[Mirror]()](https://raw.githubusercontent.com/hyperlane-xyz/v4-docs/refs/heads/main/assets/hyperlane-v1-protocol-audit.pdf) | unknown | Audit | 2022-09 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 33 | high |
| [[Original]()](https://github.com/sec3-service/reports/blob/master/reports/sec3_hyperlane-sealevel.pdf) | Sec3 | Audit | 2024-09 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 14 | high |
| [[Mirror]()](https://raw.githubusercontent.com/hyperlane-xyz/v4-docs/refs/heads/main/assets/sealevel-hyperlane-audit.pdf) | unknown | Audit | 2024-09 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 14 | high |
| [[Original]()](https://raw.githubusercontent.com/hyperlane-xyz/v4-docs/refs/heads/main/assets/sealeval-audit-hyperlane-20250327.pdf) | unknown | Audit | 2025-02 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 15 | high |
| [[Original]()](https://github.com/oak-security/audit-reports/blob/main/Hyperlane/2024-02-13%20Audit%20Report%20-%20cw-hyperlane%20v1.0.pdf) | Oak Security | Audit | 2024-02 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 11 | high |
| [[Mirror]()](https://raw.githubusercontent.com/hyperlane-xyz/v4-docs/refs/heads/main/assets/cw-hyperlane-audit.pdf) | unknown | Audit | 2024-02 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 11 | high |
| [[Original]()](https://raw.githubusercontent.com/hyperlane-xyz/v4-docs/refs/heads/main/assets/starknet-hyperlane-audit-draft.pdf) | unknown | Audit | 2024-07 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 22 | high |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [20522] [Original]() — no match: Extracted contract names from findings and scope section. Audit date from revision history.
- [20523] [Original]() — no match: The audit report focuses on HyperToken, which extends HypERC20 and inherits ERC20PermitUpgradeable. The scope section lists the target as 'HyperToken Security Audit' and references a Git repository. The finding discusses HyperToken.initialize() and the missing __ERC20Permit_init call.
- [20524] [Original]() — no match: The scope section lists PRs #5752 and #5757 but does not enumerate specific contract files. Only HypERC4626 is explicitly named in the findings.
- [20525] [Original]() — no match: Only one contract in scope: CompoundStakerRewards.sol
- [20526] [Original]() — no match: Scope explicitly lists four contracts in src/xerc20/ folder. Audit date from cover page.
- [20527] [Original]() — no match: Extracted contract names from findings and scope section. Audit date from revision history (Feb 20, 2025).
- [20528] [Mirror]() — no match: Scope section on page 4 lists target as 'Hyperlane Security Audit' with git repository and commit hash. Contract names extracted from findings and file paths referenced in the report.
- [20529] [Original]() — no match: Extracted contract names from the report text, including those mentioned in scope, findings, and code quality recommendations. The audit date is from the cover page.
- [20530] [Mirror]() — no match: Extracted contract names from the report text, including those mentioned in scope, findings, and code quality recommendations. The audit date is from the cover page: 'November 6, 2023'.
- [20531] [Mirror]() — no match: Extracted contract names from the scope section listing files in both initial and second review. The audit date is from the cover page: 'Date: Apr 03, 2023'.
- [20532] [Mirror]() — no match: All contracts listed in the scope table (Table 1) are extracted. The audit date is from the cover page: 'September 2022' and the report version date '6 September 2022'.
- [20533] [Original]() — no match: Scope explicitly lists programs and libraries under rust/sealevel. Date from report header.
- [20534] [Mirror]() — no match: Extracted 14 contract/program names from the scope section of the report. The audit date is explicitly stated on the cover page.
- [20535] [Original]() — no match: Extracted contract names from the scope section listing files. The audit date is the end date of the audit period: February 6 - February 27, 2025.
- [20536] [Original]() — no match: Extracted contract names from scope description and detailed findings. Audit date from cover page.
- [20537] [Mirror]() — no match: Extracted contract names from scope section and detailed findings. Audit date from cover page.
- [20538] [Original]() — no match: Extracted 22 contract names from the scope table on page 10. Audit date is July 9, 2024 from the cover page.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| [Original]() | InterchainAccountRouter | unmatched — not counted | — | Mentioned in findings #1, #2, #3, #7 as audited contract | no |
| [Original]() | OwnableMulticall | unmatched — not counted | — | Mentioned in findings #1, #6, #7 as audited contract | no |
| [Original]() | TokenBridge | unmatched — not counted | — | Mentioned in finding #4 as audited contract | no |
| [Original]() | HypERC20Collateral | unmatched — not counted | — | Mentioned in finding #4 as parent contract of TokenBridge | no |
| [Original]() | TokenBridgeCctp | unmatched — not counted | — | Mentioned in finding #5 as audited ISM | no |
| [Original]() | CommitmentReadIsm | unmatched — not counted | — | Mentioned in finding #5 as audited ISM | no |
| [Original]() | OPL2ToL1CcipReadIsm | unmatched — not counted | — | Mentioned in findings #5, #7 as audited ISM | no |
| [Original]() | OpL1NativeTokenBridge | unmatched — not counted | — | Mentioned in finding #5 as audited ISM | no |
| [Original]() | AbstractCcipReadIsm | unmatched — not counted | — | Mentioned in finding #7 as audited contract | no |
| [Original]() | InterchainAccountMessage | unmatched — not counted | — | Mentioned in findings #1, #7 as library | no |
| [Original]() | InterchainAccountMessageReveal | unmatched — not counted | — | Mentioned in finding #7 as library | no |
| [Original]() | Mailbox | unmatched — not counted | — | Mentioned in findings #2, #5, #6 as core contract | no |
| [Original]() | ArbL2ToL1ISM | unmatched — not counted | — | Mentioned in finding #5 as reference for proper verification | no |
| [Original]() | HyperToken | unmatched — not counted | — | mentioned as the main contract in scope and in finding HYPERTOKEN-001 | no |
| [Original]() | HypERC20 | unmatched — not counted | — | mentioned as parent contract of HyperToken | no |
| [Original]() | ERC20PermitUpgradeable | unmatched — not counted | — | mentioned as inherited contract | no |
| [Original]() | HypERC4626 | unmatched — not counted | — | mentioned in finding #1 as the contract with allowance accounting issue | no |
| [Original]() | CompoundStakerRewards | unmatched — not counted | — | listed in scope | no |
| [Original]() | MintLimits | unmatched — not counted | — | listed in scope table | no |
| [Original]() | XERC20 | unmatched — not counted | — | listed in scope table | no |
| [Original]() | XERC20Factory | unmatched — not counted | — | listed in scope table | no |
| [Original]() | XERC20Lockbox | unmatched — not counted | — | listed in scope table | no |
| [Original]() | DefaultHook | unmatched — not counted | — | mentioned in finding HL-250217-002 | no |
| [Original]() | AmountRoutingHook | unmatched — not counted | — | mentioned in finding HL-250217-002 | no |
| [Original]() | AbstractMessageIdAuthHook | unmatched — not counted | — | mentioned in finding HL-250217-001 | no |
| [Original]() | CCIPHook | unmatched — not counted | — | mentioned in finding HL-250217-004 | no |
| [Original]() | CCIPIsm | unmatched — not counted | — | mentioned in finding HL-250217-004 | no |
| [Original]() | AbstractPostDispatchHook | unmatched — not counted | — | mentioned in finding HL-250217-002 | no |
| [Original]() | RateLimitedHook | unmatched — not counted | — | mentioned in finding HL-250217-001 | no |
| [Mirror]() | AbstractMessageIdAuthorizedIsm | unmatched — not counted | — | Finding #1 and #3 reference this contract directly with file path. | no |
| [Mirror]() | OPL2ToL1Ism | unmatched — not counted | — | Finding #2 title and description reference OPL2ToL1Ism. | no |
| [Mirror]() | AbstractMessageIdAuthHook | unmatched — not counted | — | Finding #3 title references AbstractMessageIdAuthHook. | no |
| [Mirror]() | OPStackHook | unmatched — not counted | — | Finding #5 title references OPStackHook. | no |
| [Mirror]() | ArbL2ToL1Hook | unmatched — not counted | — | Finding #5 title references ArbL2ToL1Hook. | no |
| [Mirror]() | HypERC4626 | unmatched — not counted | — | Finding #6 title and description reference HypERC4626. | no |
| [Mirror]() | HypERC4626OwnerCollateral | unmatched — not counted | — | Finding #9 title references HypERC4626OwnerCollateral. | no |
| [Mirror]() | AbstractAggregationIsm | unmatched — not counted | — | Finding #10 title references AbstractAggregationIsm. | no |
| [Mirror]() | InterchainAccountRouter | unmatched — not counted | — | Finding #4 title and description reference InterchainAccountRouter. | no |
| [Mirror]() | Mailbox | unmatched — not counted | — | Finding #8 and #12 reference Mailbox. | no |
| [Mirror]() | MailboxClient | unmatched — not counted | — | Finding #12 references MailboxClient. | no |
| [Mirror]() | ProtocolFee | unmatched — not counted | — | Finding #12 references ProtocolFee. | no |
| [Mirror]() | RateLimited | unmatched — not counted | — | Finding #12 references RateLimited. | no |
| [Mirror]() | TrustedRelayerIsm | unmatched — not counted | — | Finding #12 references TrustedRelayerIsm. | no |
| [Mirror]() | AttributeCheckpointFraud | unmatched — not counted | — | Finding #12 references AttributeCheckpointFraud. | no |
| [Mirror]() | TypeCasts | unmatched — not counted | — | Finding #12 references TypeCasts. | no |
| [Mirror]() | LayerZeroV2Ism | unmatched — not counted | — | Finding #12 references LayerZeroV2Ism. | no |
| [Mirror]() | HypERC4626Collateral | unmatched — not counted | — | Finding #12 references HypERC4626Collateral. | no |
| [Mirror]() | HypERC20Collateral | unmatched — not counted | — | Finding #12 references HypERC20Collateral. | no |
| [Mirror]() | ECDSAStakeRegistry | unmatched — not counted | — | Finding #12 references ECDSAStakeRegistry. | no |
| [Mirror]() | ECDSAServiceManagerBase | unmatched — not counted | — | Finding #12 references ECDSAServiceManagerBase. | no |
| [Mirror]() | HyperlaneServiceManager | unmatched — not counted | — | Finding #12 references HyperlaneServiceManager. | no |
| [Mirror]() | GasRouter | unmatched — not counted | — | Finding #12 references GasRouter. | no |
| [Mirror]() | OwnableMulticall | unmatched — not counted | — | Finding #4 references OwnableMulticall. | no |
| [Mirror]() | InterchainAccountMessage | unmatched — not counted | — | Finding #4 references InterchainAccountMessage. | no |
| [Mirror]() | CallLib | unmatched — not counted | — | Finding #4 references CallLib. | no |
| [Original]() | Mailbox | unmatched — not counted | — | mentioned as core contract with heavy modification | no |
| [Original]() | Indexed | unmatched — not counted | — | mentioned in code quality recommendations | no |
| [Original]() | DestinationRecipientRoutingHook | unmatched — not counted | — | mentioned in code quality recommendations | no |
| [Original]() | DomainRoutingHook | unmatched — not counted | — | mentioned in code quality recommendations and finding target | no |
| [Original]() | ERC5164Hook | unmatched — not counted | — | mentioned in code quality recommendations | no |
| [Original]() | Router | unmatched — not counted | — | mentioned in fix review | no |
| [Original]() | DefaultFallbackRoutingIsm | unmatched — not counted | — | mentioned in fix review | no |
| [Original]() | DomainRoutingIsm | unmatched — not counted | — | mentioned in fix review | no |
| [Original]() | AbstractMessageIdAuthorizedIsm | unmatched — not counted | — | mentioned in fix review and supplementary review | no |
| [Original]() | MailboxClient | unmatched — not counted | — | finding target | no |
| [Original]() | IPostDispatchHook | unmatched — not counted | — | interface mentioned in finding | no |
| [Original]() | IInterchainSecurityModule | unmatched — not counted | — | interface mentioned in finding | no |
| [Original]() | ISpecifiesInterchainSecurityModule | unmatched — not counted | — | interface mentioned in finding | no |
| [Original]() | ERC5164Ism | unmatched — not counted | — | mentioned in supplementary review | no |
| [Original]() | MetaProxy | unmatched — not counted | — | mentioned in code maturity evaluation | no |
| [Mirror]() | Mailbox | unmatched — not counted | — | mentioned as core contract with heavy modification | no |
| [Mirror]() | Indexed | unmatched — not counted | — | mentioned in code quality recommendations | no |
| [Mirror]() | DestinationRecipientRoutingHook | unmatched — not counted | — | mentioned in code quality recommendations | no |
| [Mirror]() | DomainRoutingHook | unmatched — not counted | — | target in finding TOB-HYPERLANE-1 | no |
| [Mirror]() | ERC5164Hook | unmatched — not counted | — | mentioned in code quality recommendations | no |
| [Mirror]() | Router | unmatched — not counted | — | mentioned in fix review (PR #2760) | no |
| [Mirror]() | DefaultFallbackRoutingIsm | unmatched — not counted | — | mentioned in fix review (PR #2760) | no |
| [Mirror]() | DomainRoutingIsm | unmatched — not counted | — | mentioned in fix review (PR #2760) | no |
| [Mirror]() | AbstractMessageIdAuthorizedIsm | unmatched — not counted | — | mentioned in fix review (PR #2835) | no |
| [Mirror]() | MailboxClient | unmatched — not counted | — | target in finding TOB-HYPERLANE-1 | no |
| [Mirror]() | IPostDispatchHook | unmatched — not counted | — | interface mentioned in MailboxClient | no |
| [Mirror]() | IInterchainSecurityModule | unmatched — not counted | — | interface mentioned in MailboxClient | no |
| [Mirror]() | ISpecifiesInterchainSecurityModule | unmatched — not counted | — | interface mentioned in finding TOB-HYPERLANE-1 | no |
| [Mirror]() | ERC5164Ism | unmatched — not counted | — | mentioned in supplementary review (Slither false positive) | no |
| [Mirror]() | MetaProxy | unmatched — not counted | — | mentioned in code maturity evaluation (low-level manipulation) | no |
| [Mirror]() | Call | unmatched — not counted | — | listed in scope | no |
| [Mirror]() | HyperlaneConnectionClient | unmatched — not counted | — | listed in scope | no |
| [Mirror]() | InterchainGasPaymaster | unmatched — not counted | — | listed in scope | no |
| [Mirror]() | MultisigIsm | unmatched — not counted | — | listed in scope | no |
| [Mirror]() | EnumerableMapExtended | unmatched — not counted | — | listed in scope | no |
| [Mirror]() | Merkle | unmatched — not counted | — | listed in scope | no |
| [Mirror]() | Message | unmatched — not counted | — | listed in scope | no |
| [Mirror]() | MinimalProxy | unmatched — not counted | — | listed in scope | no |
| [Mirror]() | MultisigIsmMetadata | unmatched — not counted | — | listed in scope | no |
| [Mirror]() | TypeCasts | unmatched — not counted | — | listed in scope | no |
| [Mirror]() | Mailbox | unmatched — not counted | — | listed in scope | no |
| [Mirror]() | InterchainAccountRouter | unmatched — not counted | — | listed in scope | no |
| [Mirror]() | InterchainQueryRouter | unmatched — not counted | — | listed in scope | no |
| [Mirror]() | CircleBridgeAdapter | unmatched — not counted | — | listed in scope | no |
| [Mirror]() | ICircleBridge | unmatched — not counted | — | listed in scope | no |
| [Mirror]() | ICircleMessageTransmitter | unmatched — not counted | — | listed in scope | no |
| [Mirror]() | ILiquidityLayerAdapter | unmatched — not counted | — | listed in scope | no |
| [Mirror]() | LiquidityLayerRouter | unmatched — not counted | — | listed in scope | no |
| [Mirror]() | OwnableMulticall | unmatched — not counted | — | listed in scope | no |
| [Mirror]() | PausableReentrancyGuard | unmatched — not counted | — | listed in scope | no |
| [Mirror]() | Router | unmatched — not counted | — | listed in scope | no |
| [Mirror]() | Versioned | unmatched — not counted | — | listed in scope | no |
| [Mirror]() | IInterchainAccountRouter | unmatched — not counted | — | listed in scope | no |
| [Mirror]() | IInterchainGasPaymaster | unmatched — not counted | — | listed in scope | no |
| [Mirror]() | IInterchainQueryRouter | unmatched — not counted | — | listed in scope | no |
| [Mirror]() | IInterchainSecurityModule | unmatched — not counted | — | listed in scope | no |
| [Mirror]() | ILiquidityLayerMessageRecipient | unmatched — not counted | — | listed in scope | no |
| [Mirror]() | ILiquidityLayerRouter | unmatched — not counted | — | listed in scope | no |
| [Mirror]() | IMailbox | unmatched — not counted | — | listed in scope | no |
| [Mirror]() | IMessageRecipient | unmatched — not counted | — | listed in scope | no |
| [Mirror]() | IMultisigIsm | unmatched — not counted | — | listed in scope | no |
| [Mirror]() | HypERC721URICollateral | unmatched — not counted | — | listed in scope | no |
| [Mirror]() | HypERC721URIStorage | unmatched — not counted | — | listed in scope | no |
| [Mirror]() | HypERC20 | unmatched — not counted | — | listed in scope | no |
| [Mirror]() | HypERC20Collateral | unmatched — not counted | — | listed in scope | no |
| [Mirror]() | HypERC721 | unmatched — not counted | — | listed in scope | no |
| [Mirror]() | HypERC721Collateral | unmatched — not counted | — | listed in scope | no |
| [Mirror]() | TokenRouter | unmatched — not counted | — | listed in scope | no |
| [Mirror]() | ProxyAdmin | unmatched — not counted | — | listed in scope | no |
| [Mirror]() | TransparentUpgradeableProxy | ambiguous — not counted | TransparentUpgradeableProxy (proxy) (alternative) `0x02d16b...82c4d9` — deployed 2024-06-04 17:46:03+03 — liveness: live (current_address_book_code) | bare standard proxy-shell name is not deployment identity; normalized_full_corpus:project_anchor:matcher_anchor | no |
| [Mirror]() | Create2Factory | unmatched — not counted | — | listed in scope | no |
| [Mirror]() | Merkle | unmatched — not counted | — | listed in scope table | no |
| [Mirror]() | Message | unmatched — not counted | — | listed in scope table | no |
| [Mirror]() | TypeCasts | unmatched — not counted | — | listed in scope table | no |
| [Mirror]() | BadRecipient1 | unmatched — not counted | — | listed in scope table | no |
| [Mirror]() | BadRecipient2 | unmatched — not counted | — | listed in scope table | no |
| [Mirror]() | BadRecipient3 | unmatched — not counted | — | listed in scope table | no |
| [Mirror]() | BadRecipient5 | unmatched — not counted | — | listed in scope table | no |
| [Mirror]() | BadRecipient6 | unmatched — not counted | — | listed in scope table | no |
| [Mirror]() | MysteryMath | unmatched — not counted | — | listed in scope table | no |
| [Mirror]() | MysteryMathV1 | unmatched — not counted | — | listed in scope table | no |
| [Mirror]() | MysteryMathV2 | unmatched — not counted | — | listed in scope table | no |
| [Mirror]() | TestInbox | unmatched — not counted | — | listed in scope table | no |
| [Mirror]() | TestMailbox | unmatched — not counted | — | listed in scope table | no |
| [Mirror]() | TestMerkle | unmatched — not counted | — | listed in scope table | no |
| [Mirror]() | TestMessage | unmatched — not counted | — | listed in scope table | no |
| [Mirror]() | TestMultisigValidatorManager | unmatched — not counted | — | listed in scope table | no |
| [Mirror]() | TestOutbox | unmatched — not counted | — | listed in scope table | no |
| [Mirror]() | TestRecipient | unmatched — not counted | — | listed in scope table | no |
| [Mirror]() | TestSendReceiver | unmatched — not counted | — | listed in scope table | no |
| [Mirror]() | TestValidatorManager | unmatched — not counted | — | listed in scope table | no |
| [Mirror]() | UpgradeBeacon | unmatched — not counted | — | listed in scope table | no |
| [Mirror]() | UpgradeBeaconController | unmatched — not counted | — | listed in scope table | no |
| [Mirror]() | UpgradeBeaconProxy | unmatched — not counted | — | listed in scope table | no |
| [Mirror]() | InboxValidatorManager | unmatched — not counted | — | listed in scope table | no |
| [Mirror]() | MultisigValidatorManager | unmatched — not counted | — | listed in scope table | no |
| [Mirror]() | OutboxValidatorManager | unmatched — not counted | — | listed in scope table | no |
| [Mirror]() | AbacusConnectionManager | unmatched — not counted | — | listed in scope table | no |
| [Mirror]() | Inbox | unmatched — not counted | — | listed in scope table | no |
| [Mirror]() | InterchainGasPaymaster | unmatched — not counted | — | listed in scope table | no |
| [Mirror]() | Mailbox | unmatched — not counted | — | listed in scope table | no |
| [Mirror]() | MerkleTreeManager | unmatched — not counted | — | listed in scope table | no |
| [Mirror]() | Outbox | unmatched — not counted | — | listed in scope table | no |
| [Mirror]() | Version0 | unmatched — not counted | — | listed in scope table | no |
| [Original]() | mailbox | unmatched — not counted | — | listed in scope | no |
| [Original]() | ism | unmatched — not counted | — | listed in scope | no |
| [Original]() | ecdsa-signature | unmatched — not counted | — | listed in scope | no |
| [Original]() | multisig-ism | unmatched — not counted | — | listed in scope | no |
| [Original]() | hyperlane-sealevel-token | unmatched — not counted | — | listed in scope | no |
| [Original]() | hyperlane-sealevel-token-collateral | unmatched — not counted | — | listed in scope | no |
| [Original]() | hyperlane-sealevel-token-native | unmatched — not counted | — | listed in scope | no |
| [Original]() | validator-announce | unmatched — not counted | — | listed in scope | no |
| [Original]() | access-control | unmatched — not counted | — | listed in scope | no |
| [Original]() | account-utils | unmatched — not counted | — | listed in scope | no |
| [Original]() | hyperlane-sealevel-connection-client | unmatched — not counted | — | listed in scope | no |
| [Original]() | interchain-security-module-interface | unmatched — not counted | — | listed in scope | no |
| [Original]() | message-recipient-interface | unmatched — not counted | — | listed in scope | no |
| [Original]() | serializable-account-meta | unmatched — not counted | — | listed in scope | no |
| [Mirror]() | mailbox | unmatched — not counted | — | listed in scope | no |
| [Mirror]() | ism | unmatched — not counted | — | listed in scope | no |
| [Mirror]() | ecdsa-signature | unmatched — not counted | — | listed in scope | no |
| [Mirror]() | multisig-ism | unmatched — not counted | — | listed in scope | no |
| [Mirror]() | hyperlane-sealevel-token | unmatched — not counted | — | listed in scope | no |
| [Mirror]() | hyperlane-sealevel-token-collateral | unmatched — not counted | — | listed in scope | no |
| [Mirror]() | hyperlane-sealevel-token-native | unmatched — not counted | — | listed in scope | no |
| [Mirror]() | validator-announce | unmatched — not counted | — | listed in scope | no |
| [Mirror]() | access-control | unmatched — not counted | — | listed in scope | no |
| [Mirror]() | account-utils | unmatched — not counted | — | listed in scope | no |
| [Mirror]() | hyperlane-sealevel-connection-client | unmatched — not counted | — | listed in scope | no |
| [Mirror]() | interchain-security-module-interface | unmatched — not counted | — | listed in scope | no |
| [Mirror]() | message-recipient-interface | unmatched — not counted | — | listed in scope | no |
| [Mirror]() | serializable-account-meta | unmatched — not counted | — | listed in scope | no |
| [Original]() | access-control | unmatched — not counted | — | listed in scope | no |
| [Original]() | account-utils | unmatched — not counted | — | listed in scope | no |
| [Original]() | ecdsa-signature | unmatched — not counted | — | listed in scope | no |
| [Original]() | hyperlane-sealevel-connection-client | unmatched — not counted | — | listed in scope | no |
| [Original]() | hyperlane-sealevel-token | unmatched — not counted | — | listed in scope | no |
| [Original]() | interchain-security-module-interface | unmatched — not counted | — | listed in scope | no |
| [Original]() | message-recipient-interface | unmatched — not counted | — | listed in scope | no |
| [Original]() | multisig-ism | unmatched — not counted | — | listed in scope | no |
| [Original]() | serializable-account-meta | unmatched — not counted | — | listed in scope | no |
| [Original]() | hyperlane-sealevel-igp | unmatched — not counted | — | listed in scope | no |
| [Original]() | hyperlane-sealevel-token-collateral | unmatched — not counted | — | listed in scope | no |
| [Original]() | hyperlane-sealevel-token-native | unmatched — not counted | — | listed in scope | no |
| [Original]() | multisig-ism-message-id | unmatched — not counted | — | listed in scope | no |
| [Original]() | mailbox | unmatched — not counted | — | listed in scope | no |
| [Original]() | validator-announce | unmatched — not counted | — | listed in scope | no |
| [Original]() | Mailbox | unmatched — not counted | — | listed in scope and findings | no |
| [Original]() | MerkleHook | unmatched — not counted | — | listed in scope and findings | no |
| [Original]() | MultisigISM | unmatched — not counted | — | listed in scope and findings | no |
| [Original]() | AggregateISM | unmatched — not counted | — | listed in scope and findings | no |
| [Original]() | AggregateHook | unmatched — not counted | — | listed in scope and findings | no |
| [Original]() | RoutingISM | unmatched — not counted | — | listed in scope and findings | no |
| [Original]() | WarpNative | unmatched — not counted | — | listed in scope and findings | no |
| [Original]() | ValidatorAnnounce | unmatched — not counted | — | listed in scope and findings | no |
| [Original]() | IGP | unmatched — not counted | — | listed in scope and findings | no |
| [Original]() | OracleIGP | unmatched — not counted | — | listed in scope and findings | no |
| [Original]() | Router | unmatched — not counted | — | listed in scope and findings | no |
| [Mirror]() | Mailbox | unmatched — not counted | — | listed in scope and detailed findings | no |
| [Mirror]() | MerkleHook | unmatched — not counted | — | detailed findings | no |
| [Mirror]() | MultisigISM | unmatched — not counted | — | detailed findings | no |
| [Mirror]() | AggregateISM | unmatched — not counted | — | detailed findings | no |
| [Mirror]() | AggregateHook | unmatched — not counted | — | detailed findings | no |
| [Mirror]() | RoutingISM | unmatched — not counted | — | detailed findings | no |
| [Mirror]() | WarpNative | unmatched — not counted | — | detailed findings | no |
| [Mirror]() | ValidatorAnnounce | unmatched — not counted | — | detailed findings | no |
| [Mirror]() | IGPCore | unmatched — not counted | — | detailed findings | no |
| [Mirror]() | IGPOracle | unmatched — not counted | — | detailed findings | no |
| [Mirror]() | Router | unmatched — not counted | — | detailed findings | no |
| [Original]() | pausable_ism | unmatched — not counted | — | listed in scope table | no |
| [Original]() | trusted_relayer_ism | unmatched — not counted | — | listed in scope table | no |
| [Original]() | noop_ism | unmatched — not counted | — | listed in scope table | no |
| [Original]() | domain_routing_ism | unmatched — not counted | — | listed in scope table | no |
| [Original]() | default_fallback_routing_ism | unmatched — not counted | — | listed in scope table | no |
| [Original]() | merkleroot_multisig_ism | unmatched — not counted | — | listed in scope table | no |
| [Original]() | messageid_multisig_ism | unmatched — not counted | — | listed in scope table | no |
| [Original]() | validator_announce | unmatched — not counted | — | listed in scope table | no |
| [Original]() | aggregation | unmatched — not counted | — | listed in scope table | no |
| [Original]() | mailbox | unmatched — not counted | — | listed in scope table | no |
| [Original]() | message | unmatched — not counted | — | listed in scope table | no |
| [Original]() | message_id_ism_metadata | unmatched — not counted | — | listed in scope table | no |
| [Original]() | merkleroot_ism_metadata | unmatched — not counted | — | listed in scope table | no |
| [Original]() | checkpoint_lib | unmatched — not counted | — | listed in scope table | no |
| [Original]() | aggregation_ism_metadata | unmatched — not counted | — | listed in scope table | no |
| [Original]() | merkle_tree_hook | unmatched — not counted | — | listed in scope table | no |
| [Original]() | standard_hook_metadata | unmatched — not counted | — | listed in scope table | no |
| [Original]() | protocol_fee | unmatched — not counted | — | listed in scope table | no |
| [Original]() | mailboxclient_component | unmatched — not counted | — | listed in scope table | no |
| [Original]() | mailboxclient | unmatched — not counted | — | listed in scope table | no |
| [Original]() | keccak256 | unmatched — not counted | — | listed in scope table | no |
| [Original]() | store_arrays | unmatched — not counted | — | listed in scope table | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 63 |
| upstream | 0 |
| standard_library | 4 |
| needs_review | 151 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 17
- Inherited remapped matches: 0
- Address-book scope dispositions: 0 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 1 ambiguous, 245 unmatched
- Matched-own operational status: 0 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=16, medium=1
- Match method counts: n/a

Zero-match audit list:

- [20522] [Original]()
- [20523] [Original]()
- [20524] [Original]()
- [20525] [Original]()
- [20526] [Original]()
- [20527] [Original]()
- [20528] [Mirror]()
- [20529] [Original]()
- [20530] [Mirror]()
- [20531] [Mirror]()
- [20532] [Mirror]()
- [20533] [Original]()
- [20534] [Mirror]()
- [20535] [Original]()
- [20536] [Original]()
- [20537] [Mirror]()
- [20538] [Original]()

Fork inheritance lineage and inherited audits are included when available.
