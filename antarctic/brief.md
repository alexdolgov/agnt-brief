# Agentic Audit Brief: Antarctic

## Project Overview

- Project: Antarctic (`antarctic`)
- Website: [https://www.antarctic.exchange/](https://www.antarctic.exchange/)
- Lifecycle: active (Tier 0, 22.7% below peak)
- Generated: 2026-06-17T07:00:52.398Z
- Pipeline run: brief-regen-topo-2026-06-17
- Chains: arbitrum
- Contract surface: 7 unique implementations (8 raw deployments)
- DeFi Llama TVL: $9,962,133.37
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Antarctic is an active perpetual futures DEX on Arbitrum. The identified AHLP and AMLP liquidity-provider token staking contracts represent a discovered LP/staking subsystem within the broader protocol, rather than the full project purpose or complete contract surface.

### Architecture

The Antarctic family consists of two staking contracts (AhlpStaker and AmlpStaker) that are accessed via ERC1967Proxy proxies. These stakers interact with the AHLP and AMLP token contracts, which represent liquidity provider positions, forming a unified staking system.

## Contract Surface Quality

- Indexed contracts: 14; live-surface contracts included: 8 (8 live, 0 unknown).
- Excluded by liveness: 2 inactive, 4 singleton, 0 uninitialized.
- Deployment units: 0/2 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Verified implementations audited: 0/6 (0.0%)
- Verified + Unaudited implementations: 6
- Verified by bytecode match: 0
- Unverified implementations: 1
- Unique implementations: 7
- Raw deployments: 8
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

### ⚠️ Verified + Unaudited (6)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| AHLP | unknown | arbitrum | n/a | [`0x5fd22d...34c2c4`](./contracts/arbitrum-42161/0x5fd22da8315992dbbd82d5ac1087803ff134c2c4/) | ⚠️ Unaudited |
| AMLP | unknown | arbitrum | n/a | [`0x152f5e...993a4b`](./contracts/arbitrum-42161/0x152f5e6142db867f905a68617dbb6408d7993a4b/) | ⚠️ Unaudited |
| AmlpManager | governance | arbitrum | n/a | [`0x98a6ae...bcf8dd`](./contracts/arbitrum-42161/0x98a6aee58699e4f4e13d8d8d0800e4e9cbbcf8dd/) | ⚠️ Unaudited |
| FundingVault | core_logic | arbitrum | n/a | [`0x07f169...df043f`](./contracts/arbitrum-42161/0x07f169d388c56cf8517b249e845502a14ddf043f/) | ⚠️ Unaudited |
| sAHLP | unknown | arbitrum | n/a | [`0x50c30f...685ea9`](./contracts/arbitrum-42161/0x50c30f24b957b1ac9e31558e55bf7dc4ab685ea9/) | ⚠️ Unaudited |
| sAMLP | unknown | arbitrum | n/a | 2 deployments: arbitrum [`0x4f2b37...24b6a7`](./contracts/arbitrum-42161/0x4f2b3767616ee3523534910176d61ff35224b6a7/); arbitrum `0xbc08f3...edb9db` | ⚠️ Unaudited |

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
| UnnamedContract | unknown | arbitrum | n/a | `0xc5f9d4...40bd9f` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| arbitrum | [`0x5fd22d...34c2c4`](./contracts/arbitrum-42161/0x5fd22da8315992dbbd82d5ac1087803ff134c2c4/) | AHLP | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x152f5e...993a4b`](./contracts/arbitrum-42161/0x152f5e6142db867f905a68617dbb6408d7993a4b/) | AMLP | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x98a6ae...bcf8dd`](./contracts/arbitrum-42161/0x98a6aee58699e4f4e13d8d8d0800e4e9cbbcf8dd/) | AmlpManager | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x07f169...df043f`](./contracts/arbitrum-42161/0x07f169d388c56cf8517b249e845502a14ddf043f/) | FundingVault | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x50c30f...685ea9`](./contracts/arbitrum-42161/0x50c30f24b957b1ac9e31558e55bf7dc4ab685ea9/) | sAHLP | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x4f2b37...24b6a7`](./contracts/arbitrum-42161/0x4f2b3767616ee3523534910176d61ff35224b6a7/) | sAMLP | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 7 |
| upstream | 0 |
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
