# Agentic Audit Brief: Unicly

## Export Authority

- Production state: **published scope**
- Raw selected rows: 1 across 1 audit(s)
- Eligible audit results: 1 (1 matched; 0 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e9e09d06b414f9cd852c36a58d42ce16279465f2d9791cd2a8178f3f54b89ecd`

## Project Overview

- Project: Unicly (`unicly`)
- Website: [https://www.unic.ly/](https://www.unic.ly/)
- Lifecycle: unknown
- Generated: 2026-07-15T18:30:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: ethereum
- Contract surface: 56 unique implementations (80 raw deployments)
- Coverage basis: 1/1 confirmed own live verified implementations (100.0%); conservative 100.0% with 0 needs-review implementation(s)
- DeFi Llama TVL: $352,634.03
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## ⚠️ Limited Contract Surface

This brief covers only 1 contract implementation(s). The pipeline may not have discovered all deployed contracts for this project.
Coverage assessment and audit matching are based on this incomplete surface.

## Project Description

This brief describes the observed EVM deployment and audit surface for Unicly. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 1 contract row(s) across ethereum. Structural roles: 1 core. No upgradeable pattern was identified in these rows.

## Logic Topography

- Exact-run contract rows: 1
- Structural roles: core (1)
- Contract kinds: contract (1)
- Detected standards: erc20 (1), ownable (1)
- Frameworks: openzeppelin (1)
- Upgradeable-pattern rows: 0

## Fork Analysis

0 of 1 contracts are derived from known codebases. 1 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- Unic (`0x94e0ba...513ad5`, chain 1)

## Contract Surface Quality

- Logic-topography rows: 1; live-surface rows included: 1 (1 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 1/1 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 1/1 (100.0%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 1 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 55 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 2
- Confirmed-live implementations: 1 of 56 unique; 55 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 1/40
- Verified + Unaudited implementations: 39
- Verified by bytecode match: 0
- Unverified implementations: 16
- Unique implementations: 56
- Raw deployments: 80
- Audits discovered: 1 (1 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 1
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2021-03 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 1 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 1 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| yAudit | Tier 2 | 1 | 2.5% | 2021-03 |

## Contract Surface

### ✅ Verified + Audited (1)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| Unic | unknown | project_anchor | own_supporting | 0 | ethereum | unit-395244 | `0x94e0ba...513ad5` | ✅ Audited |

### ⚠️ Verified + Unaudited (39)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| Address | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x30b75f...5d5d9b` | ⚠️ Unaudited |
| AdvancedStakingResolver | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9d53f0...28c05c` | ⚠️ Unaudited |
| AdvStakingProxyFarmer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2e30b5...664031` | ⚠️ Unaudited |
| AuctionHandler | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd91ee9...c7c84b` | ⚠️ Unaudited |
| ConverterGovernorAlphaConfig | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9baf76...bee4ea` | ⚠️ Unaudited |
| GovernorAlpha | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x8bf26a...768d2d`; ethereum `0xb86b0d...f19c12` | ⚠️ Unaudited |
| KittyWrapper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4e1f28...19681d` | ⚠️ Unaudited |
| LockedLP | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x394721...af341e`; ethereum `0xfe0e8c...57c3e9` | ⚠️ Unaudited |
| MockERC20 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 4 deployments: ethereum `0x0ae6ab...5f5662`; ethereum `0x2ff764...939b5a`; ethereum `0x3a76a5...8b5437`; ethereum `0xf324c6...8c7ef5` | ⚠️ Unaudited |
| PointFarm | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0xa87b98...0907af`; ethereum `0xd3c41c...00ee67` | ⚠️ Unaudited |
| PointShop | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x01c4ef...d569cb`; ethereum `0xcdcc53...5008f6` | ⚠️ Unaudited |
| ProxyAdmin | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6e5cdf...9b69e7` | ⚠️ Unaudited |
| ProxyCreator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa63973...9ef177` | ⚠️ Unaudited |
| ProxyFarmer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x1f2f77...34d1c8`; ethereum `0xcfcec7...448dd2` | ⚠️ Unaudited |
| ProxyToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x900e58...2e477e` | ⚠️ Unaudited |
| RewardXUnicPeriodically | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0xd99fce...7d0e0b`; ethereum `0xf6e1f0...735be7` | ⚠️ Unaudited |
| Timelock | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x1e3497...ff5ee4`; ethereum `0xf33079...4bc889` | ⚠️ Unaudited |
| Unic | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x719c3a...107755` | ⚠️ Unaudited |
| UnicConverterGovernorAlphaFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9b071f...f608d6` | ⚠️ Unaudited |
| UnicConverterProxyTransactionFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf904ea...3125ee` | ⚠️ Unaudited |
| UnicFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x4e3023...c89b28`; ethereum `0x8696bd...e0c007` | ⚠️ Unaudited |
| UnicFarm | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x2bf120...0bc6e3`; ethereum `0x4a25e4...6ee818` | ⚠️ Unaudited |
| UnicGallery | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x79161d...f8207e`; ethereum `0xa62fb0...db919a` | ⚠️ Unaudited |
| UniclyXUnicVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x07306a...4389d0` | ⚠️ Unaudited |
| UnicPumper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 4 deployments: ethereum `0x9c042f...5dba67`; ethereum `0x9e5b1f...69ca85`; ethereum `0xc763dc...2afa94`; ethereum `0xfce761...269dd2` | ⚠️ Unaudited |
| UnicStaking | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x1ebb6f...b47b6b`; ethereum `0x49c9e2...4f52a5` | ⚠️ Unaudited |
| UnicStakingERC721 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 4 deployments: ethereum `0x2ce18c...7b1816`; ethereum `0x9cddda...e713ec`; ethereum `0xc750ef...9e04c5`; ethereum `0xcfd846...9e4b61` | ⚠️ Unaudited |
| UnicStakingRewardManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0xc6c410...60d772`; ethereum `0xebe04c...944699` | ⚠️ Unaudited |
| UnicStakingRewardManagerV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x7df41a...7c5469`; ethereum `0x94249d...f80b60` | ⚠️ Unaudited |
| UnicStakingV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0xafd8df...0c2409`; ethereum `0xbebe15...c1cab4` | ⚠️ Unaudited |
| UnicStakingV3 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf7082b...6f7aee` | ⚠️ Unaudited |
| UnicStakingV4 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb33afb...4cf7e0` | ⚠️ Unaudited |
| UnicStakingV5 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x743896...99afd3` | ⚠️ Unaudited |
| UnicStakingV6 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0xdf7b2d...fba56d`; ethereum `0xe29ae1...1e3e2c` | ⚠️ Unaudited |
| UnicStakingVotes | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4788ef...8af729` | ⚠️ Unaudited |
| UnicSwapV2Factory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbacc77...153377` | ⚠️ Unaudited |
| UnicSwapV2Router02 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe6e90b...6b135a` | ⚠️ Unaudited |
| UnicVester | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf3fe06...2e2aa7` | ⚠️ Unaudited |
| Zap | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3fe1be...c915cf` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (16)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x21ce52...467d1b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x22e8b7...cf7851` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2499d1...c43721` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2e8166...1c8f0b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3547b2...850d50` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4b967c...79fe6c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x68187a...697aec` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7bbccf...f774fd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7f3372...6d9a08` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb945dc...9ea499` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcae5bf...5b16fe` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xce924a...2d3164` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcecf73...42aeec` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe111b7...3c07b9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe82f70...1f81c7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf06d5a...000c1e` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [Unicly Security Audit.pdf](https://github.com/uniclyNFT/Resources/blob/main/Unicly%20Security%20Audit.pdf) | yAudit | Audit | 2021-03 | stale | Direct | contract_name | matched | 1 | 0 | 0 | 7 | high |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [14052] Unicly Security Audit.pdf — matched: Contracts explicitly listed in executive summary and contract files section.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| Unicly Security Audit.pdf | Converter | unmatched — not counted | — | listed in scope | no |
| Unicly Security Audit.pdf | GovernorAlpha | unmatched — not counted | — | listed in scope | no |
| Unicly Security Audit.pdf | TimeLock | unmatched — not counted | — | listed in scope | no |
| Unicly Security Audit.pdf | Unic | own contract | Unic (selected) `0x94e0ba...513ad5` — deployed 2021-05-15 02:41:50+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Unicly Security Audit.pdf | UnicFactory | unmatched — not counted | — | listed in scope | no |
| Unicly Security Audit.pdf | UnicFarm | unmatched — not counted | — | listed in scope | no |
| Unicly Security Audit.pdf | UnicGallery | unmatched — not counted | — | listed in scope | no |
| Unicly Security Audit.pdf | UnicPumper | unmatched — not counted | — | listed in scope | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 39 |
| upstream | 0 |
| standard_library | 1 |
| needs_review | 16 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Address-book scope dispositions: 1 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 7 unmatched
- Matched-own operational status: 1 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=1
- Match method counts: unique_name=1

Fork inheritance lineage and inherited audits are included when available.
