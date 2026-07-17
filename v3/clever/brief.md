# Agentic Audit Brief: CLever

## Export Authority

- Production state: **published scope**
- Raw selected rows: 0 across 0 audit(s)
- Eligible audit results: 3 (0 matched; 3 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e9e09d06b414f9cd852c36a58d42ce16279465f2d9791cd2a8178f3f54b89ecd`

## Project Overview

- Project: CLever (`clever`)
- Website: [https://clever.aladdin.club/](https://clever.aladdin.club/)
- Lifecycle: unknown
- Generated: 2026-07-15T18:30:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: ethereum
- Contract surface: 28 unique implementations (42 raw deployments)
- Coverage basis: 0/2 confirmed own live verified implementations (0.0%); conservative 0.0% with 0 needs-review implementation(s)
- DeFi Llama TVL: $3,507,907.95
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for CLever. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 2 contract row(s) across ethereum. Structural roles: 2 unclassified. No upgradeable pattern was identified in these rows.

## Logic Topography

- Exact-run contract rows: 2
- Structural roles: unclassified (2)
- Contract kinds: unclassified (2)
- Detected standards: none
- Frameworks: none
- Upgradeable-pattern rows: 0

## Fork Analysis

0 of 6 contracts are derived from known codebases. 6 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0x1104b4df568fa7af90b1bed1d78a2f71e748dc8a`, chain 1)
- UnnamedContract (`0x3abf0be21e5020007b6e2e201e292a7119bc2b0d`, chain 1)
- UnnamedContract (`0x8a5ef9095795e9740afc91c5bd23b0e48d6bb7ae`, chain 1)
- UnnamedContract (`0xb9cd9979718e7e4c341d8d99da3f1290c908fbdd`, chain 1)
- Vyper_contract (`0x6c280db098db673d30d5b34ec04b6387185d3620`, chain 1)
- Vyper_contract (`0x86e917ad6cb44f9e6c8d9fa012acf0d0cfcf114f`, chain 1)

## Contract Surface Quality

- Logic-topography rows: 2; live-surface rows included: 2 (2 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 6/7 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 0/2 (0.0%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 6 own, 1 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 21 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 1 standard proxy/library)
- Proxy deployments represented within implementation groups: 12
- Confirmed-live implementations: 6 of 28 unique; 22 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 0/23
- Verified + Unaudited implementations: 23
- Verified by bytecode match: 0
- Unverified implementations: 5
- Unique implementations: 28
- Raw deployments: 42
- Audits discovered: 3 (3 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2022-11 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 3 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (23)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| AladdinConvexVault | core_logic | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0xc8ff37f7d057df1bb9ad681b53fa4726f268e0e8` | ⚠️ Unaudited |
| AladdinCRVV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x2b95a1dcc3d405535f9ed33c219ab38e8d7e0884` | ⚠️ Unaudited |
| AladdinFXSConvexVault | core_logic | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0xd6e3bb7b1d6fa75a71d48cfb10096d59abbf99e1` | ⚠️ Unaudited |
| CLeverCVXLocker | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x96c68d861ada016ed98c30c810879f9df7c64154` | ⚠️ Unaudited |
| CLeverToken | token | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x3c20ac688410be8f391be1fb00afc5c212972f86`; ethereum `0xf05e58fcea29ab4da01a495140b349f8410ba904` | ⚠️ Unaudited |
| CompounderGateway | adapter | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x883fd355debf417f82aa9a3e2936971487f7df1f` | ⚠️ Unaudited |
| Furnace | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0xce4dcc5028588377e279255c0335effe2d7ab72a` | ⚠️ Unaudited |
| FxUSDFacet | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0xa5e2ec4682a32605b9098ddd7204fe84ab932fe4` | ⚠️ Unaudited |
| GeneralTokenConverter | token | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x11c907b3aedbd863e551c37f21dd3f36b28a6784` | ⚠️ Unaudited |
| GnosisSafe | governance | non_address_book | standard_proxy_or_library (excluded) | 2 | ethereum | n/a | 2 deployments: ethereum `0xc40549aa1d05c30af23a1c4a5af6ba11fcafe23f`; ethereum `0xfc08757c505ea28709df66e54870fb6de09f0c5e` | ⚠️ Unaudited |
| Market | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0xe7b9c7c9ca85340b8c06fb805f7775e3015108db` | ⚠️ Unaudited |
| PlatformFeeBurner | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x695eb50a92ad2aebb89c6dd1f3c7546a28411403` | ⚠️ Unaudited |
| PlatformFeeSpliter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x32366846354db5c08e92b4ab0d2a510b2a2380c8` | ⚠️ Unaudited |
| RebalancePool | core_logic | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0xa677d95b91530d56791fba72c01a862f1b01a49e` | ⚠️ Unaudited |
| RewardClaimHelper | periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xaf59d144357dcc8a852ad601f27bf6310b657a7f` | ⚠️ Unaudited |
| SdCrvCompounder | adapter | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x43e54c2e7b3e294de3a155785f52ab49d87b9922` | ⚠️ Unaudited |
| stETHTreasury | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x0e5caa5c889bdf053c9a76395f62267e653afbb0` | ⚠️ Unaudited |
| VeFeeGateway | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8fc7906fc6047679dad53c0c3b40e135486421e9` | ⚠️ Unaudited |
| Vesting | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x592e353c5b97356e99eaf6a72b971ba1c9695593`; ethereum `0x8341889905bdef85b87cb7644a93f7a482f28742`; ethereum `0x84c82d43f1cc64730849f3e389fe3f6d776f7a4e` | ⚠️ Unaudited |
| Vyper_contract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 11 deployments: ethereum `0x261e3aeb4cd1ebfd0fa532d6acdd4b21ebdcd2de`; ethereum `0x4aa2afd5616beec2321a9efd7349400d4f18566a`; ethereum `0x72953a5c32413614d24c29c84a66ae4b59581bbf`; ethereum `0x94be07d45d57c7973a535c1c517bd79e602e051e`; ethereum `0x9b02548de409d7aaee228bfa3ff2bca70e7a2fe8`; ethereum `0xa5d9358c60fc9bd2b508eda17c78c67a43a4458c`; ethereum `0xb3ad645db386d7f6d753b2b9c3f4b853da6890b8`; ethereum `0xb5e7f9cb9d3897808658f1991ad32912959b42e2`; ethereum `0xc5022291ca8281745d173bb855dcd34dda67f2f0`; ethereum `0xe4c09928d834cd58d233cd77b5af3545484b4968`; ethereum `0xf9078fb962a7d13f55d40d49c8aa6472abd1a5a6` | ⚠️ Unaudited |
| Vyper_contract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-232001 | `0x6c280db098db673d30d5b34ec04b6387185d3620` | ⚠️ Unaudited |
| Vyper_contract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-232003 | `0x86e917ad6cb44f9e6c8d9fa012acf0d0cfcf114f` | ⚠️ Unaudited |
| WeightedPool | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x69671c808c8f1c1490a4c9e0145884dfb5631378` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (5)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-231999 | `0x1104b4df568fa7af90b1bed1d78a2f71e748dc8a` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-232000 | `0x3abf0be21e5020007b6e2e201e292a7119bc2b0d` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | ethereum | unit-232002 | `0x71fb0cc62139766383c0f09f1e31375023592841` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-232004 | `0x8a5ef9095795e9740afc91c5bd23b0e48d6bb7ae` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-232005 | `0xb9cd9979718e7e4c341d8d99da3f1290c908fbdd` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [SECBIT_CLever_Report_v1.1.pdf](https://github.com/AladdinDAO/aladdin-v3-contracts/blob/main/audit-reports/SECBIT_CLever_Report_v1.1.pdf) | unknown | Audit | 2022-04 | stale | Direct | n/a | no match | 0 | 0 | 0 | 4 | n/a |
| [SECBIT_CLever_Furnace_Update_20221111.pdf](https://github.com/AladdinDAO/aladdin-v3-contracts/blob/main/audit-reports/SECBIT_CLever_Furnace_Update_20221111.pdf) | SECBIT | Audit | 2022-11 | stale | Direct | n/a | no match | 0 | 0 | 0 | 2 | n/a |
| [SECBIT_AladdinDaoV3_ClevUSD_Strategy_Report.pdf](https://github.com/AladdinDAO/aladdin-v3-contracts/blob/main/audit-reports/SECBIT_AladdinDaoV3_ClevUSD_Strategy_Report.pdf) | SECBIT | Audit | 2022-09 | stale | Direct | n/a | no match | 0 | 0 | 0 | 6 | n/a |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [2412] SECBIT_CLever_Report_v1.1.pdf — no match: No reason recorded
- [2413] SECBIT_CLever_Furnace_Update_20221111.pdf — no match: No reason recorded
- [2414] SECBIT_AladdinDaoV3_ClevUSD_Strategy_Report.pdf — no match: No reason recorded

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| SECBIT_CLever_Report_v1.1.pdf | CLeverCVXLocker.sol | unmatched — not counted | — | — | no |
| SECBIT_CLever_Report_v1.1.pdf | CLeverToken.sol | unmatched — not counted | — | — | no |
| SECBIT_CLever_Report_v1.1.pdf | Furnace.sol | unmatched — not counted | — | — | no |
| SECBIT_CLever_Report_v1.1.pdf | Vesting.sol | unmatched — not counted | — | — | no |
| SECBIT_CLever_Furnace_Update_20221111.pdf | Furnace.sol | unmatched — not counted | — | — | no |
| SECBIT_CLever_Furnace_Update_20221111.pdf | MetaFurnace.sol | unmatched — not counted | — | — | no |
| SECBIT_AladdinDaoV3_ClevUSD_Strategy_Report.pdf | AllInOneGateWay | unmatched — not counted | — | — | no |
| SECBIT_AladdinDaoV3_ClevUSD_Strategy_Report.pdf | CLeverCVXLocker | unmatched — not counted | — | — | no |
| SECBIT_AladdinDaoV3_ClevUSD_Strategy_Report.pdf | ConcentratorStrategy | unmatched — not counted | — | — | no |
| SECBIT_AladdinDaoV3_ClevUSD_Strategy_Report.pdf | CurveBasePoolChecker | unmatched — not counted | — | — | no |
| SECBIT_AladdinDaoV3_ClevUSD_Strategy_Report.pdf | CurveMetaPoolChecker | unmatched — not counted | — | — | no |
| SECBIT_AladdinDaoV3_ClevUSD_Strategy_Report.pdf | Vesting | unmatched — not counted | — | — | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | `0x6c280db098db673d30d5b34ec04b6387185d3620` | Vyper_contract | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x86e917ad6cb44f9e6c8d9fa012acf0d0cfcf114f` | Vyper_contract | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 22 |
| upstream | 0 |
| standard_library | 1 |
| needs_review | 5 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 3
- Inherited remapped matches: 0
- Address-book scope dispositions: 0 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 12 unmatched
- Matched-own operational status: 0 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Zero-match audit list:

- [2412] SECBIT_CLever_Report_v1.1.pdf
- [2413] SECBIT_CLever_Furnace_Update_20221111.pdf
- [2414] SECBIT_AladdinDaoV3_ClevUSD_Strategy_Report.pdf

Fork inheritance lineage and inherited audits are included when available.
