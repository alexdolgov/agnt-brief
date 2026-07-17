# Agentic Audit Brief: Polycat Finance

## Project Overview

- Project: Polycat Finance (`polycat-finance`)
- Lifecycle: unknown
- Generated: 2026-07-04T14:53:43.980Z
- Pipeline run: v2-2026-07-04-db4eb6
- Chains: polygon
- Contract surface: 7 unique implementations (7 raw deployments)
- DeFi Llama TVL: $289,487.00
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Farm. Structurally: 7 project-authored contract(s) across 1 chain(s); 1 ERC20 token; built on openzeppelin.

### Architecture

The protocol comprises 2 functional families. Contracts are linked by 2 cross-contract reference(s). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 7; live-surface contracts included: 7 (7 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 1/7 (14.3%)
- Deployed-live implementations: 7 of 7 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 1/7
- Verified + Unaudited implementations: 6
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 7
- Raw deployments: 7
- Audits discovered: 2 (2 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 1
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2021-08 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 1 stale, 1 unknown
- Coverage code basis (deployed vs audited code): 1 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| Paladin | Tier 2 | 1 | 14.3% | 2021-08 |

## Contract Surface

### ✅ Verified + Audited (1)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| MasterChef | unknown | polygon | n/a | [`0x18590c1fa38a7e7357d40a6c2bbc910340dde46c`](./contracts/polygon-137/0x18590c1fa38a7e7357d40a6c2bbc910340dde46c/) | ✅ Audited |

### ⚠️ Verified + Unaudited (6)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| FishToken | unknown | polygon | n/a | [`0x3a3df212b7aa91aa0402b9035b098891d276572b`](./contracts/polygon-137/0x3a3df212b7aa91aa0402b9035b098891d276572b/) | ⚠️ Unaudited |
| LiquidityLock | unknown | polygon | n/a | [`0x9cf8d7c64e29045e3c6bf8e86874398dc6a7b11d`](./contracts/polygon-137/0x9cf8d7c64e29045e3c6bf8e86874398dc6a7b11d/) | ⚠️ Unaudited |
| Referral | unknown | polygon | n/a | [`0xb67ad6c2fe7dd6ba346706b833ccf4234256266d`](./contracts/polygon-137/0xb67ad6c2fe7dd6ba346706b833ccf4234256266d/) | ⚠️ Unaudited |
| StrategyFish | unknown | polygon | n/a | [`0x520c340d6c9d7efc7cf4806b6cf0ab9859c62df5`](./contracts/polygon-137/0x520c340d6c9d7efc7cf4806b6cf0ab9859c62df5/) | ⚠️ Unaudited |
| Timelock | unknown | polygon | n/a | [`0xf5a824b077cc0aaf50cf83a9e82714b89b684925`](./contracts/polygon-137/0xf5a824b077cc0aaf50cf83a9e82714b89b684925/) | ⚠️ Unaudited |
| VaultChef | unknown | polygon | n/a | [`0xbda1f897e851c7ef22cd490d2cf2dace4645a904`](./contracts/polygon-137/0xbda1f897e851c7ef22cd490d2cf2dace4645a904/) | ⚠️ Unaudited |

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
| [paladinsec.co/projects/polycat-finance](https://paladinsec.co/projects/polycat-finance) | Paladin | Audit | 2021-08 | stale | Direct | contract_name | 1 | high |
| [skynet.certik.com/projects/polycatfinance](https://skynet.certik.com/projects/polycatfinance) | CertiK | Audit | n/a | unknown | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| polygon | [`0x3a3df212b7aa91aa0402b9035b098891d276572b`](./contracts/polygon-137/0x3a3df212b7aa91aa0402b9035b098891d276572b/) | FishToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x9cf8d7c64e29045e3c6bf8e86874398dc6a7b11d`](./contracts/polygon-137/0x9cf8d7c64e29045e3c6bf8e86874398dc6a7b11d/) | LiquidityLock | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0xb67ad6c2fe7dd6ba346706b833ccf4234256266d`](./contracts/polygon-137/0xb67ad6c2fe7dd6ba346706b833ccf4234256266d/) | Referral | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x520c340d6c9d7efc7cf4806b6cf0ab9859c62df5`](./contracts/polygon-137/0x520c340d6c9d7efc7cf4806b6cf0ab9859c62df5/) | StrategyFish | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0xf5a824b077cc0aaf50cf83a9e82714b89b684925`](./contracts/polygon-137/0xf5a824b077cc0aaf50cf83a9e82714b89b684925/) | Timelock | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0xbda1f897e851c7ef22cd490d2cf2dace4645a904`](./contracts/polygon-137/0xbda1f897e851c7ef22cd490d2cf2dace4645a904/) | VaultChef | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

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
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=1
- Match method counts: extraction_exact=1

Zero-match audit list:

- [20945] skynet.certik.com/projects/polycatfinance

Fork inheritance lineage and inherited audits are included when available.
