# Agentic Audit Brief: Liquity

## Export Authority

- Production state: **published scope**
- Raw selected rows: 13 across 3 audit(s)
- Eligible audit results: 6 (3 matched; 3 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `7fbef0dcf68cde7195f117d9b41f1e6d89891da495a42b57ae29b5e338972213`

## Project Overview

- Project: Liquity (`liquity`)
- Website: [https://www.liquity.org/](https://www.liquity.org/)
- Lifecycle: unknown
- Generated: 2026-07-15T18:00:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: arbitrum, avalanche, base, berachain, ethereum, hyperliquid, optimism, scroll, sonic, swellchain
- Contract surface: 71 unique implementations (71 raw deployments)
- Coverage basis: 5/65 confirmed own live verified implementations (7.7%); conservative 7.7% with 0 needs-review implementation(s)
- DeFi Llama TVL: $204,759,211.00
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for Liquity. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 65 contract row(s) across arbitrum, avalanche, base, berachain, ethereum, hyperliquid, optimism, scroll, sonic, swellchain. Structural roles: 38 core, 18 supporting, 9 unclassified. No upgradeable pattern was identified in these rows.

## Logic Topography

- Exact-run contract rows: 65
- Structural roles: core (38), supporting (18), unclassified (9)
- Contract kinds: contract (61), unclassified (4)
- Detected standards: erc20 (10), erc165 (7), accesscontrol (5), erc20permit (4), erc721 (1)
- Frameworks: openzeppelin (35), solady (34), chainlink (5), foundry (3)
- Upgradeable-pattern rows: 0

## Fork Analysis

13 of 68 contracts are derived from known codebases. 55 contracts have no detected origin.

### Forked Contracts

**ActivePool** (`0x531a8f...7919a0`, chain 1)
Origin: liquity (`0xeb5a8c...b16afe`)
Containment: 100.0% - 26 functions inherited
Centroid audit status: pending_validation

Additions (unaudited): none

Removals (removed from original): none

**ActivePool** (`0x9074d7...79532f`, chain 1)
Origin: liquity (`0xeb5a8c...b16afe`)
Containment: 100.0% - 26 functions inherited
Centroid audit status: pending_validation

Additions (unaudited): none

Removals (removed from original): none

**AddressesRegistry** (`0x610604...3e8789`, chain 1)
Origin: liquity (`0x8d733f...3aac54`)
Containment: 100.0% - 23 functions inherited
Centroid audit status: pending_validation

Additions (unaudited): none

Removals (removed from original): none

**BorrowerOperations** (`0xa741a3...7d5da3`, chain 1)
Origin: liquity (`0x372abd...46bc65`)
Containment: 100.0% - 40 functions inherited
Centroid audit status: pending_validation

Additions (unaudited): none

Removals (removed from original): none

**BorrowerOperations** (`0xe8119f...a17329`, chain 1)
Origin: liquity (`0x372abd...46bc65`)
Containment: 100.0% - 40 functions inherited
Centroid audit status: pending_validation

Additions (unaudited): none

Removals (removed from original): none

**GasCompZapper** (`0xbe8b23...ab636f`, chain 1)
Origin: liquity (`0xbd69d3...c4127d`)
Containment: 100.0% - 21 functions inherited
Centroid audit status: pending_validation

Additions (unaudited): none

Removals (removed from original): none

**LeverageLSTZapper** (`0x75036b...3211a2`, chain 1)
Origin: liquity (`0xe85230...df0a56`)
Containment: 100.0% - 28 functions inherited
Centroid audit status: pending_validation

Additions (unaudited): none

Removals (removed from original): none

**SortedTroves** (`0x14d8d8...24f386`, chain 1)
Origin: liquity (`0xa25269...3063f4`)
Containment: 100.0% - 22 functions inherited
Centroid audit status: pending_validation

Additions (unaudited): none

Removals (removed from original): none

**SortedTroves** (`0x84eb85...2e86f1`, chain 1)
Origin: liquity (`0xa25269...3063f4`)
Containment: 100.0% - 22 functions inherited
Centroid audit status: pending_validation

Additions (unaudited): none

Removals (removed from original): none

**StabilityPool** (`0x9502b7...ebe56b`, chain 1)
Origin: liquity (`0x5721cb...4cf9bf`)
Containment: 100.0% - 25 functions inherited
Centroid audit status: pending_validation

Additions (unaudited): none

Removals (removed from original): none

**StabilityPool** (`0xd442e4...148695`, chain 1)
Origin: liquity (`0x5721cb...4cf9bf`)
Containment: 100.0% - 25 functions inherited
Centroid audit status: pending_validation

Additions (unaudited): none

Removals (removed from original): none

**TroveManager** (`0xa2895d...928b22`, chain 1)
Origin: liquity (`0x7bcb64...76cf5a`)
Containment: 100.0% - 36 functions inherited
Centroid audit status: pending_validation

Additions (unaudited): none

Removals (removed from original): none

**TroveManager** (`0xb2b2ab...e3e19e`, chain 1)
Origin: liquity (`0x7bcb64...76cf5a`)
Containment: 100.0% - 36 functions inherited
Centroid audit status: pending_validation

Additions (unaudited): none

Removals (removed from original): none

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0x0c76ea...56ac7e`, chain 1)
- UnnamedContract (`0x2f60ba...8c8686`, chain 1)
- UnnamedContract (`0x84533b...dbb11a`, chain 999)
- UnnamedContract (`0x03569c...81b01d`, chain 43114)
- ActivePool (`0xeb5a8c...b16afe`, chain 1)
- AddressesRegistry (`0x8d733f...3aac54`, chain 1)
- BoldToken (`0x6440f1...beb01d`, chain 1)
- BorrowerOperations (`0x372abd...46bc65`, chain 1)
- BurnMintERC20 (`0x03569c...81b01d`, chain 10)
- BurnMintERC20 (`0xf05a20...8cb1c9`, chain 146)
- BurnMintERC20 (`0x03569c...81b01d`, chain 8453)
- BurnMintERC20 (`0x03569c...81b01d`, chain 42161)
- BurnMintERC20 (`0xf05a20...8cb1c9`, chain 80094)
- BurnMintERC20 (`0x03569c...81b01d`, chain 534352)
- CollateralRegistry (`0xf94998...386684`, chain 1)
- CollSurplusPool (`0x36e6cb...d0a235`, chain 1)
- CollSurplusPool (`0xba4a2b...3192bf`, chain 1)
- CollSurplusPool (`0xedbe25...50e2bf`, chain 1)
- CurveStableSwapNG (`0x7ed17e...18f12b`, chain 1)
- CurveStableSwapNG (`0xefc651...a54b3e`, chain 1)
- CurveV2GaugeRewards (`0xba415a...ee33b4`, chain 1)
- DefaultPool (`0x5cc5ce...ddcd6b`, chain 1)
- DefaultPool (`0xd45582...e5b1a0`, chain 1)
- DefaultPool (`0xd796e1...6a22a1`, chain 1)
- GasCompZapper (`0xbd69d3...c4127d`, chain 1)
- GasPool (`0x45c81d...8dad41`, chain 1)
- GasPool (`0x7b9ab3...bcf921`, chain 1)
- GasPool (`0x8c44fb...81db1f`, chain 1)
- GnosisSafeProxy (`0xdc6f86...f7f690`, chain 1)
- Governance (`0x807def...d6eee1`, chain 1)
- HintHelpers (`0xf0cae1...cbe657`, chain 1)
- LeverageLSTZapper (`0xe85230...df0a56`, chain 1)
- LeverageWETHZapper (`0xdccbd7...770ae3`, chain 1)
- LiquidityGaugeV6 (`0x07a014...ad05e9`, chain 1)
- LiquidityGaugeV6 (`0xa37cdc...5d6c5c`, chain 1)
- LQTYStaking (`0x4f9fbb...fc605d`, chain 1)
- LQTYToken (`0x6dea81...88c54d`, chain 1)
- LUSDToken (`0x5f9880...568ba0`, chain 1)
- MetadataNFT (`0x340087...7171af`, chain 1)
- MetadataNFT (`0x362f82...f682a1`, chain 1)
- MetadataNFT (`0x9b36c3...af4a12`, chain 1)
- MultiTroveGetter (`0xfa61db...31d235`, chain 1)
- RocketTokenRETH (`0xae7873...fc6393`, chain 1)
- SortedTroves (`0xa25269...3063f4`, chain 1)
- StabilityPool (`0x5721cb...4cf9bf`, chain 1)
- TroveManager (`0x7bcb64...76cf5a`, chain 1)
- TroveNFT (`0x1a0fc0...838013`, chain 1)
- TroveNFT (`0x7ae430...4c0873`, chain 1)
- TroveNFT (`0x857aec...a31b04`, chain 1)
- UnnamedContract (`0x1a17b2...bb0d8c`, chain 1923)
- WETH9 (`0xc02aaa...756cc2`, chain 1)
- WETHPriceFeed (`0xcc5f81...03c24f`, chain 1)
- WETHZapper (`0x7022a4...e70c1f`, chain 1)
- WstETH (`0x7f39c5...5e2ca0`, chain 1)
- WSTETHPriceFeed (`0xe7aa2b...6e314e`, chain 1)

## Contract Surface Quality

- Indexed contracts: 65; live-surface contracts included: 65 (65 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 70/70 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 5/65 (7.7%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 70 own, 1 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 0 discovered implementations excluded (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 1
- Deployed-live implementations: 70 of 71 unique (rest dead/inactive/uninitialized)
- All verified address-book-owned implementations audited (incl. non-live): 5/65
- Verified + Unaudited implementations: 60
- Verified by bytecode match: 0
- Unverified implementations: 5
- Unique implementations: 71
- Raw deployments: 71
- Audits discovered: 6 (6 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 3
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2025-01 (aging)
- Audit staleness (calendar age): 0 fresh, 2 aging, 4 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 5 match-unverified
- Tier 1 coverage: 4.6% (Trail of Bits)

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| Coinspect | Tier 2 | 5 | 7.7% | 2025-01 |
| yAudit | Tier 2 | 5 | 7.7% | 2021-03 |
| Trail of Bits | Tier 1 | 3 | 4.6% | 2021-01 |

## Contract Surface

### ✅ Verified + Audited (5)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| HintHelpers | periphery | project_anchor | own_supporting | 0 | ethereum | unit-388573 | `0xf0cae1...cbe657` | ✅ Audited |
| LQTYStaking | unknown | project_anchor | own_supporting | 0 | ethereum | unit-388528 | `0x4f9fbb...fc605d` | ✅ Audited |
| LQTYToken | token | project_anchor | own_supporting | 0 | ethereum | unit-388535 | `0x6dea81...88c54d` | ✅ Audited |
| LUSDToken | token | project_anchor | own_supporting | 0 | ethereum | unit-388532 | `0x5f9880...568ba0` | ✅ Audited |
| MultiTroveGetter | unknown | project_anchor | own_supporting | 0 | ethereum | unit-388575 | `0xfa61db...31d235` | ✅ Audited |

### ⚠️ Verified + Unaudited (60)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| ActivePool | core_logic | project_anchor | own_supporting | 0 | ethereum | unit-388529 | `0x531a8f...7919a0` | ⚠️ Unaudited |
| ActivePool | core_logic | project_anchor | own_supporting | 0 | ethereum | unit-388548 | `0x9074d7...79532f` | ⚠️ Unaudited |
| ActivePool | core_logic | project_anchor | own_supporting | 0 | ethereum | unit-388570 | `0xeb5a8c...b16afe` | ⚠️ Unaudited |
| AddressesRegistry | unknown | project_anchor | own_supporting | 0 | ethereum | unit-388520 | `0x20f7c9...417526` | ⚠️ Unaudited |
| AddressesRegistry | registry | project_anchor | own_supporting | 0 | ethereum | unit-388533 | `0x610604...3e8789` | ⚠️ Unaudited |
| AddressesRegistry | registry | project_anchor | own_supporting | 0 | ethereum | unit-388547 | `0x8d733f...3aac54` | ⚠️ Unaudited |
| BoldToken | token | project_anchor | own_supporting | 0 | ethereum | unit-388534 | `0x6440f1...beb01d` | ⚠️ Unaudited |
| BorrowerOperations | core_logic | project_anchor | own_supporting | 0 | ethereum | unit-388526 | `0x372abd...46bc65` | ⚠️ Unaudited |
| BorrowerOperations | core_logic | project_anchor | own_supporting | 0 | ethereum | unit-388554 | `0xa741a3...7d5da3` | ⚠️ Unaudited |
| BorrowerOperations | core_logic | project_anchor | own_supporting | 0 | ethereum | unit-388568 | `0xe8119f...a17329` | ⚠️ Unaudited |
| BurnMintERC20 | token | project_anchor | own_supporting | 0 | optimism | unit-388576 | `0x03569c...81b01d` | ⚠️ Unaudited |
| BurnMintERC20 | token | project_anchor | own_supporting | 0 | sonic | unit-388577 | `0xf05a20...8cb1c9` | ⚠️ Unaudited |
| BurnMintERC20 | token | project_anchor | own_supporting | 0 | base | unit-388583 | `0x03569c...81b01d` | ⚠️ Unaudited |
| BurnMintERC20 | token | project_anchor | own_supporting | 0 | arbitrum | unit-388579 | `0x03569c...81b01d` | ⚠️ Unaudited |
| BurnMintERC20 | token | project_anchor | own_supporting | 0 | berachain | unit-388582 | `0xf05a20...8cb1c9` | ⚠️ Unaudited |
| BurnMintERC20 | token | project_anchor | own_supporting | 0 | scroll | unit-388581 | `0x03569c...81b01d` | ⚠️ Unaudited |
| CollateralRegistry | registry | project_anchor | own_supporting | 0 | ethereum | unit-388574 | `0xf94998...386684` | ⚠️ Unaudited |
| CollSurplusPool | core_logic | project_anchor | own_supporting | 0 | ethereum | unit-388525 | `0x36e6cb...d0a235` | ⚠️ Unaudited |
| CollSurplusPool | core_logic | project_anchor | own_supporting | 0 | ethereum | unit-388558 | `0xba4a2b...3192bf` | ⚠️ Unaudited |
| CollSurplusPool | core_logic | project_anchor | own_supporting | 0 | ethereum | unit-388571 | `0xedbe25...50e2bf` | ⚠️ Unaudited |
| CurveStableSwapNG | operational_periphery | project_anchor | own_supporting | 0 | ethereum | unit-388541 | `0x7ed17e...18f12b` | ⚠️ Unaudited |
| CurveStableSwapNG | operational_periphery | project_anchor | own_supporting | 0 | ethereum | unit-388572 | `0xefc651...a54b3e` | ⚠️ Unaudited |
| CurveV2GaugeRewards | operational_periphery | project_anchor | own_supporting | 0 | ethereum | unit-388557 | `0xba415a...ee33b4` | ⚠️ Unaudited |
| DefaultPool | core_logic | project_anchor | own_supporting | 0 | ethereum | unit-388531 | `0x5cc5ce...ddcd6b` | ⚠️ Unaudited |
| DefaultPool | core_logic | project_anchor | own_supporting | 0 | ethereum | unit-388564 | `0xd45582...e5b1a0` | ⚠️ Unaudited |
| DefaultPool | core_logic | project_anchor | own_supporting | 0 | ethereum | unit-388565 | `0xd796e1...6a22a1` | ⚠️ Unaudited |
| GasCompZapper | adapter | project_anchor | own_supporting | 0 | ethereum | unit-388559 | `0xbd69d3...c4127d` | ⚠️ Unaudited |
| GasCompZapper | adapter | project_anchor | own_supporting | 0 | ethereum | unit-388560 | `0xbe8b23...ab636f` | ⚠️ Unaudited |
| GasPool | core_logic | project_anchor | own_supporting | 0 | ethereum | unit-388527 | `0x45c81d...8dad41` | ⚠️ Unaudited |
| GasPool | core_logic | project_anchor | own_supporting | 0 | ethereum | unit-388539 | `0x7b9ab3...bcf921` | ⚠️ Unaudited |
| GasPool | core_logic | project_anchor | own_supporting | 0 | ethereum | unit-388546 | `0x8c44fb...81db1f` | ⚠️ Unaudited |
| GnosisSafeL2 | governance | project_anchor | own_supporting | 1 | ethereum | unit-388585 | `0xdc6f86...f7f690` | ⚠️ Unaudited |
| Governance | unknown | project_anchor | own_supporting | 0 | ethereum | unit-388543 | `0x807def...d6eee1` | ⚠️ Unaudited |
| LeverageLSTZapper | adapter | project_anchor | own_supporting | 0 | ethereum | unit-388537 | `0x75036b...3211a2` | ⚠️ Unaudited |
| LeverageLSTZapper | adapter | project_anchor | own_supporting | 0 | ethereum | unit-388569 | `0xe85230...df0a56` | ⚠️ Unaudited |
| LeverageWETHZapper | adapter | project_anchor | own_supporting | 0 | ethereum | unit-388566 | `0xdccbd7...770ae3` | ⚠️ Unaudited |
| LiquidityGaugeV6 | operational_periphery | project_anchor | own_supporting | 0 | ethereum | unit-388516 | `0x07a014...ad05e9` | ⚠️ Unaudited |
| LiquidityGaugeV6 | operational_periphery | project_anchor | own_supporting | 0 | ethereum | unit-388553 | `0xa37cdc...5d6c5c` | ⚠️ Unaudited |
| MetadataNFT | token | project_anchor | own_supporting | 0 | ethereum | unit-388522 | `0x340087...7171af` | ⚠️ Unaudited |
| MetadataNFT | token | project_anchor | own_supporting | 0 | ethereum | unit-388524 | `0x362f82...f682a1` | ⚠️ Unaudited |
| MetadataNFT | token | project_anchor | own_supporting | 0 | ethereum | unit-388550 | `0x9b36c3...af4a12` | ⚠️ Unaudited |
| RETHPriceFeed | unknown | project_anchor | own_supporting | 0 | ethereum | unit-388523 | `0x34f1e9...8b7b2b` | ⚠️ Unaudited |
| RocketTokenRETH | token | project_anchor | own_supporting | 0 | ethereum | unit-388555 | `0xae7873...fc6393` | ⚠️ Unaudited |
| SortedTroves | unknown | project_anchor | own_supporting | 0 | ethereum | unit-388518 | `0x14d8d8...24f386` | ⚠️ Unaudited |
| SortedTroves | unknown | project_anchor | own_supporting | 0 | ethereum | unit-388544 | `0x84eb85...2e86f1` | ⚠️ Unaudited |
| SortedTroves | unknown | project_anchor | own_supporting | 0 | ethereum | unit-388551 | `0xa25269...3063f4` | ⚠️ Unaudited |
| StabilityPool | core_logic | project_anchor | own_supporting | 0 | ethereum | unit-388530 | `0x5721cb...4cf9bf` | ⚠️ Unaudited |
| StabilityPool | core_logic | project_anchor | own_supporting | 0 | ethereum | unit-388549 | `0x9502b7...ebe56b` | ⚠️ Unaudited |
| StabilityPool | core_logic | project_anchor | own_supporting | 0 | ethereum | unit-388563 | `0xd442e4...148695` | ⚠️ Unaudited |
| TroveManager | governance | project_anchor | own_supporting | 0 | ethereum | unit-388540 | `0x7bcb64...76cf5a` | ⚠️ Unaudited |
| TroveManager | governance | project_anchor | own_supporting | 0 | ethereum | unit-388552 | `0xa2895d...928b22` | ⚠️ Unaudited |
| TroveManager | governance | project_anchor | own_supporting | 0 | ethereum | unit-388556 | `0xb2b2ab...e3e19e` | ⚠️ Unaudited |
| TroveNFT | token | project_anchor | own_supporting | 0 | ethereum | unit-388519 | `0x1a0fc0...838013` | ⚠️ Unaudited |
| TroveNFT | token | project_anchor | own_supporting | 0 | ethereum | unit-388538 | `0x7ae430...4c0873` | ⚠️ Unaudited |
| TroveNFT | token | project_anchor | own_supporting | 0 | ethereum | unit-388545 | `0x857aec...a31b04` | ⚠️ Unaudited |
| WETH9 | token | project_anchor | own_supporting | 0 | ethereum | unit-388561 | `0xc02aaa...756cc2` | ⚠️ Unaudited |
| WETHPriceFeed | operational_periphery | project_anchor | own_supporting | 0 | ethereum | unit-388562 | `0xcc5f81...03c24f` | ⚠️ Unaudited |
| WETHZapper | adapter | project_anchor | own_supporting | 0 | ethereum | unit-388536 | `0x7022a4...e70c1f` | ⚠️ Unaudited |
| WstETH | token | project_anchor | own_supporting | 0 | ethereum | unit-388542 | `0x7f39c5...5e2ca0` | ⚠️ Unaudited |
| WSTETHPriceFeed | operational_periphery | project_anchor | own_supporting | 0 | ethereum | unit-388567 | `0xe7aa2b...6e314e` | ⚠️ Unaudited |

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
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | n/a | `0x000000...000000` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-388517 | `0x0c76ea...56ac7e` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-388521 | `0x2f60ba...8c8686` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | hyperliquid | unit-388584 | `0x84533b...dbb11a` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | swellchain | unit-388578 | `0x1a17b2...bb0d8c` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | avalanche | unit-388580 | `0x03569c...81b01d` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [Liquity.pdf](https://github.com/trailofbits/publications/blob/master/reviews/Liquity.pdf) | Trail of Bits | Audit | 2021-01 | stale | Direct | contract_name | matched | 3 | 0 | 0 | 12 | high |
| [www.coinspect.com/blog/liquity-audit](https://www.coinspect.com/blog/liquity-audit) | unknown | Audit | 2021-03 | stale | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |
| [Liquity - Smart Contract Audit 2021.pdf](https://www.coinspect.com/doc/Liquity%20%2D%20Smart%20Contract%20Audit%202021%2Epdf) | yAudit | Audit | 2021-03 | stale | Direct | contract_name | matched | 5 | 0 | 0 | 55 | high |
| [www.coinspect.com/blog/liquity-v2-governance-smart-contract-audit](https://www.coinspect.com/blog/liquity-v2-governance-smart-contract-audit) | Coinspect | Audit | 2025-01 | aging | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |
| [www.coinspect.com/blog/liquity-v2-bold-smart-contract-audit](https://www.coinspect.com/blog/liquity-v2-bold-smart-contract-audit) | Coinspect | Audit | 2025-01 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 1 | low |
| [Liquity - Smart Contract Audit 2021.pdf](https://www.coinspect.com/doc/Liquity%20%2D%20Smart%20Contract%20Audit%202021.pdf) | Coinspect | Audit | 2021-03 | stale | Direct | contract_name | matched | 5 | 0 | 0 | 55 | high |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [13390] Liquity.pdf — matched: Extracted contract names from Coverage section (page 6) and findings targets. Audit date from cover page: 'January 13, 2021'.
- [13391] www.coinspect.com/blog/liquity-audit — no match: The report text does not list specific contract names or files in scope. It only mentions the Liquity Protocol generally.
- [13392] Liquity - Smart Contract Audit 2021.pdf — matched: All Solidity source files listed with sha256 hashes in the scope section are included. The audit date is March 2021, interpreted as end of month.
- [13393] www.coinspect.com/blog/liquity-v2-governance-smart-contract-audit — no match: The report text does not list specific contract names or file paths in scope. It only describes the system at a high level.
- [13394] www.coinspect.com/blog/liquity-v2-bold-smart-contract-audit — no match: The report text does not contain a clear scope section or list of contract files. Only 'Bold Core' is mentioned as the implementation audited, but no specific contract names or file paths are provided.
- [16572] Liquity - Smart Contract Audit 2021.pdf — matched: All Solidity source files listed with sha256 hashes in the scope section are included. The audit date is March 2021, interpreted as end of month.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| Liquity.pdf | BorrowerOperations | ambiguous — not counted | BorrowerOperations (alternative) `0x372abd...46bc65` — deployed 2025-05-19 12:19:35+03 — liveness: live (code_present_context)<br>BorrowerOperations (alternative) `0xa741a3...7d5da3` — deployed 2025-05-19 12:23:35+03 — liveness: live (code_present_context)<br>BorrowerOperations (alternative) `0xe8119f...a17329` — deployed 2025-05-19 12:27:23+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| Liquity.pdf | TroveManager | ambiguous — not counted | TroveManager (alternative) `0xb2b2ab...e3e19e` — deployed 2025-05-19 12:27:35+03 — liveness: live (code_present_context)<br>TroveManager (alternative) `0x7bcb64...76cf5a` — deployed 2025-05-19 12:19:47+03 — liveness: live (code_present_context)<br>TroveManager (alternative) `0xa2895d...928b22` — deployed 2025-05-19 12:23:47+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| Liquity.pdf | ActivePool | ambiguous — not counted | ActivePool (alternative) `0xeb5a8c...b16afe` — deployed 2025-05-19 12:20:23+03 — liveness: live (code_present_context)<br>ActivePool (alternative) `0x9074d7...79532f` — deployed 2025-05-19 12:28:11+03 — liveness: live (code_present_context)<br>ActivePool (alternative) `0x531a8f...7919a0` — deployed 2025-05-19 12:24:23+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| Liquity.pdf | DefaultPool | ambiguous — not counted | DefaultPool (alternative) `0x5cc5ce...ddcd6b` — deployed 2025-05-19 12:28:23+03 — liveness: live (code_present_context)<br>DefaultPool (alternative) `0xd45582...e5b1a0` — deployed 2025-05-19 12:20:35+03 — liveness: live (code_present_context)<br>DefaultPool (alternative) `0xd796e1...6a22a1` — deployed 2025-05-19 12:24:35+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| Liquity.pdf | StabilityPool | ambiguous — not counted | StabilityPool (alternative) `0x5721cb...4cf9bf` — deployed 2025-05-19 12:20:11+03 — liveness: live (code_present_context)<br>StabilityPool (alternative) `0xd442e4...148695` — deployed 2025-05-19 12:27:59+03 — liveness: live (code_present_context)<br>StabilityPool (alternative) `0x9502b7...ebe56b` — deployed 2025-05-19 12:24:11+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| Liquity.pdf | LUSDToken | own contract | LUSDToken (selected) `0x5f9880...568ba0` — deployed 2021-04-05 11:28:19+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Liquity.pdf | LQTYToken | own contract | LQTYToken (selected) `0x6dea81...88c54d` — deployed 2021-04-05 11:33:10+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Liquity.pdf | SortedTroves | ambiguous — not counted | SortedTroves (alternative) `0xa25269...3063f4` — deployed 2025-05-19 12:21:11+03 — liveness: live (code_present_context)<br>SortedTroves (alternative) `0x84eb85...2e86f1` — deployed 2025-05-19 12:25:11+03 — liveness: live (code_present_context)<br>SortedTroves (alternative) `0x14d8d8...24f386` — deployed 2025-05-19 12:28:59+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| Liquity.pdf | LockupContractFactory | unmatched — not counted | — | Finding TOB-LQT-010: 'Target: LockupContractFactory.sol' | no |
| Liquity.pdf | OneYearLockupContract | unmatched — not counted | — | Finding TOB-LQT-010: 'Target: ...OneYearLockupContract.sol' | no |
| Liquity.pdf | CustomDurationLockupContract | unmatched — not counted | — | Finding TOB-LQT-010: 'Target: ...CustomDurationLockupContract.sol' | no |
| Liquity.pdf | PriceFeed | unmatched — not counted | — | Coverage section: 'Pool contracts...' and Appendix E | no |
| Liquity.pdf | LQTYStaking | own contract | LQTYStaking (selected) `0x4f9fbb...fc605d` — deployed 2021-04-05 11:31:21+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Liquity.pdf | GasPool | ambiguous — not counted | GasPool (alternative) `0x45c81d...8dad41` — deployed 2025-05-19 12:28:35+03 — liveness: live (code_present_context)<br>GasPool (alternative) `0x7b9ab3...bcf921` — deployed 2025-05-19 12:20:47+03 — liveness: live (code_present_context)<br>GasPool (alternative) `0x8c44fb...81db1f` — deployed 2025-05-19 12:24:47+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| Liquity.pdf | LiquityBase | unmatched — not counted | — | Appendix G: 'They consolidated them into a single implementation in LiquityBase' | no |
| Liquity - Smart Contract Audit 2021.pdf | HintHelpers | own contract | HintHelpers (selected) `0xf0cae1...cbe657` — deployed 2025-05-19 12:18:11+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Liquity - Smart Contract Audit 2021.pdf | ActivePool | ambiguous — not counted | ActivePool (alternative) `0xeb5a8c...b16afe` — deployed 2025-05-19 12:20:23+03 — liveness: live (code_present_context)<br>ActivePool (alternative) `0x9074d7...79532f` — deployed 2025-05-19 12:28:11+03 — liveness: live (code_present_context)<br>ActivePool (alternative) `0x531a8f...7919a0` — deployed 2025-05-19 12:24:23+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| Liquity - Smart Contract Audit 2021.pdf | PriceFeed | unmatched — not counted | — | listed in scope with sha256 hash | no |
| Liquity - Smart Contract Audit 2021.pdf | GasPool | ambiguous — not counted | GasPool (alternative) `0x45c81d...8dad41` — deployed 2025-05-19 12:28:35+03 — liveness: live (code_present_context)<br>GasPool (alternative) `0x7b9ab3...bcf921` — deployed 2025-05-19 12:20:47+03 — liveness: live (code_present_context)<br>GasPool (alternative) `0x8c44fb...81db1f` — deployed 2025-05-19 12:24:47+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| Liquity - Smart Contract Audit 2021.pdf | StabilityPool | ambiguous — not counted | StabilityPool (alternative) `0x5721cb...4cf9bf` — deployed 2025-05-19 12:20:11+03 — liveness: live (code_present_context)<br>StabilityPool (alternative) `0xd442e4...148695` — deployed 2025-05-19 12:27:59+03 — liveness: live (code_present_context)<br>StabilityPool (alternative) `0x9502b7...ebe56b` — deployed 2025-05-19 12:24:11+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| Liquity - Smart Contract Audit 2021.pdf | BorrowerOperations | ambiguous — not counted | BorrowerOperations (alternative) `0x372abd...46bc65` — deployed 2025-05-19 12:19:35+03 — liveness: live (code_present_context)<br>BorrowerOperations (alternative) `0xa741a3...7d5da3` — deployed 2025-05-19 12:23:35+03 — liveness: live (code_present_context)<br>BorrowerOperations (alternative) `0xe8119f...a17329` — deployed 2025-05-19 12:27:23+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| Liquity - Smart Contract Audit 2021.pdf | LQTYStaking | own contract | LQTYStaking (selected) `0x4f9fbb...fc605d` — deployed 2021-04-05 11:31:21+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Liquity - Smart Contract Audit 2021.pdf | LockupContract | unmatched — not counted | — | listed in scope with sha256 hash | no |
| Liquity - Smart Contract Audit 2021.pdf | CommunityIssuance | unmatched — not counted | — | listed in scope with sha256 hash | no |
| Liquity - Smart Contract Audit 2021.pdf | LQTYToken | own contract | LQTYToken (selected) `0x6dea81...88c54d` — deployed 2021-04-05 11:33:10+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Liquity - Smart Contract Audit 2021.pdf | LockupContractFactory | unmatched — not counted | — | listed in scope with sha256 hash | no |
| Liquity - Smart Contract Audit 2021.pdf | TroveManager | ambiguous — not counted | TroveManager (alternative) `0xb2b2ab...e3e19e` — deployed 2025-05-19 12:27:35+03 — liveness: live (code_present_context)<br>TroveManager (alternative) `0x7bcb64...76cf5a` — deployed 2025-05-19 12:19:47+03 — liveness: live (code_present_context)<br>TroveManager (alternative) `0xa2895d...928b22` — deployed 2025-05-19 12:23:47+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| Liquity - Smart Contract Audit 2021.pdf | StabilityPoolScript | unmatched — not counted | — | listed in scope with sha256 hash | no |
| Liquity - Smart Contract Audit 2021.pdf | TroveManagerScript | unmatched — not counted | — | listed in scope with sha256 hash | no |
| Liquity - Smart Contract Audit 2021.pdf | BorrowerOperationsScript | unmatched — not counted | — | listed in scope with sha256 hash | no |
| Liquity - Smart Contract Audit 2021.pdf | LQTYStakingScript | unmatched — not counted | — | listed in scope with sha256 hash | no |
| Liquity - Smart Contract Audit 2021.pdf | ETHTransferScript | unmatched — not counted | — | listed in scope with sha256 hash | no |
| Liquity - Smart Contract Audit 2021.pdf | BorrowerWrappersScript | unmatched — not counted | — | listed in scope with sha256 hash | no |
| Liquity - Smart Contract Audit 2021.pdf | TokenScript | unmatched — not counted | — | listed in scope with sha256 hash | no |
| Liquity - Smart Contract Audit 2021.pdf | ILockupContractFactory | unmatched — not counted | — | listed in scope with sha256 hash | no |
| Liquity - Smart Contract Audit 2021.pdf | IBorrowerOperations | unmatched — not counted | — | listed in scope with sha256 hash | no |
| Liquity - Smart Contract Audit 2021.pdf | ICommunityIssuance | unmatched — not counted | — | listed in scope with sha256 hash | no |
| Liquity - Smart Contract Audit 2021.pdf | ITroveManager | unmatched — not counted | — | listed in scope with sha256 hash | no |
| Liquity - Smart Contract Audit 2021.pdf | ITellorCaller | unmatched — not counted | — | listed in scope with sha256 hash | no |
| Liquity - Smart Contract Audit 2021.pdf | IPriceFeed | unmatched — not counted | — | listed in scope with sha256 hash | no |
| Liquity - Smart Contract Audit 2021.pdf | ILQTYStaking | unmatched — not counted | — | listed in scope with sha256 hash | no |
| Liquity - Smart Contract Audit 2021.pdf | ILUSDToken | unmatched — not counted | — | listed in scope with sha256 hash | no |
| Liquity - Smart Contract Audit 2021.pdf | IActivePool | unmatched — not counted | — | listed in scope with sha256 hash | no |
| Liquity - Smart Contract Audit 2021.pdf | ISortedTroves | unmatched — not counted | — | listed in scope with sha256 hash | no |
| Liquity - Smart Contract Audit 2021.pdf | IDefaultPool | unmatched — not counted | — | listed in scope with sha256 hash | no |
| Liquity - Smart Contract Audit 2021.pdf | IStabilityPool | unmatched — not counted | — | listed in scope with sha256 hash | no |
| Liquity - Smart Contract Audit 2021.pdf | ICollSurplusPool | unmatched — not counted | — | listed in scope with sha256 hash | no |
| Liquity - Smart Contract Audit 2021.pdf | IPool | unmatched — not counted | — | listed in scope with sha256 hash | no |
| Liquity - Smart Contract Audit 2021.pdf | ILQTYToken | unmatched — not counted | — | listed in scope with sha256 hash | no |
| Liquity - Smart Contract Audit 2021.pdf | ILiquityBase | unmatched — not counted | — | listed in scope with sha256 hash | no |
| Liquity - Smart Contract Audit 2021.pdf | MultiTroveGetter | own contract | MultiTroveGetter (selected) `0xfa61db...31d235` — deployed 2025-05-19 12:18:23+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Liquity - Smart Contract Audit 2021.pdf | Ownable | unmatched — not counted | — | listed in scope with sha256 hash | no |
| Liquity - Smart Contract Audit 2021.pdf | TellorCaller | unmatched — not counted | — | listed in scope with sha256 hash | no |
| Liquity - Smart Contract Audit 2021.pdf | SafeMath | unmatched — not counted | — | listed in scope with sha256 hash | no |
| Liquity - Smart Contract Audit 2021.pdf | console | unmatched — not counted | — | listed in scope with sha256 hash | no |
| Liquity - Smart Contract Audit 2021.pdf | LiquitySafeMath128 | unmatched — not counted | — | listed in scope with sha256 hash | no |
| Liquity - Smart Contract Audit 2021.pdf | IERC2612 | unmatched — not counted | — | listed in scope with sha256 hash | no |
| Liquity - Smart Contract Audit 2021.pdf | LiquityMath | unmatched — not counted | — | listed in scope with sha256 hash | no |
| Liquity - Smart Contract Audit 2021.pdf | ITellor | unmatched — not counted | — | listed in scope with sha256 hash | no |
| Liquity - Smart Contract Audit 2021.pdf | CheckContract | unmatched — not counted | — | listed in scope with sha256 hash | no |
| Liquity - Smart Contract Audit 2021.pdf | IERC20 | unmatched — not counted | — | listed in scope with sha256 hash | no |
| Liquity - Smart Contract Audit 2021.pdf | LiquityBase | unmatched — not counted | — | listed in scope with sha256 hash | no |
| Liquity - Smart Contract Audit 2021.pdf | AggregatorV3Interface | unmatched — not counted | — | listed in scope with sha256 hash | no |
| Liquity - Smart Contract Audit 2021.pdf | BaseMath | unmatched — not counted | — | listed in scope with sha256 hash | no |
| Liquity - Smart Contract Audit 2021.pdf | LUSDToken | own contract | LUSDToken (selected) `0x5f9880...568ba0` — deployed 2021-04-05 11:28:19+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Liquity - Smart Contract Audit 2021.pdf | Migrations | unmatched — not counted | — | listed in scope with sha256 hash | no |
| Liquity - Smart Contract Audit 2021.pdf | CollSurplusPool | ambiguous — not counted | CollSurplusPool (alternative) `0x36e6cb...d0a235` — deployed 2025-05-19 12:24:59+03 — liveness: live (code_present_context)<br>CollSurplusPool (alternative) `0xba4a2b...3192bf` — deployed 2025-05-19 12:28:47+03 — liveness: live (code_present_context)<br>CollSurplusPool (alternative) `0xedbe25...50e2bf` — deployed 2025-05-19 12:20:59+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| Liquity - Smart Contract Audit 2021.pdf | SortedTroves | ambiguous — not counted | SortedTroves (alternative) `0xa25269...3063f4` — deployed 2025-05-19 12:21:11+03 — liveness: live (code_present_context)<br>SortedTroves (alternative) `0x84eb85...2e86f1` — deployed 2025-05-19 12:25:11+03 — liveness: live (code_present_context)<br>SortedTroves (alternative) `0x14d8d8...24f386` — deployed 2025-05-19 12:28:59+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| Liquity - Smart Contract Audit 2021.pdf | ERC20Mock | unmatched — not counted | — | listed in scope with sha256 hash | no |
| Liquity - Smart Contract Audit 2021.pdf | IUnipool | unmatched — not counted | — | listed in scope with sha256 hash | no |
| Liquity - Smart Contract Audit 2021.pdf | ILPTokenWrapper | unmatched — not counted | — | listed in scope with sha256 hash | no |
| Liquity - Smart Contract Audit 2021.pdf | SafeERC20 | unmatched — not counted | — | listed in scope with sha256 hash | no |
| Liquity - Smart Contract Audit 2021.pdf | Address | unmatched — not counted | — | listed in scope with sha256 hash | no |
| Liquity - Smart Contract Audit 2021.pdf | Unipool | unmatched — not counted | — | listed in scope with sha256 hash | no |
| Liquity - Smart Contract Audit 2021.pdf | DefaultPool | ambiguous — not counted | DefaultPool (alternative) `0x5cc5ce...ddcd6b` — deployed 2025-05-19 12:28:23+03 — liveness: live (code_present_context)<br>DefaultPool (alternative) `0xd45582...e5b1a0` — deployed 2025-05-19 12:20:35+03 — liveness: live (code_present_context)<br>DefaultPool (alternative) `0xd796e1...6a22a1` — deployed 2025-05-19 12:24:35+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| www.coinspect.com/blog/liquity-v2-bold-smart-contract-audit | Bold Core | unmatched — not counted | — | mentioned as the Solidity implementation of Liquity V2 protocol being audited | no |
| Liquity - Smart Contract Audit 2021.pdf | HintHelpers | own contract | HintHelpers (selected) `0xf0cae1...cbe657` — deployed 2025-05-19 12:18:11+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Liquity - Smart Contract Audit 2021.pdf | ActivePool | ambiguous — not counted | ActivePool (alternative) `0xeb5a8c...b16afe` — deployed 2025-05-19 12:20:23+03 — liveness: live (code_present_context)<br>ActivePool (alternative) `0x9074d7...79532f` — deployed 2025-05-19 12:28:11+03 — liveness: live (code_present_context)<br>ActivePool (alternative) `0x531a8f...7919a0` — deployed 2025-05-19 12:24:23+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| Liquity - Smart Contract Audit 2021.pdf | PriceFeed | unmatched — not counted | — | listed in scope with sha256 hash | no |
| Liquity - Smart Contract Audit 2021.pdf | GasPool | ambiguous — not counted | GasPool (alternative) `0x45c81d...8dad41` — deployed 2025-05-19 12:28:35+03 — liveness: live (code_present_context)<br>GasPool (alternative) `0x7b9ab3...bcf921` — deployed 2025-05-19 12:20:47+03 — liveness: live (code_present_context)<br>GasPool (alternative) `0x8c44fb...81db1f` — deployed 2025-05-19 12:24:47+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| Liquity - Smart Contract Audit 2021.pdf | StabilityPool | ambiguous — not counted | StabilityPool (alternative) `0x5721cb...4cf9bf` — deployed 2025-05-19 12:20:11+03 — liveness: live (code_present_context)<br>StabilityPool (alternative) `0xd442e4...148695` — deployed 2025-05-19 12:27:59+03 — liveness: live (code_present_context)<br>StabilityPool (alternative) `0x9502b7...ebe56b` — deployed 2025-05-19 12:24:11+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| Liquity - Smart Contract Audit 2021.pdf | BorrowerOperations | ambiguous — not counted | BorrowerOperations (alternative) `0x372abd...46bc65` — deployed 2025-05-19 12:19:35+03 — liveness: live (code_present_context)<br>BorrowerOperations (alternative) `0xa741a3...7d5da3` — deployed 2025-05-19 12:23:35+03 — liveness: live (code_present_context)<br>BorrowerOperations (alternative) `0xe8119f...a17329` — deployed 2025-05-19 12:27:23+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| Liquity - Smart Contract Audit 2021.pdf | LQTYStaking | own contract | LQTYStaking (selected) `0x4f9fbb...fc605d` — deployed 2021-04-05 11:31:21+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Liquity - Smart Contract Audit 2021.pdf | LockupContract | unmatched — not counted | — | listed in scope with sha256 hash | no |
| Liquity - Smart Contract Audit 2021.pdf | CommunityIssuance | unmatched — not counted | — | listed in scope with sha256 hash | no |
| Liquity - Smart Contract Audit 2021.pdf | LQTYToken | own contract | LQTYToken (selected) `0x6dea81...88c54d` — deployed 2021-04-05 11:33:10+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Liquity - Smart Contract Audit 2021.pdf | LockupContractFactory | unmatched — not counted | — | listed in scope with sha256 hash | no |
| Liquity - Smart Contract Audit 2021.pdf | TroveManager | ambiguous — not counted | TroveManager (alternative) `0xb2b2ab...e3e19e` — deployed 2025-05-19 12:27:35+03 — liveness: live (code_present_context)<br>TroveManager (alternative) `0x7bcb64...76cf5a` — deployed 2025-05-19 12:19:47+03 — liveness: live (code_present_context)<br>TroveManager (alternative) `0xa2895d...928b22` — deployed 2025-05-19 12:23:47+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| Liquity - Smart Contract Audit 2021.pdf | StabilityPoolScript | unmatched — not counted | — | listed in scope with sha256 hash | no |
| Liquity - Smart Contract Audit 2021.pdf | TroveManagerScript | unmatched — not counted | — | listed in scope with sha256 hash | no |
| Liquity - Smart Contract Audit 2021.pdf | BorrowerOperationsScript | unmatched — not counted | — | listed in scope with sha256 hash | no |
| Liquity - Smart Contract Audit 2021.pdf | LQTYStakingScript | unmatched — not counted | — | listed in scope with sha256 hash | no |
| Liquity - Smart Contract Audit 2021.pdf | ETHTransferScript | unmatched — not counted | — | listed in scope with sha256 hash | no |
| Liquity - Smart Contract Audit 2021.pdf | BorrowerWrappersScript | unmatched — not counted | — | listed in scope with sha256 hash | no |
| Liquity - Smart Contract Audit 2021.pdf | TokenScript | unmatched — not counted | — | listed in scope with sha256 hash | no |
| Liquity - Smart Contract Audit 2021.pdf | ILockupContractFactory | unmatched — not counted | — | listed in scope with sha256 hash | no |
| Liquity - Smart Contract Audit 2021.pdf | IBorrowerOperations | unmatched — not counted | — | listed in scope with sha256 hash | no |
| Liquity - Smart Contract Audit 2021.pdf | ICommunityIssuance | unmatched — not counted | — | listed in scope with sha256 hash | no |
| Liquity - Smart Contract Audit 2021.pdf | ITroveManager | unmatched — not counted | — | listed in scope with sha256 hash | no |
| Liquity - Smart Contract Audit 2021.pdf | ITellorCaller | unmatched — not counted | — | listed in scope with sha256 hash | no |
| Liquity - Smart Contract Audit 2021.pdf | IPriceFeed | unmatched — not counted | — | listed in scope with sha256 hash | no |
| Liquity - Smart Contract Audit 2021.pdf | ILQTYStaking | unmatched — not counted | — | listed in scope with sha256 hash | no |
| Liquity - Smart Contract Audit 2021.pdf | ILUSDToken | unmatched — not counted | — | listed in scope with sha256 hash | no |
| Liquity - Smart Contract Audit 2021.pdf | IActivePool | unmatched — not counted | — | listed in scope with sha256 hash | no |
| Liquity - Smart Contract Audit 2021.pdf | ISortedTroves | unmatched — not counted | — | listed in scope with sha256 hash | no |
| Liquity - Smart Contract Audit 2021.pdf | IDefaultPool | unmatched — not counted | — | listed in scope with sha256 hash | no |
| Liquity - Smart Contract Audit 2021.pdf | IStabilityPool | unmatched — not counted | — | listed in scope with sha256 hash | no |
| Liquity - Smart Contract Audit 2021.pdf | ICollSurplusPool | unmatched — not counted | — | listed in scope with sha256 hash | no |
| Liquity - Smart Contract Audit 2021.pdf | IPool | unmatched — not counted | — | listed in scope with sha256 hash | no |
| Liquity - Smart Contract Audit 2021.pdf | ILQTYToken | unmatched — not counted | — | listed in scope with sha256 hash | no |
| Liquity - Smart Contract Audit 2021.pdf | ILiquityBase | unmatched — not counted | — | listed in scope with sha256 hash | no |
| Liquity - Smart Contract Audit 2021.pdf | MultiTroveGetter | own contract | MultiTroveGetter (selected) `0xfa61db...31d235` — deployed 2025-05-19 12:18:23+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Liquity - Smart Contract Audit 2021.pdf | Ownable | unmatched — not counted | — | listed in scope with sha256 hash | no |
| Liquity - Smart Contract Audit 2021.pdf | TellorCaller | unmatched — not counted | — | listed in scope with sha256 hash | no |
| Liquity - Smart Contract Audit 2021.pdf | SafeMath | unmatched — not counted | — | listed in scope with sha256 hash | no |
| Liquity - Smart Contract Audit 2021.pdf | console | unmatched — not counted | — | listed in scope with sha256 hash | no |
| Liquity - Smart Contract Audit 2021.pdf | LiquitySafeMath128 | unmatched — not counted | — | listed in scope with sha256 hash | no |
| Liquity - Smart Contract Audit 2021.pdf | IERC2612 | unmatched — not counted | — | listed in scope with sha256 hash | no |
| Liquity - Smart Contract Audit 2021.pdf | LiquityMath | unmatched — not counted | — | listed in scope with sha256 hash | no |
| Liquity - Smart Contract Audit 2021.pdf | ITellor | unmatched — not counted | — | listed in scope with sha256 hash | no |
| Liquity - Smart Contract Audit 2021.pdf | CheckContract | unmatched — not counted | — | listed in scope with sha256 hash | no |
| Liquity - Smart Contract Audit 2021.pdf | IERC20 | unmatched — not counted | — | listed in scope with sha256 hash | no |
| Liquity - Smart Contract Audit 2021.pdf | LiquityBase | unmatched — not counted | — | listed in scope with sha256 hash | no |
| Liquity - Smart Contract Audit 2021.pdf | AggregatorV3Interface | unmatched — not counted | — | listed in scope with sha256 hash | no |
| Liquity - Smart Contract Audit 2021.pdf | BaseMath | unmatched — not counted | — | listed in scope with sha256 hash | no |
| Liquity - Smart Contract Audit 2021.pdf | LUSDToken | own contract | LUSDToken (selected) `0x5f9880...568ba0` — deployed 2021-04-05 11:28:19+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Liquity - Smart Contract Audit 2021.pdf | Migrations | unmatched — not counted | — | listed in scope with sha256 hash | no |
| Liquity - Smart Contract Audit 2021.pdf | CollSurplusPool | ambiguous — not counted | CollSurplusPool (alternative) `0x36e6cb...d0a235` — deployed 2025-05-19 12:24:59+03 — liveness: live (code_present_context)<br>CollSurplusPool (alternative) `0xba4a2b...3192bf` — deployed 2025-05-19 12:28:47+03 — liveness: live (code_present_context)<br>CollSurplusPool (alternative) `0xedbe25...50e2bf` — deployed 2025-05-19 12:20:59+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| Liquity - Smart Contract Audit 2021.pdf | SortedTroves | ambiguous — not counted | SortedTroves (alternative) `0xa25269...3063f4` — deployed 2025-05-19 12:21:11+03 — liveness: live (code_present_context)<br>SortedTroves (alternative) `0x84eb85...2e86f1` — deployed 2025-05-19 12:25:11+03 — liveness: live (code_present_context)<br>SortedTroves (alternative) `0x14d8d8...24f386` — deployed 2025-05-19 12:28:59+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| Liquity - Smart Contract Audit 2021.pdf | ERC20Mock | unmatched — not counted | — | listed in scope with sha256 hash | no |
| Liquity - Smart Contract Audit 2021.pdf | IUnipool | unmatched — not counted | — | listed in scope with sha256 hash | no |
| Liquity - Smart Contract Audit 2021.pdf | ILPTokenWrapper | unmatched — not counted | — | listed in scope with sha256 hash | no |
| Liquity - Smart Contract Audit 2021.pdf | SafeERC20 | unmatched — not counted | — | listed in scope with sha256 hash | no |
| Liquity - Smart Contract Audit 2021.pdf | Address | unmatched — not counted | — | listed in scope with sha256 hash | no |
| Liquity - Smart Contract Audit 2021.pdf | Unipool | unmatched — not counted | — | listed in scope with sha256 hash | no |
| Liquity - Smart Contract Audit 2021.pdf | DefaultPool | ambiguous — not counted | DefaultPool (alternative) `0x5cc5ce...ddcd6b` — deployed 2025-05-19 12:28:23+03 — liveness: live (code_present_context)<br>DefaultPool (alternative) `0xd45582...e5b1a0` — deployed 2025-05-19 12:20:35+03 — liveness: live (code_present_context)<br>DefaultPool (alternative) `0xd796e1...6a22a1` — deployed 2025-05-19 12:24:35+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | `0x531a8f...7919a0` | ActivePool | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x9074d7...79532f` | ActivePool | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xeb5a8c...b16afe` | ActivePool | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x20f7c9...417526` | AddressesRegistry | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x610604...3e8789` | AddressesRegistry | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x8d733f...3aac54` | AddressesRegistry | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x6440f1...beb01d` | BoldToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x372abd...46bc65` | BorrowerOperations | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xa741a3...7d5da3` | BorrowerOperations | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xe8119f...a17329` | BorrowerOperations | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | `0x03569c...81b01d` | BurnMintERC20 | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | `0xf05a20...8cb1c9` | BurnMintERC20 | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0x03569c...81b01d` | BurnMintERC20 | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0x03569c...81b01d` | BurnMintERC20 | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| berachain | `0xf05a20...8cb1c9` | BurnMintERC20 | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| scroll | `0x03569c...81b01d` | BurnMintERC20 | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xf94998...386684` | CollateralRegistry | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x36e6cb...d0a235` | CollSurplusPool | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xba4a2b...3192bf` | CollSurplusPool | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xedbe25...50e2bf` | CollSurplusPool | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x5cc5ce...ddcd6b` | DefaultPool | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xd45582...e5b1a0` | DefaultPool | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xd796e1...6a22a1` | DefaultPool | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xbd69d3...c4127d` | GasCompZapper | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xbe8b23...ab636f` | GasCompZapper | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x45c81d...8dad41` | GasPool | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x7b9ab3...bcf921` | GasPool | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x8c44fb...81db1f` | GasPool | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x807def...d6eee1` | Governance | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x75036b...3211a2` | LeverageLSTZapper | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xe85230...df0a56` | LeverageLSTZapper | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xdccbd7...770ae3` | LeverageWETHZapper | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x07a014...ad05e9` | LiquidityGaugeV6 | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xa37cdc...5d6c5c` | LiquidityGaugeV6 | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x340087...7171af` | MetadataNFT | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x362f82...f682a1` | MetadataNFT | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x9b36c3...af4a12` | MetadataNFT | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x34f1e9...8b7b2b` | RETHPriceFeed | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x14d8d8...24f386` | SortedTroves | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x84eb85...2e86f1` | SortedTroves | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xa25269...3063f4` | SortedTroves | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x5721cb...4cf9bf` | StabilityPool | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x9502b7...ebe56b` | StabilityPool | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xd442e4...148695` | StabilityPool | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x7bcb64...76cf5a` | TroveManager | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xa2895d...928b22` | TroveManager | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xb2b2ab...e3e19e` | TroveManager | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x1a0fc0...838013` | TroveNFT | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x7ae430...4c0873` | TroveNFT | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x857aec...a31b04` | TroveNFT | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xc02aaa...756cc2` | WETH9 | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xcc5f81...03c24f` | WETHPriceFeed | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x7022a4...e70c1f` | WETHZapper | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x7f39c5...5e2ca0` | WstETH | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xe7aa2b...6e314e` | WSTETHPriceFeed | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 60 |
| upstream | 4 |
| standard_library | 1 |
| needs_review | 6 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 3
- Inherited remapped matches: 0
- Address-book scope dispositions: 13 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 23 ambiguous, 100 unmatched
- Matched-own operational status: 13 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=3, low=3
- Match method counts: unique_name=13

Zero-match audit list:

- [13391] www.coinspect.com/blog/liquity-audit
- [13393] www.coinspect.com/blog/liquity-v2-governance-smart-contract-audit
- [13394] www.coinspect.com/blog/liquity-v2-bold-smart-contract-audit

Fork inheritance lineage and inherited audits are included when available.
