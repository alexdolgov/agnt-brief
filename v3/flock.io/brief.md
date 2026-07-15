# Agentic Audit Brief: FLock.io

## Export Authority

- Production state: **published scope**
- Raw selected rows: 1 across 1 audit(s)
- Eligible audit results: 4 (1 matched; 3 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e9e09d06b414f9cd852c36a58d42ce16279465f2d9791cd2a8178f3f54b89ecd`

## Project Overview

- Project: FLock.io (`flock.io`)
- Website: [https://www.flock.io/](https://www.flock.io/)
- Lifecycle: unknown
- Generated: 2026-07-15T18:30:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: base
- Contract surface: 19 unique implementations (35 raw deployments)
- Coverage basis: 1/1 confirmed own live verified implementations (100.0%); conservative 100.0% with 0 needs-review implementation(s)
- DeFi Llama TVL: $4,608,880.94
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## ⚠️ Limited Contract Surface

This brief covers only 1 contract implementation(s). The pipeline may not have discovered all deployed contracts for this project.
Coverage assessment and audit matching are based on this incomplete surface.

## Project Description

This brief describes the observed EVM deployment and audit surface for FLock.io. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 2 contract row(s) across base. Structural roles: 2 unclassified. No upgradeable pattern was identified in these rows.

## Logic Topography

- Exact-run contract rows: 2
- Structural roles: unclassified (2)
- Contract kinds: contract (2)
- Detected standards: none
- Frameworks: none
- Upgradeable-pattern rows: 0

## Contract Surface Quality

- Logic-topography rows: 2; live-surface rows included: 2 (2 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 1/2 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 1/1 (100.0%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 1 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 18 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 16
- Confirmed-live implementations: 1 of 19 unique; 18 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 1/18
- Verified + Unaudited implementations: 17
- Verified by bytecode match: 0
- Unverified implementations: 1
- Unique implementations: 19
- Raw deployments: 35
- Audits discovered: 4 (4 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 1
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2025-04 (aging)
- Audit staleness (calendar age): 0 fresh, 3 aging, 0 stale, 1 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 1 match-unverified
- Tier 1 coverage: 100.0% (SlowMist)

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| SlowMist | Tier 1 | 1 | 5.6% | 2025-04 |

## Contract Surface

### ✅ Verified + Audited (1)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| FlockTokenUpgradeable | unknown | project_anchor | own_supporting | 1 | base | unit-240015 | 2 deployments: base `0x22754d...45f784`; base `0x5ab3d4...a7b691` | ✅ Audited |

### ⚠️ Verified + Unaudited (17)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| FlockAirDrop | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0x05379b...e93d66`; base `0x7c3eac...988daf` | ⚠️ Unaudited |
| FlockConfig | unknown | non_address_book | non_address_book_inventory (excluded) | 2 | base | n/a | 3 deployments: base `0x64e545...1e4997`; base `0x769cec...a2148a`; base `0xf79584...8fb833` | ⚠️ Unaudited |
| FlockPoolManagerUpgradeable | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0x1a15d5...d48af6`; base `0x2d2f27...20dd65` | ⚠️ Unaudited |
| FlockPoolManagerV2Upgradeable | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0x25c2d9...1f5137`; base `0x5c4155...7a1502` | ⚠️ Unaudited |
| FlockRewardPool | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0x86dbb3...1343a8`; base `0xde02bb...8682b5` | ⚠️ Unaudited |
| FlockStakeInfoUpgradeable | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0x2886fd...d17883`; base `0x8a83ef...6a400a` | ⚠️ Unaudited |
| FlockStakeInfoV2Upgradeable | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0x1b964b...9f1f98`; base `0xa799ec...f5bf63` | ⚠️ Unaudited |
| FlockTaskManagerUpgradeable | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 3 deployments: base `0x05e42e...8b737a`; base `0xac24d8...7d8fe4`; base `0xe8e31e...980d6c` | ⚠️ Unaudited |
| FlockTaskManagerUpgradeable | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0x5813de...99aaa0`; base `0xc4d8cf...31846a` | ⚠️ Unaudited |
| FlockTaskManagerV2Upgradeable | governance | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | `0x29d4ec...e69fed` | ⚠️ Unaudited |
| FlockTaskManagerV2Upgradeable | governance | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 2 deployments: base `0x360406...466a3d`; base `0x8884e9...5acdad` | ⚠️ Unaudited |
| FlockTokenUpgradeable | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | `0x81e741...3ad626` | ⚠️ Unaudited |
| gmFlockExchangeUpgradeable | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0x9e0acc...def83f`; base `0xe1fa45...fc6123` | ⚠️ Unaudited |
| gmFlockUpgradeable | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0x781dd2...5cad24`; base `0x7fe6d7...0c816c` | ⚠️ Unaudited |
| LinearVestingRewards | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0x34e11c...dfb5b5`; base `0xf36088...752b53` | ⚠️ Unaudited |
| ModelTokenLaunchUpgradeable | token | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | `0x6f39fe...97f0b1` | ⚠️ Unaudited |
| ProxyAdmin | governance | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xb6523d...7e9f06` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (1)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x7bf579...5e195e` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [FLock Phase1 - SlowMist Audit Report.pdf](https://github.com/slowmist/Knowledge-Base/blob/master/open-report-V2/smart-contract/FLock%20Phase1%20-%20SlowMist%20Audit%20Report.pdf) | SlowMist | Audit | 2024-11 | aging | Direct | contract_name | matched | 1 | 1 | 0 | 6 | high |
| [Flock v2 - SlowMist Audit Report.pdf](https://github.com/slowmist/Knowledge-Base/blob/master/open-report-V2/smart-contract/Flock%20v2%20-%20SlowMist%20Audit%20Report.pdf) | SlowMist | Audit | 2025-04 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 10 | high |
| [Flock - FL Alliance Client - SlowMist Audit Report.pdf](https://github.com/slowmist/Knowledge-Base/blob/master/open-report-V2/blockchain/Flock%20-%20FL%20Alliance%20Client%20-%20SlowMist%20Audit%20Report.pdf) | SlowMist | Audit | 2025-01 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 5 | high |
| [README.md](https://github.com/slowmist/Knowledge-Base/blob/master/open-report-V2/README.md) | SlowMist | Audit | n/a | unknown | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [21300] FLock Phase1 - SlowMist Audit Report.pdf — matched: Audit scope explicitly lists contracts in ./contracts directory. Audit date range is 2024.10.29 - 2024.11.11, using end date.
- [21302] Flock v2 - SlowMist Audit Report.pdf — no match: All contracts listed in the Audit Scope section under 4.1 Contracts Description.
- [21303] Flock - FL Alliance Client - SlowMist Audit Report.pdf — no match: Extracted contract names from audit scope tree and findings. Audit date from audit result table: 2025.01.17 - 2025.01.24, using end date.
- [24086] README.md — no match: The provided text is a list of audit report titles and links, not the content of a specific audit report. No contracts in scope or audit date can be extracted.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| FLock Phase1 - SlowMist Audit Report.pdf | AdminUpgradeable | unmatched — not counted | — | listed in audit scope | no |
| FLock Phase1 - SlowMist Audit Report.pdf | FlockMiniPool | unmatched — not counted | — | listed in audit scope | no |
| FLock Phase1 - SlowMist Audit Report.pdf | FlockPoolManagerUpgradeable | unmatched — not counted | — | listed in audit scope | no |
| FLock Phase1 - SlowMist Audit Report.pdf | FlockStakeInfoUpgradeable | unmatched — not counted | — | listed in audit scope | no |
| FLock Phase1 - SlowMist Audit Report.pdf | FlockTaskManagerUpgradeable | unmatched — not counted | — | listed in audit scope | no |
| FLock Phase1 - SlowMist Audit Report.pdf | FlockTokenUpgradeable | own proxy deployment | TransparentUpgradeableProxy (proxy) (selected) `0x5ab3d4...a7b691` — deployed 2024-12-21 02:29:23+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| FLock Phase1 - SlowMist Audit Report.pdf | FlockConfig | unmatched — not counted | — | listed in audit scope as config directory | no |
| Flock v2 - SlowMist Audit Report.pdf | FlockMiniPoolV2 | unmatched — not counted | — | listed in scope | no |
| Flock v2 - SlowMist Audit Report.pdf | FlockPoolManagerV2Upgradeable | unmatched — not counted | — | listed in scope | no |
| Flock v2 - SlowMist Audit Report.pdf | FlockStakeInfoV2Upgradeable | unmatched — not counted | — | listed in scope | no |
| Flock v2 - SlowMist Audit Report.pdf | FlockTaskManagerV2Upgradeable | unmatched — not counted | — | listed in scope | no |
| Flock v2 - SlowMist Audit Report.pdf | RbacUpgradeable | unmatched — not counted | — | listed in scope | no |
| Flock v2 - SlowMist Audit Report.pdf | ConfigHelperV2 | unmatched — not counted | — | listed in scope | no |
| Flock v2 - SlowMist Audit Report.pdf | ConfigOptionsV2 | unmatched — not counted | — | listed in scope | no |
| Flock v2 - SlowMist Audit Report.pdf | FlockConfigV2 | unmatched — not counted | — | listed in scope | no |
| Flock v2 - SlowMist Audit Report.pdf | gmFlockExchangeUpgradeable | unmatched — not counted | — | listed in scope | no |
| Flock v2 - SlowMist Audit Report.pdf | gmFlockUpgradeable | unmatched — not counted | — | listed in scope | no |
| Flock - FL Alliance Client - SlowMist Audit Report.pdf | FlockTask | unmatched — not counted | — | listed in scope and findings | no |
| Flock - FL Alliance Client - SlowMist Audit Report.pdf | Dataset | unmatched — not counted | — | listed in scope and findings | no |
| Flock - FL Alliance Client - SlowMist Audit Report.pdf | S3StorageManager | unmatched — not counted | — | listed in scope and findings | no |
| Flock - FL Alliance Client - SlowMist Audit Report.pdf | Client | unmatched — not counted | — | listed in scope and findings | no |
| Flock - FL Alliance Client - SlowMist Audit Report.pdf | ContainerManager | unmatched — not counted | — | listed in scope | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 17 |
| upstream | 0 |
| standard_library | 1 |
| needs_review | 1 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 3
- Inherited remapped matches: 0
- Address-book scope dispositions: 1 own (1 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 21 unmatched
- Matched-own operational status: 1 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=3, low=1
- Match method counts: unique_name=1

Zero-match audit list:

- [21302] Flock v2 - SlowMist Audit Report.pdf
- [21303] Flock - FL Alliance Client - SlowMist Audit Report.pdf
- [24086] README.md

Fork inheritance lineage and inherited audits are included when available.
