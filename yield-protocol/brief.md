# Agentic Audit Brief: Yield Protocol

⚠️ Lifecycle status: DEAD - TVL dropped 15.1% over 90 days

## Project Overview

- Project: Yield Protocol (`yield-protocol`)
- Website: [https://www.yo.xyz/](https://www.yo.xyz/)
- Lifecycle: dead (Tier 1, dead)
- Generated: 2026-06-21T10:36:26.857Z
- Pipeline run: v2-pipeline-2026-06-21-727228-48f6
- Chains: arbitrum, base, ethereum, hyperliquid
- Contract surface: 40 unique implementations (67 raw deployments)
- DeFi Llama TVL: $203,280.16
- On-chain TVL (included contracts): $35,443,819.51
- TVL by chain: Base $27,110,834.37 | Ethereum $8,152,701.34 | Arbitrum $180,283.80

## Project Description

Yield Protocol is a DeFi lending platform that enables users to deposit assets into yield-generating vaults and pools. It provides fixed-rate and variable-rate lending markets, supported by adapters for external protocols and oracles for price feeds.

### Architecture

The yoGateway registry links yoVaults to Onchain Adapters, enabling vaults to interact with external protocols. Yield Protocol pools operate independently but share the same governance and oracle infrastructure as the vaults.

## Contract Surface Quality

- Indexed contracts: 260; live-surface contracts included: 67 (49 live, 18 unknown).
- Excluded by liveness: 191 inactive, 2 singleton, 0 uninitialized.
- Deployment units: 9/12 live.
- Detected codebases: none
- Unverified dependencies: 1/20.

## Audit Coverage Summary

- Verified implementations audited: 5/23 (21.7%)
- Verified + Unaudited implementations: 18
- Verified by bytecode match: 0
- Unverified implementations: 17
- Unique implementations: 40
- Raw deployments: 67
- Audits discovered: 1
- Scoreable audits (matched contracts): 1
- ASD (verified + unaudited TVL): $35,263,276.18
- Latest audit: 2021-10 (stale)
- Staleness: 0 fresh, 0 aging, 1 stale, 0 unknown
- Tier 1 coverage: 21.7% (Trail of Bits)
- Note: This protocol is classified as [dead]. ASD of $35,263,276.18 represents exposure in a protocol with dead activity.

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| Trail of Bits | Tier 1 | 5 | 21.7% | 2021-10 |

## Contract Surface

### ✅ Verified + Audited (5)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| FYToken | token | arbitrum | n/a | 10 deployments: arbitrum [`0x4f9b5e...e80729`](./contracts/arbitrum-42161/0x4f9b5e639447456ddc784bc441f5a6fd7ce80729/); arbitrum `0x523803...4edea5`; arbitrum `0x5655a9...352464`; arbitrum `0x9ca40b...ddb281`; arbitrum `0xa3ecaf...701c73`; arbitrum `0xa9bc73...dca9b8`; arbitrum `0xc4b24e...1b80c5`; arbitrum `0xcbb7eb...7f06cc`; arbitrum `0xe1e878...f9a4ab`; arbitrum `0xec1b42...87851c` | ✅ Audited |
| Pool | core_logic | ethereum | n/a | 4 deployments: ethereum [`0x2e4b70...8c79ca`](./contracts/ethereum-1/0x2e4b70d0f020e62885e82bf75bc123e1aa8c79ca/); ethereum `0x3771c9...3e3c9e`; ethereum `0x407353...114227`; arbitrum `0x8c8a44...5af309` | ✅ Audited |
| Ladle | unknown | arbitrum | unit-42294 | [`0x16e25c...5d0560`](./contracts/arbitrum-42161/0x16e25cf364cecc305590128335b8f327975d0560/) | ✅ Audited |
| Strategy | core_logic | arbitrum | n/a | 6 deployments: arbitrum [`0x3353e1...2622c7`](./contracts/arbitrum-42161/0x3353e1e2976dbbc191a739871faa8e6e9d2622c7/); arbitrum `0x92a5b3...fbd5c8`; arbitrum `0xd5b43b...f27151`; arbitrum `0xdc705f...593c11`; arbitrum `0xe7214a...c7efda`; arbitrum `0xe779cd...32b1e1` | ✅ Audited |
| Timelock | governance | arbitrum | n/a | [`0xd0a228...641b6c`](./contracts/arbitrum-42161/0xd0a22827aed2ef5198ebec0093ea33a4cd641b6c/) | ✅ Audited |

### ⚠️ Verified + Unaudited (18)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| YoVault_V2 | core_logic | base | unit-42291 (3 proxies) | 3 deployments: base [`0x000000...588a65`](./contracts/base-8453/0x0000000f2eb9f69274678c76222b35eec7588a65/); base `0x3a43ae...0e9de7`; base `0xbcbc8c...60bcbc` | ⚠️ Unaudited |
| YoVault_V2 | core_logic | ethereum | unit-42284 (5 proxies) | 5 deployments: ethereum [`0x000000...588a65`](./contracts/ethereum-1/0x0000000f2eb9f69274678c76222b35eec7588a65/); ethereum `0x3a43ae...0e9de7`; ethereum `0x50c749...c871e9`; ethereum `0x586675...cc61a1`; ethereum `0xbcbc8c...60bcbc` | ⚠️ Unaudited |
| FiatTokenV2_1 | token | base | unit-42293 | [`0xcbb7c0...ed33bf`](./contracts/base-8453/0xcbb7c0000ab88b473b1f5afd9ef808440eed33bf/) | ⚠️ Unaudited |
| FiatTokenV2_2 | token | ethereum | unit-42285 (2 proxies) | 2 deployments: ethereum [`0x1abaea...1bc33c`](./contracts/ethereum-1/0x1abaea1f7c830bd89acc67ec4af516284b1bc33c/); ethereum `0xa0b869...06eb48` | ⚠️ Unaudited |
| FiatTokenV2_2 | token | base | unit-42292 (2 proxies) | 2 deployments: base [`0x60a3e3...1adb42`](./contracts/base-8453/0x60a3e35cc302bfa44cb288bc5a4f316fdb1adb42/); base `0x833589...a02913` | ⚠️ Unaudited |
| FiatTokenV2_2 | token | arbitrum | unit-42295 | [`0xaf88d0...8e5831`](./contracts/arbitrum-42161/0xaf88d065e77c8cc2239327c5edb3a432268e5831/) | ⚠️ Unaudited |
| Safe | unknown | ethereum | unit-42288 (2 proxies) | 2 deployments: ethereum [`0x67b6f6...44fcd2`](./contracts/ethereum-1/0x67b6f699f1c8040414032a3c2c88a54db144fcd2/); ethereum `0x93e526...fd5927` | ⚠️ Unaudited |
| TetherToken | token | ethereum | unit-42289 | [`0x687496...782f38`](./contracts/ethereum-1/0x68749665ff8d2d112fa859aa293f07a622782f38/) | ⚠️ Unaudited |
| TetherToken | token | ethereum | n/a | [`0xdac17f...831ec7`](./contracts/ethereum-1/0xdac17f958d2ee523a2206206994597c13d831ec7/) | ⚠️ Unaudited |
| TimelockController | governance | ethereum | n/a | [`0x38ce5e...186f48`](./contracts/ethereum-1/0x38ce5e45d0f5d03e83863bb19b3b1a272c186f48/) | ⚠️ Unaudited |
| Unwind | unknown | arbitrum | n/a | [`0x78b85b...5bcfd6`](./contracts/arbitrum-42161/0x78b85b1ddc84388ef2429cb7d856e93b375bcfd6/) | ⚠️ Unaudited |
| WETH9 | token | base | n/a | 2 deployments: ethereum `0xc02aaa...756cc2`; base [`0x420000...000006`](./contracts/base-8453/0x4200000000000000000000000000000000000006/) | ⚠️ Unaudited |
| YoChainlinkOracle | operational_periphery | ethereum | n/a | [`0x2800fc...ecbf07`](./contracts/ethereum-1/0x2800fc940a9b3bcb2cde3c70797b21296becbf07/) | ⚠️ Unaudited |
| YoERC4626Adapter | adapter | ethereum | n/a | [`0x206ff3...3efd64`](./contracts/ethereum-1/0x206ff3f58f57d00c48af6010de6dc26f913efd64/) | ⚠️ Unaudited |
| YoIPORAdapter | adapter | ethereum | n/a | [`0x440944...f3c50f`](./contracts/ethereum-1/0x4409446b49e24861697d566e5c6d68c0d8f3c50f/) | ⚠️ Unaudited |
| YoMorphoAdapter | adapter | hyperliquid | n/a | [`0x946fd0...b805f0`](./contracts/hyperliquid-999/0x946fd049c47beff53a32588c67df6a5a16b805f0/) | ⚠️ Unaudited |
| YoOracle | operational_periphery | ethereum | n/a | [`0x6e879d...d396b0`](./contracts/ethereum-1/0x6e879d0ccc85085a709ebf5539224f53d0d396b0/) | ⚠️ Unaudited |
| YoSwapAdapter | adapter | base | n/a | [`0xa425d3...3b4826`](./contracts/base-8453/0xa425d3c9a1c048be1183d8e396406bda813b4826/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (17)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | ethereum | n/a | `0x59bad3...a03f57` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x5d14ab...de4c9b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x6cb18f...65066a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x7acfe2...1e2ccd` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x7bad59...158b6f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x80142a...302797` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x8e8d6a...1c0c39` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x93a3a3...7456ab` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xb4b3f5...ad7021` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xcb9737...7fdd7f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xcff9d3...bb8a76` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xecd62a...3c816e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xef8261...1e7da0` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xf1eee0...4969fa` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xf83733...b467e0` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xfbc322...516b5d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xfcb9b8...e72eeb` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [YieldV2.pdf](https://github.com/trailofbits/publications/blob/master/reviews/YieldV2.pdf) | Trail of Bits | Audit | 2021-10 | stale | Direct | contract_name | 22 | high |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| arbitrum | [`0x78b85b...5bcfd6`](./contracts/arbitrum-42161/0x78b85b1ddc84388ef2429cb7d856e93b375bcfd6/) | Unwind | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x206ff3...3efd64`](./contracts/ethereum-1/0x206ff3f58f57d00c48af6010de6dc26f913efd64/) | YoERC4626Adapter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x440944...f3c50f`](./contracts/ethereum-1/0x4409446b49e24861697d566e5c6d68c0d8f3c50f/) | YoIPORAdapter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| hyperliquid | [`0x946fd0...b805f0`](./contracts/hyperliquid-999/0x946fd049c47beff53a32588c67df6a5a16b805f0/) | YoMorphoAdapter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x6e879d...d396b0`](./contracts/ethereum-1/0x6e879d0ccc85085a709ebf5539224f53d0d396b0/) | YoOracle | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0xa425d3...3b4826`](./contracts/base-8453/0xa425d3c9a1c048be1183d8e396406bda813b4826/) | YoSwapAdapter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 18 |
| upstream | 7 |
| standard_library | 5 |
| needs_review | 10 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=1
- Match method counts: extraction_exact=82

Fork inheritance lineage and inherited audits are included when available.
