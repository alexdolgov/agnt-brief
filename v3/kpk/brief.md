# Agentic Audit Brief: KPK

## Export Authority

- Production state: **published scope**
- Raw selected rows: 0 across 0 audit(s)
- Eligible audit results: 8 (0 matched; 8 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e9e09d06b414f9cd852c36a58d42ce16279465f2d9791cd2a8178f3f54b89ecd`

## Project Overview

- Project: KPK (`kpk`)
- Website: [https://kpk.io/](https://kpk.io/)
- Lifecycle: unknown
- Generated: 2026-07-15T18:30:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: arbitrum, base, bsc, ethereum, gnosis, optimism, polygon
- Contract surface: 39 unique implementations (39 raw deployments)
- Coverage basis: 0/3 confirmed own live verified implementations (0.0%); conservative 0.0% with 0 needs-review implementation(s)
- DeFi Llama TVL: $149,875,170.34
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for KPK. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 3 contract row(s) across ethereum. Structural roles: 2 supporting, 1 core. 2 row(s) use upgradeable patterns.

## Logic Topography

- Exact-run contract rows: 3
- Structural roles: supporting (2), core (1)
- Contract kinds: contract (3)
- Detected standards: erc1967proxy (1), ownable (1)
- Frameworks: openzeppelin-upgradeable (2)
- Upgradeable-pattern rows: 2

## Fork Analysis

0 of 7 contracts are derived from known codebases. 7 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0x6d1a4c0878ad24793b1655ae1f78cfa4522ba765`, chain 1)
- UnnamedContract (`0x7bb5e307edf80630f153bd28789b4365efe4cce3`, chain 1)
- UnnamedContract (`0x97ab9e7a2275d4bd86913809b3c29c4dda49c694`, chain 1)
- UnnamedContract (`0xed01a1fe4e020ca901f43e17b6203a7e0cea818c`, chain 1)
- ERC1967Proxy (`0xa57a641417fe2703c5364c2f57f35297b16189a5`, chain 1)
- GnosisSafeProxy (`0x38f6a1b46144faee6a6d9f79d8de264c18e23848`, chain 1)
- Roles (`0x2ba2f894d0ac9435346a40521ae513d1be6d9b17`, chain 1)

## Contract Surface Quality

- Logic-topography rows: 3; live-surface rows included: 3 (3 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 7/7 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 0/3 (0.0%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 7 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 32 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 4 standard proxy/library)
- Proxy deployments represented within implementation groups: 7
- Confirmed-live implementations: 7 of 39 unique; 32 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 0/33
- Verified + Unaudited implementations: 33
- Verified by bytecode match: 0
- Unverified implementations: 6
- Unique implementations: 39
- Raw deployments: 39
- Audits discovered: 5 (5 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2025-12 (fresh)
- Audit staleness (calendar age): 3 fresh, 0 aging, 2 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (33)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| Aura | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x45006c280bf3dc44d7d370c9a801c95ec501aa3e` | ⚠️ Unaudited |
| BeaconProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x6cbcc646d7422b734c6fc0954a1c3ca87b1b4ceb` | ⚠️ Unaudited |
| CapBalanceOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb812cc304cb417b635470681160e75cffb0006b0` | ⚠️ Unaudited |
| cbETH_PriceOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x957d726b1848d074fc0208017023b64f393c5bfd` | ⚠️ Unaudited |
| CrossRatePriceAdapter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x70dd216ccd75551a170e361bebd33db64fc0cfae` | ⚠️ Unaudited |
| DefillamaCompressor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x81cb9ea2d59414ab13ec0567efb09767ddbe897a` | ⚠️ Unaudited |
| eETH_PriceOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9c2ea278a490284d775bdd7899972a35e86f9713` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x2f77a41c17c7cab30cc320112b649ab8b070617e` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | project_anchor | own_supporting | 1 | ethereum | unit-244391 | `0xa57a641417fe2703c5364c2f57f35297b16189a5` | ⚠️ Unaudited |
| ERC4626WrapBalanceOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x89b0157921b4efb88dcf96f570d8c07d675dc4f1` | ⚠️ Unaudited |
| EulerEarn | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2b47c128b35dddcb66ce2fa5b33c95314a7de245` | ⚠️ Unaudited |
| ezETH_PriceOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x305bdb829066c9ce15d5a2af0c4267b326c8a1cf` | ⚠️ Unaudited |
| GearboxMarketBalanceOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x02d6b6613952db1ae1294c81f443f03195762bba` | ⚠️ Unaudited |
| GnosisSafe | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x4f2083f5fbede34c2714affb3105539775f7fe64` | ⚠️ Unaudited |
| GnosisSafeL2 | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x0000aeb716a0df7a9a1aad119b772644bc089da8` | ⚠️ Unaudited |
| GnosisSafeProxy | unknown | project_anchor | own_supporting | 1 | ethereum | unit-244392 | `0x38f6a1b46144faee6a6d9f79d8de264c18e23848` | ⚠️ Unaudited |
| KpkGovernor | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x488da14cff5b42a31684d4c6999ea0b1c7693211` | ⚠️ Unaudited |
| KpkShares | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x38ef95d5f8b7a276a5c1a38fdc358d977c88ab42` | ⚠️ Unaudited |
| KpkToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5af203018e9043f2aaa5622c3f5014b0aa82904c` | ⚠️ Unaudited |
| MarketConfigurator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1b265b97eb169fb6668e3258007c3b0242c7bdbe` | ⚠️ Unaudited |
| MetaMorphoV1_1 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0c6aec603d48ebf1cecc7b247a2c3da08b398dc1` | ⚠️ Unaudited |
| PoolV3 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9396dcbf78fc526bb003665337c5e73b699571ef` | ⚠️ Unaudited |
| rETH_PriceOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7e6366a015e7c72d238e0e289e1652eaa06f962e` | ⚠️ Unaudited |
| Roles | unknown | project_anchor | own_supporting | 0 | ethereum | unit-244386 | `0x2ba2f894d0ac9435346a40521ae513d1be6d9b17` | ⚠️ Unaudited |
| rsETH_PriceOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0f580e84d92e89150be94fcaa4d03c6b855d2fd8` | ⚠️ Unaudited |
| StakeWiseV3OsTokenBalanceOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8ecc77db1f9d2b1dfe3948b53d4d0e6c1569d50e` | ⚠️ Unaudited |
| sUSDe_PriceOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xde04bb0a8fd927c137547401f30213fcc7607d63` | ⚠️ Unaudited |
| sUSDS_PriceOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x76752e33050f2011cacd3edbbb8125ee1e49c140` | ⚠️ Unaudited |
| syrupUSDC_PriceOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc73ed3f07e2d1d6c59294936c12048dae2b8cbe7` | ⚠️ Unaudited |
| TimelockController | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xee27fad903feca9e78c5075803c8833e885b2b7a` | ⚠️ Unaudited |
| VaultV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1a1985f50352b58090eb36425afdfacbac7806f4` | ⚠️ Unaudited |
| weETH_PriceOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5e7a6154ace2ec453de9527d7f81b13e7b5e5b59` | ⚠️ Unaudited |
| wstETH_PriceOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x35b2aae4de9e66cd6d86fc2ed360e9bcb79a4561` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (6)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-244387 | `0x6d1a4c0878ad24793b1655ae1f78cfa4522ba765` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-244388 | `0x7bb5e307edf80630f153bd28789b4365efe4cce3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x933eaa3f9b237be3f8bd88beeee643e7ae72595d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-244389 | `0x97ab9e7a2275d4bd86913809b3c29c4dda49c694` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x99b9f5f24205cb88e33b1cc72008f644fc23768b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-244390 | `0xed01a1fe4e020ca901f43e17b6203a7e0cea818c` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [cantina-kpk-oivs-oct-2025.pdf](https://raw.githubusercontent.com/karpatkey/onchain-investment-vehicles/main/audit-reports/cantina-kpk-oivs-oct-2025.pdf) | Cantina | Audit | 2025-10 | fresh | Direct | contract_name | no match | 0 | 0 | 0 | 4 | high |
| [team-omega-kpk-oivs-oct-2025.pdf (also discovered via alternate URL)](https://raw.githubusercontent.com/karpatkey/onchain-investment-vehicles/main/audit-reports/team-omega-kpk-oivs-oct-2025.pdf) | Team Omega | Audit | 2025-10 | fresh | Direct | contract_name | no match | 0 | 0 | 0 | 2 | high |
| [05_04_2024_Omniscia.pdf (also discovered via alternate URL)](https://raw.githubusercontent.com/karpatkey/kpk-token/main/audits/05_04_2024_Omniscia.pdf) | Omniscia | Audit | 2024-04 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 1 | high |
| [15_04_2024_G0-Group.pdf (also discovered via alternate URL)](https://raw.githubusercontent.com/karpatkey/kpk-token/main/audits/15_04_2024_G0-Group.pdf) | G0 Group | Audit | 2024-04 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 1 | high |
| [cantina-kpk-oivs-oct-2025.pdf](https://github.com/karpatkey/onchain-investment-vehicles/blob/main/audit-reports/cantina-kpk-oivs-oct-2025.pdf) | Spearbit | Audit | 2025-12 | fresh | Direct | contract_name | no match | 0 | 0 | 0 | 4 | high |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [21250] cantina-kpk-oivs-oct-2025.pdf — no match: Scope section explicitly lists 4 files under contracts/src/. Audit date is December 17, 2025 from the cover page.
- [21251] team-omega-kpk-oivs-oct-2025.pdf — no match: Scope explicitly lists two files: IkpkShares.sol and kpkShares.sol. Audit date from cover page.
- [21252] 05_04_2024_Omniscia.pdf — no match: Only one contract (karpatkeyToken) is explicitly listed in scope. The report mentions 'Token & Governor module' but only karpatkeyToken.sol is assessed.
- [21253] 15_04_2024_G0-Group.pdf — no match: Only one contract file is listed in scope.
- [24103] cantina-kpk-oivs-oct-2025.pdf — no match: Scope section explicitly lists four files: IkpkShares.sol, kpkShares.sol, IPerfFeeModule.sol, RecoverFunds.sol. Audit date is December 17, 2025 from the cover page.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| cantina-kpk-oivs-oct-2025.pdf | IPerfFeeModule | unmatched — not counted | — | listed in scope section | no |
| cantina-kpk-oivs-oct-2025.pdf | IkpkShares | unmatched — not counted | — | listed in scope section | no |
| cantina-kpk-oivs-oct-2025.pdf | kpkShares | unmatched — not counted | — | listed in scope section | no |
| cantina-kpk-oivs-oct-2025.pdf | RecoverFunds | unmatched — not counted | — | listed in scope section | no |
| team-omega-kpk-oivs-oct-2025.pdf | kpkShares | unmatched — not counted | — | listed in scope | no |
| team-omega-kpk-oivs-oct-2025.pdf | IkpkShares | unmatched — not counted | — | listed in scope | no |
| 05_04_2024_Omniscia.pdf | karpatkeyToken | unmatched — not counted | — | listed in scope table as Target Contracts Assessed | no |
| 15_04_2024_G0-Group.pdf | karpatkeyToken | unmatched — not counted | — | listed in scope | no |
| cantina-kpk-oivs-oct-2025.pdf | IkpkShares | unmatched — not counted | — | listed in scope section: contracts/src/fund/IkpkShares.sol | no |
| cantina-kpk-oivs-oct-2025.pdf | kpkShares | unmatched — not counted | — | listed in scope section: contracts/src/fund/kpkShares.sol | no |
| cantina-kpk-oivs-oct-2025.pdf | IPerfFeeModule | unmatched — not counted | — | listed in scope section: contracts/src/fund/FeeModules/IPerfFeeModule.sol | no |
| cantina-kpk-oivs-oct-2025.pdf | RecoverFunds | unmatched — not counted | — | listed in scope section: contracts/src/RecoverFunds.sol | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | `0x2ba2f894d0ac9435346a40521ae513d1be6d9b17` | Roles | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 24 |
| upstream | 2 |
| standard_library | 7 |
| needs_review | 6 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 5
- Inherited remapped matches: 0
- Address-book scope dispositions: 0 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 12 unmatched
- Matched-own operational status: 0 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=5
- Match method counts: n/a

Zero-match audit list:

- [21250] cantina-kpk-oivs-oct-2025.pdf
- [21251] team-omega-kpk-oivs-oct-2025.pdf
- [21252] 05_04_2024_Omniscia.pdf
- [21253] 15_04_2024_G0-Group.pdf
- [24103] cantina-kpk-oivs-oct-2025.pdf

Fork inheritance lineage and inherited audits are included when available.
