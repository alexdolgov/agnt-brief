# Agentic Audit Brief: HOPR

## Export Authority

- Production state: **published scope**
- Raw selected rows: 0 across 0 audit(s)
- Eligible audit results: 2 (0 matched; 2 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `7fbef0dcf68cde7195f117d9b41f1e6d89891da495a42b57ae29b5e338972213`

## Project Overview

- Project: HOPR (`hopr`)
- Website: [https://hoprnet.org](https://hoprnet.org)
- Lifecycle: unknown
- Generated: 2026-07-15T18:00:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: chain-31337, gnosis
- Contract surface: 36 unique implementations (36 raw deployments)
- Coverage basis: 0/24 confirmed own live verified implementations (0.0%); conservative 0.0% with 0 needs-review implementation(s)
- DeFi Llama TVL: $862,408.19
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for HOPR. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 26 contract row(s) across chain-31337, gnosis. Structural roles: 18 supporting, 4 core, 4 unclassified. 1 row(s) use upgradeable patterns.

## Logic Topography

- Exact-run contract rows: 26
- Structural roles: supporting (18), core (4), unclassified (4)
- Contract kinds: contract (23), abstract (3)
- Detected standards: erc1967proxy (1), erc20 (1), ownable (1)
- Frameworks: openzeppelin (1), openzeppelin-upgradeable (1), solady (1)
- Upgradeable-pattern rows: 1

## Fork Analysis

0 of 26 contracts are derived from known codebases. 26 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0xd05760...142a08`, chain 100)
- UnnamedContract (`0xd4fdec...66a2c1`, chain 100)
- HoprAnnouncementsProxy (`0x060dbc...f4d049`, chain 100)
- HoprAnnouncementsProxy (`0x225b4b...a19a4d`, chain 100)
- HoprAnnouncementsProxy (`0xe08e8e...ab6136`, chain 100)
- HoprChannels (`0x552712...188732`, chain 100)
- HoprChannels (`0x69e63a...4d5cdf`, chain 100)
- HoprChannels (`0x81a79f...a09c57`, chain 100)
- HoprNodeManagementModule (`0x1167fb...d164b0`, chain 100)
- HoprNodeManagementModule (`0x3b008c...b31ea3`, chain 100)
- HoprNodeManagementModule (`0x5f3659...d9a595`, chain 100)
- HoprNodeSafeMigration (`0x593ea8...f7b449`, chain 100)
- HoprNodeSafeMigration (`0x74dfcd...d37e8a`, chain 100)
- HoprNodeSafeMigration (`0xb9a6f1...7eb159`, chain 100)
- HoprNodeSafeRegistry (`0x0e4e1a...ccbc76`, chain 100)
- HoprNodeSafeRegistry (`0x7b8e16...6b1b5c`, chain 100)
- HoprNodeSafeRegistry (`0x8cdf9a...d334f4`, chain 100)
- HoprNodeStakeFactory (`0x6827ec...b07687`, chain 100)
- HoprNodeStakeFactory (`0x8e9e7b...66d954`, chain 100)
- HoprNodeStakeFactory (`0xe9a9cf...e973db`, chain 100)
- HoprTicketPriceOracle (`0x147899...1f04c2`, chain 100)
- HoprTicketPriceOracle (`0x95566e...da1e42`, chain 100)
- HoprTicketPriceOracle (`0xca2c60...a0628c`, chain 100)
- HoprWinningProbabilityOracle (`0x3c5cbd...b26c7f`, chain 100)
- HoprWinningProbabilityOracle (`0x5136ba...4eafca`, chain 100)
- HoprWinningProbabilityOracle (`0x74329f...23c5e3`, chain 100)

## Contract Surface Quality

- Indexed contracts: 26; live-surface contracts included: 26 (24 live, 2 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 26/35 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 0/24 (0.0%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 26 own, 10 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 0 discovered implementations excluded (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 2
- Deployed-live implementations: 26 of 36 unique (rest dead/inactive/uninitialized)
- All verified address-book-owned implementations audited (incl. non-live): 0/24
- Verified + Unaudited implementations: 24
- Verified by bytecode match: 0
- Unverified implementations: 2
- Unique implementations: 36
- Raw deployments: 36
- Audits discovered: 2 (2 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2021-09 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 1 stale, 1 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (24)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| HoprAnnouncements | unknown | project_anchor | own_supporting | 1 | gnosis | unit-242020 | `0x225b4b...a19a4d` | ⚠️ Unaudited |
| HoprAnnouncements | unknown | project_anchor | own_supporting | 1 | gnosis | unit-242022 | `0xe08e8e...ab6136` | ⚠️ Unaudited |
| HoprAnnouncementsProxy | unknown | project_anchor | own_supporting | 0 | gnosis | unit-241986 | `0x060dbc...f4d049` | ⚠️ Unaudited |
| HoprChannels | unknown | project_anchor | own_supporting | 0 | gnosis | unit-241993 | `0x552712...188732` | ⚠️ Unaudited |
| HoprChannels | unknown | project_anchor | own_supporting | 0 | gnosis | unit-241997 | `0x69e63a...4d5cdf` | ⚠️ Unaudited |
| HoprChannels | unknown | project_anchor | own_supporting | 0 | gnosis | unit-242001 | `0x81a79f...a09c57` | ⚠️ Unaudited |
| HoprNodeManagementModule | unknown | project_anchor | own_supporting | 0 | gnosis | unit-241988 | `0x1167fb...d164b0` | ⚠️ Unaudited |
| HoprNodeManagementModule | unknown | project_anchor | own_supporting | 0 | gnosis | unit-241990 | `0x3b008c...b31ea3` | ⚠️ Unaudited |
| HoprNodeManagementModule | unknown | project_anchor | own_supporting | 0 | gnosis | unit-241995 | `0x5f3659...d9a595` | ⚠️ Unaudited |
| HoprNodeSafeMigration | operational_periphery | project_anchor | own_supporting | 0 | gnosis | unit-241994 | `0x593ea8...f7b449` | ⚠️ Unaudited |
| HoprNodeSafeMigration | operational_periphery | project_anchor | own_supporting | 0 | gnosis | unit-241999 | `0x74dfcd...d37e8a` | ⚠️ Unaudited |
| HoprNodeSafeMigration | operational_periphery | project_anchor | own_supporting | 0 | gnosis | unit-242005 | `0xb9a6f1...7eb159` | ⚠️ Unaudited |
| HoprNodeSafeRegistry | registry | project_anchor | own_supporting | 0 | gnosis | unit-241987 | `0x0e4e1a...ccbc76` | ⚠️ Unaudited |
| HoprNodeSafeRegistry | registry | project_anchor | own_supporting | 0 | gnosis | unit-242000 | `0x7b8e16...6b1b5c` | ⚠️ Unaudited |
| HoprNodeSafeRegistry | registry | project_anchor | own_supporting | 0 | gnosis | unit-242002 | `0x8cdf9a...d334f4` | ⚠️ Unaudited |
| HoprNodeStakeFactory | registry | project_anchor | own_supporting | 0 | gnosis | unit-241996 | `0x6827ec...b07687` | ⚠️ Unaudited |
| HoprNodeStakeFactory | registry | project_anchor | own_supporting | 0 | gnosis | unit-242003 | `0x8e9e7b...66d954` | ⚠️ Unaudited |
| HoprNodeStakeFactory | registry | project_anchor | own_supporting | 0 | gnosis | unit-242009 | `0xe9a9cf...e973db` | ⚠️ Unaudited |
| HoprTicketPriceOracle | operational_periphery | project_anchor | own_supporting | 0 | gnosis | unit-241989 | `0x147899...1f04c2` | ⚠️ Unaudited |
| HoprTicketPriceOracle | operational_periphery | project_anchor | own_supporting | 0 | gnosis | unit-242004 | `0x95566e...da1e42` | ⚠️ Unaudited |
| HoprTicketPriceOracle | operational_periphery | project_anchor | own_supporting | 0 | gnosis | unit-242006 | `0xca2c60...a0628c` | ⚠️ Unaudited |
| HoprWinningProbabilityOracle | operational_periphery | project_anchor | own_supporting | 0 | gnosis | unit-241991 | `0x3c5cbd...b26c7f` | ⚠️ Unaudited |
| HoprWinningProbabilityOracle | operational_periphery | project_anchor | own_supporting | 0 | gnosis | unit-241992 | `0x5136ba...4eafca` | ⚠️ Unaudited |
| HoprWinningProbabilityOracle | operational_periphery | project_anchor | own_supporting | 0 | gnosis | unit-241998 | `0x74329f...23c5e3` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (12)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | gnosis | unit-242007 | `0xd05760...142a08` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | gnosis | unit-242008 | `0xd4fdec...66a2c1` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | chain-31337 | n/a | `0x000000...000000` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | chain-31337 | unit-242010 | `0x0ecb0e...6c08bd` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | chain-31337 | unit-242011 | `0x37406b...de2049` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | chain-31337 | unit-242012 | `0x376b4a...e6b5c4` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | chain-31337 | unit-242013 | `0x42c471...72e6dd` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | chain-31337 | unit-242014 | `0x51dfbb...ffa733` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | chain-31337 | unit-242015 | `0x81c9a8...d25994` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | chain-31337 | unit-242016 | `0x8c4c79...2124c5` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | chain-31337 | unit-242017 | `0xcf4c70...3fc87d` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | chain-31337 | unit-242018 | `0xfd5c1c...f320a9` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [ChainSecurity_HOPRNet_PaymentChannel_Audit.pdf](https://reports.chainsecurity.com/HOPRNet/ChainSecurity_HOPRNet_PaymentChannel_Audit.pdf) | ChainSecurity | Audit | 2021-09 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 1 | high |
| [www.chainsecurity.com/security-audit/hopr-payment-channels](https://www.chainsecurity.com/security-audit/hopr-payment-channels) | ChainSecurity | Audit | n/a | unknown | Direct | contract_name | no match | 0 | 0 | 0 | 1 | low |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [3185] ChainSecurity_HOPRNet_PaymentChannel_Audit.pdf — no match: Only one contract in scope: HoprChannels.sol
- [11795] www.chainsecurity.com/security-audit/hopr-payment-channels — no match: Only one contract name (HoprChannels) is explicitly mentioned as being reviewed. No file paths, addresses, or audit date are provided.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| ChainSecurity_HOPRNet_PaymentChannel_Audit.pdf | HoprChannels | ambiguous — not counted | HoprChannels (alternative) `0x552712...188732` — deployed 2026-01-06 17:19:00+03 — liveness: live (current_address_book_code)<br>HoprChannels (alternative) `0x69e63a...4d5cdf` — deployed 2026-01-06 17:17:35+03 — liveness: live (current_address_book_code)<br>HoprChannels (alternative) `0x81a79f...a09c57` — deployed 2026-01-27 16:14:45+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| www.chainsecurity.com/security-audit/hopr-payment-channels | HoprChannels | ambiguous — not counted | HoprChannels (alternative) `0x552712...188732` — deployed 2026-01-06 17:19:00+03 — liveness: live (current_address_book_code)<br>HoprChannels (alternative) `0x69e63a...4d5cdf` — deployed 2026-01-06 17:17:35+03 — liveness: live (current_address_book_code)<br>HoprChannels (alternative) `0x81a79f...a09c57` — deployed 2026-01-27 16:14:45+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| gnosis | `0x225b4b...a19a4d` | HoprAnnouncements | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| gnosis | `0xe08e8e...ab6136` | HoprAnnouncements | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| gnosis | `0x060dbc...f4d049` | HoprAnnouncementsProxy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| gnosis | `0x552712...188732` | HoprChannels | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| gnosis | `0x69e63a...4d5cdf` | HoprChannels | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| gnosis | `0x81a79f...a09c57` | HoprChannels | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| gnosis | `0x1167fb...d164b0` | HoprNodeManagementModule | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| gnosis | `0x3b008c...b31ea3` | HoprNodeManagementModule | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| gnosis | `0x5f3659...d9a595` | HoprNodeManagementModule | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| gnosis | `0x593ea8...f7b449` | HoprNodeSafeMigration | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| gnosis | `0x74dfcd...d37e8a` | HoprNodeSafeMigration | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| gnosis | `0xb9a6f1...7eb159` | HoprNodeSafeMigration | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| gnosis | `0x0e4e1a...ccbc76` | HoprNodeSafeRegistry | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| gnosis | `0x7b8e16...6b1b5c` | HoprNodeSafeRegistry | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| gnosis | `0x8cdf9a...d334f4` | HoprNodeSafeRegistry | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| gnosis | `0x6827ec...b07687` | HoprNodeStakeFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| gnosis | `0x8e9e7b...66d954` | HoprNodeStakeFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| gnosis | `0xe9a9cf...e973db` | HoprNodeStakeFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| gnosis | `0x147899...1f04c2` | HoprTicketPriceOracle | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| gnosis | `0x95566e...da1e42` | HoprTicketPriceOracle | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| gnosis | `0xca2c60...a0628c` | HoprTicketPriceOracle | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| gnosis | `0x3c5cbd...b26c7f` | HoprWinningProbabilityOracle | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| gnosis | `0x5136ba...4eafca` | HoprWinningProbabilityOracle | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| gnosis | `0x74329f...23c5e3` | HoprWinningProbabilityOracle | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 24 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 12 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 2
- Inherited remapped matches: 0
- Address-book scope dispositions: 0 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 2 ambiguous, 0 unmatched
- Matched-own operational status: 0 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=1, low=1
- Match method counts: n/a

Zero-match audit list:

- [3185] ChainSecurity_HOPRNet_PaymentChannel_Audit.pdf
- [11795] www.chainsecurity.com/security-audit/hopr-payment-channels

Fork inheritance lineage and inherited audits are included when available.
