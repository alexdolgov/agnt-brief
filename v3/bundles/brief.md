# Agentic Audit Brief: Bundles

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

- Project: Bundles (`bundles`)
- Website: [https://bundles.fi/](https://bundles.fi/)
- Lifecycle: unknown
- Generated: 2026-07-24T14:10:00.000Z
- Pipeline run: brief-deployer-expansion-all-20260724-v1
- Chains: ethereum
- Contract surface: 23 unique implementations (23 raw deployments)
- Coverage basis: 0/4 confirmed own live verified implementations (0.0%); conservative 0.0% with 0 needs-review implementation(s)
- DeFi Llama TVL: $583,104.58
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for Bundles. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 4 contract row(s) across ethereum. Structural roles: 4 core. No upgradeable pattern was identified in these rows.

## Logic Topography

- Exact-run contract rows: 4
- Structural roles: core (4)
- Contract kinds: contract (4)
- Detected standards: erc165 (1), erc20 (1), erc721 (1)
- Frameworks: openzeppelin (3), foundry (1), solmate (1)
- Upgradeable-pattern rows: 0

## Fork Analysis

0 of 5 contracts are derived from known codebases. 5 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0x601deaa741d09145b76b8a76752324484664d455`, chain 1)
- BundlesToken (`0x695f775551fb0d28b64101c9507c06f334b4ba86`, chain 1)
- Factory (`0x661f8b1ef3d24e99c461e0523fd441ed8d49bf19`, chain 1)
- Position (`0xc2b84f1f3b0b56c26a15c84ae3191cf487a28a8c`, chain 1)
- SwapFactory (`0xacff9eee0a5522000e7141b77107359a6462e8d2`, chain 1)

## Contract Surface Quality

- Logic-topography rows: 4; live-surface rows included: 4 (4 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 5/5 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 0/4 (0.0%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 5 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 18 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 0
- Confirmed-live implementations: 5 of 23 unique; 18 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 0/6
- Verified + Unaudited implementations: 6
- Verified by bytecode match: 0
- Unverified implementations: 17
- Unique implementations: 23
- Raw deployments: 23
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
| BundlesToken | unknown | project_anchor | own_supporting | 0 | ethereum | unit-381524 | `0x695f775551fb0d28b64101c9507c06f334b4ba86` | ⚠️ Unaudited |
| Factory | unknown | project_anchor | own_supporting | 0 | ethereum | unit-381523 | `0x661f8b1ef3d24e99c461e0523fd441ed8d49bf19` | ⚠️ Unaudited |
| OraclePair | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9dd78ea2b7a92b6cb5d4a495dac34f8641070ceb` | ⚠️ Unaudited |
| Position | unknown | project_anchor | own_supporting | 0 | ethereum | unit-381526 | `0xc2b84f1f3b0b56c26a15c84ae3191cf487a28a8c` | ⚠️ Unaudited |
| Router | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1cc22db69aa3b4f05098f1acee6cbdfd65ca03ea` | ⚠️ Unaudited |
| SwapFactory | unknown | project_anchor | own_supporting | 0 | ethereum | unit-381525 | `0xacff9eee0a5522000e7141b77107359a6462e8d2` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (17)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x03ae8f37d0fbe54ececd59382cd7991f42fcebd0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x07513ebda02c529b5d883b269cddd8a43e36394e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1751f0eadfeb3d618b9e4176eddc9e7d24657c00` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1f3566245c0e52e7c533d9683b15e81f0ed2c066` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x209be93480e23ca0876d5f9d6fbbd61490173f04` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x31a2889a7b6f43bac15826920e7ec362fe080618` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4a3d0b480a3a017eb940f75bb5e8e32050fc6da2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4ee5bd6971f97e33c4f3e351ff096557e6887efe` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x56a3666f596940683c898581e591962d7e1ddf4d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-381522 | `0x601deaa741d09145b76b8a76752324484664d455` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x65f1eb06cc707c8f057c0754642328dd1d102279` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x668101d7a7fa57e65d4054884994ad90c461c9f7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6b8cd00eeff2e8d9f563869b068d9c64ef1dd791` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7088d2a3855bf69320869ea28e5d95a142935441` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb6d00af3cb3bb58b051117b49e74a3a79fe1a0db` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb9abcf00b3d6e80cda0e3c4c44cb58a21f99d1e1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbc00954ccd3a661ce32110c856ff0bfa108bf187` | ❓ Unverified |

## Deployer Expansion Inventory

These rows are additive inventory from `project_contracts.discovery_source=deployer_expansion`; they do not change scope matching, coverage, or logic topography in this brief.

- Source: `project_contracts.discovery_source=deployer_expansion`
- Decision run: `deployer-candidate-production-20260712`
- Total contracts: 16
- Live contracts: 0
- Unknown liveness contracts: 16
- Source-verified contracts: 0
- Currently scope-matched contracts retained as-is: 0
- Classification counts: unverified unclassified=16

| Classification | Contract | Address-Book Class | Role | Liveness | Source | Decision | Deployer |
|---|---|---|---|---|---|---|---|
| unverified unclassified | UnnamedContract<br>`0x03ae8f37d0fbe54ececd59382cd7991f42fcebd0` | non_address_book | unknown | unknown | unverified | n/a | `0x66836a7921f96d63aa90f601c26c8857138ba810` |
| unverified unclassified | UnnamedContract<br>`0x07513ebda02c529b5d883b269cddd8a43e36394e` | non_address_book | unknown | unknown | unverified | n/a | `0x66836a7921f96d63aa90f601c26c8857138ba810` |
| unverified unclassified | UnnamedContract<br>`0x1751f0eadfeb3d618b9e4176eddc9e7d24657c00` | non_address_book | unknown | unknown | unverified | n/a | `0x66836a7921f96d63aa90f601c26c8857138ba810` |
| unverified unclassified | UnnamedContract<br>`0x1f3566245c0e52e7c533d9683b15e81f0ed2c066` | non_address_book | unknown | unknown | unverified | n/a | `0x66836a7921f96d63aa90f601c26c8857138ba810` |
| unverified unclassified | UnnamedContract<br>`0x209be93480e23ca0876d5f9d6fbbd61490173f04` | non_address_book | unknown | unknown | unverified | n/a | `0x66836a7921f96d63aa90f601c26c8857138ba810` |
| unverified unclassified | UnnamedContract<br>`0x31a2889a7b6f43bac15826920e7ec362fe080618` | non_address_book | unknown | unknown | unverified | n/a | `0x66836a7921f96d63aa90f601c26c8857138ba810` |
| unverified unclassified | UnnamedContract<br>`0x4a3d0b480a3a017eb940f75bb5e8e32050fc6da2` | non_address_book | unknown | unknown | unverified | n/a | `0x66836a7921f96d63aa90f601c26c8857138ba810` |
| unverified unclassified | UnnamedContract<br>`0x4ee5bd6971f97e33c4f3e351ff096557e6887efe` | non_address_book | unknown | unknown | unverified | n/a | `0x66836a7921f96d63aa90f601c26c8857138ba810` |
| unverified unclassified | UnnamedContract<br>`0x56a3666f596940683c898581e591962d7e1ddf4d` | non_address_book | unknown | unknown | unverified | n/a | `0x66836a7921f96d63aa90f601c26c8857138ba810` |
| unverified unclassified | UnnamedContract<br>`0x65f1eb06cc707c8f057c0754642328dd1d102279` | non_address_book | unknown | unknown | unverified | n/a | `0x66836a7921f96d63aa90f601c26c8857138ba810` |
| unverified unclassified | UnnamedContract<br>`0x668101d7a7fa57e65d4054884994ad90c461c9f7` | non_address_book | unknown | unknown | unverified | n/a | `0x66836a7921f96d63aa90f601c26c8857138ba810` |
| unverified unclassified | UnnamedContract<br>`0x6b8cd00eeff2e8d9f563869b068d9c64ef1dd791` | non_address_book | unknown | unknown | unverified | n/a | `0x66836a7921f96d63aa90f601c26c8857138ba810` |
| unverified unclassified | UnnamedContract<br>`0x7088d2a3855bf69320869ea28e5d95a142935441` | non_address_book | unknown | unknown | unverified | n/a | `0x66836a7921f96d63aa90f601c26c8857138ba810` |
| unverified unclassified | UnnamedContract<br>`0xb6d00af3cb3bb58b051117b49e74a3a79fe1a0db` | non_address_book | unknown | unknown | unverified | n/a | `0x66836a7921f96d63aa90f601c26c8857138ba810` |
| unverified unclassified | UnnamedContract<br>`0xb9abcf00b3d6e80cda0e3c4c44cb58a21f99d1e1` | non_address_book | unknown | unknown | unverified | n/a | `0x66836a7921f96d63aa90f601c26c8857138ba810` |
| unverified unclassified | UnnamedContract<br>`0xbc00954ccd3a661ce32110c856ff0bfa108bf187` | non_address_book | unknown | unknown | unverified | n/a | `0x66836a7921f96d63aa90f601c26c8857138ba810` |

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
| ethereum | `0x695f775551fb0d28b64101c9507c06f334b4ba86` | BundlesToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x661f8b1ef3d24e99c461e0523fd441ed8d49bf19` | Factory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xc2b84f1f3b0b56c26a15c84ae3191cf487a28a8c` | Position | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xacff9eee0a5522000e7141b77107359a6462e8d2` | SwapFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 6 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 17 |

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
