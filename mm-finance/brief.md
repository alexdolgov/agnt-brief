# Agentic Audit Brief: MM Finance

⚠️ Lifecycle status: DECLINING - TVL changed 0.2% over 90 days

## Project Overview

- Project: MM Finance (`mm-finance`)
- Lifecycle: declining (Tier 0, 99.9% below peak)
- Generated: 2026-06-17T21:04:27.717Z
- Pipeline run: v2-pipeline-2026-06-17-2a130c-6f9b
- Chains: arbitrum, cronos, polygon
- Contract surface: 30 unique implementations (45 raw deployments)
- DeFi Llama TVL: $1,262,238.00
- On-chain TVL (included contracts): $1,848,184.55
- TVL by chain: Polygon $1,741,985.81 | Arbitrum $106,198.73

## Project Description

MM Finance is a DeFi protocol with deployed contracts across chains including Polygon and Cronos, with verified contract evidence showing DEX/router, factory, liquidity/staking, token, proxy/admin, oracle, and GMX-style periphery components. Claims about additional products such as METF, Savanna, algorithmic stablecoins, launchpad functionality, or automated yield strategies should be treated as unverified unless supported by primary documentation or included in accessible audited contract scope.

### Architecture

The families share a common deployer cluster and proxy infrastructure, indicating a unified development team. MM Finance Arbitrum and Polygon both use MeerkatToken, while MM Optimizer Polygon and MM Stableswap Polygon extend the Polygon ecosystem with specialized products. METF Finance and Savanna Finance appear as separate but related ventures under the same umbrella.

## Contract Surface Quality

- Indexed contracts: 271; live-surface contracts included: 45 (30 live, 15 unknown).
- Excluded by liveness: 139 inactive, 87 singleton, 0 uninitialized.
- Deployment units: 0/36 live.
- Detected codebases: uniswap-v2
- Unverified dependencies: 3/5.

## Audit Coverage Summary

- Verified implementations audited: 0/9 (0.0%)
- Verified + Unaudited implementations: 9
- Verified by bytecode match: 0
- Unverified implementations: 21
- Unique implementations: 30
- Raw deployments: 45
- Audits discovered: 3
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): $1,848,184.55
- Latest audit: 2022-01 (stale)
- Staleness: 0 fresh, 0 aging, 2 stale, 1 unknown
- Tier 1 coverage: No Tier 1 coverage
- Note: This protocol is classified as [declining]. ASD of $1,848,184.55 represents exposure in a protocol with declining activity.

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (9)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| MeerkatToken | token | polygon | n/a | 2 deployments: polygon [`0x22a31b...3e9481`](./contracts/polygon-137/0x22a31bd4cb694433b6de19e0acc2899e553e9481/); arbitrum `0x56b251...2d2326` | ⚠️ Unaudited |
| MMOToken | token | polygon | n/a | [`0x859a50...b1cd5b`](./contracts/polygon-137/0x859a50979fdb2a2fd8ba1adcc66977c6f6b1cd5b/) | ⚠️ Unaudited |
| MadMeerkatBurrowPoly | unknown | polygon | n/a | [`0x2f5b31...ca1d0c`](./contracts/polygon-137/0x2f5b31d2b4891f0ed183d56dd6ebd55249ca1d0c/) | ⚠️ Unaudited |
| MasterMeerkat | unknown | polygon | n/a | 2 deployments: polygon [`0xa2b417...834764`](./contracts/polygon-137/0xa2b417088d63400d211a4d5eb3c4c5363f834764/); arbitrum `0xa73ae6...04557a` | ⚠️ Unaudited |
| MeerkatPair | unknown | polygon | n/a | 13 deployments: polygon [`0x1aec8f...614172`](./contracts/polygon-137/0x1aec8ff1c39c34338327a32bbb35011432614172/); polygon `0x384c1b...ddd724`; polygon `0x8ab477...236790`; polygon `0x8c2625...e8cd3c`; polygon `0xa78932...705b0f`; polygon `0xb965c1...87273b`; polygon `0xd15eb8...9cc86e`; arbitrum `0x1fba52...bedb17`; arbitrum `0x32481a...041787`; arbitrum `0x4119fe...78546e`; arbitrum `0x446822...cf06bc`; arbitrum `0x590ff6...8786da`; arbitrum `0xc08239...4177df` | ⚠️ Unaudited |
| MeerkatRouter02 | adapter | arbitrum | n/a | 2 deployments: polygon `0x51aba4...eb1a17`; arbitrum [`0x4f879a...d04139`](./contracts/arbitrum-42161/0x4f879a9d95e01041ddaa607a65f04e0edbd04139/) | ⚠️ Unaudited |
| MeerkatRouter03 | adapter | polygon | n/a | [`0x7e5e59...35f8bf`](./contracts/polygon-137/0x7e5e5957de93d00c352df75159fbc37d5935f8bf/) | ⚠️ Unaudited |
| Swap | unknown | polygon | n/a | [`0x690bba...2a5350`](./contracts/polygon-137/0x690bbaa9edbb762542fd198763092eab2b2a5350/) | ⚠️ Unaudited |
| xMeerkatToken | token | arbitrum | n/a | [`0xb8635f...f57dbb`](./contracts/arbitrum-42161/0xb8635f1644422e7ebca07c06b839075a74f57dbb/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (21)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | cronos | n/a | `0x1a6ad4...c7ce0a` | ❓ Unverified |
| UnnamedContract | unknown | cronos | n/a | `0x2ccbfd...c9d471` | ❓ Unverified |
| UnnamedContract | unknown | cronos | n/a | `0x2d03be...d11e03` | ❓ Unverified |
| UnnamedContract | unknown | cronos | n/a | `0x3827ca...71c44d` | ❓ Unverified |
| UnnamedContract | unknown | cronos | n/a | `0x50c0c5...3c46a7` | ❓ Unverified |
| UnnamedContract | unknown | cronos | n/a | `0x654bac...45dca9` | ❓ Unverified |
| UnnamedContract | unknown | cronos | n/a | `0x692db4...6887a7` | ❓ Unverified |
| UnnamedContract | unknown | cronos | n/a | `0x97749c...ed7656` | ❓ Unverified |
| UnnamedContract | unknown | cronos | n/a | `0xa51054...b2e2ed` | ❓ Unverified |
| UnnamedContract | unknown | cronos | n/a | `0xb6e170...bab8f0` | ❓ Unverified |
| UnnamedContract | unknown | cronos | n/a | `0xb8df27...9f4878` | ❓ Unverified |
| UnnamedContract | unknown | cronos | n/a | `0xc924da...ebf677` | ❓ Unverified |
| UnnamedContract | unknown | cronos | n/a | `0xd7385f...8c05a7` | ❓ Unverified |
| UnnamedContract | unknown | cronos | n/a | `0xe25737...1580be` | ❓ Unverified |
| UnnamedContract | unknown | cronos | n/a | `0xf8b9fa...d6e1aa` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x095bc6...f236f6` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x799b03...c4cc39` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x98c65f...3270e6` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xe48105...b3437a` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xf8eed9...5d833a` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x8c3302...bf03ab` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [<>](https://skynet.certik.com/projects/mmfinance) | CertiK | Audit | 2021-12 | stale | Direct | n/a | 0 | n/a |
| [<>](https://paladinsec.co/projects/mmfinance) | Paladin | Audit | 2022-01 | stale | Direct | contract_name | 0 | n/a |
| [V1: <> (also discovered via alternate URL)](https://www.slowmist.com/en/security-audit-certificate.html?id=765046458bfbfbdf114db4689625c2fd215c08f5175545d8b4bdc01cc4e140d3) | SlowMist | Audit | n/a | unknown | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| polygon | [`0x22a31b...3e9481`](./contracts/polygon-137/0x22a31bd4cb694433b6de19e0acc2899e553e9481/) | MeerkatToken | token | $1,757,219.28 | Verified native implementation with $1,757,219.28 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x859a50...b1cd5b`](./contracts/polygon-137/0x859a50979fdb2a2fd8ba1adcc66977c6f6b1cd5b/) | MMOToken | token | $90,965.27 | Verified native implementation with $90,965.27 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x2f5b31...ca1d0c`](./contracts/polygon-137/0x2f5b31d2b4891f0ed183d56dd6ebd55249ca1d0c/) | MadMeerkatBurrowPoly | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0xa2b417...834764`](./contracts/polygon-137/0xa2b417088d63400d211a4d5eb3c4c5363f834764/) | MasterMeerkat | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x1aec8f...614172`](./contracts/polygon-137/0x1aec8ff1c39c34338327a32bbb35011432614172/) | MeerkatPair | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x4f879a...d04139`](./contracts/arbitrum-42161/0x4f879a9d95e01041ddaa607a65f04e0edbd04139/) | MeerkatRouter02 | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x7e5e59...35f8bf`](./contracts/polygon-137/0x7e5e5957de93d00c352df75159fbc37d5935f8bf/) | MeerkatRouter03 | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x690bba...2a5350`](./contracts/polygon-137/0x690bbaa9edbb762542fd198763092eab2b2a5350/) | Swap | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0xb8635f...f57dbb`](./contracts/arbitrum-42161/0xb8635f1644422e7ebca07c06b839075a74f57dbb/) | xMeerkatToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 9 |
| upstream | 4 |
| standard_library | 0 |
| needs_review | 17 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 3
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: extraction_exact=2

Zero-match audit list:

- [3064] <>
- [3065] <>
- [3066] V1: <>

Fork inheritance lineage and inherited audits are included when available.
