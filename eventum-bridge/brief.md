# Agentic Audit Brief: Eventum Bridge

## Project Overview

- Project: Eventum Bridge (`eventum-bridge`)
- Website: [https://evedex.com/en-US/](https://evedex.com/en-US/)
- Lifecycle: active (Tier 0, TVL trajectory)
- Generated: 2026-06-10T20:59:03.850Z
- Pipeline run: correction-skeletal-description-fix-all
- Chains: arbitrum, ethereum
- Contract surface: 28 unique implementations (57 raw deployments)
- DeFi Llama TVL: $2,820,145.70
- On-chain TVL (included contracts): $1,642,372.23
- TVL by chain: Ethereum $1,641,839.82 | Arbitrum $532.42

## Project Description

Eventum Bridge is the canonical bridge for Eventum, an Arbitrum Orbit L3 used by the EVEDEX exchange ecosystem. It supports asset movement into and out of the Eventum network for EVEDEX-related applications; it should not be described as a standalone Ethereum-to-Arbitrum One bridge unless Eventum-specific documentation supports those endpoints.

### Architecture

The Bridge family provides the core cross-chain messaging infrastructure, while the Eventum Bridge family extends it with vault-based asset management, token wrapping, and governance. Both families share proxy patterns and rely on common infrastructure like gateways and routers for asset flow.

## Audit Coverage Summary

- Verified implementations audited: 1/26 (3.8%)
- Verified + Unaudited implementations: 25
- Verified by bytecode match: 0
- Unverified implementations: 2
- Unique implementations: 28
- Raw deployments: 57
- Audits discovered: 2
- Scoreable audits (matched contracts): 1
- ASD (verified + unaudited TVL): $1,642,372.23
- Latest audit: 2025-08 (fresh)
- Staleness: 2 fresh, 0 aging, 0 stale, 0 unknown
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| HashEx | Tier 2 | 1 | 3.8% | 2025-08 |

## Contract Surface

### ✅ Verified + Audited (1)

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| TreasuryV1 | operational_periphery | arbitrum | [`0x0a9591...b5735a`](./contracts/arbitrum-42161/0x0a9591c64fd9e8c1f9a81db1b668a5f211b5735a/) | ✅ Audited |

### ⚠️ Verified + Unaudited (25)

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| DVFDepositContract | core_logic | ethereum | [`0xbca303...045afa`](./contracts/ethereum-1/0xbca3039a18c0d2f2f84ba8a028c67290bc045afa/) | ⚠️ Unaudited |
| VaultV1 | core_logic | arbitrum | 2 deployments: arbitrum [`0x2e8d8b...4ca8fe`](./contracts/arbitrum-42161/0x2e8d8b56821ebb0abd4bb9dcd4703a2df54ca8fe/); arbitrum `0xa526c0...0c9684` | ⚠️ Unaudited |
| aeWETH | token | arbitrum | [`0x82af49...3fbab1`](./contracts/arbitrum-42161/0x82af49447d8a07e3bd95bd0d56f35241523fbab1/) | ⚠️ Unaudited |
| ArbitrumExtensionV2 | adapter | arbitrum | [`0xfd086b...9fcbb9`](./contracts/arbitrum-42161/0xfd086bc7cd5c481dcc9c85ebe478a1c0b69fcbb9/) | ⚠️ Unaudited |
| BadgeV1 | unknown | arbitrum | 20 deployments: arbitrum [`0x026968...3f9af8`](./contracts/arbitrum-42161/0x026968b5ced079eccd6cc78f35a5dfddc13f9af8/); arbitrum `0x050738...83919b`; arbitrum `0x1fdf83...961c01`; arbitrum `0x21f69c...c404e5`; arbitrum `0x372a18...b7b3f8`; arbitrum `0x4b2f4f...13c2bf`; arbitrum `0x6a457a...7ca3a2`; arbitrum `0x6b25e2...ca402e`; arbitrum `0x6c015b...d812e0`; arbitrum `0x7101f6...30d568`; arbitrum `0x77075c...ff8a17`; arbitrum `0x86dc07...2e6197`; arbitrum `0x948c63...3530a2`; arbitrum `0xa4fbdd...7f6880`; arbitrum `0xb8d4b9...fb2945`; arbitrum `0xbe0a8f...6dda52`; arbitrum `0xc6bc0e...40ecfd`; arbitrum `0xdac651...c63dfd`; arbitrum `0xdb5ea5...f0586f`; arbitrum `0xdef2dd...c697de` | ⚠️ Unaudited |
| BadgeV3 | unknown | arbitrum | [`0x6a60af...05a890`](./contracts/arbitrum-42161/0x6a60af113f182e4ac903508aac3ecce73405a890/) | ⚠️ Unaudited |
| Bridge | operational_periphery | arbitrum | [`0xad3026...086b38`](./contracts/arbitrum-42161/0xad3026961087eccec0508d411bb9fb405e086b38/) | ⚠️ Unaudited |
| BridgeMiddleware | operational_periphery | arbitrum | 3 deployments: arbitrum [`0x254e69...35be16`](./contracts/arbitrum-42161/0x254e696ae76c17adc4363ae9476ce24ce935be16/); arbitrum `0x26052f...5fa503`; arbitrum `0x683c48...0e3e40` | ⚠️ Unaudited |
| BridgeMiddlewareV2 | operational_periphery | arbitrum | 3 deployments: arbitrum [`0x4721ae...b251a9`](./contracts/arbitrum-42161/0x4721aee3296f6f34a621d7645ee2fa2ae0b251a9/); arbitrum `0x5fbf44...521b82`; arbitrum `0xfdaf74...2826b8` | ⚠️ Unaudited |
| BurnRegistryV1 | registry | arbitrum | [`0xc7defc...1dc36c`](./contracts/arbitrum-42161/0xc7defc896e1dd9d98aea402d928c78c0fd1dc36c/) | ⚠️ Unaudited |
| BurnRegistryV2 | registry | arbitrum | [`0x79cec0...fe79a5`](./contracts/arbitrum-42161/0x79cec02f44c0855be72b2305d42cff486efe79a5/) | ⚠️ Unaudited |
| DepositManager | core_logic | arbitrum | 3 deployments: arbitrum [`0x665842...f8a2d0`](./contracts/arbitrum-42161/0x665842c0ea5e72d985c61faf462cef13a2f8a2d0/); arbitrum `0xc14225...64562e`; arbitrum `0xf6ec90...56d45b` | ⚠️ Unaudited |
| DVFSunset | unknown | ethereum | [`0x73699b...bd2704`](./contracts/ethereum-1/0x73699b0c5542472b927dd779f2a1085ac9bd2704/) | ⚠️ Unaudited |
| FiatTokenV2_2 | token | arbitrum | [`0xaf88d0...8e5831`](./contracts/arbitrum-42161/0xaf88d065e77c8cc2239327c5edb3a432268e5831/) | ⚠️ Unaudited |
| GovernorMultisig | governance | arbitrum | [`0xeb71a9...291bf8`](./contracts/arbitrum-42161/0xeb71a9c02c1f68a9d7004e74e17c7d62c3291bf8/) | ⚠️ Unaudited |
| Inbox | unknown | arbitrum | [`0xa0a1b4...a11296`](./contracts/arbitrum-42161/0xa0a1b42dcb62d371d5abf4523bd614b0eaa11296/) | ⚠️ Unaudited |
| L1ERC20Gateway | token | arbitrum | [`0x8d21df...33d4b1`](./contracts/arbitrum-42161/0x8d21dfea9231db85dce72b8d9f18e917d833d4b1/) | ⚠️ Unaudited |
| L1GatewayRouter | adapter | arbitrum | [`0x1628ce...59e66a`](./contracts/arbitrum-42161/0x1628ce6477221fdd1cd88ea3d15d587dfc59e66a/) | ⚠️ Unaudited |
| MinimalProxyFactory | registry | arbitrum | 2 deployments: arbitrum [`0x1ee981...fdd057`](./contracts/arbitrum-42161/0x1ee981c521f3c6cd520c0a30ef7a1d2910fdd057/); arbitrum `0x99be07...52977a` | ⚠️ Unaudited |
| Outbox | unknown | arbitrum | [`0xec32bd...dbc040`](./contracts/arbitrum-42161/0xec32bd08faf9533371384ad13045116930dbc040/) | ⚠️ Unaudited |
| RollupAdminLogic | unknown | arbitrum | [`0xd226bd...1abbbc`](./contracts/arbitrum-42161/0xd226bd8d36725f4ce12961370211dfeeef1abbbc/) | ⚠️ Unaudited |
| SequencerInbox | unknown | arbitrum | [`0x8696d3...6db025`](./contracts/arbitrum-42161/0x8696d32899e59f8a2ed76463cc0a0b07e56db025/) | ⚠️ Unaudited |
| StandardArbERC20 | token | arbitrum | [`0x2f2a25...fc5b0f`](./contracts/arbitrum-42161/0x2f2a2543b76a4166549f7aab2e75bef0aefc5b0f/) | ⚠️ Unaudited |
| Storage | unknown | arbitrum | [`0xc7c194...a3ea0c`](./contracts/arbitrum-42161/0xc7c1943bccbc81b8de5b7f407c00b7805ea3ea0c/) | ⚠️ Unaudited |
| SwapManager | governance | arbitrum | 3 deployments: arbitrum [`0x770722...def2f6`](./contracts/arbitrum-42161/0x770722fcaab3c7d46fc1ad679726b232e7def2f6/); arbitrum `0xac3450...a22291`; arbitrum `0xe575f5...75daa4` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (2)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| UnnamedContract | unknown | ethereum | `0x2880ab...c17b43` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x5e023c...fcacd1` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [hashex.org/audits/evedex](https://hashex.org/audits/evedex) | HashEx | Audit | 2025-08 | fresh | Direct | contract_name | 1 | high |
| [skynet.certik.com/projects/evedex](https://skynet.certik.com/projects/evedex) | CertiK | Audit | 2025-07 | fresh | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| arbitrum | [`0x82af49...3fbab1`](./contracts/arbitrum-42161/0x82af49447d8a07e3bd95bd0d56f35241523fbab1/) | aeWETH | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0xfd086b...9fcbb9`](./contracts/arbitrum-42161/0xfd086bc7cd5c481dcc9c85ebe478a1c0b69fcbb9/) | ArbitrumExtensionV2 | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x6a60af...05a890`](./contracts/arbitrum-42161/0x6a60af113f182e4ac903508aac3ecce73405a890/) | BadgeV3 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x254e69...35be16`](./contracts/arbitrum-42161/0x254e696ae76c17adc4363ae9476ce24ce935be16/) | BridgeMiddleware | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x4721ae...b251a9`](./contracts/arbitrum-42161/0x4721aee3296f6f34a621d7645ee2fa2ae0b251a9/) | BridgeMiddlewareV2 | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x79cec0...fe79a5`](./contracts/arbitrum-42161/0x79cec02f44c0855be72b2305d42cff486efe79a5/) | BurnRegistryV2 | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0xeb71a9...291bf8`](./contracts/arbitrum-42161/0xeb71a9c02c1f68a9d7004e74e17c7d62c3291bf8/) | GovernorMultisig | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x1ee981...fdd057`](./contracts/arbitrum-42161/0x1ee981c521f3c6cd520c0a30ef7a1d2910fdd057/) | MinimalProxyFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x2f2a25...fc5b0f`](./contracts/arbitrum-42161/0x2f2a2543b76a4166549f7aab2e75bef0aefc5b0f/) | StandardArbERC20 | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0xc7c194...a3ea0c`](./contracts/arbitrum-42161/0xc7c1943bccbc81b8de5b7f407c00b7805ea3ea0c/) | Storage | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 10 |
| upstream | 2 |
| standard_library | 14 |
| needs_review | 2 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=1
- Match method counts: extraction_exact=1

Zero-match audit list:

- [2789] skynet.certik.com/projects/evedex

Fork inheritance lineage and inherited audits are included when available.
