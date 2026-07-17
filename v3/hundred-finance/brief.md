# Agentic Audit Brief: Hundred Finance

## Export Authority

- Production state: **published scope**
- Raw selected rows: 0 across 0 audit(s)
- Eligible audit results: 1 (0 matched; 1 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e9e09d06b414f9cd852c36a58d42ce16279465f2d9791cd2a8178f3f54b89ecd`

## Project Overview

- Project: Hundred Finance (`hundred-finance`)
- Website: [https://hundred.finance/](https://hundred.finance/)
- Lifecycle: unknown
- Generated: 2026-07-15T18:30:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: arbitrum, ethereum, fantom, gnosis, harmony, moonriver, optimism, polygon
- Contract surface: 34 unique implementations (34 raw deployments)
- Coverage basis: not assessable — No eligible owned address-book contracts are available for an operational-liveness denominator.
- DeFi Llama TVL: $102,252.36
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## ⚠️ Limited Contract Surface

This brief covers only 0 contract implementation(s). The pipeline may not have discovered all deployed contracts for this project.
Coverage assessment and audit matching are based on this incomplete surface.

## Project Description

This brief describes the observed EVM deployment and audit surface for Hundred Finance. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 5 contract row(s) across arbitrum, ethereum, fantom, gnosis, harmony, moonriver, optimism, polygon. Structural roles: 3 core, 2 supporting. No upgradeable pattern was identified in these rows.

## Logic Topography

- Exact-run contract rows: 5
- Structural roles: core (3), supporting (2)
- Contract kinds: contract (5)
- Detected standards: erc20 (5), erc20permit (5)
- Frameworks: openzeppelin (3)
- Upgradeable-pattern rows: 0

## Contract Surface Quality

- Operational liveness prerequisite: not_applicable; 0/0 eligible owned address-book contracts resolved from completed operational-liveness snapshots.
- Logic-topography rows: 5; live/inactive and live-deployment-unit totals are withheld until liveness completes.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: not assessable
- Coverage assessment: not_assessable (low confidence) — No eligible owned address-book contracts are available for an operational-liveness denominator.
- Address-book implementation classification: 0 own, 33 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 1 discovered implementations shown in the inventory but excluded from coverage (14 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 0
- Operational liveness: not_applicable; 0/0 eligible owned address-book contracts resolved. Deployed-live counts are withheld from coverage.
- All block-explorer-verified implementations audited (incl. non-live): 0/6
- Verified + Unaudited implementations: 6
- Verified by bytecode match: 0
- Unverified implementations: 28
- Unique implementations: 34
- Raw deployments: 34
- Audits discovered: 1 (1 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2020-09 (stale)
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
| Hundred | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | unit-242214 | `0x10010078a54396f62c96df8532dc2b4847d47ed3` | ⚠️ Unaudited |
| Hundred | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | optimism | unit-242216 | `0x10010078a54396f62c96df8532dc2b4847d47ed3` | ⚠️ Unaudited |
| Hundred | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | gnosis | unit-242218 | `0x10010078a54396f62c96df8532dc2b4847d47ed3` | ⚠️ Unaudited |
| Hundred | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x10010078a54396f62c96df8532dc2b4847d47ed3` | ⚠️ Unaudited |
| Hundred | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | moonriver | unit-242220 | `0x10010078a54396f62c96df8532dc2b4847d47ed3` | ⚠️ Unaudited |
| Hundred | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | arbitrum | unit-242223 | `0x10010078a54396f62c96df8532dc2b4847d47ed3` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (28)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | n/a | `0x0000000000000000000000000000000000000000` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | n/a | `0x10010069de6bd5408a6ded075cf6ae2498073c73` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | ethereum | n/a | `0xb426c1b7fabea9ea6a273e8427040568a8c7df13` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | ethereum | n/a | `0xe8f12f5492ec28609d2932519456b7436d6c93bd` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | optimism | n/a | `0x10010069de6bd5408a6ded075cf6ae2498073c73` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | gnosis | n/a | `0x36208a6d429b056be6be5fa81cdf4092748ac35d` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | fantom | n/a | `0x10010069de6bd5408a6ded075cf6ae2498073c73` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | fantom | unit-242222 | `0x10010078a54396f62c96df8532dc2b4847d47ed3` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | moonriver | n/a | `0x090a00a2de0ea83def700b5e216f87a5d4f394fe` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | moonriver | n/a | `0x10010069de6bd5408a6ded075cf6ae2498073c73` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | moonriver | n/a | `0x29ddb4c4f9baae366dbd40eff79d364e004425b0` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | moonriver | n/a | `0x30a026ae9e2a1363e96a5e5ab12786a46066beb8` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | moonriver | n/a | `0x42b458056f887fd665ed6f160a59afe932e1f559` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | moonriver | n/a | `0x5b9451b1bfae2a74d7b9d0d45bdd0e9a27f7bb22` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | moonriver | n/a | `0x607312a5c671d0c511998171e634de32156e69d0` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | moonriver | n/a | `0x89db3b59381bc06fe9bf74532afd777e5f78ef02` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | moonriver | n/a | `0x8e15a22853a0a60a0fbb0d875055a8e66cff0235` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | moonriver | n/a | `0xb1c4426c86082d91a6c097fc588e5d5d8dd1f5a8` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | moonriver | n/a | `0xb426c1b7fabea9ea6a273e8427040568a8c7df13` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | moonriver | n/a | `0xb4300e088a3ae4e624ee5c71bc1822f68bb5f2bc` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | moonriver | n/a | `0xbb93c7f378b9b531216f9ad7b5748be189a55807` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | moonriver | n/a | `0xe4e43864ea18d5e5211352a4b810383460ab7fcc` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | moonriver | n/a | `0xe8f12f5492ec28609d2932519456b7436d6c93bd` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | arbitrum | n/a | `0x0000000000000000000000000000000000000000` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | arbitrum | n/a | `0x10010069de6bd5408a6ded075cf6ae2498073c73` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | harmony | n/a | `0x0000000000000000000000000000000000000000` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | harmony | n/a | `0x10010069de6bd5408a6ded075cf6ae2498073c73` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | harmony | unit-242221 | `0x10010078a54396f62c96df8532dc2b4847d47ed3` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [02_Smart Contract Audit Percent Finance.pdf](https://github.com/chainsulting/Smart-Contract-Security-Audits/blob/master/Percent%20Finance/02_Smart%20Contract%20Audit%20Percent%20Finance.pdf) | unknown | Audit | 2020-09 | stale | Direct | address | no match | 0 | 0 | 0 | 2 | high |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [13250] 02_Smart Contract Audit Percent Finance.pdf — no match: The audit report explicitly lists two contracts in scope: ChainlinkPriceOracleProxy.sol and percentfinance.sol. The audit date is derived from the final document version date (29.09.2020).

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| 02_Smart Contract Audit Percent Finance.pdf | ChainlinkPriceOracleProxy | unmatched — not counted | — | Listed in tested contract files section with SHA256 hash and source URL. | no |
| 02_Smart Contract Audit Percent Finance.pdf | percentfinance | unmatched — not counted | — | Listed in tested contract files section with SHA256 hash and source URL. | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 6 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 28 |

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

- [13250] 02_Smart Contract Audit Percent Finance.pdf

Fork inheritance lineage and inherited audits are included when available.
