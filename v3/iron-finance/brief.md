# Agentic Audit Brief: Iron Finance

## Export Authority

- Production state: **blocked no audit authority**
- Raw selected rows: 0 across 0 audit(s)
- Eligible audit results: 0 (0 matched; 0 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `7fbef0dcf68cde7195f117d9b41f1e6d89891da495a42b57ae29b5e338972213`

## Project Overview

- Project: Iron Finance (`iron-finance`)
- Website: [https://iron.finance/](https://iron.finance/)
- Lifecycle: unknown
- Generated: 2026-07-15T18:00:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: avalanche, polygon
- Contract surface: 83 unique implementations (83 raw deployments)
- Coverage basis: not assessable — No eligible owned address-book contracts are available for an operational-liveness denominator.
- DeFi Llama TVL: $448,975.54
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## ⚠️ Limited Contract Surface

This brief covers only 0 contract implementation(s). The pipeline may not have discovered all deployed contracts for this project.
Coverage assessment and audit matching are based on this incomplete surface.

## Project Description

This brief describes the observed EVM deployment and audit surface for Iron Finance. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 1 contract row(s) across avalanche, polygon. Structural roles: 1 core. 1 row(s) use upgradeable patterns.

## Logic Topography

- Exact-run contract rows: 1
- Structural roles: core (1)
- Contract kinds: contract (1)
- Detected standards: erc20 (1), ownable (1)
- Frameworks: openzeppelin (1)
- Upgradeable-pattern rows: 1

## Contract Surface Quality

- Operational liveness prerequisite: not_applicable; 0/0 eligible owned address-book contracts resolved from completed operational-liveness snapshots.
- Indexed contracts: 1; live/inactive and live-deployment-unit totals are withheld until liveness completes.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: not assessable
- Coverage assessment: not_assessable (low confidence) — No eligible owned address-book contracts are available for an operational-liveness denominator.
- Address-book implementation classification: 0 own, 1 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 82 discovered implementations excluded (0 third-party/infra; 1 standard proxy/library)
- Proxy deployments represented within implementation groups: 5
- Operational liveness: not_applicable; 0/0 eligible owned address-book contracts resolved. Deployed-live counts are withheld from coverage.
- All verified address-book-owned implementations audited (incl. non-live): 0/0
- Verified + Unaudited implementations: 0
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 83
- Raw deployments: 83
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

### ⚠️ Verified + Unaudited (83)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| BlueIce | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xb1bf26...dde010` | ⚠️ Unaudited |
| BlueIceStaking | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xcffc0c...def7d2` | ⚠️ Unaudited |
| BlueIceStakingV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x0d88a7...2399d5` | ⚠️ Unaudited |
| BlueIceVotingProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xeeb889...855024` | ⚠️ Unaudited |
| CollateralOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x785808...beab86` | ⚠️ Unaudited |
| CollateralRatioPolicy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x267004...dc15e9` | ⚠️ Unaudited |
| CollateralRatioPolicyV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x25d4a2...59b47f` | ⚠️ Unaudited |
| CollateralReserve | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x6ec0bf...4b8db2` | ⚠️ Unaudited |
| ConsolidatedFund | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x1f7439...d2f59d` | ⚠️ Unaudited |
| Dollar | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xa2c095...1a183a` | ⚠️ Unaudited |
| DollarOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x232139...5a133f` | ⚠️ Unaudited |
| EIP173Proxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x1e55d5...2c4f66` | ⚠️ Unaudited |
| EmptyTreasury | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xb7784e...7862c8` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | polygon | n/a | `0xf0e515...70c1ba` | ⚠️ Unaudited |
| FeeDistributor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x08bb70...018510` | ⚠️ Unaudited |
| FixedPool | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x3c73c9...3cf5ff` | ⚠️ Unaudited |
| FixedShareOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x483dfd...344140` | ⚠️ Unaudited |
| FixedTitanOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x4f8095...f44348` | ⚠️ Unaudited |
| FundDistributor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xb627dc...67420e` | ⚠️ Unaudited |
| Ice | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | polygon | unit-243165 | `0x4a81f8...93f2ef` | ⚠️ Unaudited |
| IronChef | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x073667...6dfc47` | ⚠️ Unaudited |
| IronController | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x0bc3d1...6b4ce7` | ⚠️ Unaudited |
| IronInterestRateModel | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xa88631...659a50` | ⚠️ Unaudited |
| IronLens | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x5bd51b...d1e90d` | ⚠️ Unaudited |
| IronPool | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x27371d...50f701` | ⚠️ Unaudited |
| IronPriceOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x1ab1e8...3b9121` | ⚠️ Unaudited |
| IronStableCoin | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xdfda34...c21e91` | ⚠️ Unaudited |
| IronSwap | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x0455be...16a90f` | ⚠️ Unaudited |
| IronSwapLib | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x1ec6c0...7f6b45` | ⚠️ Unaudited |
| IronSwapRouter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x07ff55...a983a8` | ⚠️ Unaudited |
| IronTreasuryProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xb96d27...e01084` | ⚠️ Unaudited |
| JumpRateModelV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x020ad4...3ddbba` | ⚠️ Unaudited |
| Lottery | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x12d053...c6d4c2` | ⚠️ Unaudited |
| LPToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x49e78c...addf54` | ⚠️ Unaudited |
| MasterChef | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x08b524...37386e` | ⚠️ Unaudited |
| MasterChefFund | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xf622a4...a8666b` | ⚠️ Unaudited |
| Maximillion | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x550252...de4240` | ⚠️ Unaudited |
| MiniChefV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x77eb90...ac0ae7` | ⚠️ Unaudited |
| MockCollateral | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x4bea91...0f8286` | ⚠️ Unaudited |
| MockERC20 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x669b4d...a57a1d` | ⚠️ Unaudited |
| Multicall | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x2c738a...cb4d7e` | ⚠️ Unaudited |
| MultiPairOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xe7f488...2e4b53` | ⚠️ Unaudited |
| PcsPairOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x43d2b5...d083a8` | ⚠️ Unaudited |
| Pool | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x2a440f...e46dd9` | ⚠️ Unaudited |
| PriceReporter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x01f44b...be2eed` | ⚠️ Unaudited |
| PrizeReservePool | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x18f9fe...9fda44` | ⚠️ Unaudited |
| RandomNumberGenerator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x0dd560...73f2af` | ⚠️ Unaudited |
| RErc20Delegate | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | polygon | n/a | `0x186c41...543b61` | ⚠️ Unaudited |
| RErc20Delegator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x19d467...cc7ad6` | ⚠️ Unaudited |
| REther | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x4f8d28...512a73` | ⚠️ Unaudited |
| REtherRepayDelegate | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xa0c222...fcfd6b` | ⚠️ Unaudited |
| RewardEstimator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x416ecd...6d4148` | ⚠️ Unaudited |
| RewardToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x4c9395...8ed29a` | ⚠️ Unaudited |
| Router | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x70cfb5...6e51e5` | ⚠️ Unaudited |
| RouteRepository | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xe557f5...8b920f` | ⚠️ Unaudited |
| RStable | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x0141f5...7232bd` | ⚠️ Unaudited |
| RStableDelegate | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | polygon | n/a | `0x09ca5d...788c17` | ⚠️ Unaudited |
| RStableDelegator | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | polygon | n/a | `0x2a9d55...28e9ca` | ⚠️ Unaudited |
| Share | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x5c990c...676534` | ⚠️ Unaudited |
| ShareOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x57e4d8...392bdf` | ⚠️ Unaudited |
| SimpleERC20 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x6987b1...a8c385` | ⚠️ Unaudited |
| SpotPriceGetter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x5d9ea8...01ffba` | ⚠️ Unaudited |
| SpotPriceLens | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x2712c5...7d7245` | ⚠️ Unaudited |
| StableSwapLib | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x0958ef...470c0c` | ⚠️ Unaudited |
| StrategyIronV2Chef | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x39ff35...fa4ffe` | ⚠️ Unaudited |
| Swap | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x469fee...3cbb24` | ⚠️ Unaudited |
| TaxService | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x46532d...211e29` | ⚠️ Unaudited |
| Ticket | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x3dbd17...485e8c` | ⚠️ Unaudited |
| Timelock | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x18bf03...140cd0` | ⚠️ Unaudited |
| TitanVoteCount | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xd8fe1c...213b0d` | ⚠️ Unaudited |
| TokenBurner | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x1d98b3...7ed212` | ⚠️ Unaudited |
| Treasury | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x376b9e...124825` | ⚠️ Unaudited |
| TreasuryFund | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x11dd63...660948` | ⚠️ Unaudited |
| TreasuryPolicy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x2af231...354735` | ⚠️ Unaudited |
| UniPriceFeed | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xdfb61c...98eb13` | ⚠️ Unaudited |
| Unitroller | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | polygon | n/a | `0x54c6d8...4f38d6` | ⚠️ Unaudited |
| VaultController | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xade32e...47fc1b` | ⚠️ Unaudited |
| VaultFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x2567e9...16a477` | ⚠️ Unaudited |
| VaultFactoryV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x3d3d3c...88ef44` | ⚠️ Unaudited |
| VaultPolicy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x06b025...db62ca` | ⚠️ Unaudited |
| VotingEscrowToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xbf1b2b...049ff7` | ⚠️ Unaudited |
| Zap | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x364475...ac1911` | ⚠️ Unaudited |
| ZapPool | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x3e2662...65739a` | ⚠️ Unaudited |

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

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

- No persisted address-book scope analysis is available.

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 81 |
| upstream | 0 |
| standard_library | 2 |
| needs_review | 0 |

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
