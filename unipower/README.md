# Agentic Audit Brief: UniPower

## Export Authority

- Production state: **blocked no audit authority**
- Raw selected rows: 0 across 0 audit(s)
- Eligible audit results: 0 (0 matched; 0 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e40c73181a386361babecc6895e0f6c5587548f92814db09f88491f8b4a38d92`

## Project Overview

- Project: UniPower (`unipower`)
- Website: [https://unipower.network](https://unipower.network)
- Lifecycle: unknown
- Generated: 2026-07-24T14:10:00.000Z
- Pipeline run: brief-deployer-expansion-all-20260724-v1
- Chains: ethereum, polygon
- Contract surface: 25 unique implementations (25 raw deployments)
- Coverage basis: 0/1 confirmed own live verified implementations (0.0%); conservative 0.0% with 0 needs-review implementation(s)
- DeFi Llama TVL: $461,870.17
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## ⚠️ Limited Contract Surface

This brief covers only 1 contract implementation(s). The pipeline may not have discovered all deployed contracts for this project.
Coverage assessment and audit matching are based on this incomplete surface.

## Project Description

This brief describes the observed EVM deployment and audit surface for UniPower. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 2 contract row(s) across ethereum. Structural roles: 2 core. No upgradeable pattern was identified in these rows.

## Logic Topography

- Exact-run contract rows: 2
- Structural roles: core (2)
- Contract kinds: contract (2)
- Detected standards: erc20 (1)
- Frameworks: openzeppelin (1)
- Upgradeable-pattern rows: 0

## Fork Analysis

0 of 1 contracts are derived from known codebases. 1 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- UniPower (`0xf2f9a7e93f845b3ce154efbeb64fb9346fcce509`, chain 1)

## Contract Surface Quality

- Logic-topography rows: 2; live-surface rows included: 2 (1 live, 1 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 1/2 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 0/1 (0.0%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 1 own, 1 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 23 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 0
- Confirmed-live implementations: 1 of 25 unique; 24 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 0/6
- Verified + Unaudited implementations: 6
- Verified by bytecode match: 0
- Unverified implementations: 19
- Unique implementations: 25
- Raw deployments: 25
- Audits discovered: 0 (0 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: n/a (unknown)
- Audit staleness (calendar age): 0 fresh, 0 aging, 0 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (6)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| EthPrime | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe40e1531a4b56fb65571ad2ca43dc0048a316a2d` | ⚠️ Unaudited |
| Goo | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa170fb6f3e0f127f1f592a656eadff3dc421a5f6` | ⚠️ Unaudited |
| LiquidityVault | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-395310 | `0xc73bb871dbf66958242deba79e4db19bc2934513` | ⚠️ Unaudited |
| PowerLock | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xae7b530be880457523eb46d8ec6484e067c018b4` | ⚠️ Unaudited |
| ProofOfEtherDelta | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc5765b90766da9debad0b9122521c27e1ea933c1` | ⚠️ Unaudited |
| UniPower | unknown | project_anchor | own_supporting | 0 | ethereum | unit-395311 | `0xf2f9a7e93f845b3ce154efbeb64fb9346fcce509` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (19)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x152b7f3352d12a5e6dbf4b7a74ac94485f1f9c01` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1a2b8bd37a89c45dd12304e67818f2adb5a54bf5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1b3e697596eb3df0e4e7df3f5e314ec6b3d169c1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x275e4e092d30b1fcfb04691b4a639e045593b2a3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3db53598bc362ca94426f73eff128e9931db1af5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x608b18886736c7743af8facb8e5c7e5c069fe6da` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x76b5ea183d30119d2467c71982b2e08385e657f7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa1ed2ce4340918a0b998e31ffd33afdff76f6a68` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa4a4e1c593f13e793d5b99e28c247d2916ba3818` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xabd3f1231f61437c5283ad59be5d4b829102c338` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb435da8a65bfa26ace6655e0a452dd740205cab0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbca0be141be0f0ba4e78e44eb2f395bc067037df` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc285ea42114e2f6aef043c2da5198ea11ff97a90` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd0b69eaa09aacabceedfa0f2a2ceeda4eacacf4a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd23d2dd023095d22f61662e3de7f6b456d5721d7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xea7719fefc1e30f50856b20ce7f0c738583d6177` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf9315727bbd54f2ac98b8708c4d2b103b883af8e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfc330419c8f60e68ca40aa152c3cde798b4c40a5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfffb632647a33326dca6299b2c4324b0d519a4e4` | ❓ Unverified |

## Deployer Expansion Inventory

These rows are additive inventory from `project_contracts.discovery_source=deployer_expansion`; they do not change scope matching, coverage, or logic topography in this brief.

- Source: `project_contracts.discovery_source=deployer_expansion`
- Decision run: `deployer-candidate-production-20260712`
- Total contracts: 19
- Live contracts: 0
- Unknown liveness contracts: 19
- Source-verified contracts: 0
- Currently scope-matched contracts retained as-is: 0
- Classification counts: unverified unclassified=19

| Classification | Contract | Address-Book Class | Role | Liveness | Source | Decision | Deployer |
|---|---|---|---|---|---|---|---|
| unverified unclassified | UnnamedContract<br>`0x152b7f3352d12a5e6dbf4b7a74ac94485f1f9c01` | non_address_book | unknown | unknown | unverified | n/a | `0xc951d3463ebba4e9ec8ddfe1f42bc5895c46ec8f` |
| unverified unclassified | UnnamedContract<br>`0x1a2b8bd37a89c45dd12304e67818f2adb5a54bf5` | non_address_book | unknown | unknown | unverified | n/a | `0xc951d3463ebba4e9ec8ddfe1f42bc5895c46ec8f` |
| unverified unclassified | UnnamedContract<br>`0x1b3e697596eb3df0e4e7df3f5e314ec6b3d169c1` | non_address_book | unknown | unknown | unverified | n/a | `0xc951d3463ebba4e9ec8ddfe1f42bc5895c46ec8f` |
| unverified unclassified | UnnamedContract<br>`0x275e4e092d30b1fcfb04691b4a639e045593b2a3` | non_address_book | unknown | unknown | unverified | n/a | `0xc951d3463ebba4e9ec8ddfe1f42bc5895c46ec8f` |
| unverified unclassified | UnnamedContract<br>`0x3db53598bc362ca94426f73eff128e9931db1af5` | non_address_book | unknown | unknown | unverified | n/a | `0xc951d3463ebba4e9ec8ddfe1f42bc5895c46ec8f` |
| unverified unclassified | UnnamedContract<br>`0x608b18886736c7743af8facb8e5c7e5c069fe6da` | non_address_book | unknown | unknown | unverified | n/a | `0xc951d3463ebba4e9ec8ddfe1f42bc5895c46ec8f` |
| unverified unclassified | UnnamedContract<br>`0x76b5ea183d30119d2467c71982b2e08385e657f7` | non_address_book | unknown | unknown | unverified | n/a | `0xc951d3463ebba4e9ec8ddfe1f42bc5895c46ec8f` |
| unverified unclassified | UnnamedContract<br>`0xa1ed2ce4340918a0b998e31ffd33afdff76f6a68` | non_address_book | unknown | unknown | unverified | n/a | `0xc951d3463ebba4e9ec8ddfe1f42bc5895c46ec8f` |
| unverified unclassified | UnnamedContract<br>`0xa4a4e1c593f13e793d5b99e28c247d2916ba3818` | non_address_book | unknown | unknown | unverified | n/a | `0xc951d3463ebba4e9ec8ddfe1f42bc5895c46ec8f` |
| unverified unclassified | UnnamedContract<br>`0xabd3f1231f61437c5283ad59be5d4b829102c338` | non_address_book | unknown | unknown | unverified | n/a | `0xc951d3463ebba4e9ec8ddfe1f42bc5895c46ec8f` |
| unverified unclassified | UnnamedContract<br>`0xb435da8a65bfa26ace6655e0a452dd740205cab0` | non_address_book | unknown | unknown | unverified | n/a | `0xc951d3463ebba4e9ec8ddfe1f42bc5895c46ec8f` |
| unverified unclassified | UnnamedContract<br>`0xbca0be141be0f0ba4e78e44eb2f395bc067037df` | non_address_book | unknown | unknown | unverified | n/a | `0xc951d3463ebba4e9ec8ddfe1f42bc5895c46ec8f` |
| unverified unclassified | UnnamedContract<br>`0xc285ea42114e2f6aef043c2da5198ea11ff97a90` | non_address_book | unknown | unknown | unverified | n/a | `0xc951d3463ebba4e9ec8ddfe1f42bc5895c46ec8f` |
| unverified unclassified | UnnamedContract<br>`0xd0b69eaa09aacabceedfa0f2a2ceeda4eacacf4a` | non_address_book | unknown | unknown | unverified | n/a | `0xc951d3463ebba4e9ec8ddfe1f42bc5895c46ec8f` |
| unverified unclassified | UnnamedContract<br>`0xd23d2dd023095d22f61662e3de7f6b456d5721d7` | non_address_book | unknown | unknown | unverified | n/a | `0xc951d3463ebba4e9ec8ddfe1f42bc5895c46ec8f` |
| unverified unclassified | UnnamedContract<br>`0xea7719fefc1e30f50856b20ce7f0c738583d6177` | non_address_book | unknown | unknown | unverified | n/a | `0xc951d3463ebba4e9ec8ddfe1f42bc5895c46ec8f` |
| unverified unclassified | UnnamedContract<br>`0xf9315727bbd54f2ac98b8708c4d2b103b883af8e` | non_address_book | unknown | unknown | unverified | n/a | `0xc951d3463ebba4e9ec8ddfe1f42bc5895c46ec8f` |
| unverified unclassified | UnnamedContract<br>`0xfc330419c8f60e68ca40aa152c3cde798b4c40a5` | non_address_book | unknown | unknown | unverified | n/a | `0xc951d3463ebba4e9ec8ddfe1f42bc5895c46ec8f` |
| unverified unclassified | UnnamedContract<br>`0xfffb632647a33326dca6299b2c4324b0d519a4e4` | non_address_book | unknown | unknown | unverified | n/a | `0xc951d3463ebba4e9ec8ddfe1f42bc5895c46ec8f` |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

- No persisted address-book scope analysis is available.

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | `0xf2f9a7e93f845b3ce154efbeb64fb9346fcce509` | UniPower | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 6 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 19 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Address-book scope dispositions: 0 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 0 unmatched
- Matched-own operational status: 0 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Fork inheritance lineage and inherited audits are included when available.
