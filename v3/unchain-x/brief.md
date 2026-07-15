# Agentic Audit Brief: Unchain X

## Export Authority

- Production state: **published scope**
- Raw selected rows: 0 across 0 audit(s)
- Eligible audit results: 2 (0 matched; 2 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e9e09d06b414f9cd852c36a58d42ce16279465f2d9791cd2a8178f3f54b89ecd`

## Project Overview

- Project: Unchain X (`unchain-x`)
- Website: [https://unchainx.io](https://unchainx.io)
- Lifecycle: unknown
- Generated: 2026-07-15T18:30:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: bsc
- Contract surface: 44 unique implementations (46 raw deployments)
- Coverage basis: not assessable — No eligible owned address-book contracts are available for an operational-liveness denominator.
- DeFi Llama TVL: $978,845.89
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## ⚠️ Limited Contract Surface

This brief covers only 0 contract implementation(s). The pipeline may not have discovered all deployed contracts for this project.
Coverage assessment and audit matching are based on this incomplete surface.

## Project Description

This brief describes the observed EVM deployment and audit surface for Unchain X. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 7 contract row(s) across bsc. Structural roles: 7 core. No upgradeable pattern was identified in these rows.

## Logic Topography

- Exact-run contract rows: 7
- Structural roles: core (7)
- Contract kinds: contract (7)
- Detected standards: ownable (6), pausable (6), erc20 (1)
- Frameworks: openzeppelin (7)
- Upgradeable-pattern rows: 0

## Contract Surface Quality

- Operational liveness prerequisite: not_applicable; 0/0 eligible owned address-book contracts resolved from completed operational-liveness snapshots.
- Logic-topography rows: 7; live/inactive and live-deployment-unit totals are withheld until liveness completes.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: not assessable
- Coverage assessment: not_assessable (low confidence) — No eligible owned address-book contracts are available for an operational-liveness denominator.
- Address-book implementation classification: 0 own, 7 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 37 discovered implementations shown in the inventory but excluded from coverage (1 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 0
- Operational liveness: not_applicable; 0/0 eligible owned address-book contracts resolved. Deployed-live counts are withheld from coverage.
- All block-explorer-verified implementations audited (incl. non-live): 0/20
- Verified + Unaudited implementations: 20
- Verified by bytecode match: 0
- Unverified implementations: 24
- Unique implementations: 44
- Raw deployments: 46
- Audits discovered: 2 (2 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2024-09 (aging)
- Audit staleness (calendar age): 0 fresh, 1 aging, 1 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (20)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| ERC1967Proxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 3 deployments: bsc `0x784aec...6a7d30`; bsc `0xd12a29...fe69e8`; bsc `0xf328ac...164b1f` | ⚠️ Unaudited |
| GenesisX | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xba2d44...60ecc6` | ⚠️ Unaudited |
| HalvingProtocol | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xa6820d...c05db8` | ⚠️ Unaudited |
| LaunchpadStakingV2 | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | unit-259719 | `0x057d5b...0fa015` | ⚠️ Unaudited |
| LaunchpadStakingV2 | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | unit-259720 | `0x0ea8f9...ce0550` | ⚠️ Unaudited |
| LaunchpadStakingV2 | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | unit-259722 | `0x8d2f48...0ae245` | ⚠️ Unaudited |
| LaunchpadStakingV2 | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | unit-259723 | `0xd7d98c...1a1240` | ⚠️ Unaudited |
| LaunchpadStakingV2 | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | unit-259725 | `0xf28961...f911e8` | ⚠️ Unaudited |
| NonfungiblePositionManager | governance | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x854ec7...2703de` | ⚠️ Unaudited |
| PositionDescriptor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xc271ec...1fbe20` | ⚠️ Unaudited |
| QuoterV2 | periphery | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x03dd4e...0811f5` | ⚠️ Unaudited |
| SwapRouter | adapter | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xc9d96c...061f7f` | ⚠️ Unaudited |
| TimeLockController | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xa135bc...338a18` | ⚠️ Unaudited |
| UNXFaucet | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | unit-259724 | `0xdc0b82...28a879` | ⚠️ Unaudited |
| UNXToken | token | external_dependency_or_infra | third_party_dependency (excluded) | 0 | bsc | unit-259721 | `0x4f0572...bdea6f` | ⚠️ Unaudited |
| UNXwapV3Factory | registry | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x82fa7b...d8d40c` | ⚠️ Unaudited |
| UNXwapV3LmFactory | registry | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xb4339c...832aed` | ⚠️ Unaudited |
| UNXwapV3Manager | governance | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xb50024...a38d18` | ⚠️ Unaudited |
| XLauncherToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xd04eec...0bc6ec` | ⚠️ Unaudited |
| XPlosion | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x9e309f...88d650` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (24)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x011d89...c3ce8f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x0371a8...d77481` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x04e395...d93edf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x25f544...ce78e5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x267625...d0a263` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x2cd479...47041b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x39ad71...f71671` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x3ff22e...500e9c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x46c18f...d4fe8a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x47059c...53c56a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x5c403a...b82bc4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x621f23...a11f65` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x649f0b...0b034b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x64ad55...c27f96` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x94b1b8...f655ad` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x95b09e...13e7d4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xa060db...466689` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xafb510...b56753` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xb55590...1b9c8f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xbc696b...e304de` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xcc0073...6e6c17` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xd4c5ec...31a7e6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xdf8a07...342889` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xe31f7f...8ae354` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [skynet.certik.com/projects/unchain-x](https://skynet.certik.com/projects/unchain-x) | CertiK | Audit | 2024-09 | aging | Direct | n/a | no match | 0 | 0 | 0 | 8 | n/a |
| [PeckShield-Audit-Report-UnchainX-v1.0.pdf](https://github.com/UNCHAIN-X-Labs/launchpad-staking-contract/blob/main/audit/PeckShield-Audit-Report-UnchainX-v1.0.pdf) | PeckShield | Audit | 2024-04 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 1 | high |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [3135] skynet.certik.com/projects/unchain-x — no match: No reason recorded
- [3136] PeckShield-Audit-Report-UnchainX-v1.0.pdf — no match: Only one contract, LaunchpadStaking, is in scope. No file paths provided.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| skynet.certik.com/projects/unchain-x | HalvingProtocol | unmatched — not counted | — | — | no |
| skynet.certik.com/projects/unchain-x | NonfungiblePositionManager | unmatched — not counted | — | — | no |
| skynet.certik.com/projects/unchain-x | RelayERC20 | unmatched — not counted | — | — | no |
| skynet.certik.com/projects/unchain-x | TimeLockController | unmatched — not counted | — | — | no |
| skynet.certik.com/projects/unchain-x | UNXToken | unmatched — not counted | — | — | no |
| skynet.certik.com/projects/unchain-x | UNXwapV3Factory | unmatched — not counted | — | — | no |
| skynet.certik.com/projects/unchain-x | UNXwapV3LmFactory | unmatched — not counted | — | — | no |
| skynet.certik.com/projects/unchain-x | UNXwapV3Manager | unmatched — not counted | — | — | no |
| PeckShield-Audit-Report-UnchainX-v1.0.pdf | LaunchpadStaking | unmatched — not counted | — | Listed as target in scope table and throughout report | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 18 |
| upstream | 0 |
| standard_library | 2 |
| needs_review | 24 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 2
- Inherited remapped matches: 0
- Address-book scope dispositions: 0 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 9 unmatched
- Matched-own operational status: 0 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=1
- Match method counts: n/a

Zero-match audit list:

- [3135] skynet.certik.com/projects/unchain-x
- [3136] PeckShield-Audit-Report-UnchainX-v1.0.pdf

Fork inheritance lineage and inherited audits are included when available.
