# Agentic Audit Brief: DefiPlaza

## Export Authority

- Production state: **published scope**
- Raw selected rows: 1 across 1 audit(s)
- Eligible audit results: 4 (1 matched; 3 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e40c73181a386361babecc6895e0f6c5587548f92814db09f88491f8b4a38d92`

## Project Overview

- Project: DefiPlaza (`defiplaza`)
- Website: [https://defiplaza.net/](https://defiplaza.net/)
- Lifecycle: unknown
- Generated: 2026-07-24T14:10:00.000Z
- Pipeline run: brief-deployer-expansion-all-20260724-v1
- Chains: ethereum
- Contract surface: 24 unique implementations (28 raw deployments)
- Coverage basis: 1/2 confirmed own live verified implementations (50.0%); conservative 50.0% with 0 needs-review implementation(s)
- DeFi Llama TVL: $105,356.18
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## ⚠️ Limited Contract Surface

This brief covers only 2 contract implementation(s). The pipeline may not have discovered all deployed contracts for this project.
Coverage assessment and audit matching are based on this incomplete surface.

## Project Description

This brief describes the observed EVM deployment and audit surface for DefiPlaza. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 2 contract row(s) across ethereum. Structural roles: 1 core, 1 unclassified. No upgradeable pattern was identified in these rows.

## Logic Topography

- Exact-run contract rows: 2
- Structural roles: core (1), unclassified (1)
- Contract kinds: contract (2)
- Detected standards: erc20 (1), ownable (1)
- Frameworks: openzeppelin (1)
- Upgradeable-pattern rows: 0

## Fork Analysis

0 of 1 contracts are derived from known codebases. 1 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- DFPgov (`0x2f57430a6ceda85a67121757785877b4a71b8e6d`, chain 1)

## Contract Surface Quality

- Logic-topography rows: 2; live-surface rows included: 2 (2 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 2/2 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 1/2 (50.0%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 2 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 22 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 0
- Confirmed-live implementations: 2 of 24 unique; 22 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 1/9
- Verified + Unaudited implementations: 8
- Verified by bytecode match: 0
- Unverified implementations: 15
- Unique implementations: 24
- Raw deployments: 28
- Audits discovered: 4 (4 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 1
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2025-11 (fresh)
- Audit staleness (calendar age): 1 fresh, 0 aging, 3 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 1 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| unknown | Tier 2 | 1 | 11.1% | 2021-01 |

## Contract Surface

### ✅ Verified + Audited (1)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| DeFiPlaza | unknown | project_anchor | own_supporting | 0 | ethereum | unit-383705 | `0xe68c1d72340aeefe5be76eda63ae2f4bc7514110` | ✅ Audited |

### ⚠️ Verified + Unaudited (8)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| Airdrop | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xaa00bc9a91079a9579b66e61baf83228f5e004b6` | ⚠️ Unaudited |
| BlackHole | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x56bba67f78605dd5a42ceae8ec172d058e6281dd` | ⚠️ Unaudited |
| DeFiPlaza | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x134fc6beb54e710e30b21e52fb86ffed0c8e36c2`; ethereum `0x2cb76169746e21d502db1d64aca1d5f8c04b2496` | ⚠️ Unaudited |
| DFPgov | unknown | project_anchor | own_supporting | 0 | ethereum | unit-383704 | `0x2f57430a6ceda85a67121757785877b4a71b8e6d` | ⚠️ Unaudited |
| DFPgov | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc9444d31a580d35a951f77b36f0de073dac69316` | ⚠️ Unaudited |
| ManualBridge | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9a9ed06781797ec41dcbbff9c555974a7a2d3151` | ⚠️ Unaudited |
| StablePlaza | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x3a2b8cc91af8bf45f3ec61e779ee1c2ba6b7e694`; ethereum `0x874b5d6476f214e37f042cfc555c07fe99c6d83e` | ⚠️ Unaudited |
| Timelock | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x266ca88c616ff9d55dfffa7d133cf2b097e79845`; ethereum `0x50ae4c9de691bcab929a7aaff702a98ab9fce4b3`; ethereum `0xb16e4c40576cd3fae4e1d182179d2811613f0311` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (15)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x107feef31fc26bb63e7954272a999ecf37573f85` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x18ad2cbbb052b5f300e5632d907e619537b7441c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x27199999da84864d9b8bce9f3fb95fcf91cd6b32` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3f48a86ba5dd93762dab852dc183b5bde3968e9d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x420d6938b5631904c5329d6a1fc099c2d456af5d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x633216a995ee62160ebd62f7ac1d0b89852fd9e1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x644816d7b2af72540e3daeded0a0349dbe96d2a9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x678eb80e115ad6c7c076ac50bad5b72da8362b05` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x76443d1429b6394050c9a68a0a4bb82cc2ce798c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xad80755719d3bfd88d64d88a667673e4b8a2b784` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb2cf53390298a8ab0a3fa54bed2071146c98d0bd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd08fedd6ba1a1ad289a1a8503de45d9aef53cf15` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdb95a0b49472779c5a762a4b0c6b726a0910d4c3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe23d093a19438a33e8fb13b3256712c8821598ab` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfd30b0d8420132c766e49f600b52c958940ad760` | ❓ Unverified |

## Deployer Expansion Inventory

These rows are additive inventory from `project_contracts.discovery_source=deployer_expansion`; they do not change scope matching, coverage, or logic topography in this brief.

- Source: `project_contracts.discovery_source=deployer_expansion`
- Decision run: `deployer-candidate-production-20260712`
- Total contracts: 27
- Live contracts: 1
- Unknown liveness contracts: 26
- Source-verified contracts: 12
- Currently scope-matched contracts retained as-is: 1
- Classification counts: currently scope matched=1, candidate review=4, contamination review=1, source verified unclassified=6, unverified unclassified=15

| Classification | Contract | Address-Book Class | Role | Liveness | Source | Decision | Deployer |
|---|---|---|---|---|---|---|---|
| currently scope matched | DeFiPlaza<br>`0xe68c1d72340aeefe5be76eda63ae2f4bc7514110` | project_anchor | unknown | live | verified | review: no_fresh_structural_match | `0x0422afb5481a21b3fea2c94e08dfad45da1975b7` |
| candidate review | DeFiPlaza<br>`0x134fc6beb54e710e30b21e52fb86ffed0c8e36c2` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x0422afb5481a21b3fea2c94e08dfad45da1975b7` |
| candidate review | DeFiPlaza<br>`0x2cb76169746e21d502db1d64aca1d5f8c04b2496` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x0422afb5481a21b3fea2c94e08dfad45da1975b7` |
| candidate review | StablePlaza<br>`0x3a2b8cc91af8bf45f3ec61e779ee1c2ba6b7e694` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x0422afb5481a21b3fea2c94e08dfad45da1975b7` |
| candidate review | StablePlaza<br>`0x874b5d6476f214e37f042cfc555c07fe99c6d83e` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x0422afb5481a21b3fea2c94e08dfad45da1975b7` |
| contamination review | Airdrop<br>`0xaa00bc9a91079a9579b66e61baf83228f5e004b6` | non_address_book | unknown | unknown | verified | n/a | `0x0422afb5481a21b3fea2c94e08dfad45da1975b7` |
| source verified unclassified | BlackHole<br>`0x56bba67f78605dd5a42ceae8ec172d058e6281dd` | non_address_book | unknown | unknown | verified | n/a | `0x0422afb5481a21b3fea2c94e08dfad45da1975b7` |
| source verified unclassified | DFPgov<br>`0xc9444d31a580d35a951f77b36f0de073dac69316` | non_address_book | unknown | unknown | verified | n/a | `0x0422afb5481a21b3fea2c94e08dfad45da1975b7` |
| source verified unclassified | ManualBridge<br>`0x9a9ed06781797ec41dcbbff9c555974a7a2d3151` | non_address_book | unknown | unknown | verified | n/a | `0x0422afb5481a21b3fea2c94e08dfad45da1975b7` |
| source verified unclassified | Timelock<br>`0x266ca88c616ff9d55dfffa7d133cf2b097e79845` | non_address_book | unknown | unknown | verified | n/a | `0x0422afb5481a21b3fea2c94e08dfad45da1975b7` |
| source verified unclassified | Timelock<br>`0x50ae4c9de691bcab929a7aaff702a98ab9fce4b3` | non_address_book | unknown | unknown | verified | n/a | `0x0422afb5481a21b3fea2c94e08dfad45da1975b7` |
| source verified unclassified | Timelock<br>`0xb16e4c40576cd3fae4e1d182179d2811613f0311` | non_address_book | unknown | unknown | verified | n/a | `0x0422afb5481a21b3fea2c94e08dfad45da1975b7` |
| unverified unclassified | UnnamedContract<br>`0x107feef31fc26bb63e7954272a999ecf37573f85` | non_address_book | unknown | unknown | unverified | n/a | `0x0422afb5481a21b3fea2c94e08dfad45da1975b7` |
| unverified unclassified | UnnamedContract<br>`0x18ad2cbbb052b5f300e5632d907e619537b7441c` | non_address_book | unknown | unknown | unverified | n/a | `0x0422afb5481a21b3fea2c94e08dfad45da1975b7` |
| unverified unclassified | UnnamedContract<br>`0x27199999da84864d9b8bce9f3fb95fcf91cd6b32` | non_address_book | unknown | unknown | unverified | n/a | `0x0422afb5481a21b3fea2c94e08dfad45da1975b7` |
| unverified unclassified | UnnamedContract<br>`0x3f48a86ba5dd93762dab852dc183b5bde3968e9d` | non_address_book | unknown | unknown | unverified | n/a | `0x0422afb5481a21b3fea2c94e08dfad45da1975b7` |
| unverified unclassified | UnnamedContract<br>`0x420d6938b5631904c5329d6a1fc099c2d456af5d` | non_address_book | unknown | unknown | unverified | n/a | `0x0422afb5481a21b3fea2c94e08dfad45da1975b7` |
| unverified unclassified | UnnamedContract<br>`0x633216a995ee62160ebd62f7ac1d0b89852fd9e1` | non_address_book | unknown | unknown | unverified | n/a | `0x0422afb5481a21b3fea2c94e08dfad45da1975b7` |
| unverified unclassified | UnnamedContract<br>`0x644816d7b2af72540e3daeded0a0349dbe96d2a9` | non_address_book | unknown | unknown | unverified | n/a | `0x0422afb5481a21b3fea2c94e08dfad45da1975b7` |
| unverified unclassified | UnnamedContract<br>`0x678eb80e115ad6c7c076ac50bad5b72da8362b05` | non_address_book | unknown | unknown | unverified | n/a | `0x0422afb5481a21b3fea2c94e08dfad45da1975b7` |
| unverified unclassified | UnnamedContract<br>`0x76443d1429b6394050c9a68a0a4bb82cc2ce798c` | non_address_book | unknown | unknown | unverified | n/a | `0x0422afb5481a21b3fea2c94e08dfad45da1975b7` |
| unverified unclassified | UnnamedContract<br>`0xad80755719d3bfd88d64d88a667673e4b8a2b784` | non_address_book | unknown | unknown | unverified | n/a | `0x0422afb5481a21b3fea2c94e08dfad45da1975b7` |
| unverified unclassified | UnnamedContract<br>`0xb2cf53390298a8ab0a3fa54bed2071146c98d0bd` | non_address_book | unknown | unknown | unverified | n/a | `0x0422afb5481a21b3fea2c94e08dfad45da1975b7` |
| unverified unclassified | UnnamedContract<br>`0xd08fedd6ba1a1ad289a1a8503de45d9aef53cf15` | non_address_book | unknown | unknown | unverified | n/a | `0x0422afb5481a21b3fea2c94e08dfad45da1975b7` |
| unverified unclassified | UnnamedContract<br>`0xdb95a0b49472779c5a762a4b0c6b726a0910d4c3` | non_address_book | unknown | unknown | unverified | n/a | `0x0422afb5481a21b3fea2c94e08dfad45da1975b7` |
| unverified unclassified | UnnamedContract<br>`0xe23d093a19438a33e8fb13b3256712c8821598ab` | non_address_book | unknown | unknown | unverified | n/a | `0x0422afb5481a21b3fea2c94e08dfad45da1975b7` |
| unverified unclassified | UnnamedContract<br>`0xfd30b0d8420132c766e49f600b52c958940ad760` | non_address_book | unknown | unknown | unverified | n/a | `0x0422afb5481a21b3fea2c94e08dfad45da1975b7` |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [DeFi Plaza Security Analysis by Pessimistic.pdf](https://github.com/pessimistic-io/audits/blob/main/DeFi%20Plaza%20Security%20Analysis%20by%20Pessimistic.pdf) | unknown | Audit | 2021-01 | stale | Direct | contract_name | matched | 1 | 0 | 0 | 1 | high |
| [StablePlaza Security Analysis by Pessimistic.pdf](https://github.com/pessimistic-io/audits/blob/main/StablePlaza%20Security%20Analysis%20by%20Pessimistic.pdf) | Pessimistic | Audit | 2022-07 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 1 | medium |
| [DefiPlaza Radix Security Analysis by Pessimistic.pdf](https://github.com/pessimistic-io/audits/blob/b886ee548241bc8066843ab110287058ff33ba4f/DefiPlaza%20Radix%20Security%20Analysis%20by%20Pessimistic.pdf) | Pessimistic | Audit | 2023-11 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 4 | high |
| [251125_radixplaza_mathematical-verification.pdf](https://github.com/OmegaSyndicate/RadixPlaza/blob/e6f9f6bd06bfdc3d1ed40f3ae921104197e43531/docs/251125_radixplaza_mathematical-verification.pdf) | OmegaSyndicate | Audit | 2025-11 | fresh | Direct | contract_name | no match | 0 | 0 | 0 | 4 | high |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [13006] DeFi Plaza Security Analysis by Pessimistic.pdf — matched: Scope explicitly lists DeFiPlaza.sol and DFPgovernance.sol. Audit date from publication date.
- [13007] StablePlaza Security Analysis by Pessimistic.pdf — no match: Only one contract name (StablePlaza) is explicitly mentioned as the audited contract. No file paths or other contract names are provided.
- [13008] DefiPlaza Radix Security Analysis by Pessimistic.pdf — no match: Scope explicitly listed four source files: src/pair.rs, src/helpers.rs, src/curves.rs, src/dex.rs. Audit date from cover page and final page.
- [13009] 251125_radixplaza_mathematical-verification.pdf — no match: Extracted contract names from the core implementation files listed in the methodology section and the addendum. The audit date is from the document header.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| DeFi Plaza Security Analysis by Pessimistic.pdf | DeFiPlaza | own contract | DeFiPlaza (selected) `0xe68c1d72340aeefe5be76eda63ae2f4bc7514110` — deployed 2021-10-03 16:55:06+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| DeFi Plaza Security Analysis by Pessimistic.pdf | DFPgovernance | unmatched — not counted | — | listed in scope | no |
| StablePlaza Security Analysis by Pessimistic.pdf | StablePlaza | unmatched — not counted | — | mentioned throughout the report as the main contract | no |
| DefiPlaza Radix Security Analysis by Pessimistic.pdf | pair | unmatched — not counted | — | listed in scope | no |
| DefiPlaza Radix Security Analysis by Pessimistic.pdf | helpers | unmatched — not counted | — | listed in scope | no |
| DefiPlaza Radix Security Analysis by Pessimistic.pdf | curves | unmatched — not counted | — | listed in scope | no |
| DefiPlaza Radix Security Analysis by Pessimistic.pdf | dex | unmatched — not counted | — | listed in scope | no |
| 251125_radixplaza_mathematical-verification.pdf | pair | unmatched — not counted | — | listed in scope as core implementation file | no |
| 251125_radixplaza_mathematical-verification.pdf | curves | unmatched — not counted | — | listed in scope as core implementation file | no |
| 251125_radixplaza_mathematical-verification.pdf | types | unmatched — not counted | — | listed in scope as core implementation file | no |
| 251125_radixplaza_mathematical-verification.pdf | stablepair | unmatched — not counted | — | mentioned in addendum as part of StableCALM implementation | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | `0x2f57430a6ceda85a67121757785877b4a71b8e6d` | DFPgov | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 9 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 15 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 3
- Inherited remapped matches: 0
- Address-book scope dispositions: 1 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 10 unmatched
- Matched-own operational status: 1 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=3, medium=1
- Match method counts: unique_name=1

Zero-match audit list:

- [13007] StablePlaza Security Analysis by Pessimistic.pdf
- [13008] DefiPlaza Radix Security Analysis by Pessimistic.pdf
- [13009] 251125_radixplaza_mathematical-verification.pdf

Fork inheritance lineage and inherited audits are included when available.
