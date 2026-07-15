# Agentic Audit Brief: BladeSwap

## Export Authority

- Production state: **published scope**
- Raw selected rows: 0 across 0 audit(s)
- Eligible audit results: 1 (0 matched; 1 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e9e09d06b414f9cd852c36a58d42ce16279465f2d9791cd2a8178f3f54b89ecd`

## Project Overview

- Project: BladeSwap (`bladeswap`)
- Website: [https://bladeswap.xyz](https://bladeswap.xyz)
- Lifecycle: unknown
- Generated: 2026-07-15T18:30:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: blast
- Contract surface: 71 unique implementations (71 raw deployments)
- Coverage basis: 0/9 confirmed own live verified implementations (0.0%); conservative 0.0% with 0 needs-review implementation(s)
- DeFi Llama TVL: $197,728.00
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for BladeSwap. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 9 contract row(s) across blast. Structural roles: 5 core, 4 supporting. 1 row(s) use upgradeable patterns.

## Logic Topography

- Exact-run contract rows: 9
- Structural roles: core (5), supporting (4)
- Contract kinds: contract (9)
- Detected standards: accesscontrol (3), erc165 (3), erc20 (1), multicall (1)
- Frameworks: openzeppelin (7), prb-math (2), foundry (1), openzeppelin-upgradeable (1)
- Upgradeable-pattern rows: 1

## Fork Analysis

0 of 29 contracts are derived from known codebases. 29 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0x4e9f4e...b61a4e`, chain 81457)
- UnnamedContract (`0x52de29...b18856`, chain 81457)
- UnnamedContract (`0x59dcec...1d54cd`, chain 81457)
- UnnamedContract (`0x7553b3...bdfdd6`, chain 81457)
- UnnamedContract (`0x75cb3e...cd68bd`, chain 81457)
- UnnamedContract (`0x7adce9...abb219`, chain 81457)
- UnnamedContract (`0x86ba05...38fd22`, chain 81457)
- UnnamedContract (`0x918d73...471ab1`, chain 81457)
- UnnamedContract (`0x969195...9ba348`, chain 81457)
- UnnamedContract (`0x9b6d09...4d93c5`, chain 81457)
- UnnamedContract (`0xa0cfb4...24a40e`, chain 81457)
- UnnamedContract (`0xa41dd8...cab565`, chain 81457)
- UnnamedContract (`0xa87dbf...38cca5`, chain 81457)
- UnnamedContract (`0xcadaf1...2a2215`, chain 81457)
- UnnamedContract (`0xd1fedd...ea82f4`, chain 81457)
- UnnamedContract (`0xdadb18...9740fa`, chain 81457)
- UnnamedContract (`0xe1d6a7...749d66`, chain 81457)
- UnnamedContract (`0xf8f2ab...b95d85`, chain 81457)
- UnnamedContract (`0xfa108c...adfc83`, chain 81457)
- UnnamedContract (`0xffeecb...7cb593`, chain 81457)
- AlgebraVaultFactoryStub (`0x013802...ceb8fd`, chain 81457)
- Box (`0x194fa3...b3e943`, chain 81457)
- FarmingCenter (`0x8d2eb2...9bc168`, chain 81457)
- Lens (`0xce54ab...5e376f`, chain 81457)
- SimpleAuthorizer (`0x06b143...c9d9cb`, chain 81457)
- StableSwapPoolFactory (`0x5f0af3...3a77f2`, chain 81457)
- SwapFacet (`0x10f6b1...95382c`, chain 81457)
- TimelockController (`0x58534a...7f8396`, chain 81457)
- XYKPool (`0xf4c920...0f6ec3`, chain 81457)

## Contract Surface Quality

- Logic-topography rows: 9; live-surface rows included: 9 (9 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 29/32 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 0/9 (0.0%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 29 own, 2 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 40 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 1 standard proxy/library)
- Proxy deployments represented within implementation groups: 2
- Confirmed-live implementations: 29 of 71 unique; 42 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 0/44
- Verified + Unaudited implementations: 44
- Verified by bytecode match: 0
- Unverified implementations: 27
- Unique implementations: 71
- Raw deployments: 71
- Audits discovered: 1 (1 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: n/a (unknown)
- Audit staleness (calendar age): 0 fresh, 0 aging, 0 stale, 1 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (44)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| AdminFacet | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0x8be972...1ed3c1` | ⚠️ Unaudited |
| AlgebraBladeIncentiveMaker | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0x12aaba...6e0fb1` | ⚠️ Unaudited |
| AlgebraCommunityVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0x089124...89fe71` | ⚠️ Unaudited |
| AlgebraConverter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0x6b75bb...9bf022` | ⚠️ Unaudited |
| AlgebraEternalFarming | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0x23d3a3...af47f3` | ⚠️ Unaudited |
| AlgebraFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0x1757f1...d97a1e` | ⚠️ Unaudited |
| AlgebraInterfaceMulticall | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0x1ab39a...739b4e` | ⚠️ Unaudited |
| AlgebraPoolDeployer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0x3120cb...827835` | ⚠️ Unaudited |
| AlgebraVaultFactoryStub | unknown | project_anchor | own_supporting | 0 | blast | unit-380641 | `0x013802...ceb8fd` | ⚠️ Unaudited |
| BasePluginV1Factory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0x073cce...81f6c3` | ⚠️ Unaudited |
| Blade | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0x3a4394...322cbf` | ⚠️ Unaudited |
| Box | unknown | project_anchor | own_supporting | 0 | blast | unit-380643 | `0x194fa3...b3e943` | ⚠️ Unaudited |
| Cherry | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0x758106...05c333` | ⚠️ Unaudited |
| Claim | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0x7fef67...1c083b` | ⚠️ Unaudited |
| FarmingCenter | unknown | project_anchor | own_supporting | 0 | blast | unit-380656 | `0x8d2eb2...9bc168` | ⚠️ Unaudited |
| InspectorFacet | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0x8e02ad...2e4b5a` | ⚠️ Unaudited |
| Lens | unknown | project_anchor | own_supporting | 0 | blast | unit-380664 | `0xce54ab...5e376f` | ⚠️ Unaudited |
| LinearBribeFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0x5045c4...6946d9` | ⚠️ Unaudited |
| MarketMakerFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0x0a3c4c...b971da` | ⚠️ Unaudited |
| NFT | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0x757105...8dbf08` | ⚠️ Unaudited |
| NFTHolderFacet | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0x2641a0...97377c` | ⚠️ Unaudited |
| NonfungiblePositionManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0x4e3219...a0094d` | ⚠️ Unaudited |
| OverflowICO | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0x1bc5f0...2b4222` | ⚠️ Unaudited |
| PlainOverflowICO | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0x06ef68...e9a41f` | ⚠️ Unaudited |
| Quoter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0x96d1e7...2a6522` | ⚠️ Unaudited |
| QuoterV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0x4b1632...34ed00` | ⚠️ Unaudited |
| SalaryPayment | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0x6c48d1...6df14b` | ⚠️ Unaudited |
| SimpleAuthorizer | unknown | project_anchor | own_supporting | 0 | blast | unit-380642 | `0x06b143...c9d9cb` | ⚠️ Unaudited |
| StableSwapPoolFactory | unknown | project_anchor | own_supporting | 0 | blast | unit-380650 | `0x5f0af3...3a77f2` | ⚠️ Unaudited |
| SwapAuxillaryFacet | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0x94052f...298620` | ⚠️ Unaudited |
| SwapFacet | unknown | project_anchor | own_supporting | 1 | blast | unit-380672 | `0x10f6b1...95382c` | ⚠️ Unaudited |
| SwapHelperFacet | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0x1e4f59...1727dd` | ⚠️ Unaudited |
| SwapHelperFacet2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0x0f8020...05cb7b` | ⚠️ Unaudited |
| SwapRouter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0x422f44...7db286` | ⚠️ Unaudited |
| TickLens | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0x17fbdc...d2f3f0` | ⚠️ Unaudited |
| TimelockController | unknown | project_anchor | own_supporting | 0 | blast | unit-380648 | `0x58534a...7f8396` | ⚠️ Unaudited |
| TokenFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0x3ab5ba...b04997` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | external_dependency_or_infra | standard_proxy_or_library (excluded) | 1 | blast | n/a | `0x3cc69c...5a64d7` | ⚠️ Unaudited |
| VeBlade | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0x1f12e6...cfe07c` | ⚠️ Unaudited |
| VelocoreLens | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0x11879d...8a2ec7` | ⚠️ Unaudited |
| Voter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0x57bda1...4d54f9` | ⚠️ Unaudited |
| WETHConverter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0x5cf055...06d2ff` | ⚠️ Unaudited |
| XYKPool | unknown | project_anchor | own_supporting | 0 | blast | unit-380668 | `0xf4c920...0f6ec3` | ⚠️ Unaudited |
| XYKPoolFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0x40f1da...fac083` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (27)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0x119ade...9f21d0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0x2f793c...ba4875` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | blast | unit-380644 | `0x40c9b5...a4b673` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | blast | unit-380646 | `0x4e9f4e...b61a4e` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | blast | unit-380647 | `0x52de29...b18856` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | blast | unit-380649 | `0x59dcec...1d54cd` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | blast | unit-380651 | `0x718867...e06235` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | blast | unit-380652 | `0x7553b3...bdfdd6` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | blast | unit-380653 | `0x75cb3e...cd68bd` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | blast | unit-380654 | `0x7adce9...abb219` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0x7d9880...5f191b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0x825d2d...f4d557` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0x82eb3c...3e5deb` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | blast | unit-380655 | `0x86ba05...38fd22` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | blast | unit-380657 | `0x918d73...471ab1` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | blast | unit-380658 | `0x969195...9ba348` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | blast | unit-380659 | `0x9b6d09...4d93c5` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | blast | unit-380660 | `0xa0cfb4...24a40e` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | blast | unit-380661 | `0xa41dd8...cab565` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | blast | unit-380662 | `0xa87dbf...38cca5` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | blast | unit-380663 | `0xcadaf1...2a2215` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | blast | unit-380665 | `0xd1fedd...ea82f4` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | blast | unit-380666 | `0xdadb18...9740fa` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | blast | unit-380667 | `0xe1d6a7...749d66` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | blast | unit-380669 | `0xf8f2ab...b95d85` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | blast | unit-380670 | `0xfa108c...adfc83` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | blast | unit-380671 | `0xffeecb...7cb593` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [- [Audits]()](https://bladeswap.gitbook.io/bladeswap/resources/audits.md) | unknown | Audit | n/a | unknown | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [19575] - [Audits]() — no match: The document is a summary page listing multiple audits (Zokyo, Scalebit, Hacken) with dates and links, but does not contain the actual audit reports or scope sections listing specific contracts. No contract names are identifiable.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

- No persisted address-book scope analysis is available.

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| blast | `0x013802...ceb8fd` | AlgebraVaultFactoryStub | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| blast | `0x194fa3...b3e943` | Box | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| blast | `0x8d2eb2...9bc168` | FarmingCenter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| blast | `0xce54ab...5e376f` | Lens | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| blast | `0x06b143...c9d9cb` | SimpleAuthorizer | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| blast | `0x5f0af3...3a77f2` | StableSwapPoolFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| blast | `0x10f6b1...95382c` | SwapFacet | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| blast | `0xf4c920...0f6ec3` | XYKPool | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 42 |
| upstream | 0 |
| standard_library | 2 |
| needs_review | 27 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Address-book scope dispositions: 0 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 0 unmatched
- Matched-own operational status: 0 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: low=1
- Match method counts: n/a

Zero-match audit list:

- [19575] - [Audits]()

Fork inheritance lineage and inherited audits are included when available.
