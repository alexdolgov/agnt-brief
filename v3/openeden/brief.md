# Agentic Audit Brief: OpenEden

## Export Authority

- Production state: **published scope**
- Raw selected rows: 5 across 4 audit(s)
- Eligible audit results: 9 (4 matched; 5 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `7fbef0dcf68cde7195f117d9b41f1e6d89891da495a42b57ae29b5e338972213`

## Project Overview

- Project: OpenEden (`openeden`)
- Website: [https://app.openeden.com/](https://app.openeden.com/)
- Lifecycle: unknown
- Generated: 2026-07-15T18:00:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: arbitrum, bsc, ethereum
- Contract surface: 20 unique implementations (20 raw deployments)
- Coverage basis: 3/9 confirmed own live verified implementations (33.3%); conservative 33.3% with 0 needs-review implementation(s)
- DeFi Llama TVL: $219,546,663.87
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for OpenEden. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 12 contract row(s) across arbitrum, bsc, ethereum. Structural roles: 5 core, 4 infra, 3 supporting. 9 row(s) use upgradeable patterns.

## Logic Topography

- Exact-run contract rows: 12
- Structural roles: core (5), infra (4), supporting (3)
- Contract kinds: contract (12)
- Detected standards: erc1967proxy (9), accesscontrol (6), erc165 (6), chainlinkaggregator (3), erc20 (1), erc4626 (1), pausable (1)
- Frameworks: openzeppelin (12), openzeppelin-upgradeable (4)
- Upgradeable-pattern rows: 9

## Fork Analysis

0 of 18 contracts are derived from known codebases. 18 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0x06bb4a...619046`, chain 1)
- UnnamedContract (`0x120437...b6fc1a`, chain 1)
- UnnamedContract (`0x51be49...20d947`, chain 1)
- UnnamedContract (`0x543cfd...5c1442`, chain 56)
- UnnamedContract (`0x5b4681...2fd1d9`, chain 56)
- UnnamedContract (`0xb613ab...ff4224`, chain 56)
- UnnamedContract (`0xd9cf8c...7f5cf9`, chain 56)
- UnnamedContract (`0x0d7690...38bafb`, chain 42161)
- UnnamedContract (`0xf84d28...b6666a`, chain 42161)
- ERC1967Proxy (`0x12e04c...73220d`, chain 1)
- ERC1967Proxy (`0x807570...6e5e4e`, chain 1)
- ERC1967Proxy (`0x80e49d...b4e887`, chain 1)
- ERC1967Proxy (`0x823888...823bfe`, chain 1)
- ERC1967Proxy (`0xd84c25...10e569`, chain 1)
- ERC1967Proxy (`0xdd50c0...5f2e8a`, chain 1)
- TBillPriceOracle (`0xce9a66...e45f40`, chain 1)
- TBillPriceOracle (`0x3347d0...1612a8`, chain 56)
- TBillPriceOracle (`0xc0952c...045f46`, chain 42161)

## Contract Surface Quality

- Indexed contracts: 12; live-surface contracts included: 12 (9 live, 3 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 18/25 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 3/9 (33.3%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 18 own, 2 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 0 discovered implementations excluded (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 6
- Deployed-live implementations: 18 of 20 unique (rest dead/inactive/uninitialized)
- All verified address-book-owned implementations audited (incl. non-live): 3/9
- Verified + Unaudited implementations: 6
- Verified by bytecode match: 0
- Unverified implementations: 9
- Unique implementations: 20
- Raw deployments: 20
- Audits discovered: 9 (9 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 4
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2026-05 (fresh)
- Audit staleness (calendar age): 1 fresh, 4 aging, 3 stale, 1 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 3 match-unverified
- Tier 1 coverage: 22.2% (ChainSecurity)

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| ChainSecurity | Tier 1 | 2 | 22.2% | 2025-03 |
| WP (likely WeakHands or similar) | Tier 2 | 1 | 11.1% | 2026-05 |

## Contract Surface

### ✅ Verified + Audited (3)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| Express | unknown | project_anchor | own_supporting | 1 | ethereum | unit-250401 | `0xd84c25...10e569` | ✅ Audited |
| USDO | unknown | project_anchor | own_supporting | 1 | ethereum | unit-250399 | `0x823888...823bfe` | ✅ Audited |
| USDOExpressV2 | unknown | project_anchor | own_supporting | 1 | ethereum | unit-250403 | `0x80e49d...b4e887` | ✅ Audited |

### ⚠️ Verified + Unaudited (6)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| Express | unknown | project_anchor | own_supporting | 1 | ethereum | unit-250400 | `0x807570...6e5e4e` | ⚠️ Unaudited |
| OpenEdenVaultV5 | core_logic | project_anchor | own_supporting | 1 | ethereum | unit-250402 | `0xdd50c0...5f2e8a` | ⚠️ Unaudited |
| TBillPriceOracle | operational_periphery | project_anchor | own_supporting | 0 | ethereum | unit-250386 | `0xce9a66...e45f40` | ⚠️ Unaudited |
| TBillPriceOracle | operational_periphery | project_anchor | own_supporting | 0 | bsc | unit-250393 | `0x3347d0...1612a8` | ⚠️ Unaudited |
| TBillPriceOracle | operational_periphery | project_anchor | own_supporting | 0 | arbitrum | unit-250390 | `0xc0952c...045f46` | ⚠️ Unaudited |
| Vault | core_logic | project_anchor | own_supporting | 1 | ethereum | unit-250398 | `0x12e04c...73220d` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (11)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-250379 | `0x06bb4a...619046` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-250380 | `0x120437...b6fc1a` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-250382 | `0x51be49...20d947` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | ethereum | unit-250385 | `0xad6250...597b0f` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-250394 | `0x543cfd...5c1442` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-250395 | `0x5b4681...2fd1d9` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-250396 | `0xb613ab...ff4224` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-250397 | `0xd9cf8c...7f5cf9` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-250387 | `0x0d7690...38bafb` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | arbitrum | unit-250391 | `0xe97fab...b70483` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-250392 | `0xf84d28...b6666a` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [Verichains Public Audit Report - OpenEden Vault - 310323.pdf](https://openeden.com/Verichains%20Public%20Audit%20Report%20-%20OpenEden%20Vault%20-%20310323.pdf) | unknown | Audit | 2023-03 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 4 | high |
| [hacken.io/audits/openeden/sca-openeden-vault-nov2024](https://hacken.io/audits/openeden/sca-openeden-vault-nov2024) | Hacken | Audit | 2024-12 | aging | Direct | n/a | no match | 0 | 0 | 0 | 11 | n/a |
| [www.chainsecurity.com/security-audit/openeden-usdoexpress](https://www.chainsecurity.com/security-audit/openeden-usdoexpress) | ChainSecurity | Audit | n/a | unknown | Direct | n/a | matched | 2 | 2 | 0 | 1 | n/a |
| [ChainSecurity_OpenEden_USDOExpress_Audit.pdf](https://reports.chainsecurity.com/OpenEden/ChainSecurity_OpenEden_USDOExpress_Audit.pdf) | ChainSecurity | Audit | 2025-03 | aging | Direct | contract_name | matched | 1 | 1 | 0 | 2 | high |
| [www.chainsecurity.com/security-audit/openeden-usdo](https://www.chainsecurity.com/security-audit/openeden-usdo) | ChainSecurity | Audit | 2024-09 | aging | Direct | n/a | matched | 1 | 1 | 0 | 1 | n/a |
| [Verichains Public Audit Report - OpenEden Vault - v1.1.pdf](https://github.com/verichains/public-audit-reports/blob/main/Verichains%20Public%20Audit%20Report%20-%20OpenEden%20Vault%20-%20v1.1.pdf) | Hacken | Audit | 2023-03 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 4 | high |
| [hacken.io/audits/openeden](https://hacken.io/audits/openeden) | Hacken | Audit | 2023-10 | stale | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |
| [OpenEden_PRISM_HackenProof.pdf](https://1846699559-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FNjlMezbFeyn4pWdMN4xV%2Fuploads%2FRdSV8gacwtqlaABvesym%2FOpenEden_PRISM_HackenProof.pdf) | Hacken | Audit | 2025-07 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 3 | high |
| [WP OpenEden Hybond Full Report.pdf](https://1846699559-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FNjlMezbFeyn4pWdMN4xV%2Fuploads%2F12J45fBHzjJx4Cc3wuxz%2FWP%20OpenEden%20Hybond%20Full%20Report.pdf) | WP (likely WeakHands or similar) | Audit | 2026-05 | fresh | Direct | contract_name | matched | 1 | 1 | 0 | 4 | high |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [13618] Verichains Public Audit Report - OpenEden Vault - 310323.pdf — no match: The report includes two versions (1.0 and 1.1). The latest version 1.1 dated Mar 31, 2023, lists four contracts in scope: BaseVault.sol, OpenEdenVault.sol, KycManager.sol, ChainlinkAccessor.sol. The audit date is taken from the latest report date.
- [13619] hacken.io/audits/openeden/sca-openeden-vault-nov2024 — no match: No reason recorded
- [13622] www.chainsecurity.com/security-audit/openeden-usdoexpress — matched: No reason recorded
- [13623] ChainSecurity_OpenEden_USDOExpress_Audit.pdf — matched: Three contracts explicitly listed in scope table. Audit date from cover page.
- [13624] www.chainsecurity.com/security-audit/openeden-usdo — matched: No reason recorded
- [13625] Verichains Public Audit Report - OpenEden Vault - v1.1.pdf — no match: All four contracts listed in the audit scope table with SHA256 hashes.
- [13626] hacken.io/audits/openeden — no match: The provided text is a marketing page listing multiple audits for OpenEden, but does not contain the full audit report with a scope section or detailed contract listings. Only audit types (Smart Contract Vault, Smart Contract ERC20) and dates are shown, not specific contract names.
- [27547] OpenEden_PRISM_HackenProof.pdf — no match: Scope section lists three contracts: OpenEdenVaultV4Impl.sol, KycManager.sol, DoubleQueueModified.sol. Audit duration ends 23.07.2025.
- [27548] WP OpenEden Hybond Full Report.pdf — matched: Extracted from audit report summary and findings. Contracts explicitly in scope: Express, Token, PriceOracle, AssetRegistry, DoubleQueueModified.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| Verichains Public Audit Report - OpenEden Vault - 310323.pdf | BaseVault | unmatched — not counted | — | listed in scope table with SHA256 hash | no |
| Verichains Public Audit Report - OpenEden Vault - 310323.pdf | OpenEdenVault | unmatched — not counted | — | listed in scope table with SHA256 hash | no |
| Verichains Public Audit Report - OpenEden Vault - 310323.pdf | KycManager | unmatched — not counted | — | listed in scope table with SHA256 hash | no |
| Verichains Public Audit Report - OpenEden Vault - 310323.pdf | ChainlinkAccessor | unmatched — not counted | — | listed in scope table with SHA256 hash | no |
| hacken.io/audits/openeden/sca-openeden-vault-nov2024 | DoubleQueueModified | unmatched — not counted | — | — | no |
| hacken.io/audits/openeden/sca-openeden-vault-nov2024 | IBuidlRedemption | unmatched — not counted | — | — | no |
| hacken.io/audits/openeden/sca-openeden-vault-nov2024 | IController | unmatched — not counted | — | — | no |
| hacken.io/audits/openeden/sca-openeden-vault-nov2024 | IFeeManagerV3 | unmatched — not counted | — | — | no |
| hacken.io/audits/openeden/sca-openeden-vault-nov2024 | IKycManager | unmatched — not counted | — | — | no |
| hacken.io/audits/openeden/sca-openeden-vault-nov2024 | IOpenEdenVaultV4 | unmatched — not counted | — | — | no |
| hacken.io/audits/openeden/sca-openeden-vault-nov2024 | IPartnerShipV4 | unmatched — not counted | — | — | no |
| hacken.io/audits/openeden/sca-openeden-vault-nov2024 | IPriceFeed | unmatched — not counted | — | — | no |
| hacken.io/audits/openeden/sca-openeden-vault-nov2024 | ITypes | unmatched — not counted | — | — | no |
| hacken.io/audits/openeden/sca-openeden-vault-nov2024 | OpenEdenVaultV4Impl | unmatched — not counted | — | — | no |
| hacken.io/audits/openeden/sca-openeden-vault-nov2024 | PartnerShip | unmatched — not counted | — | — | no |
| www.chainsecurity.com/security-audit/openeden-usdoexpress | USDO | own proxy deployment | ERC1967Proxy (proxy) (selected) `0x823888...823bfe` — deployed 2024-09-26 12:31:59+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| www.chainsecurity.com/security-audit/openeden-usdoexpress | USDOExpress | own proxy deployment | ERC1967Proxy (proxy) (selected) `0x80e49d...b4e887` — deployed 2025-02-11 09:13:59+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| www.chainsecurity.com/security-audit/openeden-usdoexpress | cUSDO | unmatched — not counted | — | — | no |
| ChainSecurity_OpenEden_USDOExpress_Audit.pdf | USDOExpress | own proxy deployment | ERC1967Proxy (proxy) (selected) `0x80e49d...b4e887` — deployed 2025-02-11 09:13:59+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| ChainSecurity_OpenEden_USDOExpress_Audit.pdf | USDOExpressPausable | unmatched — not counted | — | listed in scope table | no |
| ChainSecurity_OpenEden_USDOExpress_Audit.pdf | USDOMintRedeemLimiter | unmatched — not counted | — | listed in scope table | no |
| www.chainsecurity.com/security-audit/openeden-usdo | USDO | own proxy deployment | ERC1967Proxy (proxy) (selected) `0x823888...823bfe` — deployed 2024-09-26 12:31:59+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| www.chainsecurity.com/security-audit/openeden-usdo | cUSDO | unmatched — not counted | — | — | no |
| Verichains Public Audit Report - OpenEden Vault - v1.1.pdf | BaseVault | unmatched — not counted | — | listed in audit scope table | no |
| Verichains Public Audit Report - OpenEden Vault - v1.1.pdf | KycManager | unmatched — not counted | — | listed in audit scope table | no |
| Verichains Public Audit Report - OpenEden Vault - v1.1.pdf | ChainlinkAccessor | unmatched — not counted | — | listed in audit scope table | no |
| Verichains Public Audit Report - OpenEden Vault - v1.1.pdf | OpenEdenVault | unmatched — not counted | — | listed in audit scope table | no |
| OpenEden_PRISM_HackenProof.pdf | OpenEdenVaultV4Impl | unmatched — not counted | — | listed in scope | no |
| OpenEden_PRISM_HackenProof.pdf | KycManager | unmatched — not counted | — | listed in scope | no |
| OpenEden_PRISM_HackenProof.pdf | DoubleQueueModified | unmatched — not counted | — | listed in scope | no |
| WP OpenEden Hybond Full Report.pdf | Express | own proxy deployment | ERC1967Proxy (proxy) (alternative) `0x807570...6e5e4e` — deployed 2026-01-19 07:49:35+03 — liveness: live (current_address_book_code)<br>ERC1967Proxy (proxy) (selected) `0xd84c25...10e569` — deployed 2026-05-12 09:33:47+03 — liveness: live (current_address_book_code) | deployment-date disambiguation: 2026-05-12 was 9d from audit; next candidate 122d; normalized_full_corpus:project_anchor:matcher_anchor | yes |
| WP OpenEden Hybond Full Report.pdf | Token | unmatched — not counted | — | mentioned as Hybond token contract | no |
| WP OpenEden Hybond Full Report.pdf | PriceOracle | unmatched — not counted | — | listed in scope and findings | no |
| WP OpenEden Hybond Full Report.pdf | AssetRegistry | unmatched — not counted | — | mentioned in findings | no |
| WP OpenEden Hybond Full Report.pdf | DoubleQueueModified | unmatched — not counted | — | mentioned in finding WP-L24 | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | `0x807570...6e5e4e` | Express | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xdd50c0...5f2e8a` | OpenEdenVaultV5 | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xce9a66...e45f40` | TBillPriceOracle | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0x3347d0...1612a8` | TBillPriceOracle | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0xc0952c...045f46` | TBillPriceOracle | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x12e04c...73220d` | Vault | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 9 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 11 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 5
- Inherited remapped matches: 0
- Address-book scope dispositions: 5 own (5 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 30 unmatched
- Matched-own operational status: 5 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=5, low=1
- Match method counts: temporal_name=1, unique_name=4

Zero-match audit list:

- [13618] Verichains Public Audit Report - OpenEden Vault - 310323.pdf
- [13619] hacken.io/audits/openeden/sca-openeden-vault-nov2024
- [13625] Verichains Public Audit Report - OpenEden Vault - v1.1.pdf
- [13626] hacken.io/audits/openeden
- [27547] OpenEden_PRISM_HackenProof.pdf

Fork inheritance lineage and inherited audits are included when available.
