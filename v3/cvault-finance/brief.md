# Agentic Audit Brief: cVault Finance

## Export Authority

- Production state: **blocked no audit authority**
- Raw selected rows: 0 across 0 audit(s)
- Eligible audit results: 0 (0 matched; 0 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e9e09d06b414f9cd852c36a58d42ce16279465f2d9791cd2a8178f3f54b89ecd`

## Project Overview

- Project: cVault Finance (`cvault-finance`)
- Website: [https://cvault.finance/](https://cvault.finance/)
- Lifecycle: unknown
- Generated: 2026-07-15T18:30:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: ethereum
- Contract surface: 51 unique implementations (53 raw deployments)
- Coverage basis: 0/10 confirmed own live verified implementations (0.0%); conservative 0.0% with 0 needs-review implementation(s)
- DeFi Llama TVL: $4,198,797.44
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for cVault Finance. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 10 contract row(s) across ethereum. Structural roles: 10 core. 8 row(s) use upgradeable patterns.

## Logic Topography

- Exact-run contract rows: 10
- Structural roles: core (10)
- Contract kinds: contract (10)
- Detected standards: erc1967proxy (7), ownable (2), erc20 (1)
- Frameworks: openzeppelin (3), foundry (1), openzeppelin-upgradeable (1), uniswap-v2 (1)
- Upgradeable-pattern rows: 8

## Fork Analysis

0 of 25 contracts are derived from known codebases. 25 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0x255ca4...50128b`, chain 1)
- UnnamedContract (`0x32ce7e...2cb81b`, chain 1)
- UnnamedContract (`0x54b276...ea58c5`, chain 1)
- UnnamedContract (`0x7b5982...615ab8`, chain 1)
- UnnamedContract (`0x7ca9b4...05f0d3`, chain 1)
- UnnamedContract (`0x87cde0...297597`, chain 1)
- UnnamedContract (`0x9cb1ee...4b1f0f`, chain 1)
- UnnamedContract (`0xb2d834...7beefa`, chain 1)
- UnnamedContract (`0xbeb307...d53a77`, chain 1)
- UnnamedContract (`0xc0d019...586167`, chain 1)
- UnnamedContract (`0xc5cacb...c0d8c9`, chain 1)
- UnnamedContract (`0xe22bbd...70dcf6`, chain 1)
- UnnamedContract (`0xe508a3...4380de`, chain 1)
- UnnamedContract (`0xf3d513...b961f2`, chain 1)
- UnnamedContract (`0xf7ca8f...0bc591`, chain 1)
- AdminUpgradeabilityProxy (`0x00a661...f37642`, chain 1)
- AdminUpgradeabilityProxy (`0x0ee460...ba78e0`, chain 1)
- AdminUpgradeabilityProxy (`0x17b8c1...23b669`, chain 1)
- AdminUpgradeabilityProxy (`0x2e2a33...118e7a`, chain 1)
- AdminUpgradeabilityProxy (`0x5dca40...314d35`, chain 1)
- AdminUpgradeabilityProxy (`0xaac50b...a4a76b`, chain 1)
- AdminUpgradeabilityProxy (`0xbb791b...9d7816`, chain 1)
- CORE (`0x62359e...fa23d7`, chain 1)
- DELTA_Limited_Staking_Window (`0xdafce5...e2beab`, chain 1)
- FeeApprover (`0x1d0db0...186587`, chain 1)

## Contract Surface Quality

- Logic-topography rows: 10; live-surface rows included: 10 (10 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 23/23 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 0/10 (0.0%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 23 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 28 discovered implementations shown in the inventory but excluded from coverage (2 third-party/infra; 3 standard proxy/library)
- Proxy deployments represented within implementation groups: 10
- Confirmed-live implementations: 23 of 51 unique; 28 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 0/38
- Verified + Unaudited implementations: 38
- Verified by bytecode match: 0
- Unverified implementations: 13
- Unique implementations: 51
- Raw deployments: 53
- Audits discovered: 0 (0 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: n/a (unknown)
- Audit staleness (calendar age): 0 fresh, 0 aging, 0 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (38)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| AdminUpgradeabilityProxy | unknown | project_anchor | own_supporting | 1 | ethereum | unit-383132 | `0x00a661...f37642` | ⚠️ Unaudited |
| AdminUpgradeabilityProxy | unknown | external_dependency_or_infra | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x0d1572...373423` | ⚠️ Unaudited |
| AdminUpgradeabilityProxy | unknown | project_anchor | own_supporting | 1 | ethereum | unit-383136 | 2 deployments: ethereum `0x0ee460...ba78e0`; ethereum `0xbeb307...d53a77` | ⚠️ Unaudited |
| AdminUpgradeabilityProxy | unknown | project_anchor | own_supporting | 1 | ethereum | unit-383134 | `0x17b8c1...23b669` | ⚠️ Unaudited |
| AdminUpgradeabilityProxy | unknown | external_dependency_or_infra | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x220564...c0657d` | ⚠️ Unaudited |
| AdminUpgradeabilityProxy | unknown | project_anchor | own_supporting | 1 | ethereum | unit-383138 | 2 deployments: ethereum `0x2e2a33...118e7a`; ethereum `0xc0d019...586167` | ⚠️ Unaudited |
| AdminUpgradeabilityProxy | unknown | project_anchor | own_supporting | 1 | ethereum | unit-383140 | `0x5dca40...314d35` | ⚠️ Unaudited |
| AdminUpgradeabilityProxy | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | n/a | `0x98107c...3f43f5` | ⚠️ Unaudited |
| AdminUpgradeabilityProxy | unknown | project_anchor | own_supporting | 1 | ethereum | unit-383142 | `0xaac50b...a4a76b` | ⚠️ Unaudited |
| AdminUpgradeabilityProxy | unknown | project_anchor | own_supporting | 1 | ethereum | unit-383130 | `0xbb791b...9d7816` | ⚠️ Unaudited |
| CLending | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x466815...e47f49` | ⚠️ Unaudited |
| cLGE | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x558c34...6e2ed5` | ⚠️ Unaudited |
| CORE | unknown | project_anchor | own_supporting | 0 | ethereum | unit-383108 | `0x62359e...fa23d7` | ⚠️ Unaudited |
| CORE_RLP_Factory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x904cf9...4bcc70` | ⚠️ Unaudited |
| CoreDAO | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf66cd2...32dd58` | ⚠️ Unaudited |
| CoreDAOTreasury | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc3fb0b...3caad0` | ⚠️ Unaudited |
| COREDEX_RLP | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x40874d...3b93cb` | ⚠️ Unaudited |
| COREGlobals | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x20a387...fa78ae` | ⚠️ Unaudited |
| CoreVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x16c0a1...276994` | ⚠️ Unaudited |
| DELTA_Deep_Farming_Vault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x44d59c...fb40a1` | ⚠️ Unaudited |
| DELTA_Deep_Vault_Withdrawal | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x251bbe...60a943` | ⚠️ Unaudited |
| DELTA_Distributor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa4079d...6f7cb0` | ⚠️ Unaudited |
| DELTA_Limited_Staking_Window | unknown | project_anchor | own_supporting | 0 | ethereum | unit-383122 | `0xdafce5...e2beab` | ⚠️ Unaudited |
| DELTA_Rebasing_Liquidity_Token | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1b0b47...a4765a` | ⚠️ Unaudited |
| DELTA_Reserve_Vault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x021af3...a63c34` | ⚠️ Unaudited |
| DeltaRouter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7b3e8f...6345bc` | ⚠️ Unaudited |
| EmptyContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf6f715...918783` | ⚠️ Unaudited |
| FeeApprover | unknown | project_anchor | own_supporting | 0 | ethereum | unit-383099 | `0x1d0db0...186587` | ⚠️ Unaudited |
| Fixer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x36e6b8...1538fb` | ⚠️ Unaudited |
| IWannaDie | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1d9a94...089a5b` | ⚠️ Unaudited |
| OVLBalanceHandler | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3d4eba...612ee1` | ⚠️ Unaudited |
| OVLTransferHandler | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x42716d...53387b` | ⚠️ Unaudited |
| ProxyAdmin | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | n/a | `0x55e16b...1246b7` | ⚠️ Unaudited |
| ProxyFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x370f10...d77436` | ⚠️ Unaudited |
| StableYield | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3554fc...efbd26` | ⚠️ Unaudited |
| TeamShareTimelock | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0912f4...169c8e` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | external_dependency_or_infra | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x6b29a3...9de848` | ⚠️ Unaudited |
| Unimplemented | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0c53b4...7e363c` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (13)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-383101 | `0x255ca4...50128b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-383103 | `0x32ce7e...2cb81b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-383105 | `0x54b276...ea58c5` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-383110 | `0x7b5982...615ab8` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-383112 | `0x7ca9b4...05f0d3` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-383114 | `0x87cde0...297597` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-383116 | `0x9cb1ee...4b1f0f` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-383118 | `0xb2d834...7beefa` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-383120 | `0xc5cacb...c0d8c9` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-383124 | `0xe22bbd...70dcf6` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-383126 | `0xe508a3...4380de` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-383127 | `0xf3d513...b961f2` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-383128 | `0xf7ca8f...0bc591` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

- No persisted address-book scope analysis is available.

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | `0x62359e...fa23d7` | CORE | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xdafce5...e2beab` | DELTA_Limited_Staking_Window | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x1d0db0...186587` | FeeApprover | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 26 |
| upstream | 0 |
| standard_library | 12 |
| needs_review | 13 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Address-book scope dispositions: 0 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 0 unmatched
- Matched-own operational status: 0 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Fork inheritance lineage and inherited audits are included when available.
