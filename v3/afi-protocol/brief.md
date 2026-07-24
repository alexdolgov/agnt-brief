# Agentic Audit Brief: AFI Protocol

## Export Authority

- Production state: **published scope**
- Raw selected rows: 0 across 0 audit(s)
- Eligible audit results: 4 (0 matched; 4 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e40c73181a386361babecc6895e0f6c5587548f92814db09f88491f8b4a38d92`

## Project Overview

- Project: AFI Protocol (`afi-protocol`)
- Website: [https://afiprotocol.xyz/](https://afiprotocol.xyz/)
- Lifecycle: unknown
- Generated: 2026-07-24T14:10:00.000Z
- Pipeline run: brief-deployer-expansion-all-20260724-v1
- Chains: base, ethereum
- Contract surface: 21 unique implementations (22 raw deployments)
- Coverage basis: 0/1 confirmed own live verified implementations (0.0%); conservative 0.0% with 0 needs-review implementation(s)
- DeFi Llama TVL: $225,311,504.92
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## ⚠️ Limited Contract Surface

This brief covers only 3 contract implementation(s). The pipeline may not have discovered all deployed contracts for this project.
Coverage assessment and audit matching are based on this incomplete surface.

## Project Description

This brief describes the observed EVM deployment and audit surface for AFI Protocol. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 1 contract row(s) across base, ethereum. Structural roles: 1 core. No upgradeable pattern was identified in these rows.

## Logic Topography

- Exact-run contract rows: 1
- Structural roles: core (1)
- Contract kinds: contract (1)
- Detected standards: chainlinkaggregator (1), ownable (1)
- Frameworks: openzeppelin (1)
- Upgradeable-pattern rows: 0

## Fork Analysis

0 of 3 contracts are derived from known codebases. 3 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0x7ddb808b451890cd6bddcb06b3c80bf355a644ae`, chain 1)
- UnnamedContract (`0x6a34df39c0d66332f957ecacf84da1faf30165f3`, chain 8453)
- AfiOracle (`0x32f232423829296f035e2cfcdc426911d4a1a582`, chain 1)

## Contract Surface Quality

- Logic-topography rows: 1; live-surface rows included: 1 (1 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 3/3 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 0/1 (0.0%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 3 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 18 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 1
- Confirmed-live implementations: 3 of 21 unique; 18 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 0/8
- Verified + Unaudited implementations: 8
- Verified by bytecode match: 0
- Unverified implementations: 13
- Unique implementations: 21
- Raw deployments: 22
- Audits discovered: 4 (4 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2025-08 (fresh)
- Audit staleness (calendar age): 2 fresh, 1 aging, 0 stale, 1 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (8)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| AfiOracle | unknown | project_anchor | own_supporting | 0 | ethereum | unit-378646 | `0x32f232423829296f035e2cfcdc426911d4a1a582` | ⚠️ Unaudited |
| afiRwaVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x10b3e8015b4bbf3a5ec359314ddafe399fec1b24` | ⚠️ Unaudited |
| afiToken | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x0b4c655bc989baafe728f8270ff988a7c2b40fd1`; ethereum `0x9005dbd91a4b7a5d2316271db24061f05c3ebe55` | ⚠️ Unaudited |
| afiVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xd0ec961a8dc94bc6791184456b6b210408c24454` | ⚠️ Unaudited |
| Manager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x38750a3fd3ca0c2fad4ebdd5588ef81164ec7839` | ⚠️ Unaudited |
| Network | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1457c085a609dc3997d99525d4764ccbacb64b93` | ⚠️ Unaudited |
| Oracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0bb632c59b13b7254e86ac72aa18241806946ae4` | ⚠️ Unaudited |
| Yield | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x90e9378e8e73a195580baedb6b27caf8ffb377fb` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (13)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3662e05afcaef84d01451234ae3005c6bc785a64` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x53e737da910599c003ef1f56535bd91ff9b2fa13` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x61cae4ae38fbd9681aeae4b2bc0f7983a1af49e0` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-378647 | `0x7ddb808b451890cd6bddcb06b3c80bf355a644ae` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa99a23fccca3e6f090c289891f534163af11bbac` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb82b080791dfa4aa6cac8c3f9c0fcb4471c9fead` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcc59b6fa85a1694551111f34e278fa7f81d83eee` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xde9e75891f4c206b7a0477c683e78d2344920a4c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfee3fbe137cddcbc479d946ec09596e65e2f29d3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfffecaebd2d9f8d377cea77959d2d9ca66f40fe2` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-378648 | `0x6a34df39c0d66332f957ecacf84da1faf30165f3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x6f73aec695256bfc58ddd8f05c4d1c34a5996b9d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xed5aa9b6eb62298492c7246fe724ee088a760155` | ❓ Unverified |

## Deployer Expansion Inventory

These rows are additive inventory from `project_contracts.discovery_source=deployer_expansion`; they do not change scope matching, coverage, or logic topography in this brief.

- Source: `project_contracts.discovery_source=deployer_expansion`
- Decision run: `deployer-candidate-production-20260712`
- Total contracts: 12
- Live contracts: 0
- Unknown liveness contracts: 12
- Source-verified contracts: 0
- Currently scope-matched contracts retained as-is: 0
- Classification counts: unverified unclassified=12

| Classification | Contract | Address-Book Class | Role | Liveness | Source | Decision | Deployer |
|---|---|---|---|---|---|---|---|
| unverified unclassified | UnnamedContract<br>`0x3662e05afcaef84d01451234ae3005c6bc785a64` | non_address_book | unknown | unknown | unverified | n/a | `0xb05c3e305f414c8a68afdfbdd9e53b5654a62c1d` |
| unverified unclassified | UnnamedContract<br>`0x53e737da910599c003ef1f56535bd91ff9b2fa13` | non_address_book | unknown | unknown | unverified | n/a | `0xb05c3e305f414c8a68afdfbdd9e53b5654a62c1d` |
| unverified unclassified | UnnamedContract<br>`0x61cae4ae38fbd9681aeae4b2bc0f7983a1af49e0` | non_address_book | unknown | unknown | unverified | n/a | `0xb05c3e305f414c8a68afdfbdd9e53b5654a62c1d` |
| unverified unclassified | UnnamedContract<br>`0x9005dbd91a4b7a5d2316271db24061f05c3ebe55` | non_address_book | unknown | unknown | unverified | n/a | `0xb05c3e305f414c8a68afdfbdd9e53b5654a62c1d` |
| unverified unclassified | UnnamedContract<br>`0xa99a23fccca3e6f090c289891f534163af11bbac` | non_address_book | unknown | unknown | unverified | n/a | `0xb05c3e305f414c8a68afdfbdd9e53b5654a62c1d` |
| unverified unclassified | UnnamedContract<br>`0xb82b080791dfa4aa6cac8c3f9c0fcb4471c9fead` | non_address_book | unknown | unknown | unverified | n/a | `0xb05c3e305f414c8a68afdfbdd9e53b5654a62c1d` |
| unverified unclassified | UnnamedContract<br>`0xcc59b6fa85a1694551111f34e278fa7f81d83eee` | non_address_book | unknown | unknown | unverified | n/a | `0xb05c3e305f414c8a68afdfbdd9e53b5654a62c1d` |
| unverified unclassified | UnnamedContract<br>`0xde9e75891f4c206b7a0477c683e78d2344920a4c` | non_address_book | unknown | unknown | unverified | n/a | `0xb05c3e305f414c8a68afdfbdd9e53b5654a62c1d` |
| unverified unclassified | UnnamedContract<br>`0xfee3fbe137cddcbc479d946ec09596e65e2f29d3` | non_address_book | unknown | unknown | unverified | n/a | `0xb05c3e305f414c8a68afdfbdd9e53b5654a62c1d` |
| unverified unclassified | UnnamedContract<br>`0xfffecaebd2d9f8d377cea77959d2d9ca66f40fe2` | non_address_book | unknown | unknown | unverified | n/a | `0xb05c3e305f414c8a68afdfbdd9e53b5654a62c1d` |
| unverified unclassified | UnnamedContract<br>`0x6f73aec695256bfc58ddd8f05c4d1c34a5996b9d` | non_address_book | unknown | unknown | unverified | n/a | `0xd64f7c12aea39e714ac0b2f8754f7cc55d2c9b39` |
| unverified unclassified | UnnamedContract<br>`0xed5aa9b6eb62298492c7246fe724ee088a760155` | non_address_book | unknown | unknown | unverified | n/a | `0xd64f7c12aea39e714ac0b2f8754f7cc55d2c9b39` |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [### [Quantstamp Private Audit Report ]()](https://certificate.quantstamp.com/full/afi-vault/dc8a68ae-e72b-4b63-bef2-544c709f6fda/index.html) | Quantstamp | Audit | n/a | unknown | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |
| [### [Cantina Private Audit Report ]()](https://cantina.xyz/portfolio/49c4ad16-2ab3-49f0-bcee-356ebf628020) | Spearbit | Audit | 2025-07 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 4 | medium |
| [cantina_afi_x_jul2025.pdf](https://3912034821-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FEPdvkoJHpBF3QkBeBWkM%2Fuploads%2FfciX3STHOBm9CwoAunz0%2Fcantina_afi_x_jul2025.pdf) | Spearbit | Audit | 2025-08 | fresh | Direct | contract_name | no match | 0 | 0 | 0 | 5 | medium |
| [afiUSD_Audit_Review.pdf](https://content.gitbook.com/content/EPdvkoJHpBF3QkBeBWkM/blobs/BGeUsua2k8O7FmZNfj6v/afiUSD_Audit_Review.pdf) | unknown | Audit | 2025-08 | fresh | Direct | contract_name | no match | 0 | 0 | 0 | 1 | medium |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [19400] ### [Quantstamp Private Audit Report ]() — no match: The provided text is incomplete and does not contain any contract names or audit details.
- [19401] ### [Cantina Private Audit Report ]() — no match: No explicit scope section found; contracts inferred from findings and report header (repositories: Artificial-Financial-Intelligence/afiUSD). Audit period: 27 July 2025 - 30 July 2025, so end date used.
- [19402] cantina_afi_x_jul2025.pdf — no match: No explicit scope section found; contracts inferred from findings and context.
- [19403] afiUSD_Audit_Review.pdf — no match: Only Yield contract is explicitly mentioned in findings; scope section lists a GitHub repo but no specific contract files.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| ### [Cantina Private Audit Report ]() | afiToken | unmatched — not counted | — | mentioned in findings and scope | no |
| ### [Cantina Private Audit Report ]() | Yield | unmatched — not counted | — | mentioned in findings and scope | no |
| ### [Cantina Private Audit Report ]() | Manager | unmatched — not counted | — | mentioned in findings and scope | no |
| ### [Cantina Private Audit Report ]() | afiProxyAdmin | unmatched — not counted | — | mentioned in findings | no |
| cantina_afi_x_jul2025.pdf | afiToken | unmatched — not counted | — | mentioned in scope and findings | no |
| cantina_afi_x_jul2025.pdf | Manager | unmatched — not counted | — | mentioned in scope and findings | no |
| cantina_afi_x_jul2025.pdf | Yield | unmatched — not counted | — | mentioned in scope and findings | no |
| cantina_afi_x_jul2025.pdf | Proxy | unmatched — not counted | — | mentioned in findings | no |
| cantina_afi_x_jul2025.pdf | afiProxyAdmin | unmatched — not counted | — | mentioned in findings | no |
| afiUSD_Audit_Review.pdf | Yield | unmatched — not counted | — | Detailed Findings section discusses Yield contract vulnerabilities | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | `0x32f232423829296f035e2cfcdc426911d4a1a582` | AfiOracle | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 8 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 13 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 4
- Inherited remapped matches: 0
- Address-book scope dispositions: 0 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 10 unmatched
- Matched-own operational status: 0 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: low=1, medium=3
- Match method counts: n/a

Zero-match audit list:

- [19400] ### [Quantstamp Private Audit Report ]()
- [19401] ### [Cantina Private Audit Report ]()
- [19402] cantina_afi_x_jul2025.pdf
- [19403] afiUSD_Audit_Review.pdf

Fork inheritance lineage and inherited audits are included when available.
