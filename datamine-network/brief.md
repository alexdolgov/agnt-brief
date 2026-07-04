# Agentic Audit Brief: datamine-network

## Project Overview

- Project: datamine-network (`datamine-network`)
- Lifecycle: unknown
- Generated: 2026-07-04T14:53:10.800Z
- Pipeline run: v2-2026-07-02-1ba3fd
- Chains: arbitrum, ethereum
- Contract surface: 10 unique implementations (10 raw deployments)
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Structural profile: 10 project-authored contract(s) across 2 chain(s); 6 ERC20 tokens; built on openzeppelin.

### Architecture

The protocol forms a single structural family (Core Logic) of 10 contract(s).

## Contract Surface Quality

- Indexed contracts: 10; live-surface contracts included: 10 (10 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 0/9 (0.0%)
- Deployed-live implementations: 10 of 10 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 0/10
- Verified + Unaudited implementations: 10
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 10
- Raw deployments: 10
- Audits discovered: 0 (0 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: n/a (unknown)
- Audit staleness (calendar age): 0 fresh, 0 aging, 0 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (10)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| ArbiFluxToken | unknown | arbitrum | n/a | [`0x640812...71b276`](./contracts/arbitrum-42161/0x64081252c497fcfec247a664e9d10ca8ed71b276/) | ⚠️ Unaudited |
| BatchMinter | unknown | arbitrum | n/a | [`0x352c8a...fd189c`](./contracts/arbitrum-42161/0x352c8a363ef1c9e730b8a2ee14bab90545fd189c/) | ⚠️ Unaudited |
| DamToken | unknown | ethereum | n/a | [`0xf80d58...8786df`](./contracts/ethereum-1/0xf80d589b3dbe130c270a69f1a69d050f268786df/) | ⚠️ Unaudited |
| DatamineTimRewards | unknown | arbitrum | n/a | [`0x0eba2e...d1212b`](./contracts/arbitrum-42161/0x0eba2eb532a46ae8c7010668671e5bcdc6d1212b/) | ⚠️ Unaudited |
| DatamineTimRewardsVersionTwo | unknown | arbitrum | n/a | [`0xe948c8...7c29dd`](./contracts/arbitrum-42161/0xe948c8417dd2f8e7dfc88ac3f50b3f89db7c29dd/) | ⚠️ Unaudited |
| Flux | unknown | arbitrum | n/a | [`0xf80d58...8786df`](./contracts/arbitrum-42161/0xf80d589b3dbe130c270a69f1a69d050f268786df/) | ⚠️ Unaudited |
| FluxToken | unknown | ethereum | n/a | [`0x469eda...5cb1d9`](./contracts/ethereum-1/0x469eda64aed3a3ad6f868c44564291aa415cb1d9/) | ⚠️ Unaudited |
| HodlClickerRush | unknown | arbitrum | n/a | [`0x012c2a...8d27e0`](./contracts/arbitrum-42161/0x012c2a83f854bd016074195d06611785ef8d27e0/) | ⚠️ Unaudited |
| LockquidityToken | unknown | arbitrum | n/a | [`0x454f67...4cea03`](./contracts/arbitrum-42161/0x454f676d44df315eef9b5425178d5a8b524cea03/) | ⚠️ Unaudited |
| UniswapV2Pair | unknown | arbitrum | n/a | [`0x0c93a1...405e7a`](./contracts/arbitrum-42161/0x0c93a1d3f68a0554d37f3e7af3a1442a94405e7a/) | ⚠️ Unaudited |

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
| arbitrum | [`0x640812...71b276`](./contracts/arbitrum-42161/0x64081252c497fcfec247a664e9d10ca8ed71b276/) | ArbiFluxToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x352c8a...fd189c`](./contracts/arbitrum-42161/0x352c8a363ef1c9e730b8a2ee14bab90545fd189c/) | BatchMinter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xf80d58...8786df`](./contracts/ethereum-1/0xf80d589b3dbe130c270a69f1a69d050f268786df/) | DamToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x0eba2e...d1212b`](./contracts/arbitrum-42161/0x0eba2eb532a46ae8c7010668671e5bcdc6d1212b/) | DatamineTimRewards | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0xe948c8...7c29dd`](./contracts/arbitrum-42161/0xe948c8417dd2f8e7dfc88ac3f50b3f89db7c29dd/) | DatamineTimRewardsVersionTwo | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0xf80d58...8786df`](./contracts/arbitrum-42161/0xf80d589b3dbe130c270a69f1a69d050f268786df/) | Flux | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x469eda...5cb1d9`](./contracts/ethereum-1/0x469eda64aed3a3ad6f868c44564291aa415cb1d9/) | FluxToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x012c2a...8d27e0`](./contracts/arbitrum-42161/0x012c2a83f854bd016074195d06611785ef8d27e0/) | HodlClickerRush | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x454f67...4cea03`](./contracts/arbitrum-42161/0x454f676d44df315eef9b5425178d5a8b524cea03/) | LockquidityToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 9 |
| upstream | 1 |
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
