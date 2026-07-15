# Agentic Audit Brief: GoPlus Security

## Export Authority

- Production state: **published scope**
- Raw selected rows: 0 across 0 audit(s)
- Eligible audit results: 2 (0 matched; 2 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e9e09d06b414f9cd852c36a58d42ce16279465f2d9791cd2a8178f3f54b89ecd`

## Project Overview

- Project: GoPlus Security (`goplus-security`)
- Website: [https://gopluslabs.io](https://gopluslabs.io)
- Lifecycle: unknown
- Generated: 2026-07-15T18:30:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: arbitrum, base, bsc, ethereum
- Contract surface: 58 unique implementations (96 raw deployments)
- Coverage basis: not assessable — No confirmed own live-verified denominator is available.
- DeFi Llama TVL: $25,546,188.00
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

No contract logic was present for GoPlus Security in the closed normalized topography run; this brief does not infer a protocol purpose from missing code.

### Architecture

The activated project remains an explicit cohort member with an empty normalized logic-topography closure.

## Logic Topography

- Exact-run contract rows: 0
- Structural roles: none
- Contract kinds: none
- Detected standards: none
- Frameworks: none
- Upgradeable-pattern rows: 0

## Fork Analysis

0 of 14 contracts are derived from known codebases. 14 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0x0845f9...cd7184`, chain 1)
- UnnamedContract (`0x0a33f7...07e410`, chain 1)
- UnnamedContract (`0x24bfd4...d35024`, chain 1)
- UnnamedContract (`0x35e575...b5fa07`, chain 1)
- UnnamedContract (`0x4eaa7c...517e0e`, chain 1)
- UnnamedContract (`0x6915dd...6cdd3a`, chain 1)
- UnnamedContract (`0x7ed92f...e3ddb0`, chain 1)
- UnnamedContract (`0x91228c...536a32`, chain 1)
- UnnamedContract (`0xa3f64d...c7a366`, chain 1)
- UnnamedContract (`0xbe5efb...a2e1fd`, chain 1)
- UnnamedContract (`0xc25470...064253`, chain 1)
- UnnamedContract (`0xd55bda...5cf17f`, chain 1)
- UnnamedContract (`0xd5d7fb...4f8c31`, chain 1)
- UnnamedContract (`0xe96a24...d35c6b`, chain 1)

## Contract Surface Quality

- Logic-topography rows: 0; live-surface rows included: 0 (0 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 14/32 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: not assessable
- Coverage assessment: not_assessable (low confidence) — No confirmed own live-verified denominator is available.
- Address-book implementation classification: 14 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 44 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 1 standard proxy/library)
- Proxy deployments represented within implementation groups: 2
- Confirmed-live implementations: 14 of 58 unique; 44 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 0/30
- Verified + Unaudited implementations: 30
- Verified by bytecode match: 0
- Unverified implementations: 28
- Unique implementations: 58
- Raw deployments: 96
- Audits discovered: 1 (1 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2025-01 (aging)
- Audit staleness (calendar age): 0 fresh, 1 aging, 0 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (30)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| BaseCoinBondCallback | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 3 deployments: bsc `0x3dac57...cf4568`; bsc `0x9d5e67...0acd45`; bsc `0xcc27c1...6c0e27` | ⚠️ Unaudited |
| Bond | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 3 deployments: bsc `0x09bedd...08b538`; bsc `0xa5678f...adf7ac`; bsc `0xb5ecc4...ad1237` | ⚠️ Unaudited |
| BondFixedExpiryTeller | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x8c439e...1cd731` | ⚠️ Unaudited |
| BondFixedTermTeller | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 3 deployments: bsc `0x74a355...4be077`; bsc `0xaa5cd6...03a32a`; bsc `0xce56bc...0d837d` | ⚠️ Unaudited |
| FiatTokenV2_2 | token | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0xa0b869...06eb48` | ⚠️ Unaudited |
| GnosisSafeL2 | governance | non_address_book | standard_proxy_or_library (excluded) | 1 | bsc | n/a | `0x34ebdd...23e34f` | ⚠️ Unaudited |
| GPS | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x0c1dc7...a0dca5` | ⚠️ Unaudited |
| INUKO | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xea5180...209d8f` | ⚠️ Unaudited |
| InukoBondCallback | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x2435c2...5af105` | ⚠️ Unaudited |
| InverseBond | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xe69351...01dd47` | ⚠️ Unaudited |
| LockFactory | registry | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 5 deployments: bsc `0x1ecb68...1716c0`; bsc `0x4f26fa...95519e`; bsc `0xad7590...036141`; bsc `0xf5cdad...9fcca1`; base `0x043f40...931a64` | ⚠️ Unaudited |
| PCSInfinityCLLiquidityLocker | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 3 deployments: bsc `0x69b6e9...03202d`; bsc `0x83eab3...53f7d7`; bsc `0xa2e0bd...1de859` | ⚠️ Unaudited |
| PriceBasedTokenLock | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x41f3e9...41e41b` | ⚠️ Unaudited |
| PriceOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x9b5ea2...afe873` | ⚠️ Unaudited |
| PriceOracleV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 6 deployments: bsc `0x03fea9...2f2263`; bsc `0x19f2fe...18ed43`; bsc `0x2465ae...80f05e`; bsc `0x5226cb...e30180`; bsc `0x566041...793e6d`; bsc `0xf5efc4...ce4e44` | ⚠️ Unaudited |
| RenCrowdsale | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5a779a...cb31d0` | ⚠️ Unaudited |
| RepublicToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x408e41...052a38` | ⚠️ Unaudited |
| RevenuePool | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x648d7f...97706c` | ⚠️ Unaudited |
| SafeTokenFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 4 deployments: ethereum `0x0d648e...579027`; bsc `0x0d648e...579027`; base `0x0d648e...579027`; arbitrum `0x0d648e...579027` | ⚠️ Unaudited |
| SecHubFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x9c6b00...d5552b` | ⚠️ Unaudited |
| SecWareFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xc1efad...eebef5` | ⚠️ Unaudited |
| SecWareRouter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x0dd6d9...cddfca` | ⚠️ Unaudited |
| SecWareRouterV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 2 deployments: bsc `0x492de7...cf6afe`; bsc `0x76b49a...c7c4bd` | ⚠️ Unaudited |
| StakingLock | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 3 deployments: bsc `0x19c34d...0a2b8c`; bsc `0xeca8d7...ffee78`; bsc `0xf83ade...31087f` | ⚠️ Unaudited |
| TimeLockedWallet | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x62d55e...666bea` | ⚠️ Unaudited |
| TokenLocker | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 5 deployments: ethereum `0xf17a08...dec04b`; bsc `0x7aa03d...e485a4`; bsc `0xf17a08...dec04b`; base `0xf17a08...dec04b`; arbitrum `0xf17a08...dec04b` | ⚠️ Unaudited |
| TokenTemplate | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 4 deployments: ethereum `0x24a9eb...bbfa0d`; bsc `0x24a9eb...bbfa0d`; base `0x24a9eb...bbfa0d`; arbitrum `0x24a9eb...bbfa0d` | ⚠️ Unaudited |
| UniV3LPLocker | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 5 deployments: ethereum `0x25c9c4...a9bd52`; bsc `0x0a4781...f101ea`; bsc `0x25c9c4...a9bd52`; base `0x25c9c4...a9bd52`; arbitrum `0x25c9c4...a9bd52` | ⚠️ Unaudited |
| UniV4LiquidityLocker | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 5 deployments: ethereum `0x83eab3...53f7d7`; ethereum `0xe7873e...8e76f2`; base `0x41f3e9...41e41b`; base `0x4f26fa...95519e`; base `0xf5cdad...9fcca1` | ⚠️ Unaudited |
| WETH9 | token | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc02aaa...756cc2` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (28)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-387060 | `0x0845f9...cd7184` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-387061 | `0x0a33f7...07e410` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-387063 | `0x24bfd4...d35024` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x29ec7b...cc3c62` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-387065 | `0x35e575...b5fa07` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-387067 | `0x4eaa7c...517e0e` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-387072 | `0x6915dd...6cdd3a` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-387075 | `0x7ed92f...e3ddb0` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-387077 | `0x91228c...536a32` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9a4cd4...acfd6a` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-387078 | `0xa3f64d...c7a366` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-387083 | `0xbe5efb...a2e1fd` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-387084 | `0xc25470...064253` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-387086 | `0xd55bda...5cf17f` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-387087 | `0xd5d7fb...4f8c31` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-387089 | `0xe96a24...d35c6b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xefa940...6de484` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x03b957...c440ba` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x08aa22...22420c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x0a6d51...0054ee` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x50727f...c24197` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x71fed2...75cffd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x9594fc...9489fb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xaf41fa...da9e29` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xb988ba...4db763` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xc0d55d...13660c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xc75cd1...4ccb63` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xd9a671...11f156` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [SlowMist Audit Report - GoPlus Security(GPS).pdf (also discovered via alternate URL)](https://raw.githubusercontent.com/GoPlusSecurity/GPS-AUDIT/main/SlowMist%20Audit%20Report%20-%20GoPlus%20Security(GPS).pdf) | SlowMist | Audit | 2025-01 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 1 | high |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [21282] SlowMist Audit Report - GoPlus Security(GPS).pdf — no match: Only one contract GPS is in scope, as shown in the source code snippet.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| SlowMist Audit Report - GoPlus Security(GPS).pdf | GPS | unmatched — not counted | — | contract GPS is ERC20, ERC20Permit | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 29 |
| upstream | 0 |
| standard_library | 1 |
| needs_review | 28 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Address-book scope dispositions: 0 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 1 unmatched
- Matched-own operational status: 0 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=1
- Match method counts: n/a

Zero-match audit list:

- [21282] SlowMist Audit Report - GoPlus Security(GPS).pdf

Fork inheritance lineage and inherited audits are included when available.
