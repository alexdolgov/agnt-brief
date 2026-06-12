# Agentic Audit Brief: Pleasing Gold

⚠️ Lifecycle status: UNKNOWN - TVL trajectory indicates non-active lifecycle.

## Project Overview

- Project: Pleasing Gold (`pleasing-gold`)
- Website: [https://www.pleasinggold.com/](https://www.pleasinggold.com/)
- Lifecycle: unknown (Tier 0, TVL trajectory)
- Generated: 2026-06-12T06:39:03.164Z
- Pipeline run: v2-pipeline-2026-06-12-6a3052-d6af
- Chains: arbitrum, ethereum
- Contract surface: 14 unique implementations (20 raw deployments)
- On-chain TVL (included contracts): $93,036,715.06
- TVL by chain: Arbitrum $93,036,715.06

## Project Description

Pleasing Gold is a real-world asset (RWA) protocol on Arbitrum One evidenced by the PGOLD gold-backed token product. PLSP and PUSD are related token contracts in the observed contract surface, but their specific product roles are not independently confirmed by the available evidence.

### Architecture

All tokens are deployed by the same deployer and share a common proxy pattern, indicating a unified token ecosystem. PGOLD, PLSP, and PUSD likely interact within a single RWA platform, though no explicit adapter or registry contracts are present.

## Audit Coverage Summary

- Verified implementations audited: 0/10 (0.0%)
- Verified + Unaudited implementations: 10
- Verified by bytecode match: 0
- Unverified implementations: 4
- Unique implementations: 14
- Raw deployments: 20
- Audits discovered: 0
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): $93,036,715.06
- Latest audit: n/a (unknown)
- Staleness: 0 fresh, 0 aging, 0 stale, 0 unknown
- Tier 1 coverage: No Tier 1 coverage
- Note: This protocol is classified as [unknown]. ASD of $93,036,715.06 represents exposure in a protocol with unknown activity.

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (10)

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| PGOLDToken | token | arbitrum | 2 deployments: arbitrum [`0x3e76bb...634f91`](./contracts/arbitrum-42161/0x3e76bb02286bfeaa89dd35f11253f2cbce634f91/); arbitrum `0xd81ea1...9788d7` | ⚠️ Unaudited |
| LockReleaseTokenPool | core_logic | arbitrum | [`0x5b5ce7...7ccdc4`](./contracts/arbitrum-42161/0x5b5ce779709360a6b6906b79cac5029a5b7ccdc4/) | ⚠️ Unaudited |
| UniswapV3Pool | core_logic | arbitrum | [`0x2a0c9a...739ac6`](./contracts/arbitrum-42161/0x2a0c9a36a640797a8430a218428f3f3dd3739ac6/) | ⚠️ Unaudited |
| PUSDToken | token | arbitrum | 2 deployments: arbitrum [`0x89ec47...cec099`](./contracts/arbitrum-42161/0x89ec479a783ff3747f2f0d3c2a292c5986cec099/); arbitrum `0xc8fb64...c1dbec` | ⚠️ Unaudited |
| BurnMintTokenPool | core_logic | ethereum | [`0xf30676...2f810a`](./contracts/ethereum-1/0xf3067615579d59c64f16f1382b6a8032622f810a/) | ⚠️ Unaudited |
| FactoryBurnMintERC20 | registry | ethereum | [`0xfb0bd8...a5334f`](./contracts/ethereum-1/0xfb0bd86210d2a10543bb40289e92d108b3a5334f/) | ⚠️ Unaudited |
| MyOFTAdapter | adapter | arbitrum | 4 deployments: arbitrum [`0x0f7c3d...48441e`](./contracts/arbitrum-42161/0x0f7c3de66af37aac0c0668db05f9d4e0ce48441e/); arbitrum `0x17cd53...d0f5cb`; arbitrum `0x793188...59fb7d`; arbitrum `0xd77d2c...ed29c6` | ⚠️ Unaudited |
| PLSPToken | token | arbitrum | 2 deployments: arbitrum [`0x0f0bbc...ea69a5`](./contracts/arbitrum-42161/0x0f0bbce15c0b949b061a622e212fa8896eea69a5/); arbitrum `0x274e09...96f4fa` | ⚠️ Unaudited |
| ProxyAdmin | governance | arbitrum | [`0x50ead2...a2e9ce`](./contracts/arbitrum-42161/0x50ead2d211d84d111c692b86e02a489d3aa2e9ce/) | ⚠️ Unaudited |
| UniswapV2Pair | unknown | arbitrum | [`0x79eb05...f10c42`](./contracts/arbitrum-42161/0x79eb05046d0017e710cabc0caee816e710f10c42/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (4)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| UnnamedContract | unknown | arbitrum | `0x087b91...8aed9e` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x0ad526...e9574e` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x32fcce...53eca0` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x612b79...929b74` | ❓ Unverified |

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
| upstream | 2 |
| standard_library | 0 |
| needs_review | 12 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Fork inheritance lineage and inherited audits are included when available.
