# Agentic Audit Brief: AutoShark

## Export Authority

- Production state: **published scope**
- Raw selected rows: 0 across 0 audit(s)
- Eligible audit results: 1 (0 matched; 1 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e9e09d06b414f9cd852c36a58d42ce16279465f2d9791cd2a8178f3f54b89ecd`

## Project Overview

- Project: AutoShark (`autoshark`)
- Website: [https://autoshark.finance/](https://autoshark.finance/)
- Lifecycle: unknown
- Generated: 2026-07-15T18:30:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: bsc
- Contract surface: 39 unique implementations (39 raw deployments)
- Coverage basis: 0/1 confirmed own live verified implementations (0.0%); conservative 0.0% with 0 needs-review implementation(s)
- DeFi Llama TVL: $127,759.59
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for AutoShark. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 1 contract row(s) across bsc. Structural roles: 1 core. No upgradeable pattern was identified in these rows.

## Logic Topography

- Exact-run contract rows: 1
- Structural roles: core (1)
- Contract kinds: contract (1)
- Detected standards: ownable (1)
- Frameworks: openzeppelin (1)
- Upgradeable-pattern rows: 0

## Fork Analysis

0 of 5 contracts are derived from known codebases. 5 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0x1fd789fa513871cb89aa655f11ec777cad1784a0`, chain 56)
- UnnamedContract (`0x5f7de53f6df023d1c64046e9c4a2b8a1a0ec95c6`, chain 56)
- UnnamedContract (`0x9e7aebae4511ab3754b9c25e904d37254d1973d1`, chain 56)
- UnnamedContract (`0xf7321385a461c4490d5526d83e63c366b149cb15`, chain 56)
- Zap (`0xa96cea606d206310e4ffaa65577d316d49043cdf`, chain 56)

## Contract Surface Quality

- Logic-topography rows: 1; live-surface rows included: 1 (1 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 5/5 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 0/1 (0.0%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 5 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 34 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 8 standard proxy/library)
- Proxy deployments represented within implementation groups: 8
- Confirmed-live implementations: 5 of 39 unique; 34 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 0/35
- Verified + Unaudited implementations: 35
- Verified by bytecode match: 0
- Unverified implementations: 4
- Unique implementations: 39
- Raw deployments: 39
- Audits discovered: 1 (1 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2021-09 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 1 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (35)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| AtlantisToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x58eac95177aca8af7c55b2c05fd009a3cae690ae` | ⚠️ Unaudited |
| EcosystemFund | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xd160e30a68b502a52f4d4e22e1232c0db743236a` | ⚠️ Unaudited |
| FinsFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x6fd85eb8c30763f26d2373031add58c61389f4b2` | ⚠️ Unaudited |
| FinsRouter02 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x2638846fcfa6d023eb24966222290c7e0e83e22b` | ⚠️ Unaudited |
| FinsRouterAlt | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xea024b701ef0acb1bd0ff71dd756877ff6538e4d` | ⚠️ Unaudited |
| FinsToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x1b219aca875f8c74c33cff9ff98f3a9b62fcbff5` | ⚠️ Unaudited |
| HammerNFT | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xca56af4bde480b3c177e1a4115189f261c2af034` | ⚠️ Unaudited |
| JawsToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xdd97ab35e3c0820215bc85a395e13671d84ccba2` | ⚠️ Unaudited |
| Lottery | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x17c672a9a549c98338664530feb207fc17422f4a` | ⚠️ Unaudited |
| MasterOcean | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x8857af8205f224870dea119e2c75af386efb192a` | ⚠️ Unaudited |
| Oracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x3a15f7991741b7c447bf5571ab7b7f10140c0607` | ⚠️ Unaudited |
| PlatformFund | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x4959be69bd607942283160d8f8f94504558c813f` | ⚠️ Unaudited |
| ProxyAdmin | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x0c30c43cc2d1ca57ce6b791ddec3517ef4d3a2d8` | ⚠️ Unaudited |
| SAtlantisToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xe6fa6f37a5a86f521d3fe61c58e7370cd7e2caab` | ⚠️ Unaudited |
| SharkMinter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x0bea199b16d26964f5731f270cd9a006f1a590ee` | ⚠️ Unaudited |
| SharkNFT | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x13e14f6ec8fee53b69ebd4bd69e35ffcfe8960de` | ⚠️ Unaudited |
| SharkNFT2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xcd2b54fd07e9a71d261e1e3ce6c4ebb54810b12f` | ⚠️ Unaudited |
| SharkNFT2OG | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x2244db13245a6febfd43c2411ce6afcaf3b6d9ad` | ⚠️ Unaudited |
| SharkPool | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x20e571543c825def7ffceaa354d5bc7727a62602` | ⚠️ Unaudited |
| SharkReferral | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xa41b47399288994c6bce1c5e26b14ec9e948e9a5` | ⚠️ Unaudited |
| SharkToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xe323b82acd7304e1e4ae85ac2b8fa47278beea68` | ⚠️ Unaudited |
| SmartChefFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x7e2658c045fce430f47faa5ef035d77cff182e5a` | ⚠️ Unaudited |
| StrategyHelperV1 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xd9bafd0024d931d103289721de0d43077e7c2b49` | ⚠️ Unaudited |
| Timelock | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x12c06b9c9b1dda0d21c3676e3df6ba77ece23342` | ⚠️ Unaudited |
| TimelockController | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x0ff4436ae09196c5e7e2cd180c01d9420cd19d98` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | bsc | n/a | `0x0496887e9f2274b94816d9fdd7b8e675d338c550` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | bsc | n/a | `0x0c5052ea0152c28fd5953adf83b4ee70fdb98b0a` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | bsc | n/a | `0x505bf3d87aedfcf80c043a494dd14953454e64e6` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | bsc | n/a | `0x78120bbe2b14c86a14711a0ce7bbeba1af3b63b9` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | bsc | n/a | `0xa8b2e94c1158b52f2dd7e6e99070b1a30a64babf` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | bsc | n/a | `0xb1e76ccf19455fc2a21e12de9bfaf05fa0ee46f9` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | bsc | n/a | `0xd5060542baeb3241d23ea6f32e27f8e637db5f6d` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | bsc | n/a | `0xd8a43f2d82e5ea4529ae7ab3360ba8a0722eff3d` | ⚠️ Unaudited |
| VaultBSWToBSW | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xf77455631a68d252515fa3fe091360a89ede8965` | ⚠️ Unaudited |
| Zap | unknown | project_anchor | own_supporting | 0 | bsc | unit-379836 | `0xa96cea606d206310e4ffaa65577d316d49043cdf` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (4)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-379833 | `0x1fd789fa513871cb89aa655f11ec777cad1784a0` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-379834 | `0x5f7de53f6df023d1c64046e9c4a2b8a1a0ec95c6` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-379835 | `0x9e7aebae4511ab3754b9c25e904d37254d1973d1` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-379837 | `0xf7321385a461c4490d5526d83e63c366b149cb15` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [skynet.certik.com/projects/autoshark](https://skynet.certik.com/projects/autoshark) | CertiK | Audit | 2021-09 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 2 | medium |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [21374] skynet.certik.com/projects/autoshark — no match: Extracted from audited files list; only two files explicitly named. Audit date from 'Revised on 9/25/2021'.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| skynet.certik.com/projects/autoshark | IFinsERC20 | unmatched — not counted | — | listed in audited files | no |
| skynet.certik.com/projects/autoshark | UQ112x112 | unmatched — not counted | — | listed in audited files | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| bsc | `0xa96cea606d206310e4ffaa65577d316d49043cdf` | Zap | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 25 |
| upstream | 0 |
| standard_library | 10 |
| needs_review | 4 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Address-book scope dispositions: 0 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 2 unmatched
- Matched-own operational status: 0 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: medium=1
- Match method counts: n/a

Zero-match audit list:

- [21374] skynet.certik.com/projects/autoshark

Fork inheritance lineage and inherited audits are included when available.
