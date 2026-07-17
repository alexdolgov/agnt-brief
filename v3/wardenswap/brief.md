# Agentic Audit Brief: WardenSwap

## Export Authority

- Production state: **published scope**
- Raw selected rows: 4 across 3 audit(s)
- Eligible audit results: 7 (3 matched; 4 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e9e09d06b414f9cd852c36a58d42ce16279465f2d9791cd2a8178f3f54b89ecd`

## Project Overview

- Project: WardenSwap (`wardenswap`)
- Website: [https://www.wardenswap.com](https://www.wardenswap.com)
- Lifecycle: unknown
- Generated: 2026-07-15T18:30:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: arbitrum, avalanche, bsc, ethereum, optimism, polygon
- Contract surface: 30 unique implementations (30 raw deployments)
- Coverage basis: 4/7 confirmed own live verified implementations (57.1%); conservative 57.1% with 0 needs-review implementation(s)
- DeFi Llama TVL: $249,004.42
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for WardenSwap. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 7 contract row(s) across arbitrum, avalanche, bsc, ethereum, optimism, polygon. Structural roles: 7 core. No upgradeable pattern was identified in these rows.

## Logic Topography

- Exact-run contract rows: 7
- Structural roles: core (7)
- Contract kinds: contract (7)
- Detected standards: ownable (5)
- Frameworks: openzeppelin (7)
- Upgradeable-pattern rows: 0

## Fork Analysis

0 of 16 contracts are derived from known codebases. 16 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0x204bafc07e707840aa1f7abdb95cae21742702f6`, chain 1)
- UnnamedContract (`0x39f97198c5dbc193eb962c4b3b7e447091a18eab`, chain 1)
- UnnamedContract (`0x7ea8c22e6dcd7bd69eb180664da68e1f1f11d696`, chain 10)
- UnnamedContract (`0x7a1decf6c24232060f4d76a33a317157549c2093`, chain 56)
- UnnamedContract (`0xa5fdb0822bf82de3315f1766574547115e99016f`, chain 56)
- UnnamedContract (`0x030b8b7bf245e762736e65c0903295447b898c30`, chain 137)
- UnnamedContract (`0x3657952d7ba5a0a4799809b5b6fdff9ec5b46293`, chain 137)
- UnnamedContract (`0x226cb17a52709034e2ec6abe0d2f0a9ebcec1059`, chain 42161)
- UnnamedContract (`0x5ef960eb78b8cfc11e654d03beeb313badf5c7c0`, chain 43114)
- MasterChef (`0xde866dd77b6df6772e320dc92bff0eddc626c674`, chain 56)
- Timelock (`0x7a6981d4dbfa6b8fe4a75b8947363084719a3d86`, chain 56)
- WardenRouterV2 (`0x451ef8d6b645a60115eb8b8bea76b39c0c761004`, chain 56)
- WardenSwap (`0xb75fa2a799fc7935f37500ba9780cbe10aa6610a`, chain 56)
- WardenSwap1_5 (`0x359b9fc0765481569c33ccef23bd14d0878125ae`, chain 56)
- WardenSwap1_5_Aegis (`0x68fac8a95d04b69bdbf66ca554f47a8193d0e5b6`, chain 56)
- WardenswapV2Router02 (`0x71ac17934b60a4610dc58b715b61e45dcbde4054`, chain 56)

## Contract Surface Quality

- Logic-topography rows: 7; live-surface rows included: 7 (7 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 16/21 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 4/7 (57.1%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 16 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 14 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 0
- Confirmed-live implementations: 16 of 30 unique; 14 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 4/21
- Verified + Unaudited implementations: 17
- Verified by bytecode match: 0
- Unverified implementations: 9
- Unique implementations: 30
- Raw deployments: 30
- Audits discovered: 7 (7 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 3
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2022-09 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 5 stale, 2 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 4 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| yAudit | Tier 2 | 3 | 14.3% | 2021-05 |
| CertiK | Tier 2 | 1 | 4.8% | 2021-10 |

## Contract Surface

### ✅ Verified + Audited (4)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| MasterChef | unknown | project_anchor | own_supporting | 0 | bsc | unit-396397 | `0xde866dd77b6df6772e320dc92bff0eddc626c674` | ✅ Audited |
| Timelock | unknown | project_anchor | own_supporting | 0 | bsc | unit-396394 | `0x7a6981d4dbfa6b8fe4a75b8947363084719a3d86` | ✅ Audited |
| WardenSwap | unknown | project_anchor | own_supporting | 0 | bsc | unit-396396 | `0xb75fa2a799fc7935f37500ba9780cbe10aa6610a` | ✅ Audited |
| WardenSwap1_5_Aegis | unknown | project_anchor | own_supporting | 0 | bsc | unit-396391 | `0x68fac8a95d04b69bdbf66ca554f47a8193d0e5b6` | ✅ Audited |

### ⚠️ Verified + Unaudited (17)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| NullifierToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x3598059bfe7ce24ab939bee17bf06101ddfeddd1` | ⚠️ Unaudited |
| SpartanRoute | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xecc52cc4d767d85a451b542c09a0eb1392e0d88a` | ⚠️ Unaudited |
| Tempest | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x372aed0528ea4bc95e1101b2882cb15fca4b226e` | ⚠️ Unaudited |
| WardenACryptoSRouter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x21068601985069868cef87b951763e47cd5e0711` | ⚠️ Unaudited |
| WardenBestRateQuery | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x8d32aa3ce12c9869156eba5e384ea00e81c34eff` | ⚠️ Unaudited |
| WardenBnbRoute | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x83e187bba6f16424b8efcdc21ba13d0e0fa9001a` | ⚠️ Unaudited |
| WardenCosmicBrain | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x3c0d058aab0b47a377c25effc856b84f0ebcb783` | ⚠️ Unaudited |
| WardenCosmoCore | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xbf0955a3c4d3dd474b397ae4cdb8d264065c575a` | ⚠️ Unaudited |
| WardenFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x3657952d7ba5a0a4799809b5b6fdff9ec5b46293` | ⚠️ Unaudited |
| WardenMdexRouter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x00a73c823044ff385d905636ebd48a122517e516` | ⚠️ Unaudited |
| WardenNerveRouter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xd3d8efc4c3289163e52de716212b67e3c571b602` | ⚠️ Unaudited |
| WardenRouterV2 | unknown | project_anchor | own_supporting | 0 | bsc | unit-396388 | `0x451ef8d6b645a60115eb8b8bea76b39c0c761004` | ⚠️ Unaudited |
| WardenSwap1_5 | unknown | project_anchor | own_supporting | 0 | bsc | unit-396387 | `0x359b9fc0765481569c33ccef23bd14d0878125ae` | ⚠️ Unaudited |
| WardenswapV2Router02 | unknown | project_anchor | own_supporting | 0 | bsc | unit-396392 | `0x71ac17934b60a4610dc58b715b61e45dcbde4054` | ⚠️ Unaudited |
| WardenswapValueDefiRouter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x64e16e42493c9d537521a0346c91e254de9ff415` | ⚠️ Unaudited |
| WardenToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x0feadcc3824e7f3c12f40e324a60c23ca51627fc` | ⚠️ Unaudited |
| WardenUV2Router | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x0235910cd3017178f69db8ea98c43f3764cb6978` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (9)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-396378 | `0x204bafc07e707840aa1f7abdb95cae21742702f6` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-396379 | `0x39f97198c5dbc193eb962c4b3b7e447091a18eab` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-396382 | `0x7ea8c22e6dcd7bd69eb180664da68e1f1f11d696` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-396393 | `0x7a1decf6c24232060f4d76a33a317157549c2093` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-396395 | `0xa5fdb0822bf82de3315f1766574547115e99016f` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-396383 | `0x030b8b7bf245e762736e65c0903295447b898c30` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-396384 | `0x3657952d7ba5a0a4799809b5b6fdff9ec5b46293` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-396385 | `0x226cb17a52709034e2ec6abe0d2f0a9ebcec1059` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | avalanche | unit-396386 | `0x5ef960eb78b8cfc11e654d03beeb313badf5c7c0` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [DL audit link](https://skynet.certik.com/projects/wardenswap) | CertiK | Audit | 2021-05 | stale | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |
| [Audit Report Valix](https://github.com/valixconsulting/audit-reports/blob/main/ValixConsulting-Audit-Report-WardenFinance-Aegis-and-AegisL2-v1.0.pdf) | CertiK | Audit | 2021-10 | stale | Direct | contract_name | matched | 1 | 0 | 0 | 11 | high |
| [Audited by Certik](https://docs.wardenswap.finance/warden/transparency/audited-by-certik.md) | CertiK | Audit | n/a | unknown | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |
| [Audited by Valix](https://docs.wardenswap.finance/warden/transparency/audited-by-valix.md) | Valix | Audit | n/a | unknown | Direct | contract_name | no match | 0 | 0 | 0 | 2 | low |
| [ValixConsulting-Audit-Report-WardenFinance-Wondrous-X-v1.0.pdf](https://github.com/valixconsulting/audit-reports/blob/main/ValixConsulting-Audit-Report-WardenFinance-Wondrous-X-v1.0.pdf) | Valix Consulting | Audit | 2022-09 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 2 | high |
| [WardenSwap Farm](https://github.com/Wardenswap/warden-farm/blob/main/audits/WardenSwap-Farm-Audit.pdf) | yAudit | Audit | 2021-05 | stale | Direct | contract_name | matched | 2 | 0 | 0 | 3 | high |
| [WardenSwap Protocol](https://github.com/Wardenswap/warden-protocol/blob/main/audits/WardenSwap-Protocal-Audit.pdf) | yAudit | Audit | 2021-05 | stale | Direct | contract_name | matched | 1 | 0 | 0 | 13 | high |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [18622] DL audit link — no match: The provided text is a project overview page from CertiK Skynet, not an audit report. It mentions 'Warden - WardenSwap Farm' and 'Warden - WardenSwap Protocol' but these are not explicitly listed as contracts in scope. No audit report content with scope section or findings was found.
- [18623] Audit Report Valix — matched: Extracted contracts from scope table and audited files list. Date found in executive summary: 'published on October 6, 2021'.
- [18624] Audited by Certik — no match: The document is a summary blog post, not the full audit report. It mentions two audit reports (WardenSwap Farm and WardenSwap Protocol) but does not list specific contract names or file paths. No scope section is present.
- [18625] Audited by Valix — no match: The report is a blog post summarizing an audit by Valix Consulting. It mentions 'Aegis' and 'Aegis L2' as the audited contracts but does not provide specific contract names, file paths, or a clear scope section. The audit date is not provided in the text.
- [18626] ValixConsulting-Audit-Report-WardenFinance-Wondrous-X-v1.0.pdf — no match: Extracted WondrousX and SaleSwitch from scope table. Excluded WonderousXFusion.sol as explicitly excluded. Excluded OpenZeppelin imports as third-party dependencies.
- [18627] WardenSwap Farm — matched: Scope table lists 5 contracts: MasterChef.sol, Tempest.sol, Timelock.sol, WardenToken.sol, Multicall.sol. Files in scope also list MasterChef.sol, WardenToken.sol, Tempest.sol. Audit date is May 7th, 2021.
- [18628] WardenSwap Protocol — matched: Extracted 14 contracts from the scope table and file listings. Audit date found on cover page: May 8th, 2021.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| Audit Report Valix | WardenSwap1_5_Aegis | own contract | WardenSwap1_5_Aegis (selected) `0x68fac8a95d04b69bdbf66ca554f47a8193d0e5b6` — deployed 2021-08-25 11:15:24+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Audit Report Valix | WardenSwap1_5_Aegis_L2 | unmatched — not counted | — | listed in scope table | no |
| Audit Report Valix | WardenCosmoCore | unmatched — not counted | — | listed in scope table and findings | no |
| Audit Report Valix | WardenDataDeserialize | unmatched — not counted | — | listed in scope table and findings | no |
| Audit Report Valix | BytesLib | unmatched — not counted | — | listed in scope table and findings | no |
| Audit Report Valix | WardenDataSerialize | unmatched — not counted | — | listed in scope table and findings | no |
| Audit Report Valix | IWardenCosmicBrainForL2 | unmatched — not counted | — | listed in audited files | no |
| Audit Report Valix | IWardenCosmoCore0_8 | unmatched — not counted | — | listed in audited files | no |
| Audit Report Valix | IWardenPostTrade | unmatched — not counted | — | listed in audited files | no |
| Audit Report Valix | IWETH | unmatched — not counted | — | listed in audited files | no |
| Audit Report Valix | IWardenTradingRoute0_8 | unmatched — not counted | — | listed in audited files | no |
| Audit Report Valix | IArbAddressTable | unmatched — not counted | — | listed in audited files | no |
| Audited by Valix | Aegis | unmatched — not counted | — | mentioned as audited smart contract | no |
| Audited by Valix | Aegis L2 | unmatched — not counted | — | mentioned as audited smart contract | no |
| ValixConsulting-Audit-Report-WardenFinance-Wondrous-X-v1.0.pdf | WondrousX | unmatched — not counted | — | listed in scope table and findings | no |
| ValixConsulting-Audit-Report-WardenFinance-Wondrous-X-v1.0.pdf | SaleSwitch | unmatched — not counted | — | listed in scope table and findings | no |
| WardenSwap Farm | MasterChef | own contract | MasterChef (selected) `0xde866dd77b6df6772e320dc92bff0eddc626c674` — deployed 2021-03-15 19:00:16+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| WardenSwap Farm | Tempest | unmatched — not counted | — | listed in scope table and files in scope | no |
| WardenSwap Farm | Timelock | own contract | Timelock (selected) `0x7a6981d4dbfa6b8fe4a75b8947363084719a3d86` — deployed 2021-03-17 14:11:19+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| WardenSwap Farm | WardenToken | unmatched — not counted | — | listed in scope table and files in scope | no |
| WardenSwap Farm | Multicall | unmatched — not counted | — | listed in scope table | no |
| WardenSwap Protocol | Partnership | unmatched — not counted | — | listed in scope table | no |
| WardenSwap Protocol | RoutingManagement | unmatched — not counted | — | listed in scope table | no |
| WardenSwap Protocol | WardenSwap | own contract | WardenSwap (selected) `0xb75fa2a799fc7935f37500ba9780cbe10aa6610a` — deployed 2021-03-15 20:37:58+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| WardenSwap Protocol | WardenBestRateQuery | unmatched — not counted | — | listed in scope table | no |
| WardenSwap Protocol | IUniswapV2Router | unmatched — not counted | — | listed in scope table | no |
| WardenSwap Protocol | IWardenTradingRoute | unmatched — not counted | — | listed in scope table | no |
| WardenSwap Protocol | CurveSusdRoute | unmatched — not counted | — | listed in scope table | no |
| WardenSwap Protocol | SpartanRoute | unmatched — not counted | — | listed in scope table | no |
| WardenSwap Protocol | SushiswapRoute | unmatched — not counted | — | listed in scope table | no |
| WardenSwap Protocol | UniswapV2PoolToPoolTokenEthTokenRoute | unmatched — not counted | — | listed in scope table | no |
| WardenSwap Protocol | UniswapV2Route | unmatched — not counted | — | listed in scope table | no |
| WardenSwap Protocol | UniswapV2TokenEthTokenRoute | unmatched — not counted | — | listed in scope table | no |
| WardenSwap Protocol | WardenCurveRouter | unmatched — not counted | — | listed in scope table | no |
| WardenSwap Protocol | WardenUV2Router | unmatched — not counted | — | listed in scope table | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| bsc | `0x451ef8d6b645a60115eb8b8bea76b39c0c761004` | WardenRouterV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0x359b9fc0765481569c33ccef23bd14d0878125ae` | WardenSwap1_5 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0x71ac17934b60a4610dc58b715b61e45dcbde4054` | WardenswapV2Router02 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 21 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 9 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 4
- Inherited remapped matches: 0
- Address-book scope dispositions: 4 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 31 unmatched
- Matched-own operational status: 4 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=4, low=3
- Match method counts: unique_name=4

Zero-match audit list:

- [18622] DL audit link
- [18624] Audited by Certik
- [18625] Audited by Valix
- [18626] ValixConsulting-Audit-Report-WardenFinance-Wondrous-X-v1.0.pdf

Fork inheritance lineage and inherited audits are included when available.
