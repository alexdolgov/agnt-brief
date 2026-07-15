# Agentic Audit Brief: Zoth

## Export Authority

- Production state: **published scope**
- Raw selected rows: 1 across 1 audit(s)
- Eligible audit results: 5 (1 matched; 4 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `7fbef0dcf68cde7195f117d9b41f1e6d89891da495a42b57ae29b5e338972213`

## Project Overview

- Project: Zoth (`zoth`)
- Website: [https://zoth.io](https://zoth.io)
- Lifecycle: unknown
- Generated: 2026-07-15T18:00:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: avalanche, ethereum, metis
- Contract surface: 28 unique implementations (28 raw deployments)
- Coverage basis: 1/8 confirmed own live verified implementations (12.5%); conservative 12.5% with 0 needs-review implementation(s)
- DeFi Llama TVL: $2,197,730.00
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for Zoth. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 18 contract row(s) across avalanche, ethereum, metis. Structural roles: 11 unclassified, 4 infra, 3 core. 7 row(s) use upgradeable patterns.

## Logic Topography

- Exact-run contract rows: 18
- Structural roles: unclassified (11), infra (4), core (3)
- Contract kinds: contract (18)
- Detected standards: erc1967proxy (5), erc165 (1), erc721 (1)
- Frameworks: openzeppelin (7), openzeppelin-upgradeable (7)
- Upgradeable-pattern rows: 7

## Fork Analysis

0 of 24 contracts are derived from known codebases. 24 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0x2243c2...cdefff`, chain 1)
- UnnamedContract (`0x2ed553...1ca1dc`, chain 1)
- UnnamedContract (`0x385470...21290b`, chain 1)
- UnnamedContract (`0x5dafc0...fe2b16`, chain 1)
- UnnamedContract (`0x5ec969...32dafa`, chain 1)
- UnnamedContract (`0x6283f7...117c9b`, chain 1)
- UnnamedContract (`0x7dc974...8ea761`, chain 1)
- UnnamedContract (`0x7f0cb6...6ecfe5`, chain 1)
- UnnamedContract (`0x800bae...b5aca8`, chain 1)
- UnnamedContract (`0x82f3a0...93e43e`, chain 1)
- UnnamedContract (`0x971650...941aac`, chain 1)
- UnnamedContract (`0xadb41a...f671f7`, chain 1)
- UnnamedContract (`0xbf1060...060978`, chain 1)
- UnnamedContract (`0xd7cbaa...e38056`, chain 1)
- UnnamedContract (`0xe81250...d61a22`, chain 1)
- UnnamedContract (`0xfed3d6...35864b`, chain 1)
- UnnamedContract (`0x2d3d1a...e27a77`, chain 1088)
- ERC1967Proxyy (`0x061a58...011d95`, chain 1)
- ERC1967Proxyy (`0x255f6b...0d25a6`, chain 1)
- ERC1967Proxyy (`0x400b18...454803`, chain 1)
- ERC1967Proxyy (`0x4fb32d...4008b8`, chain 1)
- ERC1967Proxyy (`0x675d73...902a18`, chain 1)
- ERC1967Proxyy (`0x70072c...31d36d`, chain 1)
- ERC1967Proxyy (`0xc59f3b...5f34ec`, chain 1)

## Contract Surface Quality

- Indexed contracts: 18; live-surface contracts included: 18 (8 live, 10 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 25/26 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 1/8 (12.5%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 25 own, 1 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 2 discovered implementations excluded (1 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 10
- Deployed-live implementations: 25 of 28 unique (rest dead/inactive/uninitialized)
- All verified address-book-owned implementations audited (incl. non-live): 1/8
- Verified + Unaudited implementations: 7
- Verified by bytecode match: 0
- Unverified implementations: 17
- Unique implementations: 28
- Raw deployments: 28
- Audits discovered: 5 (5 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 1
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2026-03 (fresh)
- Audit staleness (calendar age): 3 fresh, 2 aging, 0 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 1 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| SolidityScan | Tier 2 | 1 | 12.5% | 2025-01 |

## Contract Surface

### ✅ Verified + Audited (1)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| ZeUSD | unknown | project_anchor | own_supporting | 1 | ethereum | unit-264005 | `0xb16eb1...389809` | ✅ Audited |

### ⚠️ Verified + Unaudited (8)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| AccessManager | unknown | project_anchor | own_supporting | 1 | ethereum | unit-264002 | `0xc59f3b...5f34ec` | ⚠️ Unaudited |
| PriceOracle | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 1 | ethereum | unit-263997 | `0xdd5f64...15c17f` | ⚠️ Unaudited |
| Registry | unknown | project_anchor | own_supporting | 1 | ethereum | unit-264003 | `0x675d73...902a18` | ⚠️ Unaudited |
| USYCVault | unknown | project_anchor | own_supporting | 1 | ethereum | unit-264000 | `0x255f6b...0d25a6` | ⚠️ Unaudited |
| VaultRegistry | unknown | project_anchor | own_supporting | 1 | ethereum | unit-263999 | `0x70072c...31d36d` | ⚠️ Unaudited |
| WithdrawalSystem | unknown | project_anchor | own_supporting | 1 | ethereum | unit-264004 | `0x4fb32d...4008b8` | ⚠️ Unaudited |
| ZeUSD_CDP | unknown | project_anchor | own_supporting | 1 | ethereum | unit-263998 | `0x400b18...454803` | ⚠️ Unaudited |
| ZeUSDRouterV2 | unknown | project_anchor | own_supporting | 1 | ethereum | unit-264001 | `0x061a58...011d95` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (19)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| Proxy (impl: 0x6f4d7192e66feacf6e3f65cfeae3f69c49ef9b03) | proxy | non_address_book | non_address_book_inventory (excluded) | 1 | avalanche | n/a | `0x7dc974...8ea761` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-263980 | `0x2243c2...cdefff` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2d3d1a...e27a77` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-263981 | `0x2ed553...1ca1dc` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-263982 | `0x385470...21290b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-263983 | `0x5dafc0...fe2b16` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-263984 | `0x5ec969...32dafa` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-263985 | `0x6283f7...117c9b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-263986 | `0x7dc974...8ea761` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-263987 | `0x7f0cb6...6ecfe5` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-263988 | `0x800bae...b5aca8` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-263989 | `0x82f3a0...93e43e` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-263990 | `0x971650...941aac` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-263991 | `0xadb41a...f671f7` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-263992 | `0xbf1060...060978` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-263993 | `0xd7cbaa...e38056` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-263994 | `0xe81250...d61a22` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-263995 | `0xfed3d6...35864b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | metis | unit-263996 | `0x2d3d1a...e27a77` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [spaces/mMWQLQN0GHKRXP2us07C/uploads/8csMoFUI4T4MyCctrCfQ/Hacken Zeusd Contracts Dec2024.pdf](https://3583014216-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FmMWQLQN0GHKRXP2us07C%2Fuploads%2F8csMoFUI4T4MyCctrCfQ%2FHacken%20Zeusd%20Contracts%20Dec2024.pdf) | Hacken | Audit | 2025-01 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 11 | high |
| [spaces/mMWQLQN0GHKRXP2us07C/uploads/CIkyRzhjzbJxAdhVDwfV/SolidityScan ZeUSD Contracts Dec2024.pdf](https://3583014216-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FmMWQLQN0GHKRXP2us07C%2Fuploads%2FCIkyRzhjzbJxAdhVDwfV%2FSolidityScan%20ZeUSD%20Contracts%20Dec2024.pdf) | SolidityScan | Audit | 2025-01 | aging | Direct | n/a | matched | 1 | 1 | 0 | 4 | n/a |
| [ENTERSOFT.pdf](https://github.com/0xZothio/zVault/blob/dev/audits/ENTERSOFT.pdf) | ENTERSOFT | Audit | 2026-02 | fresh | Direct | n/a | no match | 0 | 0 | 0 | 30 | n/a |
| [CLAUDE.pdf](https://github.com/0xZothio/zVault/blob/dev/audits/CLAUDE.pdf) | Claude | Audit | 2026-03 | fresh | Direct | n/a | no match | 0 | 0 | 0 | 30 | n/a |
| [EVMBENCH.pdf](https://github.com/0xZothio/zVault/blob/dev/audits/EVMBENCH.pdf) | EVM Bench | Audit | 2026-03 | fresh | Direct | n/a | no match | 0 | 0 | 0 | 30 | n/a |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [2868] spaces/mMWQLQN0GHKRXP2us07C/uploads/8csMoFUI4T4MyCctrCfQ/Hacken Zeusd Contracts Dec2024.pdf — no match: Scope section explicitly lists 11 smart contracts from the repository. Audit date is 02/01/2025 (January 2, 2025).
- [2869] spaces/mMWQLQN0GHKRXP2us07C/uploads/CIkyRzhjzbJxAdhVDwfV/SolidityScan ZeUSD Contracts Dec2024.pdf — matched: No reason recorded
- [2870] ENTERSOFT.pdf — no match: No reason recorded
- [2871] CLAUDE.pdf — no match: No reason recorded
- [2872] EVMBENCH.pdf — no match: No reason recorded

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| spaces/mMWQLQN0GHKRXP2us07C/uploads/8csMoFUI4T4MyCctrCfQ/Hacken Zeusd Contracts Dec2024.pdf | CollateralVault | unmatched — not counted | — | listed in scope | no |
| spaces/mMWQLQN0GHKRXP2us07C/uploads/8csMoFUI4T4MyCctrCfQ/Hacken Zeusd Contracts Dec2024.pdf | ICollateralVault | unmatched — not counted | — | listed in scope | no |
| spaces/mMWQLQN0GHKRXP2us07C/uploads/8csMoFUI4T4MyCctrCfQ/Hacken Zeusd Contracts Dec2024.pdf | IFundVaultV2 | unmatched — not counted | — | listed in scope | no |
| spaces/mMWQLQN0GHKRXP2us07C/uploads/8csMoFUI4T4MyCctrCfQ/Hacken Zeusd Contracts Dec2024.pdf | IPriceOracle | unmatched — not counted | — | listed in scope | no |
| spaces/mMWQLQN0GHKRXP2us07C/uploads/8csMoFUI4T4MyCctrCfQ/Hacken Zeusd Contracts Dec2024.pdf | ISubVault | unmatched — not counted | — | listed in scope | no |
| spaces/mMWQLQN0GHKRXP2us07C/uploads/8csMoFUI4T4MyCctrCfQ/Hacken Zeusd Contracts Dec2024.pdf | IZeUSD | unmatched — not counted | — | listed in scope | no |
| spaces/mMWQLQN0GHKRXP2us07C/uploads/8csMoFUI4T4MyCctrCfQ/Hacken Zeusd Contracts Dec2024.pdf | IZeUSDOFT | unmatched — not counted | — | listed in scope | no |
| spaces/mMWQLQN0GHKRXP2us07C/uploads/8csMoFUI4T4MyCctrCfQ/Hacken Zeusd Contracts Dec2024.pdf | IZeUSDRouter | unmatched — not counted | — | listed in scope | no |
| spaces/mMWQLQN0GHKRXP2us07C/uploads/8csMoFUI4T4MyCctrCfQ/Hacken Zeusd Contracts Dec2024.pdf | DataTypes | unmatched — not counted | — | listed in scope | no |
| spaces/mMWQLQN0GHKRXP2us07C/uploads/8csMoFUI4T4MyCctrCfQ/Hacken Zeusd Contracts Dec2024.pdf | USD0PPSubVault | unmatched — not counted | — | listed in scope | no |
| spaces/mMWQLQN0GHKRXP2us07C/uploads/8csMoFUI4T4MyCctrCfQ/Hacken Zeusd Contracts Dec2024.pdf | ZeUSD_Router | unmatched — not counted | — | listed in scope | no |
| spaces/mMWQLQN0GHKRXP2us07C/uploads/CIkyRzhjzbJxAdhVDwfV/SolidityScan ZeUSD Contracts Dec2024.pdf | LZAdapter | unmatched — not counted | — | — | no |
| spaces/mMWQLQN0GHKRXP2us07C/uploads/CIkyRzhjzbJxAdhVDwfV/SolidityScan ZeUSD Contracts Dec2024.pdf | USYCSubVault | unmatched — not counted | — | — | no |
| spaces/mMWQLQN0GHKRXP2us07C/uploads/CIkyRzhjzbJxAdhVDwfV/SolidityScan ZeUSD Contracts Dec2024.pdf | ZTLNPrimeSubVault | unmatched — not counted | — | — | no |
| spaces/mMWQLQN0GHKRXP2us07C/uploads/CIkyRzhjzbJxAdhVDwfV/SolidityScan ZeUSD Contracts Dec2024.pdf | ZeUSD | own proxy deployment | ERC1967Proxyy (proxy) (selected) `0xb16eb1...389809` — deployed 2025-07-08 13:19:23+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| spaces/mMWQLQN0GHKRXP2us07C/uploads/CIkyRzhjzbJxAdhVDwfV/SolidityScan ZeUSD Contracts Dec2024.pdf | ZeUSD_OFT | unmatched — not counted | — | — | no |
| ENTERSOFT.pdf | Blacklistable | unmatched — not counted | — | — | no |
| ENTERSOFT.pdf | DecimalsCorrectionLibrary | unmatched — not counted | — | — | no |
| ENTERSOFT.pdf | DepositVault | unmatched — not counted | — | — | no |
| ENTERSOFT.pdf | ERC1967Proxy | unmatched — not counted | — | — | no |
| ENTERSOFT.pdf | FunctionsAccessControl | unmatched — not counted | — | — | no |
| ENTERSOFT.pdf | Greenlistable | unmatched — not counted | — | — | no |
| ENTERSOFT.pdf | IDataFeed | unmatched — not counted | — | — | no |
| ENTERSOFT.pdf | IDepositVault | unmatched — not counted | — | — | no |
| ENTERSOFT.pdf | IDepositVault copy | unmatched — not counted | — | — | no |
| ENTERSOFT.pdf | IManageableVault | unmatched — not counted | — | — | no |
| ENTERSOFT.pdf | IManageableVaultRedeem | unmatched — not counted | — | — | no |
| ENTERSOFT.pdf | IRedemptionVault | unmatched — not counted | — | — | no |
| ENTERSOFT.pdf | ISanctionsList | unmatched — not counted | — | — | no |
| ENTERSOFT.pdf | IVaultShared | unmatched — not counted | — | — | no |
| ENTERSOFT.pdf | IZToken | unmatched — not counted | — | — | no |
| ENTERSOFT.pdf | ManageableVault | unmatched — not counted | — | — | no |
| ENTERSOFT.pdf | ManageableVaultRedeem | unmatched — not counted | — | — | no |
| ENTERSOFT.pdf | Pausable | unmatched — not counted | — | — | no |
| ENTERSOFT.pdf | PriceOracle | unmatched — not counted | — | — | no |
| ENTERSOFT.pdf | RedemptionVault | unmatched — not counted | — | — | no |
| ENTERSOFT.pdf | WithFunctionsAccessControl | unmatched — not counted | — | — | no |
| ENTERSOFT.pdf | WithSanctionsList | unmatched — not counted | — | — | no |
| ENTERSOFT.pdf | WithZothAccessControl | unmatched — not counted | — | — | no |
| ENTERSOFT.pdf | ZHyperDepositVault | unmatched — not counted | — | — | no |
| ENTERSOFT.pdf | ZHyperZothAccessControlRoles | unmatched — not counted | — | — | no |
| ENTERSOFT.pdf | ZothAccessControl | unmatched — not counted | — | — | no |
| ENTERSOFT.pdf | ZothAccessControlRoles | unmatched — not counted | — | — | no |
| ENTERSOFT.pdf | ZothInitializable | unmatched — not counted | — | — | no |
| ENTERSOFT.pdf | mHYPER | unmatched — not counted | — | — | no |
| ENTERSOFT.pdf | zHYPER | unmatched — not counted | — | — | no |
| CLAUDE.pdf | Blacklistable | unmatched — not counted | — | — | no |
| CLAUDE.pdf | DecimalsCorrectionLibrary | unmatched — not counted | — | — | no |
| CLAUDE.pdf | DepositVault | unmatched — not counted | — | — | no |
| CLAUDE.pdf | ERC1967Proxy | unmatched — not counted | — | — | no |
| CLAUDE.pdf | FunctionsAccessControl | unmatched — not counted | — | — | no |
| CLAUDE.pdf | Greenlistable | unmatched — not counted | — | — | no |
| CLAUDE.pdf | IDataFeed | unmatched — not counted | — | — | no |
| CLAUDE.pdf | IDepositVault | unmatched — not counted | — | — | no |
| CLAUDE.pdf | IManageableVault | unmatched — not counted | — | — | no |
| CLAUDE.pdf | IManageableVaultRedeem | unmatched — not counted | — | — | no |
| CLAUDE.pdf | IRedemptionVault | unmatched — not counted | — | — | no |
| CLAUDE.pdf | ISanctionsList | unmatched — not counted | — | — | no |
| CLAUDE.pdf | IVaultShared | unmatched — not counted | — | — | no |
| CLAUDE.pdf | IZToken | unmatched — not counted | — | — | no |
| CLAUDE.pdf | ManageableVault | unmatched — not counted | — | — | no |
| CLAUDE.pdf | ManageableVaultRedeem | unmatched — not counted | — | — | no |
| CLAUDE.pdf | MockERC20 | unmatched — not counted | — | — | no |
| CLAUDE.pdf | Pausable | unmatched — not counted | — | — | no |
| CLAUDE.pdf | PriceOracle | unmatched — not counted | — | — | no |
| CLAUDE.pdf | RedemptionVault | unmatched — not counted | — | — | no |
| CLAUDE.pdf | TransparentUpgradeableProxy | unmatched — not counted | — | — | no |
| CLAUDE.pdf | WithFunctionsAccessControl | unmatched — not counted | — | — | no |
| CLAUDE.pdf | WithSanctionsList | unmatched — not counted | — | — | no |
| CLAUDE.pdf | WithZothAccessControl | unmatched — not counted | — | — | no |
| CLAUDE.pdf | ZothAccessControl | unmatched — not counted | — | — | no |
| CLAUDE.pdf | ZothAccessControlRoles | unmatched — not counted | — | — | no |
| CLAUDE.pdf | ZothInitializable | unmatched — not counted | — | — | no |
| CLAUDE.pdf | zOPAL | unmatched — not counted | — | — | no |
| CLAUDE.pdf | zOPALDepositVault | unmatched — not counted | — | — | no |
| CLAUDE.pdf | zOPALZothAccessControlRoles | unmatched — not counted | — | — | no |
| EVMBENCH.pdf | Blacklistable | unmatched — not counted | — | — | no |
| EVMBENCH.pdf | DecimalsCorrectionLibrary | unmatched — not counted | — | — | no |
| EVMBENCH.pdf | DepositVault | unmatched — not counted | — | — | no |
| EVMBENCH.pdf | ERC1967Proxy | unmatched — not counted | — | — | no |
| EVMBENCH.pdf | FunctionsAccessControl | unmatched — not counted | — | — | no |
| EVMBENCH.pdf | Greenlistable | unmatched — not counted | — | — | no |
| EVMBENCH.pdf | IDataFeed | unmatched — not counted | — | — | no |
| EVMBENCH.pdf | IDepositVault | unmatched — not counted | — | — | no |
| EVMBENCH.pdf | IManageableVault | unmatched — not counted | — | — | no |
| EVMBENCH.pdf | IManageableVaultRedeem | unmatched — not counted | — | — | no |
| EVMBENCH.pdf | IRedemptionVault | unmatched — not counted | — | — | no |
| EVMBENCH.pdf | ISanctionsList | unmatched — not counted | — | — | no |
| EVMBENCH.pdf | IVaultShared | unmatched — not counted | — | — | no |
| EVMBENCH.pdf | IZToken | unmatched — not counted | — | — | no |
| EVMBENCH.pdf | ManageableVault | unmatched — not counted | — | — | no |
| EVMBENCH.pdf | ManageableVaultRedeem | unmatched — not counted | — | — | no |
| EVMBENCH.pdf | MockERC20 | unmatched — not counted | — | — | no |
| EVMBENCH.pdf | Pausable | unmatched — not counted | — | — | no |
| EVMBENCH.pdf | PriceOracle | unmatched — not counted | — | — | no |
| EVMBENCH.pdf | RedemptionVault | unmatched — not counted | — | — | no |
| EVMBENCH.pdf | TransparentUpgradeableProxy | unmatched — not counted | — | — | no |
| EVMBENCH.pdf | WithFunctionsAccessControl | unmatched — not counted | — | — | no |
| EVMBENCH.pdf | WithSanctionsList | unmatched — not counted | — | — | no |
| EVMBENCH.pdf | WithZothAccessControl | unmatched — not counted | — | — | no |
| EVMBENCH.pdf | ZothAccessControl | unmatched — not counted | — | — | no |
| EVMBENCH.pdf | ZothAccessControlRoles | unmatched — not counted | — | — | no |
| EVMBENCH.pdf | ZothInitializable | unmatched — not counted | — | — | no |
| EVMBENCH.pdf | zOPAL | unmatched — not counted | — | — | no |
| EVMBENCH.pdf | zOPALDepositVault | unmatched — not counted | — | — | no |
| EVMBENCH.pdf | zOPALZothAccessControlRoles | unmatched — not counted | — | — | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | `0xc59f3b...5f34ec` | AccessManager | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x675d73...902a18` | Registry | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x255f6b...0d25a6` | USYCVault | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x70072c...31d36d` | VaultRegistry | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x4fb32d...4008b8` | WithdrawalSystem | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x400b18...454803` | ZeUSD_CDP | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x061a58...011d95` | ZeUSDRouterV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 9 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 19 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 4
- Inherited remapped matches: 0
- Address-book scope dispositions: 1 own (1 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 105 unmatched
- Matched-own operational status: 1 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=1
- Match method counts: unique_name=1

Zero-match audit list:

- [2868] spaces/mMWQLQN0GHKRXP2us07C/uploads/8csMoFUI4T4MyCctrCfQ/Hacken Zeusd Contracts Dec2024.pdf
- [2870] ENTERSOFT.pdf
- [2871] CLAUDE.pdf
- [2872] EVMBENCH.pdf

Fork inheritance lineage and inherited audits are included when available.
