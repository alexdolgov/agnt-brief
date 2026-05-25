# Agentic Audit Brief: PAAL AI

⚠️ Lifecycle status: UNKNOWN - TVL trajectory indicates non-active lifecycle.

## Project Overview

- Project: PAAL AI (`paal-ai`)
- Website: [https://www.paal.ai/](https://www.paal.ai/)
- Lifecycle: unknown (Tier 0, TVL trajectory)
- Generated: 2026-05-25T00:28:28.181Z
- Pipeline run: v2-pipeline-2026-05-22-eff36e-2ebb
- Chains: ethereum
- Contract surface: 3 unique implementations (5 raw deployments)
- DeFi Llama TVL: $1,358,638.54
- On-chain TVL (included contracts): $830,132.91
- TVL by chain: Ethereum $830,132.91

## Project Description

PAAL AI is a Telegram bot that provides AI-powered services, likely integrated with a token and staking mechanism on Ethereum. The protocol includes a native token (PAALAI) and multiple staking pools to incentivize user participation and token holding.

### Architecture

The PAALAI token is the central asset used across all staking pools. Each StakingPool contract operates independently but shares the same token, allowing users to stake PAALAI in different pools, likely with varying reward structures or conditions.

## Audit Coverage Summary

- Verified implementations audited: 0/2 (0.0%)
- Verified + Unaudited implementations: 2
- Verified by bytecode match: 0
- Unverified implementations: 1
- Unique implementations: 3
- Raw deployments: 5
- Audits discovered: 0
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): $830,132.91
- Latest audit: n/a (unknown)
- Staleness: 0 fresh, 0 aging, 0 stale, 0 unknown
- Tier 1 coverage: No Tier 1 coverage
- Note: This protocol is classified as [unknown]. ASD of $830,132.91 represents exposure in a protocol with unknown activity.

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (2)

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| StakingPool | core_logic | ethereum | 3 deployments: ethereum [`0x163ad6...942d7b`](./contracts/ethereum-1/0x163ad6ac78ffe40e194310faeada8f6615942d7b/); ethereum `0x843106...80894f`; ethereum `0x85e253...69d624` | ⚠️ Unaudited |
| PAALAI | unknown | ethereum | [`0x14fee6...d10e16`](./contracts/ethereum-1/0x14fee680690900ba0cccfc76ad70fd1b95d10e16/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (1)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| UnnamedContract | unknown | ethereum | `0x4a24d5...2544bf` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | [`0x163ad6...942d7b`](./contracts/ethereum-1/0x163ad6ac78ffe40e194310faeada8f6615942d7b/) | StakingPool | core_logic | $830,132.91 | Verified native implementation with $830,132.91 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x14fee6...d10e16`](./contracts/ethereum-1/0x14fee680690900ba0cccfc76ad70fd1b95d10e16/) | PAALAI | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 2 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 1 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Fork inheritance lineage and inherited audits are included when available.
