# Agentic Audit Brief: Planet

⚠️ Lifecycle status: DECLINING - TVL changed 7.0% over 90 days

## Project Overview

- Project: Planet (`planet`)
- Website: [https://app.planet.finance/](https://app.planet.finance/)
- Lifecycle: declining (Tier 1, dead)
- Generated: 2026-06-17T07:00:50.414Z
- Pipeline run: brief-regen-topo-2026-06-17
- Chains: bsc
- Contract surface: 6 unique implementations (12 raw deployments)
- DeFi Llama TVL: $1,682,578.00
- On-chain TVL (included contracts): $1,142,855.57
- TVL by chain: Bsc $1,142,855.57

## Project Description

Planet is a BSC DeFi protocol with Compound-style lending/borrowing markets and earning/yield products, including farm and auto-compounding strategy contracts. Liquid-staking-related components should be treated as separate or only included where specifically confirmed by contract-level evidence.

### Architecture

The lending family provides the core money market, while yield farming strategies utilize lending market tokens (GErc20) and interact with the same governance (Unitroller/Gammatroller). Liquid staking operates independently but shares the same discount and eligibility infrastructure for user incentives.

## Contract Surface Quality

- Indexed contracts: 298; live-surface contracts included: 12 (12 live, 0 unknown).
- Excluded by liveness: 118 inactive, 168 singleton, 0 uninitialized.
- Deployment units: 1/69 live.
- Detected codebases: compound-v2
- Dependencies extracted: 11; unverified dependencies: 0.

## Audit Coverage Summary

- Verified implementations audited: 0/6 (0.0%)
- Verified + Unaudited implementations: 6
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 6
- Raw deployments: 12
- Audits discovered: 1
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): $1,142,855.57
- Latest audit: 2021-06 (stale)
- Staleness: 0 fresh, 0 aging, 1 stale, 0 unknown
- Tier 1 coverage: No Tier 1 coverage
- Note: This protocol is classified as [declining]. ASD of $1,142,855.57 represents exposure in a protocol with declining activity.

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (6)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| GErc20Delegate | token | bsc | unit-31089 (5 proxies) | 5 deployments: bsc [`0x045e2d...00a9c8`](./contracts/bsc-56/0x045e2df638ebec29130dd3be61161cba5f00a9c8/); bsc `0x9c5326...8c71b4`; bsc `0xb56aea...618d46`; bsc `0xc73009...3beb40`; bsc `0xe983cf...38e19a` | ⚠️ Unaudited |
| GErc20Delegator | token | bsc | n/a | [`0xe58aa5...f925df`](./contracts/bsc-56/0xe58aa5826eb6e0568982018c0db833adbff925df/) | ⚠️ Unaudited |
| AQUA | unknown | bsc | n/a | [`0x72b7d6...d91991`](./contracts/bsc-56/0x72b7d61e8fc8cf971960dd9cfa59b8c829d91991/) | ⚠️ Unaudited |
| Gamma | unknown | bsc | n/a | [`0xb3cb6d...607f15`](./contracts/bsc-56/0xb3cb6d2f8f2fde203a022201c81a96c167607f15/) | ⚠️ Unaudited |
| GBNB | unknown | bsc | n/a | 2 deployments: bsc [`0x190354...ebdb29`](./contracts/bsc-56/0x190354707ad8221be30bf5f097fa51c9b1ebdb29/); bsc `0x246647...62082f` | ⚠️ Unaudited |
| PlanetFinance | unknown | bsc | n/a | 2 deployments: bsc [`0x0ac58f...00a933`](./contracts/bsc-56/0x0ac58fd25f334975b1b61732cf79564b6200a933/); bsc `0xb87f70...41b53d` | ⚠️ Unaudited |

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
| [Planet_Finance_Smart_Contract_Security_Audit_Halborn_v1_1.pdf](https://github.com/HalbornSecurity/PublicReports/blob/master/Solidity%20Smart%20Contract%20Audits/Planet_Finance_Smart_Contract_Security_Audit_Halborn_v1_1.pdf) | Halborn | Audit | 2021-06 | stale | Direct | contract_name | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| bsc | [`0x72b7d6...d91991`](./contracts/bsc-56/0x72b7d61e8fc8cf971960dd9cfa59b8c829d91991/) | AQUA | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0xb3cb6d...607f15`](./contracts/bsc-56/0xb3cb6d2f8f2fde203a022201c81a96c167607f15/) | Gamma | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x190354...ebdb29`](./contracts/bsc-56/0x190354707ad8221be30bf5f097fa51c9b1ebdb29/) | GBNB | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x0ac58f...00a933`](./contracts/bsc-56/0x0ac58fd25f334975b1b61732cf79564b6200a933/) | PlanetFinance | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 4 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 2 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: extraction_exact=4

Zero-match audit list:

- [2957] Planet_Finance_Smart_Contract_Security_Audit_Halborn_v1_1.pdf

Fork inheritance lineage and inherited audits are included when available.
