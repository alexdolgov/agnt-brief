# Agentic Audit Brief: Reflexer

⚠️ Lifecycle status: DECLINING - TVL changed 13.3% over 90 days

## Project Overview

- Project: Reflexer (`reflexer`)
- Website: [https://reflexer.finance/](https://reflexer.finance/)
- Lifecycle: declining (Tier 1, dead)
- Generated: 2026-06-17T07:00:49.767Z
- Pipeline run: brief-regen-topo-2026-06-17
- Chains: ethereum
- Contract surface: 5 unique implementations (5 raw deployments)
- DeFi Llama TVL: $1,826,511.38
- On-chain TVL (included contracts): $1,281,929.58
- TVL by chain: Ethereum $1,281,929.58

## Project Description

Reflexer is a decentralized collateralized debt position (CDP) protocol that allows users to lock collateral and mint RAI, a stablecoin with a managed float that is not pegged to any fiat currency.

### Architecture

The protocol consists of a single product family with one identified contract, CollateralJoin1, which likely serves as the entry point for collateral deposits and RAI generation, with no additional supporting contracts detected in the provided inventory.

## Contract Surface Quality

- Indexed contracts: 93; live-surface contracts included: 5 (5 live, 0 unknown).
- Excluded by liveness: 88 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: uniswap-v2
- Unverified dependencies: 1/19.

## Audit Coverage Summary

- Verified implementations audited: 2/5 (40.0%)
- Verified + Unaudited implementations: 3
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 5
- Raw deployments: 5
- Audits discovered: 8
- Scoreable audits (matched contracts): 2
- ASD (verified + unaudited TVL): $1,281,929.58
- Latest audit: 2022-09 (stale)
- Staleness: 0 fresh, 0 aging, 7 stale, 1 unknown
- Tier 1 coverage: 20.0% (OpenZeppelin)
- Note: This protocol is classified as [declining]. ASD of $1,281,929.58 represents exposure in a protocol with declining activity.

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| OpenZeppelin | Tier 1 | 1 | 20.0% | n/a |
| Quantstamp | Tier 2 | 1 | 20.0% | 2021-10 |

## Contract Surface

### ✅ Verified + Audited (2)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| GebSafeManager | governance | ethereum | n/a | [`0xefe0b4...94f185`](./contracts/ethereum-1/0xefe0b4ca532769a3ae758fd82e1426a03a94f185/) | ✅ Audited |
| SAFEEngine | unknown | ethereum | n/a | [`0xcc88a9...1a6962`](./contracts/ethereum-1/0xcc88a9d330da1133df3a7bd823b95e52511a6962/) | ✅ Audited |

### ⚠️ Verified + Unaudited (3)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| DSDelegateToken | token | ethereum | n/a | [`0x6243d8...8391f4`](./contracts/ethereum-1/0x6243d8cea23066d098a15582d81a598b4e8391f4/) | ⚠️ Unaudited |
| CollateralJoin1 | unknown | ethereum | n/a | [`0x2d3cd7...226e3a`](./contracts/ethereum-1/0x2d3cd7b81c93f188f3cb8ad87c8acc73d6226e3a/) | ⚠️ Unaudited |
| GebProxyActionsGlobalSettlement | unknown | ethereum | n/a | [`0x17b5d9...92cb93`](./contracts/ethereum-1/0x17b5d9914194a08c7ef14451ba15e8ae4f92cb93/) | ⚠️ Unaudited |

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
| [oz-geb-protocol-audit.pdf](https://github.com/reflexer-labs/geb-audits/blob/master/open-zeppelin/core-contracts/oz-geb-protocol-audit.pdf) | OpenZeppelin | Audit | n/a | unknown | Direct | contract_name | 1 | high |
| [Reflexer RAI Curve Pool - Report.pdf](https://github.com/reflexer-labs/geb-audits/blob/master/quantstamp/curve/Reflexer%20RAI%20Curve%20Pool%20-%20Report.pdf) | Quantstamp | Audit | 2021-10 | stale | Direct | n/a | 0 | n/a |
| [Reflexer Helper Contracts - Report.pdf](https://github.com/reflexer-labs/geb-audits/blob/master/quantstamp/helper-contracts/first-audit/Reflexer%20Helper%20Contracts%20-%20Report.pdf) | Quantstamp | Audit | 2020-11 | stale | Direct | contract_name | 1 | high |
| [Reflexer Second Engagement - Final Report.pdf](https://github.com/reflexer-labs/geb-audits/blob/master/quantstamp/helper-contracts/second-audit/Reflexer%20Second%20Engagement%20-%20Final%20Report.pdf) | Quantstamp | Audit | 2021-01 | stale | Direct | contract_name | 0 | n/a |
| [Reflexer Staking and Auction House - Report.pdf](https://github.com/reflexer-labs/geb-audits/blob/master/quantstamp/staking/Reflexer%20Staking%20and%20Auction%20House%20-%20Report.pdf) | Quantstamp | Audit | 2021-07 | stale | Direct | n/a | 0 | n/a |
| [Audit Report - RAI Backup Oracles.pdf](https://github.com/reflexer-labs/geb-audits/blob/master/solidified/backup-oracle/Audit%20Report%20-%20RAI%20Backup%20Oracles.pdf) | Solidified | Audit | 2022-09 | stale | Direct | n/a | 0 | n/a |
| [Solidified Audit Report - Reflexer [26.01.2021].pdf](https://github.com/reflexer-labs/geb-audits/blob/master/solidified/helper-contracts/Solidified%20Audit%20Report%20-%20Reflexer%20%5B26.01.2021%5D.pdf) | Solidified | Audit | 2021-01 | stale | Direct | contract_name | 0 | n/a |
| [Audit Report - Uniswap V3 Liquidity Manager [24.06.2021].pdf](https://github.com/reflexer-labs/geb-audits/blob/master/solidified/uniswap-v3/Audit%20Report%20-%20Uniswap%20V3%20Liquidity%20Manager%20%5B24.06.2021%5D.pdf) | Solidified | Audit | 2021-06 | stale | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | [`0x2d3cd7...226e3a`](./contracts/ethereum-1/0x2d3cd7b81c93f188f3cb8ad87c8acc73d6226e3a/) | CollateralJoin1 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x17b5d9...92cb93`](./contracts/ethereum-1/0x17b5d9914194a08c7ef14451ba15e8ae4f92cb93/) | GebProxyActionsGlobalSettlement | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

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
- Audits with zero matched contracts: 6
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=2
- Match method counts: extraction_exact=29

Zero-match audit list:

- [2842] Reflexer RAI Curve Pool - Report.pdf
- [2844] Reflexer Second Engagement - Final Report.pdf
- [2845] Reflexer Staking and Auction House - Report.pdf
- [2846] Audit Report - RAI Backup Oracles.pdf
- [2847] Solidified Audit Report - Reflexer [26.01.2021].pdf
- [2848] Audit Report - Uniswap V3 Liquidity Manager [24.06.2021].pdf

Fork inheritance lineage and inherited audits are included when available.
