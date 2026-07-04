# Agentic Audit Brief: Grape Finance

## Project Overview

- Project: Grape Finance (`grape-finance`)
- Website: [https://grapefinance.app/](https://grapefinance.app/)
- Lifecycle: unknown
- Generated: 2026-07-03T21:05:56.802Z
- Pipeline run: v2-pipeline-2026-07-01-3e33f2-dc67
- Chains: avalanche
- Contract surface: 43 unique implementations (43 raw deployments)
- DeFi Llama TVL: $0.00
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Algo-Stables. Structurally: 46 project-authored contract(s) across 1 chain(s); 7 ERC20 tokens, 4 ERC721 NFTs, 2 Chainlink feeds; built on openzeppelin.

### Architecture

The protocol comprises 5 functional families. Its contracts share 8 common project-authored base contract(s) (erc20burnable, operator, vrfconsumerbasev2). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 130; live-surface contracts included: 43 (14 live, 29 unknown).
- Excluded by liveness: 87 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 6/14 (42.9%)
- Deployed-live implementations: 14 of 43 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 6/15
- Verified + Unaudited implementations: 9
- Verified by bytecode match: 0
- Unverified implementations: 28
- Unique implementations: 43
- Raw deployments: 43
- Audits discovered: 1 (1 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 1
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2022-01 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 1 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 6 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| unknown | Tier 2 | 6 | 40.0% | 2022-01 |

## Contract Surface

### ✅ Verified + Audited (6)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| Boardroom | unknown | avalanche | n/a | [`0x3ce7bc...d7a972`](./contracts/avalanche-43114/0x3ce7bc78a7392197c569504970017b6eb0d7a972/) | ✅ Audited |
| GBond | unknown | avalanche | n/a | [`0xf18ecd...7378dd`](./contracts/avalanche-43114/0xf18ecd11d87c7479f8cd2ebe29abad04c97378dd/) | ✅ Audited |
| Grape | unknown | avalanche | n/a | [`0x5541d8...5cdac2`](./contracts/avalanche-43114/0x5541d83efad1f281571b343977648b75d95cdac2/) | ✅ Audited |
| Treasury | operational_periphery | avalanche | n/a | [`0xb26054...51640c`](./contracts/avalanche-43114/0xb260547c37bc80fbd1a0d742af71c2324151640c/) | ✅ Audited |
| Wine | unknown | avalanche | n/a | [`0xc55036...0d3a44`](./contracts/avalanche-43114/0xc55036b5348cfb45a932481744645985010d3a44/) | ✅ Audited |
| WineRewardPool | core_logic | avalanche | n/a | [`0x28c65d...5bee49`](./contracts/avalanche-43114/0x28c65dcb3a5f0d456624aff91ca03e4e315bee49/) | ✅ Audited |

### ⚠️ Verified + Unaudited (9)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| GrapePriceFeed | operational_periphery | avalanche | n/a | [`0xa917d1...dc3f2b`](./contracts/avalanche-43114/0xa917d187c8754406739d246ca4bb3e4318dc3f2b/) | ⚠️ Unaudited |
| Lotto | unknown | avalanche | n/a | [`0xc9e611...b6de95`](./contracts/avalanche-43114/0xc9e611b577667d722c5e0e36fd8ac43840b6de95/) | ⚠️ Unaudited |
| LPZapper | adapter | avalanche | n/a | [`0x7aaee8...b359f5`](./contracts/avalanche-43114/0x7aaee8897e9da50fdb6e765e16ddffbc8bb359f5/) | ⚠️ Unaudited |
| Raisin | unknown | avalanche | n/a | [`0x4df22a...dcf2c2`](./contracts/avalanche-43114/0x4df22aac6a83c44bf4efa592e170e1a4d1dcf2c2/) | ⚠️ Unaudited |
| SodaPress | unknown | avalanche | n/a | [`0x369e55...5fa597`](./contracts/avalanche-43114/0x369e556f0e7a08e781527d161dac867bb05fa597/) | ⚠️ Unaudited |
| TheWineryNFT | token | avalanche | n/a | [`0x99fec0...91e2df`](./contracts/avalanche-43114/0x99fec0ca5cd461884e2e6e8484c219bbfb91e2df/) | ⚠️ Unaudited |
| VintageAgingBarrel | unknown | avalanche | n/a | [`0x23b91c...c61d5f`](./contracts/avalanche-43114/0x23b91cf132f06f8f71d3f36f59b89c29a3c61d5f/) | ⚠️ Unaudited |
| WinePress | unknown | avalanche | n/a | [`0x2707cc...64979f`](./contracts/avalanche-43114/0x2707ccc10d6c1ce49f72867ab5b85de11e64979f/) | ⚠️ Unaudited |
| Zapper | adapter | avalanche | n/a | [`0x576a1d...a5af8d`](./contracts/avalanche-43114/0x576a1ddbac921c092a839095d02a8717ffa5af8d/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (28)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | avalanche | n/a | `0x201e4d...707119` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x27f32d...ea3711` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x3bc6fb...44caf7` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x3d2d0f...e845b2` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x53ddb1...df8f77` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x581b1c...cfe946` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x596dea...7165f2` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x5f750c...a5f670` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x6042a7...7512ff` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x64eb2a...d02dc4` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x6fcabe...56a5e0` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x771059...ccb651` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x784c65...54c2ab` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x784cce...3561e2` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x7a1833...a17abb` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x8612ee...b254b4` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x942fad...6d0e98` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x9e7e10...24200c` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xa2feca...1be34d` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xa3cbc6...57608c` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xa6e876...529d57` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xac97c2...8efe81` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xb18d74...ef6bce` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xb61620...67f04c` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xe3ac26...de74c3` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xed230e...b323cb` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xed367c...6f4048` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xf3747f...3cc5fb` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [Grape-Finance_final-audit-report_1642499628626.pdf](https://github.com/0xGuard-com/audit-reports/blob/master/grape-finance/Grape-Finance_final-audit-report_1642499628626.pdf) | unknown | Audit | 2022-01 | stale | Direct | contract_name | 6 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 0 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 43 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: contract_name=6

Fork inheritance lineage and inherited audits are included when available.
