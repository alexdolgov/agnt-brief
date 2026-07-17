# Agentic Audit Brief: OTSea

## Export Authority

- Production state: **published scope**
- Raw selected rows: 1 across 1 audit(s)
- Eligible audit results: 3 (1 matched; 2 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e9e09d06b414f9cd852c36a58d42ce16279465f2d9791cd2a8178f3f54b89ecd`

## Project Overview

- Project: OTSea (`otsea`)
- Website: [https://www.otsea.io/](https://www.otsea.io/)
- Lifecycle: unknown
- Generated: 2026-07-15T18:30:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: base, blast, ethereum
- Contract surface: 23 unique implementations (27 raw deployments)
- Coverage basis: 1/3 confirmed own live verified implementations (33.3%); conservative 33.3% with 0 needs-review implementation(s)
- DeFi Llama TVL: $372,435.16
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for OTSea. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 3 contract row(s) across base, ethereum. Structural roles: 3 core. No upgradeable pattern was identified in these rows.

## Logic Topography

- Exact-run contract rows: 3
- Structural roles: core (3)
- Contract kinds: contract (3)
- Detected standards: ownable (3), pausable (2), erc20 (1)
- Frameworks: openzeppelin (3), uniswap-v2 (1)
- Upgradeable-pattern rows: 0

## Fork Analysis

0 of 4 contracts are derived from known codebases. 4 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0x0adedc7487c59ece60178cf69b8df7e3c4730d90`, chain 1)
- OTSea (`0x6e8b67b315b44519f8c2befdbbe11097c45353b4`, chain 1)
- OTSea (`0xa836af59d35b3da3c9fb5cfd6f84d9e3bd8c5fd5`, chain 8453)
- OTSeaERC20 (`0x5da151b95657e788076d04d56234bd93e409cb09`, chain 1)

## Contract Surface Quality

- Logic-topography rows: 3; live-surface rows included: 3 (3 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 4/4 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 1/3 (33.3%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 4 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 19 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 0
- Confirmed-live implementations: 4 of 23 unique; 19 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 1/8
- Verified + Unaudited implementations: 7
- Verified by bytecode match: 0
- Unverified implementations: 15
- Unique implementations: 23
- Raw deployments: 27
- Audits discovered: 3 (3 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 1
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2024-01 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 3 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 1 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| PeckShield | Tier 2 | 1 | 12.5% | 2024-01 |

## Contract Surface

### ✅ Verified + Audited (1)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| OTSeaERC20 | token | project_anchor | own_supporting | 0 | ethereum | unit-390498 | `0x5da151b95657e788076d04d56234bd93e409cb09` | ✅ Audited |

### ⚠️ Verified + Unaudited (7)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| OTSea | unknown | project_anchor | own_supporting | 0 | ethereum | unit-390499 | `0x6e8b67b315b44519f8c2befdbbe11097c45353b4` | ⚠️ Unaudited |
| OTSea | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 2 deployments: base `0x4da2f6b81808a8aeaf2c762d75dc8b188f05b115`; base `0x5da151b95657e788076d04d56234bd93e409cb09` | ⚠️ Unaudited |
| OTSea | unknown | project_anchor | own_supporting | 0 | base | unit-390500 | `0xa836af59d35b3da3c9fb5cfd6f84d9e3bd8c5fd5` | ⚠️ Unaudited |
| OTSeaMigration | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe4eacc41aa1a8208d57c1b4766b6b69e1cfe50e9` | ⚠️ Unaudited |
| OTSeaRevenueDistributor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x34bccf4af03870265fe99cec262524f343cca7ff` | ⚠️ Unaudited |
| OTSeaStable | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 4 deployments: ethereum `0x1c3c442c0ece529e6a8d7815b33c014e641885b8`; base `0x5024b4542ce743fe127a29faf360752a7d2415c1`; base `0x6bf182b45f251212fb2020c8f29b11e88ac3e2ff`; base `0xc048e9cdc9bd10334fbe3cdd95f77f633e102ece` | ⚠️ Unaudited |
| OTSeaStaking | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf2c8e860ca12cde3f3195423ecf54427a4f30916` | ⚠️ Unaudited |

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
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-390497 | `0x0adedc7487c59ece60178cf69b8df7e3c4730d90` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x14d7279b9bce6aaae9d557e78ad7856c3f4f73f2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x20662eb429f302789111b2f26b300396f623343d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2ef116a2dcec994d809cd0b7ce4887037733c0ed` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x40e0c695a560df86c19679e5714a4fd5392aa0ff` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x56a3c6cae948e71fbfbabeaf57ac0c48eadd70e9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x81077a71870d16b784349264265f0521b9fffec2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x902f2688e872a9454f355f3d6eec3aa7240c4ea8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x92cd502123129cdfd0d0af1e0e055f5500b77a0c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa0aa2446674d859cc020c19428953d6564be2ad7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa1f4bf1a13c17f91d5a976ebf04b6e6bf18e3fbe` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb2f99e6f08c0435f3d5352ea1b87afd77c052505` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd8119be471fce0b4b72aa3c1e8fcc6b5370d02d9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdb042933ed8e912234006a9cb2215acc1428c1f9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x34bccf4af03870265fe99cec262524f343cca7ff` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [dedaub.com/audits/otsea/otsea-dec-18-2023](https://dedaub.com/audits/otsea/otsea-dec-18-2023) | Dedaub | Audit | 2023-12 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 5 | high |
| [dedaub.com/audits/otsea](https://dedaub.com/audits/otsea) | Dedaub | Audit | 2018-12 | stale | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |
| [PeckShield-Audit-Report-OTSea-v1.0.pdf](https://github.com/peckshield/publications/blob/master/audit_reports/PeckShield-Audit-Report-OTSea-v1.0.pdf) | PeckShield | Audit | 2024-01 | stale | Direct | contract_name | matched | 1 | 0 | 0 | 4 | high |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [13642] dedaub.com/audits/otsea/otsea-dec-18-2023 — no match: Audit report for OTSea platform; scope includes OTSea and FeeSplitter contracts; other contracts (TransferHelper, ListHelper, WhitelistHelper) are part of the codebase and mentioned in findings.
- [13643] dedaub.com/audits/otsea — no match: The provided text is a navigation snippet from a website, not the full audit report. No contract names, scope section, or audit date could be identified.
- [13644] PeckShield-Audit-Report-OTSea-v1.0.pdf — matched: Scope explicitly lists five contracts: OTSea.sol, OTSeaERC20.sol, OTSeaMigration.sol, OTSeaStaking.sol, OTSeaRevenueDistributor.sol. Audit date is January 30, 2024 from cover page and table.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| dedaub.com/audits/otsea/otsea-dec-18-2023 | OTSea | ambiguous — not counted | OTSea (alternative) `0x6e8b67b315b44519f8c2befdbbe11097c45353b4` — deployed 2024-04-17 00:16:47+03 — liveness: live (current_address_book_code)<br>OTSea (alternative) `0xa836af59d35b3da3c9fb5cfd6f84d9e3bd8c5fd5` — deployed 2024-04-12 18:24:41+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| dedaub.com/audits/otsea/otsea-dec-18-2023 | FeeSplitter | unmatched — not counted | — | audited contract | no |
| dedaub.com/audits/otsea/otsea-dec-18-2023 | TransferHelper | unmatched — not counted | — | mentioned in findings | no |
| dedaub.com/audits/otsea/otsea-dec-18-2023 | ListHelper | unmatched — not counted | — | mentioned in findings | no |
| dedaub.com/audits/otsea/otsea-dec-18-2023 | WhitelistHelper | unmatched — not counted | — | mentioned in findings | no |
| PeckShield-Audit-Report-OTSea-v1.0.pdf | OTSea | ambiguous — not counted | OTSea (alternative) `0x6e8b67b315b44519f8c2befdbbe11097c45353b4` — deployed 2024-04-17 00:16:47+03 — liveness: live (current_address_book_code)<br>OTSea (alternative) `0xa836af59d35b3da3c9fb5cfd6f84d9e3bd8c5fd5` — deployed 2024-04-12 18:24:41+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| PeckShield-Audit-Report-OTSea-v1.0.pdf | OTSeaERC20 | own contract | OTSeaERC20 (selected) `0x5da151b95657e788076d04d56234bd93e409cb09` — deployed 2024-01-30 10:01:11+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| PeckShield-Audit-Report-OTSea-v1.0.pdf | OTSeaMigration | unmatched — not counted | — | listed in scope | no |
| PeckShield-Audit-Report-OTSea-v1.0.pdf | OTSeaStaking | unmatched — not counted | — | listed in scope | no |
| PeckShield-Audit-Report-OTSea-v1.0.pdf | OTSeaRevenueDistributor | unmatched — not counted | — | listed in scope | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | `0x6e8b67b315b44519f8c2befdbbe11097c45353b4` | OTSea | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0xa836af59d35b3da3c9fb5cfd6f84d9e3bd8c5fd5` | OTSea | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 8 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 15 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 2
- Inherited remapped matches: 0
- Address-book scope dispositions: 1 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 2 ambiguous, 7 unmatched
- Matched-own operational status: 1 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=2, low=1
- Match method counts: unique_name=1

Zero-match audit list:

- [13642] dedaub.com/audits/otsea/otsea-dec-18-2023
- [13643] dedaub.com/audits/otsea

Fork inheritance lineage and inherited audits are included when available.
