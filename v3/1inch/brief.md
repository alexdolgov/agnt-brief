# Agentic Audit Brief: 1inch

## Export Authority

- Production state: **published scope**
- Raw selected rows: 7 across 7 audit(s)
- Eligible audit results: 145 (7 matched; 138 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `7fbef0dcf68cde7195f117d9b41f1e6d89891da495a42b57ae29b5e338972213`

⚠️ Lifecycle status: DECLINING - TVL dropped 22.4% over 90 days

## Project Overview

- Project: 1inch (`1inch`)
- Website: [https://1inch.com](https://1inch.com)
- Lifecycle: declining (Tier 1, declining)
- Generated: 2026-07-15T18:00:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: ethereum, zksync-era
- Contract surface: 2 unique implementations (2 raw deployments)
- Coverage basis: 1/1 confirmed own live verified implementations (100.0%); conservative 100.0% with 0 needs-review implementation(s)
- DeFi Llama TVL: $2,274,711.87
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for 1inch. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 1 contract row(s) across ethereum, zksync-era. Structural roles: 1 supporting. No upgradeable pattern was identified in these rows.

## Logic Topography

- Exact-run contract rows: 1
- Structural roles: supporting (1)
- Contract kinds: contract (1)
- Detected standards: ownable (1), pausable (1)
- Frameworks: openzeppelin (1), permit2 (1)
- Upgradeable-pattern rows: 0

## Fork Analysis

0 of 2 contracts are derived from known codebases. 2 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0x6fd438...d561ff`, chain 324)
- AggregationRouterV6 (`0x111111...842a65`, chain 1)

## Contract Surface Quality

- Indexed contracts: 1; live-surface contracts included: 1 (1 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 2/2 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 1/1 (100.0%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 2 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 0 discovered implementations excluded (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 0
- Deployed-live implementations: 2 of 2 unique (rest dead/inactive/uninitialized)
- All verified address-book-owned implementations audited (incl. non-live): 1/1
- Verified + Unaudited implementations: 0
- Verified by bytecode match: 0
- Unverified implementations: 1
- Unique implementations: 2
- Raw deployments: 2
- Audits discovered: 145 (145 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 7
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2025-09 (fresh)
- Audit staleness (calendar age): 8 fresh, 24 aging, 111 stale, 2 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 1 match-unverified
- Tier 1 coverage: 100.0% (ConsenSys Diligence, OpenZeppelin)
- Note: This protocol is classified as [declining]. ASD of n/a represents exposure in a protocol with declining activity.

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| Consensys | Tier 1 | 1 | 100.0% | 2024-07 |
| Decurity | Tier 2 | 1 | 100.0% | 2025-08 |
| Hexens | Tier 2 | 1 | 100.0% | 2025-08 |
| OpenZeppelin | Tier 1 | 1 | 100.0% | 2025-08 |
| Pessimistic | Tier 2 | 1 | 100.0% | 2024-08 |

## Contract Surface

### ✅ Verified + Audited (1)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| AggregationRouterV6 | adapter | project_anchor | own_supporting | 0 | ethereum | unit-378314 | `0x111111...842a65` | ✅ Audited |

### ⚠️ Verified + Unaudited (0)

- None

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (1)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | zksync-era | unit-378315 | `0x6fd438...d561ff` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [1inch Aggregation Router V5_ABDK Consulting.pdf](https://github.com/1inch/1inch-audits/blob/master/Aggregation%20Pr.%20V5%20and%20Limit%20Order%20Pr.V3/1inch%20Aggregation%20Router%20V5_ABDK%20Consulting.pdf) | ABDK | Audit | 2022-09 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 29 | high |
| [1inch Aggregation Router V5_CoinFabrik.pdf](https://github.com/1inch/1inch-audits/blob/master/Aggregation%20Pr.%20V5%20and%20Limit%20Order%20Pr.V3/1inch%20Aggregation%20Router%20V5_CoinFabrik.pdf) | CoinFabrik | Audit | 2022-08 | stale | Direct | n/a | no match | 0 | 0 | 0 | 11 | n/a |
| [1inch Aggregation Router V5_Consensys.pdf](https://github.com/1inch/1inch-audits/blob/master/Aggregation%20Pr.%20V5%20and%20Limit%20Order%20Pr.V3/1inch%20Aggregation%20Router%20V5_Consensys.pdf) | Consensys | Audit | 2022-08 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 29 | high |
| [1inch Aggregation Router V5_IgorGulamov.pdf](https://github.com/1inch/1inch-audits/blob/master/Aggregation%20Pr.%20V5%20and%20Limit%20Order%20Pr.V3/1inch%20Aggregation%20Router%20V5_IgorGulamov.pdf) | Igor Gulamov | Audit | 2022-09 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 29 | high |
| [1inch Aggregation Router V5_MixBytes.pdf](https://github.com/1inch/1inch-audits/blob/master/Aggregation%20Pr.%20V5%20and%20Limit%20Order%20Pr.V3/1inch%20Aggregation%20Router%20V5_MixBytes.pdf) | MixBytes | Audit | 2022-11 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 29 | high |
| [1inch Aggregation Router V5_OpenZepplin.pdf](https://github.com/1inch/1inch-audits/blob/master/Aggregation%20Pr.%20V5%20and%20Limit%20Order%20Pr.V3/1inch%20Aggregation%20Router%20V5_OpenZepplin.pdf) | OpenZeppelin | Audit | 2022-09 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 20 | high |
| [1inch Aggregation Router V5_PeckShield.pdf](https://github.com/1inch/1inch-audits/blob/master/Aggregation%20Pr.%20V5%20and%20Limit%20Order%20Pr.V3/1inch%20Aggregation%20Router%20V5_PeckShield.pdf) | PeckShield | Audit | 2022-07 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 4 | high |
| [1inch Aggregation Router V5_Pessimistic.pdf](https://github.com/1inch/1inch-audits/blob/master/Aggregation%20Pr.%20V5%20and%20Limit%20Order%20Pr.V3/1inch%20Aggregation%20Router%20V5_Pessimistic.pdf) | Pessimistic | Audit | 2022-10 | stale | Direct | n/a | no match | 0 | 0 | 0 | 15 | n/a |
| [1inch Aggregation Router V5_Statemind.pdf](https://github.com/1inch/1inch-audits/blob/master/Aggregation%20Pr.%20V5%20and%20Limit%20Order%20Pr.V3/1inch%20Aggregation%20Router%20V5_Statemind.pdf) | Statemind | Audit | 2022-07 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 21 | high |
| [1inch Aggregation Router V5_Zokyo.pdf](https://github.com/1inch/1inch-audits/blob/master/Aggregation%20Pr.%20V5%20and%20Limit%20Order%20Pr.V3/1inch%20Aggregation%20Router%20V5_Zokyo.pdf) | Zokyo | Audit | 2022-08 | stale | Direct | n/a | no match | 0 | 0 | 0 | 22 | n/a |
| [1inch Aggregation Router V6.1_Decurity.pdf](https://github.com/1inch/1inch-audits/blob/master/Aggregation%20Pr.%20V6%20and%20Limit%20Order%20Pr.V4/1inch%20Aggregation%20Router%20V6.1_Decurity.pdf) | Decurity | Audit | 2023-10 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 5 | high |
| [1inch Aggregation Router V6.1_Hexens.pdf](https://github.com/1inch/1inch-audits/blob/master/Aggregation%20Pr.%20V6%20and%20Limit%20Order%20Pr.V4/1inch%20Aggregation%20Router%20V6.1_Hexens.pdf) | Hexens | Audit | 2023-11 | stale | Direct | n/a | matched | 1 | 0 | 0 | 5 | n/a |
| [1inch Aggregation Router V6.1_OpenZeppelin.pdf](https://github.com/1inch/1inch-audits/blob/master/Aggregation%20Pr.%20V6%20and%20Limit%20Order%20Pr.V4/1inch%20Aggregation%20Router%20V6.1_OpenZeppelin.pdf) | OpenZeppelin | Audit | 2023-12 | stale | Direct | n/a | matched | 1 | 0 | 0 | 3 | n/a |
| [1inch Aggregation Router V6.1_PeckShield.pdf](https://github.com/1inch/1inch-audits/blob/master/Aggregation%20Pr.%20V6%20and%20Limit%20Order%20Pr.V4/1inch%20Aggregation%20Router%20V6.1_PeckShield.pdf) | PeckShield | Audit | 2023-10 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 2 | medium |
| [1inch Aggregation Router V6.2_Decurity.pdf](https://github.com/1inch/1inch-audits/blob/master/Aggregation%20Pr.%20V6%20and%20Limit%20Order%20Pr.V4/1inch%20Aggregation%20Router%20V6.2_Decurity.pdf) | Decurity | Audit | 2024-02 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 1 | medium |
| [1inch Aggregation Router V6.2_Hexens.pdf](https://github.com/1inch/1inch-audits/blob/master/Aggregation%20Pr.%20V6%20and%20Limit%20Order%20Pr.V4/1inch%20Aggregation%20Router%20V6.2_Hexens.pdf) | Hexens | Audit | 2024-02 | stale | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |
| [1inch Aggregation Router V6.2_Pessimistic.pdf](https://github.com/1inch/1inch-audits/blob/master/Aggregation%20Pr.%20V6%20and%20Limit%20Order%20Pr.V4/1inch%20Aggregation%20Router%20V6.2_Pessimistic.pdf) | Pessimistic | Audit | 2024-02 | stale | Direct | n/a | matched | 1 | 0 | 0 | 18 | n/a |
| [1inch Aggregation Router V6_Consensys.pdf](https://github.com/1inch/1inch-audits/blob/master/Aggregation%20Pr.%20V6%20and%20Limit%20Order%20Pr.V4/1inch%20Aggregation%20Router%20V6_Consensys.pdf) | Consensys | Audit | 2023-04 | stale | Direct | n/a | matched | 1 | 0 | 0 | 19 | n/a |
| [1inch Aggregation Router V6_Decurity.pdf](https://github.com/1inch/1inch-audits/blob/master/Aggregation%20Pr.%20V6%20and%20Limit%20Order%20Pr.V4/1inch%20Aggregation%20Router%20V6_Decurity.pdf) | Decurity | Audit | 2023-04 | stale | Direct | n/a | matched | 1 | 0 | 0 | 18 | n/a |
| [1inch Aggregation Router V6_Hexens.pdf](https://github.com/1inch/1inch-audits/blob/master/Aggregation%20Pr.%20V6%20and%20Limit%20Order%20Pr.V4/1inch%20Aggregation%20Router%20V6_Hexens.pdf) | Hexens | Audit | 2023-04 | stale | Direct | n/a | no match | 0 | 0 | 0 | 13 | n/a |
| [1inch Aggregation Router V6_OpenZeppelin.pdf](https://github.com/1inch/1inch-audits/blob/master/Aggregation%20Pr.%20V6%20and%20Limit%20Order%20Pr.V4/1inch%20Aggregation%20Router%20V6_OpenZeppelin.pdf) | OpenZeppelin | Audit | 2023-04 | stale | Direct | n/a | matched | 1 | 0 | 0 | 5 | n/a |
| [1inch Aggregation Router V6_PeckShield.pdf](https://github.com/1inch/1inch-audits/blob/master/Aggregation%20Pr.%20V6%20and%20Limit%20Order%20Pr.V4/1inch%20Aggregation%20Router%20V6_PeckShield.pdf) | PeckShield | Audit | 2023-04 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 1 | low |
| [1inch Aggregation Router V6_Pessimistic.pdf](https://github.com/1inch/1inch-audits/blob/master/Aggregation%20Pr.%20V6%20and%20Limit%20Order%20Pr.V4/1inch%20Aggregation%20Router%20V6_Pessimistic.pdf) | Pessimistic | Audit | 2023-10 | stale | Direct | n/a | matched | 1 | 0 | 0 | 18 | n/a |
| [1inch Limit Order Protocol v4.1_OpenZeppelin.pdf](https://github.com/1inch/1inch-audits/blob/master/Aggregation%20Pr.%20V6%20and%20Limit%20Order%20Pr.V4/1inch%20Limit%20Order%20Protocol%20v4.1_OpenZeppelin.pdf) | OpenZeppelin | Audit | 2023-11 | stale | Direct | n/a | no match | 0 | 0 | 0 | 7 | n/a |
| [1inch Limit Order Protocol v4_OpenZeppelin.pdf](https://github.com/1inch/1inch-audits/blob/master/Aggregation%20Pr.%20V6%20and%20Limit%20Order%20Pr.V4/1inch%20Limit%20Order%20Protocol%20v4_OpenZeppelin.pdf) | OpenZeppelin | Audit | 2023-04 | stale | Direct | n/a | no match | 0 | 0 | 0 | 14 | n/a |
| [Certik - 1inch v2 Audit Report.pdf](https://github.com/1inch/1inch-audits/blob/master/Aggregation%20Protocol%20V2/Certik%20-%201inch%20v2%20Audit%20Report.pdf) | CertiK | Audit | 2020-11 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 5 | high |
| [Chainsulting - 1inch v2 Audit Report.pdf](https://github.com/1inch/1inch-audits/blob/master/Aggregation%20Protocol%20V2/Chainsulting%20-%201inch%20v2%20Audit%20Report.pdf) | Chainsulting | Audit | 2020-11 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 7 | high |
| [Coinfabrik - 1inch v2 Audit Report.pdf](https://github.com/1inch/1inch-audits/blob/master/Aggregation%20Protocol%20V2/Coinfabrik%20-%201inch%20v2%20Audit%20Report.pdf) | CoinFabrik | Audit | 2020-11 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 5 | high |
| [Hacken - 1inch v2 Audit Report.pdf](https://github.com/1inch/1inch-audits/blob/master/Aggregation%20Protocol%20V2/Hacken%20-%201inch%20v2%20Audit%20Report.pdf) | Hacken | Audit | 2020-11 | stale | Direct | address | no match | 0 | 0 | 0 | 6 | high |
| [Haechi - 1inch v2 Audit Report.pdf](https://github.com/1inch/1inch-audits/blob/master/Aggregation%20Protocol%20V2/Haechi%20-%201inch%20v2%20Audit%20Report.pdf) | HAECHI | Audit | 2020-11 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 5 | high |
| [MixBytes - 1inch v2 Audit Report.pdf](https://github.com/1inch/1inch-audits/blob/master/Aggregation%20Protocol%20V2/MixBytes%20-%201inch%20v2%20Audit%20Report.pdf) | MixBytes | Audit | 2020-11 | stale | Direct | address | no match | 0 | 0 | 0 | 5 | high |
| [Scott Bigelow - 1inch v2 Audit Report.pdf](https://github.com/1inch/1inch-audits/blob/master/Aggregation%20Protocol%20V2/Scott%20Bigelow%20-%201inch%20v2%20Audit%20Report.pdf) | Scott Bigelow | Audit | 2020-11 | stale | Direct | address | no match | 0 | 0 | 0 | 6 | high |
| [Slowmist - 1inch v2 Audit Report.pdf](https://github.com/1inch/1inch-audits/blob/master/Aggregation%20Protocol%20V2/Slowmist%20-%201inch%20v2%20Audit%20Report.pdf) | SlowMist | Audit | 2020-11 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 3 | high |
| [Certik - 1inch v3 Audit Report.pdf](https://github.com/1inch/1inch-audits/blob/master/Aggregation%20Protocol%20V3/Certik%20-%201inch%20v3%20Audit%20Report.pdf) | CertiK | Audit | 2021-03 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 5 | high |
| [Gulamov - 1inch v3 Audit Report.pdf](https://github.com/1inch/1inch-audits/blob/master/Aggregation%20Protocol%20V3/Gulamov%20-%201inch%20v3%20Audit%20Report.pdf) | Igor Gulamov | Audit | 2021-02 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 5 | high |
| [MixBytes - 1inch v3 Audit Report.pdf](https://github.com/1inch/1inch-audits/blob/master/Aggregation%20Protocol%20V3/MixBytes%20-%201inch%20v3%20Audit%20Report.pdf) | MixBytes | Audit | 2021-03 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 5 | high |
| [1Inch Aggregation Router v4 Audit_MixBites.pdf](https://github.com/1inch/1inch-audits/blob/master/Aggregation%20Protocol%20V4/1Inch%20Aggregation%20Router%20v4%20Audit_MixBites.pdf) | MixBytes | Audit | 2021-10 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 17 | high |
| [1inch Aggregation Router v4 Audit_ABDK.pdf](https://github.com/1inch/1inch-audits/blob/master/Aggregation%20Protocol%20V4/1inch%20Aggregation%20Router%20v4%20Audit_ABDK.pdf) | ABDK | Audit | 2021-10 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 7 | high |
| [1inch Aggregation Router v4 Audit_Chainsulting.pdf](https://github.com/1inch/1inch-audits/blob/master/Aggregation%20Protocol%20V4/1inch%20Aggregation%20Router%20v4%20Audit_Chainsulting.pdf) | Chainsulting | Audit | 2021-09 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 4 | high |
| [1inch Aggregation Router v4 Audit_Coinfabrik.pdf](https://github.com/1inch/1inch-audits/blob/master/Aggregation%20Protocol%20V4/1inch%20Aggregation%20Router%20v4%20Audit_Coinfabrik.pdf) | CoinFabrik | Audit | 2021-09 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 5 | high |
| [1inch Aggregation Router v4 Audit_Consensys.pdf](https://github.com/1inch/1inch-audits/blob/master/Aggregation%20Protocol%20V4/1inch%20Aggregation%20Router%20v4%20Audit_Consensys.pdf) | Consensys | Audit | 2021-09 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 10 | high |
| [1inch Aggregation Router v4 Audit_Igor Gulamov.pdf](https://github.com/1inch/1inch-audits/blob/master/Aggregation%20Protocol%20V4/1inch%20Aggregation%20Router%20v4%20Audit_Igor%20Gulamov.pdf) | Igor Gulamov | Audit | 2021-09 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 4 | high |
| [1inch Aggregation Router v4 Audit_Pessimistic.pdf](https://github.com/1inch/1inch-audits/blob/master/Aggregation%20Protocol%20V4/1inch%20Aggregation%20Router%20v4%20Audit_Pessimistic.pdf) | Pessimistic | Audit | 2021-10 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 4 | high |
| [1inch-cross-chain-swap-v1-AstraSec.pdf](https://github.com/1inch/1inch-audits/blob/master/Cross-chain%20Protocol/1inch-cross-chain-swap-v1-AstraSec.pdf) | AstraSec | Audit | 2024-03 | stale | Direct | n/a | no match | 0 | 0 | 0 | 3 | n/a |
| [1inch-cross-chain-swap-v1-Consensys.pdf](https://github.com/1inch/1inch-audits/blob/master/Cross-chain%20Protocol/1inch-cross-chain-swap-v1-Consensys.pdf) | Consensys | Audit | 2024-03 | stale | Direct | n/a | no match | 0 | 0 | 0 | 11 | n/a |
| [1inch-cross-chain-swap-v1-Decurity.pdf](https://github.com/1inch/1inch-audits/blob/master/Cross-chain%20Protocol/1inch-cross-chain-swap-v1-Decurity.pdf) | Decurity | Audit | 2024-03 | stale | Direct | n/a | no match | 0 | 0 | 0 | 5 | n/a |
| [1inch-cross-chain-swap-v1-Igor Gulamov.pdf](https://github.com/1inch/1inch-audits/blob/master/Cross-chain%20Protocol/1inch-cross-chain-swap-v1-Igor%20Gulamov.pdf) | Igor Gulamov | Audit | n/a | unknown | Direct | n/a | no match | 0 | 0 | 0 | 10 | n/a |
| [1inch-cross-chain-swap-v1-Open Zeppelin.pdf](https://github.com/1inch/1inch-audits/blob/master/Cross-chain%20Protocol/1inch-cross-chain-swap-v1-Open%20Zeppelin.pdf) | OpenZeppelin | Audit | 2024-04 | stale | Direct | n/a | no match | 0 | 0 | 0 | 10 | n/a |
| [1inch-cross-chain-swap-v1-Pessimistic.pdf](https://github.com/1inch/1inch-audits/blob/master/Cross-chain%20Protocol/1inch-cross-chain-swap-v1-Pessimistic.pdf) | Pessimistic | Audit | 2024-03 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 1 | medium |
| [1inch-cross-chain-v2-Astrasec.pdf](https://github.com/1inch/1inch-audits/blob/master/Cross-chain%20Protocol/1inch-cross-chain-v2-Astrasec.pdf) | AstraSec | Audit | 2024-08 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 10 | high |
| [1inch-cross-chain-v2-Consensys.pdf](https://github.com/1inch/1inch-audits/blob/master/Cross-chain%20Protocol/1inch-cross-chain-v2-Consensys.pdf) | Consensys | Audit | 2024-07 | stale | Direct | n/a | no match | 0 | 0 | 0 | 22 | n/a |
| [1inch-cross-chain-v2-Decurity.pdf](https://github.com/1inch/1inch-audits/blob/master/Cross-chain%20Protocol/1inch-cross-chain-v2-Decurity.pdf) | Decurity | Audit | 2024-07 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 4 | high |
| [1inch-cross-chain-v2-Igor Gulamov.pdf](https://github.com/1inch/1inch-audits/blob/master/Cross-chain%20Protocol/1inch-cross-chain-v2-Igor%20Gulamov.pdf) | Igor Gulamov | Audit | n/a | unknown | Direct | n/a | no match | 0 | 0 | 0 | 23 | n/a |
| [1inch-cross-chain-v2-Open Zeppelin.pdf](https://github.com/1inch/1inch-audits/blob/master/Cross-chain%20Protocol/1inch-cross-chain-v2-Open%20Zeppelin.pdf) | OpenZeppelin | Audit | 2024-09 | aging | Direct | n/a | no match | 0 | 0 | 0 | 22 | n/a |
| [1inch-cross-chain-v2-Pessimistic.pdf](https://github.com/1inch/1inch-audits/blob/master/Cross-chain%20Protocol/1inch-cross-chain-v2-Pessimistic.pdf) | Pessimistic | Audit | 2024-08 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 2 | medium |
| [1inch Crosschain Fee v1.1_Certora.pdf](https://github.com/1inch/1inch-audits/blob/master/Crosschain%20fees%20v1.1/1inch%20Crosschain%20Fee%20v1.1_Certora.pdf) | Certora | Audit | 2025-09 | fresh | Direct | contract_name | no match | 0 | 0 | 0 | 3 | high |
| [1inch Crosschain Fee v1.1_Decurity.pdf](https://github.com/1inch/1inch-audits/blob/master/Crosschain%20fees%20v1.1/1inch%20Crosschain%20Fee%20v1.1_Decurity.pdf) | Decurity | Audit | 2025-08 | fresh | Direct | contract_name | no match | 0 | 0 | 0 | 2 | high |
| [1inch Crosschain Fee v1.1_Hexens.pdf](https://github.com/1inch/1inch-audits/blob/master/Crosschain%20fees%20v1.1/1inch%20Crosschain%20Fee%20v1.1_Hexens.pdf) | Hexens | Audit | 2025-08 | fresh | Direct | contract_name | no match | 0 | 0 | 0 | 14 | high |
| [1inch Crosschain Fee v1.1_Open Zeppelin.pdf](https://github.com/1inch/1inch-audits/blob/master/Crosschain%20fees%20v1.1/1inch%20Crosschain%20Fee%20v1.1_Open%20Zeppelin.pdf) | OpenZeppelin | Audit | 2025-08 | fresh | Direct | n/a | no match | 0 | 0 | 0 | 13 | n/a |
| [1inch Crosschain Fee v1.1_Sherlock.pdf](https://github.com/1inch/1inch-audits/blob/master/Crosschain%20fees%20v1.1/1inch%20Crosschain%20Fee%20v1.1_Sherlock.pdf) | Sherlock | Contest | 2025-08 | fresh | Direct | n/a | no match | 0 | 0 | 0 | 24 | n/a |
| [Fee flow v1-AstraSec.pdf](https://github.com/1inch/1inch-audits/blob/master/Fees%20for%20LO%20and%20Fusion%20V1/Fee%20flow%20v1-AstraSec.pdf) | AstraSec | Audit | 2025-04 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 4 | high |
| [Fee flow v1-Bailsec.pdf](https://github.com/1inch/1inch-audits/blob/master/Fees%20for%20LO%20and%20Fusion%20V1/Fee%20flow%20v1-Bailsec.pdf) | Bailsec | Audit | 2025-04 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 4 | high |
| [Fee flow v1-ChainLight.pdf](https://github.com/1inch/1inch-audits/blob/master/Fees%20for%20LO%20and%20Fusion%20V1/Fee%20flow%20v1-ChainLight.pdf) | ChainLight | Audit | 2025-05 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 4 | high |
| [Fee flow v1-Decurity.pdf](https://github.com/1inch/1inch-audits/blob/master/Fees%20for%20LO%20and%20Fusion%20V1/Fee%20flow%20v1-Decurity.pdf) | Decurity | Audit | 2025-04 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 4 | high |
| [Fee flow v1-Open Zepplin.pdf](https://github.com/1inch/1inch-audits/blob/master/Fees%20for%20LO%20and%20Fusion%20V1/Fee%20flow%20v1-Open%20Zepplin.pdf) | OpenZeppelin | Audit | 2025-05 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 4 | high |
| [Fee flow v1-Sherlock.pdf](https://github.com/1inch/1inch-audits/blob/master/Fees%20for%20LO%20and%20Fusion%20V1/Fee%20flow%20v1-Sherlock.pdf) | Sherlock | Contest | 2025-04 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 4 | high |
| [1inch FixedRateSwap_Ackee Blockchain.pdf](https://github.com/1inch/1inch-audits/blob/master/Fixed%20Rate%20Swap%20V1/1inch%20FixedRateSwap_Ackee%20Blockchain.pdf) | Ackee Blockchain | Audit | 2021-08 | stale | Direct | n/a | no match | 0 | 0 | 0 | 1 | n/a |
| [1inch FixedRateSwap_Chainsulting.pdf](https://github.com/1inch/1inch-audits/blob/master/Fixed%20Rate%20Swap%20V1/1inch%20FixedRateSwap_Chainsulting.pdf) | Chainsulting | Audit | 2021-08 | stale | Direct | n/a | no match | 0 | 0 | 0 | 1 | n/a |
| [1inch FixedRateSwap_CoinFabrik.pdf](https://github.com/1inch/1inch-audits/blob/master/Fixed%20Rate%20Swap%20V1/1inch%20FixedRateSwap_CoinFabrik.pdf) | CoinFabrik | Audit | 2021-08 | stale | Direct | n/a | no match | 0 | 0 | 0 | 1 | n/a |
| [1inch FixedRateSwap_MixedBytes.pdf](https://github.com/1inch/1inch-audits/blob/master/Fixed%20Rate%20Swap%20V1/1inch%20FixedRateSwap_MixedBytes.pdf) | MixBytes | Audit | 2021-07 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 1 | high |
| [1inch FixedRateSwap_Pessimistic.pdf](https://github.com/1inch/1inch-audits/blob/master/Fixed%20Rate%20Swap%20V1/1inch%20FixedRateSwap_Pessimistic.pdf) | Pessimistic | Audit | 2021-08 | stale | Direct | n/a | no match | 0 | 0 | 0 | 1 | n/a |
| [1inch Settlement v2.1_AstraSec.pdf](https://github.com/1inch/1inch-audits/blob/master/Fusion%20Settlement%20V2/1inch%20Settlement%20v2.1_AstraSec.pdf) | AstraSec | Audit | 2024-04 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 8 | high |
| [1inch Settlement v2.1_Decurity.pdf](https://github.com/1inch/1inch-audits/blob/master/Fusion%20Settlement%20V2/1inch%20Settlement%20v2.1_Decurity.pdf) | Decurity | Audit | 2024-03 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 2 | high |
| [1inch Settlement v2.1_Hexens.pdf](https://github.com/1inch/1inch-audits/blob/master/Fusion%20Settlement%20V2/1inch%20Settlement%20v2.1_Hexens.pdf) | Hexens | Audit | 2024-04 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 1 | high |
| [1inch Settlement v2.1_Open Zepplin.pdf](https://github.com/1inch/1inch-audits/blob/master/Fusion%20Settlement%20V2/1inch%20Settlement%20v2.1_Open%20Zepplin.pdf) | OpenZeppelin | Audit | 2024-04 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 8 | high |
| [1inch Settlement v2.1_Pashov.pdf](https://github.com/1inch/1inch-audits/blob/master/Fusion%20Settlement%20V2/1inch%20Settlement%20v2.1_Pashov.pdf) | Pashov Audit Group | Audit | 2024-03 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 8 | high |
| [1inch Settlement v2.1_Pessemistic.pdf](https://github.com/1inch/1inch-audits/blob/master/Fusion%20Settlement%20V2/1inch%20Settlement%20v2.1_Pessemistic.pdf) | Pessimistic | Audit | 2024-03 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 10 | high |
| [1inch Settlement v2_Decurity.pdf](https://github.com/1inch/1inch-audits/blob/master/Fusion%20Settlement%20V2/1inch%20Settlement%20v2_Decurity.pdf) | Decurity | Audit | 2023-11 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 1 | high |
| [1inch Settlement v2_Hexens.pdf](https://github.com/1inch/1inch-audits/blob/master/Fusion%20Settlement%20V2/1inch%20Settlement%20v2_Hexens.pdf) | Hexens | Audit | 2023-11 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 1 | high |
| [1inch Settlement v2_Open Zeppelin.pdf](https://github.com/1inch/1inch-audits/blob/master/Fusion%20Settlement%20V2/1inch%20Settlement%20v2_Open%20Zeppelin.pdf) | OpenZeppelin | Audit | 2023-12 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 2 | high |
| [1inch Settlement v2_Peckshield.pdf](https://github.com/1inch/1inch-audits/blob/master/Fusion%20Settlement%20V2/1inch%20Settlement%20v2_Peckshield.pdf) | PeckShield | Audit | 2023-12 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 1 | high |
| [1inch Settlement v2_Pessimistic.pdf](https://github.com/1inch/1inch-audits/blob/master/Fusion%20Settlement%20V2/1inch%20Settlement%20v2_Pessimistic.pdf) | Pessimistic | Audit | 2023-12 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 3 | high |
| [1inch_FusionMode_ABDK.pdf](https://github.com/1inch/1inch-audits/blob/master/Fusion%20mode%20and%20Token-plugins/1inch_FusionMode_ABDK.pdf) | ABDK | Audit | 2023-02 | stale | Direct | n/a | no match | 0 | 0 | 0 | 25 | n/a |
| [1inch_FusionMode_ChainSecurity1.pdf](https://github.com/1inch/1inch-audits/blob/master/Fusion%20mode%20and%20Token-plugins/1inch_FusionMode_ChainSecurity1.pdf) | ChainSecurity | Audit | 2023-01 | stale | Direct | n/a | no match | 0 | 0 | 0 | 20 | n/a |
| [1inch_FusionMode_ChainSecurity2.pdf](https://github.com/1inch/1inch-audits/blob/master/Fusion%20mode%20and%20Token-plugins/1inch_FusionMode_ChainSecurity2.pdf) | ChainSecurity | Audit | 2022-12 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 6 | high |
| [1inch_FusionMode_ChainSecurity3.pdf](https://github.com/1inch/1inch-audits/blob/master/Fusion%20mode%20and%20Token-plugins/1inch_FusionMode_ChainSecurity3.pdf) | ChainSecurity | Audit | 2022-12 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 7 | high |
| [1inch_FusionMode_Decurity.pdf](https://github.com/1inch/1inch-audits/blob/master/Fusion%20mode%20and%20Token-plugins/1inch_FusionMode_Decurity.pdf) | Decurity | Audit | 2022-12 | stale | Direct | n/a | no match | 0 | 0 | 0 | 13 | n/a |
| [1inch_FusionMode_Hexens.1.pdf](https://github.com/1inch/1inch-audits/blob/master/Fusion%20mode%20and%20Token-plugins/1inch_FusionMode_Hexens.1.pdf) | Hexens | Audit | 2022-11 | stale | Direct | n/a | no match | 0 | 0 | 0 | 4 | n/a |
| [1inch_FusionMode_Hexens.2.pdf](https://github.com/1inch/1inch-audits/blob/master/Fusion%20mode%20and%20Token-plugins/1inch_FusionMode_Hexens.2.pdf) | Hexens | Audit | 2022-12 | stale | Direct | n/a | no match | 0 | 0 | 0 | 14 | n/a |
| [1inch_FusionMode_OpenZepplin.1.pdf](https://github.com/1inch/1inch-audits/blob/master/Fusion%20mode%20and%20Token-plugins/1inch_FusionMode_OpenZepplin.1.pdf) | OpenZeppelin | Audit | 2023-03 | stale | Direct | n/a | no match | 0 | 0 | 0 | 22 | n/a |
| [1inch_FusionMode_OpenZepplin.2.pdf](https://github.com/1inch/1inch-audits/blob/master/Fusion%20mode%20and%20Token-plugins/1inch_FusionMode_OpenZepplin.2.pdf) | OpenZeppelin | Audit | 2023-03 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 13 | high |
| [1inch_FusionMode_Oxorio.pdf](https://github.com/1inch/1inch-audits/blob/master/Fusion%20mode%20and%20Token-plugins/1inch_FusionMode_Oxorio.pdf) | Oxorio | Audit | 2022-12 | stale | Direct | n/a | no match | 0 | 0 | 0 | 8 | n/a |
| [1inch_FusionMode_Peckshield.pdf](https://github.com/1inch/1inch-audits/blob/master/Fusion%20mode%20and%20Token-plugins/1inch_FusionMode_Peckshield.pdf) | PeckShield | Audit | 2022-12 | stale | Direct | n/a | no match | 0 | 0 | 0 | 10 | n/a |
| [1inch_FusionMode_Pessimistic.pdf](https://github.com/1inch/1inch-audits/blob/master/Fusion%20mode%20and%20Token-plugins/1inch_FusionMode_Pessimistic.pdf) | Pessimistic | Audit | 2023-01 | stale | Direct | n/a | no match | 0 | 0 | 0 | 17 | n/a |
| [1inch_FusionMode_iosiro.pdf](https://github.com/1inch/1inch-audits/blob/master/Fusion%20mode%20and%20Token-plugins/1inch_FusionMode_iosiro.pdf) | Iosiro | Audit | 2022-12 | stale | Direct | n/a | no match | 0 | 0 | 0 | 14 | n/a |
| [1inch_TokenPlugins-Pashov.pdf](https://github.com/1inch/1inch-audits/blob/master/Fusion%20mode%20and%20Token-plugins/1inch_TokenPlugins-Pashov.pdf) | Pashov Audit Group | Audit | 2023-09 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 2 | high |
| [1Inch Limit Order Protocol_ABDK.pdf](https://github.com/1inch/1inch-audits/blob/master/Limit%20Order%20Protocol%20V2/1Inch%20Limit%20Order%20Protocol_ABDK.pdf) | ABDK | Audit | 2021-11 | stale | Direct | n/a | no match | 0 | 0 | 0 | 10 | n/a |
| [1Inch Limit Order Protocol_Chainsulting.pdf](https://github.com/1inch/1inch-audits/blob/master/Limit%20Order%20Protocol%20V2/1Inch%20Limit%20Order%20Protocol_Chainsulting.pdf) | Chainsulting | Audit | 2021-10 | stale | Direct | n/a | no match | 0 | 0 | 0 | 17 | n/a |
| [1Inch Limit Order Protocol_CoinFabrik.pdf](https://github.com/1inch/1inch-audits/blob/master/Limit%20Order%20Protocol%20V2/1Inch%20Limit%20Order%20Protocol_CoinFabrik.pdf) | CoinFabrik | Audit | 2021-09 | stale | Direct | n/a | no match | 0 | 0 | 0 | 13 | n/a |
| [1Inch Limit Order Protocol_IgorGulamov.pdf](https://github.com/1inch/1inch-audits/blob/master/Limit%20Order%20Protocol%20V2/1Inch%20Limit%20Order%20Protocol_IgorGulamov.pdf) | Igor Gulamov | Audit | 2021-10 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 5 | high |
| [1Inch Limit Order Protocol_MixBytes.pdf](https://github.com/1inch/1inch-audits/blob/master/Limit%20Order%20Protocol%20V2/1Inch%20Limit%20Order%20Protocol_MixBytes.pdf) | MixBytes | Audit | 2021-11 | stale | Direct | n/a | no match | 0 | 0 | 0 | 13 | n/a |
| [1inch Limit Order Portocol_Certik.pdf](https://github.com/1inch/1inch-audits/blob/master/Limit%20Order%20Protocol%20V2/1inch%20Limit%20Order%20Portocol_Certik.pdf) | CertiK | Audit | 2021-11 | stale | Direct | n/a | no match | 0 | 0 | 0 | 14 | n/a |
| [ABDK - 1inch Limit Order Protocol audit.pdf](https://github.com/1inch/1inch-audits/blob/master/Limit%20Order%20Protocol/ABDK%20-%201inch%20Limit%20Order%20Protocol%20audit.pdf) | ABDK | Audit | 2021-06 | stale | Direct | n/a | no match | 0 | 0 | 0 | 11 | n/a |
| [Chainsulting - 1inch Limit Order Protocol audit.pdf](https://github.com/1inch/1inch-audits/blob/master/Limit%20Order%20Protocol/Chainsulting%20-%201inch%20Limit%20Order%20Protocol%20audit.pdf) | Chainsulting | Audit | 2021-06 | stale | Direct | n/a | no match | 0 | 0 | 0 | 1 | n/a |
| [Coinfabrik - 1inch Limit Order Protocol audit.pdf](https://github.com/1inch/1inch-audits/blob/master/Limit%20Order%20Protocol/Coinfabrik%20-%201inch%20Limit%20Order%20Protocol%20audit.pdf) | CoinFabrik | Audit | 2021-04 | stale | Direct | n/a | no match | 0 | 0 | 0 | 12 | n/a |
| [Coinspect - 1inch Limit Order Protocol audit.pdf](https://github.com/1inch/1inch-audits/blob/master/Limit%20Order%20Protocol/Coinspect%20-%201inch%20Limit%20Order%20Protocol%20audit.pdf) | Coinspect | Audit | 2021-04 | stale | Direct | n/a | no match | 0 | 0 | 0 | 13 | n/a |
| [LimitSwap audit.pdf](https://github.com/1inch/1inch-audits/blob/master/Limit%20Order%20Protocol/LimitSwap%20audit.pdf) | unknown | Audit | 2021-03 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 6 | high |
| [Pessimistic - 1inch Limit Order Protocol audit.pdf](https://github.com/1inch/1inch-audits/blob/master/Limit%20Order%20Protocol/Pessimistic%20-%201inch%20Limit%20Order%20Protocol%20audit.pdf) | Pessimistic | Audit | 2021-06 | stale | Direct | n/a | no match | 0 | 0 | 0 | 3 | n/a |
| [Certik - 1inch Liquidity Protocol audit.pdf](https://github.com/1inch/1inch-audits/blob/master/Liquidity%20Protocol/Certik%20-%201inch%20Liquidity%20Protocol%20audit.pdf) | CertiK | Audit | 2020-12 | stale | Direct | n/a | no match | 0 | 0 | 0 | 24 | n/a |
| [Chainsulting - 1inch Liquidity Protocol Audit.pdf](https://github.com/1inch/1inch-audits/blob/master/Liquidity%20Protocol/Chainsulting%20-%201inch%20Liquidity%20Protocol%20Audit.pdf) | Chainsulting | Audit | 2020-12 | stale | Direct | n/a | no match | 0 | 0 | 0 | 24 | n/a |
| [Coinfabrik - 1inch Liquidity Protocol Audit.pdf](https://github.com/1inch/1inch-audits/blob/master/Liquidity%20Protocol/Coinfabrik%20-%201inch%20Liquidity%20Protocol%20Audit.pdf) | CoinFabrik | Audit | 2020-12 | stale | Direct | n/a | no match | 0 | 0 | 0 | 23 | n/a |
| [Cure53 - 1inch Liquidity Protocol audit.pdf](https://github.com/1inch/1inch-audits/blob/master/Liquidity%20Protocol/Cure53%20-%201inch%20Liquidity%20Protocol%20audit.pdf) | Cure53 | Audit | 2020-12 | stale | Direct | n/a | no match | 0 | 0 | 0 | 32 | n/a |
| [Gulamov - 1inch Farming audit.pdf](https://github.com/1inch/1inch-audits/blob/master/Liquidity%20Protocol/Farming/Gulamov%20-%201inch%20Farming%20audit.pdf) | Igor Gulamov | Audit | 2021-02 | stale | Direct | n/a | no match | 0 | 0 | 0 | 2 | n/a |
| [Gulamov - 1inch Liquidity Protocol audit.pdf](https://github.com/1inch/1inch-audits/blob/master/Liquidity%20Protocol/Gulamov%20-%201inch%20Liquidity%20Protocol%20audit.pdf) | Igor Gulamov | Audit | 2021-01 | stale | Direct | n/a | no match | 0 | 0 | 0 | 10 | n/a |
| [MixBytes - 1inch Liquidity Protocol Report.pdf](https://github.com/1inch/1inch-audits/blob/master/Liquidity%20Protocol/MixBytes%20-%201inch%20Liquidity%20Protocol%20Report.pdf) | MixBytes | Audit | 2021-01 | stale | Direct | n/a | no match | 0 | 0 | 0 | 23 | n/a |
| [1inch Multi-Farming Contracts V3_Chainsafe.pdf](https://github.com/1inch/1inch-audits/blob/master/Multi-Farming%20Contracts%20V3/1inch%20Multi-Farming%20Contracts%20V3_Chainsafe.pdf) | ChainSafe | Audit | 2022-11 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 1 | medium |
| [1inch Multi-Farming Contracts V3_CoinFabrik.pdf](https://github.com/1inch/1inch-audits/blob/master/Multi-Farming%20Contracts%20V3/1inch%20Multi-Farming%20Contracts%20V3_CoinFabrik.pdf) | CoinFabrik | Audit | 2022-12 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 9 | high |
| [1inch Multi-Farming Contracts V3_Decurity.pdf](https://github.com/1inch/1inch-audits/blob/master/Multi-Farming%20Contracts%20V3/1inch%20Multi-Farming%20Contracts%20V3_Decurity.pdf) | Decurity | Audit | 2022-12 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 5 | high |
| [1inch Multi-Farming Contracts V3_Gulamov.pdf](https://github.com/1inch/1inch-audits/blob/master/Multi-Farming%20Contracts%20V3/1inch%20Multi-Farming%20Contracts%20V3_Gulamov.pdf) | Igor Gulamov | Audit | 2022-01 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 1 | medium |
| [1inch Multi-Farming Contracts V3_Peckshield.pdf](https://github.com/1inch/1inch-audits/blob/master/Multi-Farming%20Contracts%20V3/1inch%20Multi-Farming%20Contracts%20V3_Peckshield.pdf) | PeckShield | Audit | 2023-02 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 3 | medium |
| [1inch Multi-Farming Contracts V3_Pessimistic.pdf](https://github.com/1inch/1inch-audits/blob/master/Multi-Farming%20Contracts%20V3/1inch%20Multi-Farming%20Contracts%20V3_Pessimistic.pdf) | Pessimistic | Audit | 2023-01 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 6 | high |
| [1inch Multi-Farming Contracts V3_Smartstate.pdf](https://github.com/1inch/1inch-audits/blob/master/Multi-Farming%20Contracts%20V3/1inch%20Multi-Farming%20Contracts%20V3_Smartstate.pdf) | SmartState | Audit | 2022-12 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 4 | high |
| [Solana Fusion - Decurity v1.pdf](https://github.com/1inch/1inch-audits/blob/master/Solana%20Fusion%20v1/Solana%20Fusion%20-%20Decurity%20v1.pdf) | Decurity | Audit | 2025-02 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 2 | high |
| [Solana Fusion - Hexens v1.pdf](https://github.com/1inch/1inch-audits/blob/master/Solana%20Fusion%20v1/Solana%20Fusion%20-%20Hexens%20v1.pdf) | Hexens | Audit | 2025-02 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 2 | high |
| [Solana Fusion - Open Zepplin v1.pdf](https://github.com/1inch/1inch-audits/blob/master/Solana%20Fusion%20v1/Solana%20Fusion%20-%20Open%20Zepplin%20v1.pdf) | OpenZeppelin | Audit | 2025-04 | aging | Direct | address | no match | 0 | 0 | 0 | 2 | high |
| [Solana Fusion - Ottersec v1.pdf](https://github.com/1inch/1inch-audits/blob/master/Solana%20Fusion%20v1/Solana%20Fusion%20-%20Ottersec%20v1.pdf) | OtterSec | Audit | 2025-06 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 1 | high |
| [Solana Fusion - Quantstamp v1.pdf](https://github.com/1inch/1inch-audits/blob/master/Solana%20Fusion%20v1/Solana%20Fusion%20-%20Quantstamp%20v1.pdf) | Quantstamp | Audit | 2025-03 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 1 | high |
| [Solana Fusion - Zenith v1.01.pdf](https://github.com/1inch/1inch-audits/blob/master/Solana%20Fusion%20v1/Solana%20Fusion%20-%20Zenith%20v1.01.pdf) | Zenith | Audit | 2025-04 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 1 | high |
| [Solana Fusion v1_Kudelski.pdf](https://github.com/1inch/1inch-audits/blob/master/Solana%20Fusion%20v1/Solana%20Fusion%20v1_Kudelski.pdf) | Kudelski Security | Audit | 2025-05 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 2 | high |
| [Solana Fusion v1_OffsideLabs.pdf](https://github.com/1inch/1inch-audits/blob/master/Solana%20Fusion%20v1/Solana%20Fusion%20v1_OffsideLabs.pdf) | Offside Labs | Audit | 2025-04 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 2 | high |
| [Solana cross-chain v1.0-Hexens.pdf](https://github.com/1inch/1inch-audits/blob/master/Solana%20cross-chain%20v1/Solana%20cross-chain%20v1.0-Hexens.pdf) | Hexens | Audit | 2025-07 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 9 | high |
| [Solana cross-chain v1.0-Zenith.pdf](https://github.com/1inch/1inch-audits/blob/master/Solana%20cross-chain%20v1/Solana%20cross-chain%20v1.0-Zenith.pdf) | Zenith | Audit | 2025-07 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 3 | high |
| [Solana cross-chain v1.0_Decurity.pdf](https://github.com/1inch/1inch-audits/blob/master/Solana%20cross-chain%20v1/Solana%20cross-chain%20v1.0_Decurity.pdf) | Decurity | Audit | 2025-06 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 3 | high |
| [Solana cross-chain v1.0_OffsideLabs.pdf](https://github.com/1inch/1inch-audits/blob/master/Solana%20cross-chain%20v1/Solana%20cross-chain%20v1.0_OffsideLabs.pdf) | Offside Labs | Audit | 2025-07 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 3 | high |
| [Solana cross-chain v1.0_Sherlock.pdf](https://github.com/1inch/1inch-audits/blob/master/Solana%20cross-chain%20v1/Solana%20cross-chain%20v1.0_Sherlock.pdf) | Sherlock | Contest | 2025-06 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 3 | high |
| [Solana cross-chain v1.1_Decurity.pdf](https://github.com/1inch/1inch-audits/blob/master/Solana%20cross-chain%20v1/Solana%20cross-chain%20v1.1_Decurity.pdf) | Decurity | Audit | 2025-07 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 2 | high |
| [Solana cross-chain v1.1_Hexens.pdf](https://github.com/1inch/1inch-audits/blob/master/Solana%20cross-chain%20v1/Solana%20cross-chain%20v1.1_Hexens.pdf) | Hexens | Audit | 2025-08 | fresh | Direct | contract_name | no match | 0 | 0 | 0 | 2 | high |
| [Solana cross-chain v1.1_OffsideLabs.pdf](https://github.com/1inch/1inch-audits/blob/master/Solana%20cross-chain%20v1/Solana%20cross-chain%20v1.1_OffsideLabs.pdf) | Offside Labs | Audit | 2025-09 | fresh | Direct | contract_name | no match | 0 | 0 | 0 | 3 | high |
| [Solana cross-chain v1.1_Sherlock.pdf](https://github.com/1inch/1inch-audits/blob/master/Solana%20cross-chain%20v1/Solana%20cross-chain%20v1.1_Sherlock.pdf) | Sherlock | Contest | 2025-07 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 3 | high |
| [Solana cross-chain v1.1_Zenith.pdf](https://github.com/1inch/1inch-audits/blob/master/Solana%20cross-chain%20v1/Solana%20cross-chain%20v1.1_Zenith.pdf) | Zenith | Audit | 2025-08 | fresh | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |
| [Chainsulting - 1inch Vesting Contract audit.pdf](https://github.com/1inch/1inch-audits/blob/master/Vesting%20Contract/Chainsulting%20-%201inch%20Vesting%20Contract%20audit.pdf) | Chainsulting | Audit | 2021-05 | stale | Direct | n/a | no match | 0 | 0 | 0 | 1 | n/a |
| [Coinfabrik - 1inch Vesting Contract audit.pdf](https://github.com/1inch/1inch-audits/blob/master/Vesting%20Contract/Coinfabrik%20-%201inch%20Vesting%20Contract%20audit.pdf) | CoinFabrik | Audit | 2021-05 | stale | Direct | n/a | no match | 0 | 0 | 0 | 1 | n/a |
| [Gulamov - 1inch Vesting Contract audit.pdf](https://github.com/1inch/1inch-audits/blob/master/Vesting%20Contract/Gulamov%20-%201inch%20Vesting%20Contract%20audit.pdf) | Igor Gulamov | Audit | 2021-05 | stale | Direct | n/a | no match | 0 | 0 | 0 | 1 | n/a |
| [Pessimistic - 1inch Vesting Contract audit.pdf](https://github.com/1inch/1inch-audits/blob/master/Vesting%20Contract/Pessimistic%20-%201inch%20Vesting%20Contract%20audit.pdf) | Pessimistic | Audit | 2021-05 | stale | Direct | n/a | no match | 0 | 0 | 0 | 1 | n/a |
| [MixBytes.pdf](https://github.com/1inch/1inch-token/blob/master/audits/MixBytes.pdf) | MixBytes | Audit | 2020-12 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 5 | high |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [8160] 1inch Aggregation Router V5_ABDK Consulting.pdf — no match: Extracted 30 contract names from the scope section listing files in the repository. Audit date found on cover page: 16th September 2022.
- [8161] 1inch Aggregation Router V5_CoinFabrik.pdf — no match: No reason recorded
- [8162] 1inch Aggregation Router V5_Consensys.pdf — no match: All files listed in Appendix 1 - Files in Scope were extracted. The audit date is the end date of the review period (September 16, 2022).
- [8163] 1inch Aggregation Router V5_IgorGulamov.pdf — no match: Extracted all contracts from the scope section of the audit report. The date is from the title line.
- [8164] 1inch Aggregation Router V5_MixBytes.pdf — no match: All contracts listed in the Project Scope section of the report.
- [8165] 1inch Aggregation Router V5_OpenZepplin.pdf — no match: Extracted 21 contract names from the scope section listing files in 1inch-contract and limit-order-protocol repositories. Audit date from title: 'September 22, 2022'.
- [8166] 1inch Aggregation Router V5_PeckShield.pdf — no match: Extracted contract names from findings targets and report description. Audit date from cover page and table.
- [8167] 1inch Aggregation Router V5_Pessimistic.pdf — no match: No reason recorded
- [8168] 1inch Aggregation Router V5_Statemind.pdf — no match: Extracted 21 contract names from the Project Scope section listing files. Audit date from timeline: 18-07-2022 - 29-07-2022, using end date.
- [8169] 1inch Aggregation Router V5_Zokyo.pdf — no match: No reason recorded
- [8170] 1inch Aggregation Router V6.1_Decurity.pdf — no match: Extracted contract names from findings table and file paths. Audit date from report header and status date.
- [8171] 1inch Aggregation Router V6.1_Hexens.pdf — matched: No reason recorded
- [8172] 1inch Aggregation Router V6.1_OpenZeppelin.pdf — matched: No reason recorded
- [8173] 1inch Aggregation Router V6.1_PeckShield.pdf — no match: No explicit scope table; contracts extracted from findings targets. Audit date from cover page and latest audit report date.
- [8174] 1inch Aggregation Router V6.2_Decurity.pdf — no match: Scope section only lists pull requests, not specific contracts. Only one contract name extracted from findings.
- [8175] 1inch Aggregation Router V6.2_Hexens.pdf — no match: The scope section only mentions pull requests (PRs) on GitHub repositories, not specific contract names or file paths. No contract names could be extracted.
- [8176] 1inch Aggregation Router V6.2_Pessimistic.pdf — matched: No reason recorded
- [8177] 1inch Aggregation Router V6_Consensys.pdf — matched: No reason recorded
- [8178] 1inch Aggregation Router V6_Decurity.pdf — matched: No reason recorded
- [8179] 1inch Aggregation Router V6_Hexens.pdf — no match: No reason recorded
- [8180] 1inch Aggregation Router V6_OpenZeppelin.pdf — matched: No reason recorded
- [8181] 1inch Aggregation Router V6_PeckShield.pdf — no match: Only one contract name (UnoswapRouter) found in findings. No explicit scope section listing contracts. Audit date from cover page.
- [8182] 1inch Aggregation Router V6_Pessimistic.pdf — matched: No reason recorded
- [8183] 1inch Limit Order Protocol v4.1_OpenZeppelin.pdf — no match: No reason recorded
- [8184] 1inch Limit Order Protocol v4_OpenZeppelin.pdf — no match: No reason recorded
- [8185] Certik - 1inch v2 Audit Report.pdf — no match: Scope table lists 5 contracts with file paths. Audit date from delivery date.
- [8186] Chainsulting - 1inch v2 Audit Report.pdf — no match: Scope explicitly lists OneInchExchange.sol, OneInchFlags.sol, helpers/RevertReasonParser.sol, helpers/UniERC20.sol, and indirect imports IOneInchCaller.sol, IERC20Permit.sol, IChi.sol. Audit date from cover page: 04.11.2020.
- [8187] Coinfabrik - 1inch v2 Audit Report.pdf — no match: Scope table lists 5 files with SHA256 hashes. Audit date is November 2020, approximated to last day of month.
- [8188] Hacken - 1inch v2 Audit Report.pdf — no match: All contracts listed in scope section of the audit report.
- [8189] Haechi - 1inch v2 Audit Report.pdf — no match: Scope section lists 5 contracts: OneInchExchange.sol, RevertReasonParser.sol, UniERC20.sol, GasDiscountCalculator.sol, OneInchFlags.sol. Audit date from cover page: 16th November 2020.
- [8190] MixBytes - 1inch v2 Audit Report.pdf — no match: Scope section lists 5 contracts with file paths and one address.
- [8191] Scott Bigelow - 1inch v2 Audit Report.pdf — no match: Scope explicitly lists OneInchExchange.sol, OneInchCaller.sol, OneInchFlags.sol. ChiSpender, BytesPatcher, and PatcherExtension are mentioned in findings as audited contracts. Audit date is clearly stated at the top.
- [8192] Slowmist - 1inch v2 Audit Report.pdf — no match: Audit report explicitly lists three contracts in scope: OneInchExchange, RevertReasonParser, and UniERC20. Audit date is Nov.12,2020.
- [8193] Certik - 1inch v3 Audit Report.pdf — no match: Scope table lists 5 contracts with file paths. Audit date from delivery date.
- [8194] Gulamov - 1inch v3 Audit Report.pdf — no match: Scope section explicitly lists five contracts: OneInchExchange.sol, OneInchUnoswap.sol, helpers/Permitable.sol, helpers/UniERC20.sol, helpers/RevertReasonParser.sol. Audit date is '26 Feb 2021' in the title.
- [8195] MixBytes - 1inch v3 Audit Report.pdf — no match: All contracts listed in FILES LISTING section are in scope.
- [8196] 1Inch Aggregation Router v4 Audit_MixBites.pdf — no match: All contracts listed in the FILES LISTING table are in scope. Audit date is October 01, 2021 from the title.
- [8197] 1inch Aggregation Router v4 Audit_ABDK.pdf — no match: Scope explicitly lists 7 Solidity files at commit 93868c. Date from cover page: 4th October 2021.
- [8198] 1inch Aggregation Router v4 Audit_Chainsulting.pdf — no match: Scope section lists 4 contracts in scope. Audit date from executive summary: final debriefs on September 23, 2021.
- [8199] 1inch Aggregation Router v4 Audit_Coinfabrik.pdf — no match: Audit report for 1inch Aggregation Router v4, dated September 2021. Contracts explicitly listed in scope section. Permitable is a helper contract mentioned in findings.
- [8200] 1inch Aggregation Router v4 Audit_Consensys.pdf — no match: Scope section explicitly lists files in scope. Audit date is end date of engagement period (September 13-24, 2021).
- [8201] 1inch Aggregation Router v4 Audit_Igor Gulamov.pdf — no match: Scope section lists four Solidity files; contract names extracted from filenames.
- [8202] 1inch Aggregation Router v4 Audit_Pessimistic.pdf — no match: Scope explicitly lists four files: AggregationRouterV4.sol, UnoswapV3Router.sol, ClipperRouter.sol, LimitOrderProtocolRFQ.sol. Date found in header and footer.
- [8203] 1inch-cross-chain-swap-v1-AstraSec.pdf — no match: No reason recorded
- [8204] 1inch-cross-chain-swap-v1-Consensys.pdf — no match: No reason recorded
- [8205] 1inch-cross-chain-swap-v1-Decurity.pdf — no match: No reason recorded
- [8206] 1inch-cross-chain-swap-v1-Igor Gulamov.pdf — no match: No reason recorded
- [8207] 1inch-cross-chain-swap-v1-Open Zeppelin.pdf — no match: No reason recorded
- [8208] 1inch-cross-chain-swap-v1-Pessimistic.pdf — no match: Only one contract name explicitly mentioned in the report. The scope says 'entire repository excluding mock contracts' but no other contract names are given.
- [8209] 1inch-cross-chain-v2-Astrasec.pdf — no match: Extracted contract names from vulnerability targets and compiler version table. No explicit scope section found, but contracts are clearly in scope.
- [8210] 1inch-cross-chain-v2-Consensys.pdf — no match: No reason recorded
- [8211] 1inch-cross-chain-v2-Decurity.pdf — no match: Audit scope includes the cross-chain-swap repository; contracts explicitly listed in findings table and sections.
- [8212] 1inch-cross-chain-v2-Igor Gulamov.pdf — no match: No reason recorded
- [8213] 1inch-cross-chain-v2-Open Zeppelin.pdf — no match: No reason recorded
- [8214] 1inch-cross-chain-v2-Pessimistic.pdf — no match: Scope stated 'everything' but only two contract names explicitly mentioned in findings. No file paths provided.
- [8215] 1inch Crosschain Fee v1.1_Certora.pdf — no match: Scope defined as contracts/* (excluding mocks). Three contracts identified from findings: BaseEscrowFactory, EscrowDst, EscrowSrc.
- [8216] 1inch Crosschain Fee v1.1_Decurity.pdf — no match: Audit scope includes contracts in the 1inch cross-chain-swap repository. Only two contracts are explicitly mentioned in findings: EscrowSrc and EscrowDst. No other contract names are provided in the scope section.
- [8217] 1inch Crosschain Fee v1.1_Hexens.pdf — no match: All contracts listed in the Scope section of the report. Audit date is the final report date (21 August 2025).
- [8218] 1inch Crosschain Fee v1.1_Open Zeppelin.pdf — no match: No reason recorded
- [8219] 1inch Crosschain Fee v1.1_Sherlock.pdf — no match: No reason recorded
- [8220] Fee flow v1-AstraSec.pdf — no match: Contracts explicitly listed in source code section of the audit report.
- [8221] Fee flow v1-Bailsec.pdf — no match: The report covers four contracts: AmountGetterBase, AmountGetterWithFee, FeeTaker, and SimpleSettlement. The audit date is inferred from 'April ‘2025' in the header, using the last day of the month.
- [8222] Fee flow v1-ChainLight.pdf — no match: Scope table lists four contracts with file paths. Audit date from revision history (May 14, 2025).
- [8223] Fee flow v1-Decurity.pdf — no match: Audit period from 8/4/2025 to 10/4/2025, so end date is 2025-04-10.
- [8224] Fee flow v1-Open Zepplin.pdf — no match: Scope section explicitly lists four contracts: SimpleSettlement.sol, AmountGetterBase.sol, AmountGetterWithFee.sol, FeeTaker.sol. Audit date is May 16, 2025 from the header.
- [8225] Fee flow v1-Sherlock.pdf — no match: Extracted 4 contracts from scope section. Audit date range April 14-17, 2025, used end date.
- [8226] 1inch FixedRateSwap_Ackee Blockchain.pdf — no match: No reason recorded
- [8227] 1inch FixedRateSwap_Chainsulting.pdf — no match: No reason recorded
- [8228] 1inch FixedRateSwap_CoinFabrik.pdf — no match: No reason recorded
- [8229] 1inch FixedRateSwap_MixedBytes.pdf — no match: Only one contract FixedFeeSwap.sol is in scope.
- [8230] 1inch FixedRateSwap_Pessimistic.pdf — no match: No reason recorded
- [8231] 1inch Settlement v2.1_AstraSec.pdf — no match: All contracts listed in the Source Code section (1.2) are in scope. The audit date is from the cover page.
- [8232] 1inch Settlement v2.1_Decurity.pdf — no match: Audit scope includes two repositories; contracts explicitly mentioned in findings: FeeTaker and ExtensionLib.
- [8233] 1inch Settlement v2.1_Hexens.pdf — no match: Only one contract (FeeTaker) is explicitly mentioned in the scope and findings. The scope references two GitHub repos but no specific contract files other than FeeTaker.sol.
- [8234] 1inch Settlement v2.1_Open Zepplin.pdf — no match: All contracts listed in the Scope section of the audit report.
- [8235] 1inch Settlement v2.1_Pashov.pdf — no match: Scope section lists FeeTaker, Settlement, SimpleSettlement, and extensions. Audit date is March 29th 2024 from executive summary.
- [8236] 1inch Settlement v2.1_Pessemistic.pdf — no match: Initial scope included SettlementExtension.sol, FeeBankCharger.sol, interfaces/IFeeBankCharger.sol. After codebase update, scope expanded to Settlement.sol, SimpleSettlement.sol, and five extension files.
- [8237] 1inch Settlement v2_Decurity.pdf — no match: Only one contract in scope: SettlementExtension.sol. Audit period start date 11/30/2023 used as audit date since end date not explicitly given.
- [8238] 1inch Settlement v2_Hexens.pdf — no match: Only SettlementExtension.sol is explicitly in scope; other contracts (OrderMixin, OrderLib) are referenced but not listed as audited targets.
- [8239] 1inch Settlement v2_Open Zeppelin.pdf — no match: Two contracts in scope: SettlementExtension and WhitelistRegistry. Audit date from cover page.
- [8240] 1inch Settlement v2_Peckshield.pdf — no match: Only one contract in scope: SettlementExtension.sol. Audit date from cover page and latest audit report date.
- [8241] 1inch Settlement v2_Pessimistic.pdf — no match: Scope explicitly listed three contracts: SettlementExtension.sol, FeeBankCharger.sol, interfaces/IFeeBankCharger.sol. Audit date from cover page.
- [8242] 1inch_FusionMode_ABDK.pdf — no match: No reason recorded
- [8243] 1inch_FusionMode_ChainSecurity1.pdf — no match: No reason recorded
- [8244] 1inch_FusionMode_ChainSecurity2.pdf — no match: Scope section explicitly lists 6 files from the contracts folder. Audit date is December 19, 2022 from the cover page.
- [8245] 1inch_FusionMode_ChainSecurity3.pdf — no match: Scope explicitly lists interfaces/IERC20Pods.sol, interfaces/IPod.sol, ERC20Pods.sol, Pod.sol, ReentrancyGuard.sol, and notes that AddressArray and AddressSet libraries are reviewed in context of their use in ERC20Pods.
- [8246] 1inch_FusionMode_Decurity.pdf — no match: No reason recorded
- [8247] 1inch_FusionMode_Hexens.1.pdf — no match: No reason recorded
- [8248] 1inch_FusionMode_Hexens.2.pdf — no match: No reason recorded
- [8249] 1inch_FusionMode_OpenZepplin.1.pdf — no match: No reason recorded
- [8250] 1inch_FusionMode_OpenZepplin.2.pdf — no match: All contracts listed in the Scope section of the audit report.
- [8251] 1inch_FusionMode_Oxorio.pdf — no match: No reason recorded
- [8252] 1inch_FusionMode_Peckshield.pdf — no match: No reason recorded
- [8253] 1inch_FusionMode_Pessimistic.pdf — no match: No reason recorded
- [8254] 1inch_FusionMode_iosiro.pdf — no match: No reason recorded
- [8255] 1inch_TokenPlugins-Pashov.pdf — no match: Scope section lists Plugin and ERC20Plugins contracts. Audit date from filename and header.
- [8257] 1Inch Limit Order Protocol_ABDK.pdf — no match: No reason recorded
- [8258] 1Inch Limit Order Protocol_Chainsulting.pdf — no match: No reason recorded
- [8259] 1Inch Limit Order Protocol_CoinFabrik.pdf — no match: No reason recorded
- [8260] 1Inch Limit Order Protocol_IgorGulamov.pdf — no match: Scope section mentions 'Smart contracts from 1inch/limit-order-protocol' and specific files are referenced in warnings.
- [8261] 1Inch Limit Order Protocol_MixBytes.pdf — no match: No reason recorded
- [8262] 1inch Limit Order Portocol_Certik.pdf — no match: No reason recorded
- [8263] ABDK - 1inch Limit Order Protocol audit.pdf — no match: No reason recorded
- [8264] Chainsulting - 1inch Limit Order Protocol audit.pdf — no match: No reason recorded
- [8265] Coinfabrik - 1inch Limit Order Protocol audit.pdf — no match: No reason recorded
- [8266] Coinspect - 1inch Limit Order Protocol audit.pdf — no match: No reason recorded
- [8267] LimitSwap audit.pdf — no match: Scope explicitly mentions 'Flatten version of LimitSwap.sol'. All contracts defined in the report are part of that file.
- [8268] Pessimistic - 1inch Limit Order Protocol audit.pdf — no match: No reason recorded
- [8269] Certik - 1inch Liquidity Protocol audit.pdf — no match: No reason recorded
- [8270] Chainsulting - 1inch Liquidity Protocol Audit.pdf — no match: No reason recorded
- [8271] Coinfabrik - 1inch Liquidity Protocol Audit.pdf — no match: No reason recorded
- [8272] Cure53 - 1inch Liquidity Protocol audit.pdf — no match: No reason recorded
- [8273] Gulamov - 1inch Farming audit.pdf — no match: No reason recorded
- [8274] Gulamov - 1inch Liquidity Protocol audit.pdf — no match: No reason recorded
- [8275] MixBytes - 1inch Liquidity Protocol Report.pdf — no match: No reason recorded
- [8276] 1inch Multi-Farming Contracts V3_Chainsafe.pdf — no match: Report states 6 contracts in scope but only FarmAccounting is explicitly named. Other contracts not identified.
- [8277] 1inch Multi-Farming Contracts V3_CoinFabrik.pdf — no match: Audit report for 1inch Farming project, scope includes 9 contracts/interfaces listed in the Scope section. Date inferred from 'December 2022' in title and changelog dates.
- [8278] 1inch Multi-Farming Contracts V3_Decurity.pdf — no match: Scope section lists contracts in the repository https://github.com/1inch/farming. The audit period is 11/22/2022 to 12/02/2022, and the report status date is Dec 2, 2022.
- [8279] 1inch Multi-Farming Contracts V3_Gulamov.pdf — no match: Only UserAccounting.sol is explicitly referenced in the findings; scope mentions 'Solidity contracts from 1inch/farming' but no other contract names are given.
- [8280] 1inch Multi-Farming Contracts V3_Peckshield.pdf — no match: No explicit scope section; contracts extracted from findings targets. Audit date from cover page and version history.
- [8281] 1inch Multi-Farming Contracts V3_Pessimistic.pdf — no match: Scope includes whole repository; contracts explicitly mentioned in audit process and findings.
- [8282] 1inch Multi-Farming Contracts V3_Smartstate.pdf — no match: Scope explicitly lists four contracts: FarmingLib.sol, FarmingPod.sol, FarmingPool.sol, MultiFarmingPod.sol. Audit date found in header: Dec 09 2022.
- [8284] Solana Fusion - Decurity v1.pdf — no match: Scope section mentions 'programs/**/*.*' and findings reference specific contracts: fusion-swap and whitelist.
- [8285] Solana Fusion - Hexens v1.pdf — no match: Extracted two programs: fusion-swap and whitelist from the scope section and findings.
- [8286] Solana Fusion - Open Zepplin v1.pdf — no match: Two Solana programs in scope: fusion_swap and whitelist, with their respective source files listed.
- [8287] Solana Fusion - Ottersec v1.pdf — no match: Only one program 'solana-fusion' is in scope. No individual contract names extracted from file paths; the program is a single Solana program.
- [8288] Solana Fusion - Quantstamp v1.pdf — no match: The scope includes the fusion-swap program from the 1inch/solana-fusion repository. No individual contract names are provided; the scope is the entire program directory.
- [8289] Solana Fusion - Zenith v1.01.pdf — no match: The scope section lists the repository and files (programs/*) but does not name individual contracts. The only contract referenced in findings is fusion-swap (from file paths).
- [8290] Solana Fusion v1_Kudelski.pdf — no match: Scope section lists two programs: fusion-swap and whitelist, each with lib.rs, error.rs, and auction.rs (fusion-swap only). Audit date is 22 May 2025 from cover page and document properties.
- [8291] Solana Fusion v1_OffsideLabs.pdf — no match: Audit scope includes programs/fusion-swap/src/*.rs and programs/whitelist/src/*.rs. Audit concluded on April 16, 2025.
- [8292] Solana cross-chain v1.0-Hexens.pdf — no match: Extracted contracts from scope and findings sections. Audit date from final report date (11 July 2025).
- [8293] Solana cross-chain v1.0-Zenith.pdf — no match: Scope table lists three targets: cross-chain-escrow-dst, cross-chain-escrow-src, and whitelist. Findings reference specific files within these targets. Audit end date is June 26, 2025.
- [8294] Solana cross-chain v1.0_Decurity.pdf — no match: Scope includes programs/**/src/*.rs and common/src/*.rs. Contracts identified from file paths and findings.
- [8295] Solana cross-chain v1.0_OffsideLabs.pdf — no match: Audit scope includes three programs: cross-chain-escrow-src, cross-chain-escrow-dst, and whitelist. Audit concluded on July 10, 2025.
- [8296] Solana cross-chain v1.0_Sherlock.pdf — no match: Extracted contract names from scope file paths. Audit date from 'Date Audited: June 16 - June 20, 2025'.
- [8297] Solana cross-chain v1.1_Decurity.pdf — no match: Audit scope includes contracts in repository solana-crosschain-protocol. Two main contract files identified: cross-chain-escrow-src/src/lib.rs and cross-chain-escrow-dst/src/lib.rs. Audit period: 2025-07-18 to 2025-07-24.
- [8298] Solana cross-chain v1.1_Hexens.pdf — no match: The audit report covers two Solana programs: cross-chain-escrow-dst and cross-chain-escrow-src. The final report date is August 5, 2025.
- [8299] Solana cross-chain v1.1_OffsideLabs.pdf — no match: Audit scope includes three Solana programs: cross-chain-escrow-src, cross-chain-escrow-dst, and whitelist. The audit date is the conclusion date (August 29, 2025).
- [8300] Solana cross-chain v1.1_Sherlock.pdf — no match: Extracted 3 programs from scope section. Audit date is July 21-24, 2025, using end date.
- [8301] Solana cross-chain v1.1_Zenith.pdf — no match: Scope section mentions repository and commit hash but no specific contract or file names. The audit appears to be for a Solana cross-chain protocol, but no Solidity or Rust contract names are listed.
- [8302] Chainsulting - 1inch Vesting Contract audit.pdf — no match: No reason recorded
- [8303] Coinfabrik - 1inch Vesting Contract audit.pdf — no match: No reason recorded
- [8304] Gulamov - 1inch Vesting Contract audit.pdf — no match: No reason recorded
- [8305] Pessimistic - 1inch Vesting Contract audit.pdf — no match: No reason recorded
- [8416] MixBytes.pdf — no match: All files listed in FILES LISTING section are in scope. Audit date is December 23, 2020.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| 1inch Aggregation Router V5_ABDK Consulting.pdf | AggregationRouterV5 | unmatched — not counted | — | listed in scope | no |
| 1inch Aggregation Router V5_ABDK Consulting.pdf | Errors | unmatched — not counted | — | listed in scope | no |
| 1inch Aggregation Router V5_ABDK Consulting.pdf | IAggregationExecutor | unmatched — not counted | — | listed in scope | no |
| 1inch Aggregation Router V5_ABDK Consulting.pdf | IClipperExchangeInterface | unmatched — not counted | — | listed in scope | no |
| 1inch Aggregation Router V5_ABDK Consulting.pdf | IUniswapV3Pool | unmatched — not counted | — | listed in scope | no |
| 1inch Aggregation Router V5_ABDK Consulting.pdf | IUniswapV3SwapCallback | unmatched — not counted | — | listed in scope | no |
| 1inch Aggregation Router V5_ABDK Consulting.pdf | ClipperRouter | unmatched — not counted | — | listed in scope | no |
| 1inch Aggregation Router V5_ABDK Consulting.pdf | GenericRouter | unmatched — not counted | — | listed in scope | no |
| 1inch Aggregation Router V5_ABDK Consulting.pdf | UnoswapRouter | unmatched — not counted | — | listed in scope | no |
| 1inch Aggregation Router V5_ABDK Consulting.pdf | UnoswapV3Router | unmatched — not counted | — | listed in scope | no |
| 1inch Aggregation Router V5_ABDK Consulting.pdf | AmountCalculator | unmatched — not counted | — | listed in scope | no |
| 1inch Aggregation Router V5_ABDK Consulting.pdf | NonceManager | unmatched — not counted | — | listed in scope | no |
| 1inch Aggregation Router V5_ABDK Consulting.pdf | PredicateHelper | unmatched — not counted | — | listed in scope | no |
| 1inch Aggregation Router V5_ABDK Consulting.pdf | IOrderMixin | unmatched — not counted | — | listed in scope | no |
| 1inch Aggregation Router V5_ABDK Consulting.pdf | NotificationReceiver | unmatched — not counted | — | listed in scope | no |
| 1inch Aggregation Router V5_ABDK Consulting.pdf | ArgumentsDecoder | unmatched — not counted | — | listed in scope | no |
| 1inch Aggregation Router V5_ABDK Consulting.pdf | Callib | unmatched — not counted | — | listed in scope | no |
| 1inch Aggregation Router V5_ABDK Consulting.pdf | OrderLib | unmatched — not counted | — | listed in scope | no |
| 1inch Aggregation Router V5_ABDK Consulting.pdf | OrderMixin | unmatched — not counted | — | listed in scope | no |
| 1inch Aggregation Router V5_ABDK Consulting.pdf | OrderRFQLib | unmatched — not counted | — | listed in scope | no |
| 1inch Aggregation Router V5_ABDK Consulting.pdf | OrderRFQMixin | unmatched — not counted | — | listed in scope | no |
| 1inch Aggregation Router V5_ABDK Consulting.pdf | EthReceiver | unmatched — not counted | — | listed in scope | no |
| 1inch Aggregation Router V5_ABDK Consulting.pdf | IDaiLikePermit | unmatched — not counted | — | listed in scope | no |
| 1inch Aggregation Router V5_ABDK Consulting.pdf | IWETH | unmatched — not counted | — | listed in scope | no |
| 1inch Aggregation Router V5_ABDK Consulting.pdf | ECDSA | unmatched — not counted | — | listed in scope | no |
| 1inch Aggregation Router V5_ABDK Consulting.pdf | RevertReasonForwarder | unmatched — not counted | — | listed in scope | no |
| 1inch Aggregation Router V5_ABDK Consulting.pdf | SafeERC20 | unmatched — not counted | — | listed in scope | no |
| 1inch Aggregation Router V5_ABDK Consulting.pdf | StringUtil | unmatched — not counted | — | listed in scope | no |
| 1inch Aggregation Router V5_ABDK Consulting.pdf | UniERC20 | unmatched — not counted | — | listed in scope | no |
| 1inch Aggregation Router V5_CoinFabrik.pdf | AmountCalculator | unmatched — not counted | — | — | no |
| 1inch Aggregation Router V5_CoinFabrik.pdf | ArgumentsDecoder | unmatched — not counted | — | — | no |
| 1inch Aggregation Router V5_CoinFabrik.pdf | Callib | unmatched — not counted | — | — | no |
| 1inch Aggregation Router V5_CoinFabrik.pdf | Errors | unmatched — not counted | — | — | no |
| 1inch Aggregation Router V5_CoinFabrik.pdf | LimitOrderProtocol | unmatched — not counted | — | — | no |
| 1inch Aggregation Router V5_CoinFabrik.pdf | NonceManager | unmatched — not counted | — | — | no |
| 1inch Aggregation Router V5_CoinFabrik.pdf | OrderLib | unmatched — not counted | — | — | no |
| 1inch Aggregation Router V5_CoinFabrik.pdf | OrderMixin | unmatched — not counted | — | — | no |
| 1inch Aggregation Router V5_CoinFabrik.pdf | OrderRFQLib | unmatched — not counted | — | — | no |
| 1inch Aggregation Router V5_CoinFabrik.pdf | OrderRFQMixin | unmatched — not counted | — | — | no |
| 1inch Aggregation Router V5_CoinFabrik.pdf | PredicateHelper | unmatched — not counted | — | — | no |
| 1inch Aggregation Router V5_Consensys.pdf | AggregationRouterV5 | unmatched — not counted | — | listed in scope table | no |
| 1inch Aggregation Router V5_Consensys.pdf | ClipperRouter | unmatched — not counted | — | listed in scope table | no |
| 1inch Aggregation Router V5_Consensys.pdf | GenericRouter | unmatched — not counted | — | listed in scope table | no |
| 1inch Aggregation Router V5_Consensys.pdf | UnoswapRouter | unmatched — not counted | — | listed in scope table | no |
| 1inch Aggregation Router V5_Consensys.pdf | UnoswapV3Router | unmatched — not counted | — | listed in scope table | no |
| 1inch Aggregation Router V5_Consensys.pdf | IAggregationExecutor | unmatched — not counted | — | listed in scope table | no |
| 1inch Aggregation Router V5_Consensys.pdf | IClipperExchangeInterface | unmatched — not counted | — | listed in scope table | no |
| 1inch Aggregation Router V5_Consensys.pdf | IUniswapV3Pool | unmatched — not counted | — | listed in scope table | no |
| 1inch Aggregation Router V5_Consensys.pdf | IUniswapV3SwapCallback | unmatched — not counted | — | listed in scope table | no |
| 1inch Aggregation Router V5_Consensys.pdf | Errors | unmatched — not counted | — | listed in scope table | no |
| 1inch Aggregation Router V5_Consensys.pdf | OrderLib | unmatched — not counted | — | listed in scope table | no |
| 1inch Aggregation Router V5_Consensys.pdf | OrderMixin | unmatched — not counted | — | listed in scope table | no |
| 1inch Aggregation Router V5_Consensys.pdf | OrderRFQLib | unmatched — not counted | — | listed in scope table | no |
| 1inch Aggregation Router V5_Consensys.pdf | OrderRFQMixin | unmatched — not counted | — | listed in scope table | no |
| 1inch Aggregation Router V5_Consensys.pdf | AmountCalculator | unmatched — not counted | — | listed in scope table | no |
| 1inch Aggregation Router V5_Consensys.pdf | NonceManager | unmatched — not counted | — | listed in scope table | no |
| 1inch Aggregation Router V5_Consensys.pdf | PredicateHelper | unmatched — not counted | — | listed in scope table | no |
| 1inch Aggregation Router V5_Consensys.pdf | IOrderMixin | unmatched — not counted | — | listed in scope table | no |
| 1inch Aggregation Router V5_Consensys.pdf | NotificationReceiver | unmatched — not counted | — | listed in scope table | no |
| 1inch Aggregation Router V5_Consensys.pdf | ArgumentsDecoder | unmatched — not counted | — | listed in scope table | no |
| 1inch Aggregation Router V5_Consensys.pdf | EthReceiver | unmatched — not counted | — | listed in scope table | no |
| 1inch Aggregation Router V5_Consensys.pdf | OnlyWethReceiver | unmatched — not counted | — | listed in scope table | no |
| 1inch Aggregation Router V5_Consensys.pdf | StringUtil | unmatched — not counted | — | listed in scope table | no |
| 1inch Aggregation Router V5_Consensys.pdf | SafeERC20 | unmatched — not counted | — | listed in scope table | no |
| 1inch Aggregation Router V5_Consensys.pdf | UniERC20 | unmatched — not counted | — | listed in scope table | no |
| 1inch Aggregation Router V5_Consensys.pdf | RevertReasonForwarder | unmatched — not counted | — | listed in scope table | no |
| 1inch Aggregation Router V5_Consensys.pdf | ECDSA | unmatched — not counted | — | listed in scope table | no |
| 1inch Aggregation Router V5_Consensys.pdf | IDaiLikePermit | unmatched — not counted | — | listed in scope table | no |
| 1inch Aggregation Router V5_Consensys.pdf | IWETH | unmatched — not counted | — | listed in scope table | no |
| 1inch Aggregation Router V5_IgorGulamov.pdf | AggregationRouterV5 | unmatched — not counted | — | listed in scope | no |
| 1inch Aggregation Router V5_IgorGulamov.pdf | ClipperRouter | unmatched — not counted | — | listed in scope | no |
| 1inch Aggregation Router V5_IgorGulamov.pdf | GenericRouter | unmatched — not counted | — | listed in scope | no |
| 1inch Aggregation Router V5_IgorGulamov.pdf | UnoswapRouter | unmatched — not counted | — | listed in scope | no |
| 1inch Aggregation Router V5_IgorGulamov.pdf | UnoswapV3Router | unmatched — not counted | — | listed in scope | no |
| 1inch Aggregation Router V5_IgorGulamov.pdf | IClipperExchangeInterface | unmatched — not counted | — | listed in scope | no |
| 1inch Aggregation Router V5_IgorGulamov.pdf | IAggregationExecutor | unmatched — not counted | — | listed in scope | no |
| 1inch Aggregation Router V5_IgorGulamov.pdf | IUniswapV3Pool | unmatched — not counted | — | listed in scope | no |
| 1inch Aggregation Router V5_IgorGulamov.pdf | IUniswapV3SwapCallback | unmatched — not counted | — | listed in scope | no |
| 1inch Aggregation Router V5_IgorGulamov.pdf | Errors | unmatched — not counted | — | listed in scope | no |
| 1inch Aggregation Router V5_IgorGulamov.pdf | OrderMixin | unmatched — not counted | — | listed in scope | no |
| 1inch Aggregation Router V5_IgorGulamov.pdf | OrderRFQMixin | unmatched — not counted | — | listed in scope | no |
| 1inch Aggregation Router V5_IgorGulamov.pdf | OrderLib | unmatched — not counted | — | listed in scope | no |
| 1inch Aggregation Router V5_IgorGulamov.pdf | OrderRFQLib | unmatched — not counted | — | listed in scope | no |
| 1inch Aggregation Router V5_IgorGulamov.pdf | AmountCalculator | unmatched — not counted | — | listed in scope | no |
| 1inch Aggregation Router V5_IgorGulamov.pdf | NonceManager | unmatched — not counted | — | listed in scope | no |
| 1inch Aggregation Router V5_IgorGulamov.pdf | PredicateHelper | unmatched — not counted | — | listed in scope | no |
| 1inch Aggregation Router V5_IgorGulamov.pdf | IOrderMixin | unmatched — not counted | — | listed in scope | no |
| 1inch Aggregation Router V5_IgorGulamov.pdf | NotificationReceiver | unmatched — not counted | — | listed in scope | no |
| 1inch Aggregation Router V5_IgorGulamov.pdf | ArgumentsDecoder | unmatched — not counted | — | listed in scope | no |
| 1inch Aggregation Router V5_IgorGulamov.pdf | Callib | unmatched — not counted | — | listed in scope | no |
| 1inch Aggregation Router V5_IgorGulamov.pdf | EthReceiver | unmatched — not counted | — | listed in scope | no |
| 1inch Aggregation Router V5_IgorGulamov.pdf | StringUtil | unmatched — not counted | — | listed in scope | no |
| 1inch Aggregation Router V5_IgorGulamov.pdf | UniERC20 | unmatched — not counted | — | listed in scope | no |
| 1inch Aggregation Router V5_IgorGulamov.pdf | SafeERC20 | unmatched — not counted | — | listed in scope | no |
| 1inch Aggregation Router V5_IgorGulamov.pdf | ECDSA | unmatched — not counted | — | listed in scope | no |
| 1inch Aggregation Router V5_IgorGulamov.pdf | RevertReasonForwarder | unmatched — not counted | — | listed in scope | no |
| 1inch Aggregation Router V5_IgorGulamov.pdf | IWETH | unmatched — not counted | — | listed in scope | no |
| 1inch Aggregation Router V5_IgorGulamov.pdf | IDaiLikePermit | unmatched — not counted | — | listed in scope | no |
| 1inch Aggregation Router V5_MixBytes.pdf | AggregationRouterV5 | unmatched — not counted | — | listed in scope table | no |
| 1inch Aggregation Router V5_MixBytes.pdf | ClipperRouter | unmatched — not counted | — | listed in scope table | no |
| 1inch Aggregation Router V5_MixBytes.pdf | GenericRouter | unmatched — not counted | — | listed in scope table | no |
| 1inch Aggregation Router V5_MixBytes.pdf | UnoswapRouter | unmatched — not counted | — | listed in scope table | no |
| 1inch Aggregation Router V5_MixBytes.pdf | UnoswapV3Router | unmatched — not counted | — | listed in scope table | no |
| 1inch Aggregation Router V5_MixBytes.pdf | IClipperExchangeInterface | unmatched — not counted | — | listed in scope table | no |
| 1inch Aggregation Router V5_MixBytes.pdf | IAggregationExecutor | unmatched — not counted | — | listed in scope table | no |
| 1inch Aggregation Router V5_MixBytes.pdf | IUniswapV3Pool | unmatched — not counted | — | listed in scope table | no |
| 1inch Aggregation Router V5_MixBytes.pdf | IUniswapV3SwapCallback | unmatched — not counted | — | listed in scope table | no |
| 1inch Aggregation Router V5_MixBytes.pdf | Errors | unmatched — not counted | — | listed in scope table | no |
| 1inch Aggregation Router V5_MixBytes.pdf | OrderMixin | unmatched — not counted | — | listed in scope table | no |
| 1inch Aggregation Router V5_MixBytes.pdf | OrderRFQMixin | unmatched — not counted | — | listed in scope table | no |
| 1inch Aggregation Router V5_MixBytes.pdf | OrderLib | unmatched — not counted | — | listed in scope table | no |
| 1inch Aggregation Router V5_MixBytes.pdf | OrderRFQLib | unmatched — not counted | — | listed in scope table | no |
| 1inch Aggregation Router V5_MixBytes.pdf | AmountCalculator | unmatched — not counted | — | listed in scope table | no |
| 1inch Aggregation Router V5_MixBytes.pdf | NonceManager | unmatched — not counted | — | listed in scope table | no |
| 1inch Aggregation Router V5_MixBytes.pdf | PredicateHelper | unmatched — not counted | — | listed in scope table | no |
| 1inch Aggregation Router V5_MixBytes.pdf | IOrderMixin | unmatched — not counted | — | listed in scope table | no |
| 1inch Aggregation Router V5_MixBytes.pdf | NotificationReceiver | unmatched — not counted | — | listed in scope table | no |
| 1inch Aggregation Router V5_MixBytes.pdf | ArgumentsDecoder | unmatched — not counted | — | listed in scope table | no |
| 1inch Aggregation Router V5_MixBytes.pdf | Callib | unmatched — not counted | — | listed in scope table | no |
| 1inch Aggregation Router V5_MixBytes.pdf | EthReceiver | unmatched — not counted | — | listed in scope table | no |
| 1inch Aggregation Router V5_MixBytes.pdf | StringUtil | unmatched — not counted | — | listed in scope table | no |
| 1inch Aggregation Router V5_MixBytes.pdf | UniERC20 | unmatched — not counted | — | listed in scope table | no |
| 1inch Aggregation Router V5_MixBytes.pdf | SafeERC20 | unmatched — not counted | — | listed in scope table | no |
| 1inch Aggregation Router V5_MixBytes.pdf | ECDSA | unmatched — not counted | — | listed in scope table | no |
| 1inch Aggregation Router V5_MixBytes.pdf | RevertReasonForwarder | unmatched — not counted | — | listed in scope table | no |
| 1inch Aggregation Router V5_MixBytes.pdf | IWETH | unmatched — not counted | — | listed in scope table | no |
| 1inch Aggregation Router V5_MixBytes.pdf | IDaiLikePermit | unmatched — not counted | — | listed in scope table | no |
| 1inch Aggregation Router V5_OpenZepplin.pdf | Errors | unmatched — not counted | — | listed in scope | no |
| 1inch Aggregation Router V5_OpenZepplin.pdf | IAggregationExecutor | unmatched — not counted | — | listed in scope | no |
| 1inch Aggregation Router V5_OpenZepplin.pdf | IClipperExchangeInterface | unmatched — not counted | — | listed in scope | no |
| 1inch Aggregation Router V5_OpenZepplin.pdf | IUniswapV3Pool | unmatched — not counted | — | listed in scope | no |
| 1inch Aggregation Router V5_OpenZepplin.pdf | IUniswapV3SwapCallback | unmatched — not counted | — | listed in scope | no |
| 1inch Aggregation Router V5_OpenZepplin.pdf | ClipperRouter | unmatched — not counted | — | listed in scope | no |
| 1inch Aggregation Router V5_OpenZepplin.pdf | GenericRouter | unmatched — not counted | — | listed in scope | no |
| 1inch Aggregation Router V5_OpenZepplin.pdf | UnoswapRouter | unmatched — not counted | — | listed in scope | no |
| 1inch Aggregation Router V5_OpenZepplin.pdf | UnoswapV3Router | unmatched — not counted | — | listed in scope | no |
| 1inch Aggregation Router V5_OpenZepplin.pdf | AggregationRouterV5 | unmatched — not counted | — | listed in scope | no |
| 1inch Aggregation Router V5_OpenZepplin.pdf | AmountCalculator | unmatched — not counted | — | listed in scope | no |
| 1inch Aggregation Router V5_OpenZepplin.pdf | NonceManager | unmatched — not counted | — | listed in scope | no |
| 1inch Aggregation Router V5_OpenZepplin.pdf | PredicateHelper | unmatched — not counted | — | listed in scope | no |
| 1inch Aggregation Router V5_OpenZepplin.pdf | IOrderMixin | unmatched — not counted | — | listed in scope | no |
| 1inch Aggregation Router V5_OpenZepplin.pdf | NotificationReceiver | unmatched — not counted | — | listed in scope | no |
| 1inch Aggregation Router V5_OpenZepplin.pdf | ArgumentsDecoder | unmatched — not counted | — | listed in scope | no |
| 1inch Aggregation Router V5_OpenZepplin.pdf | OrderLib | unmatched — not counted | — | listed in scope | no |
| 1inch Aggregation Router V5_OpenZepplin.pdf | OrderMixin | unmatched — not counted | — | listed in scope | no |
| 1inch Aggregation Router V5_OpenZepplin.pdf | OrderRFQLib | unmatched — not counted | — | listed in scope | no |
| 1inch Aggregation Router V5_OpenZepplin.pdf | OrderRFQMixin | unmatched — not counted | — | listed in scope | no |
| 1inch Aggregation Router V5_PeckShield.pdf | LimitedAmountExtension | unmatched — not counted | — | Target in finding PVE-001 | no |
| 1inch Aggregation Router V5_PeckShield.pdf | LeftoversExtension | unmatched — not counted | — | Target in finding PVE-002 | no |
| 1inch Aggregation Router V5_PeckShield.pdf | UniswapV2Extension | unmatched — not counted | — | Target in finding PVE-003 | no |
| 1inch Aggregation Router V5_PeckShield.pdf | AggregationRouterV5 | unmatched — not counted | — | Target in finding PVE-004 and mentioned as main contract | no |
| 1inch Aggregation Router V5_Pessimistic.pdf | AggregationRouterV5 | unmatched — not counted | — | — | no |
| 1inch Aggregation Router V5_Pessimistic.pdf | ClipperRouter | unmatched — not counted | — | — | no |
| 1inch Aggregation Router V5_Pessimistic.pdf | ECDSA | unmatched — not counted | — | — | no |
| 1inch Aggregation Router V5_Pessimistic.pdf | GenericRouter | unmatched — not counted | — | — | no |
| 1inch Aggregation Router V5_Pessimistic.pdf | LimitOrderProtocol | unmatched — not counted | — | — | no |
| 1inch Aggregation Router V5_Pessimistic.pdf | NonceManager | unmatched — not counted | — | — | no |
| 1inch Aggregation Router V5_Pessimistic.pdf | OrderLib | unmatched — not counted | — | — | no |
| 1inch Aggregation Router V5_Pessimistic.pdf | OrderMixin | unmatched — not counted | — | — | no |
| 1inch Aggregation Router V5_Pessimistic.pdf | OrderRFQLib | unmatched — not counted | — | — | no |
| 1inch Aggregation Router V5_Pessimistic.pdf | OrderRFQMixin | unmatched — not counted | — | — | no |
| 1inch Aggregation Router V5_Pessimistic.pdf | RevertReasonForwarder | unmatched — not counted | — | — | no |
| 1inch Aggregation Router V5_Pessimistic.pdf | SafeERC20 | unmatched — not counted | — | — | no |
| 1inch Aggregation Router V5_Pessimistic.pdf | UniERC20 | unmatched — not counted | — | — | no |
| 1inch Aggregation Router V5_Pessimistic.pdf | UnoswapRouter | unmatched — not counted | — | — | no |
| 1inch Aggregation Router V5_Pessimistic.pdf | UnoswapV3Router | unmatched — not counted | — | — | no |
| 1inch Aggregation Router V5_Statemind.pdf | AggregationRouterV5 | unmatched — not counted | — | listed in scope | no |
| 1inch Aggregation Router V5_Statemind.pdf | ClipperRouter | unmatched — not counted | — | listed in scope | no |
| 1inch Aggregation Router V5_Statemind.pdf | GenericRouter | unmatched — not counted | — | listed in scope | no |
| 1inch Aggregation Router V5_Statemind.pdf | UnoswapRouter | unmatched — not counted | — | listed in scope | no |
| 1inch Aggregation Router V5_Statemind.pdf | UnoswapV3Router | unmatched — not counted | — | listed in scope | no |
| 1inch Aggregation Router V5_Statemind.pdf | Errors | unmatched — not counted | — | listed in scope | no |
| 1inch Aggregation Router V5_Statemind.pdf | OrderMixin | unmatched — not counted | — | listed in scope | no |
| 1inch Aggregation Router V5_Statemind.pdf | OrderRFQMixin | unmatched — not counted | — | listed in scope | no |
| 1inch Aggregation Router V5_Statemind.pdf | OrderLib | unmatched — not counted | — | listed in scope | no |
| 1inch Aggregation Router V5_Statemind.pdf | OrderRFQLib | unmatched — not counted | — | listed in scope | no |
| 1inch Aggregation Router V5_Statemind.pdf | AmountCalculator | unmatched — not counted | — | listed in scope | no |
| 1inch Aggregation Router V5_Statemind.pdf | NonceManager | unmatched — not counted | — | listed in scope | no |
| 1inch Aggregation Router V5_Statemind.pdf | PredicateHelper | unmatched — not counted | — | listed in scope | no |
| 1inch Aggregation Router V5_Statemind.pdf | ArgumentsDecoder | unmatched — not counted | — | listed in scope | no |
| 1inch Aggregation Router V5_Statemind.pdf | Callib | unmatched — not counted | — | listed in scope | no |
| 1inch Aggregation Router V5_Statemind.pdf | EthReceiver | unmatched — not counted | — | listed in scope | no |
| 1inch Aggregation Router V5_Statemind.pdf | StringUtil | unmatched — not counted | — | listed in scope | no |
| 1inch Aggregation Router V5_Statemind.pdf | UniERC20 | unmatched — not counted | — | listed in scope | no |
| 1inch Aggregation Router V5_Statemind.pdf | SafeERC20 | unmatched — not counted | — | listed in scope | no |
| 1inch Aggregation Router V5_Statemind.pdf | ECDSA | unmatched — not counted | — | listed in scope | no |
| 1inch Aggregation Router V5_Statemind.pdf | RevertReasonForwarder | unmatched — not counted | — | listed in scope | no |
| 1inch Aggregation Router V5_Zokyo.pdf | AggregationRouterV5 | unmatched — not counted | — | — | no |
| 1inch Aggregation Router V5_Zokyo.pdf | AmountCalculator | unmatched — not counted | — | — | no |
| 1inch Aggregation Router V5_Zokyo.pdf | ArgumentsDecoder | unmatched — not counted | — | — | no |
| 1inch Aggregation Router V5_Zokyo.pdf | Callib | unmatched — not counted | — | — | no |
| 1inch Aggregation Router V5_Zokyo.pdf | ClipperRouter | unmatched — not counted | — | — | no |
| 1inch Aggregation Router V5_Zokyo.pdf | ECDSA | unmatched — not counted | — | — | no |
| 1inch Aggregation Router V5_Zokyo.pdf | Errors | unmatched — not counted | — | — | no |
| 1inch Aggregation Router V5_Zokyo.pdf | EthReceiver | unmatched — not counted | — | — | no |
| 1inch Aggregation Router V5_Zokyo.pdf | GenericRouter | unmatched — not counted | — | — | no |
| 1inch Aggregation Router V5_Zokyo.pdf | LimitOrderProtocol | unmatched — not counted | — | — | no |
| 1inch Aggregation Router V5_Zokyo.pdf | NonceManager | unmatched — not counted | — | — | no |
| 1inch Aggregation Router V5_Zokyo.pdf | OrderLib | unmatched — not counted | — | — | no |
| 1inch Aggregation Router V5_Zokyo.pdf | OrderMixin | unmatched — not counted | — | — | no |
| 1inch Aggregation Router V5_Zokyo.pdf | OrderRFQLib | unmatched — not counted | — | — | no |
| 1inch Aggregation Router V5_Zokyo.pdf | OrderRFQMixin | unmatched — not counted | — | — | no |
| 1inch Aggregation Router V5_Zokyo.pdf | PredicateHelper | unmatched — not counted | — | — | no |
| 1inch Aggregation Router V5_Zokyo.pdf | RevertReasonForwarder | unmatched — not counted | — | — | no |
| 1inch Aggregation Router V5_Zokyo.pdf | SafeERC20 | unmatched — not counted | — | — | no |
| 1inch Aggregation Router V5_Zokyo.pdf | StringUtil | unmatched — not counted | — | — | no |
| 1inch Aggregation Router V5_Zokyo.pdf | UniERC20 | unmatched — not counted | — | — | no |
| 1inch Aggregation Router V5_Zokyo.pdf | UnoswapRouter | unmatched — not counted | — | — | no |
| 1inch Aggregation Router V5_Zokyo.pdf | UnoswapV3Router | unmatched — not counted | — | — | no |
| 1inch Aggregation Router V6.1_Decurity.pdf | OrderLib | unmatched — not counted | — | listed in findings table | no |
| 1inch Aggregation Router V6.1_Decurity.pdf | UnoswapRouter | unmatched — not counted | — | listed in findings table | no |
| 1inch Aggregation Router V6.1_Decurity.pdf | ChainlinkCalculator | unmatched — not counted | — | listed in findings table | no |
| 1inch Aggregation Router V6.1_Decurity.pdf | OrderMixin | unmatched — not counted | — | listed in findings table | no |
| 1inch Aggregation Router V6.1_Decurity.pdf | ETHOrders | unmatched — not counted | — | listed in findings table | no |
| 1inch Aggregation Router V6.1_Hexens.pdf | AggregationRouterV6 | own contract | AggregationRouterV6 (selected) `0x111111...842a65` — deployed 2024-02-12 18:44:35+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 1inch Aggregation Router V6.1_Hexens.pdf | ClipperRouter | unmatched — not counted | — | — | no |
| 1inch Aggregation Router V6.1_Hexens.pdf | GenericRouter | unmatched — not counted | — | — | no |
| 1inch Aggregation Router V6.1_Hexens.pdf | OrderMixin | unmatched — not counted | — | — | no |
| 1inch Aggregation Router V6.1_Hexens.pdf | TakerTraitsLib | unmatched — not counted | — | — | no |
| 1inch Aggregation Router V6.1_Hexens.pdf | UnoswapRouter | unmatched — not counted | — | — | no |
| 1inch Aggregation Router V6.1_OpenZeppelin.pdf | AggregationRouterV6 | own contract | AggregationRouterV6 (selected) `0x111111...842a65` — deployed 2024-02-12 18:44:35+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 1inch Aggregation Router V6.1_OpenZeppelin.pdf | ClipperRouter | unmatched — not counted | — | — | no |
| 1inch Aggregation Router V6.1_OpenZeppelin.pdf | GenericRouter | unmatched — not counted | — | — | no |
| 1inch Aggregation Router V6.1_OpenZeppelin.pdf | UnoswapRouter | unmatched — not counted | — | — | no |
| 1inch Aggregation Router V6.1_PeckShield.pdf | UnoswapRouter | unmatched — not counted | — | Target in findings PVE-001 and PVE-002 | no |
| 1inch Aggregation Router V6.1_PeckShield.pdf | OrderMixin | unmatched — not counted | — | Target in finding PVE-003 | no |
| 1inch Aggregation Router V6.2_Decurity.pdf | AggregationExecutorBase | unmatched — not counted | — | mentioned in findings section as the contract containing the SELFDESTRUCT issue | no |
| 1inch Aggregation Router V6.2_Pessimistic.pdf | AggregationRouterV6 | own contract | AggregationRouterV6 (selected) `0x111111...842a65` — deployed 2024-02-12 18:44:35+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 1inch Aggregation Router V6.2_Pessimistic.pdf | AmountCalculator | unmatched — not counted | — | — | no |
| 1inch Aggregation Router V6.2_Pessimistic.pdf | BitInvalidatorLib | unmatched — not counted | — | — | no |
| 1inch Aggregation Router V6.2_Pessimistic.pdf | ClipperRouter | unmatched — not counted | — | — | no |
| 1inch Aggregation Router V6.2_Pessimistic.pdf | ConstraintsLib | unmatched — not counted | — | — | no |
| 1inch Aggregation Router V6.2_Pessimistic.pdf | Errors | unmatched — not counted | — | — | no |
| 1inch Aggregation Router V6.2_Pessimistic.pdf | ExtensionLib | unmatched — not counted | — | — | no |
| 1inch Aggregation Router V6.2_Pessimistic.pdf | GenericRouter | unmatched — not counted | — | — | no |
| 1inch Aggregation Router V6.2_Pessimistic.pdf | LimitsLib | unmatched — not counted | — | — | no |
| 1inch Aggregation Router V6.2_Pessimistic.pdf | OffsetsLib | unmatched — not counted | — | — | no |
| 1inch Aggregation Router V6.2_Pessimistic.pdf | OrderLib | unmatched — not counted | — | — | no |
| 1inch Aggregation Router V6.2_Pessimistic.pdf | OrderMixin | unmatched — not counted | — | — | no |
| 1inch Aggregation Router V6.2_Pessimistic.pdf | PredicateHelper | unmatched — not counted | — | — | no |
| 1inch Aggregation Router V6.2_Pessimistic.pdf | ProtocolLib | unmatched — not counted | — | — | no |
| 1inch Aggregation Router V6.2_Pessimistic.pdf | RemainingInvalidatorLib | unmatched — not counted | — | — | no |
| 1inch Aggregation Router V6.2_Pessimistic.pdf | RouterErrors | unmatched — not counted | — | — | no |
| 1inch Aggregation Router V6.2_Pessimistic.pdf | SafeERC20 | unmatched — not counted | — | — | no |
| 1inch Aggregation Router V6.2_Pessimistic.pdf | SeriesEpochManager | unmatched — not counted | — | — | no |
| 1inch Aggregation Router V6.2_Pessimistic.pdf | UnoswapRouter | unmatched — not counted | — | — | no |
| 1inch Aggregation Router V6_Consensys.pdf | AggregationRouterV6 | own contract | AggregationRouterV6 (selected) `0x111111...842a65` — deployed 2024-02-12 18:44:35+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 1inch Aggregation Router V6_Consensys.pdf | AmountCalculator | unmatched — not counted | — | — | no |
| 1inch Aggregation Router V6_Consensys.pdf | BitInvalidatorLib | unmatched — not counted | — | — | no |
| 1inch Aggregation Router V6_Consensys.pdf | ClipperRouter | unmatched — not counted | — | — | no |
| 1inch Aggregation Router V6_Consensys.pdf | Errors | unmatched — not counted | — | — | no |
| 1inch Aggregation Router V6_Consensys.pdf | ExtensionLib | unmatched — not counted | — | — | no |
| 1inch Aggregation Router V6_Consensys.pdf | GenericRouter | unmatched — not counted | — | — | no |
| 1inch Aggregation Router V6_Consensys.pdf | LimitOrderProtocol | unmatched — not counted | — | — | no |
| 1inch Aggregation Router V6_Consensys.pdf | MakerTraitsLib | unmatched — not counted | — | — | no |
| 1inch Aggregation Router V6_Consensys.pdf | OffsetsLib | unmatched — not counted | — | — | no |
| 1inch Aggregation Router V6_Consensys.pdf | OrderLib | unmatched — not counted | — | — | no |
| 1inch Aggregation Router V6_Consensys.pdf | OrderMixin | unmatched — not counted | — | — | no |
| 1inch Aggregation Router V6_Consensys.pdf | PredicateHelper | unmatched — not counted | — | — | no |
| 1inch Aggregation Router V6_Consensys.pdf | ProtocolLib | unmatched — not counted | — | — | no |
| 1inch Aggregation Router V6_Consensys.pdf | RemainingInvalidatorLib | unmatched — not counted | — | — | no |
| 1inch Aggregation Router V6_Consensys.pdf | RouterErrors | unmatched — not counted | — | — | no |
| 1inch Aggregation Router V6_Consensys.pdf | SafeERC20 | unmatched — not counted | — | — | no |
| 1inch Aggregation Router V6_Consensys.pdf | SeriesEpochManager | unmatched — not counted | — | — | no |
| 1inch Aggregation Router V6_Consensys.pdf | TakerTraitsLib | unmatched — not counted | — | — | no |
| 1inch Aggregation Router V6_Consensys.pdf | UnoswapRouter | unmatched — not counted | — | — | no |
| 1inch Aggregation Router V6_Decurity.pdf | AggregationRouterV6 | own contract | AggregationRouterV6 (selected) `0x111111...842a65` — deployed 2024-02-12 18:44:35+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 1inch Aggregation Router V6_Decurity.pdf | AmountCalculator | unmatched — not counted | — | — | no |
| 1inch Aggregation Router V6_Decurity.pdf | BitInvalidatorLib | unmatched — not counted | — | — | no |
| 1inch Aggregation Router V6_Decurity.pdf | ClipperRouter | unmatched — not counted | — | — | no |
| 1inch Aggregation Router V6_Decurity.pdf | ConstraintsLib | unmatched — not counted | — | — | no |
| 1inch Aggregation Router V6_Decurity.pdf | Errors | unmatched — not counted | — | — | no |
| 1inch Aggregation Router V6_Decurity.pdf | ExtensionLib | unmatched — not counted | — | — | no |
| 1inch Aggregation Router V6_Decurity.pdf | GenericRouter | unmatched — not counted | — | — | no |
| 1inch Aggregation Router V6_Decurity.pdf | LimitsLib | unmatched — not counted | — | — | no |
| 1inch Aggregation Router V6_Decurity.pdf | OffsetsLib | unmatched — not counted | — | — | no |
| 1inch Aggregation Router V6_Decurity.pdf | OrderLib | unmatched — not counted | — | — | no |
| 1inch Aggregation Router V6_Decurity.pdf | OrderMixin | unmatched — not counted | — | — | no |
| 1inch Aggregation Router V6_Decurity.pdf | PredicateHelper | unmatched — not counted | — | — | no |
| 1inch Aggregation Router V6_Decurity.pdf | ProtocolLib | unmatched — not counted | — | — | no |
| 1inch Aggregation Router V6_Decurity.pdf | RemainingInvalidatorLib | unmatched — not counted | — | — | no |
| 1inch Aggregation Router V6_Decurity.pdf | RouterErrors | unmatched — not counted | — | — | no |
| 1inch Aggregation Router V6_Decurity.pdf | SafeERC20 | unmatched — not counted | — | — | no |
| 1inch Aggregation Router V6_Decurity.pdf | SeriesEpochManager | unmatched — not counted | — | — | no |
| 1inch Aggregation Router V6_Decurity.pdf | UnoswapRouter | unmatched — not counted | — | — | no |
| 1inch Aggregation Router V6_Hexens.pdf | ECDSA | unmatched — not counted | — | — | no |
| 1inch Aggregation Router V6_Hexens.pdf | ERC20Pods | unmatched — not counted | — | — | no |
| 1inch Aggregation Router V6_Hexens.pdf | ETHOrders | unmatched — not counted | — | — | no |
| 1inch Aggregation Router V6_Hexens.pdf | IOrderMixin | unmatched — not counted | — | — | no |
| 1inch Aggregation Router V6_Hexens.pdf | LimitOrderProtocol | unmatched — not counted | — | — | no |
| 1inch Aggregation Router V6_Hexens.pdf | MakerTraitsLib | unmatched — not counted | — | — | no |
| 1inch Aggregation Router V6_Hexens.pdf | OnlyWethReceiver | unmatched — not counted | — | — | no |
| 1inch Aggregation Router V6_Hexens.pdf | OrderLib | unmatched — not counted | — | — | no |
| 1inch Aggregation Router V6_Hexens.pdf | OrderMixin | unmatched — not counted | — | — | no |
| 1inch Aggregation Router V6_Hexens.pdf | SafeERC20 | unmatched — not counted | — | — | no |
| 1inch Aggregation Router V6_Hexens.pdf | St1inch | unmatched — not counted | — | — | no |
| 1inch Aggregation Router V6_Hexens.pdf | UnoswapRouter | unmatched — not counted | — | — | no |
| 1inch Aggregation Router V6_Hexens.pdf | WethUnwrapper | unmatched — not counted | — | — | no |
| 1inch Aggregation Router V6_OpenZeppelin.pdf | AggregationRouterV6 | own contract | AggregationRouterV6 (selected) `0x111111...842a65` — deployed 2024-02-12 18:44:35+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 1inch Aggregation Router V6_OpenZeppelin.pdf | ClipperRouter | unmatched — not counted | — | — | no |
| 1inch Aggregation Router V6_OpenZeppelin.pdf | GenericRouter | unmatched — not counted | — | — | no |
| 1inch Aggregation Router V6_OpenZeppelin.pdf | ProtocolLib | unmatched — not counted | — | — | no |
| 1inch Aggregation Router V6_OpenZeppelin.pdf | RouterErrors | unmatched — not counted | — | — | no |
| 1inch Aggregation Router V6_OpenZeppelin.pdf | UnoswapRouter | unmatched — not counted | — | — | no |
| 1inch Aggregation Router V6_PeckShield.pdf | UnoswapRouter | unmatched — not counted | — | Target in finding PVE-002: UnoswapRouter | no |
| 1inch Aggregation Router V6_Pessimistic.pdf | AggregationRouterV6 | own contract | AggregationRouterV6 (selected) `0x111111...842a65` — deployed 2024-02-12 18:44:35+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 1inch Aggregation Router V6_Pessimistic.pdf | AmountCalculator | unmatched — not counted | — | — | no |
| 1inch Aggregation Router V6_Pessimistic.pdf | BitInvalidatorLib | unmatched — not counted | — | — | no |
| 1inch Aggregation Router V6_Pessimistic.pdf | ClipperRouter | unmatched — not counted | — | — | no |
| 1inch Aggregation Router V6_Pessimistic.pdf | ConstraintsLib | unmatched — not counted | — | — | no |
| 1inch Aggregation Router V6_Pessimistic.pdf | Errors | unmatched — not counted | — | — | no |
| 1inch Aggregation Router V6_Pessimistic.pdf | ExtensionLib | unmatched — not counted | — | — | no |
| 1inch Aggregation Router V6_Pessimistic.pdf | GenericRouter | unmatched — not counted | — | — | no |
| 1inch Aggregation Router V6_Pessimistic.pdf | LimitsLib | unmatched — not counted | — | — | no |
| 1inch Aggregation Router V6_Pessimistic.pdf | OffsetsLib | unmatched — not counted | — | — | no |
| 1inch Aggregation Router V6_Pessimistic.pdf | OrderLib | unmatched — not counted | — | — | no |
| 1inch Aggregation Router V6_Pessimistic.pdf | OrderMixin | unmatched — not counted | — | — | no |
| 1inch Aggregation Router V6_Pessimistic.pdf | PredicateHelper | unmatched — not counted | — | — | no |
| 1inch Aggregation Router V6_Pessimistic.pdf | ProtocolLib | unmatched — not counted | — | — | no |
| 1inch Aggregation Router V6_Pessimistic.pdf | RemainingInvalidatorLib | unmatched — not counted | — | — | no |
| 1inch Aggregation Router V6_Pessimistic.pdf | RouterErrors | unmatched — not counted | — | — | no |
| 1inch Aggregation Router V6_Pessimistic.pdf | SafeERC20 | unmatched — not counted | — | — | no |
| 1inch Aggregation Router V6_Pessimistic.pdf | SeriesEpochManager | unmatched — not counted | — | — | no |
| 1inch Aggregation Router V6_Pessimistic.pdf | UnoswapRouter | unmatched — not counted | — | — | no |
| 1inch Limit Order Protocol v4.1_OpenZeppelin.pdf | ExtensionLib | unmatched — not counted | — | — | no |
| 1inch Limit Order Protocol v4.1_OpenZeppelin.pdf | LimitOrderProtocol | unmatched — not counted | — | — | no |
| 1inch Limit Order Protocol v4.1_OpenZeppelin.pdf | MakerTraitsLib | unmatched — not counted | — | — | no |
| 1inch Limit Order Protocol v4.1_OpenZeppelin.pdf | OrderLib | unmatched — not counted | — | — | no |
| 1inch Limit Order Protocol v4.1_OpenZeppelin.pdf | OrderMixin | unmatched — not counted | — | — | no |
| 1inch Limit Order Protocol v4.1_OpenZeppelin.pdf | RemainingInvalidatorLib | unmatched — not counted | — | — | no |
| 1inch Limit Order Protocol v4.1_OpenZeppelin.pdf | TakerTraitsLib | unmatched — not counted | — | — | no |
| 1inch Limit Order Protocol v4_OpenZeppelin.pdf | AmountCalculator | unmatched — not counted | — | — | no |
| 1inch Limit Order Protocol v4_OpenZeppelin.pdf | BitInvalidatorLib | unmatched — not counted | — | — | no |
| 1inch Limit Order Protocol v4_OpenZeppelin.pdf | Errors | unmatched — not counted | — | — | no |
| 1inch Limit Order Protocol v4_OpenZeppelin.pdf | ExtensionLib | unmatched — not counted | — | — | no |
| 1inch Limit Order Protocol v4_OpenZeppelin.pdf | LimitOrderProtocol | unmatched — not counted | — | — | no |
| 1inch Limit Order Protocol v4_OpenZeppelin.pdf | MakerTraitsLib | unmatched — not counted | — | — | no |
| 1inch Limit Order Protocol v4_OpenZeppelin.pdf | OffsetsLib | unmatched — not counted | — | — | no |
| 1inch Limit Order Protocol v4_OpenZeppelin.pdf | OrderIdInvalidator | unmatched — not counted | — | — | no |
| 1inch Limit Order Protocol v4_OpenZeppelin.pdf | OrderLib | unmatched — not counted | — | — | no |
| 1inch Limit Order Protocol v4_OpenZeppelin.pdf | OrderMixin | unmatched — not counted | — | — | no |
| 1inch Limit Order Protocol v4_OpenZeppelin.pdf | PredicateHelper | unmatched — not counted | — | — | no |
| 1inch Limit Order Protocol v4_OpenZeppelin.pdf | RemainingInvalidatorLib | unmatched — not counted | — | — | no |
| 1inch Limit Order Protocol v4_OpenZeppelin.pdf | SeriesEpochManager | unmatched — not counted | — | — | no |
| 1inch Limit Order Protocol v4_OpenZeppelin.pdf | TakerTraitsLib | unmatched — not counted | — | — | no |
| Certik - 1inch v2 Audit Report.pdf | GasDiscountCalculator | unmatched — not counted | — | listed in scope table | no |
| Certik - 1inch v2 Audit Report.pdf | OneInchExchange | unmatched — not counted | — | listed in scope table | no |
| Certik - 1inch v2 Audit Report.pdf | OneInchFlags | unmatched — not counted | — | listed in scope table | no |
| Certik - 1inch v2 Audit Report.pdf | RevertReasonParser | unmatched — not counted | — | listed in scope table | no |
| Certik - 1inch v2 Audit Report.pdf | UniERC20 | unmatched — not counted | — | listed in scope table | no |
| Chainsulting - 1inch v2 Audit Report.pdf | OneInchExchange | unmatched — not counted | — | listed in scope section | no |
| Chainsulting - 1inch v2 Audit Report.pdf | OneInchFlags | unmatched — not counted | — | listed in scope section | no |
| Chainsulting - 1inch v2 Audit Report.pdf | RevertReasonParser | unmatched — not counted | — | listed in scope section | no |
| Chainsulting - 1inch v2 Audit Report.pdf | UniERC20 | unmatched — not counted | — | listed in scope section | no |
| Chainsulting - 1inch v2 Audit Report.pdf | IOneInchCaller | unmatched — not counted | — | listed as indirect import in scope | no |
| Chainsulting - 1inch v2 Audit Report.pdf | IERC20Permit | unmatched — not counted | — | listed as indirect import in scope | no |
| Chainsulting - 1inch v2 Audit Report.pdf | IChi | unmatched — not counted | — | listed as indirect import in scope | no |
| Coinfabrik - 1inch v2 Audit Report.pdf | OneInchExchange | unmatched — not counted | — | listed in scope table | no |
| Coinfabrik - 1inch v2 Audit Report.pdf | GasDiscountCalculator | unmatched — not counted | — | listed in scope table | no |
| Coinfabrik - 1inch v2 Audit Report.pdf | OneInchFlags | unmatched — not counted | — | listed in scope table | no |
| Coinfabrik - 1inch v2 Audit Report.pdf | RevertReasonParser | unmatched — not counted | — | listed in scope table | no |
| Coinfabrik - 1inch v2 Audit Report.pdf | UniERC20 | unmatched — not counted | — | listed in scope table | no |
| Hacken - 1inch v2 Audit Report.pdf | OneInchExchange | unmatched — not counted | — | listed in scope | no |
| Hacken - 1inch v2 Audit Report.pdf | OneInchFlags | unmatched — not counted | — | listed in scope | no |
| Hacken - 1inch v2 Audit Report.pdf | RevertReasonParser | unmatched — not counted | — | listed in scope | no |
| Hacken - 1inch v2 Audit Report.pdf | UniERC20 | unmatched — not counted | — | listed in scope | no |
| Hacken - 1inch v2 Audit Report.pdf | OneInchCaller | unmatched — not counted | — | listed in scope | no |
| Hacken - 1inch v2 Audit Report.pdf | GasDiscountCalculator | unmatched — not counted | — | listed in scope | no |
| Haechi - 1inch v2 Audit Report.pdf | OneInchExchange | unmatched — not counted | — | listed in scope | no |
| Haechi - 1inch v2 Audit Report.pdf | RevertReasonParser | unmatched — not counted | — | listed in scope | no |
| Haechi - 1inch v2 Audit Report.pdf | UniERC20 | unmatched — not counted | — | listed in scope | no |
| Haechi - 1inch v2 Audit Report.pdf | GasDiscountCalculator | unmatched — not counted | — | listed in scope | no |
| Haechi - 1inch v2 Audit Report.pdf | OneInchFlags | unmatched — not counted | — | listed in scope | no |
| MixBytes - 1inch v2 Audit Report.pdf | OneInchExchange | unmatched — not counted | — | listed in scope | no |
| MixBytes - 1inch v2 Audit Report.pdf | OneInchFlags | unmatched — not counted | — | listed in scope | no |
| MixBytes - 1inch v2 Audit Report.pdf | RevertReasonParser | unmatched — not counted | — | listed in scope | no |
| MixBytes - 1inch v2 Audit Report.pdf | UniERC20 | unmatched — not counted | — | listed in scope | no |
| MixBytes - 1inch v2 Audit Report.pdf | GasDiscountCalculator | unmatched — not counted | — | listed in scope | no |
| Scott Bigelow - 1inch v2 Audit Report.pdf | OneInchExchange | unmatched — not counted | — | listed in scope and deployed address provided | no |
| Scott Bigelow - 1inch v2 Audit Report.pdf | OneInchCaller | unmatched — not counted | — | listed in scope | no |
| Scott Bigelow - 1inch v2 Audit Report.pdf | OneInchFlags | unmatched — not counted | — | listed in scope | no |
| Scott Bigelow - 1inch v2 Audit Report.pdf | ChiSpender | unmatched — not counted | — | mentioned in findings as audited contract | no |
| Scott Bigelow - 1inch v2 Audit Report.pdf | BytesPatcher | unmatched — not counted | — | mentioned in findings as audited contract | no |
| Scott Bigelow - 1inch v2 Audit Report.pdf | PatcherExtension | unmatched — not counted | — | mentioned in findings as audited contract | no |
| Slowmist - 1inch v2 Audit Report.pdf | OneInchExchange | unmatched — not counted | — | listed in scope | no |
| Slowmist - 1inch v2 Audit Report.pdf | RevertReasonParser | unmatched — not counted | — | listed in scope | no |
| Slowmist - 1inch v2 Audit Report.pdf | UniERC20 | unmatched — not counted | — | listed in scope | no |
| Certik - 1inch v3 Audit Report.pdf | OneInchExchange | unmatched — not counted | — | listed in scope table | no |
| Certik - 1inch v3 Audit Report.pdf | OneInchUnoswap | unmatched — not counted | — | listed in scope table | no |
| Certik - 1inch v3 Audit Report.pdf | Permitable | unmatched — not counted | — | listed in scope table | no |
| Certik - 1inch v3 Audit Report.pdf | RevertReasonParser | unmatched — not counted | — | listed in scope table | no |
| Certik - 1inch v3 Audit Report.pdf | UniERC20 | unmatched — not counted | — | listed in scope table | no |
| Gulamov - 1inch v3 Audit Report.pdf | OneInchExchange | unmatched — not counted | — | listed in scope | no |
| Gulamov - 1inch v3 Audit Report.pdf | OneInchUnoswap | unmatched — not counted | — | listed in scope | no |
| Gulamov - 1inch v3 Audit Report.pdf | Permitable | unmatched — not counted | — | listed in scope | no |
| Gulamov - 1inch v3 Audit Report.pdf | UniERC20 | unmatched — not counted | — | listed in scope | no |
| Gulamov - 1inch v3 Audit Report.pdf | RevertReasonParser | unmatched — not counted | — | listed in scope | no |
| MixBytes - 1inch v3 Audit Report.pdf | OneInchExchange | unmatched — not counted | — | listed in FILES LISTING | no |
| MixBytes - 1inch v3 Audit Report.pdf | OneInchUnoswap | unmatched — not counted | — | listed in FILES LISTING | no |
| MixBytes - 1inch v3 Audit Report.pdf | Permitable | unmatched — not counted | — | listed in FILES LISTING | no |
| MixBytes - 1inch v3 Audit Report.pdf | UniERC20 | unmatched — not counted | — | listed in FILES LISTING | no |
| MixBytes - 1inch v3 Audit Report.pdf | RevertReasonParser | unmatched — not counted | — | listed in FILES LISTING | no |
| 1Inch Aggregation Router v4 Audit_MixBites.pdf | AggregationRouterV4 | unmatched — not counted | — | listed in scope table | no |
| 1Inch Aggregation Router v4 Audit_MixBites.pdf | ClipperRouter | unmatched — not counted | — | listed in scope table | no |
| 1Inch Aggregation Router v4 Audit_MixBites.pdf | LimitOrderProtocolRFQ | unmatched — not counted | — | listed in scope table | no |
| 1Inch Aggregation Router v4 Audit_MixBites.pdf | UnoswapRouter | unmatched — not counted | — | listed in scope table | no |
| 1Inch Aggregation Router v4 Audit_MixBites.pdf | UnoswapV3Router | unmatched — not counted | — | listed in scope table | no |
| 1Inch Aggregation Router v4 Audit_MixBites.pdf | ArgumentsDecoder | unmatched — not counted | — | listed in scope table | no |
| 1Inch Aggregation Router v4 Audit_MixBites.pdf | EthReceiver | unmatched — not counted | — | listed in scope table | no |
| 1Inch Aggregation Router v4 Audit_MixBites.pdf | Permitable | unmatched — not counted | — | listed in scope table | no |
| 1Inch Aggregation Router v4 Audit_MixBites.pdf | UniERC20 | unmatched — not counted | — | listed in scope table | no |
| 1Inch Aggregation Router v4 Audit_MixBites.pdf | IAggregationExecutorExtended | unmatched — not counted | — | listed in scope table | no |
| 1Inch Aggregation Router v4 Audit_MixBites.pdf | IChi | unmatched — not counted | — | listed in scope table | no |
| 1Inch Aggregation Router v4 Audit_MixBites.pdf | IClipperExchangeInterface | unmatched — not counted | — | listed in scope table | no |
| 1Inch Aggregation Router v4 Audit_MixBites.pdf | IDaiLikePermit | unmatched — not counted | — | listed in scope table | no |
| 1Inch Aggregation Router v4 Audit_MixBites.pdf | IERC1271 | unmatched — not counted | — | listed in scope table | no |
| 1Inch Aggregation Router v4 Audit_MixBites.pdf | IUniswapV3Pool | unmatched — not counted | — | listed in scope table | no |
| 1Inch Aggregation Router v4 Audit_MixBites.pdf | IUniswapV3SwapCallback | unmatched — not counted | — | listed in scope table | no |
| 1Inch Aggregation Router v4 Audit_MixBites.pdf | IWETH | unmatched — not counted | — | listed in scope table | no |
| 1inch Aggregation Router v4 Audit_ABDK.pdf | UnoswapV3Router | unmatched — not counted | — | listed in scope | no |
| 1inch Aggregation Router v4 Audit_ABDK.pdf | AggregationRouterV4 | unmatched — not counted | — | listed in scope | no |
| 1inch Aggregation Router v4 Audit_ABDK.pdf | XLimitOrderProtocolRFQ | unmatched — not counted | — | listed in scope | no |
| 1inch Aggregation Router v4 Audit_ABDK.pdf | ClipperRouter | unmatched — not counted | — | listed in scope | no |
| 1inch Aggregation Router v4 Audit_ABDK.pdf | ArgumentsDecoder | unmatched — not counted | — | listed in scope | no |
| 1inch Aggregation Router v4 Audit_ABDK.pdf | Permitable | unmatched — not counted | — | listed in scope | no |
| 1inch Aggregation Router v4 Audit_ABDK.pdf | RevertReasonParser | unmatched — not counted | — | listed in scope | no |
| 1inch Aggregation Router v4 Audit_Chainsulting.pdf | AggregationRouterV4 | unmatched — not counted | — | listed in scope table | no |
| 1inch Aggregation Router v4 Audit_Chainsulting.pdf | ClipperRouter | unmatched — not counted | — | listed in scope table | no |
| 1inch Aggregation Router v4 Audit_Chainsulting.pdf | LimitOrderProtocolRFQ | unmatched — not counted | — | listed in scope table | no |
| 1inch Aggregation Router v4 Audit_Chainsulting.pdf | UnoswapV3Router | unmatched — not counted | — | listed in scope table | no |
| 1inch Aggregation Router v4 Audit_Coinfabrik.pdf | AggregationRouterV4 | unmatched — not counted | — | listed in scope | no |
| 1inch Aggregation Router v4 Audit_Coinfabrik.pdf | UnoswapV3Router | unmatched — not counted | — | listed in scope | no |
| 1inch Aggregation Router v4 Audit_Coinfabrik.pdf | ClipperRouter | unmatched — not counted | — | listed in scope | no |
| 1inch Aggregation Router v4 Audit_Coinfabrik.pdf | LimitOrderProtocolRFQ | unmatched — not counted | — | listed in scope | no |
| 1inch Aggregation Router v4 Audit_Coinfabrik.pdf | Permitable | unmatched — not counted | — | mentioned in findings as an audited contract | no |
| 1inch Aggregation Router v4 Audit_Consensys.pdf | AggregationRouterV4 | unmatched — not counted | — | listed in scope table | no |
| 1inch Aggregation Router v4 Audit_Consensys.pdf | ClipperRouter | unmatched — not counted | — | listed in scope table | no |
| 1inch Aggregation Router v4 Audit_Consensys.pdf | ArgumentsDecoder | unmatched — not counted | — | listed in scope table | no |
| 1inch Aggregation Router v4 Audit_Consensys.pdf | EthReceiver | unmatched — not counted | — | listed in scope table | no |
| 1inch Aggregation Router v4 Audit_Consensys.pdf | Permitable | unmatched — not counted | — | listed in scope table | no |
| 1inch Aggregation Router v4 Audit_Consensys.pdf | RevertReasonParser | unmatched — not counted | — | listed in scope table | no |
| 1inch Aggregation Router v4 Audit_Consensys.pdf | UniERC20 | unmatched — not counted | — | listed in scope table | no |
| 1inch Aggregation Router v4 Audit_Consensys.pdf | LimitOrderProtocolRFQ | unmatched — not counted | — | listed in scope table | no |
| 1inch Aggregation Router v4 Audit_Consensys.pdf | UnoswapRouter | unmatched — not counted | — | listed in scope table | no |
| 1inch Aggregation Router v4 Audit_Consensys.pdf | UnoswapV3Router | unmatched — not counted | — | listed in scope table | no |
| 1inch Aggregation Router v4 Audit_Igor Gulamov.pdf | AggregationRouterV4 | unmatched — not counted | — | listed in scope | no |
| 1inch Aggregation Router v4 Audit_Igor Gulamov.pdf | UnoswapV3Router | unmatched — not counted | — | listed in scope | no |
| 1inch Aggregation Router v4 Audit_Igor Gulamov.pdf | ClipperRouter | unmatched — not counted | — | listed in scope | no |
| 1inch Aggregation Router v4 Audit_Igor Gulamov.pdf | LimitOrderProtocolRFQ | unmatched — not counted | — | listed in scope | no |
| 1inch Aggregation Router v4 Audit_Pessimistic.pdf | AggregationRouterV4 | unmatched — not counted | — | listed in scope | no |
| 1inch Aggregation Router v4 Audit_Pessimistic.pdf | UnoswapV3Router | unmatched — not counted | — | listed in scope | no |
| 1inch Aggregation Router v4 Audit_Pessimistic.pdf | ClipperRouter | unmatched — not counted | — | listed in scope | no |
| 1inch Aggregation Router v4 Audit_Pessimistic.pdf | LimitOrderProtocolRFQ | unmatched — not counted | — | listed in scope | no |
| 1inch-cross-chain-swap-v1-AstraSec.pdf | EscrowDst | unmatched — not counted | — | — | no |
| 1inch-cross-chain-swap-v1-AstraSec.pdf | EscrowFactory | unmatched — not counted | — | — | no |
| 1inch-cross-chain-swap-v1-AstraSec.pdf | TimelocksLib | unmatched — not counted | — | — | no |
| 1inch-cross-chain-swap-v1-Consensys.pdf | Clones | unmatched — not counted | — | — | no |
| 1inch-cross-chain-swap-v1-Consensys.pdf | Escrow | unmatched — not counted | — | — | no |
| 1inch-cross-chain-swap-v1-Consensys.pdf | EscrowDst | unmatched — not counted | — | — | no |
| 1inch-cross-chain-swap-v1-Consensys.pdf | EscrowFactory | unmatched — not counted | — | — | no |
| 1inch-cross-chain-swap-v1-Consensys.pdf | EscrowSrc | unmatched — not counted | — | — | no |
| 1inch-cross-chain-swap-v1-Consensys.pdf | IEscrow | unmatched — not counted | — | — | no |
| 1inch-cross-chain-swap-v1-Consensys.pdf | IEscrowDst | unmatched — not counted | — | — | no |
| 1inch-cross-chain-swap-v1-Consensys.pdf | IEscrowFactory | unmatched — not counted | — | — | no |
| 1inch-cross-chain-swap-v1-Consensys.pdf | IEscrowSrc | unmatched — not counted | — | — | no |
| 1inch-cross-chain-swap-v1-Consensys.pdf | ImmutablesLib | unmatched — not counted | — | — | no |
| 1inch-cross-chain-swap-v1-Consensys.pdf | TimelocksLib | unmatched — not counted | — | — | no |
| 1inch-cross-chain-swap-v1-Decurity.pdf | Escrow | unmatched — not counted | — | — | no |
| 1inch-cross-chain-swap-v1-Decurity.pdf | EscrowDst | unmatched — not counted | — | — | no |
| 1inch-cross-chain-swap-v1-Decurity.pdf | EscrowFactory | unmatched — not counted | — | — | no |
| 1inch-cross-chain-swap-v1-Decurity.pdf | EscrowSrc | unmatched — not counted | — | — | no |
| 1inch-cross-chain-swap-v1-Decurity.pdf | TimelocksLib | unmatched — not counted | — | — | no |
| 1inch-cross-chain-swap-v1-Igor Gulamov.pdf | Clones | unmatched — not counted | — | — | no |
| 1inch-cross-chain-swap-v1-Igor Gulamov.pdf | Escrow | unmatched — not counted | — | — | no |
| 1inch-cross-chain-swap-v1-Igor Gulamov.pdf | EscrowDst | unmatched — not counted | — | — | no |
| 1inch-cross-chain-swap-v1-Igor Gulamov.pdf | EscrowFactory | unmatched — not counted | — | — | no |
| 1inch-cross-chain-swap-v1-Igor Gulamov.pdf | EscrowSrc | unmatched — not counted | — | — | no |
| 1inch-cross-chain-swap-v1-Igor Gulamov.pdf | IEscrow | unmatched — not counted | — | — | no |
| 1inch-cross-chain-swap-v1-Igor Gulamov.pdf | IEscrowFactory | unmatched — not counted | — | — | no |
| 1inch-cross-chain-swap-v1-Igor Gulamov.pdf | IEscrowSrc | unmatched — not counted | — | — | no |
| 1inch-cross-chain-swap-v1-Igor Gulamov.pdf | ImmutablesLib | unmatched — not counted | — | — | no |
| 1inch-cross-chain-swap-v1-Igor Gulamov.pdf | TimelocksLib | unmatched — not counted | — | — | no |
| 1inch-cross-chain-swap-v1-Open Zeppelin.pdf | Clones | unmatched — not counted | — | — | no |
| 1inch-cross-chain-swap-v1-Open Zeppelin.pdf | Escrow | unmatched — not counted | — | — | no |
| 1inch-cross-chain-swap-v1-Open Zeppelin.pdf | EscrowDst | unmatched — not counted | — | — | no |
| 1inch-cross-chain-swap-v1-Open Zeppelin.pdf | EscrowFactory | unmatched — not counted | — | — | no |
| 1inch-cross-chain-swap-v1-Open Zeppelin.pdf | EscrowSrc | unmatched — not counted | — | — | no |
| 1inch-cross-chain-swap-v1-Open Zeppelin.pdf | IEscrow | unmatched — not counted | — | — | no |
| 1inch-cross-chain-swap-v1-Open Zeppelin.pdf | IEscrowFactory | unmatched — not counted | — | — | no |
| 1inch-cross-chain-swap-v1-Open Zeppelin.pdf | IEscrowSrc | unmatched — not counted | — | — | no |
| 1inch-cross-chain-swap-v1-Open Zeppelin.pdf | ImmutablesLib | unmatched — not counted | — | — | no |
| 1inch-cross-chain-swap-v1-Open Zeppelin.pdf | TimelocksLib | unmatched — not counted | — | — | no |
| 1inch-cross-chain-swap-v1-Pessimistic.pdf | EscrowSrc | unmatched — not counted | — | mentioned in M01 finding: 'According to EscrowSrc.sol' | no |
| 1inch-cross-chain-v2-Astrasec.pdf | BaseEscrowFactory | unmatched — not counted | — | mentioned in vulnerability M-1 target | no |
| 1inch-cross-chain-v2-Astrasec.pdf | MerkleStorageInvalidator | unmatched — not counted | — | mentioned in vulnerability M-1 target | no |
| 1inch-cross-chain-v2-Astrasec.pdf | IBaseEscrow | unmatched — not counted | — | listed in I-1 table | no |
| 1inch-cross-chain-v2-Astrasec.pdf | IEscrow | unmatched — not counted | — | listed in I-1 table | no |
| 1inch-cross-chain-v2-Astrasec.pdf | IEscrowDst | unmatched — not counted | — | listed in I-1 table | no |
| 1inch-cross-chain-v2-Astrasec.pdf | IEscrowFactory | unmatched — not counted | — | listed in I-1 table | no |
| 1inch-cross-chain-v2-Astrasec.pdf | IEscrowSrc | unmatched — not counted | — | listed in I-1 table | no |
| 1inch-cross-chain-v2-Astrasec.pdf | ImmutablesLib | unmatched — not counted | — | listed in I-1 table | no |
| 1inch-cross-chain-v2-Astrasec.pdf | ProxyHashLib | unmatched — not counted | — | listed in I-1 table | no |
| 1inch-cross-chain-v2-Astrasec.pdf | TimelocksLib | unmatched — not counted | — | listed in I-1 table | no |
| 1inch-cross-chain-v2-Consensys.pdf | BaseEscrow | unmatched — not counted | — | — | no |
| 1inch-cross-chain-v2-Consensys.pdf | BaseEscrowFactory | unmatched — not counted | — | — | no |
| 1inch-cross-chain-v2-Consensys.pdf | Escrow | unmatched — not counted | — | — | no |
| 1inch-cross-chain-v2-Consensys.pdf | EscrowDst | unmatched — not counted | — | — | no |
| 1inch-cross-chain-v2-Consensys.pdf | EscrowDstZkSync | unmatched — not counted | — | — | no |
| 1inch-cross-chain-v2-Consensys.pdf | EscrowFactory | unmatched — not counted | — | — | no |
| 1inch-cross-chain-v2-Consensys.pdf | EscrowFactoryZkSync | unmatched — not counted | — | — | no |
| 1inch-cross-chain-v2-Consensys.pdf | EscrowSrc | unmatched — not counted | — | — | no |
| 1inch-cross-chain-v2-Consensys.pdf | EscrowSrcZkSync | unmatched — not counted | — | — | no |
| 1inch-cross-chain-v2-Consensys.pdf | EscrowZkSync | unmatched — not counted | — | — | no |
| 1inch-cross-chain-v2-Consensys.pdf | IBaseEscrow | unmatched — not counted | — | — | no |
| 1inch-cross-chain-v2-Consensys.pdf | IEscrow | unmatched — not counted | — | — | no |
| 1inch-cross-chain-v2-Consensys.pdf | IEscrowDst | unmatched — not counted | — | — | no |
| 1inch-cross-chain-v2-Consensys.pdf | IEscrowFactory | unmatched — not counted | — | — | no |
| 1inch-cross-chain-v2-Consensys.pdf | IEscrowSrc | unmatched — not counted | — | — | no |
| 1inch-cross-chain-v2-Consensys.pdf | IMerkleStorageInvalidator | unmatched — not counted | — | — | no |
| 1inch-cross-chain-v2-Consensys.pdf | ImmutablesLib | unmatched — not counted | — | — | no |
| 1inch-cross-chain-v2-Consensys.pdf | MerkleStorageInvalidator | unmatched — not counted | — | — | no |
| 1inch-cross-chain-v2-Consensys.pdf | MinimalProxyZkSync | unmatched — not counted | — | — | no |
| 1inch-cross-chain-v2-Consensys.pdf | ProxyHashLib | unmatched — not counted | — | — | no |
| 1inch-cross-chain-v2-Consensys.pdf | TimelocksLib | unmatched — not counted | — | — | no |
| 1inch-cross-chain-v2-Consensys.pdf | ZkSyncLib | unmatched — not counted | — | — | no |
| 1inch-cross-chain-v2-Decurity.pdf | BaseEscrowFactory | unmatched — not counted | — | listed in findings table and section 5.1 | no |
| 1inch-cross-chain-v2-Decurity.pdf | MerkleStorageInvalidator | unmatched — not counted | — | listed in findings table and section 5.2 | no |
| 1inch-cross-chain-v2-Decurity.pdf | TimelocksLib | unmatched — not counted | — | listed in findings table and section 5.3 | no |
| 1inch-cross-chain-v2-Decurity.pdf | IBaseEscrow | unmatched — not counted | — | listed in findings table and section 5.4 | no |
| 1inch-cross-chain-v2-Igor Gulamov.pdf | BaseEscrow | unmatched — not counted | — | — | no |
| 1inch-cross-chain-v2-Igor Gulamov.pdf | BaseEscrowFactory | unmatched — not counted | — | — | no |
| 1inch-cross-chain-v2-Igor Gulamov.pdf | Escrow | unmatched — not counted | — | — | no |
| 1inch-cross-chain-v2-Igor Gulamov.pdf | EscrowDst | unmatched — not counted | — | — | no |
| 1inch-cross-chain-v2-Igor Gulamov.pdf | EscrowDstZkSync | unmatched — not counted | — | — | no |
| 1inch-cross-chain-v2-Igor Gulamov.pdf | EscrowFactory | unmatched — not counted | — | — | no |
| 1inch-cross-chain-v2-Igor Gulamov.pdf | EscrowFactoryZkSync | unmatched — not counted | — | — | no |
| 1inch-cross-chain-v2-Igor Gulamov.pdf | EscrowSrc | unmatched — not counted | — | — | no |
| 1inch-cross-chain-v2-Igor Gulamov.pdf | EscrowSrcZkSync | unmatched — not counted | — | — | no |
| 1inch-cross-chain-v2-Igor Gulamov.pdf | EscrowZkSync | unmatched — not counted | — | — | no |
| 1inch-cross-chain-v2-Igor Gulamov.pdf | IBaseEscrow | unmatched — not counted | — | — | no |
| 1inch-cross-chain-v2-Igor Gulamov.pdf | IEscrow | unmatched — not counted | — | — | no |
| 1inch-cross-chain-v2-Igor Gulamov.pdf | IEscrowDst | unmatched — not counted | — | — | no |
| 1inch-cross-chain-v2-Igor Gulamov.pdf | IEscrowFactory | unmatched — not counted | — | — | no |
| 1inch-cross-chain-v2-Igor Gulamov.pdf | IEscrowSrc | unmatched — not counted | — | — | no |
| 1inch-cross-chain-v2-Igor Gulamov.pdf | IMerkleStorageInvalidator | unmatched — not counted | — | — | no |
| 1inch-cross-chain-v2-Igor Gulamov.pdf | IResolverMock | unmatched — not counted | — | — | no |
| 1inch-cross-chain-v2-Igor Gulamov.pdf | ImmutablesLib | unmatched — not counted | — | — | no |
| 1inch-cross-chain-v2-Igor Gulamov.pdf | MerkleStorageInvalidator | unmatched — not counted | — | — | no |
| 1inch-cross-chain-v2-Igor Gulamov.pdf | MinimalProxyZkSync | unmatched — not counted | — | — | no |
| 1inch-cross-chain-v2-Igor Gulamov.pdf | ProxyHashLib | unmatched — not counted | — | — | no |
| 1inch-cross-chain-v2-Igor Gulamov.pdf | TimelocksLib | unmatched — not counted | — | — | no |
| 1inch-cross-chain-v2-Igor Gulamov.pdf | ZkSyncLib | unmatched — not counted | — | — | no |
| 1inch-cross-chain-v2-Open Zeppelin.pdf | BaseEscrow | unmatched — not counted | — | — | no |
| 1inch-cross-chain-v2-Open Zeppelin.pdf | BaseEscrowFactory | unmatched — not counted | — | — | no |
| 1inch-cross-chain-v2-Open Zeppelin.pdf | Escrow | unmatched — not counted | — | — | no |
| 1inch-cross-chain-v2-Open Zeppelin.pdf | EscrowDst | unmatched — not counted | — | — | no |
| 1inch-cross-chain-v2-Open Zeppelin.pdf | EscrowDstZkSync | unmatched — not counted | — | — | no |
| 1inch-cross-chain-v2-Open Zeppelin.pdf | EscrowFactory | unmatched — not counted | — | — | no |
| 1inch-cross-chain-v2-Open Zeppelin.pdf | EscrowFactoryZkSync | unmatched — not counted | — | — | no |
| 1inch-cross-chain-v2-Open Zeppelin.pdf | EscrowSrc | unmatched — not counted | — | — | no |
| 1inch-cross-chain-v2-Open Zeppelin.pdf | EscrowSrcZkSync | unmatched — not counted | — | — | no |
| 1inch-cross-chain-v2-Open Zeppelin.pdf | EscrowZkSync | unmatched — not counted | — | — | no |
| 1inch-cross-chain-v2-Open Zeppelin.pdf | IBaseEscrow | unmatched — not counted | — | — | no |
| 1inch-cross-chain-v2-Open Zeppelin.pdf | IEscrow | unmatched — not counted | — | — | no |
| 1inch-cross-chain-v2-Open Zeppelin.pdf | IEscrowDst | unmatched — not counted | — | — | no |
| 1inch-cross-chain-v2-Open Zeppelin.pdf | IEscrowFactory | unmatched — not counted | — | — | no |
| 1inch-cross-chain-v2-Open Zeppelin.pdf | IEscrowSrc | unmatched — not counted | — | — | no |
| 1inch-cross-chain-v2-Open Zeppelin.pdf | IMerkleStorageInvalidator | unmatched — not counted | — | — | no |
| 1inch-cross-chain-v2-Open Zeppelin.pdf | ImmutablesLib | unmatched — not counted | — | — | no |
| 1inch-cross-chain-v2-Open Zeppelin.pdf | MerkleStorageInvalidator | unmatched — not counted | — | — | no |
| 1inch-cross-chain-v2-Open Zeppelin.pdf | MinimalProxyZkSync | unmatched — not counted | — | — | no |
| 1inch-cross-chain-v2-Open Zeppelin.pdf | ProxyHashLib | unmatched — not counted | — | — | no |
| 1inch-cross-chain-v2-Open Zeppelin.pdf | TimelocksLib | unmatched — not counted | — | — | no |
| 1inch-cross-chain-v2-Open Zeppelin.pdf | ZkSyncLib | unmatched — not counted | — | — | no |
| 1inch-cross-chain-v2-Pessimistic.pdf | MerkleStorageInvalidator | unmatched — not counted | — | mentioned in M01 finding | no |
| 1inch-cross-chain-v2-Pessimistic.pdf | BaseEscrowFactory | unmatched — not counted | — | mentioned in L01 and N01 findings | no |
| 1inch Crosschain Fee v1.1_Certora.pdf | BaseEscrowFactory | unmatched — not counted | — | mentioned in L-01 finding | no |
| 1inch Crosschain Fee v1.1_Certora.pdf | EscrowDst | unmatched — not counted | — | mentioned in L-02 and L-03 findings | no |
| 1inch Crosschain Fee v1.1_Certora.pdf | EscrowSrc | unmatched — not counted | — | mentioned in L-01 finding | no |
| 1inch Crosschain Fee v1.1_Decurity.pdf | EscrowSrc | unmatched — not counted | — | listed in scope and findings | no |
| 1inch Crosschain Fee v1.1_Decurity.pdf | EscrowDst | unmatched — not counted | — | listed in scope and findings | no |
| 1inch Crosschain Fee v1.1_Hexens.pdf | BaseEscrow | unmatched — not counted | — | listed in scope | no |
| 1inch Crosschain Fee v1.1_Hexens.pdf | BaseEscrowFactory | unmatched — not counted | — | listed in scope | no |
| 1inch Crosschain Fee v1.1_Hexens.pdf | Escrow | unmatched — not counted | — | listed in scope | no |
| 1inch Crosschain Fee v1.1_Hexens.pdf | EscrowDst | unmatched — not counted | — | listed in scope | no |
| 1inch Crosschain Fee v1.1_Hexens.pdf | EscrowFactory | unmatched — not counted | — | listed in scope | no |
| 1inch Crosschain Fee v1.1_Hexens.pdf | EscrowSrc | unmatched — not counted | — | listed in scope | no |
| 1inch Crosschain Fee v1.1_Hexens.pdf | IBaseEscrow | unmatched — not counted | — | listed in scope | no |
| 1inch Crosschain Fee v1.1_Hexens.pdf | IEscrowFactory | unmatched — not counted | — | listed in scope | no |
| 1inch Crosschain Fee v1.1_Hexens.pdf | ImmutablesLib | unmatched — not counted | — | listed in scope | no |
| 1inch Crosschain Fee v1.1_Hexens.pdf | ResolverExample | unmatched — not counted | — | listed in scope | no |
| 1inch Crosschain Fee v1.1_Hexens.pdf | EscrowDstZkSync | unmatched — not counted | — | listed in scope | no |
| 1inch Crosschain Fee v1.1_Hexens.pdf | EscrowFactoryZkSync | unmatched — not counted | — | listed in scope | no |
| 1inch Crosschain Fee v1.1_Hexens.pdf | EscrowSrcZkSync | unmatched — not counted | — | listed in scope | no |
| 1inch Crosschain Fee v1.1_Hexens.pdf | EscrowZkSync | unmatched — not counted | — | listed in scope | no |
| 1inch Crosschain Fee v1.1_Open Zeppelin.pdf | BaseEscrow | unmatched — not counted | — | — | no |
| 1inch Crosschain Fee v1.1_Open Zeppelin.pdf | BaseEscrowFactory | unmatched — not counted | — | — | no |
| 1inch Crosschain Fee v1.1_Open Zeppelin.pdf | Escrow | unmatched — not counted | — | — | no |
| 1inch Crosschain Fee v1.1_Open Zeppelin.pdf | EscrowDst | unmatched — not counted | — | — | no |
| 1inch Crosschain Fee v1.1_Open Zeppelin.pdf | EscrowDstZkSync | unmatched — not counted | — | — | no |
| 1inch Crosschain Fee v1.1_Open Zeppelin.pdf | EscrowFactory | unmatched — not counted | — | — | no |
| 1inch Crosschain Fee v1.1_Open Zeppelin.pdf | EscrowFactoryZkSync | unmatched — not counted | — | — | no |
| 1inch Crosschain Fee v1.1_Open Zeppelin.pdf | EscrowSrc | unmatched — not counted | — | — | no |
| 1inch Crosschain Fee v1.1_Open Zeppelin.pdf | EscrowSrcZkSync | unmatched — not counted | — | — | no |
| 1inch Crosschain Fee v1.1_Open Zeppelin.pdf | EscrowZkSync | unmatched — not counted | — | — | no |
| 1inch Crosschain Fee v1.1_Open Zeppelin.pdf | IBaseEscrow | unmatched — not counted | — | — | no |
| 1inch Crosschain Fee v1.1_Open Zeppelin.pdf | IEscrowFactory | unmatched — not counted | — | — | no |
| 1inch Crosschain Fee v1.1_Open Zeppelin.pdf | ImmutablesLib | unmatched — not counted | — | — | no |
| 1inch Crosschain Fee v1.1_Sherlock.pdf | BaseEscrow | unmatched — not counted | — | — | no |
| 1inch Crosschain Fee v1.1_Sherlock.pdf | BaseEscrowFactory | unmatched — not counted | — | — | no |
| 1inch Crosschain Fee v1.1_Sherlock.pdf | Escrow | unmatched — not counted | — | — | no |
| 1inch Crosschain Fee v1.1_Sherlock.pdf | EscrowDst | unmatched — not counted | — | — | no |
| 1inch Crosschain Fee v1.1_Sherlock.pdf | EscrowDstZkSync | unmatched — not counted | — | — | no |
| 1inch Crosschain Fee v1.1_Sherlock.pdf | EscrowFactory | unmatched — not counted | — | — | no |
| 1inch Crosschain Fee v1.1_Sherlock.pdf | EscrowFactoryContext | unmatched — not counted | — | — | no |
| 1inch Crosschain Fee v1.1_Sherlock.pdf | EscrowFactoryZkSync | unmatched — not counted | — | — | no |
| 1inch Crosschain Fee v1.1_Sherlock.pdf | EscrowSrc | unmatched — not counted | — | — | no |
| 1inch Crosschain Fee v1.1_Sherlock.pdf | EscrowSrcZkSync | unmatched — not counted | — | — | no |
| 1inch Crosschain Fee v1.1_Sherlock.pdf | EscrowZkSync | unmatched — not counted | — | — | no |
| 1inch Crosschain Fee v1.1_Sherlock.pdf | IBaseEscrow | unmatched — not counted | — | — | no |
| 1inch Crosschain Fee v1.1_Sherlock.pdf | IEscrow | unmatched — not counted | — | — | no |
| 1inch Crosschain Fee v1.1_Sherlock.pdf | IEscrowDst | unmatched — not counted | — | — | no |
| 1inch Crosschain Fee v1.1_Sherlock.pdf | IEscrowFactory | unmatched — not counted | — | — | no |
| 1inch Crosschain Fee v1.1_Sherlock.pdf | IEscrowSrc | unmatched — not counted | — | — | no |
| 1inch Crosschain Fee v1.1_Sherlock.pdf | IMerkleStorageInvalidator | unmatched — not counted | — | — | no |
| 1inch Crosschain Fee v1.1_Sherlock.pdf | IResolverExample | unmatched — not counted | — | — | no |
| 1inch Crosschain Fee v1.1_Sherlock.pdf | ImmutablesLib | unmatched — not counted | — | — | no |
| 1inch Crosschain Fee v1.1_Sherlock.pdf | MerkleStorageInvalidator | unmatched — not counted | — | — | no |
| 1inch Crosschain Fee v1.1_Sherlock.pdf | MinimalProxyZkSync | unmatched — not counted | — | — | no |
| 1inch Crosschain Fee v1.1_Sherlock.pdf | ProxyHashLib | unmatched — not counted | — | — | no |
| 1inch Crosschain Fee v1.1_Sherlock.pdf | TimelocksLib | unmatched — not counted | — | — | no |
| 1inch Crosschain Fee v1.1_Sherlock.pdf | ZkSyncLib | unmatched — not counted | — | — | no |
| Fee flow v1-AstraSec.pdf | SimpleSettlement | unmatched — not counted | — | listed in source code section | no |
| Fee flow v1-AstraSec.pdf | FeeTaker | unmatched — not counted | — | listed in source code section | no |
| Fee flow v1-AstraSec.pdf | AmountGetterWithFee | unmatched — not counted | — | listed in source code section | no |
| Fee flow v1-AstraSec.pdf | AmountGetterBase | unmatched — not counted | — | listed in source code section | no |
| Fee flow v1-Bailsec.pdf | AmountGetterBase | unmatched — not counted | — | listed in scope | no |
| Fee flow v1-Bailsec.pdf | AmountGetterWithFee | unmatched — not counted | — | listed in scope | no |
| Fee flow v1-Bailsec.pdf | FeeTaker | unmatched — not counted | — | listed in scope | no |
| Fee flow v1-Bailsec.pdf | SimpleSettlement | unmatched — not counted | — | listed in scope | no |
| Fee flow v1-ChainLight.pdf | SimpleSettlement | unmatched — not counted | — | listed in scope table | no |
| Fee flow v1-ChainLight.pdf | FeeTaker | unmatched — not counted | — | listed in scope table | no |
| Fee flow v1-ChainLight.pdf | AmountGetterWithFee | unmatched — not counted | — | listed in scope table | no |
| Fee flow v1-ChainLight.pdf | AmountGetterBase | unmatched — not counted | — | listed in scope table | no |
| Fee flow v1-Decurity.pdf | SimpleSettlement | unmatched — not counted | — | listed in scope | no |
| Fee flow v1-Decurity.pdf | FeeTaker | unmatched — not counted | — | listed in scope | no |
| Fee flow v1-Decurity.pdf | AmountGetterWithFee | unmatched — not counted | — | listed in scope | no |
| Fee flow v1-Decurity.pdf | AmountGetterBase | unmatched — not counted | — | listed in scope | no |
| Fee flow v1-Open Zepplin.pdf | SimpleSettlement | unmatched — not counted | — | listed in scope | no |
| Fee flow v1-Open Zepplin.pdf | AmountGetterBase | unmatched — not counted | — | listed in scope | no |
| Fee flow v1-Open Zepplin.pdf | AmountGetterWithFee | unmatched — not counted | — | listed in scope | no |
| Fee flow v1-Open Zepplin.pdf | FeeTaker | unmatched — not counted | — | listed in scope | no |
| Fee flow v1-Sherlock.pdf | SimpleSettlement | unmatched — not counted | — | listed in scope | no |
| Fee flow v1-Sherlock.pdf | AmountGetterBase | unmatched — not counted | — | listed in scope | no |
| Fee flow v1-Sherlock.pdf | AmountGetterWithFee | unmatched — not counted | — | listed in scope | no |
| Fee flow v1-Sherlock.pdf | FeeTaker | unmatched — not counted | — | listed in scope | no |
| 1inch FixedRateSwap_Ackee Blockchain.pdf | FixedRateSwap | unmatched — not counted | — | — | no |
| 1inch FixedRateSwap_Chainsulting.pdf | FixedRateSwap | unmatched — not counted | — | — | no |
| 1inch FixedRateSwap_CoinFabrik.pdf | FixedRateSwap | unmatched — not counted | — | — | no |
| 1inch FixedRateSwap_MixedBytes.pdf | FixedFeeSwap | unmatched — not counted | — | listed in scope and findings | no |
| 1inch FixedRateSwap_Pessimistic.pdf | FixedRateSwap | unmatched — not counted | — | — | no |
| 1inch Settlement v2.1_AstraSec.pdf | FeeTaker | unmatched — not counted | — | listed in source code section | no |
| 1inch Settlement v2.1_AstraSec.pdf | Settlement | unmatched — not counted | — | listed in source code section | no |
| 1inch Settlement v2.1_AstraSec.pdf | SimpleSettlement | unmatched — not counted | — | listed in source code section | no |
| 1inch Settlement v2.1_AstraSec.pdf | BaseExtension | unmatched — not counted | — | listed in source code section | no |
| 1inch Settlement v2.1_AstraSec.pdf | ExtensionLib | unmatched — not counted | — | listed in source code section | no |
| 1inch Settlement v2.1_AstraSec.pdf | IntegratorFeeExtension | unmatched — not counted | — | listed in source code section | no |
| 1inch Settlement v2.1_AstraSec.pdf | ResolverFeeExtension | unmatched — not counted | — | listed in source code section | no |
| 1inch Settlement v2.1_AstraSec.pdf | WhitelistExtension | unmatched — not counted | — | listed in source code section | no |
| 1inch Settlement v2.1_Decurity.pdf | FeeTaker | unmatched — not counted | — | Listed in scope and findings section | no |
| 1inch Settlement v2.1_Decurity.pdf | ExtensionLib | unmatched — not counted | — | Listed in scope and findings section | no |
| 1inch Settlement v2.1_Hexens.pdf | FeeTaker | unmatched — not counted | — | listed in scope and findings | no |
| 1inch Settlement v2.1_Open Zepplin.pdf | FeeTaker | unmatched — not counted | — | listed in scope | no |
| 1inch Settlement v2.1_Open Zepplin.pdf | Settlement | unmatched — not counted | — | listed in scope | no |
| 1inch Settlement v2.1_Open Zepplin.pdf | SimpleSettlement | unmatched — not counted | — | listed in scope | no |
| 1inch Settlement v2.1_Open Zepplin.pdf | BaseExtension | unmatched — not counted | — | listed in scope | no |
| 1inch Settlement v2.1_Open Zepplin.pdf | ExtensionLib | unmatched — not counted | — | listed in scope | no |
| 1inch Settlement v2.1_Open Zepplin.pdf | IntegratorFeeExtension | unmatched — not counted | — | listed in scope | no |
| 1inch Settlement v2.1_Open Zepplin.pdf | ResolverFeeExtension | unmatched — not counted | — | listed in scope | no |
| 1inch Settlement v2.1_Open Zepplin.pdf | WhitelistExtension | unmatched — not counted | — | listed in scope | no |
| 1inch Settlement v2.1_Pashov.pdf | FeeTaker | unmatched — not counted | — | listed in scope | no |
| 1inch Settlement v2.1_Pashov.pdf | Settlement | unmatched — not counted | — | listed in scope | no |
| 1inch Settlement v2.1_Pashov.pdf | SimpleSettlement | unmatched — not counted | — | listed in scope | no |
| 1inch Settlement v2.1_Pashov.pdf | BaseExtension | unmatched — not counted | — | listed in scope | no |
| 1inch Settlement v2.1_Pashov.pdf | ExtensionLib | unmatched — not counted | — | listed in scope | no |
| 1inch Settlement v2.1_Pashov.pdf | ResolverFeeExtension | unmatched — not counted | — | listed in scope | no |
| 1inch Settlement v2.1_Pashov.pdf | WhitelistExtension | unmatched — not counted | — | listed in scope | no |
| 1inch Settlement v2.1_Pashov.pdf | IntegratorFeeExtension | unmatched — not counted | — | listed in scope | no |
| 1inch Settlement v2.1_Pessemistic.pdf | SettlementExtension | unmatched — not counted | — | listed in scope | no |
| 1inch Settlement v2.1_Pessemistic.pdf | FeeBankCharger | unmatched — not counted | — | listed in scope | no |
| 1inch Settlement v2.1_Pessemistic.pdf | IFeeBankCharger | unmatched — not counted | — | listed in scope | no |
| 1inch Settlement v2.1_Pessemistic.pdf | Settlement | unmatched — not counted | — | listed in scope after update | no |
| 1inch Settlement v2.1_Pessemistic.pdf | SimpleSettlement | unmatched — not counted | — | listed in scope after update | no |
| 1inch Settlement v2.1_Pessemistic.pdf | BaseExtension | unmatched — not counted | — | listed in scope after update | no |
| 1inch Settlement v2.1_Pessemistic.pdf | ExtensionLib | unmatched — not counted | — | listed in scope after update | no |
| 1inch Settlement v2.1_Pessemistic.pdf | IntegratorFeeExtension | unmatched — not counted | — | listed in scope after update | no |
| 1inch Settlement v2.1_Pessemistic.pdf | ResolverFeeExtension | unmatched — not counted | — | listed in scope after update | no |
| 1inch Settlement v2.1_Pessemistic.pdf | WhitelistExtension | unmatched — not counted | — | listed in scope after update | no |
| 1inch Settlement v2_Decurity.pdf | SettlementExtension | unmatched — not counted | — | listed in scope section 2.2 | no |
| 1inch Settlement v2_Hexens.pdf | SettlementExtension | unmatched — not counted | — | listed in scope and finding path | no |
| 1inch Settlement v2_Open Zeppelin.pdf | SettlementExtension | unmatched — not counted | — | listed in scope | no |
| 1inch Settlement v2_Open Zeppelin.pdf | WhitelistRegistry | unmatched — not counted | — | listed in scope | no |
| 1inch Settlement v2_Peckshield.pdf | SettlementExtension | unmatched — not counted | — | listed in scope: 'this audit only covers the following contract – SettlementExtension.sol' | no |
| 1inch Settlement v2_Pessimistic.pdf | SettlementExtension | unmatched — not counted | — | listed in scope | no |
| 1inch Settlement v2_Pessimistic.pdf | FeeBankCharger | unmatched — not counted | — | listed in scope | no |
| 1inch Settlement v2_Pessimistic.pdf | IFeeBankCharger | unmatched — not counted | — | listed in scope | no |
| 1inch_FusionMode_ABDK.pdf | BasicDelegationPod | unmatched — not counted | — | — | no |
| 1inch_FusionMode_ABDK.pdf | BasicDelegationPodWithVotingPower | unmatched — not counted | — | — | no |
| 1inch_FusionMode_ABDK.pdf | DelegatedShare | unmatched — not counted | — | — | no |
| 1inch_FusionMode_ABDK.pdf | DynamicSuffix | unmatched — not counted | — | — | no |
| 1inch_FusionMode_ABDK.pdf | ERC20Pods | unmatched — not counted | — | — | no |
| 1inch_FusionMode_ABDK.pdf | FeeBank | unmatched — not counted | — | — | no |
| 1inch_FusionMode_ABDK.pdf | FeeBankCharger | unmatched — not counted | — | — | no |
| 1inch_FusionMode_ABDK.pdf | IDelegatedShare | unmatched — not counted | — | — | no |
| 1inch_FusionMode_ABDK.pdf | IDelegationPod | unmatched — not counted | — | — | no |
| 1inch_FusionMode_ABDK.pdf | IERC20Pods | unmatched — not counted | — | — | no |
| 1inch_FusionMode_ABDK.pdf | IFeeBank | unmatched — not counted | — | — | no |
| 1inch_FusionMode_ABDK.pdf | IFeeBankCharger | unmatched — not counted | — | — | no |
| 1inch_FusionMode_ABDK.pdf | IPod | unmatched — not counted | — | — | no |
| 1inch_FusionMode_ABDK.pdf | IResolver | unmatched — not counted | — | — | no |
| 1inch_FusionMode_ABDK.pdf | ISettlement | unmatched — not counted | — | — | no |
| 1inch_FusionMode_ABDK.pdf | IVotable | unmatched — not counted | — | — | no |
| 1inch_FusionMode_ABDK.pdf | IWhitelistRegistry | unmatched — not counted | — | — | no |
| 1inch_FusionMode_ABDK.pdf | OrderSaltParser | unmatched — not counted | — | — | no |
| 1inch_FusionMode_ABDK.pdf | Pod | unmatched — not counted | — | — | no |
| 1inch_FusionMode_ABDK.pdf | RewardableDelegationPod | unmatched — not counted | — | — | no |
| 1inch_FusionMode_ABDK.pdf | RewardableDelegationPodWithVotingPower | unmatched — not counted | — | — | no |
| 1inch_FusionMode_ABDK.pdf | Settlement | unmatched — not counted | — | — | no |
| 1inch_FusionMode_ABDK.pdf | St1inch | unmatched — not counted | — | — | no |
| 1inch_FusionMode_ABDK.pdf | VotingPowerCalculator | unmatched — not counted | — | — | no |
| 1inch_FusionMode_ABDK.pdf | WhitelistRegistry | unmatched — not counted | — | — | no |
| 1inch_FusionMode_ChainSecurity1.pdf | Address | unmatched — not counted | — | — | no |
| 1inch_FusionMode_ChainSecurity1.pdf | BasicDelegationPodWithVotingPower | unmatched — not counted | — | — | no |
| 1inch_FusionMode_ChainSecurity1.pdf | DynamicSuffix | unmatched — not counted | — | — | no |
| 1inch_FusionMode_ChainSecurity1.pdf | FeeBank | unmatched — not counted | — | — | no |
| 1inch_FusionMode_ChainSecurity1.pdf | FeeBankCharger | unmatched — not counted | — | — | no |
| 1inch_FusionMode_ChainSecurity1.pdf | IFeeBank | unmatched — not counted | — | — | no |
| 1inch_FusionMode_ChainSecurity1.pdf | IFeeBankCharger | unmatched — not counted | — | — | no |
| 1inch_FusionMode_ChainSecurity1.pdf | IResolver | unmatched — not counted | — | — | no |
| 1inch_FusionMode_ChainSecurity1.pdf | ISettlement | unmatched — not counted | — | — | no |
| 1inch_FusionMode_ChainSecurity1.pdf | IVotable | unmatched — not counted | — | — | no |
| 1inch_FusionMode_ChainSecurity1.pdf | IWhitelistRegistry | unmatched — not counted | — | — | no |
| 1inch_FusionMode_ChainSecurity1.pdf | OrderSaltParser | unmatched — not counted | — | — | no |
| 1inch_FusionMode_ChainSecurity1.pdf | ResolverMetadata | unmatched — not counted | — | — | no |
| 1inch_FusionMode_ChainSecurity1.pdf | RewardableDelegationPodWithVotingPower | unmatched — not counted | — | — | no |
| 1inch_FusionMode_ChainSecurity1.pdf | Settlement | unmatched — not counted | — | — | no |
| 1inch_FusionMode_ChainSecurity1.pdf | St1inch | unmatched — not counted | — | — | no |
| 1inch_FusionMode_ChainSecurity1.pdf | St1inchPreview | unmatched — not counted | — | — | no |
| 1inch_FusionMode_ChainSecurity1.pdf | VotingPowerCalculator | unmatched — not counted | — | — | no |
| 1inch_FusionMode_ChainSecurity1.pdf | WhitelistHelper | unmatched — not counted | — | — | no |
| 1inch_FusionMode_ChainSecurity1.pdf | WhitelistRegistry | unmatched — not counted | — | — | no |
| 1inch_FusionMode_ChainSecurity2.pdf | IDelegatedShare | unmatched — not counted | — | listed in scope table | no |
| 1inch_FusionMode_ChainSecurity2.pdf | IDelegationPod | unmatched — not counted | — | listed in scope table | no |
| 1inch_FusionMode_ChainSecurity2.pdf | IRewardableDelegationPod | unmatched — not counted | — | listed in scope table | no |
| 1inch_FusionMode_ChainSecurity2.pdf | BasicDelegationPod | unmatched — not counted | — | listed in scope table | no |
| 1inch_FusionMode_ChainSecurity2.pdf | DelegatedShare | unmatched — not counted | — | listed in scope table | no |
| 1inch_FusionMode_ChainSecurity2.pdf | RewardableDelegationPod | unmatched — not counted | — | listed in scope table | no |
| 1inch_FusionMode_ChainSecurity3.pdf | IERC20Pods | unmatched — not counted | — | listed in scope | no |
| 1inch_FusionMode_ChainSecurity3.pdf | IPod | unmatched — not counted | — | listed in scope | no |
| 1inch_FusionMode_ChainSecurity3.pdf | ERC20Pods | unmatched — not counted | — | listed in scope | no |
| 1inch_FusionMode_ChainSecurity3.pdf | Pod | unmatched — not counted | — | listed in scope | no |
| 1inch_FusionMode_ChainSecurity3.pdf | ReentrancyGuard | unmatched — not counted | — | listed in scope | no |
| 1inch_FusionMode_ChainSecurity3.pdf | AddressArray | unmatched — not counted | — | reviewed as part of scope | no |
| 1inch_FusionMode_ChainSecurity3.pdf | AddressSet | unmatched — not counted | — | reviewed as part of scope | no |
| 1inch_FusionMode_Decurity.pdf | Address | unmatched — not counted | — | — | no |
| 1inch_FusionMode_Decurity.pdf | DelegatedShare | unmatched — not counted | — | — | no |
| 1inch_FusionMode_Decurity.pdf | ERC20Pods | unmatched — not counted | — | — | no |
| 1inch_FusionMode_Decurity.pdf | FarmingDelegationPod | unmatched — not counted | — | — | no |
| 1inch_FusionMode_Decurity.pdf | FarmingPod | unmatched — not counted | — | — | no |
| 1inch_FusionMode_Decurity.pdf | FeeBank | unmatched — not counted | — | — | no |
| 1inch_FusionMode_Decurity.pdf | MultiFarmingPod | unmatched — not counted | — | — | no |
| 1inch_FusionMode_Decurity.pdf | OrderSaltParser | unmatched — not counted | — | — | no |
| 1inch_FusionMode_Decurity.pdf | St1inch | unmatched — not counted | — | — | no |
| 1inch_FusionMode_Decurity.pdf | StakingFarmingPod | unmatched — not counted | — | — | no |
| 1inch_FusionMode_Decurity.pdf | TokenizedDelegationPod | unmatched — not counted | — | — | no |
| 1inch_FusionMode_Decurity.pdf | VotingPowerCalculator | unmatched — not counted | — | — | no |
| 1inch_FusionMode_Decurity.pdf | WhitelistRegistry | unmatched — not counted | — | — | no |
| 1inch_FusionMode_Hexens.1.pdf | ERC20Pods | unmatched — not counted | — | — | no |
| 1inch_FusionMode_Hexens.1.pdf | Settlement | unmatched — not counted | — | — | no |
| 1inch_FusionMode_Hexens.1.pdf | St1inch | unmatched — not counted | — | — | no |
| 1inch_FusionMode_Hexens.1.pdf | WhitelistRegistry | unmatched — not counted | — | — | no |
| 1inch_FusionMode_Hexens.2.pdf | DelegatedShare | unmatched — not counted | — | — | no |
| 1inch_FusionMode_Hexens.2.pdf | ERC20Pods | unmatched — not counted | — | — | no |
| 1inch_FusionMode_Hexens.2.pdf | FeeBank | unmatched — not counted | — | — | no |
| 1inch_FusionMode_Hexens.2.pdf | IDelegatedShare | unmatched — not counted | — | — | no |
| 1inch_FusionMode_Hexens.2.pdf | IERC20Pods | unmatched — not counted | — | — | no |
| 1inch_FusionMode_Hexens.2.pdf | IFeeBank | unmatched — not counted | — | — | no |
| 1inch_FusionMode_Hexens.2.pdf | IFeeBankCharger | unmatched — not counted | — | — | no |
| 1inch_FusionMode_Hexens.2.pdf | IPod | unmatched — not counted | — | — | no |
| 1inch_FusionMode_Hexens.2.pdf | IVotable | unmatched — not counted | — | — | no |
| 1inch_FusionMode_Hexens.2.pdf | PowerPod | unmatched — not counted | — | — | no |
| 1inch_FusionMode_Hexens.2.pdf | RewardableDelegationPod | unmatched — not counted | — | — | no |
| 1inch_FusionMode_Hexens.2.pdf | RewardableDelegationPodWithVotingPower | unmatched — not counted | — | — | no |
| 1inch_FusionMode_Hexens.2.pdf | St1inch | unmatched — not counted | — | — | no |
| 1inch_FusionMode_Hexens.2.pdf | VotingPowerCalculator | unmatched — not counted | — | — | no |
| 1inch_FusionMode_OpenZepplin.1.pdf | DynamicSuffix | unmatched — not counted | — | — | no |
| 1inch_FusionMode_OpenZepplin.1.pdf | FeeBank | unmatched — not counted | — | — | no |
| 1inch_FusionMode_OpenZepplin.1.pdf | FeeBankCharger | unmatched — not counted | — | — | no |
| 1inch_FusionMode_OpenZepplin.1.pdf | IFeeBank | unmatched — not counted | — | — | no |
| 1inch_FusionMode_OpenZepplin.1.pdf | IFeeBankCharger | unmatched — not counted | — | — | no |
| 1inch_FusionMode_OpenZepplin.1.pdf | IResolver | unmatched — not counted | — | — | no |
| 1inch_FusionMode_OpenZepplin.1.pdf | ISettlement | unmatched — not counted | — | — | no |
| 1inch_FusionMode_OpenZepplin.1.pdf | ISt1inch | unmatched — not counted | — | — | no |
| 1inch_FusionMode_OpenZepplin.1.pdf | IVotable | unmatched — not counted | — | — | no |
| 1inch_FusionMode_OpenZepplin.1.pdf | OrderSaltParser | unmatched — not counted | — | — | no |
| 1inch_FusionMode_OpenZepplin.1.pdf | OrderSuffix | unmatched — not counted | — | — | no |
| 1inch_FusionMode_OpenZepplin.1.pdf | PowerPod | unmatched — not counted | — | — | no |
| 1inch_FusionMode_OpenZepplin.1.pdf | ResolverMetadata | unmatched — not counted | — | — | no |
| 1inch_FusionMode_OpenZepplin.1.pdf | Settlement | unmatched — not counted | — | — | no |
| 1inch_FusionMode_OpenZepplin.1.pdf | St1inch | unmatched — not counted | — | — | no |
| 1inch_FusionMode_OpenZepplin.1.pdf | St1inchPreview | unmatched — not counted | — | — | no |
| 1inch_FusionMode_OpenZepplin.1.pdf | StakingFarmingPod | unmatched — not counted | — | — | no |
| 1inch_FusionMode_OpenZepplin.1.pdf | TakingFee | unmatched — not counted | — | — | no |
| 1inch_FusionMode_OpenZepplin.1.pdf | TokensAndAmounts | unmatched — not counted | — | — | no |
| 1inch_FusionMode_OpenZepplin.1.pdf | VotingPowerCalculator | unmatched — not counted | — | — | no |
| 1inch_FusionMode_OpenZepplin.1.pdf | WhitelistHelper | unmatched — not counted | — | — | no |
| 1inch_FusionMode_OpenZepplin.1.pdf | WhitelistRegistry | unmatched — not counted | — | — | no |
| 1inch_FusionMode_OpenZepplin.2.pdf | ERC20Pods | unmatched — not counted | — | listed in scope | no |
| 1inch_FusionMode_OpenZepplin.2.pdf | Pod | unmatched — not counted | — | listed in scope | no |
| 1inch_FusionMode_OpenZepplin.2.pdf | IERC20Pods | unmatched — not counted | — | listed in scope | no |
| 1inch_FusionMode_OpenZepplin.2.pdf | IPod | unmatched — not counted | — | listed in scope | no |
| 1inch_FusionMode_OpenZepplin.2.pdf | ReentrancyGuard | unmatched — not counted | — | listed in scope | no |
| 1inch_FusionMode_OpenZepplin.2.pdf | DelegatedShare | unmatched — not counted | — | listed in scope | no |
| 1inch_FusionMode_OpenZepplin.2.pdf | DelegationPod | unmatched — not counted | — | listed in scope | no |
| 1inch_FusionMode_OpenZepplin.2.pdf | FarmingDelegationPod | unmatched — not counted | — | listed in scope | no |
| 1inch_FusionMode_OpenZepplin.2.pdf | TokenizedDelegationPod | unmatched — not counted | — | listed in scope | no |
| 1inch_FusionMode_OpenZepplin.2.pdf | IDelegatedShare | unmatched — not counted | — | listed in scope | no |
| 1inch_FusionMode_OpenZepplin.2.pdf | IDelegationPod | unmatched — not counted | — | listed in scope | no |
| 1inch_FusionMode_OpenZepplin.2.pdf | IFarmingDelegationPod | unmatched — not counted | — | listed in scope | no |
| 1inch_FusionMode_OpenZepplin.2.pdf | ITokenizedDelegationPod | unmatched — not counted | — | listed in scope | no |
| 1inch_FusionMode_Oxorio.pdf | BasicDelegationPod | unmatched — not counted | — | — | no |
| 1inch_FusionMode_Oxorio.pdf | DelegatedShare | unmatched — not counted | — | — | no |
| 1inch_FusionMode_Oxorio.pdf | ERC20Pods | unmatched — not counted | — | — | no |
| 1inch_FusionMode_Oxorio.pdf | FeeBank | unmatched — not counted | — | — | no |
| 1inch_FusionMode_Oxorio.pdf | RewardableDelegationPod | unmatched — not counted | — | — | no |
| 1inch_FusionMode_Oxorio.pdf | Settlement | unmatched — not counted | — | — | no |
| 1inch_FusionMode_Oxorio.pdf | St1Inch | unmatched — not counted | — | — | no |
| 1inch_FusionMode_Oxorio.pdf | WhitelistRegistry | unmatched — not counted | — | — | no |
| 1inch_FusionMode_Peckshield.pdf | BasicDelegationPod | unmatched — not counted | — | — | no |
| 1inch_FusionMode_Peckshield.pdf | DelegatedShare | unmatched — not counted | — | — | no |
| 1inch_FusionMode_Peckshield.pdf | ERC20Pods | unmatched — not counted | — | — | no |
| 1inch_FusionMode_Peckshield.pdf | IVotable | unmatched — not counted | — | — | no |
| 1inch_FusionMode_Peckshield.pdf | Ownable | unmatched — not counted | — | — | no |
| 1inch_FusionMode_Peckshield.pdf | RewardableDelegationPod | unmatched — not counted | — | — | no |
| 1inch_FusionMode_Peckshield.pdf | Settlement | unmatched — not counted | — | — | no |
| 1inch_FusionMode_Peckshield.pdf | St1inch | unmatched — not counted | — | — | no |
| 1inch_FusionMode_Peckshield.pdf | VotingPowerCalculator | unmatched — not counted | — | — | no |
| 1inch_FusionMode_Peckshield.pdf | WhitelistRegistry | unmatched — not counted | — | — | no |
| 1inch_FusionMode_Pessimistic.pdf | AddressLib | unmatched — not counted | — | — | no |
| 1inch_FusionMode_Pessimistic.pdf | BasicDelegationPod | unmatched — not counted | — | — | no |
| 1inch_FusionMode_Pessimistic.pdf | DelegatedShare | unmatched — not counted | — | — | no |
| 1inch_FusionMode_Pessimistic.pdf | ERC20Pods | unmatched — not counted | — | — | no |
| 1inch_FusionMode_Pessimistic.pdf | FarmingDelegationPod | unmatched — not counted | — | — | no |
| 1inch_FusionMode_Pessimistic.pdf | IERC20Pods | unmatched — not counted | — | — | no |
| 1inch_FusionMode_Pessimistic.pdf | ITokenizedDelegationPod | unmatched — not counted | — | — | no |
| 1inch_FusionMode_Pessimistic.pdf | OrderSuffix | unmatched — not counted | — | — | no |
| 1inch_FusionMode_Pessimistic.pdf | Pod | unmatched — not counted | — | — | no |
| 1inch_FusionMode_Pessimistic.pdf | RewardableDelegationPod | unmatched — not counted | — | — | no |
| 1inch_FusionMode_Pessimistic.pdf | Settlement | unmatched — not counted | — | — | no |
| 1inch_FusionMode_Pessimistic.pdf | St1inch | unmatched — not counted | — | — | no |
| 1inch_FusionMode_Pessimistic.pdf | TakingFee | unmatched — not counted | — | — | no |
| 1inch_FusionMode_Pessimistic.pdf | TokenizedDelegationPod | unmatched — not counted | — | — | no |
| 1inch_FusionMode_Pessimistic.pdf | VotingPowerCalculator | unmatched — not counted | — | — | no |
| 1inch_FusionMode_Pessimistic.pdf | WhitelistChecker | unmatched — not counted | — | — | no |
| 1inch_FusionMode_Pessimistic.pdf | WhitelistRegistry | unmatched — not counted | — | — | no |
| 1inch_FusionMode_iosiro.pdf | BasicDelegationPod | unmatched — not counted | — | — | no |
| 1inch_FusionMode_iosiro.pdf | BasicDelegationTopicWithVotingPower | unmatched — not counted | — | — | no |
| 1inch_FusionMode_iosiro.pdf | DelegatedShare | unmatched — not counted | — | — | no |
| 1inch_FusionMode_iosiro.pdf | ERC20Pods | unmatched — not counted | — | — | no |
| 1inch_FusionMode_iosiro.pdf | FeeBank | unmatched — not counted | — | — | no |
| 1inch_FusionMode_iosiro.pdf | OrderSaltParser | unmatched — not counted | — | — | no |
| 1inch_FusionMode_iosiro.pdf | Pod | unmatched — not counted | — | — | no |
| 1inch_FusionMode_iosiro.pdf | RewardableDelegationPod | unmatched — not counted | — | — | no |
| 1inch_FusionMode_iosiro.pdf | RewardableDelegationTopicWithVotingPower | unmatched — not counted | — | — | no |
| 1inch_FusionMode_iosiro.pdf | Settlement | unmatched — not counted | — | — | no |
| 1inch_FusionMode_iosiro.pdf | St1inch | unmatched — not counted | — | — | no |
| 1inch_FusionMode_iosiro.pdf | VotingPowerCalculator | unmatched — not counted | — | — | no |
| 1inch_FusionMode_iosiro.pdf | WhitelistChecker | unmatched — not counted | — | — | no |
| 1inch_FusionMode_iosiro.pdf | WhitelistRegistry | unmatched — not counted | — | — | no |
| 1inch_TokenPlugins-Pashov.pdf | Plugin | unmatched — not counted | — | listed in scope section | no |
| 1inch_TokenPlugins-Pashov.pdf | ERC20Plugins | unmatched — not counted | — | listed in scope section | no |
| 1Inch Limit Order Protocol_ABDK.pdf | AmountCalculator | unmatched — not counted | — | — | no |
| 1Inch Limit Order Protocol_ABDK.pdf | ArgumentDecoder | unmatched — not counted | — | — | no |
| 1Inch Limit Order Protocol_ABDK.pdf | ChainlinkCalculator | unmatched — not counted | — | — | no |
| 1Inch Limit Order Protocol_ABDK.pdf | LimitOrderProtocol | unmatched — not counted | — | — | no |
| 1Inch Limit Order Protocol_ABDK.pdf | NonceManager | unmatched — not counted | — | — | no |
| 1Inch Limit Order Protocol_ABDK.pdf | OrderMixin | unmatched — not counted | — | — | no |
| 1Inch Limit Order Protocol_ABDK.pdf | OrderRFQMixin | unmatched — not counted | — | — | no |
| 1Inch Limit Order Protocol_ABDK.pdf | Permitable | unmatched — not counted | — | — | no |
| 1Inch Limit Order Protocol_ABDK.pdf | PredicateHelper | unmatched — not counted | — | — | no |
| 1Inch Limit Order Protocol_ABDK.pdf | RevertReasonParser | unmatched — not counted | — | — | no |
| 1Inch Limit Order Protocol_Chainsulting.pdf | AggregatorInterface | unmatched — not counted | — | — | no |
| 1Inch Limit Order Protocol_Chainsulting.pdf | AmountCalculator | unmatched — not counted | — | — | no |
| 1Inch Limit Order Protocol_Chainsulting.pdf | ArgumentsDecoder | unmatched — not counted | — | — | no |
| 1Inch Limit Order Protocol_Chainsulting.pdf | ChainlinkCalculator | unmatched — not counted | — | — | no |
| 1Inch Limit Order Protocol_Chainsulting.pdf | ERC1155Proxy | unmatched — not counted | — | — | no |
| 1Inch Limit Order Protocol_Chainsulting.pdf | ERC721Proxy | unmatched — not counted | — | — | no |
| 1Inch Limit Order Protocol_Chainsulting.pdf | ERC721ProxySafe | unmatched — not counted | — | — | no |
| 1Inch Limit Order Protocol_Chainsulting.pdf | IDaiLikePermit | unmatched — not counted | — | — | no |
| 1Inch Limit Order Protocol_Chainsulting.pdf | ImmutableOwner | unmatched — not counted | — | — | no |
| 1Inch Limit Order Protocol_Chainsulting.pdf | InteractiveNotificationReceiver | unmatched — not counted | — | — | no |
| 1Inch Limit Order Protocol_Chainsulting.pdf | LimitOrderProtocol | unmatched — not counted | — | — | no |
| 1Inch Limit Order Protocol_Chainsulting.pdf | NonceManager | unmatched — not counted | — | — | no |
| 1Inch Limit Order Protocol_Chainsulting.pdf | OrderMixin | unmatched — not counted | — | — | no |
| 1Inch Limit Order Protocol_Chainsulting.pdf | OrderRFQMixin | unmatched — not counted | — | — | no |
| 1Inch Limit Order Protocol_Chainsulting.pdf | Permitable | unmatched — not counted | — | — | no |
| 1Inch Limit Order Protocol_Chainsulting.pdf | PredicateHelper | unmatched — not counted | — | — | no |
| 1Inch Limit Order Protocol_Chainsulting.pdf | RevertReasonParser | unmatched — not counted | — | — | no |
| 1Inch Limit Order Protocol_CoinFabrik.pdf | AmountCalculator | unmatched — not counted | — | — | no |
| 1Inch Limit Order Protocol_CoinFabrik.pdf | ArgumentsDecoder | unmatched — not counted | — | — | no |
| 1Inch Limit Order Protocol_CoinFabrik.pdf | ERC1155Proxy | unmatched — not counted | — | — | no |
| 1Inch Limit Order Protocol_CoinFabrik.pdf | ERC20Proxy | unmatched — not counted | — | — | no |
| 1Inch Limit Order Protocol_CoinFabrik.pdf | ERC721Proxy | unmatched — not counted | — | — | no |
| 1Inch Limit Order Protocol_CoinFabrik.pdf | IEIP1271 | unmatched — not counted | — | — | no |
| 1Inch Limit Order Protocol_CoinFabrik.pdf | ImmutableOwner | unmatched — not counted | — | — | no |
| 1Inch Limit Order Protocol_CoinFabrik.pdf | InteractiveMaker | unmatched — not counted | — | — | no |
| 1Inch Limit Order Protocol_CoinFabrik.pdf | LimitOrderProtocol | unmatched — not counted | — | — | no |
| 1Inch Limit Order Protocol_CoinFabrik.pdf | NonceManager | unmatched — not counted | — | — | no |
| 1Inch Limit Order Protocol_CoinFabrik.pdf | PredicateHelper | unmatched — not counted | — | — | no |
| 1Inch Limit Order Protocol_CoinFabrik.pdf | SilentECDSA | unmatched — not counted | — | — | no |
| 1Inch Limit Order Protocol_CoinFabrik.pdf | UncheckedAddress | unmatched — not counted | — | — | no |
| 1Inch Limit Order Protocol_IgorGulamov.pdf | ChainlinkCalculator | unmatched — not counted | — | mentioned in warnings | no |
| 1Inch Limit Order Protocol_IgorGulamov.pdf | ERC721Proxy | unmatched — not counted | — | mentioned in warnings | no |
| 1Inch Limit Order Protocol_IgorGulamov.pdf | ERC721ProxySafe | unmatched — not counted | — | mentioned in warnings | no |
| 1Inch Limit Order Protocol_IgorGulamov.pdf | ERC1155Proxy | unmatched — not counted | — | mentioned in warnings | no |
| 1Inch Limit Order Protocol_IgorGulamov.pdf | PredicateHelper | unmatched — not counted | — | mentioned in warnings | no |
| 1Inch Limit Order Protocol_MixBytes.pdf | AggregatorInterface | unmatched — not counted | — | — | no |
| 1Inch Limit Order Protocol_MixBytes.pdf | AmountCalculator | unmatched — not counted | — | — | no |
| 1Inch Limit Order Protocol_MixBytes.pdf | ArgumentsDecoder | unmatched — not counted | — | — | no |
| 1Inch Limit Order Protocol_MixBytes.pdf | ChainlinkCalculator | unmatched — not counted | — | — | no |
| 1Inch Limit Order Protocol_MixBytes.pdf | IDaiLikePermit | unmatched — not counted | — | — | no |
| 1Inch Limit Order Protocol_MixBytes.pdf | InteractiveNotificationReceiver | unmatched — not counted | — | — | no |
| 1Inch Limit Order Protocol_MixBytes.pdf | LimitOrderProtocol | unmatched — not counted | — | — | no |
| 1Inch Limit Order Protocol_MixBytes.pdf | NonceManager | unmatched — not counted | — | — | no |
| 1Inch Limit Order Protocol_MixBytes.pdf | OrderMixin | unmatched — not counted | — | — | no |
| 1Inch Limit Order Protocol_MixBytes.pdf | OrderRFQMixin | unmatched — not counted | — | — | no |
| 1Inch Limit Order Protocol_MixBytes.pdf | Permitable | unmatched — not counted | — | — | no |
| 1Inch Limit Order Protocol_MixBytes.pdf | PredicateHelper | unmatched — not counted | — | — | no |
| 1Inch Limit Order Protocol_MixBytes.pdf | RevertReasonParser | unmatched — not counted | — | — | no |
| 1inch Limit Order Portocol_Certik.pdf | AmountCalculator | unmatched — not counted | — | — | no |
| 1inch Limit Order Portocol_Certik.pdf | ArgumentsDecoder | unmatched — not counted | — | — | no |
| 1inch Limit Order Portocol_Certik.pdf | ChainlinkCalculator | unmatched — not counted | — | — | no |
| 1inch Limit Order Portocol_Certik.pdf | ERC1155Proxy | unmatched — not counted | — | — | no |
| 1inch Limit Order Portocol_Certik.pdf | ERC721Proxy | unmatched — not counted | — | — | no |
| 1inch Limit Order Portocol_Certik.pdf | ERC721ProxySafe | unmatched — not counted | — | — | no |
| 1inch Limit Order Portocol_Certik.pdf | ImmutableOwner | unmatched — not counted | — | — | no |
| 1inch Limit Order Portocol_Certik.pdf | LimitOrderProtocol | unmatched — not counted | — | — | no |
| 1inch Limit Order Portocol_Certik.pdf | NonceManager | unmatched — not counted | — | — | no |
| 1inch Limit Order Portocol_Certik.pdf | OrderMixin | unmatched — not counted | — | — | no |
| 1inch Limit Order Portocol_Certik.pdf | OrderRFQMixin | unmatched — not counted | — | — | no |
| 1inch Limit Order Portocol_Certik.pdf | Permitable | unmatched — not counted | — | — | no |
| 1inch Limit Order Portocol_Certik.pdf | PredicateHelper | unmatched — not counted | — | — | no |
| 1inch Limit Order Portocol_Certik.pdf | RevertReasonParser | unmatched — not counted | — | — | no |
| ABDK - 1inch Limit Order Protocol audit.pdf | AmountCalculator | unmatched — not counted | — | — | no |
| ABDK - 1inch Limit Order Protocol audit.pdf | ArgumentsDecoder | unmatched — not counted | — | — | no |
| ABDK - 1inch Limit Order Protocol audit.pdf | ERC1155Proxy | unmatched — not counted | — | — | no |
| ABDK - 1inch Limit Order Protocol audit.pdf | ERC20Proxy | unmatched — not counted | — | — | no |
| ABDK - 1inch Limit Order Protocol audit.pdf | ERC721Proxy | unmatched — not counted | — | — | no |
| ABDK - 1inch Limit Order Protocol audit.pdf | ImmutableOwner | unmatched — not counted | — | — | no |
| ABDK - 1inch Limit Order Protocol audit.pdf | InteractiveMaker | unmatched — not counted | — | — | no |
| ABDK - 1inch Limit Order Protocol audit.pdf | LimitOrderProtocol | unmatched — not counted | — | — | no |
| ABDK - 1inch Limit Order Protocol audit.pdf | NonceManager | unmatched — not counted | — | — | no |
| ABDK - 1inch Limit Order Protocol audit.pdf | PredicateHelper | unmatched — not counted | — | — | no |
| ABDK - 1inch Limit Order Protocol audit.pdf | UncheckedAddress | unmatched — not counted | — | — | no |
| Chainsulting - 1inch Limit Order Protocol audit.pdf | LimitOrderProtocol | unmatched — not counted | — | — | no |
| Coinfabrik - 1inch Limit Order Protocol audit.pdf | AmountCalculator | unmatched — not counted | — | — | no |
| Coinfabrik - 1inch Limit Order Protocol audit.pdf | ArgumentsDecoder | unmatched — not counted | — | — | no |
| Coinfabrik - 1inch Limit Order Protocol audit.pdf | ERC1155Proxy | unmatched — not counted | — | — | no |
| Coinfabrik - 1inch Limit Order Protocol audit.pdf | ERC20Proxy | unmatched — not counted | — | — | no |
| Coinfabrik - 1inch Limit Order Protocol audit.pdf | ERC721Proxy | unmatched — not counted | — | — | no |
| Coinfabrik - 1inch Limit Order Protocol audit.pdf | IEIP1271 | unmatched — not counted | — | — | no |
| Coinfabrik - 1inch Limit Order Protocol audit.pdf | ImmutableOwner | unmatched — not counted | — | — | no |
| Coinfabrik - 1inch Limit Order Protocol audit.pdf | InteractiveMaker | unmatched — not counted | — | — | no |
| Coinfabrik - 1inch Limit Order Protocol audit.pdf | LimitOrderProtocol | unmatched — not counted | — | — | no |
| Coinfabrik - 1inch Limit Order Protocol audit.pdf | NonceManager | unmatched — not counted | — | — | no |
| Coinfabrik - 1inch Limit Order Protocol audit.pdf | PredicateHelper | unmatched — not counted | — | — | no |
| Coinfabrik - 1inch Limit Order Protocol audit.pdf | UncheckedAddress | unmatched — not counted | — | — | no |
| Coinspect - 1inch Limit Order Protocol audit.pdf | AmountCalculator | unmatched — not counted | — | — | no |
| Coinspect - 1inch Limit Order Protocol audit.pdf | ArgumentsDecoder | unmatched — not counted | — | — | no |
| Coinspect - 1inch Limit Order Protocol audit.pdf | ERC1155Proxy | unmatched — not counted | — | — | no |
| Coinspect - 1inch Limit Order Protocol audit.pdf | ERC20Proxy | unmatched — not counted | — | — | no |
| Coinspect - 1inch Limit Order Protocol audit.pdf | ERC721Proxy | unmatched — not counted | — | — | no |
| Coinspect - 1inch Limit Order Protocol audit.pdf | IEIP1271 | unmatched — not counted | — | — | no |
| Coinspect - 1inch Limit Order Protocol audit.pdf | ImmutableOwner | unmatched — not counted | — | — | no |
| Coinspect - 1inch Limit Order Protocol audit.pdf | InteractiveMaker | unmatched — not counted | — | — | no |
| Coinspect - 1inch Limit Order Protocol audit.pdf | LimitOrderProtocol | unmatched — not counted | — | — | no |
| Coinspect - 1inch Limit Order Protocol audit.pdf | NonceManager | unmatched — not counted | — | — | no |
| Coinspect - 1inch Limit Order Protocol audit.pdf | PredicateHelper | unmatched — not counted | — | — | no |
| Coinspect - 1inch Limit Order Protocol audit.pdf | TokenMock | unmatched — not counted | — | — | no |
| Coinspect - 1inch Limit Order Protocol audit.pdf | UncheckedAddress | unmatched — not counted | — | — | no |
| LimitSwap audit.pdf | LimitSwap | unmatched — not counted | — | Scope section: 'Flatten version of LimitSwap.sol' | no |
| LimitSwap audit.pdf | ERC20Proxy | unmatched — not counted | — | Contract defined in report text | no |
| LimitSwap audit.pdf | ERC721Proxy | unmatched — not counted | — | Contract defined in report text | no |
| LimitSwap audit.pdf | ERC1155Proxy | unmatched — not counted | — | Contract defined in report text | no |
| LimitSwap audit.pdf | ArrayParser | unmatched — not counted | — | Library defined in report text | no |
| LimitSwap audit.pdf | GetMakerAmountHelper | unmatched — not counted | — | Contract defined in report text | no |
| Pessimistic - 1inch Limit Order Protocol audit.pdf | AmountCalculator | unmatched — not counted | — | — | no |
| Pessimistic - 1inch Limit Order Protocol audit.pdf | LimitOrderProtocol | unmatched — not counted | — | — | no |
| Pessimistic - 1inch Limit Order Protocol audit.pdf | PredicateHelper | unmatched — not counted | — | — | no |
| Certik - 1inch Liquidity Protocol audit.pdf | BalanceAccounting | unmatched — not counted | — | — | no |
| Certik - 1inch Liquidity Protocol audit.pdf | BaseGovernanceModule | unmatched — not counted | — | — | no |
| Certik - 1inch Liquidity Protocol audit.pdf | Converter | unmatched — not counted | — | — | no |
| Certik - 1inch Liquidity Protocol audit.pdf | GovernanceFeeReceiver | unmatched — not counted | — | — | no |
| Certik - 1inch Liquidity Protocol audit.pdf | GovernanceMothership | unmatched — not counted | — | — | no |
| Certik - 1inch Liquidity Protocol audit.pdf | IGovernanceModule | unmatched — not counted | — | — | no |
| Certik - 1inch Liquidity Protocol audit.pdf | IMooniswapDeployer | unmatched — not counted | — | — | no |
| Certik - 1inch Liquidity Protocol audit.pdf | IMooniswapFactory | unmatched — not counted | — | — | no |
| Certik - 1inch Liquidity Protocol audit.pdf | IMooniswapFactoryGovernance | unmatched — not counted | — | — | no |
| Certik - 1inch Liquidity Protocol audit.pdf | IReferralFeeReceiver | unmatched — not counted | — | — | no |
| Certik - 1inch Liquidity Protocol audit.pdf | LiquidVoting | unmatched — not counted | — | — | no |
| Certik - 1inch Liquidity Protocol audit.pdf | Mooniswap | unmatched — not counted | — | — | no |
| Certik - 1inch Liquidity Protocol audit.pdf | MooniswapConstants | unmatched — not counted | — | — | no |
| Certik - 1inch Liquidity Protocol audit.pdf | MooniswapDeployer | unmatched — not counted | — | — | no |
| Certik - 1inch Liquidity Protocol audit.pdf | MooniswapFactory | unmatched — not counted | — | — | no |
| Certik - 1inch Liquidity Protocol audit.pdf | MooniswapFactoryGovernance | unmatched — not counted | — | — | no |
| Certik - 1inch Liquidity Protocol audit.pdf | MooniswapGovernance | unmatched — not counted | — | — | no |
| Certik - 1inch Liquidity Protocol audit.pdf | ReferralFeeReceiver | unmatched — not counted | — | — | no |
| Certik - 1inch Liquidity Protocol audit.pdf | RewardDistributionRecipient | unmatched — not counted | — | — | no |
| Certik - 1inch Liquidity Protocol audit.pdf | Rewards | unmatched — not counted | — | — | no |
| Certik - 1inch Liquidity Protocol audit.pdf | Sqrt | unmatched — not counted | — | — | no |
| Certik - 1inch Liquidity Protocol audit.pdf | UniERC20 | unmatched — not counted | — | — | no |
| Certik - 1inch Liquidity Protocol audit.pdf | VirtualBalance | unmatched — not counted | — | — | no |
| Certik - 1inch Liquidity Protocol audit.pdf | Vote | unmatched — not counted | — | — | no |
| Chainsulting - 1inch Liquidity Protocol Audit.pdf | BalanceAccounting | unmatched — not counted | — | — | no |
| Chainsulting - 1inch Liquidity Protocol Audit.pdf | BaseGovernanceModule | unmatched — not counted | — | — | no |
| Chainsulting - 1inch Liquidity Protocol Audit.pdf | Converter | unmatched — not counted | — | — | no |
| Chainsulting - 1inch Liquidity Protocol Audit.pdf | ERC20Permit | unmatched — not counted | — | — | no |
| Chainsulting - 1inch Liquidity Protocol Audit.pdf | GovernanceFeeReceiver | unmatched — not counted | — | — | no |
| Chainsulting - 1inch Liquidity Protocol Audit.pdf | GovernanceMothership | unmatched — not counted | — | — | no |
| Chainsulting - 1inch Liquidity Protocol Audit.pdf | IGovernanceModule | unmatched — not counted | — | — | no |
| Chainsulting - 1inch Liquidity Protocol Audit.pdf | IMooniswapDeployer | unmatched — not counted | — | — | no |
| Chainsulting - 1inch Liquidity Protocol Audit.pdf | IMooniswapFactoryGovernance | unmatched — not counted | — | — | no |
| Chainsulting - 1inch Liquidity Protocol Audit.pdf | IReferralFeeReceiver | unmatched — not counted | — | — | no |
| Chainsulting - 1inch Liquidity Protocol Audit.pdf | IRewardDistributionRecipient | unmatched — not counted | — | — | no |
| Chainsulting - 1inch Liquidity Protocol Audit.pdf | LiquidVoting | unmatched — not counted | — | — | no |
| Chainsulting - 1inch Liquidity Protocol Audit.pdf | Mooniswap | unmatched — not counted | — | — | no |
| Chainsulting - 1inch Liquidity Protocol Audit.pdf | MooniswapConstants | unmatched — not counted | — | — | no |
| Chainsulting - 1inch Liquidity Protocol Audit.pdf | MooniswapDeployer | unmatched — not counted | — | — | no |
| Chainsulting - 1inch Liquidity Protocol Audit.pdf | MooniswapFactory | unmatched — not counted | — | — | no |
| Chainsulting - 1inch Liquidity Protocol Audit.pdf | MooniswapFactoryGovernance | unmatched — not counted | — | — | no |
| Chainsulting - 1inch Liquidity Protocol Audit.pdf | MooniswapGovernance | unmatched — not counted | — | — | no |
| Chainsulting - 1inch Liquidity Protocol Audit.pdf | ReferralFeeReceiver | unmatched — not counted | — | — | no |
| Chainsulting - 1inch Liquidity Protocol Audit.pdf | Rewards | unmatched — not counted | — | — | no |
| Chainsulting - 1inch Liquidity Protocol Audit.pdf | Sqrt | unmatched — not counted | — | — | no |
| Chainsulting - 1inch Liquidity Protocol Audit.pdf | UniERC20 | unmatched — not counted | — | — | no |
| Chainsulting - 1inch Liquidity Protocol Audit.pdf | VirtualBalance | unmatched — not counted | — | — | no |
| Chainsulting - 1inch Liquidity Protocol Audit.pdf | Vote | unmatched — not counted | — | — | no |
| Coinfabrik - 1inch Liquidity Protocol Audit.pdf | BalanceAccounting | unmatched — not counted | — | — | no |
| Coinfabrik - 1inch Liquidity Protocol Audit.pdf | BaseGovernanceModule | unmatched — not counted | — | — | no |
| Coinfabrik - 1inch Liquidity Protocol Audit.pdf | Converter | unmatched — not counted | — | — | no |
| Coinfabrik - 1inch Liquidity Protocol Audit.pdf | GovernanceFeeReceiver | unmatched — not counted | — | — | no |
| Coinfabrik - 1inch Liquidity Protocol Audit.pdf | GovernanceMothership | unmatched — not counted | — | — | no |
| Coinfabrik - 1inch Liquidity Protocol Audit.pdf | IGovernanceModule | unmatched — not counted | — | — | no |
| Coinfabrik - 1inch Liquidity Protocol Audit.pdf | IMooniswapDeployer | unmatched — not counted | — | — | no |
| Coinfabrik - 1inch Liquidity Protocol Audit.pdf | IMooniswapFactoryGovernance | unmatched — not counted | — | — | no |
| Coinfabrik - 1inch Liquidity Protocol Audit.pdf | IReferralFeeReceiver | unmatched — not counted | — | — | no |
| Coinfabrik - 1inch Liquidity Protocol Audit.pdf | IRewardDistributionRecipient | unmatched — not counted | — | — | no |
| Coinfabrik - 1inch Liquidity Protocol Audit.pdf | LiquidVoting | unmatched — not counted | — | — | no |
| Coinfabrik - 1inch Liquidity Protocol Audit.pdf | Mooniswap | unmatched — not counted | — | — | no |
| Coinfabrik - 1inch Liquidity Protocol Audit.pdf | MooniswapConstants | unmatched — not counted | — | — | no |
| Coinfabrik - 1inch Liquidity Protocol Audit.pdf | MooniswapDeployer | unmatched — not counted | — | — | no |
| Coinfabrik - 1inch Liquidity Protocol Audit.pdf | MooniswapFactory | unmatched — not counted | — | — | no |
| Coinfabrik - 1inch Liquidity Protocol Audit.pdf | MooniswapFactoryGovernance | unmatched — not counted | — | — | no |
| Coinfabrik - 1inch Liquidity Protocol Audit.pdf | MooniswapGovernance | unmatched — not counted | — | — | no |
| Coinfabrik - 1inch Liquidity Protocol Audit.pdf | ReferralFeeReceiver | unmatched — not counted | — | — | no |
| Coinfabrik - 1inch Liquidity Protocol Audit.pdf | Rewards | unmatched — not counted | — | — | no |
| Coinfabrik - 1inch Liquidity Protocol Audit.pdf | Sqrt | unmatched — not counted | — | — | no |
| Coinfabrik - 1inch Liquidity Protocol Audit.pdf | UniERC20 | unmatched — not counted | — | — | no |
| Coinfabrik - 1inch Liquidity Protocol Audit.pdf | VirtualBalance | unmatched — not counted | — | — | no |
| Coinfabrik - 1inch Liquidity Protocol Audit.pdf | Vote | unmatched — not counted | — | — | no |
| Cure53 - 1inch Liquidity Protocol audit.pdf | BalanceAccounting | unmatched — not counted | — | — | no |
| Cure53 - 1inch Liquidity Protocol audit.pdf | BaseGovernanceModule | unmatched — not counted | — | — | no |
| Cure53 - 1inch Liquidity Protocol audit.pdf | BaseRewards | unmatched — not counted | — | — | no |
| Cure53 - 1inch Liquidity Protocol audit.pdf | Converter | unmatched — not counted | — | — | no |
| Cure53 - 1inch Liquidity Protocol audit.pdf | ExchangeConstants | unmatched — not counted | — | — | no |
| Cure53 - 1inch Liquidity Protocol audit.pdf | ExchangeGovernance | unmatched — not counted | — | — | no |
| Cure53 - 1inch Liquidity Protocol audit.pdf | ExplicitLiquidVoting | unmatched — not counted | — | — | no |
| Cure53 - 1inch Liquidity Protocol audit.pdf | FarmingRewards | unmatched — not counted | — | — | no |
| Cure53 - 1inch Liquidity Protocol audit.pdf | GovernanceFeeReceiver | unmatched — not counted | — | — | no |
| Cure53 - 1inch Liquidity Protocol audit.pdf | GovernanceMothership | unmatched — not counted | — | — | no |
| Cure53 - 1inch Liquidity Protocol audit.pdf | GovernanceRewards | unmatched — not counted | — | — | no |
| Cure53 - 1inch Liquidity Protocol audit.pdf | IGovernanceModule | unmatched — not counted | — | — | no |
| Cure53 - 1inch Liquidity Protocol audit.pdf | IMooniswapDeployer | unmatched — not counted | — | — | no |
| Cure53 - 1inch Liquidity Protocol audit.pdf | IMooniswapFactoryGovernance | unmatched — not counted | — | — | no |
| Cure53 - 1inch Liquidity Protocol audit.pdf | IReferralFeeReceiver | unmatched — not counted | — | — | no |
| Cure53 - 1inch Liquidity Protocol audit.pdf | IRewardDistributionRecipient | unmatched — not counted | — | — | no |
| Cure53 - 1inch Liquidity Protocol audit.pdf | LiquidVoting | unmatched — not counted | — | — | no |
| Cure53 - 1inch Liquidity Protocol audit.pdf | Mooniswap | unmatched — not counted | — | — | no |
| Cure53 - 1inch Liquidity Protocol audit.pdf | MooniswapConstants | unmatched — not counted | — | — | no |
| Cure53 - 1inch Liquidity Protocol audit.pdf | MooniswapDeployer | unmatched — not counted | — | — | no |
| Cure53 - 1inch Liquidity Protocol audit.pdf | MooniswapFactory | unmatched — not counted | — | — | no |
| Cure53 - 1inch Liquidity Protocol audit.pdf | MooniswapFactoryGovernance | unmatched — not counted | — | — | no |
| Cure53 - 1inch Liquidity Protocol audit.pdf | MooniswapGovernance | unmatched — not counted | — | — | no |
| Cure53 - 1inch Liquidity Protocol audit.pdf | ReferralFeeReceiver | unmatched — not counted | — | — | no |
| Cure53 - 1inch Liquidity Protocol audit.pdf | Rewards | unmatched — not counted | — | — | no |
| Cure53 - 1inch Liquidity Protocol audit.pdf | SafeCast | unmatched — not counted | — | — | no |
| Cure53 - 1inch Liquidity Protocol audit.pdf | Sqrt | unmatched — not counted | — | — | no |
| Cure53 - 1inch Liquidity Protocol audit.pdf | UniERC20 | unmatched — not counted | — | — | no |
| Cure53 - 1inch Liquidity Protocol audit.pdf | VirtualBalance | unmatched — not counted | — | — | no |
| Cure53 - 1inch Liquidity Protocol audit.pdf | VirtualVote | unmatched — not counted | — | — | no |
| Cure53 - 1inch Liquidity Protocol audit.pdf | Vote | unmatched — not counted | — | — | no |
| Cure53 - 1inch Liquidity Protocol audit.pdf | Voting | unmatched — not counted | — | — | no |
| Gulamov - 1inch Farming audit.pdf | BaseRewards | unmatched — not counted | — | — | no |
| Gulamov - 1inch Farming audit.pdf | FarmingRewards | unmatched — not counted | — | — | no |
| Gulamov - 1inch Liquidity Protocol audit.pdf | Converter | unmatched — not counted | — | — | no |
| Gulamov - 1inch Liquidity Protocol audit.pdf | ExplicitLiquidVoting | unmatched — not counted | — | — | no |
| Gulamov - 1inch Liquidity Protocol audit.pdf | FarmingRewards | unmatched — not counted | — | — | no |
| Gulamov - 1inch Liquidity Protocol audit.pdf | GovernanceFeeReceiver | unmatched — not counted | — | — | no |
| Gulamov - 1inch Liquidity Protocol audit.pdf | GovernanceMothership | unmatched — not counted | — | — | no |
| Gulamov - 1inch Liquidity Protocol audit.pdf | LiquidVoting | unmatched — not counted | — | — | no |
| Gulamov - 1inch Liquidity Protocol audit.pdf | Mooniswap | unmatched — not counted | — | — | no |
| Gulamov - 1inch Liquidity Protocol audit.pdf | ReferralFeeReceiver | unmatched — not counted | — | — | no |
| Gulamov - 1inch Liquidity Protocol audit.pdf | Rewards | unmatched — not counted | — | — | no |
| Gulamov - 1inch Liquidity Protocol audit.pdf | UniERC20 | unmatched — not counted | — | — | no |
| MixBytes - 1inch Liquidity Protocol Report.pdf | BalanceAccounting | unmatched — not counted | — | — | no |
| MixBytes - 1inch Liquidity Protocol Report.pdf | BaseGovernanceModule | unmatched — not counted | — | — | no |
| MixBytes - 1inch Liquidity Protocol Report.pdf | Converter | unmatched — not counted | — | — | no |
| MixBytes - 1inch Liquidity Protocol Report.pdf | GovernanceFeeReceiver | unmatched — not counted | — | — | no |
| MixBytes - 1inch Liquidity Protocol Report.pdf | GovernanceMothership | unmatched — not counted | — | — | no |
| MixBytes - 1inch Liquidity Protocol Report.pdf | IGovernanceModule | unmatched — not counted | — | — | no |
| MixBytes - 1inch Liquidity Protocol Report.pdf | IMooniswapDeployer | unmatched — not counted | — | — | no |
| MixBytes - 1inch Liquidity Protocol Report.pdf | IMooniswapFactoryGovernance | unmatched — not counted | — | — | no |
| MixBytes - 1inch Liquidity Protocol Report.pdf | IReferralFeeReceiver | unmatched — not counted | — | — | no |
| MixBytes - 1inch Liquidity Protocol Report.pdf | IRewardDistributionRecipient | unmatched — not counted | — | — | no |
| MixBytes - 1inch Liquidity Protocol Report.pdf | LiquidVoting | unmatched — not counted | — | — | no |
| MixBytes - 1inch Liquidity Protocol Report.pdf | Mooniswap | unmatched — not counted | — | — | no |
| MixBytes - 1inch Liquidity Protocol Report.pdf | MooniswapConstants | unmatched — not counted | — | — | no |
| MixBytes - 1inch Liquidity Protocol Report.pdf | MooniswapDeployer | unmatched — not counted | — | — | no |
| MixBytes - 1inch Liquidity Protocol Report.pdf | MooniswapFactory | unmatched — not counted | — | — | no |
| MixBytes - 1inch Liquidity Protocol Report.pdf | MooniswapFactoryGovernance | unmatched — not counted | — | — | no |
| MixBytes - 1inch Liquidity Protocol Report.pdf | MooniswapGovernance | unmatched — not counted | — | — | no |
| MixBytes - 1inch Liquidity Protocol Report.pdf | ReferralFeeReceiver | unmatched — not counted | — | — | no |
| MixBytes - 1inch Liquidity Protocol Report.pdf | Rewards | unmatched — not counted | — | — | no |
| MixBytes - 1inch Liquidity Protocol Report.pdf | Sqrt | unmatched — not counted | — | — | no |
| MixBytes - 1inch Liquidity Protocol Report.pdf | UniERC20 | unmatched — not counted | — | — | no |
| MixBytes - 1inch Liquidity Protocol Report.pdf | VirtualBalance | unmatched — not counted | — | — | no |
| MixBytes - 1inch Liquidity Protocol Report.pdf | Vote | unmatched — not counted | — | — | no |
| 1inch Multi-Farming Contracts V3_Chainsafe.pdf | FarmAccounting | unmatched — not counted | — | mentioned in findings as 'FarmAccounting, line 38' and 'FarmAccounting, line 39' | no |
| 1inch Multi-Farming Contracts V3_CoinFabrik.pdf | FarmingLib | unmatched — not counted | — | listed in scope | no |
| 1inch Multi-Farming Contracts V3_CoinFabrik.pdf | FarmingPod | unmatched — not counted | — | listed in scope | no |
| 1inch Multi-Farming Contracts V3_CoinFabrik.pdf | FarmingPool | unmatched — not counted | — | listed in scope | no |
| 1inch Multi-Farming Contracts V3_CoinFabrik.pdf | MultiFarmingPool | unmatched — not counted | — | listed in scope | no |
| 1inch Multi-Farming Contracts V3_CoinFabrik.pdf | FarmAccounting | unmatched — not counted | — | listed in scope | no |
| 1inch Multi-Farming Contracts V3_CoinFabrik.pdf | UserAccounting | unmatched — not counted | — | listed in scope | no |
| 1inch Multi-Farming Contracts V3_CoinFabrik.pdf | IFarmingPod | unmatched — not counted | — | listed in scope | no |
| 1inch Multi-Farming Contracts V3_CoinFabrik.pdf | IFarmingPool | unmatched — not counted | — | listed in scope | no |
| 1inch Multi-Farming Contracts V3_CoinFabrik.pdf | IMultiFarmingPod | unmatched — not counted | — | listed in scope | no |
| 1inch Multi-Farming Contracts V3_Decurity.pdf | FarmingPool | unmatched — not counted | — | Listed in scope table and findings | no |
| 1inch Multi-Farming Contracts V3_Decurity.pdf | FarmingPod | unmatched — not counted | — | Listed in scope table and findings | no |
| 1inch Multi-Farming Contracts V3_Decurity.pdf | MultiFarmingPod | unmatched — not counted | — | Listed in scope table and findings | no |
| 1inch Multi-Farming Contracts V3_Decurity.pdf | FarmAccounting | unmatched — not counted | — | Listed in scope table and findings | no |
| 1inch Multi-Farming Contracts V3_Decurity.pdf | UserAccounting | unmatched — not counted | — | Listed in scope table and findings | no |
| 1inch Multi-Farming Contracts V3_Gulamov.pdf | UserAccounting | unmatched — not counted | — | mentioned in findings and scope | no |
| 1inch Multi-Farming Contracts V3_Peckshield.pdf | FarmingPool | unmatched — not counted | — | Target in finding PVE-001 | no |
| 1inch Multi-Farming Contracts V3_Peckshield.pdf | ERC20Farmable | unmatched — not counted | — | Target in finding PVE-002 | no |
| 1inch Multi-Farming Contracts V3_Peckshield.pdf | BaseFarm | unmatched — not counted | — | Target in finding PVE-003 | no |
| 1inch Multi-Farming Contracts V3_Pessimistic.pdf | FarmingPool | unmatched — not counted | — | mentioned in audit process and findings | no |
| 1inch Multi-Farming Contracts V3_Pessimistic.pdf | FarmingPod | unmatched — not counted | — | mentioned in findings L01, N01, N02 | no |
| 1inch Multi-Farming Contracts V3_Pessimistic.pdf | MultiFarmingPod | unmatched — not counted | — | mentioned in project description and findings M01, L01, N01, N02 | no |
| 1inch Multi-Farming Contracts V3_Pessimistic.pdf | Pod | unmatched — not counted | — | mentioned in inheritance order L01 | no |
| 1inch Multi-Farming Contracts V3_Pessimistic.pdf | Ownable | unmatched — not counted | — | mentioned in inheritance order L01 | no |
| 1inch Multi-Farming Contracts V3_Pessimistic.pdf | FarmAccounting | unmatched — not counted | — | mentioned in finding L03 | no |
| 1inch Multi-Farming Contracts V3_Smartstate.pdf | FarmingLib | unmatched — not counted | — | listed in scope table and verification checksums | no |
| 1inch Multi-Farming Contracts V3_Smartstate.pdf | FarmingPod | unmatched — not counted | — | listed in scope table and verification checksums | no |
| 1inch Multi-Farming Contracts V3_Smartstate.pdf | FarmingPool | unmatched — not counted | — | listed in scope table and verification checksums | no |
| 1inch Multi-Farming Contracts V3_Smartstate.pdf | MultiFarmingPod | unmatched — not counted | — | listed in scope table and verification checksums | no |
| Solana Fusion - Decurity v1.pdf | fusion-swap | unmatched — not counted | — | listed in scope and findings | no |
| Solana Fusion - Decurity v1.pdf | whitelist | unmatched — not counted | — | listed in scope and findings | no |
| Solana Fusion - Hexens v1.pdf | FusionSwap | unmatched — not counted | — | listed in scope and findings | no |
| Solana Fusion - Hexens v1.pdf | Whitelist | unmatched — not counted | — | listed in scope and findings | no |
| Solana Fusion - Open Zepplin v1.pdf | fusion_swap | unmatched — not counted | — | listed in scope | no |
| Solana Fusion - Open Zepplin v1.pdf | whitelist | unmatched — not counted | — | listed in scope | no |
| Solana Fusion - Ottersec v1.pdf | solana-fusion | unmatched — not counted | — | Scope section: 'solana-fusion' program assessed | no |
| Solana Fusion - Quantstamp v1.pdf | fusion-swap | unmatched — not counted | — | listed in scope files | no |
| Solana Fusion - Zenith v1.01.pdf | fusion-swap | unmatched — not counted | — | Listed in scope as files programs/* under repository solana-fusion-protocol | no |
| Solana Fusion v1_Kudelski.pdf | fusion-swap | unmatched — not counted | — | listed in scope | no |
| Solana Fusion v1_Kudelski.pdf | whitelist | unmatched — not counted | — | listed in scope | no |
| Solana Fusion v1_OffsideLabs.pdf | fusion-swap | unmatched — not counted | — | listed in scope | no |
| Solana Fusion v1_OffsideLabs.pdf | whitelist | unmatched — not counted | — | listed in scope | no |
| Solana cross-chain v1.0-Hexens.pdf | Order | unmatched — not counted | — | mentioned in scope and findings | no |
| Solana cross-chain v1.0-Hexens.pdf | EscrowSrc | unmatched — not counted | — | mentioned in scope and findings | no |
| Solana cross-chain v1.0-Hexens.pdf | CreateEscrow | unmatched — not counted | — | mentioned in findings | no |
| Solana cross-chain v1.0-Hexens.pdf | Withdraw | unmatched — not counted | — | mentioned in findings | no |
| Solana cross-chain v1.0-Hexens.pdf | PublicWithdraw | unmatched — not counted | — | mentioned in findings | no |
| Solana cross-chain v1.0-Hexens.pdf | PublicCancelEscrow | unmatched — not counted | — | mentioned in findings | no |
| Solana cross-chain v1.0-Hexens.pdf | CancelEscrow | unmatched — not counted | — | mentioned in findings | no |
| Solana cross-chain v1.0-Hexens.pdf | CancelOrderbyResolver | unmatched — not counted | — | mentioned in findings | no |
| Solana cross-chain v1.0-Hexens.pdf | RescueFundsForOrder | unmatched — not counted | — | mentioned in findings | no |
| Solana cross-chain v1.0-Zenith.pdf | cross-chain-escrow-src | unmatched — not counted | — | listed in scope table and findings target | no |
| Solana cross-chain v1.0-Zenith.pdf | cross-chain-escrow-dst | unmatched — not counted | — | listed in scope table and findings target | no |
| Solana cross-chain v1.0-Zenith.pdf | whitelist | unmatched — not counted | — | listed in scope table | no |
| Solana cross-chain v1.0_Decurity.pdf | cross-chain-escrow-src | unmatched — not counted | — | listed in scope and findings | no |
| Solana cross-chain v1.0_Decurity.pdf | cross-chain-escrow-dst | unmatched — not counted | — | listed in scope and findings | no |
| Solana cross-chain v1.0_Decurity.pdf | escrow | unmatched — not counted | — | listed in scope and findings | no |
| Solana cross-chain v1.0_OffsideLabs.pdf | cross-chain-escrow-src | unmatched — not counted | — | listed in scope | no |
| Solana cross-chain v1.0_OffsideLabs.pdf | cross-chain-escrow-dst | unmatched — not counted | — | listed in scope | no |
| Solana cross-chain v1.0_OffsideLabs.pdf | whitelist | unmatched — not counted | — | listed in scope | no |
| Solana cross-chain v1.0_Sherlock.pdf | cross-chain-escrow-dst | unmatched — not counted | — | listed in scope | no |
| Solana cross-chain v1.0_Sherlock.pdf | cross-chain-escrow-src | unmatched — not counted | — | listed in scope | no |
| Solana cross-chain v1.0_Sherlock.pdf | whitelist | unmatched — not counted | — | listed in scope | no |
| Solana cross-chain v1.1_Decurity.pdf | cross-chain-escrow-src | unmatched — not counted | — | listed in scope and findings | no |
| Solana cross-chain v1.1_Decurity.pdf | cross-chain-escrow-dst | unmatched — not counted | — | listed in scope and findings | no |
| Solana cross-chain v1.1_Hexens.pdf | cross-chain-escrow-dst | unmatched — not counted | — | listed in scope and findings | no |
| Solana cross-chain v1.1_Hexens.pdf | cross-chain-escrow-src | unmatched — not counted | — | listed in scope and findings | no |
| Solana cross-chain v1.1_OffsideLabs.pdf | cross-chain-escrow-src | unmatched — not counted | — | listed in scope file listing | no |
| Solana cross-chain v1.1_OffsideLabs.pdf | cross-chain-escrow-dst | unmatched — not counted | — | listed in scope file listing | no |
| Solana cross-chain v1.1_OffsideLabs.pdf | whitelist | unmatched — not counted | — | listed in scope file listing | no |
| Solana cross-chain v1.1_Sherlock.pdf | cross-chain-escrow-dst | unmatched — not counted | — | listed in scope | no |
| Solana cross-chain v1.1_Sherlock.pdf | cross-chain-escrow-src | unmatched — not counted | — | listed in scope | no |
| Solana cross-chain v1.1_Sherlock.pdf | whitelist | unmatched — not counted | — | listed in scope | no |
| Chainsulting - 1inch Vesting Contract audit.pdf | StepVesting | unmatched — not counted | — | — | no |
| Coinfabrik - 1inch Vesting Contract audit.pdf | StepVesting | unmatched — not counted | — | — | no |
| Gulamov - 1inch Vesting Contract audit.pdf | StepVesting | unmatched — not counted | — | — | no |
| Pessimistic - 1inch Vesting Contract audit.pdf | StepVesting | unmatched — not counted | — | — | no |
| MixBytes.pdf | ERC20Permit | unmatched — not counted | — | listed in FILES LISTING | no |
| MixBytes.pdf | OneInch | unmatched — not counted | — | listed in FILES LISTING | no |
| MixBytes.pdf | ECDSA | unmatched — not counted | — | listed in FILES LISTING | no |
| MixBytes.pdf | EIP712 | unmatched — not counted | — | listed in FILES LISTING | no |
| MixBytes.pdf | IERC20Permit | unmatched — not counted | — | listed in FILES LISTING | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 1 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 1 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 138
- Inherited remapped matches: 0
- Address-book scope dispositions: 7 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 1212 unmatched
- Matched-own operational status: 7 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=77, low=3, medium=7
- Match method counts: unique_name=7

Zero-match audit list:

- [8160] 1inch Aggregation Router V5_ABDK Consulting.pdf
- [8161] 1inch Aggregation Router V5_CoinFabrik.pdf
- [8162] 1inch Aggregation Router V5_Consensys.pdf
- [8163] 1inch Aggregation Router V5_IgorGulamov.pdf
- [8164] 1inch Aggregation Router V5_MixBytes.pdf
- [8165] 1inch Aggregation Router V5_OpenZepplin.pdf
- [8166] 1inch Aggregation Router V5_PeckShield.pdf
- [8167] 1inch Aggregation Router V5_Pessimistic.pdf
- [8168] 1inch Aggregation Router V5_Statemind.pdf
- [8169] 1inch Aggregation Router V5_Zokyo.pdf
- [8170] 1inch Aggregation Router V6.1_Decurity.pdf
- [8173] 1inch Aggregation Router V6.1_PeckShield.pdf
- [8174] 1inch Aggregation Router V6.2_Decurity.pdf
- [8175] 1inch Aggregation Router V6.2_Hexens.pdf
- [8179] 1inch Aggregation Router V6_Hexens.pdf
- [8181] 1inch Aggregation Router V6_PeckShield.pdf
- [8183] 1inch Limit Order Protocol v4.1_OpenZeppelin.pdf
- [8184] 1inch Limit Order Protocol v4_OpenZeppelin.pdf
- [8185] Certik - 1inch v2 Audit Report.pdf
- [8186] Chainsulting - 1inch v2 Audit Report.pdf
- [8187] Coinfabrik - 1inch v2 Audit Report.pdf
- [8188] Hacken - 1inch v2 Audit Report.pdf
- [8189] Haechi - 1inch v2 Audit Report.pdf
- [8190] MixBytes - 1inch v2 Audit Report.pdf
- [8191] Scott Bigelow - 1inch v2 Audit Report.pdf
- [8192] Slowmist - 1inch v2 Audit Report.pdf
- [8193] Certik - 1inch v3 Audit Report.pdf
- [8194] Gulamov - 1inch v3 Audit Report.pdf
- [8195] MixBytes - 1inch v3 Audit Report.pdf
- [8196] 1Inch Aggregation Router v4 Audit_MixBites.pdf
- [8197] 1inch Aggregation Router v4 Audit_ABDK.pdf
- [8198] 1inch Aggregation Router v4 Audit_Chainsulting.pdf
- [8199] 1inch Aggregation Router v4 Audit_Coinfabrik.pdf
- [8200] 1inch Aggregation Router v4 Audit_Consensys.pdf
- [8201] 1inch Aggregation Router v4 Audit_Igor Gulamov.pdf
- [8202] 1inch Aggregation Router v4 Audit_Pessimistic.pdf
- [8203] 1inch-cross-chain-swap-v1-AstraSec.pdf
- [8204] 1inch-cross-chain-swap-v1-Consensys.pdf
- [8205] 1inch-cross-chain-swap-v1-Decurity.pdf
- [8206] 1inch-cross-chain-swap-v1-Igor Gulamov.pdf
- [8207] 1inch-cross-chain-swap-v1-Open Zeppelin.pdf
- [8208] 1inch-cross-chain-swap-v1-Pessimistic.pdf
- [8209] 1inch-cross-chain-v2-Astrasec.pdf
- [8210] 1inch-cross-chain-v2-Consensys.pdf
- [8211] 1inch-cross-chain-v2-Decurity.pdf
- [8212] 1inch-cross-chain-v2-Igor Gulamov.pdf
- [8213] 1inch-cross-chain-v2-Open Zeppelin.pdf
- [8214] 1inch-cross-chain-v2-Pessimistic.pdf
- [8215] 1inch Crosschain Fee v1.1_Certora.pdf
- [8216] 1inch Crosschain Fee v1.1_Decurity.pdf
- [8217] 1inch Crosschain Fee v1.1_Hexens.pdf
- [8218] 1inch Crosschain Fee v1.1_Open Zeppelin.pdf
- [8219] 1inch Crosschain Fee v1.1_Sherlock.pdf
- [8220] Fee flow v1-AstraSec.pdf
- [8221] Fee flow v1-Bailsec.pdf
- [8222] Fee flow v1-ChainLight.pdf
- [8223] Fee flow v1-Decurity.pdf
- [8224] Fee flow v1-Open Zepplin.pdf
- [8225] Fee flow v1-Sherlock.pdf
- [8226] 1inch FixedRateSwap_Ackee Blockchain.pdf
- [8227] 1inch FixedRateSwap_Chainsulting.pdf
- [8228] 1inch FixedRateSwap_CoinFabrik.pdf
- [8229] 1inch FixedRateSwap_MixedBytes.pdf
- [8230] 1inch FixedRateSwap_Pessimistic.pdf
- [8231] 1inch Settlement v2.1_AstraSec.pdf
- [8232] 1inch Settlement v2.1_Decurity.pdf
- [8233] 1inch Settlement v2.1_Hexens.pdf
- [8234] 1inch Settlement v2.1_Open Zepplin.pdf
- [8235] 1inch Settlement v2.1_Pashov.pdf
- [8236] 1inch Settlement v2.1_Pessemistic.pdf
- [8237] 1inch Settlement v2_Decurity.pdf
- [8238] 1inch Settlement v2_Hexens.pdf
- [8239] 1inch Settlement v2_Open Zeppelin.pdf
- [8240] 1inch Settlement v2_Peckshield.pdf
- [8241] 1inch Settlement v2_Pessimistic.pdf
- [8242] 1inch_FusionMode_ABDK.pdf
- [8243] 1inch_FusionMode_ChainSecurity1.pdf
- [8244] 1inch_FusionMode_ChainSecurity2.pdf
- [8245] 1inch_FusionMode_ChainSecurity3.pdf
- [8246] 1inch_FusionMode_Decurity.pdf
- [8247] 1inch_FusionMode_Hexens.1.pdf
- [8248] 1inch_FusionMode_Hexens.2.pdf
- [8249] 1inch_FusionMode_OpenZepplin.1.pdf
- [8250] 1inch_FusionMode_OpenZepplin.2.pdf
- [8251] 1inch_FusionMode_Oxorio.pdf
- [8252] 1inch_FusionMode_Peckshield.pdf
- [8253] 1inch_FusionMode_Pessimistic.pdf
- [8254] 1inch_FusionMode_iosiro.pdf
- [8255] 1inch_TokenPlugins-Pashov.pdf
- [8257] 1Inch Limit Order Protocol_ABDK.pdf
- [8258] 1Inch Limit Order Protocol_Chainsulting.pdf
- [8259] 1Inch Limit Order Protocol_CoinFabrik.pdf
- [8260] 1Inch Limit Order Protocol_IgorGulamov.pdf
- [8261] 1Inch Limit Order Protocol_MixBytes.pdf
- [8262] 1inch Limit Order Portocol_Certik.pdf
- [8263] ABDK - 1inch Limit Order Protocol audit.pdf
- [8264] Chainsulting - 1inch Limit Order Protocol audit.pdf
- [8265] Coinfabrik - 1inch Limit Order Protocol audit.pdf
- [8266] Coinspect - 1inch Limit Order Protocol audit.pdf
- [8267] LimitSwap audit.pdf
- [8268] Pessimistic - 1inch Limit Order Protocol audit.pdf
- [8269] Certik - 1inch Liquidity Protocol audit.pdf
- [8270] Chainsulting - 1inch Liquidity Protocol Audit.pdf
- [8271] Coinfabrik - 1inch Liquidity Protocol Audit.pdf
- [8272] Cure53 - 1inch Liquidity Protocol audit.pdf
- [8273] Gulamov - 1inch Farming audit.pdf
- [8274] Gulamov - 1inch Liquidity Protocol audit.pdf
- [8275] MixBytes - 1inch Liquidity Protocol Report.pdf
- [8276] 1inch Multi-Farming Contracts V3_Chainsafe.pdf
- [8277] 1inch Multi-Farming Contracts V3_CoinFabrik.pdf
- [8278] 1inch Multi-Farming Contracts V3_Decurity.pdf
- [8279] 1inch Multi-Farming Contracts V3_Gulamov.pdf
- [8280] 1inch Multi-Farming Contracts V3_Peckshield.pdf
- [8281] 1inch Multi-Farming Contracts V3_Pessimistic.pdf
- [8282] 1inch Multi-Farming Contracts V3_Smartstate.pdf
- [8284] Solana Fusion - Decurity v1.pdf
- [8285] Solana Fusion - Hexens v1.pdf
- [8286] Solana Fusion - Open Zepplin v1.pdf
- [8287] Solana Fusion - Ottersec v1.pdf
- [8288] Solana Fusion - Quantstamp v1.pdf
- [8289] Solana Fusion - Zenith v1.01.pdf
- [8290] Solana Fusion v1_Kudelski.pdf
- [8291] Solana Fusion v1_OffsideLabs.pdf
- [8292] Solana cross-chain v1.0-Hexens.pdf
- [8293] Solana cross-chain v1.0-Zenith.pdf
- [8294] Solana cross-chain v1.0_Decurity.pdf
- [8295] Solana cross-chain v1.0_OffsideLabs.pdf
- [8296] Solana cross-chain v1.0_Sherlock.pdf
- [8297] Solana cross-chain v1.1_Decurity.pdf
- [8298] Solana cross-chain v1.1_Hexens.pdf
- [8299] Solana cross-chain v1.1_OffsideLabs.pdf
- [8300] Solana cross-chain v1.1_Sherlock.pdf
- [8301] Solana cross-chain v1.1_Zenith.pdf
- [8302] Chainsulting - 1inch Vesting Contract audit.pdf
- [8303] Coinfabrik - 1inch Vesting Contract audit.pdf
- [8304] Gulamov - 1inch Vesting Contract audit.pdf
- [8305] Pessimistic - 1inch Vesting Contract audit.pdf
- [8416] MixBytes.pdf

Fork inheritance lineage and inherited audits are included when available.
