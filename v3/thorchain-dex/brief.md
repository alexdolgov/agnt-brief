# Agentic Audit Brief: Thorchain DEX

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

- Project: Thorchain DEX (`thorchain-dex`)
- Website: [https://thorchain.org/](https://thorchain.org/)
- Lifecycle: unknown
- Generated: 2026-07-24T14:10:00.000Z
- Pipeline run: brief-deployer-expansion-all-20260724-v1
- Chains: avalanche, base, bsc, ethereum
- Contract surface: 33 unique implementations (33 raw deployments)
- Coverage basis: 0/10 confirmed own live verified implementations (0.0%); conservative 0.0% with 0 needs-review implementation(s)
- DeFi Llama TVL: $49,270,884.82
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

No contract logic was present for Thorchain DEX in the closed normalized topography run; this brief does not infer a protocol purpose from missing code.

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

0 of 10 contracts are derived from known codebases. 10 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- AvaxRouter (`0x8f66c4ae756bebc49ec8b81966dd8bba9f127549`, chain 43114)
- AvaxRouter (`0xd6a6c0b3bb4150a98a379811934e440989209db6`, chain 43114)
- THORChain_Router (`0x00dc6100103bc402d490aee3f9a5560cbd91f1d4`, chain 1)
- THORChain_Router (`0x0dc6108c9225ce93da589b4ce83c104b34693117`, chain 1)
- THORChain_Router (`0xb11a1735c2e3bcc5fc8c1d147fb64629d3d0cac5`, chain 1)
- THORChain_Router (`0xd37bbe5744d730a1d98d8dc97c42f0ca46ad7146`, chain 1)
- THORChain_Router (`0x00335da4078f696b98ff619616f1c558e57b9e22`, chain 56)
- THORChain_Router (`0xb30ec53f98ff5947ede720d32ac2da7e52a5f56b`, chain 56)
- THORChain_Router (`0x68208d99746b805a1ae41421950a47b711e35681`, chain 8453)
- THORChain_Router (`0xe36dcbf3c0284f756935811d9b9e80829d39bdc5`, chain 8453)

## Contract Surface Quality

- Logic-topography rows: 0; live-surface rows included: 0 (0 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 10/10 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 0/10 (0.0%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 10 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 23 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 0
- Confirmed-live implementations: 10 of 33 unique; 23 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 0/10
- Verified + Unaudited implementations: 10
- Verified by bytecode match: 0
- Unverified implementations: 23
- Unique implementations: 33
- Raw deployments: 33
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

### ⚠️ Verified + Unaudited (10)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| AvaxRouter | unknown | project_anchor | own_supporting | 0 | avalanche | unit-394027 | `0x8f66c4ae756bebc49ec8b81966dd8bba9f127549` | ⚠️ Unaudited |
| AvaxRouter | unknown | project_anchor | own_supporting | 0 | avalanche | unit-394028 | `0xd6a6c0b3bb4150a98a379811934e440989209db6` | ⚠️ Unaudited |
| THORChain_Router | unknown | project_anchor | own_supporting | 0 | ethereum | unit-394023 | `0x00dc6100103bc402d490aee3f9a5560cbd91f1d4` | ⚠️ Unaudited |
| THORChain_Router | unknown | project_anchor | own_supporting | 0 | ethereum | unit-394024 | `0x0dc6108c9225ce93da589b4ce83c104b34693117` | ⚠️ Unaudited |
| THORChain_Router | unknown | project_anchor | own_supporting | 0 | ethereum | unit-394025 | `0xb11a1735c2e3bcc5fc8c1d147fb64629d3d0cac5` | ⚠️ Unaudited |
| THORChain_Router | unknown | project_anchor | own_supporting | 0 | ethereum | unit-394026 | `0xd37bbe5744d730a1d98d8dc97c42f0ca46ad7146` | ⚠️ Unaudited |
| THORChain_Router | unknown | project_anchor | own_supporting | 0 | bsc | unit-394029 | `0x00335da4078f696b98ff619616f1c558e57b9e22` | ⚠️ Unaudited |
| THORChain_Router | unknown | project_anchor | own_supporting | 0 | bsc | unit-394030 | `0xb30ec53f98ff5947ede720d32ac2da7e52a5f56b` | ⚠️ Unaudited |
| THORChain_Router | unknown | project_anchor | own_supporting | 0 | base | unit-394031 | `0x68208d99746b805a1ae41421950a47b711e35681` | ⚠️ Unaudited |
| THORChain_Router | unknown | project_anchor | own_supporting | 0 | base | unit-394032 | `0xe36dcbf3c0284f756935811d9b9e80829d39bdc5` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (23)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0e18c19b05afc0dfc86947e7e7bed9c1e7f15552` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x28218dbcbb304c18da08d65050e8f62650a3532b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2a705327d093322bfad691dd992be1332a9fd47b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3155ba85d5f96b2d030a4966af206230e46849cb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3624525075b88b24ecc29ce226b0cec1ffcb6976` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4240b2038635c9e26b81c2f1c7783f73c062b33d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x42a5ed456650a09dc10ebc6361a7480fdd61f27b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x65d6720d46275e4381784b032ab8a0ccd4f33b3b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7efc09181cfeb60e59c4b5f17aab3219521b8ac4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x878df90f8dec5ce346e963642b54b0ed7d23d168` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xaa749190f7259cdd2a18cb0ac42957da4d8909e0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xafc58bac1cb6d98a65692b5da17949929436cde6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbf3cfaa1728fc17df0e73fecbfdf69d5eae16133` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc145990e84155416144c532e31f89b840ca8c2ce` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc284c7dd4dc9a981f4c0cd2c10da5e91217c3126` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdc05d6941bd15dea7072435eaa5b64da379343d3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe7a0527e6fb33472fd9c1034e93c4c8c527497f2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf5583092de43c2e40da895e22cd43978c054241b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x8d7ff86dc4c7480a4525d56233582b3448329580` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xd2b8b62e9a049d6a097662a9bc014fcfac8cde21` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xfa73fadcfee2ec250ea9f0405f54bab22c7d08d6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x5afca2485ae7f03158b7cb4558da79f091b56256` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x7a68c37d8afa3078f3ad51d98ea23fe57a8ae21a` | ❓ Unverified |

## Deployer Expansion Inventory

These rows are additive inventory from `project_contracts.discovery_source=deployer_expansion`; they do not change scope matching, coverage, or logic topography in this brief.

- Source: `project_contracts.discovery_source=deployer_expansion`
- Decision run: `deployer-candidate-production-20260712`
- Total contracts: 23
- Live contracts: 0
- Unknown liveness contracts: 23
- Source-verified contracts: 0
- Currently scope-matched contracts retained as-is: 0
- Classification counts: unverified unclassified=23

| Classification | Contract | Address-Book Class | Role | Liveness | Source | Decision | Deployer |
|---|---|---|---|---|---|---|---|
| unverified unclassified | UnnamedContract<br>`0x0e18c19b05afc0dfc86947e7e7bed9c1e7f15552` | non_address_book | unknown | unknown | unverified | n/a | `0x3eff38c0e1e5dd6bd58d3fa79caecc4da46c8866` |
| unverified unclassified | UnnamedContract<br>`0x28218dbcbb304c18da08d65050e8f62650a3532b` | non_address_book | unknown | unknown | unverified | n/a | `0x3eff38c0e1e5dd6bd58d3fa79caecc4da46c8866` |
| unverified unclassified | UnnamedContract<br>`0x2a705327d093322bfad691dd992be1332a9fd47b` | non_address_book | unknown | unknown | unverified | n/a | `0x3eff38c0e1e5dd6bd58d3fa79caecc4da46c8866` |
| unverified unclassified | UnnamedContract<br>`0x3155ba85d5f96b2d030a4966af206230e46849cb` | non_address_book | unknown | unknown | unverified | n/a | `0x3eff38c0e1e5dd6bd58d3fa79caecc4da46c8866` |
| unverified unclassified | UnnamedContract<br>`0x3624525075b88b24ecc29ce226b0cec1ffcb6976` | non_address_book | unknown | unknown | unverified | n/a | `0x3eff38c0e1e5dd6bd58d3fa79caecc4da46c8866` |
| unverified unclassified | UnnamedContract<br>`0x4240b2038635c9e26b81c2f1c7783f73c062b33d` | non_address_book | unknown | unknown | unverified | n/a | `0x3eff38c0e1e5dd6bd58d3fa79caecc4da46c8866` |
| unverified unclassified | UnnamedContract<br>`0x42a5ed456650a09dc10ebc6361a7480fdd61f27b` | non_address_book | unknown | unknown | unverified | n/a | `0x3eff38c0e1e5dd6bd58d3fa79caecc4da46c8866` |
| unverified unclassified | UnnamedContract<br>`0x65d6720d46275e4381784b032ab8a0ccd4f33b3b` | non_address_book | unknown | unknown | unverified | n/a | `0x3eff38c0e1e5dd6bd58d3fa79caecc4da46c8866` |
| unverified unclassified | UnnamedContract<br>`0x7efc09181cfeb60e59c4b5f17aab3219521b8ac4` | non_address_book | unknown | unknown | unverified | n/a | `0x3eff38c0e1e5dd6bd58d3fa79caecc4da46c8866` |
| unverified unclassified | UnnamedContract<br>`0x878df90f8dec5ce346e963642b54b0ed7d23d168` | non_address_book | unknown | unknown | unverified | n/a | `0x3eff38c0e1e5dd6bd58d3fa79caecc4da46c8866` |
| unverified unclassified | UnnamedContract<br>`0xaa749190f7259cdd2a18cb0ac42957da4d8909e0` | non_address_book | unknown | unknown | unverified | n/a | `0x3eff38c0e1e5dd6bd58d3fa79caecc4da46c8866` |
| unverified unclassified | UnnamedContract<br>`0xafc58bac1cb6d98a65692b5da17949929436cde6` | non_address_book | unknown | unknown | unverified | n/a | `0x3eff38c0e1e5dd6bd58d3fa79caecc4da46c8866` |
| unverified unclassified | UnnamedContract<br>`0xbf3cfaa1728fc17df0e73fecbfdf69d5eae16133` | non_address_book | unknown | unknown | unverified | n/a | `0x3eff38c0e1e5dd6bd58d3fa79caecc4da46c8866` |
| unverified unclassified | UnnamedContract<br>`0xc145990e84155416144c532e31f89b840ca8c2ce` | non_address_book | unknown | unknown | unverified | n/a | `0x3eff38c0e1e5dd6bd58d3fa79caecc4da46c8866` |
| unverified unclassified | UnnamedContract<br>`0xc284c7dd4dc9a981f4c0cd2c10da5e91217c3126` | non_address_book | unknown | unknown | unverified | n/a | `0x3eff38c0e1e5dd6bd58d3fa79caecc4da46c8866` |
| unverified unclassified | UnnamedContract<br>`0xdc05d6941bd15dea7072435eaa5b64da379343d3` | non_address_book | unknown | unknown | unverified | n/a | `0x3eff38c0e1e5dd6bd58d3fa79caecc4da46c8866` |
| unverified unclassified | UnnamedContract<br>`0xe7a0527e6fb33472fd9c1034e93c4c8c527497f2` | non_address_book | unknown | unknown | unverified | n/a | `0x3eff38c0e1e5dd6bd58d3fa79caecc4da46c8866` |
| unverified unclassified | UnnamedContract<br>`0xf5583092de43c2e40da895e22cd43978c054241b` | non_address_book | unknown | unknown | unverified | n/a | `0x3eff38c0e1e5dd6bd58d3fa79caecc4da46c8866` |
| unverified unclassified | UnnamedContract<br>`0x8d7ff86dc4c7480a4525d56233582b3448329580` | non_address_book | unknown | unknown | unverified | n/a | `0xe5a6c8a02fb0d23f74f8d9f0b76410f13897b90c` |
| unverified unclassified | UnnamedContract<br>`0xd2b8b62e9a049d6a097662a9bc014fcfac8cde21` | non_address_book | unknown | unknown | unverified | n/a | `0xe5a6c8a02fb0d23f74f8d9f0b76410f13897b90c` |
| unverified unclassified | UnnamedContract<br>`0xfa73fadcfee2ec250ea9f0405f54bab22c7d08d6` | non_address_book | unknown | unknown | unverified | n/a | `0xe5a6c8a02fb0d23f74f8d9f0b76410f13897b90c` |
| unverified unclassified | UnnamedContract<br>`0x5afca2485ae7f03158b7cb4558da79f091b56256` | non_address_book | unknown | unknown | unverified | n/a | `0xa8c9f9283609009dc729aae438345dcaa89ab6a6` |
| unverified unclassified | UnnamedContract<br>`0x7a68c37d8afa3078f3ad51d98ea23fe57a8ae21a` | non_address_book | unknown | unknown | unverified | n/a | `0xa8c9f9283609009dc729aae438345dcaa89ab6a6` |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

- No persisted address-book scope analysis is available.

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 0 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 33 |

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
