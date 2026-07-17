# Agentic Audit Brief: Ethervista

## Export Authority

- Production state: **blocked no audit authority**
- Raw selected rows: 0 across 0 audit(s)
- Eligible audit results: 0 (0 matched; 0 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e9e09d06b414f9cd852c36a58d42ce16279465f2d9791cd2a8178f3f54b89ecd`

## Project Overview

- Project: Ethervista (`ethervista`)
- Website: [https://ethervista.app](https://ethervista.app)
- Lifecycle: unknown
- Generated: 2026-07-15T18:30:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: ethereum
- Contract surface: 22 unique implementations (22 raw deployments)
- Coverage basis: 0/2 confirmed own live verified implementations (0.0%); conservative 0.0% with 0 needs-review implementation(s)
- DeFi Llama TVL: $457,744.38
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for Ethervista. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 2 contract row(s) across ethereum. Structural roles: 1 core, 1 supporting. No upgradeable pattern was identified in these rows.

## Logic Topography

- Exact-run contract rows: 2
- Structural roles: core (1), supporting (1)
- Contract kinds: contract (2)
- Detected standards: none
- Frameworks: openzeppelin (1)
- Upgradeable-pattern rows: 0

## Fork Analysis

0 of 9 contracts are derived from known codebases. 9 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0x9099ef7f34dc1af0d27e49dc5b604bccc03dcb21`, chain 1)
- UnnamedContract (`0x9a27cb5ae0b2cee0bb71f9a85c0d60f3920757b4`, chain 1)
- UnnamedContract (`0xc9bca88b04581699fab5aa276ccaff7df957cbbf`, chain 1)
- UnnamedContract (`0xcedd366065a146a039b92db35756ecd7688fcc77`, chain 1)
- UnnamedContract (`0xe17a0c382c8332a889ec9d026d6948e26c7f617d`, chain 1)
- UnnamedContract (`0xee5a6f8a55b02689138c195031d09bafdc7d278f`, chain 1)
- UnnamedContract (`0xfdd05552f1377aa488afed744c8024358af02041`, chain 1)
- HARDLOCK (`0xf6b510928ab880507246cd6946b7f061eb8a9c78`, chain 1)
- safeTokenFactory (`0x1a97a037a120db530ddce8370e24ead0fe9cf5d0`, chain 1)

## Contract Surface Quality

- Logic-topography rows: 2; live-surface rows included: 2 (2 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 9/9 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 0/2 (0.0%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 9 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 13 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 0
- Confirmed-live implementations: 9 of 22 unique; 13 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 0/15
- Verified + Unaudited implementations: 15
- Verified by bytecode match: 0
- Unverified implementations: 7
- Unique implementations: 22
- Raw deployments: 22
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

### ⚠️ Verified + Unaudited (15)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| EtherFunFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x149bd5c2fc1ea9241e4e90548eb5c8cc3d1549e6` | ⚠️ Unaudited |
| EtherfunSale | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x75924504b696f3d29fefd01b2bde7ae21ed99515` | ⚠️ Unaudited |
| EtherfunSaleDeployer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x28be3d3ea9deb58f492c76d2cb4cb4ab3c573c7b` | ⚠️ Unaudited |
| Ethervista | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x06577fa758057f343dafe18a45231db075389899` | ⚠️ Unaudited |
| EtherVistaFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x76f0951a56bf3a9f1c7906f3dbc71e7888ac828a` | ⚠️ Unaudited |
| EtherVistaRouter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x07fff0025556dac7a1e96fc64abda54ee7f3e80b` | ⚠️ Unaudited |
| EulerFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa90134a35008c234f0fdb2ede6064ade4f356f59` | ⚠️ Unaudited |
| HARDLOCK | unknown | project_anchor | own_supporting | 0 | ethereum | unit-385040 | `0xf6b510928ab880507246cd6946b7f061eb8a9c78` | ⚠️ Unaudited |
| HARDSTAKE | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5979190de1962a6b1e25b104c49a26995ee89265` | ⚠️ Unaudited |
| OREBIT20Deployer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8c662347d94f1983ddd00c90120f05dc8fc76cce` | ⚠️ Unaudited |
| safeTokenFactory | unknown | project_anchor | own_supporting | 0 | ethereum | unit-385033 | `0x1a97a037a120db530ddce8370e24ead0fe9cf5d0` | ⚠️ Unaudited |
| SOGWReceiver | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xeec2d148be96020d276dde0bb8a23e1838d68d5a` | ⚠️ Unaudited |
| standard20Deployer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x054cef04c2a16468cbda2bf7f1affc0ca9f13e7f` | ⚠️ Unaudited |
| swog20Deployer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2b7ce3421df9595079ab60e8e5dbb6727318938f` | ⚠️ Unaudited |
| vista20Deployer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x05dc314ea2029c7dceee9e3ee7b28058b4830dbf` | ⚠️ Unaudited |

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
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-385034 | `0x9099ef7f34dc1af0d27e49dc5b604bccc03dcb21` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-385035 | `0x9a27cb5ae0b2cee0bb71f9a85c0d60f3920757b4` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-385036 | `0xc9bca88b04581699fab5aa276ccaff7df957cbbf` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-385037 | `0xcedd366065a146a039b92db35756ecd7688fcc77` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-385038 | `0xe17a0c382c8332a889ec9d026d6948e26c7f617d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-385039 | `0xee5a6f8a55b02689138c195031d09bafdc7d278f` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-385041 | `0xfdd05552f1377aa488afed744c8024358af02041` | ❓ Unverified |

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
| ethereum | `0xf6b510928ab880507246cd6946b7f061eb8a9c78` | HARDLOCK | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x1a97a037a120db530ddce8370e24ead0fe9cf5d0` | safeTokenFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 15 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 7 |

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
