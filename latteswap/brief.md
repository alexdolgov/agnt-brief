# Agentic Audit Brief: LatteSwap

⚠️ Lifecycle status: DEAD - TVL dropped 3.5% over 90 days

## Project Overview

- Project: LatteSwap (`latteswap`)
- Lifecycle: dead (Tier 0, 99.9% below peak)
- Generated: 2026-06-21T06:55:35.537Z
- Pipeline run: v2-pipeline-2026-06-21-727228-48f6
- Chains: bsc
- Contract surface: 3 unique implementations (3 raw deployments)
- DeFi Llama TVL: $54,936.79
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

LatteSwap is a decentralized exchange and yield farming platform on BSC. It provides token swapping, liquidity provision, and staking rewards through its LATTE token and MasterBarista contracts. The protocol also includes NFT offerings and various yield strategies.

### Architecture

The LatteSwap family is self-contained, with the factory deploying pairs and the MasterBarista managing staking and rewards. No cross-family dependencies are evident from the contract surface.

## Contract Surface Quality

- Indexed contracts: 91; live-surface contracts included: 3 (3 live, 0 unknown).
- Excluded by liveness: 22 inactive, 66 singleton, 0 uninitialized.
- Deployment units: 0/27 live.
- Detected codebases: uniswap-v2
- Unverified dependencies: 1/3.

## Audit Coverage Summary

- Verified implementations audited: 2/3 (66.7%)
- Verified + Unaudited implementations: 1
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 3
- Raw deployments: 3
- Audits discovered: 2
- Scoreable audits (matched contracts): 2
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2021-10 (stale)
- Staleness: 0 fresh, 0 aging, 2 stale, 0 unknown
- Tier 1 coverage: No Tier 1 coverage
- Note: This protocol is classified as [dead]. ASD of n/a represents exposure in a protocol with dead activity.

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| PeckShield | Tier 2 | 1 | 33.3% | 2021-07 |
| WatchPug | Tier 2 | 1 | 33.3% | 2021-10 |

## Contract Surface

### ✅ Verified + Audited (2)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| LATTE | unknown | bsc | n/a | [`0x8d78c2...91c81a`](./contracts/bsc-56/0x8d78c2ff1fb4fba08c7691dfeac7bb425a91c81a/) | ✅ Audited |
| LATTEV2 | unknown | bsc | n/a | [`0xa269a9...f2b6cb`](./contracts/bsc-56/0xa269a9942086f5f87930499dc8317ccc9df2b6cb/) | ✅ Audited |

### ⚠️ Verified + Unaudited (1)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| LatteSwapRouter | adapter | bsc | n/a | [`0x4ec82e...bf071d`](./contracts/bsc-56/0x4ec82ecd19529ff50a467f522029f69459bf071d/) | ⚠️ Unaudited |

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
| [PeckShield-Audit-Report-LatteSwap-v1.0.pdf](https://github.com/latteswap-official/latteswap-contract/blob/main/audit/protocol/PeckShield-Audit-Report-LatteSwap-v1.0.pdf) | PeckShield | Audit | 2021-07 | stale | Direct | contract_name | 1 | high |
| [LatteSwap_v2_Audit_Report_by_WatchPug_v1.1.pdf](https://github.com/latteswap-official/latteswap-contract/blob/main/audit/latte-v2/LatteSwap_v2_Audit_Report_by_WatchPug_v1.1.pdf) | WatchPug | Audit | 2021-10 | stale | Direct | contract_name | 1 | high |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| bsc | [`0x4ec82e...bf071d`](./contracts/bsc-56/0x4ec82ecd19529ff50a467f522029f69459bf071d/) | LatteSwapRouter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 3 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 0 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=2
- Match method counts: extraction_exact=14

Fork inheritance lineage and inherited audits are included when available.
