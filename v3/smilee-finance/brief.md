# Agentic Audit Brief: Smilee Finance

## Export Authority

- Production state: **published scope**
- Raw selected rows: 17 across 3 audit(s)
- Eligible audit results: 3 (3 matched; 0 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `7fbef0dcf68cde7195f117d9b41f1e6d89891da495a42b57ae29b5e338972213`

## Project Overview

- Project: Smilee Finance (`smilee-finance`)
- Website: [https://smilee.finance/](https://smilee.finance/)
- Lifecycle: unknown
- Generated: 2026-07-15T18:00:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: arbitrum, berachain
- Contract surface: 27 unique implementations (27 raw deployments)
- Coverage basis: 5/23 confirmed own live verified implementations (21.7%); conservative 21.7% with 0 needs-review implementation(s)
- DeFi Llama TVL: $932,956.00
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for Smilee Finance. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 23 contract row(s) across arbitrum, berachain. Structural roles: 12 supporting, 11 core. 3 row(s) use upgradeable patterns.

## Logic Topography

- Exact-run contract rows: 23
- Structural roles: supporting (12), core (11)
- Contract kinds: contract (23)
- Detected standards: accesscontrol (17), erc165 (17), pausable (8), erc20 (5), erc1967proxy (3), erc721 (3), erc4626 (1)
- Frameworks: openzeppelin (22), prb-math (6), solmate (4), openzeppelin-upgradeable (3), chainlink (1)
- Upgradeable-pattern rows: 3

## Fork Analysis

0 of 27 contracts are derived from known codebases. 27 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0xfdfd95...5b0774`, chain 42161)
- UnnamedContract (`0x3f7755...f2ebce`, chain 80094)
- UnnamedContract (`0xb76ae8...25693f`, chain 80094)
- UnnamedContract (`0xf2133a...df88f2`, chain 80094)
- AddressProvider (`0x110a3b...062cf1`, chain 42161)
- ChainlinkPriceOracle (`0x60b482...cfe0bc`, chain 42161)
- ERC1967Proxy (`0x3b3dd2...0668e2`, chain 80094)
- ERC1967Proxy (`0x5dbffc...102137`, chain 80094)
- ERC1967Proxy (`0xab7075...f0c4f1`, chain 80094)
- FeeManager (`0xff7699...700d75`, chain 42161)
- IG (`0x1e0aa0...c5c016`, chain 42161)
- IG (`0x1ee870...9f003f`, chain 42161)
- IG (`0x521e16...7b7153`, chain 42161)
- IG (`0x550f20...3361b8`, chain 42161)
- IGAccessNFT (`0x3d4d50...f6dceb`, chain 42161)
- MarketOracle (`0x130648...7cd0d5`, chain 42161)
- NodeWithdrawalVault (`0x333bd3...6e9ffe`, chain 80094)
- PositionManager (`0x49a07a...34056a`, chain 42161)
- Registry (`0x8682ea...26732e`, chain 42161)
- SwapAdapterRouter (`0x991069...b09de5`, chain 42161)
- Vault (`0x6b028c...0da4f0`, chain 42161)
- Vault (`0xc1894f...e569f4`, chain 42161)
- Vault (`0xcbe9db...2a8a14`, chain 42161)
- Vault (`0xd3468b...f68831`, chain 42161)
- VaultAccessNFT (`0xc47166...8b9e1f`, chain 42161)
- VaultProxy (`0x732c5e...40fddf`, chain 42161)
- WGBera (`0xd77552...f4f912`, chain 80094)

## Contract Surface Quality

- Indexed contracts: 23; live-surface contracts included: 23 (23 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 27/27 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 5/23 (21.7%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 27 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 0 discovered implementations excluded (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 3
- Deployed-live implementations: 27 of 27 unique (rest dead/inactive/uninitialized)
- All verified address-book-owned implementations audited (incl. non-live): 5/23
- Verified + Unaudited implementations: 18
- Verified by bytecode match: 0
- Unverified implementations: 4
- Unique implementations: 27
- Raw deployments: 27
- Audits discovered: 3 (3 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 3
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2025-05 (aging)
- Audit staleness (calendar age): 0 fresh, 3 aging, 0 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 7 match-unverified
- Tier 1 coverage: 21.7% (Spearbit)

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| Spearbit | Tier 1 | 5 | 21.7% | 2025-05 |

## Contract Surface

### ✅ Verified + Audited (5)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| GBera | unknown | project_anchor | own_supporting | 1 | berachain | unit-392614 | `0x3b3dd2...0668e2` | ✅ Audited |
| NodeRegistry | registry | project_anchor | own_supporting | 1 | berachain | unit-392613 | `0x5dbffc...102137` | ✅ Audited |
| NodeWithdrawalVault | operational_periphery | project_anchor | own_supporting | 0 | berachain | unit-392607 | `0x333bd3...6e9ffe` | ✅ Audited |
| WGBera | unknown | project_anchor | own_supporting | 0 | berachain | unit-392610 | `0xd77552...f4f912` | ✅ Audited |
| WithdrawalQueue | operational_periphery | project_anchor | own_supporting | 1 | berachain | unit-392612 | `0xab7075...f0c4f1` | ✅ Audited |

### ⚠️ Verified + Unaudited (18)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| AddressProvider | registry | project_anchor | own_supporting | 0 | arbitrum | unit-392588 | `0x110a3b...062cf1` | ⚠️ Unaudited |
| ChainlinkPriceOracle | operational_periphery | project_anchor | own_supporting | 0 | arbitrum | unit-392596 | `0x60b482...cfe0bc` | ⚠️ Unaudited |
| FeeManager | governance | project_anchor | own_supporting | 0 | arbitrum | unit-392606 | `0xff7699...700d75` | ⚠️ Unaudited |
| IG | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-392590 | `0x1e0aa0...c5c016` | ⚠️ Unaudited |
| IG | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-392591 | `0x1ee870...9f003f` | ⚠️ Unaudited |
| IG | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-392594 | `0x521e16...7b7153` | ⚠️ Unaudited |
| IG | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-392595 | `0x550f20...3361b8` | ⚠️ Unaudited |
| IGAccessNFT | token | project_anchor | own_supporting | 0 | arbitrum | unit-392592 | `0x3d4d50...f6dceb` | ⚠️ Unaudited |
| MarketOracle | operational_periphery | project_anchor | own_supporting | 0 | arbitrum | unit-392589 | `0x130648...7cd0d5` | ⚠️ Unaudited |
| PositionManager | governance | project_anchor | own_supporting | 0 | arbitrum | unit-392593 | `0x49a07a...34056a` | ⚠️ Unaudited |
| Registry | registry | project_anchor | own_supporting | 0 | arbitrum | unit-392599 | `0x8682ea...26732e` | ⚠️ Unaudited |
| SwapAdapterRouter | adapter | project_anchor | own_supporting | 0 | arbitrum | unit-392600 | `0x991069...b09de5` | ⚠️ Unaudited |
| Vault | core_logic | project_anchor | own_supporting | 0 | arbitrum | unit-392597 | `0x6b028c...0da4f0` | ⚠️ Unaudited |
| Vault | core_logic | project_anchor | own_supporting | 0 | arbitrum | unit-392601 | `0xc1894f...e569f4` | ⚠️ Unaudited |
| Vault | core_logic | project_anchor | own_supporting | 0 | arbitrum | unit-392603 | `0xcbe9db...2a8a14` | ⚠️ Unaudited |
| Vault | core_logic | project_anchor | own_supporting | 0 | arbitrum | unit-392604 | `0xd3468b...f68831` | ⚠️ Unaudited |
| VaultAccessNFT | core_logic | project_anchor | own_supporting | 0 | arbitrum | unit-392602 | `0xc47166...8b9e1f` | ⚠️ Unaudited |
| VaultProxy | core_logic | project_anchor | own_supporting | 0 | arbitrum | unit-392598 | `0x732c5e...40fddf` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (4)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-392605 | `0xfdfd95...5b0774` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | berachain | unit-392608 | `0x3f7755...f2ebce` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | berachain | unit-392609 | `0xb76ae8...25693f` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | berachain | unit-392611 | `0xf2133a...df88f2` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [spaces/v9vHQJ1GDpGEgkvoUQUx/uploads/K3W9Hj6sr2y8j6Zdkgub/Guardefy_Audit_gBERA_SmileeFinance.pdf](https://483967037-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2Fv9vHQJ1GDpGEgkvoUQUx%2Fuploads%2FK3W9Hj6sr2y8j6Zdkgub%2FGuardefy_Audit_gBERA_SmileeFinance.pdf) | Spearbit | Audit | 2025-01 | aging | Direct | contract_name | matched | 7 | 3 | 0 | 2 | high |
| [spaces/v9vHQJ1GDpGEgkvoUQUx/uploads/yKq7K1kTTAd57CnP2ask/Cantina_Audit_gBERA_SmileeFinance.pdf](https://483967037-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2Fv9vHQJ1GDpGEgkvoUQUx%2Fuploads%2FyKq7K1kTTAd57CnP2ask%2FCantina_Audit_gBERA_SmileeFinance.pdf) | Spearbit | Audit | 2025-02 | aging | Direct | n/a | matched | 8 | 3 | 0 | 0 | n/a |
| [spaces/v9vHQJ1GDpGEgkvoUQUx/uploads/vhApBDZa65vO2FueUH9y/Guardefy_Audit_gBERA Update_Smilee Finance.pdf](https://483967037-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2Fv9vHQJ1GDpGEgkvoUQUx%2Fuploads%2FvhApBDZa65vO2FueUH9y%2FGuardefy_Audit_gBERA%20Update_Smilee%20Finance.pdf) | Spearbit | Audit | 2025-05 | aging | Direct | n/a | matched | 3 | 1 | 0 | 0 | n/a |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [11664] spaces/v9vHQJ1GDpGEgkvoUQUx/uploads/K3W9Hj6sr2y8j6Zdkgub/Guardefy_Audit_gBERA_SmileeFinance.pdf — matched: All 9 contracts listed in scope section on page 2. Audit date is January 16, 2025 (fix review date).
- [11665] spaces/v9vHQJ1GDpGEgkvoUQUx/uploads/yKq7K1kTTAd57CnP2ask/Cantina_Audit_gBERA_SmileeFinance.pdf — matched: No reason recorded
- [11666] spaces/v9vHQJ1GDpGEgkvoUQUx/uploads/vhApBDZa65vO2FueUH9y/Guardefy_Audit_gBERA Update_Smilee Finance.pdf — matched: No reason recorded

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| spaces/v9vHQJ1GDpGEgkvoUQUx/uploads/K3W9Hj6sr2y8j6Zdkgub/Guardefy_Audit_gBERA_SmileeFinance.pdf | BeraContractsLocator | unmatched — not counted | — | listed in scope | no |
| spaces/v9vHQJ1GDpGEgkvoUQUx/uploads/K3W9Hj6sr2y8j6Zdkgub/Guardefy_Audit_gBERA_SmileeFinance.pdf | Deployer | unmatched — not counted | — | listed in scope | no |
| spaces/v9vHQJ1GDpGEgkvoUQUx/uploads/K3W9Hj6sr2y8j6Zdkgub/Guardefy_Audit_gBERA_SmileeFinance.pdf | gBera | own proxy deployment | ERC1967Proxy (proxy) (selected) `0x3b3dd2...0668e2` — deployed 2025-02-09 03:31:53+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| spaces/v9vHQJ1GDpGEgkvoUQUx/uploads/K3W9Hj6sr2y8j6Zdkgub/Guardefy_Audit_gBERA_SmileeFinance.pdf | GBeraAssetManager | own contract | 0x3f7755… (selected) `0x3f7755...f2ebce` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| spaces/v9vHQJ1GDpGEgkvoUQUx/uploads/K3W9Hj6sr2y8j6Zdkgub/Guardefy_Audit_gBERA_SmileeFinance.pdf | NodeFeeReceiver | own contract | 0xf2133a… (selected) `0xf2133a...df88f2` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| spaces/v9vHQJ1GDpGEgkvoUQUx/uploads/K3W9Hj6sr2y8j6Zdkgub/Guardefy_Audit_gBERA_SmileeFinance.pdf | NodeRegistry | own proxy deployment | ERC1967Proxy (proxy) (selected) `0x5dbffc...102137` — deployed 2025-02-09 03:31:53+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| spaces/v9vHQJ1GDpGEgkvoUQUx/uploads/K3W9Hj6sr2y8j6Zdkgub/Guardefy_Audit_gBERA_SmileeFinance.pdf | NodeWithdrawalVault | own contract | NodeWithdrawalVault (selected) `0x333bd3...6e9ffe` — deployed 2025-02-09 03:31:53+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| spaces/v9vHQJ1GDpGEgkvoUQUx/uploads/K3W9Hj6sr2y8j6Zdkgub/Guardefy_Audit_gBERA_SmileeFinance.pdf | wgBera | own contract | WGBera (selected) `0xd77552...f4f912` — deployed 2025-02-09 03:31:53+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| spaces/v9vHQJ1GDpGEgkvoUQUx/uploads/K3W9Hj6sr2y8j6Zdkgub/Guardefy_Audit_gBERA_SmileeFinance.pdf | WithdrawalQueue | own proxy deployment | ERC1967Proxy (proxy) (selected) `0xab7075...f0c4f1` — deployed 2025-02-09 03:31:53+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| spaces/v9vHQJ1GDpGEgkvoUQUx/uploads/yKq7K1kTTAd57CnP2ask/Cantina_Audit_gBERA_SmileeFinance.pdf | GBeraAssetManager | own contract | 0x3f7755… (selected) `0x3f7755...f2ebce` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| spaces/v9vHQJ1GDpGEgkvoUQUx/uploads/yKq7K1kTTAd57CnP2ask/Cantina_Audit_gBERA_SmileeFinance.pdf | NodeFeeReceiver | own contract | 0xf2133a… (selected) `0xf2133a...df88f2` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| spaces/v9vHQJ1GDpGEgkvoUQUx/uploads/yKq7K1kTTAd57CnP2ask/Cantina_Audit_gBERA_SmileeFinance.pdf | NodeRegistry | own proxy deployment | ERC1967Proxy (proxy) (selected) `0x5dbffc...102137` — deployed 2025-02-09 03:31:53+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| spaces/v9vHQJ1GDpGEgkvoUQUx/uploads/yKq7K1kTTAd57CnP2ask/Cantina_Audit_gBERA_SmileeFinance.pdf | NodeWithdrawalVault | own contract | NodeWithdrawalVault (selected) `0x333bd3...6e9ffe` — deployed 2025-02-09 03:31:53+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| spaces/v9vHQJ1GDpGEgkvoUQUx/uploads/yKq7K1kTTAd57CnP2ask/Cantina_Audit_gBERA_SmileeFinance.pdf | WgBera | own contract | WGBera (selected) `0xd77552...f4f912` — deployed 2025-02-09 03:31:53+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| spaces/v9vHQJ1GDpGEgkvoUQUx/uploads/yKq7K1kTTAd57CnP2ask/Cantina_Audit_gBERA_SmileeFinance.pdf | WithdrawalQueue | own proxy deployment | ERC1967Proxy (proxy) (selected) `0xab7075...f0c4f1` — deployed 2025-02-09 03:31:53+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| spaces/v9vHQJ1GDpGEgkvoUQUx/uploads/yKq7K1kTTAd57CnP2ask/Cantina_Audit_gBERA_SmileeFinance.pdf | gBera | own proxy deployment | ERC1967Proxy (proxy) (selected) `0x3b3dd2...0668e2` — deployed 2025-02-09 03:31:53+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| spaces/v9vHQJ1GDpGEgkvoUQUx/uploads/yKq7K1kTTAd57CnP2ask/Cantina_Audit_gBERA_SmileeFinance.pdf | wgBera | own contract | WGBera (selected) `0xd77552...f4f912` — deployed 2025-02-09 03:31:53+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| spaces/v9vHQJ1GDpGEgkvoUQUx/uploads/vhApBDZa65vO2FueUH9y/Guardefy_Audit_gBERA Update_Smilee Finance.pdf | GBera | own proxy deployment | ERC1967Proxy (proxy) (selected) `0x3b3dd2...0668e2` — deployed 2025-02-09 03:31:53+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| spaces/v9vHQJ1GDpGEgkvoUQUx/uploads/vhApBDZa65vO2FueUH9y/Guardefy_Audit_gBERA Update_Smilee Finance.pdf | GBeraAssetManager | own contract | 0x3f7755… (selected) `0x3f7755...f2ebce` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| spaces/v9vHQJ1GDpGEgkvoUQUx/uploads/vhApBDZa65vO2FueUH9y/Guardefy_Audit_gBERA Update_Smilee Finance.pdf | NodeFeeReceiver | own contract | 0xf2133a… (selected) `0xf2133a...df88f2` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| arbitrum | `0x110a3b...062cf1` | AddressProvider | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0xff7699...700d75` | FeeManager | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0x1e0aa0...c5c016` | IG | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0x1ee870...9f003f` | IG | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0x521e16...7b7153` | IG | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0x550f20...3361b8` | IG | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0x3d4d50...f6dceb` | IGAccessNFT | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0x130648...7cd0d5` | MarketOracle | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0x49a07a...34056a` | PositionManager | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0x8682ea...26732e` | Registry | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0x991069...b09de5` | SwapAdapterRouter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0x6b028c...0da4f0` | Vault | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0xc1894f...e569f4` | Vault | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0xcbe9db...2a8a14` | Vault | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0xd3468b...f68831` | Vault | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0xc47166...8b9e1f` | VaultAccessNFT | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0x732c5e...40fddf` | VaultProxy | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 22 |
| upstream | 1 |
| standard_library | 0 |
| needs_review | 4 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Address-book scope dispositions: 18 own (7 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 2 unmatched
- Matched-own operational status: 18 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=1
- Match method counts: unique_name=17

Fork inheritance lineage and inherited audits are included when available.
