# Agentic Audit Brief: Theo

## Export Authority

- Production state: **published scope**
- Raw selected rows: 4 across 2 audit(s)
- Eligible audit results: 6 (2 matched; 4 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e9e09d06b414f9cd852c36a58d42ce16279465f2d9791cd2a8178f3f54b89ecd`

## Project Overview

- Project: Theo (`theo`)
- Website: [https://theo.xyz/](https://theo.xyz/)
- Lifecycle: unknown
- Generated: 2026-07-15T18:30:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: arbitrum, base, bsc, ethereum, hyperliquid, linea, mantle
- Contract surface: 46 unique implementations (46 raw deployments)
- Coverage basis: 2/18 confirmed own live verified implementations (11.1%); conservative 11.1% with 0 needs-review implementation(s)
- DeFi Llama TVL: $95,982,429.00
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for Theo. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 18 contract row(s) across arbitrum, base, bsc, ethereum, hyperliquid, mantle. Structural roles: 15 core, 2 supporting, 1 infra. 6 row(s) use upgradeable patterns.

## Logic Topography

- Exact-run contract rows: 18
- Structural roles: core (15), supporting (2), infra (1)
- Contract kinds: contract (17), abstract (1)
- Detected standards: ownable (12), erc20 (9), pausable (4), accesscontrol (3), erc165 (3), erc1967proxy (3), erc20permit (3)
- Frameworks: openzeppelin (13), layerzero (12), openzeppelin-upgradeable (5)
- Upgradeable-pattern rows: 6

## Fork Analysis

0 of 18 contracts are derived from known codebases. 18 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- sthUSD (`0xa808bc...770326`, chain 1)
- sthUSD OFT (`0xd1db20...32d540`, chain 56)
- sthUSD OFT (`0xd1db20...32d540`, chain 5000)
- sthUSD OFT (`0xd1db20...32d540`, chain 42161)
- sthUSD OFT Adapter (`0xd1db20...32d540`, chain 1)
- thBILL (`0x5fa487...91da0b`, chain 1)
- thBILL OFT (`0xfdd22c...f55a5a`, chain 8453)
- thBILL OFT (`0xfdd22c...f55a5a`, chain 42161)
- ThBillOFT (`0xfdd22c...f55a5a`, chain 999)
- ThBillOFTAdapter (`0xfdd22c...f55a5a`, chain 1)
- thUSD (`0xa3fe5c...e485b3`, chain 1)
- thUSD Minter (`0x2d99ac...e8696e`, chain 1)
- thUSD OFT (`0x9aa9aa...14b065`, chain 56)
- thUSD OFT (`0x9aa9aa...14b065`, chain 5000)
- ThUSDOFT (`0x9aa9aa...14b065`, chain 42161)
- ThUSDOFTAdapter (`0x9aa9aa...14b065`, chain 1)
- TimelockController (`0x46a9ca...ef8bc2`, chain 1)
- TTokenRouterV2 (`0x8a2c30...505eb1`, chain 1)

## Contract Surface Quality

- Logic-topography rows: 18; live-surface rows included: 18 (18 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 18/20 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 2/18 (11.1%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 18 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 28 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 4 standard proxy/library)
- Proxy deployments represented within implementation groups: 8
- Confirmed-live implementations: 18 of 46 unique; 28 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 2/46
- Verified + Unaudited implementations: 44
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 46
- Raw deployments: 46
- Audits discovered: 6 (6 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 2
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2026-04 (fresh)
- Audit staleness (calendar age): 5 fresh, 1 aging, 0 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 2 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| Zellic | Tier 2 | 2 | 4.3% | 2026-04 |

## Contract Surface

### ✅ Verified + Audited (2)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| sthUSD | unknown | project_anchor | own_supporting | 0 | ethereum | unit-266759 | `0xa808bc...770326` | ✅ Audited |
| thUSD | unknown | project_anchor | own_supporting | 0 | ethereum | unit-266758 | `0xa3fe5c...e485b3` | ✅ Audited |

### ⚠️ Verified + Unaudited (44)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| Delta | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x060d85...6d0e9c` | ⚠️ Unaudited |
| DeltaManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x145420...f3e859` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x9e31aa...5301dc` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0xa6ab7b...6cb25f` | ⚠️ Unaudited |
| InitializableImmutableAdminUpgradeabilityProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x98c23e...e16f5c` | ⚠️ Unaudited |
| IToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x325478...9ba519` | ⚠️ Unaudited |
| KYC | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x39ade9...8ce028` | ⚠️ Unaudited |
| KYCUltra | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x17b7bf...fa11f2` | ⚠️ Unaudited |
| MintCoordinator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8a095d...85f1eb` | ⚠️ Unaudited |
| PredepositClaim | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x10456b...996650` | ⚠️ Unaudited |
| SafeProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x948776...601295` | ⚠️ Unaudited |
| SthUSD | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x342487...5a7dc3` | ⚠️ Unaudited |
| sthUSD OFT | unknown | project_anchor | own_supporting | 0 | bsc | unit-266777 | `0xd1db20...32d540` | ⚠️ Unaudited |
| sthUSD OFT | unknown | project_anchor | own_supporting | 0 | mantle | unit-266772 | `0xd1db20...32d540` | ⚠️ Unaudited |
| sthUSD OFT | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-266764 | `0xd1db20...32d540` | ⚠️ Unaudited |
| sthUSD OFT Adapter | unknown | project_anchor | own_supporting | 0 | ethereum | unit-266760 | `0xd1db20...32d540` | ⚠️ Unaudited |
| SthUSDRewards | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4775a4...c4c9e8` | ⚠️ Unaudited |
| StUSD | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x1bd515...8d8628` | ⚠️ Unaudited |
| thBILL | unknown | project_anchor | own_supporting | 0 | ethereum | unit-266755 | `0x5fa487...91da0b` | ⚠️ Unaudited |
| thBILL OFT | unknown | project_anchor | own_supporting | 0 | base | unit-266779 | `0xfdd22c...f55a5a` | ⚠️ Unaudited |
| thBILL OFT | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-266768 | `0xfdd22c...f55a5a` | ⚠️ Unaudited |
| ThBillHyperliquidComposer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | `0xabb13a...cc3923` | ⚠️ Unaudited |
| ThBillOFT | unknown | project_anchor | own_supporting | 0 | hyperliquid | unit-266780 | `0xfdd22c...f55a5a` | ⚠️ Unaudited |
| ThBillOFTAdapter | unknown | project_anchor | own_supporting | 0 | ethereum | unit-266762 | `0xfdd22c...f55a5a` | ⚠️ Unaudited |
| TheoTUltraOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2fb6f0...42f9ce` | ⚠️ Unaudited |
| TheoWhitelist | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x14d38a...11f388` | ⚠️ Unaudited |
| ThUSD | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x2332e0...359e2c` | ⚠️ Unaudited |
| thUSD Minter | unknown | project_anchor | own_supporting | 0 | ethereum | unit-266753 | `0x2d99ac...e8696e` | ⚠️ Unaudited |
| thUSD OFT | unknown | project_anchor | own_supporting | 0 | bsc | unit-266774 | `0x9aa9aa...14b065` | ⚠️ Unaudited |
| thUSD OFT | unknown | project_anchor | own_supporting | 0 | mantle | unit-266770 | `0x9aa9aa...14b065` | ⚠️ Unaudited |
| ThUSDMinter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2c2347...972f64` | ⚠️ Unaudited |
| ThUSDOFT | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-266763 | `0x9aa9aa...14b065` | ⚠️ Unaudited |
| ThUSDOFTAdapter | unknown | project_anchor | own_supporting | 0 | ethereum | unit-266757 | `0x9aa9aa...14b065` | ⚠️ Unaudited |
| TimelockController | unknown | project_anchor | own_supporting | 0 | ethereum | unit-266754 | `0x46a9ca...ef8bc2` | ⚠️ Unaudited |
| TTokenRouter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x11ae0d...7b9076` | ⚠️ Unaudited |
| TTokenRouterV2 | unknown | project_anchor | own_supporting | 0 | ethereum | unit-266756 | `0x8a2c30...505eb1` | ⚠️ Unaudited |
| TTokenRouterV3 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9e7a82...2df621` | ⚠️ Unaudited |
| TTokenV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa6844c...d8f083` | ⚠️ Unaudited |
| TTokenV3 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x1aa000...a0fdda` | ⚠️ Unaudited |
| TULTRAV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x985b60...ea1b54` | ⚠️ Unaudited |
| TULTRAV3 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4d0fce...3e5248` | ⚠️ Unaudited |
| Ultra | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x145420...f3e859` | ⚠️ Unaudited |
| UltraManager | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x0f37ee...ab5ac6` | ⚠️ Unaudited |
| UltraManagerFiat | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x060d85...6d0e9c` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (0)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

- None

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [ThUSD - Zellic Audit Report.pdf](https://github.com/Zellic/publications/blob/master/ThUSD%20-%20Zellic%20Audit%20Report.pdf) | Zellic | Audit | 2026-04 | fresh | Direct | contract_name | matched | 2 | 0 | 0 | 2 | high |
| [Theo Tokenized Staking Vault - Zenith Audit Report.pdf](https://github.com/zenith-security/reports/blob/main/reports/Theo%20Tokenized%20Staking%20Vault%20-%20Zenith%20Audit%20Report.pdf) | Zenith | Audit | 2026-03 | fresh | Direct | contract_name | no match | 0 | 0 | 0 | 1 | high |
| [Theo-security-review_2026-03-19.pdf](https://github.com/pashov/audits/blob/master/team/pdf/Theo-security-review_2026-03-19.pdf) | Pashov Audit Group | Audit | 2026-03 | fresh | Direct | contract_name | no match | 0 | 0 | 0 | 1 | high |
| [Theo - Zenith Audit Report.pdf](https://github.com/zenith-security/reports/blob/main/reports/Theo%20-%20Zenith%20Audit%20Report.pdf) | Zenith | Audit | 2025-07 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 7 | high |
| [spaces/C2o2dJlijOInJR8UAhrX/uploads/p1lutmFVHrdK8qIa7Cwu/ThUSD - Zellic Audit Report.pdf](https://1433280965-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FC2o2dJlijOInJR8UAhrX%2Fuploads%2Fp1lutmFVHrdK8qIa7Cwu%2FThUSD%20-%20Zellic%20Audit%20Report.pdf) | Zellic | Audit | 2026-04 | fresh | Direct | contract_name | matched | 2 | 0 | 0 | 2 | high |
| [Theo-security-review_2026-03-19.md](https://github.com/pashov/audits/blob/master/team/md/Theo-security-review_2026-03-19.md) | Pashov Audit Group | Audit | 2026-03 | fresh | Direct | contract_name | no match | 0 | 0 | 0 | 1 | high |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [21185] ThUSD - Zellic Audit Report.pdf — matched: Scope section clearly lists four Solidity files: ThUSD.sol, ThUSDMinter.sol, SthUSD.sol, SthUSDRewards.sol. Audit date is April 16, 2026 from cover page.
- [21186] Theo Tokenized Staking Vault - Zenith Audit Report.pdf — no match: Only one contract (StUSD) is in scope. Audit dates: April 3-6, 2026; report published April 8, 2026. Using end date of audit.
- [21187] Theo-security-review_2026-03-19.pdf — no match: Only one contract, ThUSDMinter.sol, is explicitly listed in the scope section. No other contracts or files are mentioned as in scope.
- [21188] Theo - Zenith Audit Report.pdf — no match: Scope section lists files: vaults/*, BaseUpgradeable.sol, TheoWhitelist.sol, IToken.sol, TToken.sol, TTokenEscrow.sol, TTokenRouter.sol. ERC4626UpgradeableMultiAsset is also a target in findings. Audit date from report published date: July 22, 2025.
- [21189] spaces/C2o2dJlijOInJR8UAhrX/uploads/p1lutmFVHrdK8qIa7Cwu/ThUSD - Zellic Audit Report.pdf — matched: Scope section clearly lists four Solidity files: ThUSD.sol, ThUSDMinter.sol, SthUSD.sol, SthUSDRewards.sol. Audit date is April 16, 2026 from cover page.
- [21190] Theo-security-review_2026-03-19.md — no match: Only one contract in scope: ThUSDMinter.sol. No audit date found in the provided text.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| ThUSD - Zellic Audit Report.pdf | ThUSD | own contract | thUSD (selected) `0xa3fe5c...e485b3` — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| ThUSD - Zellic Audit Report.pdf | SthUSD | own contract | sthUSD (selected) `0xa808bc...770326` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| ThUSD - Zellic Audit Report.pdf | SthUSDRewards | unmatched — not counted | — | listed in scope table | no |
| ThUSD - Zellic Audit Report.pdf | ThUSDMinter | unmatched — not counted | — | listed in scope table | no |
| Theo Tokenized Staking Vault - Zenith Audit Report.pdf | StUSD | unmatched — not counted | — | listed in scope section | no |
| Theo-security-review_2026-03-19.pdf | ThUSDMinter | unmatched — not counted | — | listed in scope section | no |
| Theo - Zenith Audit Report.pdf | BaseUpgradeable | unmatched — not counted | — | listed in scope | no |
| Theo - Zenith Audit Report.pdf | TheoWhitelist | unmatched — not counted | — | listed in scope | no |
| Theo - Zenith Audit Report.pdf | IToken | unmatched — not counted | — | listed in scope | no |
| Theo - Zenith Audit Report.pdf | TToken | unmatched — not counted | — | listed in scope | no |
| Theo - Zenith Audit Report.pdf | TTokenEscrow | unmatched — not counted | — | listed in scope | no |
| Theo - Zenith Audit Report.pdf | TTokenRouter | unmatched — not counted | — | listed in scope | no |
| Theo - Zenith Audit Report.pdf | ERC4626UpgradeableMultiAsset | unmatched — not counted | — | mentioned in findings as target | no |
| spaces/C2o2dJlijOInJR8UAhrX/uploads/p1lutmFVHrdK8qIa7Cwu/ThUSD - Zellic Audit Report.pdf | ThUSD.sol | own contract | thUSD (selected) `0xa3fe5c...e485b3` — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| spaces/C2o2dJlijOInJR8UAhrX/uploads/p1lutmFVHrdK8qIa7Cwu/ThUSD - Zellic Audit Report.pdf | ThUSDMinter.sol | unmatched — not counted | — | listed in scope table | no |
| spaces/C2o2dJlijOInJR8UAhrX/uploads/p1lutmFVHrdK8qIa7Cwu/ThUSD - Zellic Audit Report.pdf | SthUSD.sol | own contract | sthUSD (selected) `0xa808bc...770326` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| spaces/C2o2dJlijOInJR8UAhrX/uploads/p1lutmFVHrdK8qIa7Cwu/ThUSD - Zellic Audit Report.pdf | SthUSDRewards.sol | unmatched — not counted | — | listed in scope table | no |
| Theo-security-review_2026-03-19.md | ThUSDMinter | unmatched — not counted | — | listed in scope | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| hyperliquid | `0xfdd22c...f55a5a` | ThBillOFT | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xfdd22c...f55a5a` | ThBillOFTAdapter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0x9aa9aa...14b065` | ThUSDOFT | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x9aa9aa...14b065` | ThUSDOFTAdapter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x8a2c30...505eb1` | TTokenRouterV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 29 |
| upstream | 0 |
| standard_library | 5 |
| needs_review | 12 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 4
- Inherited remapped matches: 0
- Address-book scope dispositions: 4 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 14 unmatched
- Matched-own operational status: 4 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=6
- Match method counts: unique_name=4

Zero-match audit list:

- [21186] Theo Tokenized Staking Vault - Zenith Audit Report.pdf
- [21187] Theo-security-review_2026-03-19.pdf
- [21188] Theo - Zenith Audit Report.pdf
- [21190] Theo-security-review_2026-03-19.md

Fork inheritance lineage and inherited audits are included when available.
