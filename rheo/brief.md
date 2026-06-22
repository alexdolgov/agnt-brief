# Agentic Audit Brief: Rheo

⚠️ Lifecycle status: DECLINING - TVL dropped 86.0% over 90 days

## Project Overview

- Project: Rheo (`rheo`)
- Website: [https://app.rheo.xyz/](https://app.rheo.xyz/)
- Lifecycle: declining (Tier 1, declining)
- Generated: 2026-06-20T02:15:29.116Z
- Pipeline run: v2-pipeline-2026-06-19-727228-a815
- Chains: base, ethereum
- Contract surface: 19 unique implementations (77 raw deployments)
- DeFi Llama TVL: $33,307.47
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Rheo is a lending protocol that enables users to borrow and lend assets, with integrated flash loan capabilities for looping, repaying, and liquidating positions. It operates across Ethereum and Base, using a factory-based architecture to deploy and manage lending market instances.

### Architecture

The SizeFactory deploys and registers lending market instances (Size contracts), which are the primary user-facing contracts. Flash loan operation factories (FlashLoanLoopingFactory, FlashRepayFactory) and liquidators interact with these markets to execute complex transactions, while CollectionsManager and AutoCopyCollection provide supporting infrastructure for managing related data and automation.

## Contract Surface Quality

- Indexed contracts: 202; live-surface contracts included: 77 (77 live, 0 unknown).
- Excluded by liveness: 36 inactive, 89 singleton, 0 uninitialized.
- Deployment units: 1/45 live.
- Detected codebases: aave-v2, uniswap-v3
- Unverified dependencies: 8/38.

## Audit Coverage Summary

- Verified implementations audited: 4/18 (22.2%)
- Verified + Unaudited implementations: 14
- Verified by bytecode match: 0
- Unverified implementations: 1
- Unique implementations: 19
- Raw deployments: 77
- Audits discovered: 16
- Scoreable audits (matched contracts): 8
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2025-09 (fresh)
- Staleness: 2 fresh, 9 aging, 5 stale, 0 unknown
- Tier 1 coverage: 22.2% (Code4rena, Spearbit)
- Note: This protocol is classified as [declining]. ASD of n/a represents exposure in a protocol with declining activity.

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| Spearbit | Tier 1 | 4 | 22.2% | 2025-06 |
| Code4rena | Tier 1 | 1 | 5.6% | 2024-06 |
| Omniscia | Tier 2 | 1 | 5.6% | 2025-06 |
| unknown | Tier 2 | 1 | 5.6% | 2025-07 |

## Contract Surface

### ✅ Verified + Audited (4)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| ERC4626Adapter | adapter | ethereum | n/a | 2 deployments: ethereum [`0x38fa92...86490c`](./contracts/ethereum-1/0x38fa928decafc34072e721ce3ff3d57f5586490c/); base `0x91e15d...74587d` | ✅ Audited |
| Size | unknown | ethereum | n/a | 7 deployments: ethereum [`0x0f83c0...b0ea8e`](./contracts/ethereum-1/0x0f83c05f6fe3180c345a887aa0c814d678b0ea8e/); ethereum `0x1aba54...aa62fe`; ethereum `0x91e15d...74587d`; ethereum `0xbd0a29...eac3e2`; base `0x38f012...8b0311`; base `0x64c6f9...12c1a8`; base `0x6f9f92...79088c` | ✅ Audited |
| SizeFactory | registry | ethereum | n/a | 4 deployments: ethereum [`0x3e275c...20131a`](./contracts/ethereum-1/0x3e275cdce92d1b1a302e5c2e6c37fd5e3420131a/); ethereum `0xd3e12e...b24132`; base `0x64b8ab...ea230f`; base `0xfb70ca...88bd9b` | ✅ Audited |
| SizeFactory | registry | base | unit-40963 | [`0x330dc3...f3df0b`](./contracts/base-8453/0x330dc31db45672c1f565cf3ec91f9a01f8f3df0b/) | ✅ Audited |

### ⚠️ Verified + Unaudited (14)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| CollectionsManager | governance | base | n/a | 2 deployments: ethereum `0xe961c2...d027eb`; base [`0x6bba45...22b377`](./contracts/base-8453/0x6bba45cfe699a35d6a8f72e43c0702a63822b377/) | ⚠️ Unaudited |
| FlashLoanLiquidator | operational_periphery | ethereum | n/a | [`0xb6d644...6c5265`](./contracts/ethereum-1/0xb6d6441cb7641829622b435b642a25653c6c5265/) | ⚠️ Unaudited |
| FlashLoanLooping | unknown | base | n/a | 15 deployments: ethereum `0x086312...c5c87c`; ethereum `0x5456d7...1e1e15`; ethereum `0x5e5342...7bfae2`; ethereum `0x67f65b...792772`; ethereum `0x6ae1b4...d7120e`; ethereum `0x8323da...66090e`; ethereum `0xf3b60b...081bb9`; base [`0x032ff8...5a5b27`](./contracts/base-8453/0x032ff80235e9b784cd4718ccc3e151d3ca5a5b27/); base `0x1e0804...551b11`; base `0x437a07...a8627c`; base `0x8d6415...62abce`; base `0xb94958...f7a844`; base `0xd21e05...f8a00a`; base `0xe3499b...0f4767`; base `0xe518b1...035773` | ⚠️ Unaudited |
| FlashLoanLoopingFactory | registry | ethereum | n/a | 2 deployments: ethereum [`0x17394b...f23771`](./contracts/ethereum-1/0x17394bb16e522e1661062aa27644fc818cf23771/); base `0xe524c0...36d02d` | ⚠️ Unaudited |
| FlashLoanLoopingV1 | unknown | base | n/a | 12 deployments: ethereum `0x2f5333...c316de`; ethereum `0x56087d...1df311`; ethereum `0xd21e05...f8a00a`; ethereum `0xd42839...d9dc52`; ethereum `0xd598f7...f4589b`; ethereum `0xe32f80...81dd4d`; ethereum `0xfa87fd...8ebee1`; base [`0x150bec...8a9056`](./contracts/base-8453/0x150bec677391a7d6eea27e63cd0be5a2888a9056/); base `0xa460c4...f158df`; base `0xbd0a29...eac3e2`; base `0xdc386f...7e1ed5`; base `0xe291b5...a1800c` | ⚠️ Unaudited |
| FlashLoanLoopingV1_7 | unknown | ethereum | n/a | 3 deployments: ethereum [`0x1e5a4c...670f11`](./contracts/ethereum-1/0x1e5a4c1d313219b491af392b4b6fe2d715670f11/); ethereum `0x4b356d...cf9019`; ethereum `0x81d941...be39df` | ⚠️ Unaudited |
| FlashRepay | unknown | ethereum | n/a | 4 deployments: ethereum [`0x282056...511b7f`](./contracts/ethereum-1/0x282056fc9515ee5622690ce908a84f15b4511b7f/); ethereum `0xba8d38...fe0e88`; base `0x4871d2...70e85f`; base `0x4b9407...85f623` | ⚠️ Unaudited |
| FlashRepayV1 | unknown | base | n/a | 7 deployments: ethereum `0x5091cf...ef70b2`; ethereum `0xb80c45...e1370d`; ethereum `0xe2bc51...70f616`; base [`0x162977...070b4c`](./contracts/base-8453/0x162977f0b19b21ededf3f6e61950d57115070b4c/); base `0x2cf9d6...d7f995`; base `0x5d3f04...69d804`; base `0xe95dc9...64abfe` | ⚠️ Unaudited |
| GetMarketShutdownCalldataScript | unknown | ethereum | n/a | [`0x6058cd...751a64`](./contracts/ethereum-1/0x6058cda655ac20b27ceeb1d44ec57311fc751a64/) | ⚠️ Unaudited |
| MorphoPriceFeedV2 | operational_periphery | ethereum | n/a | [`0xc16acb...931567`](./contracts/ethereum-1/0xc16acb6c66abbe24b70695b77d64422093931567/) | ⚠️ Unaudited |
| PauseAll | unknown | ethereum | n/a | 2 deployments: ethereum [`0x57f543...a13fce`](./contracts/ethereum-1/0x57f543adb4fd741e2e508cc06e8e72bdeea13fce/); base `0x8e61c4...0776e0` | ⚠️ Unaudited |
| PriceFeedChainlinkOnly4x | operational_periphery | ethereum | n/a | 5 deployments: ethereum [`0x258982...09a14d`](./contracts/ethereum-1/0x258982368229bb2b01fec7e68bb92e993709a14d/); ethereum `0x26c1cb...7ba361`; ethereum `0x26c671...f57e6b`; ethereum `0x85daf4...12eafb`; ethereum `0x9d6ab8...c25b81` | ⚠️ Unaudited |
| PriceFeedChainlinkOnly4xV2 | operational_periphery | ethereum | n/a | 6 deployments: ethereum [`0x3a63ec...8166c0`](./contracts/ethereum-1/0x3a63ecf29b7276e562679cafde2af728968166c0/); ethereum `0xb94958...f7a844`; ethereum `0xb9e869...4eac2e`; ethereum `0xe0b698...4056d8`; ethereum `0xe3499b...0f4767`; ethereum `0xf41112...445a29` | ⚠️ Unaudited |
| Rheo | unknown | ethereum | n/a | [`0x7e3ce0...da026d`](./contracts/ethereum-1/0x7e3ce0f1e13ed80fe51f2e94f9ccaad9b2da026d/) | ⚠️ Unaudited |

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
| UnnamedContract | unknown | base | n/a | `0x87e64a...a6b534` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [Size-Spearbit-Security-Review.pdf](https://github.com/spearbit/portfolio/blob/master/pdfs/Size-Spearbit-Security-Review.pdf) | Spearbit | Audit | 2024-06 | stale | Direct | contract_name | 7 | high |
| [Audit Report - Size Lending.pdf](https://github.com/solidified-platform/audits/blob/master/Audit%20Report%20-%20Size%20Lending.pdf) | unknown | Audit | 2024-03 | stale | Direct | contract_name | 7 | high |
| [v1.8](https://github.com/SizeCredit/size-solidity/blob/main/audits/2025-06-23-Omniscia.pdf) | Omniscia | Audit | 2025-06 | aging | Direct | contract_name | 2 | high |
| [Rendered PDF capture (also discovered via alternate URL)](https://raw.githubusercontent.com/SizeCredit/size-solidity/c3fb2ceb65e05939f8e8ba46a34d43d26a3e485b/audits/2025-06-14-Cantina.pdf) | Spearbit | Audit | 2025-06 | aging | Direct | contract_name | 14 | high |
| [Rendered PDF capture (also discovered via alternate URL)](https://raw.githubusercontent.com/SizeCredit/size-solidity/c3fb2ceb65e05939f8e8ba46a34d43d26a3e485b/audits/2025-02-26-Cantina.pdf) | Spearbit | Audit | 2025-02 | aging | Direct | contract_name | 12 | medium |
| [Rendered PDF capture](https://raw.githubusercontent.com/SizeCredit/size-solidity/c3fb2ceb65e05939f8e8ba46a34d43d26a3e485b/audits/2025-02-12-Custodia-Security.pdf) | Cantina | Audit | 2025-02 | aging | Direct | n/a | 0 | n/a |
| [Rendered PDF capture](https://raw.githubusercontent.com/SizeCredit/size-solidity/c3fb2ceb65e05939f8e8ba46a34d43d26a3e485b/audits/2024-12-10-ChainDefenders.pdf) | Cantina | Audit | 2024-12 | aging | Direct | contract_name | 0 | n/a |
| [Rendered PDF capture](https://raw.githubusercontent.com/SizeCredit/size-solidity/c3fb2ceb65e05939f8e8ba46a34d43d26a3e485b/audits/2024-11-13-Custodia-Security.pdf) | Cantina | Audit | 2024-11 | aging | Direct | n/a | 0 | n/a |
| [Rendered PDF capture (also discovered via alternate URL)](https://raw.githubusercontent.com/SizeCredit/size-solidity/c3fb2ceb65e05939f8e8ba46a34d43d26a3e485b/audits/2024-06-10-Code4rena.pdf) | Code4rena | Contest | 2024-06 | stale | Direct | contract_name | 7 | high |
| [v1.6.1](https://github.com/SizeCredit/size-solidity/blob/main/audits/2025-02-12-Custodia-Security.pdf) | Custodia Security | Audit | 2025-02 | aging | Direct | n/a | 0 | n/a |
| [v1.5.1](https://github.com/SizeCredit/size-solidity/blob/main/audits/2024-12-10-ChainDefenders.pdf) | Chain Defenders | Audit | 2024-12 | aging | Direct | contract_name | 0 | n/a |
| [v1.5](https://github.com/SizeCredit/size-solidity/blob/main/audits/2024-11-13-Custodia-Security.pdf) | Custodia Security | Audit | 2024-11 | aging | Direct | n/a | 0 | n/a |
| [v1.0-rc](https://github.com/SizeCredit/size-solidity/blob/main/audits/2024-06-08-Spearbit.pdf) | Spearbit | Audit | 2024-06 | stale | Direct | contract_name | 7 | high |
| [2024-03-26-Solidified.pdf](https://github.com/SizeCredit/size-solidity/blob/main/audits/2024-03-26-Solidified.pdf) | unknown | Audit | 2024-03 | stale | Direct | contract_name | 7 | high |
| [v0.1.0](https://github.com/rheo-xyz/very-liquid-vaults/blob/main/audits/2025-09-11-OpenZeppelin.pdf) | OpenZeppelin | Audit | 2025-09 | fresh | Direct | n/a | 0 | n/a |
| [2025-07-26-Obsidian-Audits.pdf](https://github.com/rheo-xyz/very-liquid-vaults/blob/main/audits/2025-07-26-Obsidian-Audits.pdf) | unknown | Audit | 2025-07 | fresh | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| base | [`0x6bba45...22b377`](./contracts/base-8453/0x6bba45cfe699a35d6a8f72e43c0702a63822b377/) | CollectionsManager | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xb6d644...6c5265`](./contracts/ethereum-1/0xb6d6441cb7641829622b435b642a25653c6c5265/) | FlashLoanLiquidator | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x032ff8...5a5b27`](./contracts/base-8453/0x032ff80235e9b784cd4718ccc3e151d3ca5a5b27/) | FlashLoanLooping | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x17394b...f23771`](./contracts/ethereum-1/0x17394bb16e522e1661062aa27644fc818cf23771/) | FlashLoanLoopingFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x150bec...8a9056`](./contracts/base-8453/0x150bec677391a7d6eea27e63cd0be5a2888a9056/) | FlashLoanLoopingV1 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1e5a4c...670f11`](./contracts/ethereum-1/0x1e5a4c1d313219b491af392b4b6fe2d715670f11/) | FlashLoanLoopingV1_7 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x282056...511b7f`](./contracts/ethereum-1/0x282056fc9515ee5622690ce908a84f15b4511b7f/) | FlashRepay | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x162977...070b4c`](./contracts/base-8453/0x162977f0b19b21ededf3f6e61950d57115070b4c/) | FlashRepayV1 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x6058cd...751a64`](./contracts/ethereum-1/0x6058cda655ac20b27ceeb1d44ec57311fc751a64/) | GetMarketShutdownCalldataScript | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x57f543...a13fce`](./contracts/ethereum-1/0x57f543adb4fd741e2e508cc06e8e72bdeea13fce/) | PauseAll | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x7e3ce0...da026d`](./contracts/ethereum-1/0x7e3ce0f1e13ed80fe51f2e94f9ccaad9b2da026d/) | Rheo | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 15 |
| upstream | 3 |
| standard_library | 1 |
| needs_review | 0 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 8
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=7, medium=1
- Match method counts: extraction_exact=292

Zero-match audit list:

- [13770] Rendered PDF capture
- [13771] Rendered PDF capture
- [13772] Rendered PDF capture
- [13776] v1.6.1
- [13777] v1.5.1
- [13778] v1.5
- [13782] v0.1.0
- [13783] 2025-07-26-Obsidian-Audits.pdf

Fork inheritance lineage and inherited audits are included when available.
