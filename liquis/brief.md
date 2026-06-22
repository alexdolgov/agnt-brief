# Agentic Audit Brief: Liquis

⚠️ Lifecycle status: DEAD - TVL dropped 16.9% over 90 days

## Project Overview

- Project: Liquis (`liquis`)
- Lifecycle: dead (Tier 0, 99.3% below peak)
- Generated: 2026-06-21T07:36:14.566Z
- Pipeline run: v2-pipeline-2026-06-21-727228-48f6
- Chains: ethereum
- Contract surface: 7 unique implementations (7 raw deployments)
- DeFi Llama TVL: $71,531.43
- On-chain TVL (included contracts): $3,427.20
- TVL by chain: Ethereum $3,427.20

## Project Description

Liquis is a yield optimization protocol that allows users to deposit liquidity into Bunni pools and earn boosted rewards. It uses a vote-escrow tokenomics model where locking LIQ tokens grants governance power and enhanced yields.

### Architecture

The Booster contract manages staking and reward distribution, interacting with VoterProxy for governance and LiqToken for incentives. BunniLens provides liquidity data, while WeightedPool2Tokens and Vyper_contract handle pool logic and swaps.

## Contract Surface Quality

- Indexed contracts: 30; live-surface contracts included: 7 (7 live, 0 unknown).
- Excluded by liveness: 23 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: balancer-v2, uniswap-v3
- Unverified dependencies: 2/17.

## Audit Coverage Summary

- Verified implementations audited: 4/7 (57.1%)
- Verified + Unaudited implementations: 3
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 7
- Raw deployments: 7
- Audits discovered: 3
- Scoreable audits (matched contracts): 1
- ASD (verified + unaudited TVL): $3,427.20
- Latest audit: 2023-08 (stale)
- Staleness: 0 fresh, 0 aging, 3 stale, 0 unknown
- Tier 1 coverage: No Tier 1 coverage
- Note: This protocol is classified as [dead]. ASD of $3,427.20 represents exposure in a protocol with dead activity.

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| Halborn | Tier 2 | 4 | 57.1% | 2023-08 |

## Contract Surface

### ✅ Verified + Audited (4)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| BaseRewardPool | core_logic | ethereum | n/a | [`0x7ea693...5acb23`](./contracts/ethereum-1/0x7ea6930a9487ce8d039f7cc89432435e6d5acb23/) | ✅ Audited |
| BoosterHelper | core_logic | ethereum | n/a | [`0x4ea2ef...d171f4`](./contracts/ethereum-1/0x4ea2efb759591eec7f916f89547d339a69d171f4/) | ✅ Audited |
| LiqLocker | unknown | ethereum | n/a | [`0x748a0f...03e1cb`](./contracts/ethereum-1/0x748a0f458b9e71061ca0ac543b984473f203e1cb/) | ✅ Audited |
| LiquisClaimZap | adapter | ethereum | n/a | [`0xad161b...70431b`](./contracts/ethereum-1/0xad161b8beb5bf2af9cda30e3988b13f62e70431b/) | ✅ Audited |

### ⚠️ Verified + Unaudited (3)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| LiqToken | token | ethereum | n/a | [`0xd82fd4...4aa408`](./contracts/ethereum-1/0xd82fd4d6d62f89a1e50b1db69ad19932314aa408/) | ⚠️ Unaudited |
| Vyper_contract | unknown | ethereum | n/a | [`0xf17d23...e09660`](./contracts/ethereum-1/0xf17d23136b4fead139f54fb766c8795faae09660/) | ⚠️ Unaudited |
| WeightedPool2Tokens | core_logic | ethereum | n/a | [`0x9232a5...93675c`](./contracts/ethereum-1/0x9232a548dd9e81bac65500b5e0d918f8ba93675c/) | ⚠️ Unaudited |

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
| [Liquis_Audit_Report_by_Halborn.pdf](https://github.com/liquisfi/security/blob/main/audits/Liquis_Audit_Report_by_Halborn.pdf) | Halborn | Audit | 2023-08 | stale | Direct | contract_name | 4 | high |
| [Liquis_Audit_Report_by_WatchPug.pdf](https://github.com/liquisfi/security/blob/main/audits/Liquis_Audit_Report_by_WatchPug.pdf) | WatchPug | Audit | 2023-07 | stale | Direct | contract_name | 0 | n/a |
| [Liquis_Audit_Report_by_WatchPug_prelaunch.pdf](https://github.com/liquisfi/security/blob/main/audits/Liquis_Audit_Report_by_WatchPug_prelaunch.pdf) | WatchPug | Audit | 2023-07 | stale | Direct | contract_name | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | [`0xd82fd4...4aa408`](./contracts/ethereum-1/0xd82fd4d6d62f89a1e50b1db69ad19932314aa408/) | LiqToken | token | $3,427.20 | Verified native implementation with $3,427.20 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 5 |
| upstream | 2 |
| standard_library | 0 |
| needs_review | 0 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 2
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=1
- Match method counts: extraction_exact=22

Zero-match audit list:

- [13377] Liquis_Audit_Report_by_WatchPug.pdf
- [13378] Liquis_Audit_Report_by_WatchPug_prelaunch.pdf

Fork inheritance lineage and inherited audits are included when available.
