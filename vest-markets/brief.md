# Agentic Audit Brief: Vest Markets

⚠️ Lifecycle status: DECLINING - TVL dropped 63.5% over 90 days

## Project Overview

- Project: Vest Markets (`vest-markets`)
- Website: [https://alpha.vestmarkets.com/join/LLAMA](https://alpha.vestmarkets.com/join/LLAMA)
- Lifecycle: declining (Tier 1, declining)
- Generated: 2026-06-10T20:59:18.592Z
- Pipeline run: correction-skeletal-description-fix-all
- Chains: arbitrum, base, ethereum, optimism, polygon
- Contract surface: 4 unique implementations (68 raw deployments)
- DeFi Llama TVL: $1,655,524.87
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Vest Markets is a perpetuals and leveraged trading DEX for equities, crypto and FX. Its bridge contracts are supporting infrastructure rather than the primary protocol identity.

### Architecture

The SrcBridge contract handles cross-chain asset transfers and is deployed on multiple chains, while the Treasury manages protocol fees. The Exchange and RouterV2 contracts facilitate trading and routing, sharing the bridge and treasury infrastructure.

## Audit Coverage Summary

- Verified implementations audited: 0/4 (0.0%)
- Verified + Unaudited implementations: 4
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 4
- Raw deployments: 68
- Audits discovered: 0
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: n/a (unknown)
- Staleness: 0 fresh, 0 aging, 0 stale, 0 unknown
- Tier 1 coverage: No Tier 1 coverage
- Note: This protocol is classified as [declining]. ASD of n/a represents exposure in a protocol with declining activity.

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (4)

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| DevSrcBridge | operational_periphery | arbitrum | 19 deployments: base `0x57b6f6...c27e61`; base `0x80ee95...d03dc0`; base `0x9d8381...47c01f`; base `0xb0a880...1e7982`; base `0xcab5c4...5ef90c`; arbitrum [`0x032aca...e55ca8`](./contracts/arbitrum-42161/0x032aca08c1be8fa4d4902cf8db011769d9e55ca8/); arbitrum `0x0b3b31...495e14`; arbitrum `0x15a6da...2051e5`; arbitrum `0x18b5b2...a28bd6`; arbitrum `0x208166...aac75b`; arbitrum `0x5cb2d8...ee2969`; arbitrum `0x6226cb...dadcfb`; arbitrum `0x648bcd...3cab29`; arbitrum `0x6c0f49...a9a1b2`; arbitrum `0x8092c5...9e1799`; arbitrum `0xa28b1b...a46851`; arbitrum `0xab99af...2f10d0`; arbitrum `0xb3df06...ccfcf5`; arbitrum `0xbfe4c2...b83dc8` | ⚠️ Unaudited |
| ProxyAdmin | governance | arbitrum | 5 deployments: ethereum `0x769623...58229e`; optimism `0x769623...58229e`; polygon `0x769623...58229e`; base `0x769623...58229e`; arbitrum [`0x705aaf...6fa7f9`](./contracts/arbitrum-42161/0x705aaffeccb370883531f09c64133d3abb6fa7f9/) | ⚠️ Unaudited |
| SrcBridge | operational_periphery | polygon | 42 deployments: ethereum `0x725f61...043a8f`; ethereum `0x7a6d7e...60d81b`; ethereum `0x80ee95...d03dc0`; ethereum `0x9f9cc9...f1dafc`; ethereum `0xcb0f6b...ba42a0`; ethereum `0xcc91f7...2c31dc`; ethereum `0xe80f92...e1c35a`; ethereum `0xe85e79...3e3c10`; optimism `0x725f61...043a8f`; optimism `0x80ee95...d03dc0`; optimism `0x9f9cc9...f1dafc`; optimism `0xb0ebd4...c04d80`; optimism `0xcb0f6b...ba42a0`; optimism `0xcc91f7...2c31dc`; optimism `0xe80f92...e1c35a`; optimism `0xe85e79...3e3c10`; polygon [`0x0b3b31...495e14`](./contracts/polygon-137/0x0b3b31da21ca84068be498394c64ad8447495e14/); polygon `0x218175...3eb56d`; polygon `0x407720...1e27d1`; polygon `0x508cb1...e02399`; polygon `0xb0a880...1e7982`; polygon `0xb15e8b...fddbfe`; polygon `0xcb0f6b...ba42a0`; polygon `0xe80f92...e1c35a`; base [`0x0b3b31...495e14`](./contracts/base-8453/0x0b3b31da21ca84068be498394c64ad8447495e14/); base `0x218175...3eb56d`; base `0x6409df...4889bd`; base `0x6d7976...d0aee6`; base `0x791958...630d63`; base `0xb15e8b...fddbfe`; base `0xcb0f6b...ba42a0`; base `0xe80f92...e1c35a`; arbitrum `0x33c48d...64cffc`; arbitrum `0x48624e...950a75`; arbitrum `0x4e63e3...3ac2b7`; arbitrum `0x624556...d04a77`; arbitrum `0x7b3e67...3a4ad2`; arbitrum `0x80c526...0eda00`; arbitrum `0x8952c8...209a97`; arbitrum `0x8f1587...04cbd3`; arbitrum `0x9e5550...4d2564`; arbitrum `0xf863a9...2f78da` | ⚠️ Unaudited |
| Treasury | operational_periphery | base | 2 deployments: base [`0x32d95f...27ef7e`](./contracts/base-8453/0x32d95f243f9e2c1344e4baa91a8d32711527ef7e/); base `0xeacad6...620e16` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (0)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

- None

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| arbitrum | [`0x032aca...e55ca8`](./contracts/arbitrum-42161/0x032aca08c1be8fa4d4902cf8db011769d9e55ca8/) | DevSrcBridge | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x0b3b31...495e14`](./contracts/polygon-137/0x0b3b31da21ca84068be498394c64ad8447495e14/) | SrcBridge | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 2 |
| upstream | 0 |
| standard_library | 2 |
| needs_review | 0 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Fork inheritance lineage and inherited audits are included when available.
