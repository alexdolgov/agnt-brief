# Agentic Audit Brief: Virtuals Protocol

## Export Authority

- Production state: **published scope**
- Raw selected rows: 0 across 0 audit(s)
- Eligible audit results: 5 (0 matched; 5 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e9e09d06b414f9cd852c36a58d42ce16279465f2d9791cd2a8178f3f54b89ecd`

## Project Overview

- Project: Virtuals Protocol (`virtuals-protocol`)
- Website: [https://www.virtuals.io/](https://www.virtuals.io/)
- Lifecycle: unknown
- Generated: 2026-07-15T18:30:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: base, ethereum
- Contract surface: 93 unique implementations (137 raw deployments)
- Coverage basis: 0/1 confirmed own live verified implementations (0.0%); conservative 0.0% with 0 needs-review implementation(s)
- DeFi Llama TVL: $24,545,938.26
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for Virtuals Protocol. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 1 contract row(s) across base, ethereum. Structural roles: 1 supporting. No upgradeable pattern was identified in these rows.

## Logic Topography

- Exact-run contract rows: 1
- Structural roles: supporting (1)
- Contract kinds: contract (1)
- Detected standards: erc165 (1), erc20 (1), ownable (1)
- Frameworks: layerzero (1), openzeppelin (1)
- Upgradeable-pattern rows: 0

## Fork Analysis

0 of 3 contracts are derived from known codebases. 3 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0x44ff86...91bf73`, chain 1)
- UnnamedContract (`0xf8dd39...0f809e`, chain 8453)
- OptimismMintableERC20 (`0x0b3e32...4e7e1b`, chain 8453)

## Contract Surface Quality

- Logic-topography rows: 1; live-surface rows included: 1 (1 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 3/5 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 0/1 (0.0%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 3 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 90 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 1 standard proxy/library)
- Proxy deployments represented within implementation groups: 40
- Confirmed-live implementations: 3 of 93 unique; 90 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 0/86
- Verified + Unaudited implementations: 86
- Verified by bytecode match: 0
- Unverified implementations: 7
- Unique implementations: 93
- Raw deployments: 137
- Audits discovered: 5 (5 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2025-06 (aging)
- Audit staleness (calendar age): 0 fresh, 5 aging, 0 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (86)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| AccountManager | governance | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | `0x14dab2...cdf485` | ⚠️ Unaudited |
| AccountManager | governance | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x95d2bc...512beb` | ⚠️ Unaudited |
| ACPRouter | adapter | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x49ff03...951490` | ⚠️ Unaudited |
| ACPRouter | adapter | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | `0xa6c9ba...da9df0` | ⚠️ Unaudited |
| ACPSimple | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | `0x6a1fe2...0a0a4a` | ⚠️ Unaudited |
| ACPSimple | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x938107...c55fb8` | ⚠️ Unaudited |
| AeroAdaptor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x579e9c...5aa33a` | ⚠️ Unaudited |
| AgentDAO | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 3 deployments: base `0x17ba20...b84cfd`; base `0x29dd64...3cd53c`; base `0xaa23ac...7a84a1` | ⚠️ Unaudited |
| AgentFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x854a94...7424c0` | ⚠️ Unaudited |
| AgentFactoryV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 2 | base | n/a | 3 deployments: base `0x2d7a71...ca9759`; base `0x5706d5...372eb2`; base `0x94bf96...5a0d61` | ⚠️ Unaudited |
| AgentFactoryV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 2 deployments: base `0x5c621b...b755b7`; base `0xd4f79b...2fd8aa` | ⚠️ Unaudited |
| AgentFactoryV3 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 2 deployments: base `0x0c963c...d4eac4`; base `0xa0f0f0...188110` | ⚠️ Unaudited |
| AgentFactoryV3 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0x391b80...6bc543`; base `0x6a98f4...ef6514` | ⚠️ Unaudited |
| AgentFactoryV3 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0x71b8ef...eaf533`; base `0xfd8c35...09e895` | ⚠️ Unaudited |
| AgentFactoryV4 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x917e49...47bdb4` | ⚠️ Unaudited |
| AgentFactoryV4 | registry | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | `0xeb8a7b...998c1e` | ⚠️ Unaudited |
| AgentFactoryV6 | registry | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | `0xfc949b...f821d3` | ⚠️ Unaudited |
| AgentFactoryV7 | registry | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x3eb211...678743` | ⚠️ Unaudited |
| AgentFactoryV7 | registry | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | `0xc169a2...0442a3` | ⚠️ Unaudited |
| AgentInference | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x398402...5a8cee` | ⚠️ Unaudited |
| AgentInference | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | `0xcefe54...119246` | ⚠️ Unaudited |
| AgentMigrator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 2 deployments: base `0x31152d...d941ad`; base `0x41a0f5...29beba` | ⚠️ Unaudited |
| AgentNft | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xde8299...ba417b` | ⚠️ Unaudited |
| AgentNftV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x342676...2fcebf` | ⚠️ Unaudited |
| AgentNftV2 | token | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | `0x50725a...6732c0` | ⚠️ Unaudited |
| AgentReward | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x8867ea...109ee0` | ⚠️ Unaudited |
| AgentRewardV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0x0fd537...e1be37`; base `0xf1942a...21c685` | ⚠️ Unaudited |
| AgentTax | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | `0x7e2617...bb64b1` | ⚠️ Unaudited |
| AgentTax | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 3 deployments: base `0x8a101b...bd9d57`; base `0xc37a4b...1b5430`; base `0xcad6d6...f85beb` | ⚠️ Unaudited |
| AgentTaxV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | `0x617fd6...f0a528` | ⚠️ Unaudited |
| AgentTaxV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x8fbc31...2e55f5` | ⚠️ Unaudited |
| AgentToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 7 deployments: base `0x082cb6...da5d94`; base `0x1480fb...eac4cc`; base `0x766e06...46eb7b`; base `0x82f040...ca1c6c`; base `0x9215e9...91458b`; base `0xbf60e9...62649e`; base `0xe8a6cc...316001` | ⚠️ Unaudited |
| AgentTokenV2 | token | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x7bab5d...8ae2db` | ⚠️ Unaudited |
| AgentTokenV3 | token | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x484f39...76100c` | ⚠️ Unaudited |
| AgentVeToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xefb56b...2eacf2` | ⚠️ Unaudited |
| AgentVeTokenV2 | token | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 2 deployments: base `0x4e37ac...f24eda`; base `0xe56103...5a6756` | ⚠️ Unaudited |
| Bonding | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 3 deployments: base `0x4c72d3...9e3070`; base `0x53b6d4...1e3fec`; base `0x91ba6e...3d7e47` | ⚠️ Unaudited |
| Bonding | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0xc9a91c...70b89f`; base `0xf66dea...613259` | ⚠️ Unaudited |
| BondingConfig | governance | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x0cd36d...091558` | ⚠️ Unaudited |
| BondingConfig | governance | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | `0x5c4a1a...abedaf` | ⚠️ Unaudited |
| BondingTax | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0x42b4eb...6bfe5d`; base `0x9883a9...167147` | ⚠️ Unaudited |
| BondingTax | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x8534ed...25e7a5` | ⚠️ Unaudited |
| BondingTax | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0x8c2d29...fc1cb0`; base `0xbf6fcd...a5370c` | ⚠️ Unaudited |
| BondingV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | `0xc3538d...89958d` | ⚠️ Unaudited |
| BondingV3 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | `0xacb04a...f343aa` | ⚠️ Unaudited |
| BondingV3 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xfc3167...9284bb` | ⚠️ Unaudited |
| BondingV5 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | `0x1a5400...4d3b01` | ⚠️ Unaudited |
| BondingV5 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x492d92...7e7127` | ⚠️ Unaudited |
| ContributionNft | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0x068f5e...a1a0d6`; base `0xbf8c24...df44c5` | ⚠️ Unaudited |
| DemoToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 2 deployments: base `0x107c53...b36334`; base `0x9e87c7...9b098a` | ⚠️ Unaudited |
| FFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0x158d7c...e74309`; base `0x82dd5f...4c96d7` | ⚠️ Unaudited |
| FFactoryV3 | registry | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x78238a...c94b57` | ⚠️ Unaudited |
| FGenesis | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | `0x42f4f5...db1ea9` | ⚠️ Unaudited |
| FRouter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x192df9...7f573f` | ⚠️ Unaudited |
| FRouter | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0x3a75de...54ae56`; base `0x8292b4...8202c5` | ⚠️ Unaudited |
| FRouterV2 | adapter | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | `0xbfce3f...073f95` | ⚠️ Unaudited |
| FRouterV3 | adapter | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | `0x02fe8e...b47ded` | ⚠️ Unaudited |
| FRouterV3 | adapter | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xbadb9f...4557c5` | ⚠️ Unaudited |
| JobManager | governance | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | `0x9c690c...b83744` | ⚠️ Unaudited |
| JobManager | governance | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xca58be...794850` | ⚠️ Unaudited |
| MemoManager | governance | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x98bf57...bd2ee0` | ⚠️ Unaudited |
| MemoManager | governance | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | `0x9c6c5a...91f30c` | ⚠️ Unaudited |
| OptimismMintableERC20 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x0415ac...0e6b32` | ⚠️ Unaudited |
| OptimismMintableERC20 | bridge_template | project_anchor | own_supporting | 0 | base | unit-261479 | `0x0b3e32...4e7e1b` | ⚠️ Unaudited |
| PaymentManager | governance | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x8e4fa9...ab19ab` | ⚠️ Unaudited |
| PaymentManager | governance | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | `0xef4364...856c7f` | ⚠️ Unaudited |
| PoolHelper | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 6 deployments: base `0x423ab5...f8a407`; base `0x788d54...9bd823`; base `0x79653c...003a81`; base `0xbb1dd9...9a8c7b`; base `0xc83904...ebcc4d`; base `0xd34d47...1e2089` | ⚠️ Unaudited |
| RewardTreasury | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xac9e57...7863ad` | ⚠️ Unaudited |
| ServiceNft | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0x8871c2...a0674b`; base `0x9ce798...1308a4` | ⚠️ Unaudited |
| SimpleMigrator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x10ee12...214899` | ⚠️ Unaudited |
| stakedToken | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0x59e73e...844c92`; base `0x785a19...1b91f8` | ⚠️ Unaudited |
| StakingDelegationHelper2 | periphery | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 5 deployments: base `0x88e299...0c75a3`; base `0x9d1a26...79817e`; base `0xbc8b1e...48948e`; base `0xd64c8a...0b80a1`; base `0xf73ecd...16e603` | ⚠️ Unaudited |
| TaxSwapper | adapter | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 2 deployments: base `0x107e58...1c8b72`; base `0x8e0253...495d0e` | ⚠️ Unaudited |
| TBABonus | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | `0xdbead7...838804` | ⚠️ Unaudited |
| TBABonus | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xf2f296...38f621` | ⚠️ Unaudited |
| TimeLockStaking | governance | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x33e34b...11a045` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0x2fb747...a06ccf`; base `0x652bf2...43da1c` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0x45c60a...574654`; base `0xcc02f5...21f9f8` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | proxy | non_address_book | standard_proxy_or_library (excluded) | 2 | base | n/a | 2 deployments: base `0x488db0...17c7c8`; base `0xd7d3c8...92d284` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0x6e1c28...907641`; base `0xc02011...73b395` | ⚠️ Unaudited |
| UpdateCreator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x614f31...da3811` | ⚠️ Unaudited |
| veVirtual | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x4baffd...321e9a` | ⚠️ Unaudited |
| veVirtual | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | `0x60a203...6b4df8` | ⚠️ Unaudited |
| VirtualGenesisDAO | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xe360ab...f9f67f` | ⚠️ Unaudited |
| VirtualOFTAdapter | adapter | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xa5a1af...0bbc93` | ⚠️ Unaudited |
| VirtualProtocolDAOV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xa1a98f...776665` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (7)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-261478 | `0x44ff86...91bf73` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x13ee19...069950` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x33f812...e736af` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x6a5138...5ba0fe` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x70b0a7...4630be` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xa31713...5603d8` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-261482 | `0xf8dd39...0f809e` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [code4rena.com/reports/2025-04-virtuals-protocol](https://code4rena.com/reports/2025-04-virtuals-protocol) | Code4rena | Contest | 2025-04 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 42 | high |
| [spaces/rrll8DWDA3BJwEBqOtxm/uploads/EiyuRkwRb6NOUYtBLtzk/Virtuals Launchpad Smart Contract Suite Audit Report.pdf](https://4242579099-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2Frrll8DWDA3BJwEBqOtxm%2Fuploads%2FEiyuRkwRb6NOUYtBLtzk%2FVirtuals%20Launchpad%20Smart%20Contract%20Suite%20Audit%20Report.pdf) | Not specified | Audit | 2025-04 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 5 | high |
| [spaces/rrll8DWDA3BJwEBqOtxm/uploads/QIpnKIH0Dx2tXiTyTyJu/Virtuals Protocol - Zenith Audit Report for Genesis.pdf](https://4242579099-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2Frrll8DWDA3BJwEBqOtxm%2Fuploads%2FQIpnKIH0Dx2tXiTyTyJu%2FVirtuals%20Protocol%20-%20Zenith%20Audit%20Report%20for%20Genesis.pdf) | Zenith | Audit | 2025-02 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 14 | high |
| [spaces/rrll8DWDA3BJwEBqOtxm/uploads/zJ0JLeYiaEj32wwEna7w/Genesis Token Contract Audit Report.pdf](https://4242579099-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2Frrll8DWDA3BJwEBqOtxm%2Fuploads%2FzJ0JLeYiaEj32wwEna7w%2FGenesis%20Token%20Contract%20Audit%20Report.pdf) | Not specified | Audit | 2025-06 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 3 | medium |
| [spaces/rrll8DWDA3BJwEBqOtxm/uploads/On9IPp8c4x9oIPxOSRxn/$VIRTUAL Staking Contract Audit Report.pdf](https://4242579099-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2Frrll8DWDA3BJwEBqOtxm%2Fuploads%2FOn9IPp8c4x9oIPxOSRxn%2F%24VIRTUAL%20Staking%20Contract%20Audit%20Report.pdf) | unknown | Audit | 2025-05 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 1 | high |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [21060] code4rena.com/reports/2025-04-virtuals-protocol — no match: Extracted 43 contracts from the audit report scope and findings. The audit date is from the report header.
- [21061] spaces/rrll8DWDA3BJwEBqOtxm/uploads/EiyuRkwRb6NOUYtBLtzk/Virtuals Launchpad Smart Contract Suite Audit Report.pdf — no match: Scope explicitly lists Genesis.sol and FCGenesis.sol. Bonding, AgentFactoryV3, and FGenesis are mentioned in findings as targets.
- [21062] spaces/rrll8DWDA3BJwEBqOtxm/uploads/QIpnKIH0Dx2tXiTyTyJu/Virtuals Protocol - Zenith Audit Report for Genesis.pdf — no match: Scope defined as contracts/* excluding contracts/dev, contracts/AgentReward*.sol, contracts/IAgentReward*.sol. All contracts mentioned in findings are within scope.
- [21063] spaces/rrll8DWDA3BJwEBqOtxm/uploads/zJ0JLeYiaEj32wwEna7w/Genesis Token Contract Audit Report.pdf — no match: No explicit scope section; contracts inferred from finding contexts. Audit date from cover page: June 4, 2025.
- [21064] spaces/rrll8DWDA3BJwEBqOtxm/uploads/On9IPp8c4x9oIPxOSRxn/$VIRTUAL Staking Contract Audit Report.pdf — no match: Only one contract (veVirtual) is explicitly in scope. EIP712Upgradeable is mentioned as an inherited contract but not in scope.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| code4rena.com/reports/2025-04-virtuals-protocol | AgentNftV2 | unmatched — not counted | — | listed in scope and findings | no |
| code4rena.com/reports/2025-04-virtuals-protocol | AgentVeToken | unmatched — not counted | — | listed in scope and findings | no |
| code4rena.com/reports/2025-04-virtuals-protocol | ServiceNft | unmatched — not counted | — | listed in scope and findings | no |
| code4rena.com/reports/2025-04-virtuals-protocol | ContributionNft | unmatched — not counted | — | listed in scope and findings | no |
| code4rena.com/reports/2025-04-virtuals-protocol | ValidatorRegistry | unmatched — not counted | — | listed in scope and findings | no |
| code4rena.com/reports/2025-04-virtuals-protocol | AgentInference | unmatched — not counted | — | listed in scope and findings | no |
| code4rena.com/reports/2025-04-virtuals-protocol | AgentFactoryV4 | unmatched — not counted | — | listed in scope and findings | no |
| code4rena.com/reports/2025-04-virtuals-protocol | FRouter | unmatched — not counted | — | listed in scope and findings | no |
| code4rena.com/reports/2025-04-virtuals-protocol | AgentTax | unmatched — not counted | — | listed in scope and findings | no |
| code4rena.com/reports/2025-04-virtuals-protocol | BondingTax | unmatched — not counted | — | listed in scope and findings | no |
| code4rena.com/reports/2025-04-virtuals-protocol | Bonding | unmatched — not counted | — | listed in scope and findings | no |
| code4rena.com/reports/2025-04-virtuals-protocol | AgentToken | unmatched — not counted | — | listed in scope and findings | no |
| code4rena.com/reports/2025-04-virtuals-protocol | AgentDAO | unmatched — not counted | — | listed in scope and findings | no |
| code4rena.com/reports/2025-04-virtuals-protocol | FERC20 | unmatched — not counted | — | listed in scope and findings | no |
| code4rena.com/reports/2025-04-virtuals-protocol | AgentFactoryV2 | unmatched — not counted | — | listed in scope and findings | no |
| code4rena.com/reports/2025-04-virtuals-protocol | AgentRewardV2 | unmatched — not counted | — | listed in scope and findings | no |
| code4rena.com/reports/2025-04-virtuals-protocol | Minter | unmatched — not counted | — | listed in scope and findings | no |
| code4rena.com/reports/2025-04-virtuals-protocol | EloCalculator | unmatched — not counted | — | listed in scope and findings | no |
| code4rena.com/reports/2025-04-virtuals-protocol | AgentFactoryV3 | unmatched — not counted | — | listed in scope and findings | no |
| code4rena.com/reports/2025-04-virtuals-protocol | AgentRewardV3 | unmatched — not counted | — | listed in scope and findings | no |
| code4rena.com/reports/2025-04-virtuals-protocol | VirtualToken | unmatched — not counted | — | listed in scope and findings | no |
| code4rena.com/reports/2025-04-virtuals-protocol | ERC6551Registry | unmatched — not counted | — | listed in scope and findings | no |
| code4rena.com/reports/2025-04-virtuals-protocol | IFPair | unmatched — not counted | — | listed in scope and findings | no |
| code4rena.com/reports/2025-04-virtuals-protocol | IFactory | unmatched — not counted | — | listed in scope and findings | no |
| code4rena.com/reports/2025-04-virtuals-protocol | IBondingTax | unmatched — not counted | — | listed in scope and findings | no |
| code4rena.com/reports/2025-04-virtuals-protocol | IUniswapV2Factory | unmatched — not counted | — | listed in scope and findings | no |
| code4rena.com/reports/2025-04-virtuals-protocol | IUniswapV2Router02 | unmatched — not counted | — | listed in scope and findings | no |
| code4rena.com/reports/2025-04-virtuals-protocol | IUniswapV2Pair | unmatched — not counted | — | listed in scope and findings | no |
| code4rena.com/reports/2025-04-virtuals-protocol | IERC5805 | unmatched — not counted | — | listed in scope and findings | no |
| code4rena.com/reports/2025-04-virtuals-protocol | IGovernor | unmatched — not counted | — | listed in scope and findings | no |
| code4rena.com/reports/2025-04-virtuals-protocol | IAgentNft | unmatched — not counted | — | listed in scope and findings | no |
| code4rena.com/reports/2025-04-virtuals-protocol | IAgentDAO | unmatched — not counted | — | listed in scope and findings | no |
| code4rena.com/reports/2025-04-virtuals-protocol | IServiceNft | unmatched — not counted | — | listed in scope and findings | no |
| code4rena.com/reports/2025-04-virtuals-protocol | IContributionNft | unmatched — not counted | — | listed in scope and findings | no |
| code4rena.com/reports/2025-04-virtuals-protocol | IEloCalculator | unmatched — not counted | — | listed in scope and findings | no |
| code4rena.com/reports/2025-04-virtuals-protocol | IAgentFactoryV3 | unmatched — not counted | — | listed in scope and findings | no |
| code4rena.com/reports/2025-04-virtuals-protocol | IAgentFactoryV2 | unmatched — not counted | — | listed in scope and findings | no |
| code4rena.com/reports/2025-04-virtuals-protocol | GovernorVotes | unmatched — not counted | — | listed in scope and findings | no |
| code4rena.com/reports/2025-04-virtuals-protocol | RewardSettingsCheckpoints | unmatched — not counted | — | listed in scope and findings | no |
| code4rena.com/reports/2025-04-virtuals-protocol | VirtualGenesisDAO | unmatched — not counted | — | listed in scope and findings | no |
| code4rena.com/reports/2025-04-virtuals-protocol | Genesis | unmatched — not counted | — | listed in scope and findings | no |
| code4rena.com/reports/2025-04-virtuals-protocol | FGenesis | unmatched — not counted | — | listed in scope and findings | no |
| spaces/rrll8DWDA3BJwEBqOtxm/uploads/EiyuRkwRb6NOUYtBLtzk/Virtuals Launchpad Smart Contract Suite Audit Report.pdf | Genesis | unmatched — not counted | — | listed in scope | no |
| spaces/rrll8DWDA3BJwEBqOtxm/uploads/EiyuRkwRb6NOUYtBLtzk/Virtuals Launchpad Smart Contract Suite Audit Report.pdf | FCGenesis | unmatched — not counted | — | listed in scope | no |
| spaces/rrll8DWDA3BJwEBqOtxm/uploads/EiyuRkwRb6NOUYtBLtzk/Virtuals Launchpad Smart Contract Suite Audit Report.pdf | Bonding | unmatched — not counted | — | referenced in findings H-1, L-3 | no |
| spaces/rrll8DWDA3BJwEBqOtxm/uploads/EiyuRkwRb6NOUYtBLtzk/Virtuals Launchpad Smart Contract Suite Audit Report.pdf | AgentFactoryV3 | unmatched — not counted | — | referenced in findings H-1 | no |
| spaces/rrll8DWDA3BJwEBqOtxm/uploads/EiyuRkwRb6NOUYtBLtzk/Virtuals Launchpad Smart Contract Suite Audit Report.pdf | FGenesis | unmatched — not counted | — | referenced in findings L-3 | no |
| spaces/rrll8DWDA3BJwEBqOtxm/uploads/QIpnKIH0Dx2tXiTyTyJu/Virtuals Protocol - Zenith Audit Report for Genesis.pdf | AgentMigrator | unmatched — not counted | — | listed in scope (contracts/* excl. contracts/dev excl. contracts/AgentReward*.sol excl. contracts/IAgentReward*.sol) | no |
| spaces/rrll8DWDA3BJwEBqOtxm/uploads/QIpnKIH0Dx2tXiTyTyJu/Virtuals Protocol - Zenith Audit Report for Genesis.pdf | AgentToken | unmatched — not counted | — | listed in scope | no |
| spaces/rrll8DWDA3BJwEBqOtxm/uploads/QIpnKIH0Dx2tXiTyTyJu/Virtuals Protocol - Zenith Audit Report for Genesis.pdf | AgentFactoryV3 | unmatched — not counted | — | listed in scope | no |
| spaces/rrll8DWDA3BJwEBqOtxm/uploads/QIpnKIH0Dx2tXiTyTyJu/Virtuals Protocol - Zenith Audit Report for Genesis.pdf | AgentFactoryV4 | unmatched — not counted | — | listed in scope | no |
| spaces/rrll8DWDA3BJwEBqOtxm/uploads/QIpnKIH0Dx2tXiTyTyJu/Virtuals Protocol - Zenith Audit Report for Genesis.pdf | Bonding | unmatched — not counted | — | listed in scope | no |
| spaces/rrll8DWDA3BJwEBqOtxm/uploads/QIpnKIH0Dx2tXiTyTyJu/Virtuals Protocol - Zenith Audit Report for Genesis.pdf | BondingTax | unmatched — not counted | — | listed in scope | no |
| spaces/rrll8DWDA3BJwEBqOtxm/uploads/QIpnKIH0Dx2tXiTyTyJu/Virtuals Protocol - Zenith Audit Report for Genesis.pdf | FERC20 | unmatched — not counted | — | listed in scope | no |
| spaces/rrll8DWDA3BJwEBqOtxm/uploads/QIpnKIH0Dx2tXiTyTyJu/Virtuals Protocol - Zenith Audit Report for Genesis.pdf | FRouter | unmatched — not counted | — | listed in scope | no |
| spaces/rrll8DWDA3BJwEBqOtxm/uploads/QIpnKIH0Dx2tXiTyTyJu/Virtuals Protocol - Zenith Audit Report for Genesis.pdf | AgentVeToken | unmatched — not counted | — | listed in scope | no |
| spaces/rrll8DWDA3BJwEBqOtxm/uploads/QIpnKIH0Dx2tXiTyTyJu/Virtuals Protocol - Zenith Audit Report for Genesis.pdf | AgentDAO | unmatched — not counted | — | listed in scope | no |
| spaces/rrll8DWDA3BJwEBqOtxm/uploads/QIpnKIH0Dx2tXiTyTyJu/Virtuals Protocol - Zenith Audit Report for Genesis.pdf | ServiceNft | unmatched — not counted | — | listed in scope | no |
| spaces/rrll8DWDA3BJwEBqOtxm/uploads/QIpnKIH0Dx2tXiTyTyJu/Virtuals Protocol - Zenith Audit Report for Genesis.pdf | ContributionNft | unmatched — not counted | — | listed in scope | no |
| spaces/rrll8DWDA3BJwEBqOtxm/uploads/QIpnKIH0Dx2tXiTyTyJu/Virtuals Protocol - Zenith Audit Report for Genesis.pdf | Airdrop | unmatched — not counted | — | listed in scope | no |
| spaces/rrll8DWDA3BJwEBqOtxm/uploads/QIpnKIH0Dx2tXiTyTyJu/Virtuals Protocol - Zenith Audit Report for Genesis.pdf | AgentTax | unmatched — not counted | — | listed in scope | no |
| spaces/rrll8DWDA3BJwEBqOtxm/uploads/zJ0JLeYiaEj32wwEna7w/Genesis Token Contract Audit Report.pdf | GenesisLib | unmatched — not counted | — | Context: GenesisLib.sol#L32 in finding 3.1.1 | no |
| spaces/rrll8DWDA3BJwEBqOtxm/uploads/zJ0JLeYiaEj32wwEna7w/Genesis Token Contract Audit Report.pdf | AgentFactoryV5 | unmatched — not counted | — | Context: AgentFactoryV5.sol#L168-L183, etc. in findings | no |
| spaces/rrll8DWDA3BJwEBqOtxm/uploads/zJ0JLeYiaEj32wwEna7w/Genesis Token Contract Audit Report.pdf | Genesis | unmatched — not counted | — | Context: Genesis.sol#L176-L194 in finding 3.2.2 | no |
| spaces/rrll8DWDA3BJwEBqOtxm/uploads/On9IPp8c4x9oIPxOSRxn/$VIRTUAL Staking Contract Audit Report.pdf | veVirtual | unmatched — not counted | — | listed in scope table | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| base | `0x0b3e32...4e7e1b` | OptimismMintableERC20 | bridge_template | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 82 |
| upstream | 0 |
| standard_library | 1 |
| needs_review | 10 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 5
- Inherited remapped matches: 0
- Address-book scope dispositions: 0 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 65 unmatched
- Matched-own operational status: 0 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=4, medium=1
- Match method counts: n/a

Zero-match audit list:

- [21060] code4rena.com/reports/2025-04-virtuals-protocol
- [21061] spaces/rrll8DWDA3BJwEBqOtxm/uploads/EiyuRkwRb6NOUYtBLtzk/Virtuals Launchpad Smart Contract Suite Audit Report.pdf
- [21062] spaces/rrll8DWDA3BJwEBqOtxm/uploads/QIpnKIH0Dx2tXiTyTyJu/Virtuals Protocol - Zenith Audit Report for Genesis.pdf
- [21063] spaces/rrll8DWDA3BJwEBqOtxm/uploads/zJ0JLeYiaEj32wwEna7w/Genesis Token Contract Audit Report.pdf
- [21064] spaces/rrll8DWDA3BJwEBqOtxm/uploads/On9IPp8c4x9oIPxOSRxn/$VIRTUAL Staking Contract Audit Report.pdf

Fork inheritance lineage and inherited audits are included when available.
