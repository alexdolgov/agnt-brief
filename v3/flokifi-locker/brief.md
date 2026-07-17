# Agentic Audit Brief: FlokiFi Locker

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

- Project: FlokiFi Locker (`flokifi-locker`)
- Website: [https://flokifi.com](https://flokifi.com)
- Lifecycle: unknown
- Generated: 2026-07-15T18:30:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: arbitrum, avalanche, base, blast, bsc, cronos, ethereum, fantom, opbnb, optimism, polygon
- Contract surface: 26 unique implementations (26 raw deployments)
- Coverage basis: not assessable — No confirmed own live-verified denominator is available.
- DeFi Llama TVL: $8,886,132.16
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

No contract logic was present for FlokiFi Locker in the closed normalized topography run; this brief does not infer a protocol purpose from missing code.

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

0 of 7 contracts are derived from known codebases. 7 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0xf5d492ffbec47db69333a6812bec227b6f670a86`, chain 1)
- UnnamedContract (`0xfbec9991f2ef1e5cc3a408e2555c00958b159c76`, chain 10)
- UnnamedContract (`0xe33ee27a75c31511e7b91fb05e1091daa626b4d4`, chain 56)
- UnnamedContract (`0x76415004e851de4f7da7aad3f066e5cd6572062d`, chain 137)
- UnnamedContract (`0x6817b11b7292120818213f627cc6ed330fec3df1`, chain 250)
- UnnamedContract (`0xc9ddec022bf430d61e356677edddaa5696d636ef`, chain 42161)
- UnnamedContract (`0x9cdac53df578d3bda98fe41fc2cd6ceeb28da644`, chain 43114)

## Contract Surface Quality

- Logic-topography rows: 0; live-surface rows included: 0 (0 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 7/7 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: not assessable
- Coverage assessment: not_assessable (low confidence) — No confirmed own live-verified denominator is available.
- Address-book implementation classification: 7 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 19 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 0
- Confirmed-live implementations: 7 of 26 unique; 19 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 0/19
- Verified + Unaudited implementations: 19
- Verified by bytecode match: 0
- Unverified implementations: 7
- Unique implementations: 26
- Raw deployments: 26
- Audits discovered: 2 (2 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2023-11 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 1 stale, 1 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (19)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| ConstantMultiplier | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb254cc6c1d178c2de8182cede6113a986bb90721` | ⚠️ Unaudited |
| DynamicTaxHandler | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x834f96fd4fe9147a2a647d957fbbe67fec62b67b` | ⚠️ Unaudited |
| ExponentialTaxHandler | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa4ffccd34a129a2554db737b518b269b81d87dbe` | ⚠️ Unaudited |
| FLOKI | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x43f11c02439e2736800433b4594994bd43cd066d` | ⚠️ Unaudited |
| FlokiInuNFTReward | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x064f9547a78bd5ba35a7aeb2221de69b86cd6307` | ⚠️ Unaudited |
| FlokiInuNFTRewardPickUp | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1b231f8e6f16ea0b5ca0d2f39eb595bec3e5db16` | ⚠️ Unaudited |
| FlokiInuNFTRubyRewardPickUp | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1b823442253556b4cb8d2586d8dc0fc01c2dc741` | ⚠️ Unaudited |
| FlokiRewardToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf7756db83625e78d693ca90749e2d0869dfc099c` | ⚠️ Unaudited |
| FlokiStakingPool | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb8d2471e35ee033db509e0456c8efc4135f4ee43` | ⚠️ Unaudited |
| Flokitar | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x23051fe0eb93fabe7b314fd56a95f395058c83b9` | ⚠️ Unaudited |
| GemstoneNFT | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0398947346144d39e1983c3d9a63248a2655ec00` | ⚠️ Unaudited |
| PenaltyFee | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4761295cb20bbf40952b3239bdc4fcd14021e30d` | ⚠️ Unaudited |
| SpecialTaxHandler | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4b4cf7c7e189da2eddcfbf4430ca5ca9ce81baf0` | ⚠️ Unaudited |
| StaticTaxHandler | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x12e39cd22501eec967663b9b58946d02da2df74c` | ⚠️ Unaudited |
| StaticTaxHandlerWithMaximum | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x162e54eb85dd85c3f1d27918d3fa950af1033bf7` | ⚠️ Unaudited |
| T1 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4507cef57c46789ef8d1a19ea45f4216bae2b528` | ⚠️ Unaudited |
| TreasuryHandlerAlpha | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x35e6e44f97e3a112dbabf9eb47d6f84224024c24` | ⚠️ Unaudited |
| ZeroTaxHandler | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4491c4c1d1bf636057eab66cd986da08f619bd56` | ⚠️ Unaudited |
| ZeroTreasuryHandler | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2bd06f15bcb6ff028befc4a4dd21ed0f1028b0e2` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (7)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-240028 | `0xf5d492ffbec47db69333a6812bec227b6f670a86` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-240029 | `0xfbec9991f2ef1e5cc3a408e2555c00958b159c76` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-240034 | `0xe33ee27a75c31511e7b91fb05e1091daa626b4d4` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-240030 | `0x76415004e851de4f7da7aad3f066e5cd6572062d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | fantom | unit-240031 | `0x6817b11b7292120818213f627cc6ed330fec3df1` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-240032 | `0xc9ddec022bf430d61e356677edddaa5696d636ef` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | avalanche | unit-240033 | `0x9cdac53df578d3bda98fe41fc2cd6ceeb28da644` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [DL audit link](https://skynet.certik.com/projects/flokifi) | CertiK | Audit | 2023-11 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 1 | medium |
| [Is FlokiFi Locker Secure and Audited?](https://flokifi.gitbook.io/flokifi-documentation/about-flokifi/is-flokifi-locker-secure-and-audited.md) | unknown | Audit | n/a | unknown | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [20302] DL audit link — no match: Only one contract explicitly named in scope: FlokiRewardToken.sol. Other files (IMultiplier.sol, IPenaltyFee.sol) are listed as audited files but not explicitly stated as in scope; they may be interfaces. The audit date is inferred from 'Last Audit was delivered on 11/6/2023' and 'Revised on 11/6/2023'.
- [20303] Is FlokiFi Locker Secure and Audited? — no match: The provided text is a documentation page stating that FlokiFi Locker has been audited by Certik, but it does not list any specific contracts, files, or modules in scope. No contract names or audit date are extractable.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| DL audit link | FlokiRewardToken | unmatched — not counted | — | Listed as 'Assessed Contract' in the audit report. | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 19 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 7 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 2
- Inherited remapped matches: 0
- Address-book scope dispositions: 0 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 1 unmatched
- Matched-own operational status: 0 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: low=1, medium=1
- Match method counts: n/a

Zero-match audit list:

- [20302] DL audit link
- [20303] Is FlokiFi Locker Secure and Audited?

Fork inheritance lineage and inherited audits are included when available.
