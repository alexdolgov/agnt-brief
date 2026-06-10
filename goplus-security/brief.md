# Agentic Audit Brief: GoPlus Security

## Project Overview

- Project: GoPlus Security (`goplus-security`)
- Website: [https://gopluslabs.io](https://gopluslabs.io)
- Lifecycle: active (Tier 0, 50.4% below peak)
- Generated: 2026-06-10T20:59:04.381Z
- Pipeline run: correction-skeletal-description-fix-all
- Chains: arbitrum, base, bsc, ethereum
- Contract surface: 23 unique implementations (37 raw deployments)
- DeFi Llama TVL: $32,764,727.00
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

GoPlus Security is a Web3 and AI security platform that provides a modular user security layer, security APIs, token risk checks, app and browser-extension security tools, GoPlus Security Module, SafeToken Protocol products including SafeToken Locker, AgentGuard, and DeepScan.

### Architecture

The locker families (V2 and V3) share the same deployer cluster, indicating a common development team and likely shared infrastructure. The OpenAPI family includes standard token contracts that may be referenced by the security APIs, but no direct on-chain dependency is visible.

## Audit Coverage Summary

- Verified implementations audited: 0/11 (0.0%)
- Verified + Unaudited implementations: 11
- Verified by bytecode match: 0
- Unverified implementations: 12
- Unique implementations: 23
- Raw deployments: 37
- Audits discovered: 0
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: n/a (unknown)
- Staleness: 0 fresh, 0 aging, 0 stale, 0 unknown
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (11)

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| FiatTokenV2_2 | token | ethereum | [`0xa0b869...06eb48`](./contracts/ethereum-1/0xa0b86991c6218b36c1d19d4a2e9eb0ce3606eb48/) | ⚠️ Unaudited |
| GPS | unknown | base | [`0x0c1dc7...a0dca5`](./contracts/base-8453/0x0c1dc73159e30c4b06170f2593d3118968a0dca5/) | ⚠️ Unaudited |
| LockFactory | registry | base | [`0x043f40...931a64`](./contracts/base-8453/0x043f4036202c54da27583a996a8c4b9471931a64/) | ⚠️ Unaudited |
| SafeTokenFactory | registry | ethereum | 3 deployments: ethereum [`0x0d648e...579027`](./contracts/ethereum-1/0x0d648ed434f95f812e6a0e9b74825bad03579027/); base [`0x0d648e...579027`](./contracts/base-8453/0x0d648ed434f95f812e6a0e9b74825bad03579027/); arbitrum [`0x0d648e...579027`](./contracts/arbitrum-42161/0x0d648ed434f95f812e6a0e9b74825bad03579027/) | ⚠️ Unaudited |
| StakingLock | unknown | bsc | 3 deployments: bsc [`0x19c34d...0a2b8c`](./contracts/bsc-56/0x19c34d93f6cef657491fc3469e8d40f0600a2b8c/); bsc `0xeca8d7...ffee78`; bsc `0xf83ade...31087f` | ⚠️ Unaudited |
| TimeLockedWallet | governance | bsc | [`0x62d55e...666bea`](./contracts/bsc-56/0x62d55e1d648dc1076b5e273018122607d9666bea/) | ⚠️ Unaudited |
| TokenLocker | token | ethereum | 3 deployments: ethereum [`0xf17a08...dec04b`](./contracts/ethereum-1/0xf17a08a7d41f53b24ad07eb322cbbda2ebdec04b/); base [`0xf17a08...dec04b`](./contracts/base-8453/0xf17a08a7d41f53b24ad07eb322cbbda2ebdec04b/); arbitrum [`0xf17a08...dec04b`](./contracts/arbitrum-42161/0xf17a08a7d41f53b24ad07eb322cbbda2ebdec04b/) | ⚠️ Unaudited |
| TokenTemplate | token | ethereum | 3 deployments: ethereum [`0x24a9eb...bbfa0d`](./contracts/ethereum-1/0x24a9eb23de8e6f59bdb981b03e847f0f3abbfa0d/); base [`0x24a9eb...bbfa0d`](./contracts/base-8453/0x24a9eb23de8e6f59bdb981b03e847f0f3abbfa0d/); arbitrum [`0x24a9eb...bbfa0d`](./contracts/arbitrum-42161/0x24a9eb23de8e6f59bdb981b03e847f0f3abbfa0d/) | ⚠️ Unaudited |
| UniV3LPLocker | unknown | ethereum | 3 deployments: ethereum [`0x25c9c4...a9bd52`](./contracts/ethereum-1/0x25c9c4b56e820e0dea438b145284f02d9ca9bd52/); base [`0x25c9c4...a9bd52`](./contracts/base-8453/0x25c9c4b56e820e0dea438b145284f02d9ca9bd52/); arbitrum [`0x25c9c4...a9bd52`](./contracts/arbitrum-42161/0x25c9c4b56e820e0dea438b145284f02d9ca9bd52/) | ⚠️ Unaudited |
| UniV4LiquidityLocker | unknown | base | 5 deployments: ethereum `0x83eab3...53f7d7`; ethereum `0xe7873e...8e76f2`; base [`0x41f3e9...41e41b`](./contracts/base-8453/0x41f3e9948d4e97e547d800acfd31df9fd741e41b/); base `0x4f26fa...95519e`; base `0xf5cdad...9fcca1` | ⚠️ Unaudited |
| WETH9 | token | ethereum | [`0xc02aaa...756cc2`](./contracts/ethereum-1/0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (12)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| UnnamedContract | unknown | ethereum | `0x29ec7b...cc3c62` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x9a4cd4...acfd6a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xefa940...6de484` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x03b957...c440ba` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x0a6d51...0054ee` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x50727f...c24197` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x71fed2...75cffd` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x9594fc...9489fb` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xaf41fa...da9e29` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xb988ba...4db763` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xc75cd1...4ccb63` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xd9a671...11f156` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| base | [`0x0c1dc7...a0dca5`](./contracts/base-8453/0x0c1dc73159e30c4b06170f2593d3118968a0dca5/) | GPS | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x043f40...931a64`](./contracts/base-8453/0x043f4036202c54da27583a996a8c4b9471931a64/) | LockFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0d648e...579027`](./contracts/ethereum-1/0x0d648ed434f95f812e6a0e9b74825bad03579027/) | SafeTokenFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x19c34d...0a2b8c`](./contracts/bsc-56/0x19c34d93f6cef657491fc3469e8d40f0600a2b8c/) | StakingLock | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x62d55e...666bea`](./contracts/bsc-56/0x62d55e1d648dc1076b5e273018122607d9666bea/) | TimeLockedWallet | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xf17a08...dec04b`](./contracts/ethereum-1/0xf17a08a7d41f53b24ad07eb322cbbda2ebdec04b/) | TokenLocker | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x24a9eb...bbfa0d`](./contracts/ethereum-1/0x24a9eb23de8e6f59bdb981b03e847f0f3abbfa0d/) | TokenTemplate | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x25c9c4...a9bd52`](./contracts/ethereum-1/0x25c9c4b56e820e0dea438b145284f02d9ca9bd52/) | UniV3LPLocker | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x41f3e9...41e41b`](./contracts/base-8453/0x41f3e9948d4e97e547d800acfd31df9fd741e41b/) | UniV4LiquidityLocker | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 21 |
| upstream | 2 |
| standard_library | 0 |
| needs_review | 0 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Fork inheritance lineage and inherited audits are included when available.
