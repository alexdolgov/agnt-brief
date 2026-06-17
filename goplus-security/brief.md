# Agentic Audit Brief: GoPlus Security

## Project Overview

- Project: GoPlus Security (`goplus-security`)
- Website: [https://gopluslabs.io](https://gopluslabs.io)
- Lifecycle: active (Tier 0, 50.4% below peak)
- Generated: 2026-06-17T07:00:45.293Z
- Pipeline run: brief-regen-topo-2026-06-17
- Chains: arbitrum, base, bsc, ethereum
- Contract surface: 13 unique implementations (22 raw deployments)
- DeFi Llama TVL: $30,021,814.00
- On-chain TVL (included contracts): $34.65
- TVL by chain: Bsc $34.65

## Project Description

GoPlus Security is a Web3 and AI security platform that provides a modular user security layer, security APIs, token risk checks, app and browser-extension security tools, GoPlus Security Module, SafeToken Protocol products including SafeToken Locker, AgentGuard, and DeepScan.

### Architecture

The locker families (V2 and V3) share the same deployer cluster, indicating a common development team and likely shared infrastructure. The OpenAPI family includes standard token contracts that may be referenced by the security APIs, but no direct on-chain dependency is visible.

## Contract Surface Quality

- Indexed contracts: 57; live-surface contracts included: 22 (18 live, 4 unknown).
- Excluded by liveness: 35 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 2/2 live.
- Detected codebases: uniswap-v2
- Unverified dependencies: 4/15.

## Audit Coverage Summary

- Verified implementations audited: 0/12 (0.0%)
- Verified + Unaudited implementations: 12
- Verified by bytecode match: 0
- Unverified implementations: 1
- Unique implementations: 13
- Raw deployments: 22
- Audits discovered: 0
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): $34.65
- Latest audit: n/a (unknown)
- Staleness: 0 fresh, 0 aging, 0 stale, 0 unknown
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (12)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| RevenuePool | core_logic | bsc | n/a | [`0x648d7f...97706c`](./contracts/bsc-56/0x648d7f4ad39186949e37e9223a152435ab97706c/) | ⚠️ Unaudited |
| FiatTokenV2_2 | token | ethereum | unit-27374 | [`0xa0b869...06eb48`](./contracts/ethereum-1/0xa0b86991c6218b36c1d19d4a2e9eb0ce3606eb48/) | ⚠️ Unaudited |
| GnosisSafeL2 | governance | bsc | unit-27375 | [`0x34ebdd...23e34f`](./contracts/bsc-56/0x34ebddd30ccbd3f1e385b41bdadb30412323e34f/) | ⚠️ Unaudited |
| GPS | unknown | base | n/a | [`0x0c1dc7...a0dca5`](./contracts/base-8453/0x0c1dc73159e30c4b06170f2593d3118968a0dca5/) | ⚠️ Unaudited |
| LockFactory | registry | base | n/a | [`0x043f40...931a64`](./contracts/base-8453/0x043f4036202c54da27583a996a8c4b9471931a64/) | ⚠️ Unaudited |
| SafeTokenFactory | registry | base | n/a | 2 deployments: base [`0x0d648e...579027`](./contracts/base-8453/0x0d648ed434f95f812e6a0e9b74825bad03579027/); arbitrum [`0x0d648e...579027`](./contracts/arbitrum-42161/0x0d648ed434f95f812e6a0e9b74825bad03579027/) | ⚠️ Unaudited |
| StakingLock | unknown | bsc | n/a | [`0xeca8d7...ffee78`](./contracts/bsc-56/0xeca8d71c1f667f5c122b72af5f6e87b1dcffee78/) | ⚠️ Unaudited |
| TokenLocker | token | ethereum | n/a | 4 deployments: ethereum [`0xf17a08...dec04b`](./contracts/ethereum-1/0xf17a08a7d41f53b24ad07eb322cbbda2ebdec04b/); bsc [`0xf17a08...dec04b`](./contracts/bsc-56/0xf17a08a7d41f53b24ad07eb322cbbda2ebdec04b/); base [`0xf17a08...dec04b`](./contracts/base-8453/0xf17a08a7d41f53b24ad07eb322cbbda2ebdec04b/); arbitrum [`0xf17a08...dec04b`](./contracts/arbitrum-42161/0xf17a08a7d41f53b24ad07eb322cbbda2ebdec04b/) | ⚠️ Unaudited |
| TokenTemplate | token | arbitrum | n/a | [`0x24a9eb...bbfa0d`](./contracts/arbitrum-42161/0x24a9eb23de8e6f59bdb981b03e847f0f3abbfa0d/) | ⚠️ Unaudited |
| UniV3LPLocker | unknown | ethereum | n/a | 4 deployments: ethereum [`0x25c9c4...a9bd52`](./contracts/ethereum-1/0x25c9c4b56e820e0dea438b145284f02d9ca9bd52/); bsc [`0x25c9c4...a9bd52`](./contracts/bsc-56/0x25c9c4b56e820e0dea438b145284f02d9ca9bd52/); base [`0x25c9c4...a9bd52`](./contracts/base-8453/0x25c9c4b56e820e0dea438b145284f02d9ca9bd52/); arbitrum [`0x25c9c4...a9bd52`](./contracts/arbitrum-42161/0x25c9c4b56e820e0dea438b145284f02d9ca9bd52/) | ⚠️ Unaudited |
| UniV4LiquidityLocker | unknown | base | n/a | 3 deployments: ethereum `0x83eab3...53f7d7`; base [`0x4f26fa...95519e`](./contracts/base-8453/0x4f26fa33bce395d50671cbc8c7a5d3c55a95519e/); base `0xf5cdad...9fcca1` | ⚠️ Unaudited |
| WETH9 | token | ethereum | n/a | [`0xc02aaa...756cc2`](./contracts/ethereum-1/0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2/) | ⚠️ Unaudited |

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
| UnnamedContract | unknown | ethereum | n/a | `0x9a4cd4...acfd6a` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 0 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 13 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Fork inheritance lineage and inherited audits are included when available.
