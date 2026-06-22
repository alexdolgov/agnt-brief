# Agentic Audit Brief: Firebird

⚠️ Lifecycle status: DEAD - TVL dropped 6.2% over 90 days

## Project Overview

- Project: Firebird (`firebird`)
- Lifecycle: dead (Tier 0, 100% below peak)
- Generated: 2026-06-19T23:26:52.877Z
- Pipeline run: v2-pipeline-2026-06-19-727228-a815
- Chains: polygon
- Contract surface: 14 unique implementations (14 raw deployments)
- DeFi Llama TVL: $17,762.56
- On-chain TVL (included contracts): $27,058.66
- TVL by chain: Polygon $27,058.66

## Project Description

Firebird is a DEX aggregator on Polygon that optimizes token swaps by routing trades across multiple liquidity sources to achieve the best rates for users.

### Architecture

The FireBirdFactory registry manages the Swap contract and UChildERC20Proxy token, which together form the core swap aggregation functionality. No other product families are present, so all contracts share this single infrastructure.

## Contract Surface Quality

- Indexed contracts: 50; live-surface contracts included: 14 (3 live, 11 unknown).
- Excluded by liveness: 26 inactive, 10 singleton, 0 uninitialized.
- Deployment units: 0/8 live.
- Detected codebases: uniswap-v2
- Unverified dependencies: 4/7.

## Audit Coverage Summary

- Verified implementations audited: 2/7 (28.6%)
- Verified + Unaudited implementations: 5
- Verified by bytecode match: 0
- Unverified implementations: 7
- Unique implementations: 14
- Raw deployments: 14
- Audits discovered: 1
- Scoreable audits (matched contracts): 1
- ASD (verified + unaudited TVL): $27,058.66
- Latest audit: 2021-06 (stale)
- Staleness: 0 fresh, 0 aging, 1 stale, 0 unknown
- Tier 1 coverage: No Tier 1 coverage
- Note: This protocol is classified as [dead]. ASD of $27,058.66 represents exposure in a protocol with dead activity.

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| PeckShield | Tier 2 | 2 | 28.6% | 2021-06 |

## Contract Surface

### ✅ Verified + Audited (2)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| FireBirdRouter | adapter | polygon | n/a | [`0xf6fa9e...20bfac`](./contracts/polygon-137/0xf6fa9ea1f64f1bbfa8d71f7f43faf6d45520bfac/) | ✅ Audited |
| FireBirdZap | adapter | polygon | n/a | [`0xa3dd48...14d6bf`](./contracts/polygon-137/0xa3dd483d6955ca2f3a8172be5a1bf64ea414d6bf/) | ✅ Audited |

### ⚠️ Verified + Unaudited (5)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UChildERC20Proxy | token | polygon | n/a | [`0xd78c47...c1e660`](./contracts/polygon-137/0xd78c475133731cd54dadcb430f7aae4f03c1e660/) | ⚠️ Unaudited |
| FirebirdReserveFund | unknown | polygon | n/a | [`0xa632fa...665038`](./contracts/polygon-137/0xa632fa6fa83790ff843c48fab013f0fbc5665038/) | ⚠️ Unaudited |
| ProtocolFeeRemover | unknown | polygon | n/a | [`0xef7e34...59cd7b`](./contracts/polygon-137/0xef7e3401f70ae2e49e3d2af0a30d2978a059cd7b/) | ⚠️ Unaudited |
| StakePoolController | core_logic | polygon | n/a | [`0xe13910...128e87`](./contracts/polygon-137/0xe13910c475edfc99e66236772ee29b4dfd128e87/) | ⚠️ Unaudited |
| UpgradableProxy | unknown | polygon | n/a | [`0xe9a8b6...dd21d4`](./contracts/polygon-137/0xe9a8b6ea3e7431e6befca51258cb472df2dd21d4/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (7)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | polygon | n/a | `0xc3ceb9...e2bc18` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xd53f4e...31dee4` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xd57e13...e00797` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xe59511...2328e1` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xeaf08f...2c3047` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xf6abab...4979e0` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xf95b43...261093` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [PeckShield-Audit-Report-Firebird-Swap-v1.0.pdf](https://github.com/peckshield/publications/blob/master/audit_reports/PeckShield-Audit-Report-Firebird-Swap-v1.0.pdf) | PeckShield | Audit | 2021-06 | stale | Direct | contract_name | 2 | high |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| polygon | [`0xa632fa...665038`](./contracts/polygon-137/0xa632fa6fa83790ff843c48fab013f0fbc5665038/) | FirebirdReserveFund | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0xef7e34...59cd7b`](./contracts/polygon-137/0xef7e3401f70ae2e49e3d2af0a30d2978a059cd7b/) | ProtocolFeeRemover | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0xe13910...128e87`](./contracts/polygon-137/0xe13910c475edfc99e66236772ee29b4dfd128e87/) | StakePoolController | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 5 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 9 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=1
- Match method counts: extraction_exact=7

Fork inheritance lineage and inherited audits are included when available.
