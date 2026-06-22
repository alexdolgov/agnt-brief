# Agentic Audit Brief: Sushi

⚠️ Lifecycle status: UNKNOWN - TVL dropped 42.6% over 90 days

## Project Overview

- Project: Sushi (`sushi`)
- Website: [https://sushi.com/](https://sushi.com/)
- Lifecycle: unknown (Tier 0, 98.9% below peak)
- Generated: 2026-06-21T18:33:16.811Z
- Pipeline run: v2-pipeline-2026-06-21-727228-48f6
- Chains: arbitrum, arbitrum-nova, avalanche, base, blast, bsc, ethereum, fantom, gnosis, harmony, heco, kava, linea, metis, moonriver, optimism, polygon, polygon-zkevm, scroll, sonic
- Contract surface: 66 unique implementations (109 raw deployments)
- DeFi Llama TVL: $96,090,290.00
- On-chain TVL (included contracts): $61,287,914.10
- TVL by chain: Arbitrum $56,531,880.81 | Avalanche $4,756,033.29

## Project Description

Sushi is a multi-chain decentralized exchange (DEX) and DeFi platform that enables token swaps, liquidity provision, yield generation, and lending. It offers automated market maker (AMM) pools, concentrated liquidity, and a vault system for asset management.

### Architecture

SushiSwap V3 and SushiSwap share routing infrastructure (RouteProcessor4, UniswapV2Router02) for trade execution. BentoBox serves as a foundational vault for Furo and potentially other strategies, while SushiSwap V3's NonfungiblePositionManager is a proxy used across multiple chains.

## Contract Surface Quality

- Indexed contracts: 737; live-surface contracts included: 109 (65 live, 44 unknown).
- Excluded by liveness: 628 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 9/9 live.
- Detected codebases: uniswap-v2, uniswap-v3
- Unverified dependencies: 24/153.

## Audit Coverage Summary

- Verified implementations audited: 1/45 (2.2%)
- Verified + Unaudited implementations: 44
- Verified by bytecode match: 0
- Unverified implementations: 21
- Unique implementations: 66
- Raw deployments: 109
- Audits discovered: 1
- Scoreable audits (matched contracts): 1
- ASD (verified + unaudited TVL): $61,287,914.10
- Latest audit: 2020-09 (stale)
- Staleness: 0 fresh, 0 aging, 1 stale, 0 unknown
- Tier 1 coverage: No Tier 1 coverage
- Note: This protocol is classified as [unknown]. ASD of $61,287,914.10 represents exposure in a protocol with unknown activity.

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| PeckShield | Tier 2 | 1 | 2.2% | 2020-09 |

## Contract Surface

### ✅ Verified + Audited (1)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| SushiBar | unknown | ethereum | n/a | [`0x879824...ff4272`](./contracts/ethereum-1/0x8798249c2e607446efb7ad49ec89dd1865ff4272/) | ✅ Audited |

### ⚠️ Verified + Unaudited (44)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| AnyswapV5ERC20 | token | avalanche | n/a | 2 deployments: arbitrum `0xfea7a6...7d6c2a`; avalanche [`0x130966...b8c18d`](./contracts/avalanche-43114/0x130966628846bfd36ff31a822705796e8cb8c18d/) | ⚠️ Unaudited |
| AuctionCreation | unknown | polygon | n/a | [`0xc040f8...6ef4be`](./contracts/polygon-137/0xc040f84cf7046409f92d578ef9040fe45e6ef4be/) | ⚠️ Unaudited |
| BentoBox | unknown | optimism | n/a | [`0xc35dad...bc74c4`](./contracts/optimism-10/0xc35dadb65012ec5796536bd9864ed8773abc74c4/) | ⚠️ Unaudited |
| BentoBoxV1 | unknown | ethereum | unit-43489 | [`0xf5bce5...643966`](./contracts/ethereum-1/0xf5bce5077908a1b7370b9ae04adc565ebd643966/) | ⚠️ Unaudited |
| BentoBoxV1 | unknown | polygon | n/a | 6 deployments: bsc `0xf5bce5...643966`; gnosis `0xe2d7f5...bdb324`; polygon [`0x031900...2c3367`](./contracts/polygon-137/0x0319000133d3ada02600f0875d2cf03d442c3367/); metis `0xc35dad...bc74c4`; arbitrum `0x74c764...46894a`; avalanche `0x0711b6...48e026` | ⚠️ Unaudited |
| ConstantProductPoolFactory | registry | metis | n/a | [`0x0769fd...b2841f`](./contracts/metis-1088/0x0769fd68dfb93167989c6f7254cd0d766fb2841f/) | ⚠️ Unaudited |
| ConstantProductPoolFactoryHelper | registry | metis | n/a | [`0xf4d733...bd62c3`](./contracts/metis-1088/0xf4d73326c13a4fc5fd7a064217e12780e9bd62c3/) | ⚠️ Unaudited |
| DegenBox | unknown | ethereum | n/a | [`0xd96f48...fc2cce`](./contracts/ethereum-1/0xd96f48665a1410c0cd669a88898eca36b9fc2cce/) | ⚠️ Unaudited |
| InchSpellSwapper | adapter | ethereum | n/a | [`0xdfe1a5...a52111`](./contracts/ethereum-1/0xdfe1a5b757523ca6f7f049ac02151808e6a52111/) | ⚠️ Unaudited |
| MagicInternetMoneyV1 | unknown | ethereum | n/a | [`0x99d8a9...1e17f3`](./contracts/ethereum-1/0x99d8a9c45b2eca8864373a26d1459e3dff1e17f3/) | ⚠️ Unaudited |
| MasterDeployer | unknown | optimism | n/a | 2 deployments: optimism [`0x1b02da...997506`](./contracts/optimism-10/0x1b02da8cb0d097eb8d57a175b88c7d8b47997506/); metis [`0x1b02da...997506`](./contracts/metis-1088/0x1b02da8cb0d097eb8d57a175b88c7d8b47997506/) | ⚠️ Unaudited |
| MiniChefV2 | unknown | polygon | n/a | 3 deployments: gnosis `0xddcbf7...45e0f3`; polygon [`0x0769fd...b2841f`](./contracts/polygon-137/0x0769fd68dfb93167989c6f7254cd0d766fb2841f/); arbitrum `0xf4d733...bd62c3` | ⚠️ Unaudited |
| mSpellStaking | token | ethereum | n/a | [`0xbd2fba...5e6797`](./contracts/ethereum-1/0xbd2fbaf2dc95bd78cf1cd3c5235b33d1165e6797/) | ⚠️ Unaudited |
| Multicall2 | periphery | arbitrum | n/a | [`0x80c7dd...a314de`](./contracts/arbitrum-42161/0x80c7dd17b01855a6d2347444a0fcc36136a314de/) | ⚠️ Unaudited |
| NFTDescriptor | token | metis | n/a | [`0xd5607d...6010d9`](./contracts/metis-1088/0xd5607d184b1d6ecba94a07c217497fe9346010d9/) | ⚠️ Unaudited |
| NonfungiblePositionManager | governance | ethereum | unit-43488 | [`0x2214a4...b6a432`](./contracts/ethereum-1/0x2214a42d8e2a1d20635c2cb0664422c528b6a432/) | ⚠️ Unaudited |
| NonfungiblePositionManager | governance | bsc | unit-43491 | [`0xf70c08...2ef914`](./contracts/bsc-56/0xf70c086618dcf2b1a461311275e00d6b722ef914/) | ⚠️ Unaudited |
| NonfungiblePositionManager | governance | polygon | unit-43493 | [`0xb7402e...f89a40`](./contracts/polygon-137/0xb7402ee99f0a008e461098ac3a27f4957df89a40/) | ⚠️ Unaudited |
| NonfungiblePositionManager | governance | sonic | n/a | 6 deployments: optimism `0x1af415...82231e`; gnosis `0xab235d...774a65`; sonic [`0x038987...edee4f`](./contracts/sonic-146/0x0389879e0156033202c44bf784ac18fc02edee4f/); metis `0x630be2...31e7b1`; avalanche `0x18350b...6016f3`; blast `0x51edb3...709051` | ⚠️ Unaudited |
| NonfungiblePositionManager | governance | base | unit-43495 | [`0x80c7dd...a314de`](./contracts/base-8453/0x80c7dd17b01855a6d2347444a0fcc36136a314de/) | ⚠️ Unaudited |
| NonfungiblePositionManager | governance | arbitrum | unit-43496 | [`0xf0cbce...63ef49`](./contracts/arbitrum-42161/0xf0cbce1942a68beb3d1b73f0dd86c8dcc363ef49/) | ⚠️ Unaudited |
| NonfungibleTokenPositionDescriptor | token | metis | n/a | [`0x90dab1...7dc134`](./contracts/metis-1088/0x90dab18856331a85dc64203ce39aab01447dc134/) | ⚠️ Unaudited |
| QuoterV2 | periphery | metis | n/a | [`0xfbc129...8b303c`](./contracts/metis-1088/0xfbc12984689e5f15626bad03ad60160fe98b303c/) | ⚠️ Unaudited |
| RouteProcessor | unknown | metis | n/a | [`0x1e9b24...fdc77a`](./contracts/metis-1088/0x1e9b24073183d5c6b7ae5fb4b8f0b1dd83fdc77a/) | ⚠️ Unaudited |
| RouteProcessor3 | unknown | base | n/a | 5 deployments: ethereum `0x827179...866976`; optimism `0x4c5d52...e4bfab`; metis `0x258f7e...38b788`; base [`0x0be808...93d904`](./contracts/base-8453/0x0be808376ecb75a5cf9bb6d237d16cd37893d904/); arbitrum `0xfc506a...52d674` | ⚠️ Unaudited |
| RouteProcessor3_2 | unknown | arbitrum | n/a | 4 deployments: ethereum `0x5550d1...6e747d`; polygon `0xe7eb31...68a5d2`; base `0x83ec81...0751d1`; arbitrum [`0x09bd2a...4a8e8c`](./contracts/arbitrum-42161/0x09bd2a33c47746ff03b86bce4e885d03c74a8e8c/) | ⚠️ Unaudited |
| RouteProcessor4 | unknown | polygon | n/a | 3 deployments: polygon [`0x46b3fd...22202e`](./contracts/polygon-137/0x46b3fdf7b5cde91ac049936bf0bdb12c5d22202e/); metis `0xb45e53...7f1763`; metis `0xd408a2...8bf269` | ⚠️ Unaudited |
| sSpellV1 | unknown | ethereum | n/a | [`0x26fa3f...a106a9`](./contracts/ethereum-1/0x26fa3fffb6efe8c1e69103acb4044c26b9a106a9/) | ⚠️ Unaudited |
| StablePoolFactory | registry | metis | n/a | 3 deployments: metis [`0x2f6867...050066`](./contracts/metis-1088/0x2f686751b19a9d91cc3d57d90150bc767f050066/); metis `0x933951...0ff328`; metis `0x9b3ff7...a9b51c` | ⚠️ Unaudited |
| StargateAdapter | adapter | metis | n/a | [`0xdf1cfe...02e195`](./contracts/metis-1088/0xdf1cfec0dcf05bf647fbfbe12ea550baa102e195/) | ⚠️ Unaudited |
| SubscribeToJunionOnYoutube | unknown | avalanche | n/a | [`0x1b02da...997506`](./contracts/avalanche-43114/0x1b02da8cb0d097eb8d57a175b88c7d8b47997506/) | ⚠️ Unaudited |
| SushiXSwapV2 | unknown | metis | n/a | [`0x804b52...70f8ee`](./contracts/metis-1088/0x804b526e5bf4349819fe2db65349d0825870f8ee/) | ⚠️ Unaudited |
| SwapRouter | adapter | metis | n/a | [`0x2abf46...2625b1`](./contracts/metis-1088/0x2abf469074dc0b54d793850807e6eb5faf2625b1/) | ⚠️ Unaudited |
| TickLens | periphery | metis | n/a | 2 deployments: polygon `0x9fdea1...fdf7da`; metis [`0x078047...4b1b9c`](./contracts/metis-1088/0x078047150f8efa223b3d407f00e462e38f4b1b9c/) | ⚠️ Unaudited |
| TridentRouter | adapter | optimism | unit-43490 | [`0xe52180...3ab70a`](./contracts/optimism-10/0xe52180815c81d7711b83412e53259bed6a3ab70a/) | ⚠️ Unaudited |
| TridentRouter | adapter | polygon | unit-43492 | [`0x7a250c...6eed67`](./contracts/polygon-137/0x7a250c60cde7a5ca7b667209beab5ea4e16eed67/) | ⚠️ Unaudited |
| TridentRouter | adapter | polygon | unit-43494 | [`0xc5017b...62668e`](./contracts/polygon-137/0xc5017be80b4446988e8686168396289a9a62668e/) | ⚠️ Unaudited |
| TridentRouter | adapter | metis | n/a | 6 deployments: optimism `0xbe811a...6430e6`; bsc `0x97a32b...2e610a`; metis [`0x0be808...93d904`](./contracts/metis-1088/0x0be808376ecb75a5cf9bb6d237d16cd37893d904/); metis `0xab235d...774a65`; arbitrum `0xd9988b...8e0523`; avalanche `0xf70c08...2ef914` | ⚠️ Unaudited |
| TridentSushiRollCP | unknown | metis | n/a | [`0x1be211...7b1d6c`](./contracts/metis-1088/0x1be211d8da40bc0ae8719c6663307bfc987b1d6c/) | ⚠️ Unaudited |
| UniswapV2Factory | registry | metis | n/a | 6 deployments: optimism `0xfbc129...8b303c`; gnosis `0xc35dad...bc74c4`; polygon `0xc35dad...bc74c4`; metis [`0x580ed4...1f7483`](./contracts/metis-1088/0x580ed43f3bba06555785c81c2957efcca71f7483/); base `0x71524b...622859`; linea `0xfbc129...8b303c` | ⚠️ Unaudited |
| UniswapV2Router02 | adapter | sonic | n/a | [`0x9b3336...e061ee`](./contracts/sonic-146/0x9b3336186a38e1b6c21955d112dbb0343ee061ee/) | ⚠️ Unaudited |
| UniswapV3Factory | registry | metis | n/a | 7 deployments: optimism `0x9c6522...e7dbe0`; gnosis `0xf78031...cf9bef`; polygon `0x917933...8ff0e2`; sonic `0x46b3fd...22202e`; metis [`0x145d82...522e6f`](./contracts/metis-1088/0x145d82bca93cca2ae057d1c6f26245d1b9522e6f/); arbitrum `0x1af415...82231e`; scroll `0x46b3fd...22202e` | ⚠️ Unaudited |
| V3Migrator | periphery | metis | n/a | [`0x454714...8a4ff6`](./contracts/metis-1088/0x454714482ca38fbbce7fc76d96ba1ce2028a4ff6/) | ⚠️ Unaudited |
| WethMaker | token | blast | n/a | 2 deployments: metis `0xb46e31...79da94`; blast [`0x253826...81a119`](./contracts/blast-81457/0x2538263e13467b7759c6419270f29d890881a119/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (21)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | gnosis | n/a | `0x80c7dd...a314de` | ❓ Unverified |
| UnnamedContract | unknown | heco | n/a | `0x879824...ff4272` | ❓ Unverified |
| UnnamedContract | unknown | fantom | n/a | `0x1b9d17...500eaa` | ❓ Unverified |
| UnnamedContract | unknown | fantom | n/a | `0x777097...c9ddcb` | ❓ Unverified |
| UnnamedContract | unknown | fantom | n/a | `0xf5bce5...643966` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0x1b9d17...500eaa` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0x33d911...ebfcdd` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0x9b3336...e061ee` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0xbbde1d...728e65` | ❓ Unverified |
| UnnamedContract | unknown | polygon-zkevm | n/a | `0x1b02da...997506` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0xab235d...774a65` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0xbbde1d...728e65` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0xc5017b...62668e` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0xd045d2...e0f2be` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0xeae23c...c130ca` | ❓ Unverified |
| UnnamedContract | unknown | kava | n/a | `0x1e9b24...fdc77a` | ❓ Unverified |
| UnnamedContract | unknown | kava | n/a | `0xd408a2...8bf269` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x0769fd...b2841f` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x1b02da...997506` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum-nova | n/a | `0xaa2677...0bf5bd` | ❓ Unverified |
| UnnamedContract | unknown | harmony | n/a | `0xa28cff...08a2c2` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [PeckShield-Audit-Report-SushiSwap-v1.0.pdf](https://github.com/peckshield/publications/blob/master/audit_reports/PeckShield-Audit-Report-SushiSwap-v1.0.pdf) | PeckShield | Audit | 2020-09 | stale | Direct | contract_name | 1 | high |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| polygon | [`0xc040f8...6ef4be`](./contracts/polygon-137/0xc040f84cf7046409f92d578ef9040fe45e6ef4be/) | AuctionCreation | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0xc35dad...bc74c4`](./contracts/optimism-10/0xc35dadb65012ec5796536bd9864ed8773abc74c4/) | BentoBox | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xf5bce5...643966`](./contracts/ethereum-1/0xf5bce5077908a1b7370b9ae04adc565ebd643966/) | BentoBoxV1 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x031900...2c3367`](./contracts/polygon-137/0x0319000133d3ada02600f0875d2cf03d442c3367/) | BentoBoxV1 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| metis | [`0x0769fd...b2841f`](./contracts/metis-1088/0x0769fd68dfb93167989c6f7254cd0d766fb2841f/) | ConstantProductPoolFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| metis | [`0xf4d733...bd62c3`](./contracts/metis-1088/0xf4d73326c13a4fc5fd7a064217e12780e9bd62c3/) | ConstantProductPoolFactoryHelper | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xd96f48...fc2cce`](./contracts/ethereum-1/0xd96f48665a1410c0cd669a88898eca36b9fc2cce/) | DegenBox | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xdfe1a5...a52111`](./contracts/ethereum-1/0xdfe1a5b757523ca6f7f049ac02151808e6a52111/) | InchSpellSwapper | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0x1b02da...997506`](./contracts/optimism-10/0x1b02da8cb0d097eb8d57a175b88c7d8b47997506/) | MasterDeployer | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x0769fd...b2841f`](./contracts/polygon-137/0x0769fd68dfb93167989c6f7254cd0d766fb2841f/) | MiniChefV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xbd2fba...5e6797`](./contracts/ethereum-1/0xbd2fbaf2dc95bd78cf1cd3c5235b33d1165e6797/) | mSpellStaking | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| metis | [`0xd5607d...6010d9`](./contracts/metis-1088/0xd5607d184b1d6ecba94a07c217497fe9346010d9/) | NFTDescriptor | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x2214a4...b6a432`](./contracts/ethereum-1/0x2214a42d8e2a1d20635c2cb0664422c528b6a432/) | NonfungiblePositionManager | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0xf70c08...2ef914`](./contracts/bsc-56/0xf70c086618dcf2b1a461311275e00d6b722ef914/) | NonfungiblePositionManager | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x038987...edee4f`](./contracts/sonic-146/0x0389879e0156033202c44bf784ac18fc02edee4f/) | NonfungiblePositionManager | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x80c7dd...a314de`](./contracts/base-8453/0x80c7dd17b01855a6d2347444a0fcc36136a314de/) | NonfungiblePositionManager | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| metis | [`0x90dab1...7dc134`](./contracts/metis-1088/0x90dab18856331a85dc64203ce39aab01447dc134/) | NonfungibleTokenPositionDescriptor | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| metis | [`0xfbc129...8b303c`](./contracts/metis-1088/0xfbc12984689e5f15626bad03ad60160fe98b303c/) | QuoterV2 | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| metis | [`0x1e9b24...fdc77a`](./contracts/metis-1088/0x1e9b24073183d5c6b7ae5fb4b8f0b1dd83fdc77a/) | RouteProcessor | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x0be808...93d904`](./contracts/base-8453/0x0be808376ecb75a5cf9bb6d237d16cd37893d904/) | RouteProcessor3 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x09bd2a...4a8e8c`](./contracts/arbitrum-42161/0x09bd2a33c47746ff03b86bce4e885d03c74a8e8c/) | RouteProcessor3_2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x46b3fd...22202e`](./contracts/polygon-137/0x46b3fdf7b5cde91ac049936bf0bdb12c5d22202e/) | RouteProcessor4 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x26fa3f...a106a9`](./contracts/ethereum-1/0x26fa3fffb6efe8c1e69103acb4044c26b9a106a9/) | sSpellV1 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| metis | [`0x2f6867...050066`](./contracts/metis-1088/0x2f686751b19a9d91cc3d57d90150bc767f050066/) | StablePoolFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| metis | [`0x804b52...70f8ee`](./contracts/metis-1088/0x804b526e5bf4349819fe2db65349d0825870f8ee/) | SushiXSwapV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| metis | [`0x2abf46...2625b1`](./contracts/metis-1088/0x2abf469074dc0b54d793850807e6eb5faf2625b1/) | SwapRouter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| metis | [`0x078047...4b1b9c`](./contracts/metis-1088/0x078047150f8efa223b3d407f00e462e38f4b1b9c/) | TickLens | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0xe52180...3ab70a`](./contracts/optimism-10/0xe52180815c81d7711b83412e53259bed6a3ab70a/) | TridentRouter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x7a250c...6eed67`](./contracts/polygon-137/0x7a250c60cde7a5ca7b667209beab5ea4e16eed67/) | TridentRouter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0xc5017b...62668e`](./contracts/polygon-137/0xc5017be80b4446988e8686168396289a9a62668e/) | TridentRouter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| metis | [`0x0be808...93d904`](./contracts/metis-1088/0x0be808376ecb75a5cf9bb6d237d16cd37893d904/) | TridentRouter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| metis | [`0x1be211...7b1d6c`](./contracts/metis-1088/0x1be211d8da40bc0ae8719c6663307bfc987b1d6c/) | TridentSushiRollCP | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| metis | [`0x454714...8a4ff6`](./contracts/metis-1088/0x454714482ca38fbbce7fc76d96ba1ce2028a4ff6/) | V3Migrator | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| blast | [`0x253826...81a119`](./contracts/blast-81457/0x2538263e13467b7759c6419270f29d890881a119/) | WethMaker | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 40 |
| upstream | 8 |
| standard_library | 1 |
| needs_review | 17 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=1
- Match method counts: extraction_exact=4

Fork inheritance lineage and inherited audits are included when available.
