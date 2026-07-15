# Agentic Audit Brief: Supernova

## Export Authority

- Production state: **published scope**
- Raw selected rows: 21 across 1 audit(s)
- Eligible audit results: 1 (1 matched; 0 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `7fbef0dcf68cde7195f117d9b41f1e6d89891da495a42b57ae29b5e338972213`

## Project Overview

- Project: Supernova (`supernova`)
- Website: [https://supernova.xyz/](https://supernova.xyz/)
- Lifecycle: unknown
- Generated: 2026-07-15T18:00:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: ethereum
- Contract surface: 44 unique implementations (49 raw deployments)
- Coverage basis: 21/44 confirmed own live verified implementations (47.7%); conservative 47.7% with 0 needs-review implementation(s)
- DeFi Llama TVL: $956,241.00
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for Supernova. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 62 contract row(s) across ethereum. Structural roles: 29 unclassified, 19 supporting, 14 core. 4 row(s) use upgradeable patterns.

## Logic Topography

- Exact-run contract rows: 62
- Structural roles: unclassified (29), supporting (19), core (14)
- Contract kinds: contract (59), unclassified (3)
- Detected standards: ownable (8), erc165 (3), multicall (3), erc721 (2), accesscontrol (1), erc20 (1), ownable2step (1)
- Frameworks: openzeppelin (17), openzeppelin-upgradeable (4), foundry (1)
- Upgradeable-pattern rows: 4

## Fork Analysis

2 of 31 contracts are derived from known codebases. 29 contracts have no detected origin.

### Forked Contracts

**AlgebraEternalFarming** (`0x1e8626...70a337`, chain 1)
Origin: bladeswap (`0x23d3a3...af47f3`)
Containment: 84.0% - 21 functions inherited
Centroid audit status: pending_validation

Additions (unaudited):
- createEternalFarming(IncentiveKey,IncentiveParams,address,address)
- deactivateIncentive(IncentiveKey,address)
- incentiveKeys(address)

Removals (removed from original):
- claimWethAndUsdbYield(address)
- createEternalFarming(IncentiveKey,IncentiveParams,address)
- deactivateIncentive(IncentiveKey)
- setCollector(address)

**AlgebraFactory** (`0x44b7fb...e89c55`, chain 1)
Origin: supernova (`0x01f99c...3ade8c`)
Containment: 100.0% - 24 functions inherited
Centroid audit status: pending_validation

Additions (unaudited): none

Removals (removed from original): none

### Original Contracts (no fork detected - full audit scope)

- AlgebraCustomPoolEntryPoint (`0xb86a85...831288`, chain 1)
- AlgebraInterfaceMulticall (`0xc9ba2e...041f18`, chain 1)
- AlgebraPoolDeployer (`0x45bc0f...deba45`, chain 1)
- AlgebraVaultFactory (`0xafc049...03038d`, chain 1)
- BasePluginV3Factory (`0xdbfd67...f99b97`, chain 1)
- BlackholePairAPIV2 (`0x2b9fc4...4963dc`, chain 1)
- CustomPoolDeployer (`0x2493b3...89af4a`, chain 1)
- FarmingCenter (`0x428ea5...6c91af`, chain 1)
- FeeDiscountRegistry (`0x31eda5...3f5975`, chain 1)
- NFTDescriptor (`0xabca00...851045`, chain 1)
- NonfungiblePositionManager (`0x00d5bb...c8aaaa`, chain 1)
- PairBootstrapper (`0x7f8f2b...c1cb66`, chain 1)
- PairGenerator (`0x42a7a5...69bbb8`, chain 1)
- PermissionsRegistry (`0x344eec...67c28d`, chain 1)
- PluginV3Deployer (`0x48012a...92eee3`, chain 1)
- Quoter (`0xf9439c...529e41`, chain 1)
- QuoterV2 (`0x821755...efb727`, chain 1)
- RewardsDistributor (`0xb3410a...90ea97`, chain 1)
- RouterV2 (`0xbfae8e...e3058f`, chain 1)
- SecurityRegistry (`0x454e62...79bdfd`, chain 1)
- SuperNova (`0x00da84...200c78`, chain 1)
- SuperNovaClaims (`0x313fdf...961309`, chain 1)
- SwapRouter (`0x72d63a...91c8ac`, chain 1)
- TickLens (`0x4e6a86...a7d6c9`, chain 1)
- TokenHandler (`0xa1154f...6de201`, chain 1)
- veNFTAPI (`0x85dc70...9e5881`, chain 1)
- VoterFactoryLib (`0xbd08f4...a95278`, chain 1)
- VotingBalanceLogic (`0xed686a...319847`, chain 1)
- VotingEscrow (`0x4c3e76...ee1d44`, chain 1)

## Contract Surface Quality

- Indexed contracts: 62; live-surface contracts included: 62 (49 live, 13 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 44/91 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 21/44 (47.7%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 44 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 0 discovered implementations excluded (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 19
- Deployed-live implementations: 44 of 44 unique (rest dead/inactive/uninitialized)
- All verified address-book-owned implementations audited (incl. non-live): 21/44
- Verified + Unaudited implementations: 23
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 44
- Raw deployments: 49
- Audits discovered: 1 (1 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 1
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2026-02 (fresh)
- Audit staleness (calendar age): 1 fresh, 0 aging, 0 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 21 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| Paladin | Tier 2 | 21 | 47.7% | 2026-02 |

## Contract Surface

### ✅ Verified + Audited (21)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| AlgebraVaultFactory | unknown | project_anchor | own_supporting | 0 | ethereum | unit-393460 | `0xafc049...03038d` | ✅ Audited |
| BasePluginV3Factory | registry | project_anchor | own_supporting | 0 | ethereum | unit-393473 | `0xdbfd67...f99b97` | ✅ Audited |
| BribeFactoryV3 | unknown | project_anchor | own_supporting | 1 | ethereum | unit-393497 | `0xeb37f1...37344c` | ✅ Audited |
| CustomPoolDeployer | unknown | project_anchor | own_supporting | 5 | ethereum | unit-393494 (5 proxies) | 6 deployments: ethereum `0x1c7986...59e963`; ethereum `0x2493b3...89af4a`; ethereum `0x42f5ec...2493da`; ethereum `0x44acd9...cdddc0`; ethereum `0xc815b4...928eb8`; ethereum `0xd7b7cc...ac090e` | ✅ Audited |
| GaugeFactory | unknown | project_anchor | own_supporting | 1 | ethereum | unit-393499 | `0x66647a...16adb0` | ✅ Audited |
| GaugeFactoryCL | unknown | project_anchor | own_supporting | 1 | ethereum | unit-393491 | `0x8d3820...8cd674` | ✅ Audited |
| GaugeManager | unknown | project_anchor | own_supporting | 1 | ethereum | unit-393492 | `0x19a410...517ae2` | ✅ Audited |
| MinterUpgradeable | unknown | project_anchor | own_supporting | 1 | ethereum | unit-393500 | `0xfe29ea...da84a2` | ✅ Audited |
| PairBootstrapper | unknown | project_anchor | own_supporting | 0 | ethereum | unit-393444 | `0x7f8f2b...c1cb66` | ✅ Audited |
| PairFactory | unknown | project_anchor | own_supporting | 1 | ethereum | unit-393502 | `0x5aef44...5bdc30` | ✅ Audited |
| PairGenerator | unknown | project_anchor | own_supporting | 0 | ethereum | unit-393432 | `0x42a7a5...69bbb8` | ✅ Audited |
| PermissionsRegistry | registry | project_anchor | own_supporting | 0 | ethereum | unit-393428 | `0x344eec...67c28d` | ✅ Audited |
| RewardsDistributor | operational_periphery | project_anchor | own_supporting | 0 | ethereum | unit-393463 | `0xb3410a...90ea97` | ✅ Audited |
| RouterHelper | unknown | project_anchor | own_supporting | 1 | ethereum | unit-393498 | `0xd8377a...0803c6` | ✅ Audited |
| SecurityRegistry | registry | project_anchor | own_supporting | 0 | ethereum | unit-393434 | `0x454e62...79bdfd` | ✅ Audited |
| SuperNova | unknown | project_anchor | own_supporting | 0 | ethereum | unit-393412 | `0x00da84...200c78` | ✅ Audited |
| TokenHandler | token | project_anchor | own_supporting | 0 | ethereum | unit-393456 | `0xa1154f...6de201` | ✅ Audited |
| veNFTAPI | token | project_anchor | own_supporting | 0 | ethereum | unit-393447 | `0x85dc70...9e5881` | ✅ Audited |
| VoterV3 | unknown | project_anchor | own_supporting | 1 | ethereum | unit-393501 | `0x1c7bf2...1d8171` | ✅ Audited |
| VotingBalanceLogic | unknown | project_anchor | own_supporting | 0 | ethereum | unit-393480 | `0xed686a...319847` | ✅ Audited |
| VotingEscrow | operational_periphery | project_anchor | own_supporting | 0 | ethereum | unit-393437 | `0x4c3e76...ee1d44` | ✅ Audited |

### ⚠️ Verified + Unaudited (23)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| AlgebraCustomPoolEntryPoint | core_logic | project_anchor | own_supporting | 0 | ethereum | unit-393464 | `0xb86a85...831288` | ⚠️ Unaudited |
| AlgebraEternalFarming | unknown | project_anchor | own_supporting | 0 | ethereum | unit-393422 | `0x1e8626...70a337` | ⚠️ Unaudited |
| AlgebraFactory | registry | project_anchor | own_supporting | 0 | ethereum | unit-393433 | `0x44b7fb...e89c55` | ⚠️ Unaudited |
| AlgebraInterfaceMulticall | periphery | project_anchor | own_supporting | 0 | ethereum | unit-393470 | `0xc9ba2e...041f18` | ⚠️ Unaudited |
| AlgebraPoolAPI | unknown | project_anchor | own_supporting | 1 | ethereum | unit-393503 | `0x0ee855...12ea59` | ⚠️ Unaudited |
| AlgebraPoolAPIStorage | unknown | project_anchor | own_supporting | 1 | ethereum | unit-393496 | `0x3d219d...29337a` | ⚠️ Unaudited |
| AlgebraPoolDeployer | core_logic | project_anchor | own_supporting | 0 | ethereum | unit-393435 | `0x45bc0f...deba45` | ⚠️ Unaudited |
| BlackholePairAPIV2 | unknown | project_anchor | own_supporting | 0 | ethereum | unit-393423 | `0x2b9fc4...4963dc` | ⚠️ Unaudited |
| FarmingCenter | unknown | project_anchor | own_supporting | 0 | ethereum | unit-393431 | `0x428ea5...6c91af` | ⚠️ Unaudited |
| FeeDiscountRegistry | registry | project_anchor | own_supporting | 0 | ethereum | unit-393426 | `0x31eda5...3f5975` | ⚠️ Unaudited |
| NFTDescriptor | token | project_anchor | own_supporting | 0 | ethereum | unit-393458 | `0xabca00...851045` | ⚠️ Unaudited |
| NonfungiblePositionManager | governance | project_anchor | own_supporting | 1 | ethereum | unit-393490 | `0x00d5bb...c8aaaa` | ⚠️ Unaudited |
| NonfungibleTokenPositionDescriptor | unknown | project_anchor | own_supporting | 1 | ethereum | unit-393495 | `0xf9bc94...b6535c` | ⚠️ Unaudited |
| PluginV3Deployer | unknown | project_anchor | own_supporting | 0 | ethereum | unit-393436 | `0x48012a...92eee3` | ⚠️ Unaudited |
| Quoter | periphery | project_anchor | own_supporting | 0 | ethereum | unit-393485 | `0xf9439c...529e41` | ⚠️ Unaudited |
| QuoterV2 | periphery | project_anchor | own_supporting | 0 | ethereum | unit-393445 | `0x821755...efb727` | ⚠️ Unaudited |
| RouterV2 | adapter | project_anchor | own_supporting | 0 | ethereum | unit-393466 | `0xbfae8e...e3058f` | ⚠️ Unaudited |
| SuperNovaClaims | governance | project_anchor | own_supporting | 0 | ethereum | unit-393424 | `0x313fdf...961309` | ⚠️ Unaudited |
| SwapRouter | adapter | project_anchor | own_supporting | 0 | ethereum | unit-393443 | `0x72d63a...91c8ac` | ⚠️ Unaudited |
| TickLens | periphery | project_anchor | own_supporting | 0 | ethereum | unit-393438 | `0x4e6a86...a7d6c9` | ⚠️ Unaudited |
| TokenAPI | unknown | project_anchor | own_supporting | 1 | ethereum | unit-393504 | `0x227534...810b31` | ⚠️ Unaudited |
| VeArtProxyUpgradeable | unknown | project_anchor | own_supporting | 1 | ethereum | unit-393493 | `0x87e398...397551` | ⚠️ Unaudited |
| VoterFactoryLib | registry | project_anchor | own_supporting | 0 | ethereum | unit-393465 | `0xbd08f4...a95278` | ⚠️ Unaudited |

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
| [Paladin_Supernova_Final_Report.pdf](https://resources.supernova.xyz/Paladin_Supernova_Final_Report.pdf) | Paladin | Audit | 2026-02 | fresh | Direct | address | matched | 21 | 8 | 0 | 14 | high |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [2887] Paladin_Supernova_Final_Report.pdf — matched: Extracted 35 contract names from the 'Contracts Assessed' table and findings sections. Audit date from cover page: '14 Feb 2026'.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| Paladin_Supernova_Final_Report.pdf | SuperNova | own contract | SuperNova (selected) `0x00da84...200c78` — deployed 2026-01-19 14:15:35+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Paladin_Supernova_Final_Report.pdf | MinterUpgradeable | own proxy deployment | TransparentUpgradeableProxy (proxy) (selected) `0xfe29ea...da84a2` — deployed 2026-02-05 15:33:35+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Paladin_Supernova_Final_Report.pdf | RewardsDistributor | own contract | RewardsDistributor (selected) `0xb3410a...90ea97` — deployed 2026-02-05 15:30:59+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Paladin_Supernova_Final_Report.pdf | PairFactory | own proxy deployment | TransparentUpgradeableProxy (proxy) (selected) `0x5aef44...5bdc30` — deployed 2026-02-05 15:08:59+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Paladin_Supernova_Final_Report.pdf | Pair | unmatched — not counted | — | listed in scope table | no |
| Paladin_Supernova_Final_Report.pdf | PairFees | unmatched — not counted | — | listed in scope table | no |
| Paladin_Supernova_Final_Report.pdf | PairGenerator | own contract | PairGenerator (selected) `0x42a7a5...69bbb8` — deployed 2026-02-05 15:07:47+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Paladin_Supernova_Final_Report.pdf | PairBootstrapper | own contract | PairBootstrapper (selected) `0x7f8f2b...c1cb66` — deployed 2026-02-05 15:40:23+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Paladin_Supernova_Final_Report.pdf | RouterV2 | unmatched — not counted | — | listed in scope table | no |
| Paladin_Supernova_Final_Report.pdf | RouterHelper | own proxy deployment | TransparentUpgradeableProxy (proxy) (selected) `0xd8377a...0803c6` — deployed 2026-02-05 15:28:11+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Paladin_Supernova_Final_Report.pdf | VotingEscrow | own contract | VotingEscrow (selected) `0x4c3e76...ee1d44` — deployed 2026-01-19 14:23:23+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Paladin_Supernova_Final_Report.pdf | VotingBalanceLogic | own contract | VotingBalanceLogic (selected) `0xed686a...319847` — deployed 2026-01-19 14:20:11+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Paladin_Supernova_Final_Report.pdf | VotingDelegationLib | unmatched — not counted | — | listed in scope table | no |
| Paladin_Supernova_Final_Report.pdf | VoterV3 | own proxy deployment | TransparentUpgradeableProxy (proxy) (selected) `0x1c7bf2...1d8171` — deployed 2026-02-05 15:22:23+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Paladin_Supernova_Final_Report.pdf | GaugeManager | own proxy deployment | TransparentUpgradeableProxy (proxy) (selected) `0x19a410...517ae2` — deployed 2026-02-05 15:17:23+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Paladin_Supernova_Final_Report.pdf | GaugeFactory | own proxy deployment | TransparentUpgradeableProxy (proxy) (selected) `0x66647a...16adb0` — deployed 2026-02-05 15:12:23+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Paladin_Supernova_Final_Report.pdf | GaugeV2 | unmatched — not counted | — | listed in scope table | no |
| Paladin_Supernova_Final_Report.pdf | GaugeFactoryCL | own proxy deployment | TransparentUpgradeableProxy (proxy) (selected) `0x8d3820...8cd674` — deployed 2026-02-05 15:13:35+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Paladin_Supernova_Final_Report.pdf | GaugeCL | unmatched — not counted | — | listed in scope table | no |
| Paladin_Supernova_Final_Report.pdf | BribeFactoryV3 | own proxy deployment | TransparentUpgradeableProxy (proxy) (selected) `0xeb37f1...37344c` — deployed 2026-02-05 15:23:59+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Paladin_Supernova_Final_Report.pdf | Bribe | unmatched — not counted | — | listed in scope table | no |
| Paladin_Supernova_Final_Report.pdf | CustomPoolDeployer | own contract | CustomPoolDeployer (selected) `0x2493b3...89af4a` — deployed 2026-02-05 15:42:11+03 — liveness: live (proxy_unit_reachable) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Paladin_Supernova_Final_Report.pdf | PermissionsRegistry | own contract | PermissionsRegistry (selected) `0x344eec...67c28d` — deployed 2026-02-05 15:02:11+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Paladin_Supernova_Final_Report.pdf | TokenHandler | own contract | TokenHandler (selected) `0xa1154f...6de201` — deployed 2026-02-05 15:06:23+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Paladin_Supernova_Final_Report.pdf | BlackTimeLibrary | unmatched — not counted | — | listed in scope table | no |
| Paladin_Supernova_Final_Report.pdf | BlackholePairAPIV2 | unmatched — not counted | — | listed in scope table | no |
| Paladin_Supernova_Final_Report.pdf | veNFTAPI | own contract | veNFTAPI (selected) `0x85dc70...9e5881` — deployed 2026-02-05 15:32:11+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Paladin_Supernova_Final_Report.pdf | Math | unmatched — not counted | — | listed in scope table | no |
| Paladin_Supernova_Final_Report.pdf | AlgebraVaultFactory | own contract | AlgebraVaultFactory (selected) `0xafc049...03038d` — deployed 2026-02-05 14:47:59+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Paladin_Supernova_Final_Report.pdf | CustomPluginV1Factory | unmatched — not counted | — | listed in scope table | no |
| Paladin_Supernova_Final_Report.pdf | CustomPluginV2Factory | unmatched — not counted | — | listed in scope table | no |
| Paladin_Supernova_Final_Report.pdf | AlgebraBasePluginV3 | unmatched — not counted | — | listed in scope table | no |
| Paladin_Supernova_Final_Report.pdf | BasePluginV3Factory | own contract | BasePluginV3Factory (selected) `0xdbfd67...f99b97` — deployed 2026-02-05 14:48:35+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Paladin_Supernova_Final_Report.pdf | SecurityPlugin | unmatched — not counted | — | listed in scope table | no |
| Paladin_Supernova_Final_Report.pdf | SecurityRegistry | own contract | SecurityRegistry (selected) `0x454e62...79bdfd` — deployed 2026-02-05 14:49:35+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | `0xb86a85...831288` | AlgebraCustomPoolEntryPoint | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x1e8626...70a337` | AlgebraEternalFarming | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x44b7fb...e89c55` | AlgebraFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xc9ba2e...041f18` | AlgebraInterfaceMulticall | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x0ee855...12ea59` | AlgebraPoolAPI | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x3d219d...29337a` | AlgebraPoolAPIStorage | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x45bc0f...deba45` | AlgebraPoolDeployer | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x2b9fc4...4963dc` | BlackholePairAPIV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x428ea5...6c91af` | FarmingCenter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x31eda5...3f5975` | FeeDiscountRegistry | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xabca00...851045` | NFTDescriptor | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x00d5bb...c8aaaa` | NonfungiblePositionManager | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xf9bc94...b6535c` | NonfungibleTokenPositionDescriptor | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x48012a...92eee3` | PluginV3Deployer | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xf9439c...529e41` | Quoter | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x821755...efb727` | QuoterV2 | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xbfae8e...e3058f` | RouterV2 | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x313fdf...961309` | SuperNovaClaims | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x72d63a...91c8ac` | SwapRouter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x4e6a86...a7d6c9` | TickLens | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x227534...810b31` | TokenAPI | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x87e398...397551` | VeArtProxyUpgradeable | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xbd08f4...a95278` | VoterFactoryLib | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 44 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 0 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Address-book scope dispositions: 21 own (8 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 14 unmatched
- Matched-own operational status: 21 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=1
- Match method counts: address=21

Fork inheritance lineage and inherited audits are included when available.
