# Agentic Audit Brief: Swapr

## Export Authority

- Production state: **published scope**
- Raw selected rows: 0 across 0 audit(s)
- Eligible audit results: 1 (0 matched; 1 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `12555af2097191e60e7a3dc0743058c9046ed87a105382bdae663a49f79103f7`

## Project Overview

- Project: Swapr (`swapr`)
- Website: [https://swapr.eth.link/#/swap](https://swapr.eth.link/#/swap)
- Lifecycle: unknown
- Generated: 2026-07-17T12:00:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: arbitrum, ethereum, gnosis
- Contract surface: 37 unique implementations (37 raw deployments)
- Coverage basis: not assessable — No eligible owned address-book contracts are available for an operational-liveness denominator.
- DeFi Llama TVL: $749,491.00
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## ⚠️ Limited Contract Surface

This brief covers only 0 contract implementation(s). The pipeline may not have discovered all deployed contracts for this project.
Coverage assessment and audit matching are based on this incomplete surface.

## Project Description

This brief describes the observed EVM deployment and audit surface for Swapr. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 2 contract row(s) across arbitrum, ethereum, gnosis. Structural roles: 1 core, 1 supporting. No upgradeable pattern was identified in these rows.

## Logic Topography

- Exact-run contract rows: 2
- Structural roles: core (1), supporting (1)
- Contract kinds: contract (2)
- Detected standards: ownable (1)
- Frameworks: openzeppelin (2)
- Upgradeable-pattern rows: 0

## Contract Surface Quality

- Operational liveness prerequisite: not_applicable; 0/0 eligible owned address-book contracts resolved from completed operational-liveness snapshots.
- Logic-topography rows: 2; live/inactive and live-deployment-unit totals are withheld until liveness completes.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: not assessable
- Coverage assessment: not_assessable (low confidence) — No eligible owned address-book contracts are available for an operational-liveness denominator.
- Address-book implementation classification: 0 own, 29 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 8 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 1
- Operational liveness: not_applicable; 0/0 eligible owned address-book contracts resolved. Deployed-live counts are withheld from coverage.
- All block-explorer-verified implementations audited (incl. non-live): 0/10
- Verified + Unaudited implementations: 10
- Verified by bytecode match: 0
- Unverified implementations: 27
- Unique implementations: 37
- Raw deployments: 37
- Audits discovered: 1 (1 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2020-10 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 1 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (10)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| DXdaoERC20StakingRewardsDistributionFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x4e6a2ef2b0b7e405e0bdfeb56c3e09e3aeb01402` | ⚠️ Unaudited |
| DXswapDeployer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x01f1b4a2a48d5739dcc80d9de0f38bcc24902518` | ⚠️ Unaudited |
| DXswapFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x047f32f04c6a36bc28fe2d9fe407b49ad5c1998d` | ⚠️ Unaudited |
| DXswapFeeReceiver | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | arbitrum | unit-257588 | `0x1d7c7cb66fb2d75123351fd0d6779e8d7724a1ae` | ⚠️ Unaudited |
| DXswapFeeSetter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x34d924f95313ee0faad03dac6cf60090a8d60f9d` | ⚠️ Unaudited |
| DXswapRouter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0x1dc9455b013a854f5c25981a2963d6f53b3af36e` | ⚠️ Unaudited |
| ERC20StakingRewardsDistribution | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xd28629981518e2b2cd2d5125b371f9810bf37ba2` | ⚠️ Unaudited |
| KPITokensFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | gnosis | n/a | `0xe9c1c9722bbe9e36489e16c095641b9c803ceacb` | ⚠️ Unaudited |
| StandardArbERC20 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | `0xde903e2712288a1da82942dddf2c20529565ac30` | ⚠️ Unaudited |
| SWPRConverter | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | arbitrum | unit-257589 | `0x2b058af96175a847bf3e5457b3a702f807daddfd` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (27)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | n/a | `0x00000000000c2e074ec69a0dfb2997ba6c7d2e1e` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | n/a | `0x156f0568a6ce827e5d39f6768a5d24b694e1ea7b` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | n/a | `0x288879b3cafa044db6ba18ee638bbc1a233f8548` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | n/a | `0x35685398af991f43813475e189f791610ad0be2b` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | n/a | `0x37723287ae6f34866d82ee623401f92ec9013154` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | n/a | `0x4003f5285e63ff405412434c362a37ad89b84b6a` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | n/a | `0x4976fb03c32e5b8cfe2b6ccb31c09ba78ebaba41` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | n/a | `0x519b70055af55a007110b4ff99b0ea33071c720a` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | n/a | `0x57f1887a8bf19b14fc0df6fd9b2acc9af147ea85` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | n/a | `0x5f239a6671bc6d2baef6d7cd892296e678810882` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | n/a | `0x6cacdb97e3fc8136805a9e7c342d866ab77d0957` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | n/a | `0x93db90445b76329e9ed96ecd74e76d8fbf2590d8` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | n/a | `0x9467dcfd4519287e3878c018c02f5670465a9003` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | n/a | `0xa1d65e8fb6e87b60feccbc582f7f97804b725521` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | n/a | `0xb9960d9bca016e9748be75dd52f02188b9d0829f` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | n/a | `0xc088e949b9643d5c47a188084579b8d19b1b1112` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | n/a | `0xc6130400c1e3cd7b352db75055db9dd554e00ef0` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | n/a | `0xce0bb1a5e9c723fe189d9bf5457ded9b21e40f9e` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | n/a | `0xd34971bab6e5e356fd250715f5de0492bb070452` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | arbitrum | n/a | `0x2b240b523f69b9af3adb1c5924f6db849683a394` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | arbitrum | n/a | `0x3172edda6ff8b2b2fa7fed40ee1fd92f1f4dd424` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | arbitrum | n/a | `0x359f20ad0f42d75a5077e65f30274cabe6f4f01a` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | arbitrum | n/a | `0x530476d5583724a89c8841eb6da76e7af4c0f17e` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | arbitrum | n/a | `0x56f53cb6c0a80947c9be239a62bc65fa20d4b41d` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | arbitrum | n/a | `0x9467dcfd4519287e3878c018c02f5670465a9003` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | arbitrum | n/a | `0xc3ae0333f0f34aa734d5493276223d95b8f9cb37` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | arbitrum | n/a | `0xeca7f78d59d16812948849663b26fe10e320f80c` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [ipfs.io/ipfs/QmNspbn2dQgQMQ9uXkMc7Fjf12RUVVJTzB27ywGeLUXXdn](https://ipfs.io/ipfs/QmNspbn2dQgQMQ9uXkMc7Fjf12RUVVJTzB27ywGeLUXXdn) | unknown | Audit | 2020-10 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 6 | high |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [21020] ipfs.io/ipfs/QmNspbn2dQgQMQ9uXkMc7Fjf12RUVVJTzB27ywGeLUXXdn — no match: Audit report title indicates Oct, 2020. No specific day given, so last day of month used.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| ipfs.io/ipfs/QmNspbn2dQgQMQ9uXkMc7Fjf12RUVVJTzB27ywGeLUXXdn | DXswapERC20 | unmatched — not counted | — | listed in scope section 1.2 | no |
| ipfs.io/ipfs/QmNspbn2dQgQMQ9uXkMc7Fjf12RUVVJTzB27ywGeLUXXdn | DXswapPair | unmatched — not counted | — | listed in scope section 1.2 | no |
| ipfs.io/ipfs/QmNspbn2dQgQMQ9uXkMc7Fjf12RUVVJTzB27ywGeLUXXdn | DXswapFactory | unmatched — not counted | — | listed in scope section 1.2 | no |
| ipfs.io/ipfs/QmNspbn2dQgQMQ9uXkMc7Fjf12RUVVJTzB27ywGeLUXXdn | DXswapDeployer | unmatched — not counted | — | listed in scope section 1.2 | no |
| ipfs.io/ipfs/QmNspbn2dQgQMQ9uXkMc7Fjf12RUVVJTzB27ywGeLUXXdn | DXswapLibrary | unmatched — not counted | — | listed in scope section 1.2 | no |
| ipfs.io/ipfs/QmNspbn2dQgQMQ9uXkMc7Fjf12RUVVJTzB27ywGeLUXXdn | DXswapRouter | unmatched — not counted | — | listed in scope section 1.2 | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 10 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 27 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Address-book scope dispositions: 0 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 6 unmatched
- Matched-own operational status: 0 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=1
- Match method counts: n/a

Zero-match audit list:

- [21020] ipfs.io/ipfs/QmNspbn2dQgQMQ9uXkMc7Fjf12RUVVJTzB27ywGeLUXXdn

Fork inheritance lineage and inherited audits are included when available.
