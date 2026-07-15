# Agentic Audit Brief: Anvil

## Export Authority

- Production state: **published scope**
- Raw selected rows: 9 across 4 audit(s)
- Eligible audit results: 4 (4 matched; 0 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `7fbef0dcf68cde7195f117d9b41f1e6d89891da495a42b57ae29b5e338972213`

⚠️ Lifecycle status: DECLINING - TVL dropped 61.5% over 90 days

## Project Overview

- Project: Anvil (`anvil`)
- Website: [https://anvil.xyz/](https://anvil.xyz/)
- Lifecycle: declining (Tier 1, declining)
- Generated: 2026-07-15T18:00:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: ethereum
- Contract surface: 15 unique implementations (17 raw deployments)
- Coverage basis: 7/12 confirmed own live verified implementations (58.3%); conservative 58.3% with 0 needs-review implementation(s)
- DeFi Llama TVL: $9,637,760.30
- On-chain TVL (included contracts): $520,122.95
- TVL by chain: Ethereum $520,122.95

## Project Description

This brief describes the observed EVM deployment and audit surface for Anvil. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 16 contract row(s) across ethereum. Structural roles: 7 unclassified, 4 supporting, 3 core, 2 infra. 2 row(s) use upgradeable patterns.

## Logic Topography

- Exact-run contract rows: 16
- Structural roles: unclassified (7), supporting (4), core (3), infra (2)
- Contract kinds: contract (16)
- Detected standards: ownable (6), ownable2step (4), erc165 (3), accesscontrol (2), erc1967proxy (1), erc20 (1)
- Frameworks: openzeppelin (9)
- Upgradeable-pattern rows: 2

## Fork Analysis

0 of 10 contracts are derived from known codebases. 10 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0x24573b...70e27e`, chain 1)
- UnnamedContract (`0x716321...b14589`, chain 1)
- Anvil (`0xaeeaa5...5b5597`, chain 1)
- AnvilTimelock (`0x4eeb7c...2cad21`, chain 1)
- CollateralVault (`0x5d2725...1d675f`, chain 1)
- PassThroughLiquidator (`0x9ae1ca...1342b8`, chain 1)
- Permit2PassThroughLiquidator (`0x8aa57e...e2eb4c`, chain 1)
- ProxyAdmin (`0x12225b...6e341d`, chain 1)
- TimeBasedCollateralPool (`0xcc437a...4cf29f`, chain 1)
- UpgradeableBeacon (`0x1f00d6...9c9e14`, chain 1)

## Contract Surface Quality

- Indexed contracts: 16; live-surface contracts included: 16 (13 live, 3 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 13/15 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 7/12 (58.3%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 13 own, 2 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 0 discovered implementations excluded (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 3
- Deployed-live implementations: 13 of 15 unique (rest dead/inactive/uninitialized)
- All verified address-book-owned implementations audited (incl. non-live): 7/12
- Verified + Unaudited implementations: 5
- Verified by bytecode match: 0
- Unverified implementations: 1
- Unique implementations: 15
- Raw deployments: 17
- Audits discovered: 4 (4 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 4
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2025-10 (fresh)
- Audit staleness (calendar age): 1 fresh, 2 aging, 1 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 7 match-unverified
- Tier 1 coverage: 58.3% (OpenZeppelin, Trail of Bits)
- Note: This protocol is classified as [declining]. ASD of n/a represents exposure in a protocol with declining activity.

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| OpenZeppelin | Tier 1 | 7 | 58.3% | 2025-10 |
| Trail of Bits | Tier 1 | 2 | 16.7% | 2023-12 |

## Contract Surface

### ✅ Verified + Audited (7)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| CollateralVault | core_logic | project_anchor | own_supporting | 0 | ethereum | unit-379042 | `0x5d2725...1d675f` | ✅ Audited |
| Anvil | unknown | project_anchor | own_supporting | 0 | ethereum | unit-379040 | `0x2ca924...d01bfc` | ✅ Audited |
| Anvil | unknown | project_anchor | own_supporting | 0 | ethereum | unit-379046 | `0xaeeaa5...5b5597` | ✅ Audited |
| AnvilGovernorDelegate | governance | project_anchor | own_supporting | 1 | ethereum | unit-379051 | `0x00e83d...4874c9` | ✅ Audited |
| AnvilTimelock | governance | project_anchor | own_supporting | 0 | ethereum | unit-379041 | `0x4eeb7c...2cad21` | ✅ Audited |
| LetterOfCredit | unknown | project_anchor | own_supporting | 1 | ethereum | unit-379052 | 2 deployments: ethereum `0x14db9a...7c4808`; ethereum `0x24573b...70e27e` | ✅ Audited |
| PythPriceOracle | unknown | project_anchor | own_supporting | 0 | ethereum | unit-379048 | `0xc6f340...56ee05` | ✅ Audited |

### ⚠️ Verified + Unaudited (7)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| AnvilGovernorDelegate | governance | project_anchor | own_supporting | 0 | ethereum | unit-379050 | `0xfe1118...42a361` | ⚠️ Unaudited |
| Claim | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | ethereum | unit-379049 | `0xefd194...7e29ac` | ⚠️ Unaudited |
| PassThroughLiquidator | operational_periphery | project_anchor | own_supporting | 0 | ethereum | unit-379045 | `0x9ae1ca...1342b8` | ⚠️ Unaudited |
| Permit2PassThroughLiquidator | operational_periphery | project_anchor | own_supporting | 0 | ethereum | unit-379044 | `0x8aa57e...e2eb4c` | ⚠️ Unaudited |
| ProxyAdmin | governance | project_anchor | own_supporting | 0 | ethereum | unit-379039 | `0x12225b...6e341d` | ⚠️ Unaudited |
| Reward | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | ethereum | unit-379047 | `0xc6a06f...da22da` | ⚠️ Unaudited |
| TimeBasedCollateralPool | unknown | project_anchor | own_supporting | 1 | ethereum | unit-379053 | 2 deployments: ethereum `0x1f00d6...9c9e14`; ethereum `0xcc437a...4cf29f` | ⚠️ Unaudited |

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
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-379043 | `0x716321...b14589` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [www.openzeppelin.com/news/anvil-protocol-diff-audit](https://www.openzeppelin.com/news/anvil-protocol-diff-audit) | OpenZeppelin | Audit | 2025-10 | fresh | Direct | contract_name | matched | 1 | 0 | 0 | 1 | high |
| [www.openzeppelin.com/news/anvil-protocol-audit](https://www.openzeppelin.com/news/anvil-protocol-audit) | OpenZeppelin | Audit | 2024-10 | aging | Direct | contract_name | matched | 4 | 1 | 0 | 11 | high |
| [2023-12-acronym-foundation-securityreview.pdf](https://github.com/trailofbits/publications/blob/master/reviews/2023-12-acronym-foundation-securityreview.pdf) | Trail of Bits | Audit | 2023-12 | stale | Direct | contract_name | matched | 2 | 1 | 0 | 2 | high |
| [www.openzeppelin.com/news/anvil-audit](https://www.openzeppelin.com/news/anvil-audit) | OpenZeppelin | Audit | 2024-10 | aging | Direct | contract_name | matched | 2 | 1 | 0 | 7 | high |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [1947] www.openzeppelin.com/news/anvil-protocol-diff-audit — matched: Scope explicitly lists two files: Anvil.sol and AnvilGovernorDelegate.sol. Audit date is October 1, 2025 from the header.
- [1948] www.openzeppelin.com/news/anvil-protocol-audit — matched: Extracted 15 contract names from the scope section listing files in the contracts/ and contracts/governance/ and contracts/interfaces/ directories. Audit date from the title: 'October 11, 2024'.
- [1949] 2023-12-acronym-foundation-securityreview.pdf — matched: Extracted contracts from Project Targets and Project Coverage sections. Pricing is a library used by LetterOfCredit.
- [1950] www.openzeppelin.com/news/anvil-audit — matched: Scope section explicitly lists contracts and interfaces under contracts/ directory.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| www.openzeppelin.com/news/anvil-protocol-diff-audit | Anvil | own contract | Anvil (selected) `0xaeeaa5...5b5597` — deployed 2025-10-03 01:52:35+03 — liveness: live (current_address_book_code)<br>Anvil (alternative) `0x2ca924...d01bfc` — deployed 2024-06-04 00:43:11+03 — liveness: live (current_address_book_code) | deployment-date disambiguation: 2025-10-03 was 2d from audit; next candidate 484d; normalized_full_corpus:project_anchor:matcher_anchor | yes |
| www.openzeppelin.com/news/anvil-protocol-diff-audit | AnvilGovernorDelegate | ambiguous — not counted | AnvilGovernorDelegate (alternative) `0xfe1118...42a361` — deployed 2024-06-04 00:40:47+03 — liveness: live (current_address_book_code)<br>AnvilGovernorDelegator (proxy) (alternative) `0x00e83d...4874c9` — deployed 2024-06-04 01:01:11+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| www.openzeppelin.com/news/anvil-protocol-audit | CollateralVault | own contract | CollateralVault (selected) `0x5d2725...1d675f` — deployed 2024-08-19 17:39:11+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| www.openzeppelin.com/news/anvil-protocol-audit | Pricing | unmatched — not counted | — | listed in scope | no |
| www.openzeppelin.com/news/anvil-protocol-audit | TimeBasedCollateralPool | ambiguous — not counted | TimeBasedCollateralPool (alternative) `0xcc437a...4cf29f` — deployed 2024-11-25 18:41:59+03 — liveness: live (current_address_book_code)<br>UpgradeableBeacon (proxy) (alternative) `0x1f00d6...9c9e14` — deployed 2024-08-19 17:40:47+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| www.openzeppelin.com/news/anvil-protocol-audit | Anvil | own contract | Anvil (alternative) `0xaeeaa5...5b5597` — deployed 2025-10-03 01:52:35+03 — liveness: live (current_address_book_code)<br>Anvil (selected) `0x2ca924...d01bfc` — deployed 2024-06-04 00:43:11+03 — liveness: live (current_address_book_code) | deployment-date disambiguation: 2024-06-04 was 129d from audit; next candidate 357d; normalized_full_corpus:project_anchor:matcher_anchor | yes |
| www.openzeppelin.com/news/anvil-protocol-audit | AnvilERC20Votes | unmatched — not counted | — | listed in scope | no |
| www.openzeppelin.com/news/anvil-protocol-audit | AnvilGovernorDelegate | ambiguous — not counted | AnvilGovernorDelegate (alternative) `0xfe1118...42a361` — deployed 2024-06-04 00:40:47+03 — liveness: live (current_address_book_code)<br>AnvilGovernorDelegator (proxy) (alternative) `0x00e83d...4874c9` — deployed 2024-06-04 01:01:11+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| www.openzeppelin.com/news/anvil-protocol-audit | AnvilGovernorDelegator | own proxy deployment | AnvilGovernorDelegator (proxy) (selected) `0x00e83d...4874c9` — deployed 2024-06-04 01:01:11+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| www.openzeppelin.com/news/anvil-protocol-audit | AnvilTimelock | own contract | AnvilTimelock (selected) `0x4eeb7c...2cad21` — deployed 2024-06-04 01:00:11+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| www.openzeppelin.com/news/anvil-protocol-audit | AnvilVotes | unmatched — not counted | — | listed in scope | no |
| www.openzeppelin.com/news/anvil-protocol-audit | Claim | unmatched — not counted | — | listed in scope | no |
| www.openzeppelin.com/news/anvil-protocol-audit | IClaimable | unmatched — not counted | — | listed in scope | no |
| www.openzeppelin.com/news/anvil-protocol-audit | ICollateral | unmatched — not counted | — | listed in scope | no |
| www.openzeppelin.com/news/anvil-protocol-audit | ICollateralDepositTarget | unmatched — not counted | — | listed in scope | no |
| www.openzeppelin.com/news/anvil-protocol-audit | ICollateralPool | unmatched — not counted | — | listed in scope | no |
| www.openzeppelin.com/news/anvil-protocol-audit | ITimeBasedCollateralPool | unmatched — not counted | — | listed in scope | no |
| 2023-12-acronym-foundation-securityreview.pdf | Collateral | unmatched — not counted | — | listed in scope and detailed findings | no |
| 2023-12-acronym-foundation-securityreview.pdf | LetterOfCredit | own proxy deployment | TransparentUpgradeableProxy (proxy) (selected) `0x14db9a...7c4808` — deployed 2024-11-25 18:41:23+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2023-12-acronym-foundation-securityreview.pdf | Pricing | unmatched — not counted | — | referenced in findings as a library | no |
| 2023-12-acronym-foundation-securityreview.pdf | PythPriceOracle | own contract | PythPriceOracle (selected) `0xc6f340...56ee05` — deployed 2024-08-19 17:39:47+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| www.openzeppelin.com/news/anvil-audit | Collateral | unmatched — not counted | — | listed in scope | no |
| www.openzeppelin.com/news/anvil-audit | LetterOfCredit | own proxy deployment | TransparentUpgradeableProxy (proxy) (selected) `0x14db9a...7c4808` — deployed 2024-11-25 18:41:23+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| www.openzeppelin.com/news/anvil-audit | Pricing | unmatched — not counted | — | listed in scope | no |
| www.openzeppelin.com/news/anvil-audit | PythPriceOracle | own contract | PythPriceOracle (selected) `0xc6f340...56ee05` — deployed 2024-08-19 17:39:47+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| www.openzeppelin.com/news/anvil-audit | ICollateral | unmatched — not counted | — | listed in scope | no |
| www.openzeppelin.com/news/anvil-audit | ICollateralDepositTarget | unmatched — not counted | — | listed in scope | no |
| www.openzeppelin.com/news/anvil-audit | ILiquidatable | unmatched — not counted | — | listed in scope | no |
| www.openzeppelin.com/news/anvil-audit | ILiquidator | unmatched — not counted | — | listed in scope | no |
| www.openzeppelin.com/news/anvil-audit | IPriceOracle | unmatched — not counted | — | listed in scope | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | `0xfe1118...42a361` | AnvilGovernorDelegate | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x9ae1ca...1342b8` | PassThroughLiquidator | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x1f00d6...9c9e14` | TimeBasedCollateralPool | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 12 |
| upstream | 0 |
| standard_library | 1 |
| needs_review | 2 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Address-book scope dispositions: 9 own (3 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 3 ambiguous, 18 unmatched
- Matched-own operational status: 9 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=4
- Match method counts: temporal_name=2, unique_name=7

Fork inheritance lineage and inherited audits are included when available.
