# Agentic Audit Brief: OpenLeverage

⚠️ Lifecycle status: DEAD - TVL dropped 4.9% over 90 days

## Project Overview

- Project: OpenLeverage (`openleverage`)
- Website: [https://openleverage.finance](https://openleverage.finance)
- Lifecycle: dead (Tier 1, dead)
- Generated: 2026-06-21T08:01:45.193Z
- Pipeline run: v2-pipeline-2026-06-21-727228-48f6
- Chains: arbitrum, bsc, ethereum
- Contract surface: 7 unique implementations (8 raw deployments)
- DeFi Llama TVL: $88,935.35
- On-chain TVL (included contracts): $1,070,956.53
- TVL by chain: Ethereum $1,070,956.53

## Project Description

OpenLeverage is a decentralized margin trading protocol that enables permissionless lending and borrowing with leveraged positions. It allows users to create lending pools for any token pair and trade with leverage on integrated DEXs.

### Architecture

The OpenLevV1 contracts serve as the main lending pool managers, while OPBorrowing handles leveraged borrowing logic. ControllerV1 manages protocol parameters and access control, RewardVault distributes incentives, and XOLE is the governance token. LPoolDepositor and EthDexAggregatorV1 provide liquidity and trade execution support, with OPLimitOrder enabling advanced order types.

## Contract Surface Quality

- Indexed contracts: 185; live-surface contracts included: 8 (8 live, 0 unknown).
- Excluded by liveness: 151 inactive, 26 singleton, 0 uninitialized.
- Deployment units: 2/16 live.
- Detected codebases: uniswap-v2, uniswap-v3
- Unverified dependencies: 1/19.

## Audit Coverage Summary

- Verified implementations audited: 4/6 (66.7%)
- Verified + Unaudited implementations: 2
- Verified by bytecode match: 1
- Unverified implementations: 1
- Unique implementations: 7
- Raw deployments: 8
- Audits discovered: 8
- Scoreable audits (matched contracts): 6
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2023-11 (stale)
- Staleness: 0 fresh, 0 aging, 8 stale, 0 unknown
- Tier 1 coverage: 33.3% (Code4rena)
- Note: This protocol is classified as [dead]. ASD of n/a represents exposure in a protocol with dead activity.

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| PeckShield | Tier 2 | 3 | 50.0% | 2023-11 |
| Code4rena | Tier 1 | 2 | 33.3% | 2022-01 |
| unknown | Tier 2 | 2 | 33.3% | 2021-06 |

## Contract Surface

### ✅ Verified + Audited (3)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| OLEToken | token | ethereum | n/a | [`0x92cfbe...4fab7e`](./contracts/ethereum-1/0x92cfbec26c206c90aee3b7c66a9ae673754fab7e/) | ✅ Audited |
| OLETokenLock | token | ethereum | n/a | [`0xa000e4...5ef52e`](./contracts/ethereum-1/0xa000e438f66fd1c4baa8a9c807c697b0765ef52e/) | ✅ Audited |
| XOLE | unknown | bsc | unit-41693 | [`0x71f115...2c77d2`](./contracts/bsc-56/0x71f1158d76af5b6762d5ebcdee19105eab2c77d2/) | ✅ Audited |

### ⚠️ Verified + Unaudited (2)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| OLEV2LockerSwap | unknown | ethereum | n/a | [`0x511df2...c27e20`](./contracts/ethereum-1/0x511df2a79e33560bc23f070c3098373f6ac27e20/) | ⚠️ Unaudited |
| OpenLeverageOFT | unknown | ethereum | n/a | [`0x1b6e9c...83ab0a`](./contracts/ethereum-1/0x1b6e9c73bee68102d9dd4a2627f97bff4183ab0a/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (1)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| OPBorrowing | core_logic | arbitrum | unit-41698 | 2 deployments: bsc `0xf436f8...075e47`; arbitrum [`0xe7779e...52189c`](./contracts/arbitrum-42161/0xe7779ebb5c28ccd6d3dcf13920b06402ca52189c/) | ✅ Audited (bytecode match) |

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (1)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | bsc | n/a | `0xb7e271...8f1467` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [REP-OpenLeverage-Protocol-2021-06-24.pdf](https://github.com/OpenLeverageDev/openleverage-contracts/blob/main/audits/REP-OpenLeverage-Protocol-2021-06-24.pdf) | unknown | Audit | 2021-06 | stale | Direct | contract_name | 2 | high |
| [PeckShield-Audit-Report-OpenLeverage-1.0.1.pdf](https://github.com/peckshield/publications/blob/master/audit_reports/PeckShield-Audit-Report-OpenLeverage-1.0.1.pdf) | PeckShield | Audit | 2021-12 | stale | Direct | contract_name | 2 | high |
| [Code4Rena - Mar 2022](https://code4rena.com/reports/2022-01-openleverage) | Code4rena | Contest | 2022-01 | stale | Direct | contract_name | 2 | high |
| [Peckshield - Sep 2022](https://github.com/peckshield/publications/blob/master/audit_reports/PeckShield-Audit-Report-OpenLeverage-LimitOrder-v1.0.pdf) | PeckShield | Audit | 2022-09 | stale | Direct | contract_name | 0 | n/a |
| [Peckshield - Feb 2023](https://github.com/OpenLeverageDev/overcollateralized-borrowing-contracts/blob/main/audits/PeckShield-Audit-Report-OpenLeverage-Lend-v1.0.pdf) | PeckShield | Audit | 2023-02 | stale | Direct | contract_name | 1 | high |
| [Peckshield - Nov 2023](https://github.com/OpenLeverageDev/ole-v2-contracts/blob/main/audits/PeckShield-Audit-Report-OLEv2-v1.0.pdf) | PeckShield | Audit | 2023-11 | stale | Direct | contract_name | 0 | n/a |
| [PeckShield-Audit-Report-OpenLeverage-v1.0.1.pdf](https://github.com/OpenLeverageDev/openleverage-contracts/blob/main/audits/PeckShield-Audit-Report-OpenLeverage-v1.0.1.pdf) | PeckShield | Audit | 2021-12 | stale | Direct | contract_name | 2 | medium |
| [PeckShield-Audit-Report-OpenLeverage-v1.0.pdf (also discovered via alternate URL)](https://github.com/OpenLeverageDev/openleverage-contracts/blob/main/audits/PeckShield-Audit-Report-OpenLeverage-v1.0.pdf) | PeckShield | Audit | 2021-09 | stale | Direct | contract_name | 1 | medium |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | [`0x511df2...c27e20`](./contracts/ethereum-1/0x511df2a79e33560bc23f070c3098373f6ac27e20/) | OLEV2LockerSwap | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1b6e9c...83ab0a`](./contracts/ethereum-1/0x1b6e9c73bee68102d9dd4a2627f97bff4183ab0a/) | OpenLeverageOFT | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

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
- Audits with zero matched contracts: 2
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=4, medium=2
- Match method counts: extraction_exact=255

Zero-match audit list:

- [13634] Peckshield - Sep 2022
- [13636] Peckshield - Nov 2023

Fork inheritance lineage and inherited audits are included when available.
