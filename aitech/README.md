# Agentic Audit Brief: AITECH

## Export Authority

- Production state: **published scope**
- Raw selected rows: 0 across 0 audit(s)
- Eligible audit results: 1 (0 matched; 1 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e40c73181a386361babecc6895e0f6c5587548f92814db09f88491f8b4a38d92`

⚠️ Lifecycle status: UNKNOWN - TVL trajectory indicates non-active lifecycle.

## Project Overview

- Project: AITECH (`aitech`)
- Website: [https://aitech.io](https://aitech.io)
- Lifecycle: unknown (Tier 0, TVL trajectory)
- Generated: 2026-07-24T14:10:00.000Z
- Pipeline run: brief-deployer-expansion-all-20260724-v1
- Chains: bsc, ethereum
- Contract surface: 13 unique implementations (13 raw deployments)
- Coverage basis: 0/1 confirmed own live verified implementations (0.0%); conservative 0.0% with 0 needs-review implementation(s)
- DeFi Llama TVL: $3,042,903.37
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## ⚠️ Limited Contract Surface

This brief covers only 2 contract implementation(s). The pipeline may not have discovered all deployed contracts for this project.
Coverage assessment and audit matching are based on this incomplete surface.

## Project Description

This brief describes the observed EVM deployment and audit surface for AITECH. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 1 contract row(s) across bsc, ethereum. Structural roles: 1 supporting. No upgradeable pattern was identified in these rows.

## Logic Topography

- Exact-run contract rows: 1
- Structural roles: supporting (1)
- Contract kinds: contract (1)
- Detected standards: erc20 (1)
- Frameworks: openzeppelin (1)
- Upgradeable-pattern rows: 0

## Fork Analysis

0 of 2 contracts are derived from known codebases. 2 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0x3e76dd57e649a263a532cc9bcc58b32a065fb2a4`, chain 1)
- AITECH (`0x2d060ef4d6bf7f9e5edde373ab735513c0e4f944`, chain 56)

## Contract Surface Quality

- Logic-topography rows: 1; live-surface rows included: 1 (1 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 2/2 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 0/1 (0.0%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 2 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 11 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 2
- Confirmed-live implementations: 2 of 13 unique; 11 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 0/3
- Verified + Unaudited implementations: 3
- Verified by bytecode match: 0
- Unverified implementations: 10
- Unique implementations: 13
- Raw deployments: 13
- Audits discovered: 1 (1 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2026-04 (fresh)
- Audit staleness (calendar age): 1 fresh, 0 aging, 0 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage
- Note: This protocol is classified as [unknown]. ASD of n/a represents exposure in a protocol with unknown activity.

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (3)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| AITECH | unknown | project_anchor | own_supporting | 0 | bsc | unit-378651 | `0x2d060ef4d6bf7f9e5edde373ab735513c0e4f944` | ⚠️ Unaudited |
| DCBVault | core_logic | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | `0xf1c3f68f82e6d2560a12d977b322a5db4684b096` | ⚠️ Unaudited |
| DecubateMasterChef | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | `0x2c4dd7db5ce6a9a2fb362f64ff189af772c31184` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (10)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x375da7794c02a6e897acbceadbb160ef6de41352` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-378650 | `0x3e76dd57e649a263a532cc9bcc58b32a065fb2a4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x46a4424eacc21e0473619b42bea6058a0db0d292` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x580d0b5f1b88a7e06317ee60ec45e2103459fbe0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x65e1ea33c4477fdf7e833f1fd1b935ce33cc667e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x91d4ccc9cbf0dc836da4cfb348d771c3c0e43efd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9e1ac54d2005cef659d66d916971acf91944e92a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe5eca6cf753506908a39f4c414ee12f87a6ba907` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xefbe9ffde91ff4eab4f94e26be2dba85d9c01f28` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf8562e9178347ad960a722a6a741eedefb82c610` | ❓ Unverified |

## Deployer Expansion Inventory

These rows are additive inventory from `project_contracts.discovery_source=deployer_expansion`; they do not change scope matching, coverage, or logic topography in this brief.

- Source: `project_contracts.discovery_source=deployer_expansion`
- Decision run: `deployer-candidate-production-20260712`
- Total contracts: 9
- Live contracts: 0
- Unknown liveness contracts: 9
- Source-verified contracts: 0
- Currently scope-matched contracts retained as-is: 0
- Classification counts: unverified unclassified=9

| Classification | Contract | Address-Book Class | Role | Liveness | Source | Decision | Deployer |
|---|---|---|---|---|---|---|---|
| unverified unclassified | UnnamedContract<br>`0x375da7794c02a6e897acbceadbb160ef6de41352` | non_address_book | unknown | unknown | unverified | n/a | `0x0a9be1470d5a1f024e0c23c59399b0e2e9d9ef78` |
| unverified unclassified | UnnamedContract<br>`0x46a4424eacc21e0473619b42bea6058a0db0d292` | non_address_book | unknown | unknown | unverified | n/a | `0x0a9be1470d5a1f024e0c23c59399b0e2e9d9ef78` |
| unverified unclassified | UnnamedContract<br>`0x580d0b5f1b88a7e06317ee60ec45e2103459fbe0` | non_address_book | unknown | unknown | unverified | n/a | `0x0a9be1470d5a1f024e0c23c59399b0e2e9d9ef78` |
| unverified unclassified | UnnamedContract<br>`0x65e1ea33c4477fdf7e833f1fd1b935ce33cc667e` | non_address_book | unknown | unknown | unverified | n/a | `0x0a9be1470d5a1f024e0c23c59399b0e2e9d9ef78` |
| unverified unclassified | UnnamedContract<br>`0x91d4ccc9cbf0dc836da4cfb348d771c3c0e43efd` | non_address_book | unknown | unknown | unverified | n/a | `0x0a9be1470d5a1f024e0c23c59399b0e2e9d9ef78` |
| unverified unclassified | UnnamedContract<br>`0x9e1ac54d2005cef659d66d916971acf91944e92a` | non_address_book | unknown | unknown | unverified | n/a | `0x0a9be1470d5a1f024e0c23c59399b0e2e9d9ef78` |
| unverified unclassified | UnnamedContract<br>`0xe5eca6cf753506908a39f4c414ee12f87a6ba907` | non_address_book | unknown | unknown | unverified | n/a | `0x0a9be1470d5a1f024e0c23c59399b0e2e9d9ef78` |
| unverified unclassified | UnnamedContract<br>`0xefbe9ffde91ff4eab4f94e26be2dba85d9c01f28` | non_address_book | unknown | unknown | unverified | n/a | `0x0a9be1470d5a1f024e0c23c59399b0e2e9d9ef78` |
| unverified unclassified | UnnamedContract<br>`0xf8562e9178347ad960a722a6a741eedefb82c610` | non_address_book | unknown | unknown | unverified | n/a | `0x0a9be1470d5a1f024e0c23c59399b0e2e9d9ef78` |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [skynet.certik.com/projects/solidus-ai-tech](https://skynet.certik.com/projects/solidus-ai-tech) | CertiK | Audit | 2026-04 | fresh | Direct | contract_name | no match | 0 | 0 | 0 | 2 | high |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [2651] skynet.certik.com/projects/solidus-ai-tech — no match: Extracted from CertiK Skynet page for AITECH Cloud Network. The audited files are InvestmentPool.sol and LinearVestingPool.sol. The audit date is from 'Last Audit was delivered on 4/28/2026'.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| skynet.certik.com/projects/solidus-ai-tech | InvestmentPool | unmatched — not counted | — | listed in Audited Files/SHA256 section | no |
| skynet.certik.com/projects/solidus-ai-tech | LinearVestingPool | unmatched — not counted | — | listed in Audited Files/SHA256 section | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| bsc | `0x2d060ef4d6bf7f9e5edde373ab735513c0e4f944` | AITECH | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 1 |
| upstream | 0 |
| standard_library | 2 |
| needs_review | 10 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Address-book scope dispositions: 0 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 2 unmatched
- Matched-own operational status: 0 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=1
- Match method counts: n/a

Zero-match audit list:

- [2651] skynet.certik.com/projects/solidus-ai-tech

Fork inheritance lineage and inherited audits are included when available.
