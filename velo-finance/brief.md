# Agentic Audit Brief: Velo Finance

⚠️ Lifecycle status: DECLINING - TVL changed 10.2% over 90 days

## Project Overview

- Project: Velo Finance (`velo-finance`)
- Website: [https://velofinance.io](https://velofinance.io)
- Lifecycle: declining (Tier 0, 66.3% below peak)
- Generated: 2026-06-11T03:54:51.894Z
- Pipeline run: v2-pipeline-2026-06-11-5b3b54-7b75
- Chains: bsc
- Contract surface: 28 unique implementations (30 raw deployments)
- DeFi Llama TVL: $1,773,497.17
- On-chain TVL (included contracts): $117,629,046.32
- TVL by chain: Bsc $117,629,046.32

## Project Description

Velo Finance is listed by DefiLlama as a DEX on Binance/BNB Chain. The current homepage provides no substantive product text confirming specific swap, liquidity provision, farming, or pool factory behavior; those details should be treated as unconfirmed unless supported by project documentation or verified contract analysis. EVRY/Evry references should be treated as observed contract names only unless project documentation confirms their relationship to Velo Finance.

### Architecture

The EvryFactory registry creates and manages liquidity pools, while the Farms contracts distribute rewards to liquidity providers. The EVRY token and two additional tokens serve as core assets within the ecosystem.

## Audit Coverage Summary

- Verified implementations audited: 0/4 (0.0%)
- Verified + Unaudited implementations: 4
- Verified by bytecode match: 0
- Unverified implementations: 24
- Unique implementations: 28
- Raw deployments: 30
- Audits discovered: 0
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): $117,629,046.32
- Latest audit: n/a (unknown)
- Staleness: 0 fresh, 0 aging, 0 stale, 0 unknown
- Tier 1 coverage: No Tier 1 coverage
- Note: This protocol is classified as [declining]. ASD of $117,629,046.32 represents exposure in a protocol with declining activity.

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (4)

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| Token | token | bsc | 2 deployments: bsc [`0x3c8ec1...b4a35f`](./contracts/bsc-56/0x3c8ec1728c080f76dc83baa5d51a0cc367b4a35f/); bsc `0xf486ad...f6fd46` | ⚠️ Unaudited |
| EVRY | unknown | bsc | [`0xc2d4a3...aeabb6`](./contracts/bsc-56/0xc2d4a3709e076a7a3487816362994a78ddaeabb6/) | ⚠️ Unaudited |
| EvryFactory | registry | bsc | [`0xa32818...e17238`](./contracts/bsc-56/0xa328180188a30fef1d82c9fc916e627db6e17238/) | ⚠️ Unaudited |
| Farms | unknown | bsc | 2 deployments: bsc [`0x334721...8a9252`](./contracts/bsc-56/0x33472144eaa7540e7bada5a1ab7da372e48a9252/); bsc `0xdd3e2d...a61945` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (24)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| UnnamedContract | unknown | bsc | `0x00144d...686da4` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x119e72...99341d` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x36a613...a42506` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x405fb1...b43f7b` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x4d7c5e...4465e2` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x5f0625...4ab66e` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x6080b4...26706e` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x61d705...9ac025` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x6f001a...b20218` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x853fbd...a6fad5` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x883be8...778cfa` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x953f99...8fb949` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xa82ee9...0fa81d` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xb28b07...565add` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xb2de66...5e121c` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xc3f903...99be6f` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xc5e5ac...101176` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xc9cfba...54b83a` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xcd9357...a94fa5` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xd67f77...9573aa` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xdba5e5...29483e` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xddace5...a908d1` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xde79be...d542c7` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xf39541...bd7b23` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| bsc | [`0x3c8ec1...b4a35f`](./contracts/bsc-56/0x3c8ec1728c080f76dc83baa5d51a0cc367b4a35f/) | Token | token | $117,629,046.32 | Verified native implementation with $117,629,046.32 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0xc2d4a3...aeabb6`](./contracts/bsc-56/0xc2d4a3709e076a7a3487816362994a78ddaeabb6/) | EVRY | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0xa32818...e17238`](./contracts/bsc-56/0xa328180188a30fef1d82c9fc916e627db6e17238/) | EvryFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 3 |
| upstream | 0 |
| standard_library | 1 |
| needs_review | 24 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Fork inheritance lineage and inherited audits are included when available.
