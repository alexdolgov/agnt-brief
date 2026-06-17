# Agentic Audit Brief: Eventum Bridge

## Project Overview

- Project: Eventum Bridge (`eventum-bridge`)
- Website: [https://evedex.com/en-US/](https://evedex.com/en-US/)
- Lifecycle: active (Tier 0, TVL trajectory)
- Generated: 2026-06-17T22:16:29.375Z
- Pipeline run: v2-pipeline-2026-06-17-2a130c-9ddf
- Chains: arbitrum, ethereum
- Contract surface: 21 unique implementations (25 raw deployments)
- DeFi Llama TVL: $2,820,775.98
- On-chain TVL (included contracts): $1,642,372.23
- TVL by chain: Ethereum $1,641,839.82 | Arbitrum $532.42

## Project Description

Eventum Bridge is the canonical bridge for Eventum, an Arbitrum Orbit L3 used by the EVEDEX exchange ecosystem. It supports asset movement into and out of the Eventum network for EVEDEX-related applications; it should not be described as a standalone Ethereum-to-Arbitrum One bridge unless Eventum-specific documentation supports those endpoints.

### Architecture

The Bridge family provides the core cross-chain messaging infrastructure, while the Eventum Bridge family extends it with vault-based asset management, token wrapping, and governance. Both families share proxy patterns and rely on common infrastructure like gateways and routers for asset flow.

## Contract Surface Quality

- Indexed contracts: 86; live-surface contracts included: 25 (24 live, 1 unknown).
- Excluded by liveness: 41 inactive, 20 singleton, 0 uninitialized.
- Deployment units: 12/27 live.
- Detected codebases: none
- Dependencies extracted: 1; unverified dependencies: 0.

## Audit Coverage Summary

- Verified implementations audited: 0/17 (0.0%)
- Verified + Unaudited implementations: 17
- Verified by bytecode match: 0
- Unverified implementations: 4
- Unique implementations: 21
- Raw deployments: 25
- Audits discovered: 2
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): $1,642,372.23
- Latest audit: 2025-08 (fresh)
- Staleness: 2 fresh, 0 aging, 0 stale, 0 unknown
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (17)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| DVFDepositContract | core_logic | ethereum | unit-33231 | [`0xbca303...045afa`](./contracts/ethereum-1/0xbca3039a18c0d2f2f84ba8a028c67290bc045afa/) | ⚠️ Unaudited |
| VaultV1 | core_logic | arbitrum | unit-33235 (2 proxies) | 2 deployments: arbitrum [`0x2e8d8b...4ca8fe`](./contracts/arbitrum-42161/0x2e8d8b56821ebb0abd4bb9dcd4703a2df54ca8fe/); arbitrum `0xa526c0...0c9684` | ⚠️ Unaudited |
| aeWETH | token | arbitrum | unit-33239 | [`0x82af49...3fbab1`](./contracts/arbitrum-42161/0x82af49447d8a07e3bd95bd0d56f35241523fbab1/) | ⚠️ Unaudited |
| ArbitrumExtensionV2 | adapter | arbitrum | unit-33248 | [`0xfd086b...9fcbb9`](./contracts/arbitrum-42161/0xfd086bc7cd5c481dcc9c85ebe478a1c0b69fcbb9/) | ⚠️ Unaudited |
| Bridge | operational_periphery | arbitrum | unit-33243 | [`0xad3026...086b38`](./contracts/arbitrum-42161/0xad3026961087eccec0508d411bb9fb405e086b38/) | ⚠️ Unaudited |
| BridgeMiddlewareV2 | operational_periphery | arbitrum | n/a | 3 deployments: arbitrum [`0x4721ae...b251a9`](./contracts/arbitrum-42161/0x4721aee3296f6f34a621d7645ee2fa2ae0b251a9/); arbitrum `0x5fbf44...521b82`; arbitrum `0xfdaf74...2826b8` | ⚠️ Unaudited |
| FiatTokenV2_2 | token | arbitrum | unit-33244 | [`0xaf88d0...8e5831`](./contracts/arbitrum-42161/0xaf88d065e77c8cc2239327c5edb3a432268e5831/) | ⚠️ Unaudited |
| Inbox | unknown | arbitrum | unit-33242 | [`0xa0a1b4...a11296`](./contracts/arbitrum-42161/0xa0a1b42dcb62d371d5abf4523bd614b0eaa11296/) | ⚠️ Unaudited |
| L1ERC20Gateway | token | arbitrum | unit-33241 | [`0x8d21df...33d4b1`](./contracts/arbitrum-42161/0x8d21dfea9231db85dce72b8d9f18e917d833d4b1/) | ⚠️ Unaudited |
| L1GatewayRouter | adapter | arbitrum | unit-33234 | [`0x1628ce...59e66a`](./contracts/arbitrum-42161/0x1628ce6477221fdd1cd88ea3d15d587dfc59e66a/) | ⚠️ Unaudited |
| MinimalProxyFactory | registry | arbitrum | n/a | 2 deployments: arbitrum [`0x1ee981...fdd057`](./contracts/arbitrum-42161/0x1ee981c521f3c6cd520c0a30ef7a1d2910fdd057/); arbitrum `0x99be07...52977a` | ⚠️ Unaudited |
| Outbox | unknown | arbitrum | unit-33247 | [`0xec32bd...dbc040`](./contracts/arbitrum-42161/0xec32bd08faf9533371384ad13045116930dbc040/) | ⚠️ Unaudited |
| PythAggregatorV3 | unknown | ethereum | n/a | [`0x7ad6d5...ef78be`](./contracts/ethereum-1/0x7ad6d5c9435aa7781a817913b3afec2645ef78be/) | ⚠️ Unaudited |
| RollupAdminLogic | unknown | arbitrum | unit-33246 | [`0xd226bd...1abbbc`](./contracts/arbitrum-42161/0xd226bd8d36725f4ce12961370211dfeeef1abbbc/) | ⚠️ Unaudited |
| SequencerInbox | unknown | arbitrum | unit-33240 | [`0x8696d3...6db025`](./contracts/arbitrum-42161/0x8696d32899e59f8a2ed76463cc0a0b07e56db025/) | ⚠️ Unaudited |
| StandardArbERC20 | token | arbitrum | unit-33236 | [`0x2f2a25...fc5b0f`](./contracts/arbitrum-42161/0x2f2a2543b76a4166549f7aab2e75bef0aefc5b0f/) | ⚠️ Unaudited |
| Storage | unknown | arbitrum | n/a | [`0xc7c194...a3ea0c`](./contracts/arbitrum-42161/0xc7c1943bccbc81b8de5b7f407c00b7805ea3ea0c/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (4)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | ethereum | n/a | `0x5ee2d7...cfec95` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x7c56d1...0afd70` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xb0d4a9...3a7c49` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xc643e5...2d8941` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [hashex.org/audits/evedex](https://hashex.org/audits/evedex) | HashEx | Audit | 2025-08 | fresh | Direct | contract_name | 0 | n/a |
| [skynet.certik.com/projects/evedex](https://skynet.certik.com/projects/evedex) | CertiK | Audit | 2025-07 | fresh | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| arbitrum | [`0x4721ae...b251a9`](./contracts/arbitrum-42161/0x4721aee3296f6f34a621d7645ee2fa2ae0b251a9/) | BridgeMiddlewareV2 | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x2f2a25...fc5b0f`](./contracts/arbitrum-42161/0x2f2a2543b76a4166549f7aab2e75bef0aefc5b0f/) | StandardArbERC20 | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0xc7c194...a3ea0c`](./contracts/arbitrum-42161/0xc7c1943bccbc81b8de5b7f407c00b7805ea3ea0c/) | Storage | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 3 |
| upstream | 3 |
| standard_library | 11 |
| needs_review | 4 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 2
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: extraction_exact=1

Zero-match audit list:

- [2788] hashex.org/audits/evedex
- [2789] skynet.certik.com/projects/evedex

Fork inheritance lineage and inherited audits are included when available.
