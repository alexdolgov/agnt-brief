# Agentic Audit Brief: Felix

## Export Authority

- Production state: **published scope**
- Raw selected rows: 0 across 0 audit(s)
- Eligible audit results: 4 (0 matched; 4 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e9e09d06b414f9cd852c36a58d42ce16279465f2d9791cd2a8178f3f54b89ecd`

## Project Overview

- Project: Felix (`felix`)
- Website: [https://www.usefelix.xyz/](https://www.usefelix.xyz/)
- Lifecycle: unknown
- Generated: 2026-07-15T18:30:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: ethereum, hyperliquid
- Contract surface: 68 unique implementations (68 raw deployments)
- Coverage basis: 0/44 confirmed own live verified implementations (0.0%); conservative 0.0% with 0 needs-review implementation(s)
- DeFi Llama TVL: $109,598,043.52
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for Felix. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 46 contract row(s) across ethereum, hyperliquid. Structural roles: 43 unclassified, 2 core, 1 supporting. 1 row(s) use upgradeable patterns.

## Logic Topography

- Exact-run contract rows: 46
- Structural roles: unclassified (43), core (2), supporting (1)
- Contract kinds: contract (46)
- Detected standards: erc20 (2), erc20permit (2), erc1967proxy (1), erc4626 (1), multicall (1), ownable (1), ownable2step (1)
- Frameworks: openzeppelin (2), openzeppelin-upgradeable (1)
- Upgradeable-pattern rows: 1

## Fork Analysis

0 of 45 contracts are derived from known codebases. 45 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- Collateral Registry (`0x9de1e5...e4711b`, chain 999)
- feUBTC decimals wrapper (`0xefbd9c...a9ad6f`, chain 999)
- feUSD (`0x02c6a2...f26c70`, chain 999)
- Hint Helpers (`0xa32e89...f864d4`, chain 999)
- HYPE Lending Vault (`0x2900ab...c06a76`, chain 999)
- kHYPE Active Pool (`0xbfd0b1...411a5a`, chain 999)
- kHYPE Address Registry (`0x382d2f...ca589f`, chain 999)
- kHYPE Borrower Operations (`0x3a2a18...adc397`, chain 999)
- kHYPE Collateral Surplus Pool (`0x246ace...96f7b0`, chain 999)
- kHYPE Default Pool (`0xee6d18...fc195f`, chain 999)
- kHYPE Gas Pool (`0xea5d5a...7a9f8e`, chain 999)
- kHYPE Price Feed (`0x0a04e6...73265c`, chain 999)
- kHYPE Sorted Troves (`0x6bc814...68f86f`, chain 999)
- kHYPE Stability Pool (`0x56a346...0779ab`, chain 999)
- kHYPE Trove Manager (`0x7c07bb...957e4a`, chain 999)
- kHYPE Trove NFT (`0x9d0878...bf6036`, chain 999)
- MetaMorphoV1_1 (`0x207cca...d2201c`, chain 999)
- UBTC Active Pool (`0x8d9957...7a5939`, chain 999)
- UBTC Address Registry (`0xfc4e20...882407`, chain 999)
- UBTC Borrower Operations (`0x36b7bd...36672e`, chain 999)
- UBTC Collateral Surplus Pool (`0xe7aba8...aafe38`, chain 999)
- UBTC Default Pool (`0x50743a...83df1c`, chain 999)
- UBTC Gas Pool (`0x8b71c9...f0a137`, chain 999)
- UBTC Price Feed (`0xf59f33...5358ab`, chain 999)
- UBTC Sorted Troves (`0x642d97...6e2fa9`, chain 999)
- UBTC Stability Pool (`0xabf036...168924`, chain 999)
- UBTC Trove Manager (`0xbbe5f2...214885`, chain 999)
- UBTC Trove NFT (`0xad8a43...d5846b`, chain 999)
- USDe Lending Vault (`0x835feb...6938ab`, chain 999)
- USDhl Frontier Lending Vault (`0x66c712...68fdb6`, chain 999)
- USDhl Lending Vault (`0x9c59a9...e2275e`, chain 999)
- USDT0 Frontier Lending Vault (`0x9896a8...806bb3`, chain 999)
- USDT0 Lending Vault (`0xfc5126...7d151e`, chain 999)
- WHYPE Active Pool (`0x39ebba...34cc9e`, chain 999)
- WHYPE Address Registry (`0x7201fb...73815d`, chain 999)
- WHYPE Borrower Operations (`0x5b271d...17f0a3`, chain 999)
- WHYPE Collateral Surplus Pool (`0x9182e3...c122ca`, chain 999)
- WHYPE Default Pool (`0xa1e95e...07c605`, chain 999)
- WHYPE Gas Pool (`0x756005...4e9935`, chain 999)
- WHYPE Price Feed (`0x12a186...873a51`, chain 999)
- WHYPE Sorted Troves (`0xd1caa4...3f2ef6`, chain 999)
- WHYPE Stability Pool (`0x576c9c...5efd6b`, chain 999)
- WHYPE Trove Manager (`0x3100f4...1bbe62`, chain 999)
- WHYPE Trove NFT (`0x5ad151...a03aa7`, chain 999)
- WHYPE Zapper (`0x999876...991f49`, chain 999)

## Contract Surface Quality

- Logic-topography rows: 46; live-surface rows included: 46 (44 live, 2 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 45/69 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 0/44 (0.0%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 45 own, 23 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 0 discovered implementations shown in the inventory but excluded from coverage (8 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 1
- Confirmed-live implementations: 45 of 68 unique; 23 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 0/46
- Verified + Unaudited implementations: 46
- Verified by bytecode match: 0
- Unverified implementations: 22
- Unique implementations: 68
- Raw deployments: 68
- Audits discovered: 4 (4 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2025-01 (aging)
- Audit staleness (calendar age): 0 fresh, 3 aging, 0 stale, 1 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (46)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| Collateral Registry | unknown | project_anchor | own_supporting | 0 | hyperliquid | unit-386556 | `0x9de1e5...e4711b` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 1 | ethereum | unit-386577 | `0x36f586...3c2ece` | ⚠️ Unaudited |
| feUSD | unknown | project_anchor | own_supporting | 0 | hyperliquid | unit-386502 | `0x02c6a2...f26c70` | ⚠️ Unaudited |
| Hint Helpers | unknown | project_anchor | own_supporting | 0 | hyperliquid | unit-386559 | `0xa32e89...f864d4` | ⚠️ Unaudited |
| HYPE Lending Vault | unknown | project_anchor | own_supporting | 0 | hyperliquid | unit-386509 | `0x2900ab...c06a76` | ⚠️ Unaudited |
| kHYPE Active Pool | unknown | project_anchor | own_supporting | 0 | hyperliquid | unit-386566 | `0xbfd0b1...411a5a` | ⚠️ Unaudited |
| kHYPE Address Registry | unknown | project_anchor | own_supporting | 0 | hyperliquid | unit-386514 | `0x382d2f...ca589f` | ⚠️ Unaudited |
| kHYPE Borrower Operations | unknown | project_anchor | own_supporting | 0 | hyperliquid | unit-386517 | `0x3a2a18...adc397` | ⚠️ Unaudited |
| kHYPE Collateral Surplus Pool | unknown | project_anchor | own_supporting | 0 | hyperliquid | unit-386508 | `0x246ace...96f7b0` | ⚠️ Unaudited |
| kHYPE Default Pool | unknown | project_anchor | own_supporting | 0 | hyperliquid | unit-386571 | `0xee6d18...fc195f` | ⚠️ Unaudited |
| kHYPE Gas Pool | unknown | project_anchor | own_supporting | 0 | hyperliquid | unit-386570 | `0xea5d5a...7a9f8e` | ⚠️ Unaudited |
| kHYPE Price Feed | unknown | project_anchor | own_supporting | 0 | hyperliquid | unit-386504 | `0x0a04e6...73265c` | ⚠️ Unaudited |
| kHYPE Sorted Troves | unknown | project_anchor | own_supporting | 0 | hyperliquid | unit-386535 | `0x6bc814...68f86f` | ⚠️ Unaudited |
| kHYPE Stability Pool | unknown | project_anchor | own_supporting | 0 | hyperliquid | unit-386521 | `0x56a346...0779ab` | ⚠️ Unaudited |
| kHYPE Trove Manager | unknown | project_anchor | own_supporting | 0 | hyperliquid | unit-386543 | `0x7c07bb...957e4a` | ⚠️ Unaudited |
| kHYPE Trove NFT | unknown | project_anchor | own_supporting | 0 | hyperliquid | unit-386555 | `0x9d0878...bf6036` | ⚠️ Unaudited |
| MetaMorphoV1_1 | unknown | project_anchor | own_supporting | 0 | hyperliquid | unit-386507 | `0x207cca...d2201c` | ⚠️ Unaudited |
| MToken | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | unit-386500 | `0x866a2b...36be1b` | ⚠️ Unaudited |
| UBTC Active Pool | unknown | project_anchor | own_supporting | 0 | hyperliquid | unit-386549 | `0x8d9957...7a5939` | ⚠️ Unaudited |
| UBTC Address Registry | unknown | project_anchor | own_supporting | 0 | hyperliquid | unit-386574 | `0xfc4e20...882407` | ⚠️ Unaudited |
| UBTC Borrower Operations | unknown | project_anchor | own_supporting | 0 | hyperliquid | unit-386512 | `0x36b7bd...36672e` | ⚠️ Unaudited |
| UBTC Collateral Surplus Pool | unknown | project_anchor | own_supporting | 0 | hyperliquid | unit-386569 | `0xe7aba8...aafe38` | ⚠️ Unaudited |
| UBTC Default Pool | unknown | project_anchor | own_supporting | 0 | hyperliquid | unit-386518 | `0x50743a...83df1c` | ⚠️ Unaudited |
| UBTC Gas Pool | unknown | project_anchor | own_supporting | 0 | hyperliquid | unit-386548 | `0x8b71c9...f0a137` | ⚠️ Unaudited |
| UBTC Price Feed | unknown | project_anchor | own_supporting | 0 | hyperliquid | unit-386573 | `0xf59f33...5358ab` | ⚠️ Unaudited |
| UBTC Sorted Troves | unknown | project_anchor | own_supporting | 0 | hyperliquid | unit-386529 | `0x642d97...6e2fa9` | ⚠️ Unaudited |
| UBTC Stability Pool | unknown | project_anchor | own_supporting | 0 | hyperliquid | unit-386561 | `0xabf036...168924` | ⚠️ Unaudited |
| UBTC Trove Manager | unknown | project_anchor | own_supporting | 0 | hyperliquid | unit-386565 | `0xbbe5f2...214885` | ⚠️ Unaudited |
| UBTC Trove NFT | unknown | project_anchor | own_supporting | 0 | hyperliquid | unit-386562 | `0xad8a43...d5846b` | ⚠️ Unaudited |
| USDe Lending Vault | unknown | project_anchor | own_supporting | 0 | hyperliquid | unit-386547 | `0x835feb...6938ab` | ⚠️ Unaudited |
| USDhl Frontier Lending Vault | unknown | project_anchor | own_supporting | 0 | hyperliquid | unit-386531 | `0x66c712...68fdb6` | ⚠️ Unaudited |
| USDhl Lending Vault | unknown | project_anchor | own_supporting | 0 | hyperliquid | unit-386554 | `0x9c59a9...e2275e` | ⚠️ Unaudited |
| USDT0 Frontier Lending Vault | unknown | project_anchor | own_supporting | 0 | hyperliquid | unit-386552 | `0x9896a8...806bb3` | ⚠️ Unaudited |
| USDT0 Lending Vault | unknown | project_anchor | own_supporting | 0 | hyperliquid | unit-386575 | `0xfc5126...7d151e` | ⚠️ Unaudited |
| WHYPE Active Pool | unknown | project_anchor | own_supporting | 0 | hyperliquid | unit-386516 | `0x39ebba...34cc9e` | ⚠️ Unaudited |
| WHYPE Address Registry | unknown | project_anchor | own_supporting | 0 | hyperliquid | unit-386537 | `0x7201fb...73815d` | ⚠️ Unaudited |
| WHYPE Borrower Operations | unknown | project_anchor | own_supporting | 0 | hyperliquid | unit-386525 | `0x5b271d...17f0a3` | ⚠️ Unaudited |
| WHYPE Collateral Surplus Pool | unknown | project_anchor | own_supporting | 0 | hyperliquid | unit-386550 | `0x9182e3...c122ca` | ⚠️ Unaudited |
| WHYPE Default Pool | unknown | project_anchor | own_supporting | 0 | hyperliquid | unit-386558 | `0xa1e95e...07c605` | ⚠️ Unaudited |
| WHYPE Gas Pool | unknown | project_anchor | own_supporting | 0 | hyperliquid | unit-386539 | `0x756005...4e9935` | ⚠️ Unaudited |
| WHYPE Price Feed | unknown | project_anchor | own_supporting | 0 | hyperliquid | unit-386505 | `0x12a186...873a51` | ⚠️ Unaudited |
| WHYPE Sorted Troves | unknown | project_anchor | own_supporting | 0 | hyperliquid | unit-386567 | `0xd1caa4...3f2ef6` | ⚠️ Unaudited |
| WHYPE Stability Pool | unknown | project_anchor | own_supporting | 0 | hyperliquid | unit-386522 | `0x576c9c...5efd6b` | ⚠️ Unaudited |
| WHYPE Trove Manager | unknown | project_anchor | own_supporting | 0 | hyperliquid | unit-386510 | `0x3100f4...1bbe62` | ⚠️ Unaudited |
| WHYPE Trove NFT | unknown | project_anchor | own_supporting | 0 | hyperliquid | unit-386524 | `0x5ad151...a03aa7` | ⚠️ Unaudited |
| WHYPE Zapper | unknown | project_anchor | own_supporting | 0 | hyperliquid | unit-386553 | `0x999876...991f49` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (22)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| feUBTC decimals wrapper | unknown | project_anchor | own_supporting | 0 | hyperliquid | unit-386572 | `0xefbd9c...a9ad6f` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | unit-386499 | `0x437cc3...98b291` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | unit-386501 | `0x970a77...b79288` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | hyperliquid | unit-386503 | `0x067e69...f169a2` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | hyperliquid | unit-386511 | `0x339d10...6f0f32` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | hyperliquid | unit-386513 | `0x36f586...3c2ece` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | hyperliquid | unit-386515 | `0x389c03...2fe83e` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | hyperliquid | unit-386519 | `0x535a9f...eb7bd1` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | hyperliquid | unit-386520 | `0x555555...555555` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | hyperliquid | unit-386523 | `0x58446c...97c001` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | hyperliquid | unit-386527 | `0x5db69b...97fce0` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | hyperliquid | unit-386532 | `0x68e37d...0c57cd` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | hyperliquid | unit-386534 | `0x6a1ce0...dc2740` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | hyperliquid | unit-386541 | `0x7abca4...9425ff` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | hyperliquid | unit-386545 | `0x7d2951...e437e4` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | hyperliquid | unit-386551 | `0x94e839...e1cf38` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | hyperliquid | unit-386557 | `0x9fdbda...993463` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | hyperliquid | unit-386560 | `0xa82c32...2008a1` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | hyperliquid | unit-386563 | `0xadfba6...eedc8b` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | hyperliquid | unit-386564 | `0xb50a96...c52bd5` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | hyperliquid | unit-386568 | `0xd389c6...2a6c8c` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | hyperliquid | unit-386576 | `0xfd739d...7c296d` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [Smart Contract Audits](https://usefelix.gitbook.io/docs/advanced/smart-contract-audits.md) | unknown | Audit | n/a | unknown | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |
| [Certora - Formal Verification](https://certora.cdn.prismic.io/certora/Z1tLJJbqstJ98b8J_LiquityVerificationReport.pdf) | Certora | Audit | 2024-12 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 3 | high |
| [Recon - Liquity Security Review](https://github.com/GalloDaSballo/bold-review) | Recon | Audit | 2024-10 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 19 | medium |
| [Felix Audit by Dedaub.pdf](https://2357968670-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FVH6och7EAxl0pIZxgbqv%2Fuploads%2FckGCSwgMVirpVuz2oDep%2FFelix%20Audit%20by%20Dedaub.pdf) | Dedaub | Audit | 2025-01 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 29 | high |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [17208] Smart Contract Audits — no match: The document is an index page listing multiple audit reports for Liquity V2 and Felix, but does not contain a specific audit report with a scope section listing contracts. No contract names are explicitly mentioned as being in scope for a particular audit.
- [17213] Certora - Formal Verification — no match: Scope explicitly lists three contracts: BorrowerOperations.sol, TroveManager.sol, ActivePool.sol. Audit date inferred from 'December 2024' in header.
- [17220] Recon - Liquity Security Review — no match: The document is a GitHub README with findings, not a formal audit report. No explicit scope section or date found. Contract names extracted from code snippets and file paths referenced in findings.
- [17221] Felix Audit by Dedaub.pdf — no match: Extracted contract names from the scope listing in the audit report. The report lists all files under src/ directory. Also extracted audit date from the cover page.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| Certora - Formal Verification | BorrowerOperations | unmatched — not counted | — | listed in scope | no |
| Certora - Formal Verification | TroveManager | unmatched — not counted | — | listed in scope | no |
| Certora - Formal Verification | ActivePool | unmatched — not counted | — | listed in scope | no |
| Recon - Liquity Security Review | TroveManager | unmatched — not counted | — | mentioned in findings and code snippets | no |
| Recon - Liquity Security Review | BorrowerOperations | unmatched — not counted | — | mentioned in findings and code snippets | no |
| Recon - Liquity Security Review | ActivePool | unmatched — not counted | — | mentioned in findings and code snippets | no |
| Recon - Liquity Security Review | StabilityPool | unmatched — not counted | — | mentioned in findings and code snippets | no |
| Recon - Liquity Security Review | DefaultPool | unmatched — not counted | — | mentioned in findings and code snippets | no |
| Recon - Liquity Security Review | CollateralRegistry | unmatched — not counted | — | mentioned in findings and code snippets | no |
| Recon - Liquity Security Review | SortedTroves | unmatched — not counted | — | mentioned in findings | no |
| Recon - Liquity Security Review | TroveNFT | unmatched — not counted | — | mentioned in findings | no |
| Recon - Liquity Security Review | AddRemoveManagers | unmatched — not counted | — | mentioned in findings | no |
| Recon - Liquity Security Review | CompositePriceFeed | unmatched — not counted | — | mentioned in findings | no |
| Recon - Liquity Security Review | RETHPriceFeed | unmatched — not counted | — | mentioned in findings | no |
| Recon - Liquity Security Review | WSTETHPriceFeed | unmatched — not counted | — | mentioned in findings | no |
| Recon - Liquity Security Review | MainnetPriceFeedBase | unmatched — not counted | — | mentioned in findings | no |
| Recon - Liquity Security Review | LeverageWETHZapper | unmatched — not counted | — | mentioned in findings | no |
| Recon - Liquity Security Review | WETHZapper | unmatched — not counted | — | mentioned in findings | no |
| Recon - Liquity Security Review | GasCompZapper | unmatched — not counted | — | mentioned in findings | no |
| Recon - Liquity Security Review | CurveExchange | unmatched — not counted | — | mentioned in findings | no |
| Recon - Liquity Security Review | AddressesRegistry | unmatched — not counted | — | mentioned in findings | no |
| Recon - Liquity Security Review | Constants | unmatched — not counted | — | mentioned in findings | no |
| Felix Audit by Dedaub.pdf | ActivePool | unmatched — not counted | — | listed in scope | no |
| Felix Audit by Dedaub.pdf | AddressesRegistry | unmatched — not counted | — | listed in scope | no |
| Felix Audit by Dedaub.pdf | AdminController | unmatched — not counted | — | listed in scope | no |
| Felix Audit by Dedaub.pdf | BorrowerOperations | unmatched — not counted | — | listed in scope | no |
| Felix Audit by Dedaub.pdf | CollateralRegistry | unmatched — not counted | — | listed in scope | no |
| Felix Audit by Dedaub.pdf | CollSurplusPool | unmatched — not counted | — | listed in scope | no |
| Felix Audit by Dedaub.pdf | DefaultPool | unmatched — not counted | — | listed in scope | no |
| Felix Audit by Dedaub.pdf | AddRemoveManagers | unmatched — not counted | — | listed in scope | no |
| Felix Audit by Dedaub.pdf | Constants | unmatched — not counted | — | listed in scope | no |
| Felix Audit by Dedaub.pdf | LiquityBase | unmatched — not counted | — | listed in scope | no |
| Felix Audit by Dedaub.pdf | FelixToken | unmatched — not counted | — | listed in scope | no |
| Felix Audit by Dedaub.pdf | GasPool | unmatched — not counted | — | listed in scope | no |
| Felix Audit by Dedaub.pdf | HintHelpers | unmatched — not counted | — | listed in scope | no |
| Felix Audit by Dedaub.pdf | BorrowerOperationsInit | unmatched — not counted | — | listed in scope | no |
| Felix Audit by Dedaub.pdf | LiquityBaseInit | unmatched — not counted | — | listed in scope | no |
| Felix Audit by Dedaub.pdf | TroveManagerInit | unmatched — not counted | — | listed in scope | no |
| Felix Audit by Dedaub.pdf | MultiTroveGetter | unmatched — not counted | — | listed in scope | no |
| Felix Audit by Dedaub.pdf | HLPriceFeed | unmatched — not counted | — | listed in scope | no |
| Felix Audit by Dedaub.pdf | SortedTroves | unmatched — not counted | — | listed in scope | no |
| Felix Audit by Dedaub.pdf | DeployFelixMainnet | unmatched — not counted | — | listed in scope | no |
| Felix Audit by Dedaub.pdf | StabilityPool | unmatched — not counted | — | listed in scope | no |
| Felix Audit by Dedaub.pdf | TroveManager | unmatched — not counted | — | listed in scope | no |
| Felix Audit by Dedaub.pdf | TroveNFT | unmatched — not counted | — | listed in scope | no |
| Felix Audit by Dedaub.pdf | BaseZapper | unmatched — not counted | — | listed in scope | no |
| Felix Audit by Dedaub.pdf | GasCompZapper | unmatched — not counted | — | listed in scope | no |
| Felix Audit by Dedaub.pdf | LeftoversSweep | unmatched — not counted | — | listed in scope | no |
| Felix Audit by Dedaub.pdf | LeverageLSTZapper | unmatched — not counted | — | listed in scope | no |
| Felix Audit by Dedaub.pdf | LeverageWETHZapper | unmatched — not counted | — | listed in scope | no |
| Felix Audit by Dedaub.pdf | WETHZapper | unmatched — not counted | — | listed in scope | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 1 |
| upstream | 1 |
| standard_library | 1 |
| needs_review | 65 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 4
- Inherited remapped matches: 0
- Address-book scope dispositions: 0 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 51 unmatched
- Matched-own operational status: 0 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=2, low=1, medium=1
- Match method counts: n/a

Zero-match audit list:

- [17208] Smart Contract Audits
- [17213] Certora - Formal Verification
- [17220] Recon - Liquity Security Review
- [17221] Felix Audit by Dedaub.pdf

Fork inheritance lineage and inherited audits are included when available.
