# Agentic Audit Brief: foxify

## Export Authority

- Production state: **published scope**
- Raw selected rows: 0 across 0 audit(s)
- Eligible audit results: 1 (0 matched; 1 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e40c73181a386361babecc6895e0f6c5587548f92814db09f88491f8b4a38d92`

## Project Overview

- Project: foxify (`foxify`)
- Website: [https://www.foxify.trade/](https://www.foxify.trade/)
- Lifecycle: unknown
- Generated: 2026-07-24T14:10:00.000Z
- Pipeline run: brief-deployer-expansion-all-20260724-v1
- Chains: arbitrum, sonic
- Contract surface: 8 unique implementations (11 raw deployments)
- Coverage basis: 0/1 confirmed own live verified implementations (0.0%); conservative 0.0% with 0 needs-review implementation(s)
- DeFi Llama TVL: $3,556,139.52
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## ⚠️ Limited Contract Surface

This brief covers only 1 contract implementation(s). The pipeline may not have discovered all deployed contracts for this project.
Coverage assessment and audit matching are based on this incomplete surface.

## Project Description

This brief describes the observed EVM deployment and audit surface for foxify. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 1 contract row(s) across arbitrum, sonic. Structural roles: 1 infra. No upgradeable pattern was identified in these rows.

## Logic Topography

- Exact-run contract rows: 1
- Structural roles: infra (1)
- Contract kinds: contract (1)
- Detected standards: erc20 (1)
- Frameworks: openzeppelin (1)
- Upgradeable-pattern rows: 0

## Fork Analysis

0 of 1 contracts are derived from known codebases. 1 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- Foxify (`0x261dfa2528dfa19011f10b168c856e02baaf0eb6`, chain 146)

## Contract Surface Quality

- Logic-topography rows: 1; live-surface rows included: 1 (1 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 1/4 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 0/1 (0.0%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 1 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 7 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 3
- Confirmed-live implementations: 1 of 8 unique; 7 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 0/6
- Verified + Unaudited implementations: 6
- Verified by bytecode match: 0
- Unverified implementations: 2
- Unique implementations: 8
- Raw deployments: 11
- Audits discovered: 1 (1 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2023-06 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 1 stale, 0 unknown
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
| EBFOX | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xbd87a909f9a40fdad6d9be703e89a0383064d0ab` | ⚠️ Unaudited |
| Foxify | unknown | project_anchor | own_supporting | 0 | sonic | unit-386584 | `0x261dfa2528dfa19011f10b168c856e02baaf0eb6` | ⚠️ Unaudited |
| FoxifyMaxi | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x3725b740b33e75898e4e2e616e9bb519884edd37` | ⚠️ Unaudited |
| SFOX | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x8725bc25a94bcec8ef1f47bb8e9c22e343f97d8e` | ⚠️ Unaudited |
| Vault | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | sonic | n/a | 2 deployments: sonic `0x62e15748e3a28082efd8f51b1a7b56eb0b004808`; sonic `0xf9eb7e3dc07e9cbabc462db13d73da931b07e0db` | ⚠️ Unaudited |
| Vault | unknown | non_address_book | non_address_book_inventory (excluded) | 2 | sonic | n/a | 3 deployments: sonic `0xc24d387e68ece6c26e6f551e119af4e18f33a54f`; sonic `0xc64ca64f35e919c6b469be16f4f0ea24a621c322`; sonic `0xca2dfb842f0c5158bb57296a243813e37058850d` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (2)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x91fb98c2ff10b0378890e07dc4a6496624a9287f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xc23ce59e5ac45d96fc41db3e133ee3232c0b2779` | ❓ Unverified |

## Deployer Expansion Inventory

These rows are additive inventory from `project_contracts.discovery_source=deployer_expansion`; they do not change scope matching, coverage, or logic topography in this brief.

- Source: `project_contracts.discovery_source=deployer_expansion`
- Decision run: `deployer-candidate-production-20260712`
- Total contracts: 8
- Live contracts: 0
- Unknown liveness contracts: 8
- Source-verified contracts: 6
- Currently scope-matched contracts retained as-is: 0
- Classification counts: source verified unclassified=6, unverified unclassified=2

| Classification | Contract | Address-Book Class | Role | Liveness | Source | Decision | Deployer |
|---|---|---|---|---|---|---|---|
| source verified unclassified | SFOX<br>`0x8725bc25a94bcec8ef1f47bb8e9c22e343f97d8e` | non_address_book | unknown | unknown | verified | n/a | `0x890e99ce89baeacb03df24789c52bef5f3dc6fc2` |
| source verified unclassified | TransparentUpgradeableProxy<br>`0x62e15748e3a28082efd8f51b1a7b56eb0b004808` | non_address_book | unknown | unknown | verified | n/a | `0x890e99ce89baeacb03df24789c52bef5f3dc6fc2` |
| source verified unclassified | TransparentUpgradeableProxy<br>`0xc24d387e68ece6c26e6f551e119af4e18f33a54f` | non_address_book | unknown | unknown | verified | n/a | `0x890e99ce89baeacb03df24789c52bef5f3dc6fc2` |
| source verified unclassified | TransparentUpgradeableProxy<br>`0xc64ca64f35e919c6b469be16f4f0ea24a621c322` | non_address_book | unknown | unknown | verified | n/a | `0x890e99ce89baeacb03df24789c52bef5f3dc6fc2` |
| source verified unclassified | Vault<br>`0xca2dfb842f0c5158bb57296a243813e37058850d` | non_address_book | unknown | unknown | verified | n/a | `0x890e99ce89baeacb03df24789c52bef5f3dc6fc2` |
| source verified unclassified | Vault<br>`0xf9eb7e3dc07e9cbabc462db13d73da931b07e0db` | non_address_book | unknown | unknown | verified | n/a | `0x890e99ce89baeacb03df24789c52bef5f3dc6fc2` |
| unverified unclassified | UnnamedContract<br>`0x91fb98c2ff10b0378890e07dc4a6496624a9287f` | non_address_book | unknown | unknown | unverified | n/a | `0x8507d7c673219760d0c5300d86484590e69c5bcc` |
| unverified unclassified | UnnamedContract<br>`0xc23ce59e5ac45d96fc41db3e133ee3232c0b2779` | non_address_book | unknown | unknown | unverified | n/a | `0x8507d7c673219760d0c5300d86484590e69c5bcc` |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [skynet.certik.com/projects/foxify](https://skynet.certik.com/projects/foxify) | CertiK | Audit | 2023-06 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 2 | medium |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [20715] skynet.certik.com/projects/foxify — no match: Extracted from 'Audited Files/SHA256' section; only two contract names explicitly listed. The report mentions 15 audited files but only two are named. Audit date from 'Last Audit was delivered on 6/26/2023'.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| skynet.certik.com/projects/foxify | OracleConnector | unmatched — not counted | — | listed in audited files | no |
| skynet.certik.com/projects/foxify | SwapperConnector | unmatched — not counted | — | listed in audited files | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| sonic | `0x261dfa2528dfa19011f10b168c856e02baaf0eb6` | Foxify | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 6 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 2 |

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

- [20715] skynet.certik.com/projects/foxify

Fork inheritance lineage and inherited audits are included when available.
