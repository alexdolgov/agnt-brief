# Agentic Audit Brief: VaporDex

## Export Authority

- Production state: **published scope**
- Raw selected rows: 3 across 3 audit(s)
- Eligible audit results: 4 (3 matched; 1 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e9e09d06b414f9cd852c36a58d42ce16279465f2d9791cd2a8178f3f54b89ecd`

## Project Overview

- Project: VaporDex (`vapordex`)
- Website: [https://www.vapordex.io](https://www.vapordex.io)
- Lifecycle: unknown
- Generated: 2026-07-15T18:30:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: avalanche
- Contract surface: 35 unique implementations (36 raw deployments)
- Coverage basis: 2/10 confirmed own live verified implementations (20.0%); conservative 20.0% with 0 needs-review implementation(s)
- DeFi Llama TVL: $331,207.00
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for VaporDex. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 11 contract row(s) across avalanche. Structural roles: 8 core, 2 supporting, 1 infra. 2 row(s) use upgradeable patterns.

## Logic Topography

- Exact-run contract rows: 11
- Structural roles: core (8), supporting (2), infra (1)
- Contract kinds: contract (10), abstract (1)
- Detected standards: erc165 (2), erc1967proxy (2), multicall (2), accesscontrol (1), erc721 (1), ownable (1)
- Frameworks: openzeppelin (6), uniswap-v3 (2), openzeppelin-upgradeable (1), uniswap-v2 (1)
- Upgradeable-pattern rows: 2

## Fork Analysis

0 of 11 contracts are derived from known codebases. 11 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0xae950fdd0cc79dde64d3fffd40fabec3f7ba368b`, chain 43114)
- DexAggregatorDiamond (`0x55477d8537ede381784b448876afaa98aa450e63`, chain 43114)
- NonfungiblePositionManager (`0xc967b23826ddab00d9aad3702cbf5261b7ed9a3a`, chain 43114)
- ReplenishmentPool (`0x0fa2ccc39cc3b225a7649ed84ec76ee5217d07c4`, chain 43114)
- Router (`0xdef9ee39fd82ee57a1b789bc877e2cbd88fd5cae`, chain 43114)
- StableVapeStaking (`0x1c9cba0cec8ad45f75d5f5bdb0c539acb55b8d94`, chain 43114)
- SwapRouter02 (`0xe61efa294c7eec0c96b3df79b5c1975f0613548a`, chain 43114)
- TransparentUpgradeableProxy (`0x08e287adcf9bf6773a87e1a278aa9042bef44b60`, chain 43114)
- UniswapV3Factory (`0x62b672e531f8c11391019f6fba0b8b6143504169`, chain 43114)
- VaporDEXFactory (`0xc009a670e2b02e21e7e75ae98e254f467f7ae257`, chain 43114)
- VaporDEXRouter02 (`0x19c0fc4562a4b76f27f86c676ef5a7e38d12a20d`, chain 43114)

## Contract Surface Quality

- Logic-topography rows: 11; live-surface rows included: 11 (10 live, 1 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 10/11 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 2/10 (20.0%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 11 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 24 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 3
- Confirmed-live implementations: 11 of 35 unique; 24 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 2/34
- Verified + Unaudited implementations: 32
- Verified by bytecode match: 0
- Unverified implementations: 1
- Unique implementations: 35
- Raw deployments: 36
- Audits discovered: 4 (4 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 3
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2022-11 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 4 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 2 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| ABDK | Tier 2 | 2 | 5.9% | 2021-04 |
| ABDK Consulting (UPSTREAM Uniswap V3 periphery — inherited via fork, not VaporDex's own) | Tier 2 | 1 | 2.9% | 2021-04 |

## Contract Surface

### ✅ Verified + Audited (2)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| NonfungiblePositionManager | unknown | project_anchor | own_supporting | 0 | avalanche | unit-260235 | `0xc967b23826ddab00d9aad3702cbf5261b7ed9a3a` | ✅ Audited |
| UniswapV3Factory | unknown | project_anchor | own_supporting | 0 | avalanche | unit-260232 | `0x62b672e531f8c11391019f6fba0b8b6143504169` | ✅ Audited |

### ⚠️ Verified + Unaudited (32)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| AuthorizationFacet | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x1ad983287c5417fe39b4190d9e46cd6fc1e751c3` | ⚠️ Unaudited |
| BoostFacet | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x5f630cbd93e406a6b1b852fa0824b42e7aa5f80c` | ⚠️ Unaudited |
| BytesManipulation | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x26b794235422e7c6f3ac6c717b10598c2a144203` | ⚠️ Unaudited |
| ClaimFacet | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xb654ce5224c9a8c7c5985798f47a976e84429bd4` | ⚠️ Unaudited |
| DepositFacet | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x93d0de9ae7213113cc0d822cf4d7589200675300` | ⚠️ Unaudited |
| DexAggregatorDiamond | unknown | project_anchor | own_supporting | 1 | avalanche | unit-260240 | 2 deployments: avalanche `0x55477d8537ede381784b448876afaa98aa450e63`; avalanche `0xb4cae37f9b147c278b308c1203e539375e94e7fe` | ⚠️ Unaudited |
| DiamondCutFacet | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x7b6bca9f8f4e62d1bd92043a13795edee94c83d9` | ⚠️ Unaudited |
| DiamondLoupeFacet | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x7712bed48612f9ab67d66166fc655a58aef23c0f` | ⚠️ Unaudited |
| DiamondManagerFacet | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x20b27c17c613cd82e8fdafcda55dd87bd4da4b19` | ⚠️ Unaudited |
| EmissionsManagerV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xdf6064a582d312f3e7bdda2ead9ff755730e9f79` | ⚠️ Unaudited |
| FeeCollectorFacet | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x50bfe2e90d4562624c478c86c85810442b71e239` | ⚠️ Unaudited |
| GenesisStaking | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xd21fe537c97054f40890f012955a536d80d1bf00` | ⚠️ Unaudited |
| MiningPassFacet | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xe87a9dc52a82a0356744e8b9c6cf549a30cb11ae` | ⚠️ Unaudited |
| OwnershipFacet | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x442cd3cfbc2d7218bd8bdd2ce7146bacf0855bb6` | ⚠️ Unaudited |
| PausationFacet | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xa79c069354cd9cc65f8be1a81929efc07b169b04` | ⚠️ Unaudited |
| ProxyAdmin | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x2add09b1a47a8d86e807559fd10f8f176156552e` | ⚠️ Unaudited |
| QuoterV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xc8c97d11184069cdd2dfe85f097c607ed3272572` | ⚠️ Unaudited |
| ReplenishmentPool | unknown | project_anchor | own_supporting | 0 | avalanche | unit-260230 | `0x0fa2ccc39cc3b225a7649ed84ec76ee5217d07c4` | ⚠️ Unaudited |
| RewardsPool | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x359ef23e2c8bcfe0ee5192bc34d3f6a2c808873a` | ⚠️ Unaudited |
| Router | unknown | project_anchor | own_supporting | 0 | avalanche | unit-260236 | `0xdef9ee39fd82ee57a1b789bc877e2cbd88fd5cae` | ⚠️ Unaudited |
| StableVapeStaking | unknown | project_anchor | own_supporting | 1 | avalanche | unit-260238 | `0x1c9cba0cec8ad45f75d5f5bdb0c539acb55b8d94` | ⚠️ Unaudited |
| Stratosphere | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xd1e77235b2537d96a595a611b84a7471474fd4f8` | ⚠️ Unaudited |
| SwapRouter02 | unknown | project_anchor | own_supporting | 0 | avalanche | unit-260237 | `0xe61efa294c7eec0c96b3df79b5c1975f0613548a` | ⚠️ Unaudited |
| TickLens | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xbb017b46375d510093c285d1e2b11d8c4ee9036f` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | project_anchor | own_supporting | 1 | avalanche | unit-260239 | `0x08e287adcf9bf6773a87e1a278aa9042bef44b60` | ⚠️ Unaudited |
| UnlockFacet | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x18f7e04f7968340e4604646999109ac4ae1cd790` | ⚠️ Unaudited |
| V3Migrator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xea3379a026cb3e6c5ac847f8e24e523c762b0c6e` | ⚠️ Unaudited |
| VapeToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x0db60699e7be209cce1a43829e2dd3a50e2b51c3` | ⚠️ Unaudited |
| VaporDEXAnniversaryGenesis | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x05f954784749466b1f13f051f8c9cad336354d02` | ⚠️ Unaudited |
| VaporDEXFactory | unknown | project_anchor | own_supporting | 0 | avalanche | unit-260234 | `0xc009a670e2b02e21e7e75ae98e254f467f7ae257` | ⚠️ Unaudited |
| VaporDEXRouter02 | unknown | project_anchor | own_supporting | 0 | avalanche | unit-260231 | `0x19c0fc4562a4b76f27f86c676ef5a7e38d12a20d` | ⚠️ Unaudited |
| WithdrawFacet | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xcb2d87178d9489d59a9b3948dcbf7b718cd2df59` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (1)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | avalanche | unit-260233 | `0xae950fdd0cc79dde64d3fffd40fabec3f7ba368b` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [skynet.certik.com/projects/vapordex](https://skynet.certik.com/projects/vapordex) | CertiK | Audit | 2022-11 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 2 | high |
| [audit.pdf](https://raw.githubusercontent.com/VaporFi/vapordex-contracts-v2/main/packages/periphery/audits/abdk/audit.pdf) | ABDK Consulting (UPSTREAM Uniswap V3 periphery — inherited via fork, not VaporDex's own) | Audit | 2021-04 | stale | Direct | contract_name | matched | 1 | 0 | 0 | 1 | high |
| [audit.pdf](https://github.com/VaporFi/vapordex-contracts-v2/blob/main/packages/periphery/audits/abdk/audit.pdf) | ABDK | Audit | 2021-04 | stale | Direct | contract_name | matched | 1 | 0 | 0 | 1 | high |
| [audit.pdf](https://github.com/VaporFi/vapordex-contracts-v2/blob/main/packages/core/audits/abdk/audit.pdf) | ABDK | Audit | 2021-03 | stale | Direct | contract_name | matched | 1 | 0 | 0 | 33 | high |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [21473] skynet.certik.com/projects/vapordex — no match: Extracted from Audited Files section listing MasterChef.sol and Migrator.sol. Audit date from 'Last Audit was delivered on 11/3/2022'.
- [21476] audit.pdf — matched: The report explicitly lists two files audited: NonfungiblePositionManager.sol and SwapRouter.sol. The audit date is given as 26th April 2021.
- [24531] audit.pdf — matched: Audit report explicitly lists two files in scope: NonfungiblePositionManager.sol and SwapRouter.sol. Date from cover page: 26th April 2021.
- [24533] audit.pdf — matched: All contracts and libraries explicitly listed in the scope section of the audit report.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| skynet.certik.com/projects/vapordex | MasterChef | unmatched — not counted | — | listed in Audited Files section | no |
| skynet.certik.com/projects/vapordex | Migrator | unmatched — not counted | — | listed in Audited Files section | no |
| audit.pdf | NonfungiblePositionManager | own contract | NonfungiblePositionManager (selected) `0xc967b23826ddab00d9aad3702cbf5261b7ed9a3a` — deployed 2023-10-16 15:58:57+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| audit.pdf | SwapRouter | unmatched — not counted | — | listed in scope | no |
| audit.pdf | NonfungiblePositionManager | own contract | NonfungiblePositionManager (selected) `0xc967b23826ddab00d9aad3702cbf5261b7ed9a3a` — deployed 2023-10-16 15:58:57+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| audit.pdf | SwapRouter | unmatched — not counted | — | listed in scope | no |
| audit.pdf | IUniswapV3FlashCallback | unmatched — not counted | — | listed in scope | no |
| audit.pdf | IUniswapV3MintCallback | unmatched — not counted | — | listed in scope | no |
| audit.pdf | IUniswapV3SwapCallback | unmatched — not counted | — | listed in scope | no |
| audit.pdf | IUniswapV3PoolActions | unmatched — not counted | — | listed in scope | no |
| audit.pdf | IUniswapV3PoolDerivedState | unmatched — not counted | — | listed in scope | no |
| audit.pdf | IUniswapV3PoolEvents | unmatched — not counted | — | listed in scope | no |
| audit.pdf | IUniswapV3PoolImmutables | unmatched — not counted | — | listed in scope | no |
| audit.pdf | IUniswapV3PoolOwnerActions | unmatched — not counted | — | listed in scope | no |
| audit.pdf | IUniswapV3PoolState | unmatched — not counted | — | listed in scope | no |
| audit.pdf | IERC20Minimal | unmatched — not counted | — | listed in scope | no |
| audit.pdf | IUniswapV3Factory | unmatched — not counted | — | listed in scope | no |
| audit.pdf | IUniswapV3Pool | unmatched — not counted | — | listed in scope | no |
| audit.pdf | IUniswapV3PoolDeployer | unmatched — not counted | — | listed in scope | no |
| audit.pdf | BitMath | unmatched — not counted | — | listed in scope | no |
| audit.pdf | FixedPoint128 | unmatched — not counted | — | listed in scope | no |
| audit.pdf | FixedPoint96 | unmatched — not counted | — | listed in scope | no |
| audit.pdf | FullMath | unmatched — not counted | — | listed in scope | no |
| audit.pdf | LiquidityMath | unmatched — not counted | — | listed in scope | no |
| audit.pdf | LowGasSafeMath | unmatched — not counted | — | listed in scope | no |
| audit.pdf | Oracle | unmatched — not counted | — | listed in scope | no |
| audit.pdf | Position | unmatched — not counted | — | listed in scope | no |
| audit.pdf | SafeCast | unmatched — not counted | — | listed in scope | no |
| audit.pdf | SecondsOutside | unmatched — not counted | — | listed in scope | no |
| audit.pdf | SqrtPriceMath | unmatched — not counted | — | listed in scope | no |
| audit.pdf | SwapMath | unmatched — not counted | — | listed in scope | no |
| audit.pdf | Tick | unmatched — not counted | — | listed in scope | no |
| audit.pdf | TickBitmap | unmatched — not counted | — | listed in scope | no |
| audit.pdf | TickMath | unmatched — not counted | — | listed in scope | no |
| audit.pdf | TransferHelper | unmatched — not counted | — | listed in scope | no |
| audit.pdf | UnsafeMath | unmatched — not counted | — | listed in scope | no |
| audit.pdf | NoDelegateCall | unmatched — not counted | — | listed in scope | no |
| audit.pdf | UniswapV3Factory | own contract | UniswapV3Factory (selected) `0x62b672e531f8c11391019f6fba0b8b6143504169` — deployed 2023-10-16 15:58:05+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| audit.pdf | UniswapV3Pool | unmatched — not counted | — | listed in scope | no |
| audit.pdf | UniswapV3PoolDeployer | unmatched — not counted | — | listed in scope | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| avalanche | `0x55477d8537ede381784b448876afaa98aa450e63` | DexAggregatorDiamond | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | `0x0fa2ccc39cc3b225a7649ed84ec76ee5217d07c4` | ReplenishmentPool | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | `0xdef9ee39fd82ee57a1b789bc877e2cbd88fd5cae` | Router | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | `0x1c9cba0cec8ad45f75d5f5bdb0c539acb55b8d94` | StableVapeStaking | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | `0xe61efa294c7eec0c96b3df79b5c1975f0613548a` | SwapRouter02 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | `0xc009a670e2b02e21e7e75ae98e254f467f7ae257` | VaporDEXFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | `0x19c0fc4562a4b76f27f86c676ef5a7e38d12a20d` | VaporDEXRouter02 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 31 |
| upstream | 1 |
| standard_library | 2 |
| needs_review | 1 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Address-book scope dispositions: 3 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 37 unmatched
- Matched-own operational status: 3 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=4
- Match method counts: unique_name=3

Zero-match audit list:

- [21473] skynet.certik.com/projects/vapordex

Fork inheritance lineage and inherited audits are included when available.
