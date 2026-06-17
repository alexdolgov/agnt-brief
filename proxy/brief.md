# Agentic Audit Brief: Proxy

## Project Overview

- Project: Proxy (`proxy`)
- Lifecycle: active (Tier 0, 38.7% below peak)
- Generated: 2026-06-17T07:00:41.856Z
- Pipeline run: brief-regen-topo-2026-06-17
- Chains: ethereum, polygon
- Contract surface: 5 unique implementations (5 raw deployments)
- DeFi Llama TVL: $16,425,058.43
- On-chain TVL (included contracts): $735.64
- TVL by chain: Polygon $735.64

## Project Description

Proxy Finance is a Bitcoin-focused DeFi protocol centered on BTCpx, a BTC wrapper, and related yield mechanisms. Its ecosystem includes PRXY governance/staking, farmProxy/fPRXY rewards, bonding, and programs for other assets; DefiLlama categorizes the protocol as a Bridge, but the description should not imply that active cross-chain transfer infrastructure is its sole or primary function without additional supporting evidence.

### Architecture

The single product family encompasses all core contracts: BTCpx_Proxy manages the wrapped Bitcoin token, ProxyTokenV2 is the native PRXY token, and PRXYStaking handles staking rewards. No separate families or shared infrastructure are evident from the contract surface.

## Contract Surface Quality

- Indexed contracts: 372; live-surface contracts included: 5 (5 live, 0 unknown).
- Excluded by liveness: 358 inactive, 9 singleton, 0 uninitialized.
- Deployment units: 3/6 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Verified implementations audited: 2/5 (40.0%)
- Verified + Unaudited implementations: 3
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 5
- Raw deployments: 5
- Audits discovered: 1
- Scoreable audits (matched contracts): 1
- ASD (verified + unaudited TVL): $735.64
- Latest audit: 2021-04 (stale)
- Staleness: 0 fresh, 0 aging, 1 stale, 0 unknown
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| unknown | Tier 2 | 2 | 40.0% | 2021-04 |

## Contract Surface

### ✅ Verified + Audited (2)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| BTCpx | unknown | ethereum | unit-25490 | [`0x9c3218...dd1021`](./contracts/ethereum-1/0x9c32185b81766a051e08de671207b34466dd1021/) | ✅ Audited |
| BTCpx | unknown | polygon | unit-25493 | [`0x9c3218...dd1021`](./contracts/polygon-137/0x9c32185b81766a051e08de671207b34466dd1021/) | ✅ Audited |

### ⚠️ Verified + Unaudited (3)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| ProxyTokenV2 | token | polygon | n/a | [`0xab3d68...cb8591`](./contracts/polygon-137/0xab3d689c22a2bb821f50a4ff0f21a7980dcb8591/) | ⚠️ Unaudited |
| fPRXY | unknown | polygon | unit-25492 | [`0x256116...4b68e1`](./contracts/polygon-137/0x256116a8ea8bad13897462117d88082c464b68e1/) | ⚠️ Unaudited |
| sPRXY | unknown | polygon | n/a | [`0x426ac2...ffc20d`](./contracts/polygon-137/0x426ac20aa0ce165cccfb905fb917758731ffc20d/) | ⚠️ Unaudited |

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
| [BTC Proxy Smart Contracts Audit Report - QuillAudits.pdf](https://github.com/Quillhash/Audit_Reports/blob/master/BTC%20Proxy%20Smart%20Contracts%20Audit%20Report%20-%20QuillAudits.pdf) | unknown | Audit | 2021-04 | stale | Direct | contract_name | 2 | high |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| polygon | [`0xab3d68...cb8591`](./contracts/polygon-137/0xab3d689c22a2bb821f50a4ff0f21a7980dcb8591/) | ProxyTokenV2 | token | $735.64 | Verified native implementation with $735.64 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x426ac2...ffc20d`](./contracts/polygon-137/0x426ac20aa0ce165cccfb905fb917758731ffc20d/) | sPRXY | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 4 |
| upstream | 0 |
| standard_library | 1 |
| needs_review | 0 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=1
- Match method counts: extraction_exact=2

Fork inheritance lineage and inherited audits are included when available.
