# Agentic Audit Brief: Tender Finance

⚠️ Lifecycle status: DECLINING - TVL changed 21.6% over 90 days

## Project Overview

- Project: Tender Finance (`tender-finance`)
- Lifecycle: declining (Tier 0, 96.7% below peak)
- Generated: 2026-06-17T18:49:01.882Z
- Pipeline run: v2-pipeline-2026-06-17-2a130c-1121
- Chains: arbitrum
- Contract surface: 8 unique implementations (20 raw deployments)
- DeFi Llama TVL: $1,158,130.17
- On-chain TVL (included contracts): $2,004.83
- TVL by chain: Arbitrum $2,004.83

## Project Description

Tender Finance is a live lending and borrowing protocol on Arbitrum One, plausibly Compound-style, with TVL-bearing money market infrastructure. The currently captured contract inventory only includes the TND token and should not be treated as representing the full protocol surface; the lending controller/comptroller, market tokens, oracle, interest-rate model, admin/governance, proxy, and related core contracts still need to be identified and scoped.

### Architecture

The protocol consists of a single product family with one known contract, TND, which likely serves as the governance or utility token for the lending market.

## Contract Surface Quality

- Indexed contracts: 22; live-surface contracts included: 20 (19 live, 1 unknown).
- Excluded by liveness: 2 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 4/4 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Verified implementations audited: 0/8 (0.0%)
- Verified + Unaudited implementations: 8
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 8
- Raw deployments: 20
- Audits discovered: 1
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): $2,004.83
- Latest audit: n/a (unknown)
- Staleness: 0 fresh, 0 aging, 0 stale, 1 unknown
- Tier 1 coverage: No Tier 1 coverage
- Note: This protocol is classified as [declining]. ASD of $2,004.83 represents exposure in a protocol with declining activity.

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (8)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| CErc20DelegateGmx | token | arbitrum | unit-32827 | [`0x20a676...7ad497`](./contracts/arbitrum-42161/0x20a6768f6aabf66b787985ec6ce0ebea6d7ad497/) | ⚠️ Unaudited |
| AlgebraPool | core_logic | arbitrum | n/a | [`0xe9d3e6...2a6741`](./contracts/arbitrum-42161/0xe9d3e6811d1be8ba40a9273ebec6ff09fe2a6741/) | ⚠️ Unaudited |
| CErc20Compounded | token | arbitrum | unit-32829 | [`0xff2073...43c943`](./contracts/arbitrum-42161/0xff2073d3810754d6da4783235c8647e11e43c943/) | ⚠️ Unaudited |
| CEther | unknown | arbitrum | n/a | [`0x070690...fcdcdf`](./contracts/arbitrum-42161/0x0706905b2b21574defcf00b5fc48068995fcdcdf/) | ⚠️ Unaudited |
| Comptroller | unknown | arbitrum | unit-32828 | [`0xeed247...808f8e`](./contracts/arbitrum-42161/0xeed247ba513a8d6f78be9318399f5ed1a4808f8e/) | ⚠️ Unaudited |
| HandledImpl | unknown | arbitrum | unit-32826 (13 proxies) | 13 deployments: arbitrum [`0x068485...c48b4e`](./contracts/arbitrum-42161/0x068485a0f964b4c3d395059a19a05a8741c48b4e/); arbitrum `0x0a2f8b...6cf391`; arbitrum `0x27846a...69b9ab`; arbitrum `0x4180f3...6842c3`; arbitrum `0x4a5806...bf7e31`; arbitrum `0x80aefb...74ceb9`; arbitrum `0x87d06b...7a1c35`; arbitrum `0x8b44d3...2b3a71`; arbitrum `0xb28718...2f6299`; arbitrum `0xb5dbdb...c91529`; arbitrum `0xb60ef5...cdcb9c`; arbitrum `0xc6121d...523539`; arbitrum `0xe4843e...f8ea16` | ⚠️ Unaudited |
| JumpRateModelV2 | unknown | arbitrum | n/a | [`0xc2933e...229595`](./contracts/arbitrum-42161/0xc2933eff32188e4655887cdc9c707a77e1229595/) | ⚠️ Unaudited |
| TND | unknown | arbitrum | n/a | [`0xc47d97...d2798c`](./contracts/arbitrum-42161/0xc47d9753f3b32aa9548a7c3f30b6aec3b2d2798c/) | ⚠️ Unaudited |

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
| [DL audit link](http://odex.vip/?sign=6100531bc2e5bf8b94dd7a7b87b53577) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| arbitrum | [`0x20a676...7ad497`](./contracts/arbitrum-42161/0x20a6768f6aabf66b787985ec6ce0ebea6d7ad497/) | CErc20DelegateGmx | token | $1,998.57 | Verified native implementation with $1,998.57 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0xff2073...43c943`](./contracts/arbitrum-42161/0xff2073d3810754d6da4783235c8647e11e43c943/) | CErc20Compounded | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x070690...fcdcdf`](./contracts/arbitrum-42161/0x0706905b2b21574defcf00b5fc48068995fcdcdf/) | CEther | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0xeed247...808f8e`](./contracts/arbitrum-42161/0xeed247ba513a8d6f78be9318399f5ed1a4808f8e/) | Comptroller | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x068485...c48b4e`](./contracts/arbitrum-42161/0x068485a0f964b4c3d395059a19a05a8741c48b4e/) | HandledImpl | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0xc47d97...d2798c`](./contracts/arbitrum-42161/0xc47d9753f3b32aa9548a7c3f30b6aec3b2d2798c/) | TND | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 6 |
| upstream | 1 |
| standard_library | 1 |
| needs_review | 0 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Zero-match audit list:

- [3118] DL audit link

Fork inheritance lineage and inherited audits are included when available.
