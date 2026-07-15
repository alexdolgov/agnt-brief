# Agentic Audit Brief: GMX

## Export Authority

- Production state: **published scope**
- Raw selected rows: 308 across 59 audit(s)
- Eligible audit results: 75 (59 matched; 16 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e9e09d06b414f9cd852c36a58d42ce16279465f2d9791cd2a8178f3f54b89ecd`

## Project Overview

- Project: GMX (`gmx`)
- Website: [https://gmx.io](https://gmx.io)
- Lifecycle: unknown
- Generated: 2026-07-15T18:30:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: arbitrum, avalanche
- Contract surface: 219 unique implementations (219 raw deployments)
- Coverage basis: 10/10 confirmed own live verified implementations (100.0%); conservative 90.9% with 1 needs-review implementation(s)
- DeFi Llama TVL: $238,547,261.00
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for GMX. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 19 contract row(s) across arbitrum, avalanche. Structural roles: 18 core, 1 supporting. No upgradeable pattern was identified in these rows.

## Logic Topography

- Exact-run contract rows: 19
- Structural roles: core (18), supporting (1)
- Contract kinds: contract (19)
- Detected standards: multicall (2)
- Frameworks: openzeppelin (16), foundry (6), chainlink (1), prb-math (1), uniswap-v3 (1)
- Upgradeable-pattern rows: 0

## Fork Analysis

1 of 22 contracts are derived from known codebases. 21 contracts have no detected origin.

### Forked Contracts

**DataStore** (`0x2f0b22...2fe3f6`, chain 43114)
Origin: mcdex (`0x46ffa9...a5acec`)
Containment: 100.0% - 57 functions inherited
Centroid audit status: pending_validation

Additions (unaudited): none

Removals (removed from original): none

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0x1bc32e...a37f10`, chain 42161)
- UnnamedContract (`0x3d6ba4...25c294`, chain 42161)
- UnnamedContract (`0x4baa24...5ca46b`, chain 42161)
- UnnamedContract (`0x5a1344...d7ed6d`, chain 42161)
- UnnamedContract (`0x5bb6dc...923472`, chain 42161)
- UnnamedContract (`0x839b6e...c5c8b4`, chain 42161)
- UnnamedContract (`0x955aa5...fafa98`, chain 42161)
- UnnamedContract (`0xad712e...96bc35`, chain 42161)
- UnnamedContract (`0xbad04d...c72216`, chain 42161)
- UnnamedContract (`0xc92741...228d9f`, chain 42161)
- UnnamedContract (`0xec0e4a...28054c`, chain 42161)
- DepositVault (`0x90c670...722dff`, chain 43114)
- EventEmitter (`0xc8ee91...3822fb`, chain 42161)
- GlvVault (`0x393053...c3f8f9`, chain 42161)
- MarketFactory (`0xc57c15...9c1241`, chain 43114)
- Multicall3 (`0x50474c...27e7f8`, chain 43114)
- OrderVault (`0x31ef83...bc40d5`, chain 42161)
- RoleStore (`0x3c3d99...5e6e72`, chain 42161)
- ShiftVault (`0x7fc46c...c52b39`, chain 43114)
- TimelockConfig (`0x37e1ae...e39ca4`, chain 43114)
- WithdrawalVault (`0x0628d4...701c55`, chain 42161)

## Contract Surface Quality

- Logic-topography rows: 19; live-surface rows included: 19 (11 live, 8 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 11/74 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 10/10 (100.0%)
- Coverage assessment: partial (medium confidence) — Coverage is calculated only over confirmed own address-book implementations; review inventory is reported separately and included in the conservative percentage where live and verified.
- Address-book implementation classification: 21 own, 30 exact-address-book context/dependencies excluded, 1 exact-address-book entries needing review
- Outside the address book: 167 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 1
- Confirmed-live implementations: 22 of 219 unique; 197 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 10/186
- Verified + Unaudited implementations: 176
- Verified by bytecode match: 0
- Unverified implementations: 33
- Unique implementations: 219
- Raw deployments: 219
- Audits discovered: 39 (39 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 30
- Active bug bounty: Immunefi ([program](https://immunefi.com/bug-bounty/gmx/information))
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2026-06 (fresh)
- Audit staleness (calendar age): 5 fresh, 13 aging, 20 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 20 match-unverified
- Tier 1 coverage: 70.0% (Certora, Sherlock)

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| Guardian | Tier 2 | 10 | 5.4% | 2026-06 |
| Certora | Tier 1 | 7 | 3.8% | 2023-11 |
| Sherlock | Tier 1 | 7 | 3.8% | 2023-07 |
| Dedaub | Tier 2 | 4 | 2.2% | 2022-11 |
| ABDK | Tier 2 | 3 | 1.6% | 2022-05 |

## Contract Surface

### ✅ Verified + Audited (10)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| DataStore | unknown | project_anchor | own_core | 0 | avalanche | n/a | `0x2f0b22...2fe3f6` | ✅ Audited |
| DepositVault | unknown | project_anchor | own_core | 0 | avalanche | n/a | `0x90c670...722dff` | ✅ Audited |
| EventEmitter | unknown | project_anchor | own_core | 0 | arbitrum | n/a | `0xc8ee91...3822fb` | ✅ Audited |
| GlvVault | unknown | project_anchor | own_core | 0 | arbitrum | n/a | `0x393053...c3f8f9` | ✅ Audited |
| MarketFactory | unknown | project_anchor | own_core | 0 | avalanche | n/a | `0xc57c15...9c1241` | ✅ Audited |
| OrderVault | unknown | project_anchor | own_core | 0 | arbitrum | n/a | `0x31ef83...bc40d5` | ✅ Audited |
| RoleStore | unknown | project_anchor | own_core | 0 | arbitrum | n/a | `0x3c3d99...5e6e72` | ✅ Audited |
| ShiftVault | unknown | project_anchor | own_core | 0 | avalanche | n/a | `0x7fc46c...c52b39` | ✅ Audited |
| TimelockConfig | unknown | project_anchor | own_core | 0 | avalanche | n/a | `0x37e1ae...e39ca4` | ✅ Audited |
| WithdrawalVault | unknown | project_anchor | own_core | 0 | arbitrum | n/a | `0x0628d4...701c55` | ✅ Audited |

### ⚠️ Verified + Unaudited (176)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| AdlHandler | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x0f012e...3daa93` | ⚠️ Unaudited |
| AdlUtils | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x0dbb1b...73193f` | ⚠️ Unaudited |
| AutoCancelSyncer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x294a96...0c5b63` | ⚠️ Unaudited |
| BaseOrderUtils | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x00f873...d9ffec` | ⚠️ Unaudited |
| BatchSender | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x1070f7...fe17e8` | ⚠️ Unaudited |
| BonusDistributor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x03f349...40d356` | ⚠️ Unaudited |
| Bridge | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x931dda...576441` | ⚠️ Unaudited |
| BridgeOutFromControllerUtils | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x40336d...fe419e` | ⚠️ Unaudited |
| CallbackUtils | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x010fdb...02c3ae` | ⚠️ Unaudited |
| ChainlinkDataStreamProvider | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xb9089f...0bf834` | ⚠️ Unaudited |
| ChainlinkPriceFeedProvider | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x05d97c...72c88e` | ⚠️ Unaudited |
| ChainReader | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x152fea...44d5de` | ⚠️ Unaudited |
| ClaimHandler | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x0e3e89...1a1392` | ⚠️ Unaudited |
| ClaimUtils | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x0bbf46...6af761` | ⚠️ Unaudited |
| ClaimVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x093a1a...a7bfd9` | ⚠️ Unaudited |
| Config | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x0913ca...284a32` | ⚠️ Unaudited |
| ConfigSyncer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x266de1...39f2ab` | ⚠️ Unaudited |
| ConfigTimelockController | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x093a1a...a7bfd9` | ⚠️ Unaudited |
| ConfigUtils | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x1158e6...4d2918` | ⚠️ Unaudited |
| ContributorHandler | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | `0x4729d9...55442c` | ⚠️ Unaudited |
| DecreaseOrderExecutor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x0560bb...5aaf7d` | ⚠️ Unaudited |
| DecreaseOrderUtils | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x02f4d5...1b9b3d` | ⚠️ Unaudited |
| DecreasePositionCollateralUtils | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x02176d...02a168` | ⚠️ Unaudited |
| DecreasePositionSwapUtils | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x026c0c...780214` | ⚠️ Unaudited |
| DecreasePositionUtils | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x04484f...450b60` | ⚠️ Unaudited |
| DepositEventUtils | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x0e9b51...e6d139` | ⚠️ Unaudited |
| DepositHandler | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x041388...2f4727` | ⚠️ Unaudited |
| DepositStoreUtils | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x035a9a...617c5d` | ⚠️ Unaudited |
| DepositUtils | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x37440f...99defd` | ⚠️ Unaudited |
| EdgeDataStreamProvider | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x176fd2...91f6ae` | ⚠️ Unaudited |
| EdgeDataStreamVerifier | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x006cb0...b948e9` | ⚠️ Unaudited |
| EsGMX | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x56f979...8758a0` | ⚠️ Unaudited |
| EsGmxBatchSender | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xc3828f...0207ef` | ⚠️ Unaudited |
| ExchangeRouter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x11e590...4f8275` | ⚠️ Unaudited |
| ExecuteDepositUtils | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x12771e...fd6380` | ⚠️ Unaudited |
| ExecuteGlvDepositUtils | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x28f1f4...d48976` | ⚠️ Unaudited |
| ExecuteOrderUtils | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x0b030a...e59b13` | ⚠️ Unaudited |
| ExecuteWithdrawalUtils | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x1364de...d5ae75` | ⚠️ Unaudited |
| ExternalHandler | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x389cef...b374a5` | ⚠️ Unaudited |
| FastPriceEvents | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x02b702...523bf6` | ⚠️ Unaudited |
| FastPriceFeed | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x068f28...2167c7` | ⚠️ Unaudited |
| FeeDistributor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x5a44a3...92e211` | ⚠️ Unaudited |
| FeeDistributorUtils | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x043f53...e3070f` | ⚠️ Unaudited |
| FeeDistributorVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x0560bb...5aaf7d` | ⚠️ Unaudited |
| FeeHandler | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x1a3a10...c54490` | ⚠️ Unaudited |
| FeeUtils | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x00d29d...754441` | ⚠️ Unaudited |
| GasTest | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x25da50...b9a3df` | ⚠️ Unaudited |
| GasUtils | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x043f53...e3070f` | ⚠️ Unaudited |
| GelatoRelayRouter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x006cb0...b948e9` | ⚠️ Unaudited |
| GLP | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x012341...d7c7b8` | ⚠️ Unaudited |
| GlpBalance | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x13e0bb...a4ebce` | ⚠️ Unaudited |
| GlpManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x321f65...e22649` | ⚠️ Unaudited |
| GlvDepositCalc | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x03b577...db84dc` | ⚠️ Unaudited |
| GlvDepositEventUtils | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x04e397...ec7f79` | ⚠️ Unaudited |
| GlvDepositHandler | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x0ec1f5...6458d6` | ⚠️ Unaudited |
| GlvDepositStoreUtils | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x0dc24a...98c0ae` | ⚠️ Unaudited |
| GlvDepositUtils | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x157e6b...f80b6f` | ⚠️ Unaudited |
| GlvFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x5d6b84...226530` | ⚠️ Unaudited |
| GlvHandler | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x26ddda...190588` | ⚠️ Unaudited |
| GlvReader | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x12ac77...60ec4b` | ⚠️ Unaudited |
| GlvRouter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x0f012e...3daa93` | ⚠️ Unaudited |
| GlvShiftEventUtils | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x0fe3de...acef4e` | ⚠️ Unaudited |
| GlvShiftHandler | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x13e4ff...1524e3` | ⚠️ Unaudited |
| GlvShiftStoreUtils | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x19a34c...944db1` | ⚠️ Unaudited |
| GlvShiftUtils | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x1e390d...5ee4b8` | ⚠️ Unaudited |
| GlvStoreUtils | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x046fe3...ada7e9` | ⚠️ Unaudited |
| GlvUtils | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x19254a...fa4088` | ⚠️ Unaudited |
| GlvWithdrawalEventUtils | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x00261e...24a4f6` | ⚠️ Unaudited |
| GlvWithdrawalHandler | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x1eea01...2d2427` | ⚠️ Unaudited |
| GlvWithdrawalStoreUtils | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x03b033...32d499` | ⚠️ Unaudited |
| GlvWithdrawalUtils | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x2637fc...c9130c` | ⚠️ Unaudited |
| GmOracleProvider | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x5d6b84...226530` | ⚠️ Unaudited |
| GMX | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x012341...d7c7b8` | ⚠️ Unaudited |
| GmxTimelock | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x033974...f1cafd` | ⚠️ Unaudited |
| Governable | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xaf8e96...9d8a47` | ⚠️ Unaudited |
| GovTimelockController | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x4bd1cd...c94c0e` | ⚠️ Unaudited |
| GovToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x0ff183...0ceccb` | ⚠️ Unaudited |
| IncreaseOrderExecutor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x1cc0a1...1a3b5f` | ⚠️ Unaudited |
| IncreaseOrderUtils | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x004e65...ccdff5` | ⚠️ Unaudited |
| IncreasePositionUtils | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x026c0c...780214` | ⚠️ Unaudited |
| JitOrderHandler | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x381f6d...5ce40c` | ⚠️ Unaudited |
| JoePair | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | avalanche | unit-241293 | `0x0c91a0...874d98` | ⚠️ Unaudited |
| LayerZeroProvider | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x0ba520...b50bdf` | ⚠️ Unaudited |
| LiquidationHandler | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x07d7c9...1aab2c` | ⚠️ Unaudited |
| LiquidationUtils | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x07049c...1e47c8` | ⚠️ Unaudited |
| MarketEventUtils | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x041907...75ed5b` | ⚠️ Unaudited |
| MarketStoreUtils | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x184675...044327` | ⚠️ Unaudited |
| MarketUtils | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x066603...64fb56` | ⚠️ Unaudited |
| MintableBaseToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x09cbe2...408b8d` | ⚠️ Unaudited |
| MockPriceFeed | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x2e29ae...a607c0` | ⚠️ Unaudited |
| Multicall3 | unknown | project_anchor | needs_review (excluded) | 0 | avalanche | n/a | `0x50474c...27e7f8` | ⚠️ Unaudited |
| MultichainClaimsRouter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x277b4c...234e95` | ⚠️ Unaudited |
| MultichainGlvRouter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x2a7244...d651af` | ⚠️ Unaudited |
| MultichainGmRouter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x10fa5b...3789f9` | ⚠️ Unaudited |
| MultichainOrderRouter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x2be05d...a6a4a8` | ⚠️ Unaudited |
| MultichainReader | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x823b55...d15dec` | ⚠️ Unaudited |
| MultichainSubaccountRouter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x14d939...e5d0b3` | ⚠️ Unaudited |
| MultichainTransferRouter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x266415...94fb2f` | ⚠️ Unaudited |
| MultichainUtils | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x0fe3de...acef4e` | ⚠️ Unaudited |
| MultichainVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x29d792...1abe57` | ⚠️ Unaudited |
| Oracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x04e605...214625` | ⚠️ Unaudited |
| OracleModuleTest | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x2e2460...5722b5` | ⚠️ Unaudited |
| OracleStore | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xa6ac2e...6f4e84` | ⚠️ Unaudited |
| OrderBook | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | arbitrum | unit-241232 | `0x09f77e...8a2acb` | ⚠️ Unaudited |
| OrderBookReader | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | arbitrum | unit-241265 | `0xa27c20...62bc21` | ⚠️ Unaudited |
| OrderEventUtils | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x06090f...6fbfb4` | ⚠️ Unaudited |
| OrderExecutor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x7257ac...32c3fb` | ⚠️ Unaudited |
| OrderHandler | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x00db21...bfb373` | ⚠️ Unaudited |
| OrderStoreUtils | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x00d29d...754441` | ⚠️ Unaudited |
| OrderUtils | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x09c7a1...af761f` | ⚠️ Unaudited |
| PositionEventUtils | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x00eb8c...7efe97` | ⚠️ Unaudited |
| PositionImpactPoolUtils | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x175f46...82a628` | ⚠️ Unaudited |
| PositionManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x6a02e6...af93b2` | ⚠️ Unaudited |
| PositionPricingUtils | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x05976c...753630` | ⚠️ Unaudited |
| PositionRouter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x05cb7c...8cb78f` | ⚠️ Unaudited |
| PositionRouterReader | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x2a74c7...802f74` | ⚠️ Unaudited |
| PositionStoreUtils | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x00db21...bfb373` | ⚠️ Unaudited |
| PositionUtils | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x035e55...539641` | ⚠️ Unaudited |
| PriceFeedTimelock | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x7b1ffd...d43a8b` | ⚠️ Unaudited |
| Printer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x19aa6e...e28c9f` | ⚠️ Unaudited |
| ProtocolGovernor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x03e8f7...2a7e68` | ⚠️ Unaudited |
| Reader | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x0537c7...d02fe1` | ⚠️ Unaudited |
| ReaderDepositUtils | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x1d3dbe...3b02e2` | ⚠️ Unaudited |
| ReaderPositionUtils | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x04315e...7b4a35` | ⚠️ Unaudited |
| ReaderPricingUtils | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x163906...1b24aa` | ⚠️ Unaudited |
| ReaderUtils | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x0597fb...b4035f` | ⚠️ Unaudited |
| ReaderWithdrawalUtils | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x096a71...b35142` | ⚠️ Unaudited |
| ReferralEventUtils | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x129174...771205` | ⚠️ Unaudited |
| ReferralReader | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x505ce1...975083` | ⚠️ Unaudited |
| ReferralStorage | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x0e725c...882ebf` | ⚠️ Unaudited |
| ReferralStorageTimelock | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x370a34...208ac5` | ⚠️ Unaudited |
| ReferralUtils | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x0aa941...6747a8` | ⚠️ Unaudited |
| RelayUtils | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x05fca7...7fe4ea` | ⚠️ Unaudited |
| RewardDistributor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x03f349...40d356` | ⚠️ Unaudited |
| RewardManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xb9fcd5...728d65` | ⚠️ Unaudited |
| RewardReader | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | avalanche | unit-241291 | `0x04fc11...44c1b6` | ⚠️ Unaudited |
| RewardRouter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xc73d55...980fba` | ⚠️ Unaudited |
| RewardRouterV2 | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | arbitrum | unit-241248 | `0x5e4766...5694a1` | ⚠️ Unaudited |
| RewardTracker | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x0a22fe...be964b` | ⚠️ Unaudited |
| RiskOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x329ffe...fb917b` | ⚠️ Unaudited |
| RiskOracleConfig | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x5ca40c...76a9f9` | ⚠️ Unaudited |
| Router | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | avalanche | unit-241296 | `0x5f719c...b6abe8` | ⚠️ Unaudited |
| ShiftEventUtils | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x00261e...24a4f6` | ⚠️ Unaudited |
| ShiftHandler | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x03b577...db84dc` | ⚠️ Unaudited |
| ShiftStoreUtils | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x0af660...0d2ca3` | ⚠️ Unaudited |
| ShiftUtils | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x0eea22...e89599` | ⚠️ Unaudited |
| ShortsTracker | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x923425...56d73a` | ⚠️ Unaudited |
| ShortsTrackerTimelock | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x79b6ee...5c6c2a` | ⚠️ Unaudited |
| SimulationRouter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xefe0eb...0b15f4` | ⚠️ Unaudited |
| StakedGlp | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x01af26...ba1c55` | ⚠️ Unaudited |
| StakedGlpMigrator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xe19ab1...0b382c` | ⚠️ Unaudited |
| StakeManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x417076...284128` | ⚠️ Unaudited |
| SubaccountGelatoRelayRouter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x0c4d69...eff6b3` | ⚠️ Unaudited |
| SubaccountRouter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x1258ab...386d03` | ⚠️ Unaudited |
| SubaccountRouterUtils | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x30549b...e6203b` | ⚠️ Unaudited |
| SubaccountUtils | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x06090f...6fbfb4` | ⚠️ Unaudited |
| SwapHandler | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x03a6e8...856879` | ⚠️ Unaudited |
| SwapOrderExecutor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x455d55...697050` | ⚠️ Unaudited |
| SwapOrderUtils | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x062c66...b0a565` | ⚠️ Unaudited |
| SwapPricingUtils | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x08f963...6ba7fa` | ⚠️ Unaudited |
| SwapUtils | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x00f6d4...0592fe` | ⚠️ Unaudited |
| Timelock | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x033f48...60e0ec` | ⚠️ Unaudited |
| TimestampInitializer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x1e72f7...434960` | ⚠️ Unaudited |
| TokenManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x1bcfff...370967` | ⚠️ Unaudited |
| UniswapV3Pool | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | arbitrum | unit-241256 | `0x80a9ae...42158e` | ⚠️ Unaudited |
| USDG | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x40757a...db2d51` | ⚠️ Unaudited |
| Vault | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | arbitrum | unit-241243 | `0x489ee0...097c4a` | ⚠️ Unaudited |
| VaultErrorController | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x0d5261...403ef4` | ⚠️ Unaudited |
| VaultPriceFeed | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x105a9c...5436eb` | ⚠️ Unaudited |
| VaultReader | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x060cbb...463cc0` | ⚠️ Unaudited |
| VaultUtils | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x5a8caa...5cb161` | ⚠️ Unaudited |
| Vester | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x199070...363004` | ⚠️ Unaudited |
| WithdrawalEventUtils | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x04e397...ec7f79` | ⚠️ Unaudited |
| WithdrawalHandler | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x1037c3...84f0cf` | ⚠️ Unaudited |
| WithdrawalStoreUtils | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x04baf8...dffcdf` | ⚠️ Unaudited |
| WithdrawalUtils | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x0c27a7...1e0b31` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (33)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-241235 | `0x1bc32e...a37f10` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | arbitrum | unit-241236 | `0x22199a...cae489` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | arbitrum | unit-241240 | `0x3963ff...32ec18` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-241241 | `0x3d6ba4...25c294` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-241244 | `0x4baa24...5ca46b` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | arbitrum | unit-241245 | `0x5402b5...0cffdf` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-241246 | `0x5a1344...d7ed6d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-241247 | `0x5bb6dc...923472` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-241257 | `0x839b6e...c5c8b4` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | arbitrum | unit-241260 | `0x8bfb8e...6d40e0` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-241261 | `0x955aa5...fafa98` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | arbitrum | unit-241268 | `0xabbc5f...2f4064` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-241269 | `0xad712e...96bc35` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | arbitrum | unit-241274 | `0xb87a43...b09868` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | arbitrum | unit-241275 | `0xb95db5...d271f5` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-241276 | `0xbad04d...c72216` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-241279 | `0xc92741...228d9f` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | arbitrum | unit-241282 | `0xd2d116...2a728f` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | arbitrum | unit-241287 | `0xe6fab3...06e99d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-241289 | `0xec0e4a...28054c` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | arbitrum | unit-241290 | `0xfc5a1a...35ad0a` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | avalanche | unit-241292 | `0x091ed8...ce0630` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | avalanche | unit-241294 | `0x4296e3...574ae5` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | avalanche | unit-241295 | `0x4d268a...3fea13` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | avalanche | unit-241297 | `0x62edc0...11c661` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | avalanche | unit-241298 | `0x67b789...a63d5d` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | avalanche | unit-241299 | `0x827ed0...d322f8` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | avalanche | unit-241300 | `0x9ab2de...5e8595` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | avalanche | unit-241301 | `0xae64d5...896a69` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | avalanche | unit-241302 | `0xb70b91...8eb3b3` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | avalanche | unit-241303 | `0xccfe3e...40683b` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | avalanche | unit-241304 | `0xd152c7...818ee4` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | avalanche | unit-241305 | `0xfff6d2...6420f8` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [ABDK_GMX_Synthetics_Audit.pdf (also discovered via alternate URL)](https://github.com/gmx-io/gmx-synthetics/blob/main/audits/abdk/ABDK_GMX_Synthetics_Audit.pdf) | ABDK | Audit | 2022-05 | stale | Direct | contract_name | matched | 7 | 0 | 0 | 52 | high |
| [2023-11-13_GMX_Report_by_Certora.pdf (also discovered via alternate URL)](https://github.com/gmx-io/gmx-synthetics/blob/main/audits/certora/2023-11-13_GMX_Report_by_Certora.pdf) | Certora | Audit | 2023-11 | stale | Direct | n/a | matched | 0 | 0 | 0 | 0 | n/a |
| [GMX_Synthetics_DeDaub_Audit.pdf (also discovered via alternate URL)](https://github.com/gmx-io/gmx-synthetics/blob/main/audits/dedaub/GMX_Synthetics_DeDaub_Audit.pdf) | Dedaub | Audit | 2022-11 | stale | Direct | contract_name | matched | 7 | 0 | 0 | 52 | high |
| [2022-10-24_GMX_Synthetics.pdf (also discovered via alternate URL)](https://github.com/gmx-io/gmx-synthetics/blob/main/audits/guardian/2022-10-24_GMX_Synthetics.pdf) | Guardian | Audit | 2022-10 | stale | Direct | contract_name | matched | 7 | 0 | 0 | 49 | high |
| [2023-01-08_GMX_Synthetics.pdf (also discovered via alternate URL)](https://github.com/gmx-io/gmx-synthetics/blob/main/audits/guardian/2023-01-08_GMX_Synthetics.pdf) | Guardian | Audit | 2023-01 | stale | Direct | contract_name | matched | 7 | 0 | 0 | 70 | high |
| [2023-03-15_GMX_Synthetics.pdf (also discovered via alternate URL)](https://github.com/gmx-io/gmx-synthetics/blob/main/audits/guardian/2023-03-15_GMX_Synthetics.pdf) | Guardian | Audit | 2023-03 | stale | Direct | contract_name | matched | 11 | 0 | 0 | 68 | high |
| [2023-05-15_GMX_Synthetics.pdf (also discovered via alternate URL)](https://github.com/gmx-io/gmx-synthetics/blob/main/audits/guardian/2023-05-15_GMX_Synthetics.pdf) | Guardian | Audit | 2023-05 | stale | Direct | contract_name | matched | 11 | 0 | 0 | 69 | high |
| [2023-06-02_GMX_Synthetics.pdf (also discovered via alternate URL)](https://github.com/gmx-io/gmx-synthetics/blob/main/audits/guardian/2023-06-02_GMX_Synthetics.pdf) | Guardian | Audit | 2023-06 | stale | Direct | contract_name | matched | 12 | 0 | 0 | 73 | high |
| [2023-07-11_GMX_Synthetics.pdf (also discovered via alternate URL)](https://github.com/gmx-io/gmx-synthetics/blob/main/audits/guardian/2023-07-11_GMX_Synthetics.pdf) | Guardian | Audit | 2023-07 | stale | Direct | contract_name | matched | 13 | 0 | 0 | 79 | high |
| [2023-07-28_GMX_Synthetics.pdf (also discovered via alternate URL)](https://github.com/gmx-io/gmx-synthetics/blob/main/audits/guardian/2023-07-28_GMX_Synthetics.pdf) | Guardian | Audit | 2023-07 | stale | Direct | contract_name | matched | 13 | 0 | 0 | 80 | high |
| [2023-09-01_GMX_Oracle_Updates.pdf (also discovered via alternate URL)](https://github.com/gmx-io/gmx-synthetics/blob/main/audits/guardian/2023-09-01_GMX_Oracle_Updates.pdf) | Guardian | Audit | 2023-09 | stale | Direct | contract_name | matched | 4 | 0 | 0 | 16 | high |
| [2023-09-26_GMX_Synthetics_Updates.pdf (also discovered via alternate URL)](https://github.com/gmx-io/gmx-synthetics/blob/main/audits/guardian/2023-09-26_GMX_Synthetics_Updates.pdf) | Guardian | Audit | 2023-09 | stale | Direct | contract_name | matched | 1 | 0 | 0 | 12 | high |
| [2023-10-25_GMX_Migrator.pdf (also discovered via alternate URL)](https://github.com/gmx-io/gmx-synthetics/blob/main/audits/guardian/2023-10-25_GMX_Migrator.pdf) | Guardian | Audit | 2023-10 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 5 | high |
| [2023-11-26_GMX_Subaccount.pdf (also discovered via alternate URL)](https://github.com/gmx-io/gmx-synthetics/blob/main/audits/guardian/2023-11-26_GMX_Subaccount.pdf) | Guardian | Audit | 2023-11 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 3 | high |
| [2023-12-17_GMX_Governance_Updates.pdf (also discovered via alternate URL)](https://github.com/gmx-io/gmx-synthetics/blob/main/audits/guardian/2023-12-17_GMX_Governance_Updates.pdf) | Guardian | Audit | 2023-12 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 4 | high |
| [2024-01-16_GMX_Config.pdf (also discovered via alternate URL)](https://github.com/gmx-io/gmx-synthetics/blob/main/audits/guardian/2024-01-16_GMX_Config.pdf) | Guardian | Audit | 2024-01 | stale | Direct | contract_name | matched | 1 | 0 | 0 | 1 | medium |
| [2024-06-14_GMX_Updates_1.pdf (also discovered via alternate URL)](https://github.com/gmx-io/gmx-synthetics/blob/main/audits/guardian/2024-06-14_GMX_Updates_1.pdf) | Guardian | Audit | 2024-06 | stale | Direct | contract_name | matched | 3 | 0 | 0 | 16 | high |
| [2024-06-14_GMX_Updates_2.pdf (also discovered via alternate URL)](https://github.com/gmx-io/gmx-synthetics/blob/main/audits/guardian/2024-06-14_GMX_Updates_2.pdf) | Guardian | Audit | 2024-06 | stale | Direct | contract_name | matched | 1 | 0 | 0 | 7 | high |
| [2024-06-14_GMX_Updates_3.pdf (also discovered via alternate URL)](https://github.com/gmx-io/gmx-synthetics/blob/main/audits/guardian/2024-06-14_GMX_Updates_3.pdf) | Guardian | Audit | 2024-06 | stale | Direct | contract_name | matched | 1 | 0 | 0 | 3 | low|medium |
| [2024-09-03_GMX_GLV.pdf (also discovered via alternate URL)](https://github.com/gmx-io/gmx-synthetics/blob/main/audits/guardian/2024-09-03_GMX_GLV.pdf) | Guardian | Audit | 2024-09 | aging | Direct | contract_name | matched | 3 | 0 | 0 | 14 | high |
| [2024-09-04_GMX_Config_Syncer.pdf (also discovered via alternate URL)](https://github.com/gmx-io/gmx-synthetics/blob/main/audits/guardian/2024-09-04_GMX_Config_Syncer.pdf) | Guardian | Audit | 2024-09 | aging | Direct | address|contract_name | matched | 1 | 0 | 0 | 2 | high|medium |
| [2024-11-18_GMX_Buybacks_Report.pdf (also discovered via alternate URL)](https://github.com/gmx-io/gmx-synthetics/blob/main/audits/guardian/2024-11-18_GMX_Buybacks_Report.pdf) | Guardian | Audit | 2024-11 | aging | Direct | contract_name | matched | 1 | 0 | 0 | 1 | high|medium |
| [2024-11-18_GMX_Pro_Tiers_Report.pdf (also discovered via alternate URL)](https://github.com/gmx-io/gmx-synthetics/blob/main/audits/guardian/2024-11-18_GMX_Pro_Tiers_Report.pdf) | Guardian | Audit | 2024-11 | aging | Direct | contract_name | matched | 1 | 0 | 0 | 4 | medium |
| [2025-04-11_GMX_Gasless_Sponsored_Calls_1.pdf (also discovered via alternate URL)](https://github.com/gmx-io/gmx-synthetics/blob/main/audits/guardian/2025-04-11_GMX_Gasless_Sponsored_Calls_1.pdf) | Guardian | Audit | 2025-04 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 5 | high |
| [2025-04-11_GMX_Gasless_Sponsored_Calls_2.pdf (also discovered via alternate URL)](https://github.com/gmx-io/gmx-synthetics/blob/main/audits/guardian/2025-04-11_GMX_Gasless_Sponsored_Calls_2.pdf) | Guardian | Audit | 2025-04 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 5 | high |
| [2025-07-29_GMX_Crosschain_V2.2_1_report.pdf (also discovered via alternate URL)](https://github.com/gmx-io/gmx-synthetics/blob/main/audits/guardian/2025-07-29_GMX_Crosschain_V2.2_1_report.pdf) | Guardian | Audit | 2025-07 | aging | Direct | contract_name | matched | 4 | 0 | 0 | 24 | high |
| [2025-07-29_GMX_Crosschain_V2.2_2_report.pdf (also discovered via alternate URL)](https://github.com/gmx-io/gmx-synthetics/blob/main/audits/guardian/2025-07-29_GMX_Crosschain_V2.2_2_report.pdf) | Guardian | Audit | 2025-07 | aging | Direct | contract_name | matched | 1 | 0 | 0 | 17 | high |
| [2025-07-29_GMX_Crosschain_V2.2_3_report.pdf (also discovered via alternate URL)](https://github.com/gmx-io/gmx-synthetics/blob/main/audits/guardian/2025-07-29_GMX_Crosschain_V2.2_3_report.pdf) | Guardian | Audit | 2025-07 | aging | Direct | contract_name | matched | 2 | 0 | 0 | 25 | high |
| [2025-07-29_GMX_Crosschain_V2.2_4_report.pdf (also discovered via alternate URL)](https://github.com/gmx-io/gmx-synthetics/blob/main/audits/guardian/2025-07-29_GMX_Crosschain_V2.2_4_report.pdf) | Guardian | Audit | 2025-07 | aging | Direct | contract_name | matched | 1 | 0 | 0 | 15 | high |
| [2025-07-29_GMX_Crosschain_V2.2_5_report.pdf (also discovered via alternate URL)](https://github.com/gmx-io/gmx-synthetics/blob/main/audits/guardian/2025-07-29_GMX_Crosschain_V2.2_5_report.pdf) | Guardian | Audit | 2025-07 | aging | Direct | contract_name | matched | 1 | 0 | 0 | 9 | high |
| [2025-07-29_GMX_Crosschain_V2.2_6_report.pdf (also discovered via alternate URL)](https://github.com/gmx-io/gmx-synthetics/blob/main/audits/guardian/2025-07-29_GMX_Crosschain_V2.2_6_report.pdf) | Guardian | Audit | 2025-07 | aging | Direct | contract_name | matched | 1 | 0 | 0 | 8 | high |
| [2025-07-29_GMX_Crosschain_V2.2_7_report.pdf (also discovered via alternate URL)](https://github.com/gmx-io/gmx-synthetics/blob/main/audits/guardian/2025-07-29_GMX_Crosschain_V2.2_7_report.pdf) | Guardian | Audit | 2025-07 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 4 | medium |
| [2025-09-24_GMX_JIT_Review_report.pdf (also discovered via alternate URL)](https://github.com/gmx-io/gmx-synthetics/blob/main/audits/guardian/2025-09-24_GMX_JIT_Review_report.pdf) | Guardian | Audit | 2025-09 | fresh | Direct | contract_name | matched | 4 | 0 | 0 | 9 | high |
| [2025-09-24_GMX_OFT_Review_report.pdf (also discovered via alternate URL)](https://github.com/gmx-io/gmx-synthetics/blob/main/audits/guardian/2025-09-24_GMX_OFT_Review_report.pdf) | Guardian | Audit | 2025-09 | fresh | Direct | contract_name | no match | 0 | 0 | 0 | 7 | high |
| [2025-11-04_GMX_Fee_Automations_report.pdf (also discovered via alternate URL)](https://github.com/gmx-io/gmx-synthetics/blob/main/audits/guardian/2025-11-04_GMX_Fee_Automations_report.pdf) | Guardian | Audit | 2025-11 | fresh | Direct | contract_name | matched | 2 | 0 | 0 | 15 | high |
| [2026-06-16_GMX_V2_Review_Report.pdf](https://github.com/gmx-io/gmx-synthetics/blob/main/audits/guardian/2026-06-16_GMX_V2_Review_Report.pdf) | Guardian | Audit | 2026-06 | fresh | Direct | n/a | matched | 0 | 0 | 0 | 0 | n/a |
| [Sherlock_GMX_Update_Audit_Report.pdf (also discovered via alternate URL)](https://github.com/gmx-io/gmx-synthetics/blob/main/audits/sherlock/Sherlock_GMX_Update_Audit_Report.pdf) | Sherlock | Contest | 2023-07 | stale | Direct | contract_name | matched | 10 | 0 | 0 | 32 | high |
| [Active Bug Bounty Program](https://immunefi.com/bug-bounty/gmx/information) | Immunefi | Bug Bounty | Ongoing | n/a | Direct | n/a | n/a | n/a | n/a | n/a | n/a | n/a |
| [2026-05-26_GMX_Risk_Oracle_Review_Report.pdf](https://github.com/gmx-io/gmx-synthetics/blob/updates/audits/guardian/2026-05-26_GMX_Risk_Oracle_Review_Report.pdf) | Guardian | Audit | 2026-05 | fresh | Direct | contract_name | no match | 0 | 0 | 0 | 1 | high |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [17344] ABDK_GMX_Synthetics_Audit.pdf — matched: The report lists findings for many contracts but does not have an explicit scope section. All contracts mentioned in findings are assumed to be in scope.
- [17345] 2023-11-13_GMX_Report_by_Certora.pdf — matched: No reason recorded
- [17346] GMX_Synthetics_DeDaub_Audit.pdf — matched: All contracts listed in the scope section of the audit report.
- [17347] 2022-10-24_GMX_Synthetics.pdf — matched: Extracted 55 contract names from the audit scope table (pages 5-7) and the audit date from the cover page.
- [17348] 2023-01-08_GMX_Synthetics.pdf — matched: Extracted all contract names from the audit scope tables (pages 5-8) and the audit date from the cover page.
- [17349] 2023-03-15_GMX_Synthetics.pdf — matched: Extracted all contracts from the Audit Scope & Methodology tables (pages 5-8). The report date is March 15th, 2023 from the cover page.
- [17350] 2023-05-15_GMX_Synthetics.pdf — matched: Extracted all contracts from the audit scope table (pages 5-8) and the final report date from the cover page.
- [17351] 2023-06-02_GMX_Synthetics.pdf — matched: Extracted all contracts from the scope table (pages 5-9) and the audit date from the cover page.
- [17352] 2023-07-11_GMX_Synthetics.pdf — matched: Extracted all contract names from the audit scope tables (pages 5-9) and the audit date from the cover page.
- [17353] 2023-07-28_GMX_Synthetics.pdf — matched: All contracts listed in the Audit Scope & Methodology tables (pages 5-9) are included. The audit date is explicitly stated as 'Final Report Date July 28th, 2023' on the cover page.
- [17354] 2023-09-01_GMX_Oracle_Updates.pdf — matched: All contracts listed in the Audit Scope & Methodology table are included.
- [17355] 2023-09-26_GMX_Synthetics_Updates.pdf — matched: Extracted 13 contract names from the scope table on page 5. Audit date from cover page.
- [17356] 2023-10-25_GMX_Migrator.pdf — no match: Extracted 5 contracts from the scope table on page 5. Audit date from cover page.
- [17357] 2023-11-26_GMX_Subaccount.pdf — no match: Scope table lists three Solidity files with SHA-1 checksums. Audit date from cover page.
- [17358] 2023-12-17_GMX_Governance_Updates.pdf — no match: Contracts in scope are RewardRouterV2, GovToken, ProtocolGovernance, and ProtocolGovernor based on findings and scope description.
- [17359] 2024-01-16_GMX_Config.pdf — matched: Scope section not explicitly listed; contracts inferred from findings locations and descriptions.
- [17360] 2024-06-14_GMX_Updates_1.pdf — matched: Extracted contract names from findings locations and scope section. Audit date from cover page.
- [17361] 2024-06-14_GMX_Updates_2.pdf — matched: Extracted contract names from findings locations and scope table. Audit date from cover page.
- [17362] 2024-06-14_GMX_Updates_3.pdf — matched: No explicit scope section listing contracts; extracted contract names from findings and file paths mentioned in the report.
- [17363] 2024-09-03_GMX_GLV.pdf — matched: Extracted contract names from finding locations and descriptions. The audit scope includes the GMX synthetics codebase with specific commit hashes. All contracts mentioned in findings are considered in scope.
- [17364] 2024-09-04_GMX_Config_Syncer.pdf — matched: The report does not have a dedicated scope section; contract names extracted from summary and findings.
- [17365] 2024-11-18_GMX_Buybacks_Report.pdf — matched: Scope section not explicitly provided; contracts inferred from findings locations. Only FeeHandler.sol and Config.sol are mentioned as audited files.
- [17366] 2024-11-18_GMX_Pro_Tiers_Report.pdf — matched: No explicit scope section listing contracts; extracted contract names from finding location references. Audit date from cover page.
- [17367] 2025-04-11_GMX_Gasless_Sponsored_Calls_1.pdf — no match: Extracted contract names from findings locations and scope description. The audit scope mentions 'GMX's Gelato Sponsored Call Integration' and references the codebase at gmx-io/gmx-synthetics (PR #139). The specific files in scope are inferred from the findings sections.
- [17368] 2025-04-11_GMX_Gasless_Sponsored_Calls_2.pdf — no match: Extracted contract names from findings locations and file paths. The audit scope is the Gelato Sponsored Call Integration for GMX, with specific files mentioned in findings.
- [17369] 2025-07-29_GMX_Crosschain_V2.2_1_report.pdf — matched: Extracted contract names from audit scope table and findings sections. The report lists the codebase as https://github.com/gmx-io/gmx-synthetics/tree/main/contracts. Audit date is explicitly given as 'Final Report Date July 26, 2025'.
- [17370] 2025-07-29_GMX_Crosschain_V2.2_2_report.pdf — matched: Extracted contract names from findings locations and scope section. Audit date from cover page: 'Final Report Date July 26, 2025'.
- [17371] 2025-07-29_GMX_Crosschain_V2.2_3_report.pdf — matched: Extracted contract names from findings locations and audit scope. The audit report clearly lists the codebase URL and commit hash, and findings reference specific contract files. The final report date is July 26, 2025.
- [17372] 2025-07-29_GMX_Crosschain_V2.2_4_report.pdf — matched: Extracted contract names from findings sections referencing specific .sol files. The audit scope section (page 7) mentions the codebase URL and commit but does not list individual contracts; however, the findings reference specific contracts in scope.
- [17373] 2025-07-29_GMX_Crosschain_V2.2_5_report.pdf — matched: Extracted contract names from findings locations and scope section. Audit date from cover page.
- [17374] 2025-07-29_GMX_Crosschain_V2.2_6_report.pdf — matched: Extracted contract names from finding locations in the report. The audit scope mentions the codebase at https://github.com/gmx-io/gmx-synthetics/tree/main/contracts but does not list individual contracts; however, findings reference specific .sol files which are considered in scope.
- [17375] 2025-07-29_GMX_Crosschain_V2.2_7_report.pdf — no match: No explicit scope section found; contract names extracted from finding locations. The codebase URL points to gmx-synthetics/contracts but no specific file list is given.
- [17376] 2025-09-24_GMX_JIT_Review_report.pdf — matched: Extracted contract names from findings locations and scope section. Audit date from cover page.
- [17377] 2025-09-24_GMX_OFT_Review_report.pdf — no match: Extracted 7 contracts from scope table and findings. Audit date from cover page.
- [17378] 2025-11-04_GMX_Fee_Automations_report.pdf — matched: All contracts listed in the 'Audit Scope & Methodology' section under 'Scope and details' URL. The audit date is explicitly stated as 'Final Report Date October 29, 2025'.
- [17379] 2026-06-16_GMX_V2_Review_Report.pdf — matched: No reason recorded
- [17380] Sherlock_GMX_Update_Audit_Report.pdf — matched: Extracted from the audit report header: 'Prepared on: July 19, 2023'. The scope section mentions repository and branch but no explicit file list; contract names were extracted from findings and file paths.
- [17381] Active Bug Bounty Program — no match: The document is a bug bounty program page, not an audit report. It does not list specific contracts in scope; only mentions 'smart contracts' generally. No audit date found.
- [17417] 2026-05-26_GMX_Risk_Oracle_Review_Report.pdf — no match: Only RiskOracleConfig is explicitly in scope; other contracts (DataStore, EventEmitter, MarketUtils) are dependencies mentioned in findings but not audited.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| ABDK_GMX_Synthetics_Audit.pdf | MarketUtils | unmatched — not counted | — | listed in scope | no |
| ABDK_GMX_Synthetics_Audit.pdf | SwapUtils | unmatched — not counted | — | listed in scope | no |
| ABDK_GMX_Synthetics_Audit.pdf | ExchangeRouter | unmatched — not counted | — | listed in scope | no |
| ABDK_GMX_Synthetics_Audit.pdf | PositionUtils | unmatched — not counted | — | listed in scope | no |
| ABDK_GMX_Synthetics_Audit.pdf | PositionStore | unmatched — not counted | — | listed in scope | no |
| ABDK_GMX_Synthetics_Audit.pdf | IncreasePositionUtils | unmatched — not counted | — | listed in scope | no |
| ABDK_GMX_Synthetics_Audit.pdf | MarketStore | unmatched — not counted | — | listed in scope | no |
| ABDK_GMX_Synthetics_Audit.pdf | GasUtils | unmatched — not counted | — | listed in scope | no |
| ABDK_GMX_Synthetics_Audit.pdf | WithdrawalUtils | unmatched — not counted | — | listed in scope | no |
| ABDK_GMX_Synthetics_Audit.pdf | EnumerableValues | unmatched — not counted | — | listed in scope | no |
| ABDK_GMX_Synthetics_Audit.pdf | SwapPricingUtils | unmatched — not counted | — | listed in scope | no |
| ABDK_GMX_Synthetics_Audit.pdf | PositionPricingUtils | unmatched — not counted | — | listed in scope | no |
| ABDK_GMX_Synthetics_Audit.pdf | OrderUtils | unmatched — not counted | — | listed in scope | no |
| ABDK_GMX_Synthetics_Audit.pdf | Timelock | unmatched — not counted | — | listed in scope | no |
| ABDK_GMX_Synthetics_Audit.pdf | RoleStore | own contract | RoleStore (selected) `0x3c3d99...5e6e72` — deployed 2023-07-04 11:44:17+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| ABDK_GMX_Synthetics_Audit.pdf | SwapOrderUtils | unmatched — not counted | — | listed in scope | no |
| ABDK_GMX_Synthetics_Audit.pdf | MarketFactory | own contract | MarketFactory (selected) `0xc57c15...9c1241` — deployed 2023-07-04 13:25:27+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| ABDK_GMX_Synthetics_Audit.pdf | DecreasePositionUtils | unmatched — not counted | — | listed in scope | no |
| ABDK_GMX_Synthetics_Audit.pdf | Precision | unmatched — not counted | — | listed in scope | no |
| ABDK_GMX_Synthetics_Audit.pdf | Role | unmatched — not counted | — | listed in scope | no |
| ABDK_GMX_Synthetics_Audit.pdf | FeeReceiver | unmatched — not counted | — | listed in scope | no |
| ABDK_GMX_Synthetics_Audit.pdf | WithdrawalHandler | own contract | 0x5bb6dc… (selected) `0x5bb6dc...923472` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| ABDK_GMX_Synthetics_Audit.pdf | DepositUtils | unmatched — not counted | — | listed in scope | no |
| ABDK_GMX_Synthetics_Audit.pdf | LiquidationHandler | own contract | 0x1bc32e… (selected) `0x1bc32e...a37f10` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| ABDK_GMX_Synthetics_Audit.pdf | DataStore | own contract | DataStore (selected) `0x2f0b22...2fe3f6` — deployed 2023-07-04 13:13:48+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| ABDK_GMX_Synthetics_Audit.pdf | Oracle | unmatched — not counted | — | listed in scope | no |
| ABDK_GMX_Synthetics_Audit.pdf | OracleModule | unmatched — not counted | — | listed in scope | no |
| ABDK_GMX_Synthetics_Audit.pdf | OrderHandler | own contract | 0xbad04d… (selected) `0xbad04d...c72216` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| ABDK_GMX_Synthetics_Audit.pdf | Keys | unmatched — not counted | — | listed in scope | no |
| ABDK_GMX_Synthetics_Audit.pdf | WithdrawalStore | unmatched — not counted | — | listed in scope | no |
| ABDK_GMX_Synthetics_Audit.pdf | Array | unmatched — not counted | — | listed in scope | no |
| ABDK_GMX_Synthetics_Audit.pdf | OracleStore | unmatched — not counted | — | listed in scope | no |
| ABDK_GMX_Synthetics_Audit.pdf | OracleUtils | unmatched — not counted | — | listed in scope | no |
| ABDK_GMX_Synthetics_Audit.pdf | IncreaseOrderUtils | unmatched — not counted | — | listed in scope | no |
| ABDK_GMX_Synthetics_Audit.pdf | DecreaseOrderUtils | unmatched — not counted | — | listed in scope | no |
| ABDK_GMX_Synthetics_Audit.pdf | LiquidationUtils | unmatched — not counted | — | listed in scope | no |
| ABDK_GMX_Synthetics_Audit.pdf | Order | unmatched — not counted | — | listed in scope | no |
| ABDK_GMX_Synthetics_Audit.pdf | Withdrawal | unmatched — not counted | — | listed in scope | no |
| ABDK_GMX_Synthetics_Audit.pdf | Deposit | unmatched — not counted | — | listed in scope | no |
| ABDK_GMX_Synthetics_Audit.pdf | Position | unmatched — not counted | — | listed in scope | no |
| ABDK_GMX_Synthetics_Audit.pdf | Market | unmatched — not counted | — | listed in scope | no |
| ABDK_GMX_Synthetics_Audit.pdf | Router | unmatched — not counted | — | listed in scope | no |
| ABDK_GMX_Synthetics_Audit.pdf | RoleModule | unmatched — not counted | — | listed in scope | no |
| ABDK_GMX_Synthetics_Audit.pdf | StrictBank | unmatched — not counted | — | listed in scope | no |
| ABDK_GMX_Synthetics_Audit.pdf | Bank | unmatched — not counted | — | listed in scope | no |
| ABDK_GMX_Synthetics_Audit.pdf | MarketToken | unmatched — not counted | — | listed in scope | no |
| ABDK_GMX_Synthetics_Audit.pdf | NonceUtils | unmatched — not counted | — | listed in scope | no |
| ABDK_GMX_Synthetics_Audit.pdf | Reader | unmatched — not counted | — | listed in scope | no |
| ABDK_GMX_Synthetics_Audit.pdf | Governable | unmatched — not counted | — | listed in scope | no |
| ABDK_GMX_Synthetics_Audit.pdf | Calc | unmatched — not counted | — | listed in scope | no |
| ABDK_GMX_Synthetics_Audit.pdf | PricingUtils | unmatched — not counted | — | listed in scope | no |
| ABDK_GMX_Synthetics_Audit.pdf | Bits | unmatched — not counted | — | listed in scope | no |
| ABDK_GMX_Synthetics_Audit.pdf | IPriceFeed | unmatched — not counted | — | listed in scope | no |
| ABDK_GMX_Synthetics_Audit.pdf | FeatureUtils | unmatched — not counted | — | listed in scope | no |
| ABDK_GMX_Synthetics_Audit.pdf | EthUtils | unmatched — not counted | — | listed in scope | no |
| ABDK_GMX_Synthetics_Audit.pdf | DepositHandler | own contract | 0x839b6e… (selected) `0x839b6e...c5c8b4` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| ABDK_GMX_Synthetics_Audit.pdf | DepositStore | unmatched — not counted | — | listed in scope | no |
| ABDK_GMX_Synthetics_Audit.pdf | OrderStore | unmatched — not counted | — | listed in scope | no |
| ABDK_GMX_Synthetics_Audit.pdf | EnumerableSet | unmatched — not counted | — | listed in scope | no |
| GMX_Synthetics_DeDaub_Audit.pdf | Bank | unmatched — not counted | — | listed in scope | no |
| GMX_Synthetics_DeDaub_Audit.pdf | StrictBank | unmatched — not counted | — | listed in scope | no |
| GMX_Synthetics_DeDaub_Audit.pdf | DataStore | own contract | DataStore (selected) `0x2f0b22...2fe3f6` — deployed 2023-07-04 13:13:48+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| GMX_Synthetics_DeDaub_Audit.pdf | Keys | unmatched — not counted | — | listed in scope | no |
| GMX_Synthetics_DeDaub_Audit.pdf | Deposit | unmatched — not counted | — | listed in scope | no |
| GMX_Synthetics_DeDaub_Audit.pdf | DepositStore | unmatched — not counted | — | listed in scope | no |
| GMX_Synthetics_DeDaub_Audit.pdf | DepositUtils | unmatched — not counted | — | listed in scope | no |
| GMX_Synthetics_DeDaub_Audit.pdf | EthUtils | unmatched — not counted | — | listed in scope | no |
| GMX_Synthetics_DeDaub_Audit.pdf | IWETH | unmatched — not counted | — | listed in scope | no |
| GMX_Synthetics_DeDaub_Audit.pdf | EventEmitter | own contract | EventEmitter (selected) `0xc8ee91...3822fb` — deployed 2023-07-04 11:48:15+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| GMX_Synthetics_DeDaub_Audit.pdf | DepositHandler | own contract | 0x839b6e… (selected) `0x839b6e...c5c8b4` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| GMX_Synthetics_DeDaub_Audit.pdf | OrderHandler | own contract | 0xbad04d… (selected) `0xbad04d...c72216` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| GMX_Synthetics_DeDaub_Audit.pdf | WithdrawalHandler | own contract | 0x5bb6dc… (selected) `0x5bb6dc...923472` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| GMX_Synthetics_DeDaub_Audit.pdf | FeatureUtils | unmatched — not counted | — | listed in scope | no |
| GMX_Synthetics_DeDaub_Audit.pdf | FeeReceiver | unmatched — not counted | — | listed in scope | no |
| GMX_Synthetics_DeDaub_Audit.pdf | FeeUtils | unmatched — not counted | — | listed in scope | no |
| GMX_Synthetics_DeDaub_Audit.pdf | GasUtils | unmatched — not counted | — | listed in scope | no |
| GMX_Synthetics_DeDaub_Audit.pdf | Governable | unmatched — not counted | — | listed in scope | no |
| GMX_Synthetics_DeDaub_Audit.pdf | MarketFactory | own contract | MarketFactory (selected) `0xc57c15...9c1241` — deployed 2023-07-04 13:25:27+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| GMX_Synthetics_DeDaub_Audit.pdf | Market | unmatched — not counted | — | listed in scope | no |
| GMX_Synthetics_DeDaub_Audit.pdf | MarketStore | unmatched — not counted | — | listed in scope | no |
| GMX_Synthetics_DeDaub_Audit.pdf | MarketToken | unmatched — not counted | — | listed in scope | no |
| GMX_Synthetics_DeDaub_Audit.pdf | MarketUtils | unmatched — not counted | — | listed in scope | no |
| GMX_Synthetics_DeDaub_Audit.pdf | NonceUtils | unmatched — not counted | — | listed in scope | no |
| GMX_Synthetics_DeDaub_Audit.pdf | IPriceFeed | unmatched — not counted | — | listed in scope | no |
| GMX_Synthetics_DeDaub_Audit.pdf | OracleModule | unmatched — not counted | — | listed in scope | no |
| GMX_Synthetics_DeDaub_Audit.pdf | Oracle | unmatched — not counted | — | listed in scope | no |
| GMX_Synthetics_DeDaub_Audit.pdf | OracleStore | unmatched — not counted | — | listed in scope | no |
| GMX_Synthetics_DeDaub_Audit.pdf | OracleUtils | unmatched — not counted | — | listed in scope | no |
| GMX_Synthetics_DeDaub_Audit.pdf | DecreaseOrderUtils | unmatched — not counted | — | listed in scope | no |
| GMX_Synthetics_DeDaub_Audit.pdf | IncreaseOrderUtils | unmatched — not counted | — | listed in scope | no |
| GMX_Synthetics_DeDaub_Audit.pdf | Order | unmatched — not counted | — | listed in scope | no |
| GMX_Synthetics_DeDaub_Audit.pdf | OrderStore | unmatched — not counted | — | listed in scope | no |
| GMX_Synthetics_DeDaub_Audit.pdf | OrderUtils | unmatched — not counted | — | listed in scope | no |
| GMX_Synthetics_DeDaub_Audit.pdf | SwapOrderUtils | unmatched — not counted | — | listed in scope | no |
| GMX_Synthetics_DeDaub_Audit.pdf | DecreasePositionUtils | unmatched — not counted | — | listed in scope | no |
| GMX_Synthetics_DeDaub_Audit.pdf | IncreasePositionUtils | unmatched — not counted | — | listed in scope | no |
| GMX_Synthetics_DeDaub_Audit.pdf | Position | unmatched — not counted | — | listed in scope | no |
| GMX_Synthetics_DeDaub_Audit.pdf | PositionStore | unmatched — not counted | — | listed in scope | no |
| GMX_Synthetics_DeDaub_Audit.pdf | PositionUtils | unmatched — not counted | — | listed in scope | no |
| GMX_Synthetics_DeDaub_Audit.pdf | PositionPricingUtils | unmatched — not counted | — | listed in scope | no |
| GMX_Synthetics_DeDaub_Audit.pdf | PricingUtils | unmatched — not counted | — | listed in scope | no |
| GMX_Synthetics_DeDaub_Audit.pdf | SwapPricingUtils | unmatched — not counted | — | listed in scope | no |
| GMX_Synthetics_DeDaub_Audit.pdf | Reader | unmatched — not counted | — | listed in scope | no |
| GMX_Synthetics_DeDaub_Audit.pdf | RoleModule | unmatched — not counted | — | listed in scope | no |
| GMX_Synthetics_DeDaub_Audit.pdf | Role | unmatched — not counted | — | listed in scope | no |
| GMX_Synthetics_DeDaub_Audit.pdf | RoleStore | own contract | RoleStore (selected) `0x3c3d99...5e6e72` — deployed 2023-07-04 11:44:17+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| GMX_Synthetics_DeDaub_Audit.pdf | ExchangeRouter | unmatched — not counted | — | listed in scope | no |
| GMX_Synthetics_DeDaub_Audit.pdf | Router | unmatched — not counted | — | listed in scope | no |
| GMX_Synthetics_DeDaub_Audit.pdf | SwapUtils | unmatched — not counted | — | listed in scope | no |
| GMX_Synthetics_DeDaub_Audit.pdf | Array | unmatched — not counted | — | listed in scope | no |
| GMX_Synthetics_DeDaub_Audit.pdf | Bits | unmatched — not counted | — | listed in scope | no |
| GMX_Synthetics_DeDaub_Audit.pdf | Calc | unmatched — not counted | — | listed in scope | no |
| GMX_Synthetics_DeDaub_Audit.pdf | EnumerableValues | unmatched — not counted | — | listed in scope | no |
| GMX_Synthetics_DeDaub_Audit.pdf | Null | unmatched — not counted | — | listed in scope | no |
| GMX_Synthetics_DeDaub_Audit.pdf | Precision | unmatched — not counted | — | listed in scope | no |
| GMX_Synthetics_DeDaub_Audit.pdf | Withdrawal | unmatched — not counted | — | listed in scope | no |
| GMX_Synthetics_DeDaub_Audit.pdf | WithdrawalStore | unmatched — not counted | — | listed in scope | no |
| GMX_Synthetics_DeDaub_Audit.pdf | WithdrawalUtils | unmatched — not counted | — | listed in scope | no |
| 2022-10-24_GMX_Synthetics.pdf | Bank | unmatched — not counted | — | listed in scope table | no |
| 2022-10-24_GMX_Synthetics.pdf | StrictBank | unmatched — not counted | — | listed in scope table | no |
| 2022-10-24_GMX_Synthetics.pdf | DataStore | own contract | DataStore (selected) `0x2f0b22...2fe3f6` — deployed 2023-07-04 13:13:48+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2022-10-24_GMX_Synthetics.pdf | Keys | unmatched — not counted | — | listed in scope table | no |
| 2022-10-24_GMX_Synthetics.pdf | Deposit | unmatched — not counted | — | listed in scope table | no |
| 2022-10-24_GMX_Synthetics.pdf | DepositStore | unmatched — not counted | — | listed in scope table | no |
| 2022-10-24_GMX_Synthetics.pdf | DepositUtils | unmatched — not counted | — | listed in scope table | no |
| 2022-10-24_GMX_Synthetics.pdf | DepositHandler | own contract | 0x839b6e… (selected) `0x839b6e...c5c8b4` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2022-10-24_GMX_Synthetics.pdf | LiquidationHandler | own contract | 0x1bc32e… (selected) `0x1bc32e...a37f10` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2022-10-24_GMX_Synthetics.pdf | OrderHandler | own contract | 0xbad04d… (selected) `0xbad04d...c72216` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2022-10-24_GMX_Synthetics.pdf | WithdrawalHandler | own contract | 0x5bb6dc… (selected) `0x5bb6dc...923472` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2022-10-24_GMX_Synthetics.pdf | FeatureUtils | unmatched — not counted | — | listed in scope table | no |
| 2022-10-24_GMX_Synthetics.pdf | FeeUtils | unmatched — not counted | — | listed in scope table | no |
| 2022-10-24_GMX_Synthetics.pdf | GasUtils | unmatched — not counted | — | listed in scope table | no |
| 2022-10-24_GMX_Synthetics.pdf | Governable | unmatched — not counted | — | listed in scope table | no |
| 2022-10-24_GMX_Synthetics.pdf | Market | unmatched — not counted | — | listed in scope table | no |
| 2022-10-24_GMX_Synthetics.pdf | MarketFactory | own contract | MarketFactory (selected) `0xc57c15...9c1241` — deployed 2023-07-04 13:25:27+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2022-10-24_GMX_Synthetics.pdf | MarketStore | unmatched — not counted | — | listed in scope table | no |
| 2022-10-24_GMX_Synthetics.pdf | MarketToken | unmatched — not counted | — | listed in scope table | no |
| 2022-10-24_GMX_Synthetics.pdf | MarketUtils | unmatched — not counted | — | listed in scope table | no |
| 2022-10-24_GMX_Synthetics.pdf | NonceUtils | unmatched — not counted | — | listed in scope table | no |
| 2022-10-24_GMX_Synthetics.pdf | PriceFeed | unmatched — not counted | — | listed in scope table | no |
| 2022-10-24_GMX_Synthetics.pdf | Oracle | unmatched — not counted | — | listed in scope table | no |
| 2022-10-24_GMX_Synthetics.pdf | OracleModule | unmatched — not counted | — | listed in scope table | no |
| 2022-10-24_GMX_Synthetics.pdf | OracleStore | unmatched — not counted | — | listed in scope table | no |
| 2022-10-24_GMX_Synthetics.pdf | OracleUtils | unmatched — not counted | — | listed in scope table | no |
| 2022-10-24_GMX_Synthetics.pdf | DecreaseOrderUtils | unmatched — not counted | — | listed in scope table | no |
| 2022-10-24_GMX_Synthetics.pdf | IncreaseOrderUtils | unmatched — not counted | — | listed in scope table | no |
| 2022-10-24_GMX_Synthetics.pdf | LiquidationUtils | unmatched — not counted | — | listed in scope table | no |
| 2022-10-24_GMX_Synthetics.pdf | Order | unmatched — not counted | — | listed in scope table | no |
| 2022-10-24_GMX_Synthetics.pdf | OrderStore | unmatched — not counted | — | listed in scope table | no |
| 2022-10-24_GMX_Synthetics.pdf | OrderUtils | unmatched — not counted | — | listed in scope table | no |
| 2022-10-24_GMX_Synthetics.pdf | SwapOrderUtils | unmatched — not counted | — | listed in scope table | no |
| 2022-10-24_GMX_Synthetics.pdf | DecreasePositionUtils | unmatched — not counted | — | listed in scope table | no |
| 2022-10-24_GMX_Synthetics.pdf | IncreasePositionUtils | unmatched — not counted | — | listed in scope table | no |
| 2022-10-24_GMX_Synthetics.pdf | Position | unmatched — not counted | — | listed in scope table | no |
| 2022-10-24_GMX_Synthetics.pdf | PositionStore | unmatched — not counted | — | listed in scope table | no |
| 2022-10-24_GMX_Synthetics.pdf | PositionUtils | unmatched — not counted | — | listed in scope table | no |
| 2022-10-24_GMX_Synthetics.pdf | PositionPricingUtils | unmatched — not counted | — | listed in scope table | no |
| 2022-10-24_GMX_Synthetics.pdf | PricingUtils | unmatched — not counted | — | listed in scope table | no |
| 2022-10-24_GMX_Synthetics.pdf | SwapPricingUtils | unmatched — not counted | — | listed in scope table | no |
| 2022-10-24_GMX_Synthetics.pdf | Role | unmatched — not counted | — | listed in scope table | no |
| 2022-10-24_GMX_Synthetics.pdf | RoleModule | unmatched — not counted | — | listed in scope table | no |
| 2022-10-24_GMX_Synthetics.pdf | RoleStore | own contract | RoleStore (selected) `0x3c3d99...5e6e72` — deployed 2023-07-04 11:44:17+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2022-10-24_GMX_Synthetics.pdf | ExchangeRouter | unmatched — not counted | — | listed in scope table | no |
| 2022-10-24_GMX_Synthetics.pdf | Router | unmatched — not counted | — | listed in scope table | no |
| 2022-10-24_GMX_Synthetics.pdf | SwapUtils | unmatched — not counted | — | listed in scope table | no |
| 2022-10-24_GMX_Synthetics.pdf | Array | unmatched — not counted | — | listed in scope table | no |
| 2022-10-24_GMX_Synthetics.pdf | Bits | unmatched — not counted | — | listed in scope table | no |
| 2022-10-24_GMX_Synthetics.pdf | Calc | unmatched — not counted | — | listed in scope table | no |
| 2022-10-24_GMX_Synthetics.pdf | EnumerableValues | unmatched — not counted | — | listed in scope table | no |
| 2022-10-24_GMX_Synthetics.pdf | Precision | unmatched — not counted | — | listed in scope table | no |
| 2022-10-24_GMX_Synthetics.pdf | Withdrawal | unmatched — not counted | — | listed in scope table | no |
| 2022-10-24_GMX_Synthetics.pdf | WithdrawalStore | unmatched — not counted | — | listed in scope table | no |
| 2022-10-24_GMX_Synthetics.pdf | WithdrawalUtils | unmatched — not counted | — | listed in scope table | no |
| 2022-10-24_GMX_Synthetics.pdf | FeeReceiver | unmatched — not counted | — | listed in scope table | no |
| 2023-01-08_GMX_Synthetics.pdf | AdlUtils | unmatched — not counted | — | listed in scope table | no |
| 2023-01-08_GMX_Synthetics.pdf | Bank | unmatched — not counted | — | listed in scope table | no |
| 2023-01-08_GMX_Synthetics.pdf | FundReceiver | unmatched — not counted | — | listed in scope table | no |
| 2023-01-08_GMX_Synthetics.pdf | StrictBank | unmatched — not counted | — | listed in scope table | no |
| 2023-01-08_GMX_Synthetics.pdf | CallbackUtils | unmatched — not counted | — | listed in scope table | no |
| 2023-01-08_GMX_Synthetics.pdf | IDepositCallbackReceiver | unmatched — not counted | — | listed in scope table | no |
| 2023-01-08_GMX_Synthetics.pdf | IOrderCallbackReceiver | unmatched — not counted | — | listed in scope table | no |
| 2023-01-08_GMX_Synthetics.pdf | IWithdrawalCallbackReceiver | unmatched — not counted | — | listed in scope table | no |
| 2023-01-08_GMX_Synthetics.pdf | ArbSys | unmatched — not counted | — | listed in scope table | no |
| 2023-01-08_GMX_Synthetics.pdf | Chain | unmatched — not counted | — | listed in scope table | no |
| 2023-01-08_GMX_Synthetics.pdf | DataStore | own contract | DataStore (selected) `0x2f0b22...2fe3f6` — deployed 2023-07-04 13:13:48+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2023-01-08_GMX_Synthetics.pdf | Keys | unmatched — not counted | — | listed in scope table | no |
| 2023-01-08_GMX_Synthetics.pdf | Deposit | unmatched — not counted | — | listed in scope table | no |
| 2023-01-08_GMX_Synthetics.pdf | DepositStore | unmatched — not counted | — | listed in scope table | no |
| 2023-01-08_GMX_Synthetics.pdf | EventEmitter | own contract | EventEmitter (selected) `0xc8ee91...3822fb` — deployed 2023-07-04 11:48:15+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2023-01-08_GMX_Synthetics.pdf | DepositHandler | own contract | 0x839b6e… (selected) `0x839b6e...c5c8b4` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2023-01-08_GMX_Synthetics.pdf | OrderHandler | own contract | 0xbad04d… (selected) `0xbad04d...c72216` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2023-01-08_GMX_Synthetics.pdf | WithdrawalHandler | own contract | 0x5bb6dc… (selected) `0x5bb6dc...923472` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2023-01-08_GMX_Synthetics.pdf | FeatureUtils | unmatched — not counted | — | listed in scope table | no |
| 2023-01-08_GMX_Synthetics.pdf | FeeReceiver | unmatched — not counted | — | listed in scope table | no |
| 2023-01-08_GMX_Synthetics.pdf | GasUtils | unmatched — not counted | — | listed in scope table | no |
| 2023-01-08_GMX_Synthetics.pdf | Governable | unmatched — not counted | — | listed in scope table | no |
| 2023-01-08_GMX_Synthetics.pdf | LiquidationUtils | unmatched — not counted | — | listed in scope table | no |
| 2023-01-08_GMX_Synthetics.pdf | Market | unmatched — not counted | — | listed in scope table | no |
| 2023-01-08_GMX_Synthetics.pdf | MarketFactory | own contract | MarketFactory (selected) `0xc57c15...9c1241` — deployed 2023-07-04 13:25:27+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2023-01-08_GMX_Synthetics.pdf | MarketStore | unmatched — not counted | — | listed in scope table | no |
| 2023-01-08_GMX_Synthetics.pdf | MarketToken | unmatched — not counted | — | listed in scope table | no |
| 2023-01-08_GMX_Synthetics.pdf | MarketUtils | unmatched — not counted | — | listed in scope table | no |
| 2023-01-08_GMX_Synthetics.pdf | NonceUtils | unmatched — not counted | — | listed in scope table | no |
| 2023-01-08_GMX_Synthetics.pdf | PriceFeed | unmatched — not counted | — | listed in scope table | no |
| 2023-01-08_GMX_Synthetics.pdf | Oracle | unmatched — not counted | — | listed in scope table | no |
| 2023-01-08_GMX_Synthetics.pdf | OracleModule | unmatched — not counted | — | listed in scope table | no |
| 2023-01-08_GMX_Synthetics.pdf | OracleStore | unmatched — not counted | — | listed in scope table | no |
| 2023-01-08_GMX_Synthetics.pdf | OracleUtils | unmatched — not counted | — | listed in scope table | no |
| 2023-01-08_GMX_Synthetics.pdf | DecreaseOrderUtils | unmatched — not counted | — | listed in scope table | no |
| 2023-01-08_GMX_Synthetics.pdf | IncreaseOrderUtils | unmatched — not counted | — | listed in scope table | no |
| 2023-01-08_GMX_Synthetics.pdf | Order | unmatched — not counted | — | listed in scope table | no |
| 2023-01-08_GMX_Synthetics.pdf | OrderBaseUtils | unmatched — not counted | — | listed in scope table | no |
| 2023-01-08_GMX_Synthetics.pdf | OrderStore | unmatched — not counted | — | listed in scope table | no |
| 2023-01-08_GMX_Synthetics.pdf | FeeUtils | unmatched — not counted | — | listed in scope table | no |
| 2023-01-08_GMX_Synthetics.pdf | OrderUtils | unmatched — not counted | — | listed in scope table | no |
| 2023-01-08_GMX_Synthetics.pdf | SwapOrderUtils | unmatched — not counted | — | listed in scope table | no |
| 2023-01-08_GMX_Synthetics.pdf | DecreasePositionUtils | unmatched — not counted | — | listed in scope table | no |
| 2023-01-08_GMX_Synthetics.pdf | IncreasePositionUtils | unmatched — not counted | — | listed in scope table | no |
| 2023-01-08_GMX_Synthetics.pdf | Position | unmatched — not counted | — | listed in scope table | no |
| 2023-01-08_GMX_Synthetics.pdf | PositionStore | unmatched — not counted | — | listed in scope table | no |
| 2023-01-08_GMX_Synthetics.pdf | PositionUtils | unmatched — not counted | — | listed in scope table | no |
| 2023-01-08_GMX_Synthetics.pdf | Price | unmatched — not counted | — | listed in scope table | no |
| 2023-01-08_GMX_Synthetics.pdf | PositionPricingUtils | unmatched — not counted | — | listed in scope table | no |
| 2023-01-08_GMX_Synthetics.pdf | PricingUtils | unmatched — not counted | — | listed in scope table | no |
| 2023-01-08_GMX_Synthetics.pdf | SwapPricingUtils | unmatched — not counted | — | listed in scope table | no |
| 2023-01-08_GMX_Synthetics.pdf | Reader | unmatched — not counted | — | listed in scope table | no |
| 2023-01-08_GMX_Synthetics.pdf | ReferralStorage | unmatched — not counted | — | listed in scope table | no |
| 2023-01-08_GMX_Synthetics.pdf | ReferralTier | unmatched — not counted | — | listed in scope table | no |
| 2023-01-08_GMX_Synthetics.pdf | ReferralUtils | unmatched — not counted | — | listed in scope table | no |
| 2023-01-08_GMX_Synthetics.pdf | Role | unmatched — not counted | — | listed in scope table | no |
| 2023-01-08_GMX_Synthetics.pdf | RoleModule | unmatched — not counted | — | listed in scope table | no |
| 2023-01-08_GMX_Synthetics.pdf | RoleStore | own contract | RoleStore (selected) `0x3c3d99...5e6e72` — deployed 2023-07-04 11:44:17+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2023-01-08_GMX_Synthetics.pdf | DepositUtils | unmatched — not counted | — | listed in scope table | no |
| 2023-01-08_GMX_Synthetics.pdf | ExchangeRouter | unmatched — not counted | — | listed in scope table | no |
| 2023-01-08_GMX_Synthetics.pdf | Router | unmatched — not counted | — | listed in scope table | no |
| 2023-01-08_GMX_Synthetics.pdf | SwapHandler | unmatched — not counted | — | listed in scope table | no |
| 2023-01-08_GMX_Synthetics.pdf | SwapUtils | unmatched — not counted | — | listed in scope table | no |
| 2023-01-08_GMX_Synthetics.pdf | Timelock | unmatched — not counted | — | listed in scope table | no |
| 2023-01-08_GMX_Synthetics.pdf | IWNT | unmatched — not counted | — | listed in scope table | no |
| 2023-01-08_GMX_Synthetics.pdf | TokenUtils | unmatched — not counted | — | listed in scope table | no |
| 2023-01-08_GMX_Synthetics.pdf | Array | unmatched — not counted | — | listed in scope table | no |
| 2023-01-08_GMX_Synthetics.pdf | Bits | unmatched — not counted | — | listed in scope table | no |
| 2023-01-08_GMX_Synthetics.pdf | Calc | unmatched — not counted | — | listed in scope table | no |
| 2023-01-08_GMX_Synthetics.pdf | EnumerableValues | unmatched — not counted | — | listed in scope table | no |
| 2023-01-08_GMX_Synthetics.pdf | Multicall3 | ambiguous — not counted | 0x4baa24… (alternative) `0x4baa24...5ca46b` — liveness: live (current_address_book_code)<br>Multicall3 (alternative) `0x50474c...27e7f8` — deployed 2023-07-04 13:28:55+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| 2023-01-08_GMX_Synthetics.pdf | Null | unmatched — not counted | — | listed in scope table | no |
| 2023-01-08_GMX_Synthetics.pdf | PayableMulticall | unmatched — not counted | — | listed in scope table | no |
| 2023-01-08_GMX_Synthetics.pdf | Precision | unmatched — not counted | — | listed in scope table | no |
| 2023-01-08_GMX_Synthetics.pdf | Withdrawal | unmatched — not counted | — | listed in scope table | no |
| 2023-01-08_GMX_Synthetics.pdf | WithdrawalStore | unmatched — not counted | — | listed in scope table | no |
| 2023-01-08_GMX_Synthetics.pdf | WithdrawalUtils | unmatched — not counted | — | listed in scope table | no |
| 2023-03-15_GMX_Synthetics.pdf | AdlUtils | unmatched — not counted | — | listed in scope table | no |
| 2023-03-15_GMX_Synthetics.pdf | Bank | unmatched — not counted | — | listed in scope table | no |
| 2023-03-15_GMX_Synthetics.pdf | StrictBank | unmatched — not counted | — | listed in scope table | no |
| 2023-03-15_GMX_Synthetics.pdf | CallbackUtils | unmatched — not counted | — | listed in scope table | no |
| 2023-03-15_GMX_Synthetics.pdf | IDepositCallbackReceiver | unmatched — not counted | — | listed in scope table | no |
| 2023-03-15_GMX_Synthetics.pdf | IOrderCallbackReceiver | unmatched — not counted | — | listed in scope table | no |
| 2023-03-15_GMX_Synthetics.pdf | IWithdrawalCallbackReceiver | unmatched — not counted | — | listed in scope table | no |
| 2023-03-15_GMX_Synthetics.pdf | ArbSys | unmatched — not counted | — | listed in scope table | no |
| 2023-03-15_GMX_Synthetics.pdf | Chain | unmatched — not counted | — | listed in scope table | no |
| 2023-03-15_GMX_Synthetics.pdf | DataStore | own contract | DataStore (selected) `0x2f0b22...2fe3f6` — deployed 2023-07-04 13:13:48+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2023-03-15_GMX_Synthetics.pdf | Keys | unmatched — not counted | — | listed in scope table | no |
| 2023-03-15_GMX_Synthetics.pdf | Deposit | unmatched — not counted | — | listed in scope table | no |
| 2023-03-15_GMX_Synthetics.pdf | DepositStoreUtils | unmatched — not counted | — | listed in scope table | no |
| 2023-03-15_GMX_Synthetics.pdf | EventEmitter | own contract | EventEmitter (selected) `0xc8ee91...3822fb` — deployed 2023-07-04 11:48:15+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2023-03-15_GMX_Synthetics.pdf | DepositHandler | own contract | 0x839b6e… (selected) `0x839b6e...c5c8b4` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2023-03-15_GMX_Synthetics.pdf | OrderHandler | own contract | 0xbad04d… (selected) `0xbad04d...c72216` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2023-03-15_GMX_Synthetics.pdf | WithdrawalHandler | own contract | 0x5bb6dc… (selected) `0x5bb6dc...923472` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2023-03-15_GMX_Synthetics.pdf | FeatureUtils | unmatched — not counted | — | listed in scope table | no |
| 2023-03-15_GMX_Synthetics.pdf | OrderVault | own contract | OrderVault (selected) `0x31ef83...bc40d5` — deployed 2023-07-04 11:53:55+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2023-03-15_GMX_Synthetics.pdf | DepositVault | own contract | DepositVault (selected) `0x90c670...722dff` — deployed 2023-07-04 13:25:59+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2023-03-15_GMX_Synthetics.pdf | WithdrawalVault | own contract | WithdrawalVault (selected) `0x0628d4...701c55` — deployed 2023-07-04 12:20:38+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2023-03-15_GMX_Synthetics.pdf | GasUtils | unmatched — not counted | — | listed in scope table | no |
| 2023-03-15_GMX_Synthetics.pdf | Governable | unmatched — not counted | — | listed in scope table | no |
| 2023-03-15_GMX_Synthetics.pdf | LiquidationUtils | unmatched — not counted | — | listed in scope table | no |
| 2023-03-15_GMX_Synthetics.pdf | Market | unmatched — not counted | — | listed in scope table | no |
| 2023-03-15_GMX_Synthetics.pdf | MarketFactory | own contract | MarketFactory (selected) `0xc57c15...9c1241` — deployed 2023-07-04 13:25:27+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2023-03-15_GMX_Synthetics.pdf | MarketStoreUtils | unmatched — not counted | — | listed in scope table | no |
| 2023-03-15_GMX_Synthetics.pdf | MarketToken | unmatched — not counted | — | listed in scope table | no |
| 2023-03-15_GMX_Synthetics.pdf | MarketUtils | unmatched — not counted | — | listed in scope table | no |
| 2023-03-15_GMX_Synthetics.pdf | NonceUtils | unmatched — not counted | — | listed in scope table | no |
| 2023-03-15_GMX_Synthetics.pdf | PriceFeed | unmatched — not counted | — | listed in scope table | no |
| 2023-03-15_GMX_Synthetics.pdf | Oracle | unmatched — not counted | — | listed in scope table | no |
| 2023-03-15_GMX_Synthetics.pdf | OracleModule | unmatched — not counted | — | listed in scope table | no |
| 2023-03-15_GMX_Synthetics.pdf | OracleStore | unmatched — not counted | — | listed in scope table | no |
| 2023-03-15_GMX_Synthetics.pdf | OracleUtils | unmatched — not counted | — | listed in scope table | no |
| 2023-03-15_GMX_Synthetics.pdf | DecreaseOrderUtils | unmatched — not counted | — | listed in scope table | no |
| 2023-03-15_GMX_Synthetics.pdf | IncreaseOrderUtils | unmatched — not counted | — | listed in scope table | no |
| 2023-03-15_GMX_Synthetics.pdf | Order | unmatched — not counted | — | listed in scope table | no |
| 2023-03-15_GMX_Synthetics.pdf | BaseOrderUtils | unmatched — not counted | — | listed in scope table | no |
| 2023-03-15_GMX_Synthetics.pdf | OrderStoreUtils | unmatched — not counted | — | listed in scope table | no |
| 2023-03-15_GMX_Synthetics.pdf | FeeUtils | unmatched — not counted | — | listed in scope table | no |
| 2023-03-15_GMX_Synthetics.pdf | OrderUtils | unmatched — not counted | — | listed in scope table | no |
| 2023-03-15_GMX_Synthetics.pdf | SwapOrderUtils | unmatched — not counted | — | listed in scope table | no |
| 2023-03-15_GMX_Synthetics.pdf | DecreasePositionUtils | unmatched — not counted | — | listed in scope table | no |
| 2023-03-15_GMX_Synthetics.pdf | IncreasePositionUtils | unmatched — not counted | — | listed in scope table | no |
| 2023-03-15_GMX_Synthetics.pdf | Position | unmatched — not counted | — | listed in scope table | no |
| 2023-03-15_GMX_Synthetics.pdf | PositionUtils | unmatched — not counted | — | listed in scope table | no |
| 2023-03-15_GMX_Synthetics.pdf | Price | unmatched — not counted | — | listed in scope table | no |
| 2023-03-15_GMX_Synthetics.pdf | PositionPricingUtils | unmatched — not counted | — | listed in scope table | no |
| 2023-03-15_GMX_Synthetics.pdf | PricingUtils | unmatched — not counted | — | listed in scope table | no |
| 2023-03-15_GMX_Synthetics.pdf | SwapPricingUtils | unmatched — not counted | — | listed in scope table | no |
| 2023-03-15_GMX_Synthetics.pdf | Reader | unmatched — not counted | — | listed in scope table | no |
| 2023-03-15_GMX_Synthetics.pdf | ReferralStorage | unmatched — not counted | — | listed in scope table | no |
| 2023-03-15_GMX_Synthetics.pdf | ReferralTier | unmatched — not counted | — | listed in scope table | no |
| 2023-03-15_GMX_Synthetics.pdf | ReferralUtils | unmatched — not counted | — | listed in scope table | no |
| 2023-03-15_GMX_Synthetics.pdf | Role | unmatched — not counted | — | listed in scope table | no |
| 2023-03-15_GMX_Synthetics.pdf | RoleModule | unmatched — not counted | — | listed in scope table | no |
| 2023-03-15_GMX_Synthetics.pdf | RoleStore | own contract | RoleStore (selected) `0x3c3d99...5e6e72` — deployed 2023-07-04 11:44:17+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2023-03-15_GMX_Synthetics.pdf | DepositUtils | unmatched — not counted | — | listed in scope table | no |
| 2023-03-15_GMX_Synthetics.pdf | ExecuteDepositUtils | unmatched — not counted | — | listed in scope table | no |
| 2023-03-15_GMX_Synthetics.pdf | DecreasePositionCollateralUtils | unmatched — not counted | — | listed in scope table | no |
| 2023-03-15_GMX_Synthetics.pdf | ExchangeRouter | unmatched — not counted | — | listed in scope table | no |
| 2023-03-15_GMX_Synthetics.pdf | Router | unmatched — not counted | — | listed in scope table | no |
| 2023-03-15_GMX_Synthetics.pdf | SwapHandler | unmatched — not counted | — | listed in scope table | no |
| 2023-03-15_GMX_Synthetics.pdf | SwapUtils | unmatched — not counted | — | listed in scope table | no |
| 2023-03-15_GMX_Synthetics.pdf | Timelock | unmatched — not counted | — | listed in scope table | no |
| 2023-03-15_GMX_Synthetics.pdf | IWNT | unmatched — not counted | — | listed in scope table | no |
| 2023-03-15_GMX_Synthetics.pdf | TokenUtils | unmatched — not counted | — | listed in scope table | no |
| 2023-03-15_GMX_Synthetics.pdf | Array | unmatched — not counted | — | listed in scope table | no |
| 2023-03-15_GMX_Synthetics.pdf | Bits | unmatched — not counted | — | listed in scope table | no |
| 2023-03-15_GMX_Synthetics.pdf | Calc | unmatched — not counted | — | listed in scope table | no |
| 2023-03-15_GMX_Synthetics.pdf | EnumerableValues | unmatched — not counted | — | listed in scope table | no |
| 2023-03-15_GMX_Synthetics.pdf | Multicall3 | ambiguous — not counted | 0x4baa24… (alternative) `0x4baa24...5ca46b` — liveness: live (current_address_book_code)<br>Multicall3 (alternative) `0x50474c...27e7f8` — deployed 2023-07-04 13:28:55+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| 2023-03-15_GMX_Synthetics.pdf | PayableMulticall | unmatched — not counted | — | listed in scope table | no |
| 2023-03-15_GMX_Synthetics.pdf | Precision | unmatched — not counted | — | listed in scope table | no |
| 2023-03-15_GMX_Synthetics.pdf | Withdrawal | unmatched — not counted | — | listed in scope table | no |
| 2023-03-15_GMX_Synthetics.pdf | WithdrawalStoreUtils | unmatched — not counted | — | listed in scope table | no |
| 2023-03-15_GMX_Synthetics.pdf | WithdrawalUtils | unmatched — not counted | — | listed in scope table | no |
| 2023-03-15_GMX_Synthetics.pdf | Config | own contract | 0x5a1344… (selected) `0x5a1344...d7ed6d` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2023-05-15_GMX_Synthetics.pdf | AdlUtils | unmatched — not counted | — | listed in scope table | no |
| 2023-05-15_GMX_Synthetics.pdf | Bank | unmatched — not counted | — | listed in scope table | no |
| 2023-05-15_GMX_Synthetics.pdf | StrictBank | unmatched — not counted | — | listed in scope table | no |
| 2023-05-15_GMX_Synthetics.pdf | CallbackUtils | unmatched — not counted | — | listed in scope table | no |
| 2023-05-15_GMX_Synthetics.pdf | IDepositCallbackReceiver | unmatched — not counted | — | listed in scope table | no |
| 2023-05-15_GMX_Synthetics.pdf | IOrderCallbackReceiver | unmatched — not counted | — | listed in scope table | no |
| 2023-05-15_GMX_Synthetics.pdf | IWithdrawalCallbackReceiver | unmatched — not counted | — | listed in scope table | no |
| 2023-05-15_GMX_Synthetics.pdf | ArbSys | unmatched — not counted | — | listed in scope table | no |
| 2023-05-15_GMX_Synthetics.pdf | Chain | unmatched — not counted | — | listed in scope table | no |
| 2023-05-15_GMX_Synthetics.pdf | DataStore | own contract | DataStore (selected) `0x2f0b22...2fe3f6` — deployed 2023-07-04 13:13:48+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2023-05-15_GMX_Synthetics.pdf | Keys | unmatched — not counted | — | listed in scope table | no |
| 2023-05-15_GMX_Synthetics.pdf | Deposit | unmatched — not counted | — | listed in scope table | no |
| 2023-05-15_GMX_Synthetics.pdf | DepositStoreUtils | unmatched — not counted | — | listed in scope table | no |
| 2023-05-15_GMX_Synthetics.pdf | EventEmitter | own contract | EventEmitter (selected) `0xc8ee91...3822fb` — deployed 2023-07-04 11:48:15+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2023-05-15_GMX_Synthetics.pdf | DepositHandler | own contract | 0x839b6e… (selected) `0x839b6e...c5c8b4` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2023-05-15_GMX_Synthetics.pdf | OrderHandler | own contract | 0xbad04d… (selected) `0xbad04d...c72216` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2023-05-15_GMX_Synthetics.pdf | WithdrawalHandler | own contract | 0x5bb6dc… (selected) `0x5bb6dc...923472` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2023-05-15_GMX_Synthetics.pdf | FeatureUtils | unmatched — not counted | — | listed in scope table | no |
| 2023-05-15_GMX_Synthetics.pdf | OrderVault | own contract | OrderVault (selected) `0x31ef83...bc40d5` — deployed 2023-07-04 11:53:55+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2023-05-15_GMX_Synthetics.pdf | DepositVault | own contract | DepositVault (selected) `0x90c670...722dff` — deployed 2023-07-04 13:25:59+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2023-05-15_GMX_Synthetics.pdf | WithdrawalVault | own contract | WithdrawalVault (selected) `0x0628d4...701c55` — deployed 2023-07-04 12:20:38+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2023-05-15_GMX_Synthetics.pdf | GasUtils | unmatched — not counted | — | listed in scope table | no |
| 2023-05-15_GMX_Synthetics.pdf | Governable | unmatched — not counted | — | listed in scope table | no |
| 2023-05-15_GMX_Synthetics.pdf | LiquidationUtils | unmatched — not counted | — | listed in scope table | no |
| 2023-05-15_GMX_Synthetics.pdf | Market | unmatched — not counted | — | listed in scope table | no |
| 2023-05-15_GMX_Synthetics.pdf | MarketFactory | own contract | MarketFactory (selected) `0xc57c15...9c1241` — deployed 2023-07-04 13:25:27+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2023-05-15_GMX_Synthetics.pdf | MarketStoreUtils | unmatched — not counted | — | listed in scope table | no |
| 2023-05-15_GMX_Synthetics.pdf | MarketToken | unmatched — not counted | — | listed in scope table | no |
| 2023-05-15_GMX_Synthetics.pdf | MarketUtils | unmatched — not counted | — | listed in scope table | no |
| 2023-05-15_GMX_Synthetics.pdf | NonceUtils | unmatched — not counted | — | listed in scope table | no |
| 2023-05-15_GMX_Synthetics.pdf | PriceFeed | unmatched — not counted | — | listed in scope table | no |
| 2023-05-15_GMX_Synthetics.pdf | Oracle | unmatched — not counted | — | listed in scope table | no |
| 2023-05-15_GMX_Synthetics.pdf | OracleModule | unmatched — not counted | — | listed in scope table | no |
| 2023-05-15_GMX_Synthetics.pdf | OracleStore | unmatched — not counted | — | listed in scope table | no |
| 2023-05-15_GMX_Synthetics.pdf | OracleUtils | unmatched — not counted | — | listed in scope table | no |
| 2023-05-15_GMX_Synthetics.pdf | DecreaseOrderUtils | unmatched — not counted | — | listed in scope table | no |
| 2023-05-15_GMX_Synthetics.pdf | IncreaseOrderUtils | unmatched — not counted | — | listed in scope table | no |
| 2023-05-15_GMX_Synthetics.pdf | Order | unmatched — not counted | — | listed in scope table | no |
| 2023-05-15_GMX_Synthetics.pdf | BaseOrderUtils | unmatched — not counted | — | listed in scope table | no |
| 2023-05-15_GMX_Synthetics.pdf | OrderStoreUtils | unmatched — not counted | — | listed in scope table | no |
| 2023-05-15_GMX_Synthetics.pdf | FeeUtils | unmatched — not counted | — | listed in scope table | no |
| 2023-05-15_GMX_Synthetics.pdf | OrderUtils | unmatched — not counted | — | listed in scope table | no |
| 2023-05-15_GMX_Synthetics.pdf | SwapOrderUtils | unmatched — not counted | — | listed in scope table | no |
| 2023-05-15_GMX_Synthetics.pdf | DecreasePositionUtils | unmatched — not counted | — | listed in scope table | no |
| 2023-05-15_GMX_Synthetics.pdf | IncreasePositionUtils | unmatched — not counted | — | listed in scope table | no |
| 2023-05-15_GMX_Synthetics.pdf | Position | unmatched — not counted | — | listed in scope table | no |
| 2023-05-15_GMX_Synthetics.pdf | PositionUtils | unmatched — not counted | — | listed in scope table | no |
| 2023-05-15_GMX_Synthetics.pdf | Price | unmatched — not counted | — | listed in scope table | no |
| 2023-05-15_GMX_Synthetics.pdf | PositionPricingUtils | unmatched — not counted | — | listed in scope table | no |
| 2023-05-15_GMX_Synthetics.pdf | PricingUtils | unmatched — not counted | — | listed in scope table | no |
| 2023-05-15_GMX_Synthetics.pdf | SwapPricingUtils | unmatched — not counted | — | listed in scope table | no |
| 2023-05-15_GMX_Synthetics.pdf | Reader | unmatched — not counted | — | listed in scope table | no |
| 2023-05-15_GMX_Synthetics.pdf | IReferralStorage | unmatched — not counted | — | listed in scope table | no |
| 2023-05-15_GMX_Synthetics.pdf | ReferralTier | unmatched — not counted | — | listed in scope table | no |
| 2023-05-15_GMX_Synthetics.pdf | ReferralUtils | unmatched — not counted | — | listed in scope table | no |
| 2023-05-15_GMX_Synthetics.pdf | ReferralStorage | unmatched — not counted | — | listed in scope table | no |
| 2023-05-15_GMX_Synthetics.pdf | Role | unmatched — not counted | — | listed in scope table | no |
| 2023-05-15_GMX_Synthetics.pdf | RoleModule | unmatched — not counted | — | listed in scope table | no |
| 2023-05-15_GMX_Synthetics.pdf | RoleStore | own contract | RoleStore (selected) `0x3c3d99...5e6e72` — deployed 2023-07-04 11:44:17+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2023-05-15_GMX_Synthetics.pdf | DepositUtils | unmatched — not counted | — | listed in scope table | no |
| 2023-05-15_GMX_Synthetics.pdf | ExecuteDepositUtils | unmatched — not counted | — | listed in scope table | no |
| 2023-05-15_GMX_Synthetics.pdf | DecreasePositionCollateralUtils | unmatched — not counted | — | listed in scope table | no |
| 2023-05-15_GMX_Synthetics.pdf | ExchangeRouter | unmatched — not counted | — | listed in scope table | no |
| 2023-05-15_GMX_Synthetics.pdf | Router | unmatched — not counted | — | listed in scope table | no |
| 2023-05-15_GMX_Synthetics.pdf | SwapHandler | unmatched — not counted | — | listed in scope table | no |
| 2023-05-15_GMX_Synthetics.pdf | SwapUtils | unmatched — not counted | — | listed in scope table | no |
| 2023-05-15_GMX_Synthetics.pdf | Timelock | unmatched — not counted | — | listed in scope table | no |
| 2023-05-15_GMX_Synthetics.pdf | IWNT | unmatched — not counted | — | listed in scope table | no |
| 2023-05-15_GMX_Synthetics.pdf | TokenUtils | unmatched — not counted | — | listed in scope table | no |
| 2023-05-15_GMX_Synthetics.pdf | Array | unmatched — not counted | — | listed in scope table | no |
| 2023-05-15_GMX_Synthetics.pdf | Bits | unmatched — not counted | — | listed in scope table | no |
| 2023-05-15_GMX_Synthetics.pdf | Calc | unmatched — not counted | — | listed in scope table | no |
| 2023-05-15_GMX_Synthetics.pdf | EnumerableValues | unmatched — not counted | — | listed in scope table | no |
| 2023-05-15_GMX_Synthetics.pdf | Multicall3 | ambiguous — not counted | 0x4baa24… (alternative) `0x4baa24...5ca46b` — liveness: live (current_address_book_code)<br>Multicall3 (alternative) `0x50474c...27e7f8` — deployed 2023-07-04 13:28:55+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| 2023-05-15_GMX_Synthetics.pdf | PayableMulticall | unmatched — not counted | — | listed in scope table | no |
| 2023-05-15_GMX_Synthetics.pdf | Precision | unmatched — not counted | — | listed in scope table | no |
| 2023-05-15_GMX_Synthetics.pdf | Withdrawal | unmatched — not counted | — | listed in scope table | no |
| 2023-05-15_GMX_Synthetics.pdf | WithdrawalStoreUtils | unmatched — not counted | — | listed in scope table | no |
| 2023-05-15_GMX_Synthetics.pdf | WithdrawalUtils | unmatched — not counted | — | listed in scope table | no |
| 2023-05-15_GMX_Synthetics.pdf | Config | own contract | 0x5a1344… (selected) `0x5a1344...d7ed6d` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2023-06-02_GMX_Synthetics.pdf | AdlUtils | unmatched — not counted | — | listed in scope table | no |
| 2023-06-02_GMX_Synthetics.pdf | Bank | unmatched — not counted | — | listed in scope table | no |
| 2023-06-02_GMX_Synthetics.pdf | StrictBank | unmatched — not counted | — | listed in scope table | no |
| 2023-06-02_GMX_Synthetics.pdf | CallbackUtils | unmatched — not counted | — | listed in scope table | no |
| 2023-06-02_GMX_Synthetics.pdf | IDepositCallbackReceiver | unmatched — not counted | — | listed in scope table | no |
| 2023-06-02_GMX_Synthetics.pdf | IOrderCallbackReceiver | unmatched — not counted | — | listed in scope table | no |
| 2023-06-02_GMX_Synthetics.pdf | IWithdrawalCallbackReceiver | unmatched — not counted | — | listed in scope table | no |
| 2023-06-02_GMX_Synthetics.pdf | ArbSys | unmatched — not counted | — | listed in scope table | no |
| 2023-06-02_GMX_Synthetics.pdf | Chain | unmatched — not counted | — | listed in scope table | no |
| 2023-06-02_GMX_Synthetics.pdf | Config | own contract | 0x5a1344… (selected) `0x5a1344...d7ed6d` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2023-06-02_GMX_Synthetics.pdf | Timelock | unmatched — not counted | — | listed in scope table | no |
| 2023-06-02_GMX_Synthetics.pdf | DataStore | own contract | DataStore (selected) `0x2f0b22...2fe3f6` — deployed 2023-07-04 13:13:48+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2023-06-02_GMX_Synthetics.pdf | Keys | unmatched — not counted | — | listed in scope table | no |
| 2023-06-02_GMX_Synthetics.pdf | Deposit | unmatched — not counted | — | listed in scope table | no |
| 2023-06-02_GMX_Synthetics.pdf | DepositStoreUtils | unmatched — not counted | — | listed in scope table | no |
| 2023-06-02_GMX_Synthetics.pdf | DepositUtils | unmatched — not counted | — | listed in scope table | no |
| 2023-06-02_GMX_Synthetics.pdf | DepositVault | own contract | DepositVault (selected) `0x90c670...722dff` — deployed 2023-07-04 13:25:59+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2023-06-02_GMX_Synthetics.pdf | ExecuteDepositUtils | unmatched — not counted | — | listed in scope table | no |
| 2023-06-02_GMX_Synthetics.pdf | AdlHandler | own contract | 0xec0e4a… (selected) `0xec0e4a...28054c` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2023-06-02_GMX_Synthetics.pdf | BaseOrderHandler | unmatched — not counted | — | listed in scope table | no |
| 2023-06-02_GMX_Synthetics.pdf | DepositHandler | own contract | 0x839b6e… (selected) `0x839b6e...c5c8b4` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2023-06-02_GMX_Synthetics.pdf | ExchangeUtils | unmatched — not counted | — | listed in scope table | no |
| 2023-06-02_GMX_Synthetics.pdf | LiquidationHandler | own contract | 0x1bc32e… (selected) `0x1bc32e...a37f10` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2023-06-02_GMX_Synthetics.pdf | LiquidationUtils | unmatched — not counted | — | listed in scope table | no |
| 2023-06-02_GMX_Synthetics.pdf | OrderHandler | own contract | 0xbad04d… (selected) `0xbad04d...c72216` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2023-06-02_GMX_Synthetics.pdf | WithdrawalHandler | own contract | 0x5bb6dc… (selected) `0x5bb6dc...923472` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2023-06-02_GMX_Synthetics.pdf | MarketStoreUtils | unmatched — not counted | — | listed in scope table | no |
| 2023-06-02_GMX_Synthetics.pdf | FeatureUtils | unmatched — not counted | — | listed in scope table | no |
| 2023-06-02_GMX_Synthetics.pdf | FeeHandler | unmatched — not counted | — | listed in scope table | no |
| 2023-06-02_GMX_Synthetics.pdf | FeeUtils | unmatched — not counted | — | listed in scope table | no |
| 2023-06-02_GMX_Synthetics.pdf | GasUtils | unmatched — not counted | — | listed in scope table | no |
| 2023-06-02_GMX_Synthetics.pdf | Market | unmatched — not counted | — | listed in scope table | no |
| 2023-06-02_GMX_Synthetics.pdf | MarketFactory | own contract | MarketFactory (selected) `0xc57c15...9c1241` — deployed 2023-07-04 13:25:27+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2023-06-02_GMX_Synthetics.pdf | MarketToken | unmatched — not counted | — | listed in scope table | no |
| 2023-06-02_GMX_Synthetics.pdf | MarketUtils | unmatched — not counted | — | listed in scope table | no |
| 2023-06-02_GMX_Synthetics.pdf | NonceUtils | unmatched — not counted | — | listed in scope table | no |
| 2023-06-02_GMX_Synthetics.pdf | IPriceFeed | unmatched — not counted | — | listed in scope table | no |
| 2023-06-02_GMX_Synthetics.pdf | Oracle | unmatched — not counted | — | listed in scope table | no |
| 2023-06-02_GMX_Synthetics.pdf | OracleModule | unmatched — not counted | — | listed in scope table | no |
| 2023-06-02_GMX_Synthetics.pdf | OracleStore | unmatched — not counted | — | listed in scope table | no |
| 2023-06-02_GMX_Synthetics.pdf | OracleUtils | unmatched — not counted | — | listed in scope table | no |
| 2023-06-02_GMX_Synthetics.pdf | BaseOrderUtils | unmatched — not counted | — | listed in scope table | no |
| 2023-06-02_GMX_Synthetics.pdf | DecreaseOrderUtils | unmatched — not counted | — | listed in scope table | no |
| 2023-06-02_GMX_Synthetics.pdf | IncreaseOrderUtils | unmatched — not counted | — | listed in scope table | no |
| 2023-06-02_GMX_Synthetics.pdf | Order | unmatched — not counted | — | listed in scope table | no |
| 2023-06-02_GMX_Synthetics.pdf | OrderStoreUtils | unmatched — not counted | — | listed in scope table | no |
| 2023-06-02_GMX_Synthetics.pdf | OrderUtils | unmatched — not counted | — | listed in scope table | no |
| 2023-06-02_GMX_Synthetics.pdf | OrderVault | own contract | OrderVault (selected) `0x31ef83...bc40d5` — deployed 2023-07-04 11:53:55+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2023-06-02_GMX_Synthetics.pdf | DecreasePositionCollateralUtils | unmatched — not counted | — | listed in scope table | no |
| 2023-06-02_GMX_Synthetics.pdf | DecreasePositionUtils | unmatched — not counted | — | listed in scope table | no |
| 2023-06-02_GMX_Synthetics.pdf | IncreasePositionUtils | unmatched — not counted | — | listed in scope table | no |
| 2023-06-02_GMX_Synthetics.pdf | Position | unmatched — not counted | — | listed in scope table | no |
| 2023-06-02_GMX_Synthetics.pdf | PositionStoreUtils | unmatched — not counted | — | listed in scope table | no |
| 2023-06-02_GMX_Synthetics.pdf | PositionUtils | unmatched — not counted | — | listed in scope table | no |
| 2023-06-02_GMX_Synthetics.pdf | Price | unmatched — not counted | — | listed in scope table | no |
| 2023-06-02_GMX_Synthetics.pdf | PositionPricingUtils | unmatched — not counted | — | listed in scope table | no |
| 2023-06-02_GMX_Synthetics.pdf | PricingUtils | unmatched — not counted | — | listed in scope table | no |
| 2023-06-02_GMX_Synthetics.pdf | SwapPricingUtils | unmatched — not counted | — | listed in scope table | no |
| 2023-06-02_GMX_Synthetics.pdf | ReferralStorage | unmatched — not counted | — | listed in scope table | no |
| 2023-06-02_GMX_Synthetics.pdf | ReferralTier | unmatched — not counted | — | listed in scope table | no |
| 2023-06-02_GMX_Synthetics.pdf | ReferralUtils | unmatched — not counted | — | listed in scope table | no |
| 2023-06-02_GMX_Synthetics.pdf | Role | unmatched — not counted | — | listed in scope table | no |
| 2023-06-02_GMX_Synthetics.pdf | RoleModule | unmatched — not counted | — | listed in scope table | no |
| 2023-06-02_GMX_Synthetics.pdf | RoleStore | own contract | RoleStore (selected) `0x3c3d99...5e6e72` — deployed 2023-07-04 11:44:17+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2023-06-02_GMX_Synthetics.pdf | ExchangeRouter | unmatched — not counted | — | listed in scope table | no |
| 2023-06-02_GMX_Synthetics.pdf | Router | unmatched — not counted | — | listed in scope table | no |
| 2023-06-02_GMX_Synthetics.pdf | SwapHandler | unmatched — not counted | — | listed in scope table | no |
| 2023-06-02_GMX_Synthetics.pdf | SwapUtils | unmatched — not counted | — | listed in scope table | no |
| 2023-06-02_GMX_Synthetics.pdf | IWNT | unmatched — not counted | — | listed in scope table | no |
| 2023-06-02_GMX_Synthetics.pdf | Array | unmatched — not counted | — | listed in scope table | no |
| 2023-06-02_GMX_Synthetics.pdf | BasicMulticall | unmatched — not counted | — | listed in scope table | no |
| 2023-06-02_GMX_Synthetics.pdf | Bits | unmatched — not counted | — | listed in scope table | no |
| 2023-06-02_GMX_Synthetics.pdf | Calc | unmatched — not counted | — | listed in scope table | no |
| 2023-06-02_GMX_Synthetics.pdf | Cast | unmatched — not counted | — | listed in scope table | no |
| 2023-06-02_GMX_Synthetics.pdf | EnumerableValues | unmatched — not counted | — | listed in scope table | no |
| 2023-06-02_GMX_Synthetics.pdf | ErrorUtils | unmatched — not counted | — | listed in scope table | no |
| 2023-06-02_GMX_Synthetics.pdf | GlobalReentrancyGuard | unmatched — not counted | — | listed in scope table | no |
| 2023-06-02_GMX_Synthetics.pdf | PayableMulticall | unmatched — not counted | — | listed in scope table | no |
| 2023-06-02_GMX_Synthetics.pdf | Precision | unmatched — not counted | — | listed in scope table | no |
| 2023-06-02_GMX_Synthetics.pdf | ReceiverUtils | unmatched — not counted | — | listed in scope table | no |
| 2023-06-02_GMX_Synthetics.pdf | Withdrawal | unmatched — not counted | — | listed in scope table | no |
| 2023-06-02_GMX_Synthetics.pdf | WithdrawalStoreUtils | unmatched — not counted | — | listed in scope table | no |
| 2023-06-02_GMX_Synthetics.pdf | WithdrawalUtils | unmatched — not counted | — | listed in scope table | no |
| 2023-06-02_GMX_Synthetics.pdf | WithdrawalVault | own contract | WithdrawalVault (selected) `0x0628d4...701c55` — deployed 2023-07-04 12:20:38+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2023-06-02_GMX_Synthetics.pdf | IReferralStorage | unmatched — not counted | — | listed in scope table | no |
| 2023-07-11_GMX_Synthetics.pdf | AdlUtils | unmatched — not counted | — | listed in scope table | no |
| 2023-07-11_GMX_Synthetics.pdf | Bank | unmatched — not counted | — | listed in scope table | no |
| 2023-07-11_GMX_Synthetics.pdf | StrictBank | unmatched — not counted | — | listed in scope table | no |
| 2023-07-11_GMX_Synthetics.pdf | CallbackUtils | unmatched — not counted | — | listed in scope table | no |
| 2023-07-11_GMX_Synthetics.pdf | IDepositCallbackReceiver | unmatched — not counted | — | listed in scope table | no |
| 2023-07-11_GMX_Synthetics.pdf | IOrderCallbackReceiver | unmatched — not counted | — | listed in scope table | no |
| 2023-07-11_GMX_Synthetics.pdf | IWithdrawalCallbackReceiver | unmatched — not counted | — | listed in scope table | no |
| 2023-07-11_GMX_Synthetics.pdf | ArbSys | unmatched — not counted | — | listed in scope table | no |
| 2023-07-11_GMX_Synthetics.pdf | Chain | unmatched — not counted | — | listed in scope table | no |
| 2023-07-11_GMX_Synthetics.pdf | DataStore | own contract | DataStore (selected) `0x2f0b22...2fe3f6` — deployed 2023-07-04 13:13:48+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2023-07-11_GMX_Synthetics.pdf | Keys | unmatched — not counted | — | listed in scope table | no |
| 2023-07-11_GMX_Synthetics.pdf | Deposit | unmatched — not counted | — | listed in scope table | no |
| 2023-07-11_GMX_Synthetics.pdf | DepositStoreUtils | unmatched — not counted | — | listed in scope table | no |
| 2023-07-11_GMX_Synthetics.pdf | EventEmitter | own contract | EventEmitter (selected) `0xc8ee91...3822fb` — deployed 2023-07-04 11:48:15+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2023-07-11_GMX_Synthetics.pdf | DepositHandler | own contract | 0x839b6e… (selected) `0x839b6e...c5c8b4` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2023-07-11_GMX_Synthetics.pdf | OrderHandler | own contract | 0xbad04d… (selected) `0xbad04d...c72216` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2023-07-11_GMX_Synthetics.pdf | WithdrawalHandler | own contract | 0x5bb6dc… (selected) `0x5bb6dc...923472` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2023-07-11_GMX_Synthetics.pdf | FeatureUtils | unmatched — not counted | — | listed in scope table | no |
| 2023-07-11_GMX_Synthetics.pdf | OrderVault | own contract | OrderVault (selected) `0x31ef83...bc40d5` — deployed 2023-07-04 11:53:55+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2023-07-11_GMX_Synthetics.pdf | DepositVault | own contract | DepositVault (selected) `0x90c670...722dff` — deployed 2023-07-04 13:25:59+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2023-07-11_GMX_Synthetics.pdf | WithdrawalVault | own contract | WithdrawalVault (selected) `0x0628d4...701c55` — deployed 2023-07-04 12:20:38+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2023-07-11_GMX_Synthetics.pdf | GasUtils | unmatched — not counted | — | listed in scope table | no |
| 2023-07-11_GMX_Synthetics.pdf | LiquidationUtils | unmatched — not counted | — | listed in scope table | no |
| 2023-07-11_GMX_Synthetics.pdf | Market | unmatched — not counted | — | listed in scope table | no |
| 2023-07-11_GMX_Synthetics.pdf | MarketFactory | own contract | MarketFactory (selected) `0xc57c15...9c1241` — deployed 2023-07-04 13:25:27+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2023-07-11_GMX_Synthetics.pdf | MarketStoreUtils | unmatched — not counted | — | listed in scope table | no |
| 2023-07-11_GMX_Synthetics.pdf | MarketToken | unmatched — not counted | — | listed in scope table | no |
| 2023-07-11_GMX_Synthetics.pdf | MarketUtils | unmatched — not counted | — | listed in scope table | no |
| 2023-07-11_GMX_Synthetics.pdf | NonceUtils | unmatched — not counted | — | listed in scope table | no |
| 2023-07-11_GMX_Synthetics.pdf | PriceFeed | unmatched — not counted | — | listed in scope table | no |
| 2023-07-11_GMX_Synthetics.pdf | Oracle | unmatched — not counted | — | listed in scope table | no |
| 2023-07-11_GMX_Synthetics.pdf | OracleModule | unmatched — not counted | — | listed in scope table | no |
| 2023-07-11_GMX_Synthetics.pdf | OracleStore | unmatched — not counted | — | listed in scope table | no |
| 2023-07-11_GMX_Synthetics.pdf | OracleUtils | unmatched — not counted | — | listed in scope table | no |
| 2023-07-11_GMX_Synthetics.pdf | DecreaseOrderUtils | unmatched — not counted | — | listed in scope table | no |
| 2023-07-11_GMX_Synthetics.pdf | IncreaseOrderUtils | unmatched — not counted | — | listed in scope table | no |
| 2023-07-11_GMX_Synthetics.pdf | Order | unmatched — not counted | — | listed in scope table | no |
| 2023-07-11_GMX_Synthetics.pdf | BaseOrderUtils | unmatched — not counted | — | listed in scope table | no |
| 2023-07-11_GMX_Synthetics.pdf | OrderStoreUtils | unmatched — not counted | — | listed in scope table | no |
| 2023-07-11_GMX_Synthetics.pdf | FeeUtils | unmatched — not counted | — | listed in scope table | no |
| 2023-07-11_GMX_Synthetics.pdf | OrderUtils | unmatched — not counted | — | listed in scope table | no |
| 2023-07-11_GMX_Synthetics.pdf | SwapOrderUtils | unmatched — not counted | — | listed in scope table | no |
| 2023-07-11_GMX_Synthetics.pdf | DecreasePositionUtils | unmatched — not counted | — | listed in scope table | no |
| 2023-07-11_GMX_Synthetics.pdf | IncreasePositionUtils | unmatched — not counted | — | listed in scope table | no |
| 2023-07-11_GMX_Synthetics.pdf | Position | unmatched — not counted | — | listed in scope table | no |
| 2023-07-11_GMX_Synthetics.pdf | PositionUtils | unmatched — not counted | — | listed in scope table | no |
| 2023-07-11_GMX_Synthetics.pdf | Price | unmatched — not counted | — | listed in scope table | no |
| 2023-07-11_GMX_Synthetics.pdf | PositionPricingUtils | unmatched — not counted | — | listed in scope table | no |
| 2023-07-11_GMX_Synthetics.pdf | PricingUtils | unmatched — not counted | — | listed in scope table | no |
| 2023-07-11_GMX_Synthetics.pdf | SwapPricingUtils | unmatched — not counted | — | listed in scope table | no |
| 2023-07-11_GMX_Synthetics.pdf | Reader | unmatched — not counted | — | listed in scope table | no |
| 2023-07-11_GMX_Synthetics.pdf | ReferralStorage | unmatched — not counted | — | listed in scope table | no |
| 2023-07-11_GMX_Synthetics.pdf | ReferralTier | unmatched — not counted | — | listed in scope table | no |
| 2023-07-11_GMX_Synthetics.pdf | ReferralUtils | unmatched — not counted | — | listed in scope table | no |
| 2023-07-11_GMX_Synthetics.pdf | Role | unmatched — not counted | — | listed in scope table | no |
| 2023-07-11_GMX_Synthetics.pdf | RoleModule | unmatched — not counted | — | listed in scope table | no |
| 2023-07-11_GMX_Synthetics.pdf | RoleStore | own contract | RoleStore (selected) `0x3c3d99...5e6e72` — deployed 2023-07-04 11:44:17+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2023-07-11_GMX_Synthetics.pdf | DepositUtils | unmatched — not counted | — | listed in scope table | no |
| 2023-07-11_GMX_Synthetics.pdf | ExecuteDepositUtils | unmatched — not counted | — | listed in scope table | no |
| 2023-07-11_GMX_Synthetics.pdf | ExchangeRouter | unmatched — not counted | — | listed in scope table | no |
| 2023-07-11_GMX_Synthetics.pdf | Router | unmatched — not counted | — | listed in scope table | no |
| 2023-07-11_GMX_Synthetics.pdf | SwapHandler | unmatched — not counted | — | listed in scope table | no |
| 2023-07-11_GMX_Synthetics.pdf | SwapUtils | unmatched — not counted | — | listed in scope table | no |
| 2023-07-11_GMX_Synthetics.pdf | Timelock | unmatched — not counted | — | listed in scope table | no |
| 2023-07-11_GMX_Synthetics.pdf | IWNT | unmatched — not counted | — | listed in scope table | no |
| 2023-07-11_GMX_Synthetics.pdf | TokenUtils | unmatched — not counted | — | listed in scope table | no |
| 2023-07-11_GMX_Synthetics.pdf | Array | unmatched — not counted | — | listed in scope table | no |
| 2023-07-11_GMX_Synthetics.pdf | Bits | unmatched — not counted | — | listed in scope table | no |
| 2023-07-11_GMX_Synthetics.pdf | Calc | unmatched — not counted | — | listed in scope table | no |
| 2023-07-11_GMX_Synthetics.pdf | EnumerableValues | unmatched — not counted | — | listed in scope table | no |
| 2023-07-11_GMX_Synthetics.pdf | BasicMulticall | unmatched — not counted | — | listed in scope table | no |
| 2023-07-11_GMX_Synthetics.pdf | PayableMulticall | unmatched — not counted | — | listed in scope table | no |
| 2023-07-11_GMX_Synthetics.pdf | Precision | unmatched — not counted | — | listed in scope table | no |
| 2023-07-11_GMX_Synthetics.pdf | Withdrawal | unmatched — not counted | — | listed in scope table | no |
| 2023-07-11_GMX_Synthetics.pdf | WithdrawalStoreUtils | unmatched — not counted | — | listed in scope table | no |
| 2023-07-11_GMX_Synthetics.pdf | WithdrawalUtils | unmatched — not counted | — | listed in scope table | no |
| 2023-07-11_GMX_Synthetics.pdf | Config | own contract | 0x5a1344… (selected) `0x5a1344...d7ed6d` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2023-07-11_GMX_Synthetics.pdf | Errors | unmatched — not counted | — | listed in scope table | no |
| 2023-07-11_GMX_Synthetics.pdf | BaseOrderHandler | unmatched — not counted | — | listed in scope table | no |
| 2023-07-11_GMX_Synthetics.pdf | ExchangeUtils | unmatched — not counted | — | listed in scope table | no |
| 2023-07-11_GMX_Synthetics.pdf | LiquidationHandler | own contract | 0x1bc32e… (selected) `0x1bc32e...a37f10` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2023-07-11_GMX_Synthetics.pdf | FeeHandler | unmatched — not counted | — | listed in scope table | no |
| 2023-07-11_GMX_Synthetics.pdf | MarketPoolValueInfo | unmatched — not counted | — | listed in scope table | no |
| 2023-07-11_GMX_Synthetics.pdf | DecreasePositionSwapUtils | unmatched — not counted | — | listed in scope table | no |
| 2023-07-11_GMX_Synthetics.pdf | PositionStoreUtils | unmatched — not counted | — | listed in scope table | no |
| 2023-07-11_GMX_Synthetics.pdf | AccountUtils | unmatched — not counted | — | listed in scope table | no |
| 2023-07-11_GMX_Synthetics.pdf | Cast | unmatched — not counted | — | listed in scope table | no |
| 2023-07-11_GMX_Synthetics.pdf | GlobalReentrancyGuard | unmatched — not counted | — | listed in scope table | no |
| 2023-07-11_GMX_Synthetics.pdf | Uint256Mask | unmatched — not counted | — | listed in scope table | no |
| 2023-07-11_GMX_Synthetics.pdf | AdlHandler | own contract | 0xec0e4a… (selected) `0xec0e4a...28054c` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2023-07-11_GMX_Synthetics.pdf | DecreasePositionCollateralUtils | unmatched — not counted | — | listed in scope table | no |
| 2023-07-11_GMX_Synthetics.pdf | ErrorUtils | unmatched — not counted | — | listed in scope table | no |
| 2023-07-28_GMX_Synthetics.pdf | AdlUtils | unmatched — not counted | — | listed in scope table | no |
| 2023-07-28_GMX_Synthetics.pdf | Bank | unmatched — not counted | — | listed in scope table | no |
| 2023-07-28_GMX_Synthetics.pdf | StrictBank | unmatched — not counted | — | listed in scope table | no |
| 2023-07-28_GMX_Synthetics.pdf | CallbackUtils | unmatched — not counted | — | listed in scope table | no |
| 2023-07-28_GMX_Synthetics.pdf | IDepositCallbackReceiver | unmatched — not counted | — | listed in scope table | no |
| 2023-07-28_GMX_Synthetics.pdf | IOrderCallbackReceiver | unmatched — not counted | — | listed in scope table | no |
| 2023-07-28_GMX_Synthetics.pdf | IWithdrawalCallbackReceiver | unmatched — not counted | — | listed in scope table | no |
| 2023-07-28_GMX_Synthetics.pdf | ArbSys | unmatched — not counted | — | listed in scope table | no |
| 2023-07-28_GMX_Synthetics.pdf | Chain | unmatched — not counted | — | listed in scope table | no |
| 2023-07-28_GMX_Synthetics.pdf | DataStore | own contract | DataStore (selected) `0x2f0b22...2fe3f6` — deployed 2023-07-04 13:13:48+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2023-07-28_GMX_Synthetics.pdf | Keys | unmatched — not counted | — | listed in scope table | no |
| 2023-07-28_GMX_Synthetics.pdf | Deposit | unmatched — not counted | — | listed in scope table | no |
| 2023-07-28_GMX_Synthetics.pdf | DepositStoreUtils | unmatched — not counted | — | listed in scope table | no |
| 2023-07-28_GMX_Synthetics.pdf | EventEmitter | own contract | EventEmitter (selected) `0xc8ee91...3822fb` — deployed 2023-07-04 11:48:15+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2023-07-28_GMX_Synthetics.pdf | DepositHandler | own contract | 0x839b6e… (selected) `0x839b6e...c5c8b4` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2023-07-28_GMX_Synthetics.pdf | OrderHandler | own contract | 0xbad04d… (selected) `0xbad04d...c72216` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2023-07-28_GMX_Synthetics.pdf | WithdrawalHandler | own contract | 0x5bb6dc… (selected) `0x5bb6dc...923472` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2023-07-28_GMX_Synthetics.pdf | FeatureUtils | unmatched — not counted | — | listed in scope table | no |
| 2023-07-28_GMX_Synthetics.pdf | OrderVault | own contract | OrderVault (selected) `0x31ef83...bc40d5` — deployed 2023-07-04 11:53:55+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2023-07-28_GMX_Synthetics.pdf | DepositVault | own contract | DepositVault (selected) `0x90c670...722dff` — deployed 2023-07-04 13:25:59+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2023-07-28_GMX_Synthetics.pdf | WithdrawalVault | own contract | WithdrawalVault (selected) `0x0628d4...701c55` — deployed 2023-07-04 12:20:38+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2023-07-28_GMX_Synthetics.pdf | GasUtils | unmatched — not counted | — | listed in scope table | no |
| 2023-07-28_GMX_Synthetics.pdf | LiquidationUtils | unmatched — not counted | — | listed in scope table | no |
| 2023-07-28_GMX_Synthetics.pdf | Market | unmatched — not counted | — | listed in scope table | no |
| 2023-07-28_GMX_Synthetics.pdf | MarketFactory | own contract | MarketFactory (selected) `0xc57c15...9c1241` — deployed 2023-07-04 13:25:27+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2023-07-28_GMX_Synthetics.pdf | MarketStoreUtils | unmatched — not counted | — | listed in scope table | no |
| 2023-07-28_GMX_Synthetics.pdf | MarketToken | unmatched — not counted | — | listed in scope table | no |
| 2023-07-28_GMX_Synthetics.pdf | MarketUtils | unmatched — not counted | — | listed in scope table | no |
| 2023-07-28_GMX_Synthetics.pdf | NonceUtils | unmatched — not counted | — | listed in scope table | no |
| 2023-07-28_GMX_Synthetics.pdf | PriceFeed | unmatched — not counted | — | listed in scope table | no |
| 2023-07-28_GMX_Synthetics.pdf | Oracle | unmatched — not counted | — | listed in scope table | no |
| 2023-07-28_GMX_Synthetics.pdf | OracleModule | unmatched — not counted | — | listed in scope table | no |
| 2023-07-28_GMX_Synthetics.pdf | OracleStore | unmatched — not counted | — | listed in scope table | no |
| 2023-07-28_GMX_Synthetics.pdf | OracleUtils | unmatched — not counted | — | listed in scope table | no |
| 2023-07-28_GMX_Synthetics.pdf | DecreaseOrderUtils | unmatched — not counted | — | listed in scope table | no |
| 2023-07-28_GMX_Synthetics.pdf | IncreaseOrderUtils | unmatched — not counted | — | listed in scope table | no |
| 2023-07-28_GMX_Synthetics.pdf | Order | unmatched — not counted | — | listed in scope table | no |
| 2023-07-28_GMX_Synthetics.pdf | BaseOrderUtils | unmatched — not counted | — | listed in scope table | no |
| 2023-07-28_GMX_Synthetics.pdf | OrderStoreUtils | unmatched — not counted | — | listed in scope table | no |
| 2023-07-28_GMX_Synthetics.pdf | FeeUtils | unmatched — not counted | — | listed in scope table | no |
| 2023-07-28_GMX_Synthetics.pdf | OrderUtils | unmatched — not counted | — | listed in scope table | no |
| 2023-07-28_GMX_Synthetics.pdf | SwapOrderUtils | unmatched — not counted | — | listed in scope table | no |
| 2023-07-28_GMX_Synthetics.pdf | DecreasePositionUtils | unmatched — not counted | — | listed in scope table | no |
| 2023-07-28_GMX_Synthetics.pdf | IncreasePositionUtils | unmatched — not counted | — | listed in scope table | no |
| 2023-07-28_GMX_Synthetics.pdf | Position | unmatched — not counted | — | listed in scope table | no |
| 2023-07-28_GMX_Synthetics.pdf | PositionUtils | unmatched — not counted | — | listed in scope table | no |
| 2023-07-28_GMX_Synthetics.pdf | Price | unmatched — not counted | — | listed in scope table | no |
| 2023-07-28_GMX_Synthetics.pdf | PositionPricingUtils | unmatched — not counted | — | listed in scope table | no |
| 2023-07-28_GMX_Synthetics.pdf | PricingUtils | unmatched — not counted | — | listed in scope table | no |
| 2023-07-28_GMX_Synthetics.pdf | SwapPricingUtils | unmatched — not counted | — | listed in scope table | no |
| 2023-07-28_GMX_Synthetics.pdf | Reader | unmatched — not counted | — | listed in scope table | no |
| 2023-07-28_GMX_Synthetics.pdf | IReferralStorage | unmatched — not counted | — | listed in scope table | no |
| 2023-07-28_GMX_Synthetics.pdf | ReferralTier | unmatched — not counted | — | listed in scope table | no |
| 2023-07-28_GMX_Synthetics.pdf | ReferralUtils | unmatched — not counted | — | listed in scope table | no |
| 2023-07-28_GMX_Synthetics.pdf | ReferralStorage | unmatched — not counted | — | listed in scope table | no |
| 2023-07-28_GMX_Synthetics.pdf | Role | unmatched — not counted | — | listed in scope table | no |
| 2023-07-28_GMX_Synthetics.pdf | RoleModule | unmatched — not counted | — | listed in scope table | no |
| 2023-07-28_GMX_Synthetics.pdf | RoleStore | own contract | RoleStore (selected) `0x3c3d99...5e6e72` — deployed 2023-07-04 11:44:17+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2023-07-28_GMX_Synthetics.pdf | DepositUtils | unmatched — not counted | — | listed in scope table | no |
| 2023-07-28_GMX_Synthetics.pdf | ExecuteDepositUtils | unmatched — not counted | — | listed in scope table | no |
| 2023-07-28_GMX_Synthetics.pdf | ExchangeRouter | unmatched — not counted | — | listed in scope table | no |
| 2023-07-28_GMX_Synthetics.pdf | Router | unmatched — not counted | — | listed in scope table | no |
| 2023-07-28_GMX_Synthetics.pdf | SwapHandler | unmatched — not counted | — | listed in scope table | no |
| 2023-07-28_GMX_Synthetics.pdf | SwapUtils | unmatched — not counted | — | listed in scope table | no |
| 2023-07-28_GMX_Synthetics.pdf | Timelock | unmatched — not counted | — | listed in scope table | no |
| 2023-07-28_GMX_Synthetics.pdf | IWNT | unmatched — not counted | — | listed in scope table | no |
| 2023-07-28_GMX_Synthetics.pdf | TokenUtils | unmatched — not counted | — | listed in scope table | no |
| 2023-07-28_GMX_Synthetics.pdf | Array | unmatched — not counted | — | listed in scope table | no |
| 2023-07-28_GMX_Synthetics.pdf | Bits | unmatched — not counted | — | listed in scope table | no |
| 2023-07-28_GMX_Synthetics.pdf | Calc | unmatched — not counted | — | listed in scope table | no |
| 2023-07-28_GMX_Synthetics.pdf | EnumerableValues | unmatched — not counted | — | listed in scope table | no |
| 2023-07-28_GMX_Synthetics.pdf | BasicMulticall | unmatched — not counted | — | listed in scope table | no |
| 2023-07-28_GMX_Synthetics.pdf | PayableMulticall | unmatched — not counted | — | listed in scope table | no |
| 2023-07-28_GMX_Synthetics.pdf | Precision | unmatched — not counted | — | listed in scope table | no |
| 2023-07-28_GMX_Synthetics.pdf | Withdrawal | unmatched — not counted | — | listed in scope table | no |
| 2023-07-28_GMX_Synthetics.pdf | WithdrawalStoreUtils | unmatched — not counted | — | listed in scope table | no |
| 2023-07-28_GMX_Synthetics.pdf | WithdrawalUtils | unmatched — not counted | — | listed in scope table | no |
| 2023-07-28_GMX_Synthetics.pdf | Config | own contract | 0x5a1344… (selected) `0x5a1344...d7ed6d` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2023-07-28_GMX_Synthetics.pdf | Errors | unmatched — not counted | — | listed in scope table | no |
| 2023-07-28_GMX_Synthetics.pdf | BaseOrderHandler | unmatched — not counted | — | listed in scope table | no |
| 2023-07-28_GMX_Synthetics.pdf | ExchangeUtils | unmatched — not counted | — | listed in scope table | no |
| 2023-07-28_GMX_Synthetics.pdf | LiquidationHandler | own contract | 0x1bc32e… (selected) `0x1bc32e...a37f10` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2023-07-28_GMX_Synthetics.pdf | FeeHandler | unmatched — not counted | — | listed in scope table | no |
| 2023-07-28_GMX_Synthetics.pdf | MarketPoolValueInfo | unmatched — not counted | — | listed in scope table | no |
| 2023-07-28_GMX_Synthetics.pdf | DecreasePositionSwapUtils | unmatched — not counted | — | listed in scope table | no |
| 2023-07-28_GMX_Synthetics.pdf | PositionStoreUtils | unmatched — not counted | — | listed in scope table | no |
| 2023-07-28_GMX_Synthetics.pdf | AccountUtils | unmatched — not counted | — | listed in scope table | no |
| 2023-07-28_GMX_Synthetics.pdf | Cast | unmatched — not counted | — | listed in scope table | no |
| 2023-07-28_GMX_Synthetics.pdf | GlobalReentrancyGuard | unmatched — not counted | — | listed in scope table | no |
| 2023-07-28_GMX_Synthetics.pdf | Uint256Mask | unmatched — not counted | — | listed in scope table | no |
| 2023-07-28_GMX_Synthetics.pdf | AdlHandler | own contract | 0xec0e4a… (selected) `0xec0e4a...28054c` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2023-07-28_GMX_Synthetics.pdf | DecreasePositionCollateralUtils | unmatched — not counted | — | listed in scope table | no |
| 2023-07-28_GMX_Synthetics.pdf | ErrorUtils | unmatched — not counted | — | listed in scope table | no |
| 2023-09-01_GMX_Oracle_Updates.pdf | Config | own contract | 0x5a1344… (selected) `0x5a1344...d7ed6d` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2023-09-01_GMX_Oracle_Updates.pdf | Timelock | unmatched — not counted | — | listed in scope table | no |
| 2023-09-01_GMX_Oracle_Updates.pdf | Keys | unmatched — not counted | — | listed in scope table | no |
| 2023-09-01_GMX_Oracle_Updates.pdf | ExecuteDepositUtils | unmatched — not counted | — | listed in scope table | no |
| 2023-09-01_GMX_Oracle_Updates.pdf | Errors | unmatched — not counted | — | listed in scope table | no |
| 2023-09-01_GMX_Oracle_Updates.pdf | AdlHandler | own contract | 0xec0e4a… (selected) `0xec0e4a...28054c` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2023-09-01_GMX_Oracle_Updates.pdf | BaseOrderHandler | unmatched — not counted | — | listed in scope table | no |
| 2023-09-01_GMX_Oracle_Updates.pdf | DepositHandler | own contract | 0x839b6e… (selected) `0x839b6e...c5c8b4` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2023-09-01_GMX_Oracle_Updates.pdf | WithdrawalHandler | own contract | 0x5bb6dc… (selected) `0x5bb6dc...923472` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2023-09-01_GMX_Oracle_Updates.pdf | GasUtils | unmatched — not counted | — | listed in scope table | no |
| 2023-09-01_GMX_Oracle_Updates.pdf | MarketUtils | unmatched — not counted | — | listed in scope table | no |
| 2023-09-01_GMX_Oracle_Updates.pdf | OracleUtils | unmatched — not counted | — | listed in scope table | no |
| 2023-09-01_GMX_Oracle_Updates.pdf | Oracle | unmatched — not counted | — | listed in scope table | no |
| 2023-09-01_GMX_Oracle_Updates.pdf | OrderUtils | unmatched — not counted | — | listed in scope table | no |
| 2023-09-01_GMX_Oracle_Updates.pdf | DecreasePositionCollateralUtils | unmatched — not counted | — | listed in scope table | no |
| 2023-09-01_GMX_Oracle_Updates.pdf | DecreasePositionUtils | unmatched — not counted | — | listed in scope table | no |
| 2023-09-01_GMX_Oracle_Updates.pdf | SwapPricingUtils | unmatched — not counted | — | listed in scope table | no |
| 2023-09-01_GMX_Oracle_Updates.pdf | SwapUtils | unmatched — not counted | — | listed in scope table | no |
| 2023-09-01_GMX_Oracle_Updates.pdf | ExecuteWithdrawalUtils | unmatched — not counted | — | listed in scope table | no |
| 2023-09-01_GMX_Oracle_Updates.pdf | WithdrawalUtils | unmatched — not counted | — | listed in scope table | no |
| 2023-09-26_GMX_Synthetics_Updates.pdf | Config | own contract | 0x5a1344… (selected) `0x5a1344...d7ed6d` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2023-09-26_GMX_Synthetics_Updates.pdf | Keys | unmatched — not counted | — | listed in scope table | no |
| 2023-09-26_GMX_Synthetics_Updates.pdf | ExecuteDepositUtils | unmatched — not counted | — | listed in scope table | no |
| 2023-09-26_GMX_Synthetics_Updates.pdf | BaseOrderHandler | unmatched — not counted | — | listed in scope table | no |
| 2023-09-26_GMX_Synthetics_Updates.pdf | GasUtils | unmatched — not counted | — | listed in scope table | no |
| 2023-09-26_GMX_Synthetics_Updates.pdf | MarketUtils | unmatched — not counted | — | listed in scope table | no |
| 2023-09-26_GMX_Synthetics_Updates.pdf | Oracle | unmatched — not counted | — | listed in scope table | no |
| 2023-09-26_GMX_Synthetics_Updates.pdf | PositionUtils | unmatched — not counted | — | listed in scope table | no |
| 2023-09-26_GMX_Synthetics_Updates.pdf | BaseRouter | unmatched — not counted | — | listed in scope table | no |
| 2023-09-26_GMX_Synthetics_Updates.pdf | ExchangeRouter | unmatched — not counted | — | listed in scope table | no |
| 2023-09-26_GMX_Synthetics_Updates.pdf | TokenUtils | unmatched — not counted | — | listed in scope table | no |
| 2023-09-26_GMX_Synthetics_Updates.pdf | Calc | unmatched — not counted | — | listed in scope table | no |
| 2023-09-26_GMX_Synthetics_Updates.pdf | ExecuteWithdrawalUtils | unmatched — not counted | — | listed in scope table | no |
| 2023-10-25_GMX_Migrator.pdf | GlpMigrator | unmatched — not counted | — | listed in scope table | no |
| 2023-10-25_GMX_Migrator.pdf | GlpRewardRouter | unmatched — not counted | — | listed in scope table | no |
| 2023-10-25_GMX_Migrator.pdf | GlpTimelock | unmatched — not counted | — | listed in scope table | no |
| 2023-10-25_GMX_Migrator.pdf | GlpVault | unmatched — not counted | — | listed in scope table | no |
| 2023-10-25_GMX_Migrator.pdf | ExternalHandler | unmatched — not counted | — | listed in scope table | no |
| 2023-11-26_GMX_Subaccount.pdf | SubaccountRouter | unmatched — not counted | — | listed in scope table with SHA-1 checksum | no |
| 2023-11-26_GMX_Subaccount.pdf | SubaccountUtils | unmatched — not counted | — | listed in scope table with SHA-1 checksum | no |
| 2023-11-26_GMX_Subaccount.pdf | BaseRouter | unmatched — not counted | — | listed in scope table with SHA-1 checksum | no |
| 2023-12-17_GMX_Governance_Updates.pdf | RewardRouterV2 | unmatched — not counted | — | mentioned in findings RROU-1 through RROU-6 | no |
| 2023-12-17_GMX_Governance_Updates.pdf | GovToken | unmatched — not counted | — | mentioned in finding GLOBAL-2 and RROU-2 | no |
| 2023-12-17_GMX_Governance_Updates.pdf | ProtocolGovernance | unmatched — not counted | — | mentioned in finding GLOBAL-2 | no |
| 2023-12-17_GMX_Governance_Updates.pdf | ProtocolGovernor | unmatched — not counted | — | mentioned in finding DEPLOY-1 | no |
| 2024-01-16_GMX_Config.pdf | Config | own contract | 0x5a1344… (selected) `0x5a1344...d7ed6d` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2024-01-16_GMX_Config.pdf | RoleModule | unmatched — not counted | — | mentioned in findings description | no |
| 2024-06-14_GMX_Updates_1.pdf | OrderUtils | unmatched — not counted | — | Listed in findings locations (e.g., C-01, C-02, L-23) | no |
| 2024-06-14_GMX_Updates_1.pdf | Keys | unmatched — not counted | — | Listed in findings locations (e.g., C-03, L-20) | no |
| 2024-06-14_GMX_Updates_1.pdf | ExecuteDepositUtils | unmatched — not counted | — | Listed in findings locations (e.g., H-01) | no |
| 2024-06-14_GMX_Updates_1.pdf | Timelock | unmatched — not counted | — | Listed in findings locations (e.g., H-02) | no |
| 2024-06-14_GMX_Updates_1.pdf | ShiftHandler | own contract | 0xad712e… (selected) `0xad712e...96bc35` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2024-06-14_GMX_Updates_1.pdf | Config | own contract | 0x5a1344… (selected) `0x5a1344...d7ed6d` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2024-06-14_GMX_Updates_1.pdf | GMOracleProvider | unmatched — not counted | — | Listed in findings locations (e.g., H-05) | no |
| 2024-06-14_GMX_Updates_1.pdf | GasUtils | unmatched — not counted | — | Listed in findings locations (e.g., H-06, M-02, M-09) | no |
| 2024-06-14_GMX_Updates_1.pdf | SwapOrderUtils | unmatched — not counted | — | Listed in findings locations (e.g., H-07) | no |
| 2024-06-14_GMX_Updates_1.pdf | Oracle | unmatched — not counted | — | Listed in findings locations (e.g., H-08, L-10, L-11, L-24) | no |
| 2024-06-14_GMX_Updates_1.pdf | ExternalHandler | unmatched — not counted | — | Listed in findings locations (e.g., M-01) | no |
| 2024-06-14_GMX_Updates_1.pdf | AutoCancelUtils | unmatched — not counted | — | Listed in findings locations (e.g., M-03) | no |
| 2024-06-14_GMX_Updates_1.pdf | ShiftUtils | unmatched — not counted | — | Listed in findings locations (e.g., M-04, L-12, L-18) | no |
| 2024-06-14_GMX_Updates_1.pdf | WithdrawalHandler | own contract | 0x5bb6dc… (selected) `0x5bb6dc...923472` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2024-06-14_GMX_Updates_1.pdf | MarketUtils | unmatched — not counted | — | Listed in findings locations (e.g., L-01, L-08, L-22) | no |
| 2024-06-14_GMX_Updates_1.pdf | TimestampInitializer | unmatched — not counted | — | Listed in findings locations (e.g., L-05, L-21) | no |
| 2024-06-14_GMX_Updates_1.pdf | GmOracleUtils | unmatched — not counted | — | Listed in findings locations (e.g., L-14) | no |
| 2024-06-14_GMX_Updates_1.pdf | Errors | unmatched — not counted | — | Listed in findings locations (e.g., L-16) | no |
| 2024-06-14_GMX_Updates_1.pdf | ChainlinkDataStreamProvider | unmatched — not counted | — | Listed in findings locations (e.g., L-17) | no |
| 2024-06-14_GMX_Updates_2.pdf | OrderHandler | own contract | 0xbad04d… (selected) `0xbad04d...c72216` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2024-06-14_GMX_Updates_2.pdf | SwapOrderUtils | unmatched — not counted | — | listed in finding C-02 | no |
| 2024-06-14_GMX_Updates_2.pdf | OrderUtils | unmatched — not counted | — | listed in findings H-01, M-01, L-06 | no |
| 2024-06-14_GMX_Updates_2.pdf | CallbackUtils | unmatched — not counted | — | listed in finding M-03 | no |
| 2024-06-14_GMX_Updates_2.pdf | ExecuteOrderUtils | unmatched — not counted | — | listed in finding M-06 | no |
| 2024-06-14_GMX_Updates_2.pdf | GasUtils | unmatched — not counted | — | listed in findings L-02, L-08 | no |
| 2024-06-14_GMX_Updates_2.pdf | DepositUtils | unmatched — not counted | — | listed in finding L-05 | no |
| 2024-06-14_GMX_Updates_2.pdf | MarketUtils | unmatched — not counted | — | listed in finding L-07 | no |
| 2024-06-14_GMX_Updates_3.pdf | OrderUtils | unmatched — not counted | — | mentioned in finding location | no |
| 2024-06-14_GMX_Updates_3.pdf | OrderVault | own contract | OrderVault (selected) `0x31ef83...bc40d5` — deployed 2023-07-04 11:53:55+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2024-06-14_GMX_Updates_3.pdf | OrderStore | unmatched — not counted | — | mentioned in finding description | no |
| 2024-06-14_GMX_Updates_3.pdf | MarketIncrease | unmatched — not counted | — | mentioned in finding description | no |
| 2024-09-03_GMX_GLV.pdf | GlvRouter | own contract | 0xc92741… (selected) `0xc92741...228d9f` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2024-09-03_GMX_GLV.pdf | GlvHandler | unmatched — not counted | — | listed in finding locations (H-01, M-05, L-01, L-02, L-07, L-23, L-30) | no |
| 2024-09-03_GMX_GLV.pdf | CallbackUtils | unmatched — not counted | — | listed in finding locations (H-02, M-12) | no |
| 2024-09-03_GMX_GLV.pdf | GasUtils | unmatched — not counted | — | listed in finding locations (M-01, M-11, L-15) | no |
| 2024-09-03_GMX_GLV.pdf | GlvWithdrawalUtils | unmatched — not counted | — | listed in finding locations (M-02, M-03, M-06, M-07, M-08) | no |
| 2024-09-03_GMX_GLV.pdf | GlvDepositUtils | unmatched — not counted | — | listed in finding locations (M-09, L-06, L-10, L-20, L-21, L-32) | no |
| 2024-09-03_GMX_GLV.pdf | GlvUtils | unmatched — not counted | — | listed in finding locations (L-03, L-04) | no |
| 2024-09-03_GMX_GLV.pdf | Config | own contract | 0x5a1344… (selected) `0x5a1344...d7ed6d` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2024-09-03_GMX_GLV.pdf | GlvShiftUtils | unmatched — not counted | — | listed in finding locations (L-08, L-09, L-16, L-29, L-31) | no |
| 2024-09-03_GMX_GLV.pdf | GlvFactory | unmatched — not counted | — | listed in finding location (L-11) | no |
| 2024-09-03_GMX_GLV.pdf | Errors | unmatched — not counted | — | listed in finding location (L-14) | no |
| 2024-09-03_GMX_GLV.pdf | ShiftHandler | own contract | 0xad712e… (selected) `0xad712e...96bc35` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2024-09-03_GMX_GLV.pdf | Keys | unmatched — not counted | — | listed in finding location (L-25) | no |
| 2024-09-03_GMX_GLV.pdf | GlvStoreUtils | unmatched — not counted | — | listed in finding locations (L-25, L-26) | no |
| 2024-09-03_GMX_GLV.pdf | GlvWithdrawalStoreUtils | unmatched — not counted | — | listed in finding location (L-27) | no |
| 2024-09-03_GMX_GLV.pdf | ExecuteDepositUtils | unmatched — not counted | — | referenced in L-32 description | no |
| 2024-09-03_GMX_GLV.pdf | ExecuteWithdrawalUtils | unmatched — not counted | — | referenced in M-08 recommendation | no |
| 2024-09-04_GMX_Config_Syncer.pdf | ConfigSyncer | unmatched — not counted | — | mentioned in audit summary and findings | no |
| 2024-09-04_GMX_Config_Syncer.pdf | RiskOracle | unmatched — not counted | — | findings reference RiskOracle.sol and Arbitrum Sepolia address | no |
| 2024-09-04_GMX_Config_Syncer.pdf | Config | own contract | 0x5a1344… (selected) `0x5a1344...d7ed6d` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2024-11-18_GMX_Buybacks_Report.pdf | FeeHandler | unmatched — not counted | — | Listed in findings locations | no |
| 2024-11-18_GMX_Buybacks_Report.pdf | Config | own contract | 0x5a1344… (selected) `0x5a1344...d7ed6d` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2024-11-18_GMX_Pro_Tiers_Report.pdf | Config | own contract | 0x5a1344… (selected) `0x5a1344...d7ed6d` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2024-11-18_GMX_Pro_Tiers_Report.pdf | GasUtils | unmatched — not counted | — | mentioned in finding location | no |
| 2024-11-18_GMX_Pro_Tiers_Report.pdf | OrderUtils | unmatched — not counted | — | mentioned in finding locations | no |
| 2024-11-18_GMX_Pro_Tiers_Report.pdf | PositionPricingUtils | unmatched — not counted | — | mentioned in finding location | no |
| 2024-11-18_GMX_Pro_Tiers_Report.pdf | Order | unmatched — not counted | — | mentioned in finding location | no |
| 2025-04-11_GMX_Gasless_Sponsored_Calls_1.pdf | GasUtils | unmatched — not counted | — | mentioned in findings L-01, L-02, L-05, L-06, L-07, L-08, L-10, L-14 | no |
| 2025-04-11_GMX_Gasless_Sponsored_Calls_1.pdf | BaseGelatoRelayRouter | unmatched — not counted | — | mentioned in findings L-09, L-12, L-13, L-15 | no |
| 2025-04-11_GMX_Gasless_Sponsored_Calls_1.pdf | SubaccountGelatoRelayRouter | unmatched — not counted | — | mentioned in finding L-11 | no |
| 2025-04-11_GMX_Gasless_Sponsored_Calls_1.pdf | SubaccountRouter | unmatched — not counted | — | mentioned in finding L-16 | no |
| 2025-04-11_GMX_Gasless_Sponsored_Calls_1.pdf | RelayUtils | unmatched — not counted | — | mentioned in finding L-17 | no |
| 2025-04-11_GMX_Gasless_Sponsored_Calls_2.pdf | BaseGelatoRelayRouter | unmatched — not counted | — | Listed in findings locations (e.g., M-01, L-03, L-04, L-07, L-10) | no |
| 2025-04-11_GMX_Gasless_Sponsored_Calls_2.pdf | GelatoRelayRouter | unmatched — not counted | — | Listed in findings locations (e.g., L-01, L-04, L-08) | no |
| 2025-04-11_GMX_Gasless_Sponsored_Calls_2.pdf | SubaccountGelatoRelayRouter | unmatched — not counted | — | Listed in findings location (L-04) | no |
| 2025-04-11_GMX_Gasless_Sponsored_Calls_2.pdf | GasUtils | unmatched — not counted | — | Listed in findings locations (L-05, L-06) | no |
| 2025-04-11_GMX_Gasless_Sponsored_Calls_2.pdf | RelayUtils | unmatched — not counted | — | Listed in findings location (L-09) | no |
| 2025-07-29_GMX_Crosschain_V2.2_1_report.pdf | LayerZeroProvider | unmatched — not counted | — | listed in scope and findings | no |
| 2025-07-29_GMX_Crosschain_V2.2_1_report.pdf | MultichainOrderRouter | unmatched — not counted | — | listed in scope and findings | no |
| 2025-07-29_GMX_Crosschain_V2.2_1_report.pdf | MultichainTransferRouter | unmatched — not counted | — | listed in scope and findings | no |
| 2025-07-29_GMX_Crosschain_V2.2_1_report.pdf | MultichainGmRouter | unmatched — not counted | — | listed in scope and findings | no |
| 2025-07-29_GMX_Crosschain_V2.2_1_report.pdf | MultichainGlvRouter | unmatched — not counted | — | listed in scope and findings | no |
| 2025-07-29_GMX_Crosschain_V2.2_1_report.pdf | MultichainRouter | unmatched — not counted | — | listed in scope and findings | no |
| 2025-07-29_GMX_Crosschain_V2.2_1_report.pdf | BaseGelatoRelayRouter | unmatched — not counted | — | listed in scope and findings | no |
| 2025-07-29_GMX_Crosschain_V2.2_1_report.pdf | MultichainUtils | unmatched — not counted | — | listed in scope and findings | no |
| 2025-07-29_GMX_Crosschain_V2.2_1_report.pdf | OrderUtils | unmatched — not counted | — | listed in scope and findings | no |
| 2025-07-29_GMX_Crosschain_V2.2_1_report.pdf | PositionUtils | unmatched — not counted | — | listed in scope and findings | no |
| 2025-07-29_GMX_Crosschain_V2.2_1_report.pdf | DecreasePositionCollateralUtils | unmatched — not counted | — | listed in scope and findings | no |
| 2025-07-29_GMX_Crosschain_V2.2_1_report.pdf | ExecuteGlvDepositUtils | unmatched — not counted | — | listed in scope and findings | no |
| 2025-07-29_GMX_Crosschain_V2.2_1_report.pdf | DecreasePositionUtils | unmatched — not counted | — | listed in scope and findings | no |
| 2025-07-29_GMX_Crosschain_V2.2_1_report.pdf | ExecuteDepositUtils | unmatched — not counted | — | listed in scope and findings | no |
| 2025-07-29_GMX_Crosschain_V2.2_1_report.pdf | ExecuteWithdrawalUtils | unmatched — not counted | — | listed in scope and findings | no |
| 2025-07-29_GMX_Crosschain_V2.2_1_report.pdf | OrderHandler | own contract | 0xbad04d… (selected) `0xbad04d...c72216` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2025-07-29_GMX_Crosschain_V2.2_1_report.pdf | WithdrawalHandler | own contract | 0x5bb6dc… (selected) `0x5bb6dc...923472` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2025-07-29_GMX_Crosschain_V2.2_1_report.pdf | GlvHandler | unmatched — not counted | — | listed in scope and findings | no |
| 2025-07-29_GMX_Crosschain_V2.2_1_report.pdf | AdlHandler | own contract | 0xec0e4a… (selected) `0xec0e4a...28054c` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2025-07-29_GMX_Crosschain_V2.2_1_report.pdf | Config | own contract | 0x5a1344… (selected) `0x5a1344...d7ed6d` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2025-07-29_GMX_Crosschain_V2.2_1_report.pdf | ConfigUtils | unmatched — not counted | — | listed in scope and findings | no |
| 2025-07-29_GMX_Crosschain_V2.2_1_report.pdf | WithdrawalStoreUtils | unmatched — not counted | — | listed in scope and findings | no |
| 2025-07-29_GMX_Crosschain_V2.2_1_report.pdf | OrderEventUtils | unmatched — not counted | — | listed in scope and findings | no |
| 2025-07-29_GMX_Crosschain_V2.2_1_report.pdf | GasUtils | unmatched — not counted | — | listed in scope and findings | no |
| 2025-07-29_GMX_Crosschain_V2.2_1_report.pdf | PositionPricingUtils | unmatched — not counted | — | listed in scope and findings | no |
| 2025-07-29_GMX_Crosschain_V2.2_1_report.pdf | MultichainProviderUtils | unmatched — not counted | — | listed in scope and findings | no |
| 2025-07-29_GMX_Crosschain_V2.2_1_report.pdf | EventUtils | unmatched — not counted | — | listed in scope and findings | no |
| 2025-07-29_GMX_Crosschain_V2.2_1_report.pdf | DecreaseOrderUtils | unmatched — not counted | — | listed in scope and findings | no |
| 2025-07-29_GMX_Crosschain_V2.2_2_report.pdf | MultichainOrderRouterUtils | unmatched — not counted | — | Listed in findings locations (e.g., C-01, H-02, M-02, M-05, M-13, L-12, L-17, L-22) | no |
| 2025-07-29_GMX_Crosschain_V2.2_2_report.pdf | EdgeDataStreamVerifier | unmatched — not counted | — | Listed in finding H-03 location | no |
| 2025-07-29_GMX_Crosschain_V2.2_2_report.pdf | PositionUtils | unmatched — not counted | — | Listed in findings H-05 and L-18 locations | no |
| 2025-07-29_GMX_Crosschain_V2.2_2_report.pdf | LayerZeroProvider | unmatched — not counted | — | Listed in findings M-02, L-01, L-02, L-03, L-05 locations | no |
| 2025-07-29_GMX_Crosschain_V2.2_2_report.pdf | MultichainSubaccountRouter | unmatched — not counted | — | Listed in finding M-03 location | no |
| 2025-07-29_GMX_Crosschain_V2.2_2_report.pdf | MarketPositionImpactPoolUtils | unmatched — not counted | — | Listed in findings M-04, M-06, M-07, M-11, L-10, L-16, L-24 locations | no |
| 2025-07-29_GMX_Crosschain_V2.2_2_report.pdf | SubaccountRouterUtils | unmatched — not counted | — | Listed in finding M-10 location | no |
| 2025-07-29_GMX_Crosschain_V2.2_2_report.pdf | DecreasePositionCollateralUtils | unmatched — not counted | — | Listed in finding M-12 location | no |
| 2025-07-29_GMX_Crosschain_V2.2_2_report.pdf | StrictBank | unmatched — not counted | — | Listed in finding L-06 location | no |
| 2025-07-29_GMX_Crosschain_V2.2_2_report.pdf | MultichainUtils | unmatched — not counted | — | Listed in finding L-07 location | no |
| 2025-07-29_GMX_Crosschain_V2.2_2_report.pdf | MultichainOrderRouter | unmatched — not counted | — | Listed in finding L-08 location | no |
| 2025-07-29_GMX_Crosschain_V2.2_2_report.pdf | MultichainTransferRouter | unmatched — not counted | — | Listed in findings L-04, L-25 locations | no |
| 2025-07-29_GMX_Crosschain_V2.2_2_report.pdf | BaseGelatoRelayRouter | unmatched — not counted | — | Listed in findings L-11, L-23 locations | no |
| 2025-07-29_GMX_Crosschain_V2.2_2_report.pdf | SubaccountRouter | unmatched — not counted | — | Listed in findings L-13, L-19 locations | no |
| 2025-07-29_GMX_Crosschain_V2.2_2_report.pdf | ReferralUtils | unmatched — not counted | — | Listed in findings L-14, L-20 locations | no |
| 2025-07-29_GMX_Crosschain_V2.2_2_report.pdf | LiquidationUtils | unmatched — not counted | — | Listed in finding L-15 location | no |
| 2025-07-29_GMX_Crosschain_V2.2_2_report.pdf | TimelockConfig | own contract | TimelockConfig (selected) `0x37e1ae...e39ca4` — deployed 2025-11-17 10:27:27+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2025-07-29_GMX_Crosschain_V2.2_2_report.pdf | MultichainClaimsRouter | unmatched — not counted | — | Listed in finding L-23 location | no |
| 2025-07-29_GMX_Crosschain_V2.2_3_report.pdf | LayerZeroProvider | unmatched — not counted | — | listed in findings C-01, M-02, M-04, L-15, L-25, L-27, L-34, L-39, L-43 | no |
| 2025-07-29_GMX_Crosschain_V2.2_3_report.pdf | MultichainGlvRouter | unmatched — not counted | — | listed in finding C-02 | no |
| 2025-07-29_GMX_Crosschain_V2.2_3_report.pdf | ExecuteDepositUtils | unmatched — not counted | — | listed in findings C-03, L-23, L-48 | no |
| 2025-07-29_GMX_Crosschain_V2.2_3_report.pdf | ExecuteGlvDepositUtils | unmatched — not counted | — | listed in finding H-01 | no |
| 2025-07-29_GMX_Crosschain_V2.2_3_report.pdf | MarketPositionImpactPoolUtils | unmatched — not counted | — | listed in findings H-02, M-08, L-13, L-32 | no |
| 2025-07-29_GMX_Crosschain_V2.2_3_report.pdf | MarketUtils | unmatched — not counted | — | listed in findings H-03, H-05, H-06, M-07, M-09, L-08, L-11 | no |
| 2025-07-29_GMX_Crosschain_V2.2_3_report.pdf | DecreasePositionCollateralUtils | unmatched — not counted | — | listed in finding H-04 | no |
| 2025-07-29_GMX_Crosschain_V2.2_3_report.pdf | MultichainGmRouter | unmatched — not counted | — | listed in finding M-01 | no |
| 2025-07-29_GMX_Crosschain_V2.2_3_report.pdf | MultichainSender | unmatched — not counted | — | listed in findings M-03, L-05 | no |
| 2025-07-29_GMX_Crosschain_V2.2_3_report.pdf | PositionUtils | unmatched — not counted | — | listed in findings M-05, L-22, L-35 | no |
| 2025-07-29_GMX_Crosschain_V2.2_3_report.pdf | Oracle | unmatched — not counted | — | listed in finding M-06 | no |
| 2025-07-29_GMX_Crosschain_V2.2_3_report.pdf | DepositHandler | own contract | 0x839b6e… (selected) `0x839b6e...c5c8b4` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2025-07-29_GMX_Crosschain_V2.2_3_report.pdf | MarketPoolValueInfo | unmatched — not counted | — | listed in findings L-02, L-28 | no |
| 2025-07-29_GMX_Crosschain_V2.2_3_report.pdf | MultichainTransferRouter | unmatched — not counted | — | listed in findings L-03, L-42, L-46, L-47 | no |
| 2025-07-29_GMX_Crosschain_V2.2_3_report.pdf | SubaccountRouter | unmatched — not counted | — | listed in finding L-04 | no |
| 2025-07-29_GMX_Crosschain_V2.2_3_report.pdf | LiquidationUtils | unmatched — not counted | — | listed in finding L-07 | no |
| 2025-07-29_GMX_Crosschain_V2.2_3_report.pdf | SwapUtils | unmatched — not counted | — | listed in finding M-11 | no |
| 2025-07-29_GMX_Crosschain_V2.2_3_report.pdf | ConfigTimelockController | own contract | 0x3d6ba4… (selected) `0x3d6ba4...25c294` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2025-07-29_GMX_Crosschain_V2.2_3_report.pdf | ShiftUtils | unmatched — not counted | — | listed in findings L-17, L-18 | no |
| 2025-07-29_GMX_Crosschain_V2.2_3_report.pdf | SwapOrderExecutors | unmatched — not counted | — | listed in finding L-19 | no |
| 2025-07-29_GMX_Crosschain_V2.2_3_report.pdf | IncreaseOrderExecutor | unmatched — not counted | — | listed in findings L-19, L-20 | no |
| 2025-07-29_GMX_Crosschain_V2.2_3_report.pdf | DecreaseOrderExecutor | unmatched — not counted | — | listed in findings L-19, L-20 | no |
| 2025-07-29_GMX_Crosschain_V2.2_3_report.pdf | EdgeDataStreamVerifier | unmatched — not counted | — | listed in finding L-21 | no |
| 2025-07-29_GMX_Crosschain_V2.2_3_report.pdf | BaseGelatoRelayRouter | unmatched — not counted | — | listed in finding L-45 | no |
| 2025-07-29_GMX_Crosschain_V2.2_3_report.pdf | ConfigUtils | unmatched — not counted | — | listed in finding L-40 | no |
| 2025-07-29_GMX_Crosschain_V2.2_3_report.pdf | MultichainUtils | unmatched — not counted | — | listed in finding L-10 | no |
| 2025-07-29_GMX_Crosschain_V2.2_3_report.pdf | TimelockController | unmatched — not counted | — | listed in finding L-31 | no |
| 2025-07-29_GMX_Crosschain_V2.2_4_report.pdf | MultichainTransferRouter | unmatched — not counted | — | mentioned in findings H-01, L-01, L-07, L-14 | no |
| 2025-07-29_GMX_Crosschain_V2.2_4_report.pdf | ControllerUtils | unmatched — not counted | — | mentioned in finding M-01 | no |
| 2025-07-29_GMX_Crosschain_V2.2_4_report.pdf | OrderUtils | unmatched — not counted | — | mentioned in findings M-02, L-02 | no |
| 2025-07-29_GMX_Crosschain_V2.2_4_report.pdf | MarketUtils | unmatched — not counted | — | mentioned in findings H-02, L-05, L-16 | no |
| 2025-07-29_GMX_Crosschain_V2.2_4_report.pdf | LayerZeroProvider | unmatched — not counted | — | mentioned in findings H-03, M-04, M-06, M-07, M-13, M-14, L-13, L-17 | no |
| 2025-07-29_GMX_Crosschain_V2.2_4_report.pdf | ConfigUtils | unmatched — not counted | — | mentioned in finding M-05 | no |
| 2025-07-29_GMX_Crosschain_V2.2_4_report.pdf | TimelockConfig | own contract | TimelockConfig (selected) `0x37e1ae...e39ca4` — deployed 2025-11-17 10:27:27+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2025-07-29_GMX_Crosschain_V2.2_4_report.pdf | DecreasePositionCollateralUtils | unmatched — not counted | — | mentioned in finding M-09 | no |
| 2025-07-29_GMX_Crosschain_V2.2_4_report.pdf | PositionImpactPoolUtils | unmatched — not counted | — | mentioned in findings M-11, L-10, L-11 | no |
| 2025-07-29_GMX_Crosschain_V2.2_4_report.pdf | ExecuteGlvDepositUtils | unmatched — not counted | — | mentioned in finding L-06 | no |
| 2025-07-29_GMX_Crosschain_V2.2_4_report.pdf | BaseGelatoRelayRouter | unmatched — not counted | — | mentioned in findings L-08, L-09, L-12 | no |
| 2025-07-29_GMX_Crosschain_V2.2_4_report.pdf | BridgeOutFromControllerUtils | unmatched — not counted | — | mentioned in finding L-14 | no |
| 2025-07-29_GMX_Crosschain_V2.2_4_report.pdf | ExecuteWithdrawalUtils | unmatched — not counted | — | mentioned in finding L-15 | no |
| 2025-07-29_GMX_Crosschain_V2.2_4_report.pdf | Errors | unmatched — not counted | — | mentioned in finding L-18 | no |
| 2025-07-29_GMX_Crosschain_V2.2_4_report.pdf | IMultichainProvider | unmatched — not counted | — | mentioned in finding L-04 | no |
| 2025-07-29_GMX_Crosschain_V2.2_4_report.pdf | PositionUtils | unmatched — not counted | — | mentioned in finding M-15 | no |
| 2025-07-29_GMX_Crosschain_V2.2_5_report.pdf | ControllerUtils | unmatched — not counted | — | listed in finding H-01 location | no |
| 2025-07-29_GMX_Crosschain_V2.2_5_report.pdf | OrderUtils | unmatched — not counted | — | listed in finding M-02 location | no |
| 2025-07-29_GMX_Crosschain_V2.2_5_report.pdf | LayerZeroProvider | unmatched — not counted | — | listed in finding M-03 location | no |
| 2025-07-29_GMX_Crosschain_V2.2_5_report.pdf | BaseGelatoRelayRouter | unmatched — not counted | — | listed in findings M-04 and L-12 locations | no |
| 2025-07-29_GMX_Crosschain_V2.2_5_report.pdf | PositionImpactPoolUtils | unmatched — not counted | — | listed in finding L-01 location | no |
| 2025-07-29_GMX_Crosschain_V2.2_5_report.pdf | Config | own contract | 0x5a1344… (selected) `0x5a1344...d7ed6d` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2025-07-29_GMX_Crosschain_V2.2_5_report.pdf | RelayUtils | unmatched — not counted | — | listed in findings L-05 and L-08 locations | no |
| 2025-07-29_GMX_Crosschain_V2.2_5_report.pdf | GlvWithdrawalUtils | unmatched — not counted | — | listed in findings L-06, L-07, L-14 locations | no |
| 2025-07-29_GMX_Crosschain_V2.2_5_report.pdf | ExecuteWithdrawalUtils | unmatched — not counted | — | listed in findings L-06 and L-07 locations | no |
| 2025-07-29_GMX_Crosschain_V2.2_5_report.pdf | MultichainGlvRouter | unmatched — not counted | — | listed in finding L-13 location | no |
| 2025-07-29_GMX_Crosschain_V2.2_6_report.pdf | EdgeDataStreamProvider | unmatched — not counted | — | C-01 finding location | no |
| 2025-07-29_GMX_Crosschain_V2.2_6_report.pdf | DecreasePositionCollateralUtils | unmatched — not counted | — | H-01 finding location | no |
| 2025-07-29_GMX_Crosschain_V2.2_6_report.pdf | SubaccountRouterUtils | unmatched — not counted | — | M-02 finding location | no |
| 2025-07-29_GMX_Crosschain_V2.2_6_report.pdf | DecreaseOrderUtils | unmatched — not counted | — | L-02 finding location | no |
| 2025-07-29_GMX_Crosschain_V2.2_6_report.pdf | BaseGelatoRelayRouter | unmatched — not counted | — | L-04 finding location | no |
| 2025-07-29_GMX_Crosschain_V2.2_6_report.pdf | PositionUtils | unmatched — not counted | — | L-07 finding location | no |
| 2025-07-29_GMX_Crosschain_V2.2_6_report.pdf | LayerZeroProvider | unmatched — not counted | — | L-11 and L-14 finding locations | no |
| 2025-07-29_GMX_Crosschain_V2.2_6_report.pdf | Cast | unmatched — not counted | — | L-16 finding location | no |
| 2025-07-29_GMX_Crosschain_V2.2_6_report.pdf | Config | own contract | 0x5a1344… (selected) `0x5a1344...d7ed6d` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2025-07-29_GMX_Crosschain_V2.2_7_report.pdf | BridgeOutFromControllerUtils | unmatched — not counted | — | H-01 finding location | no |
| 2025-07-29_GMX_Crosschain_V2.2_7_report.pdf | EdgeDataStreamProvider | unmatched — not counted | — | L-01 finding location | no |
| 2025-07-29_GMX_Crosschain_V2.2_7_report.pdf | ClaimHandler | unmatched — not counted | — | L-03, L-04, L-05, L-06, L-07 finding locations | no |
| 2025-07-29_GMX_Crosschain_V2.2_7_report.pdf | LayerZeroProvider | unmatched — not counted | — | L-08 finding location | no |
| 2025-09-24_GMX_JIT_Review_report.pdf | JitOrderHandler | unmatched — not counted | — | Listed in findings locations (e.g., H-01, H-02, M-02, etc.) | no |
| 2025-09-24_GMX_JIT_Review_report.pdf | ExecuteGlvDepositUtils | unmatched — not counted | — | Listed in findings locations (M-01, L-08, L-11) | no |
| 2025-09-24_GMX_JIT_Review_report.pdf | BaseHandler | unmatched — not counted | — | Listed in findings location (M-08) | no |
| 2025-09-24_GMX_JIT_Review_report.pdf | ShiftHandler | own contract | 0xad712e… (selected) `0xad712e...96bc35` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2025-09-24_GMX_JIT_Review_report.pdf | GlvUtils | unmatched — not counted | — | Listed in findings locations (M-11, L-03) | no |
| 2025-09-24_GMX_JIT_Review_report.pdf | ExchangeRouter | unmatched — not counted | — | Listed in findings location (L-01) | no |
| 2025-09-24_GMX_JIT_Review_report.pdf | AdlHandler | own contract | 0xec0e4a… (selected) `0xec0e4a...28054c` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2025-09-24_GMX_JIT_Review_report.pdf | OrderHandler | own contract | 0xbad04d… (selected) `0xbad04d...c72216` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2025-09-24_GMX_JIT_Review_report.pdf | GlvShiftUtils | unmatched — not counted | — | Listed in findings locations (L-05, L-06, L-20, M-01 in Remediation) | no |
| 2025-09-24_GMX_JIT_Review_report.pdf | Oracle | unmatched — not counted | — | Listed in findings location (L-10) | no |
| 2025-09-24_GMX_JIT_Review_report.pdf | GlvShiftHandler | unmatched — not counted | — | Listed in findings location (L-14) | no |
| 2025-09-24_GMX_JIT_Review_report.pdf | LiquidationHandler | own contract | 0x1bc32e… (selected) `0x1bc32e...a37f10` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2025-09-24_GMX_JIT_Review_report.pdf | OrderUtils | unmatched — not counted | — | Listed in findings location (L-17) | no |
| 2025-09-24_GMX_OFT_Review_report.pdf | GMX_Adapter | unmatched — not counted | — | listed in scope table | no |
| 2025-09-24_GMX_OFT_Review_report.pdf | GMX_MintBurnAdapter | unmatched — not counted | — | listed in scope table | no |
| 2025-09-24_GMX_OFT_Review_report.pdf | GMX_LockboxAdapter | unmatched — not counted | — | listed in scope table | no |
| 2025-09-24_GMX_OFT_Review_report.pdf | OverridableInboundRateLimiter | unmatched — not counted | — | listed in scope table | no |
| 2025-09-24_GMX_OFT_Review_report.pdf | IOverridableInboundRateLimiter | unmatched — not counted | — | listed in scope table | no |
| 2025-09-24_GMX_OFT_Review_report.pdf | IGMXMinterBurnable | unmatched — not counted | — | listed in scope table | no |
| 2025-09-24_GMX_OFT_Review_report.pdf | RateLimiter | unmatched — not counted | — | mentioned in finding I-02 | no |
| 2025-11-04_GMX_Fee_Automations_report.pdf | ClaimHandler | unmatched — not counted | — | listed in scope | no |
| 2025-11-04_GMX_Fee_Automations_report.pdf | ClaimUtils | unmatched — not counted | — | listed in scope | no |
| 2025-11-04_GMX_Fee_Automations_report.pdf | Config | own contract | 0x5a1344… (selected) `0x5a1344...d7ed6d` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2025-11-04_GMX_Fee_Automations_report.pdf | TimelockConfig | own contract | TimelockConfig (selected) `0x37e1ae...e39ca4` — deployed 2025-11-17 10:27:27+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2025-11-04_GMX_Fee_Automations_report.pdf | ContributorHandler | unmatched — not counted | — | listed in scope | no |
| 2025-11-04_GMX_Fee_Automations_report.pdf | Keys | unmatched — not counted | — | listed in scope | no |
| 2025-11-04_GMX_Fee_Automations_report.pdf | Keys2 | unmatched — not counted | — | listed in scope | no |
| 2025-11-04_GMX_Fee_Automations_report.pdf | Errors | unmatched — not counted | — | listed in scope | no |
| 2025-11-04_GMX_Fee_Automations_report.pdf | EventUtils | unmatched — not counted | — | listed in scope | no |
| 2025-11-04_GMX_Fee_Automations_report.pdf | FeeDistributor | unmatched — not counted | — | listed in scope | no |
| 2025-11-04_GMX_Fee_Automations_report.pdf | FeeDistributorUtils | unmatched — not counted | — | listed in scope | no |
| 2025-11-04_GMX_Fee_Automations_report.pdf | FeeDistributorVault | unmatched — not counted | — | listed in scope | no |
| 2025-11-04_GMX_Fee_Automations_report.pdf | FeeHandler | unmatched — not counted | — | listed in scope | no |
| 2025-11-04_GMX_Fee_Automations_report.pdf | MultichainReader | unmatched — not counted | — | listed in scope | no |
| 2025-11-04_GMX_Fee_Automations_report.pdf | MultichainReaderUtils | unmatched — not counted | — | listed in scope | no |
| 2025-11-04_GMX_Fee_Automations_report.pdf | Role | unmatched — not counted | — | listed in scope | no |
| 2025-11-04_GMX_Fee_Automations_report.pdf | RoleModule | unmatched — not counted | — | listed in scope | no |
| Sherlock_GMX_Update_Audit_Report.pdf | MarketUtils | unmatched — not counted | — | listed in scope and findings | no |
| Sherlock_GMX_Update_Audit_Report.pdf | DecreasePositionCollateralUtils | unmatched — not counted | — | listed in findings | no |
| Sherlock_GMX_Update_Audit_Report.pdf | SwapUtils | unmatched — not counted | — | listed in findings | no |
| Sherlock_GMX_Update_Audit_Report.pdf | BaseOrderUtils | unmatched — not counted | — | listed in findings | no |
| Sherlock_GMX_Update_Audit_Report.pdf | SwapOrderUtils | unmatched — not counted | — | listed in findings | no |
| Sherlock_GMX_Update_Audit_Report.pdf | DecreasePositionUtils | unmatched — not counted | — | listed in findings | no |
| Sherlock_GMX_Update_Audit_Report.pdf | DecreaseOrderUtils | unmatched — not counted | — | listed in findings | no |
| Sherlock_GMX_Update_Audit_Report.pdf | PositionUtils | unmatched — not counted | — | listed in findings | no |
| Sherlock_GMX_Update_Audit_Report.pdf | GasUtils | unmatched — not counted | — | listed in findings | no |
| Sherlock_GMX_Update_Audit_Report.pdf | Timelock | unmatched — not counted | — | listed in findings | no |
| Sherlock_GMX_Update_Audit_Report.pdf | DepositHandler | own contract | 0x839b6e… (selected) `0x839b6e...c5c8b4` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Sherlock_GMX_Update_Audit_Report.pdf | ExecuteDepositUtils | unmatched — not counted | — | listed in findings | no |
| Sherlock_GMX_Update_Audit_Report.pdf | PositionPricingUtils | unmatched — not counted | — | mentioned in findings | no |
| Sherlock_GMX_Update_Audit_Report.pdf | OracleUtils | unmatched — not counted | — | mentioned in findings | no |
| Sherlock_GMX_Update_Audit_Report.pdf | Calc | unmatched — not counted | — | mentioned in findings | no |
| Sherlock_GMX_Update_Audit_Report.pdf | Precision | unmatched — not counted | — | mentioned in findings | no |
| Sherlock_GMX_Update_Audit_Report.pdf | ErrorUtils | unmatched — not counted | — | mentioned in findings | no |
| Sherlock_GMX_Update_Audit_Report.pdf | Keys | unmatched — not counted | — | mentioned in findings | no |
| Sherlock_GMX_Update_Audit_Report.pdf | Order | unmatched — not counted | — | mentioned in findings | no |
| Sherlock_GMX_Update_Audit_Report.pdf | Market | unmatched — not counted | — | mentioned in findings | no |
| Sherlock_GMX_Update_Audit_Report.pdf | DataStore | own contract | DataStore (selected) `0x2f0b22...2fe3f6` — deployed 2023-07-04 13:13:48+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Sherlock_GMX_Update_Audit_Report.pdf | EventEmitter | own contract | EventEmitter (selected) `0xc8ee91...3822fb` — deployed 2023-07-04 11:48:15+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Sherlock_GMX_Update_Audit_Report.pdf | StrictBank | unmatched — not counted | — | mentioned in findings | no |
| Sherlock_GMX_Update_Audit_Report.pdf | Oracle | unmatched — not counted | — | mentioned in findings | no |
| Sherlock_GMX_Update_Audit_Report.pdf | OracleStore | unmatched — not counted | — | mentioned in findings | no |
| Sherlock_GMX_Update_Audit_Report.pdf | RoleStore | own contract | RoleStore (selected) `0x3c3d99...5e6e72` — deployed 2023-07-04 11:44:17+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Sherlock_GMX_Update_Audit_Report.pdf | Router | unmatched — not counted | — | mentioned in findings | no |
| Sherlock_GMX_Update_Audit_Report.pdf | ExchangeRouter | unmatched — not counted | — | mentioned in findings | no |
| Sherlock_GMX_Update_Audit_Report.pdf | DepositVault | own contract | DepositVault (selected) `0x90c670...722dff` — deployed 2023-07-04 13:25:59+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Sherlock_GMX_Update_Audit_Report.pdf | WithdrawalVault | own contract | WithdrawalVault (selected) `0x0628d4...701c55` — deployed 2023-07-04 12:20:38+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Sherlock_GMX_Update_Audit_Report.pdf | OrderVault | own contract | OrderVault (selected) `0x31ef83...bc40d5` — deployed 2023-07-04 11:53:55+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Sherlock_GMX_Update_Audit_Report.pdf | SwapHandler | unmatched — not counted | — | mentioned in findings | no |
| Sherlock_GMX_Update_Audit_Report.pdf | OrderHandler | own contract | 0xbad04d… (selected) `0xbad04d...c72216` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Sherlock_GMX_Update_Audit_Report.pdf | LiquidationHandler | own contract | 0x1bc32e… (selected) `0x1bc32e...a37f10` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Sherlock_GMX_Update_Audit_Report.pdf | ReferralStorage | unmatched — not counted | — | mentioned in findings | no |
| Sherlock_GMX_Update_Audit_Report.pdf | MarketFactory | own contract | MarketFactory (selected) `0xc57c15...9c1241` — deployed 2023-07-04 13:25:27+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Sherlock_GMX_Update_Audit_Report.pdf | DepositUtils | unmatched — not counted | — | mentioned in findings | no |
| Sherlock_GMX_Update_Audit_Report.pdf | WithdrawalUtils | unmatched — not counted | — | mentioned in findings | no |
| Sherlock_GMX_Update_Audit_Report.pdf | IncreaseOrderUtils | unmatched — not counted | — | mentioned in findings | no |
| Sherlock_GMX_Update_Audit_Report.pdf | IncreasePositionUtils | unmatched — not counted | — | mentioned in findings | no |
| Sherlock_GMX_Update_Audit_Report.pdf | WithdrawUtils | unmatched — not counted | — | mentioned in findings | no |
| Sherlock_GMX_Update_Audit_Report.pdf | Position | unmatched — not counted | — | mentioned in findings | no |
| 2026-05-26_GMX_Risk_Oracle_Review_Report.pdf | RiskOracleConfig | unmatched — not counted | — | Listed in scope and findings sections as the primary contract under audit. | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 178 |
| upstream | 7 |
| standard_library | 1 |
| needs_review | 33 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 8
- Inherited remapped matches: 0
- Address-book scope dispositions: 131 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 3 ambiguous, 853 unmatched
- Matched-own operational status: 131 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=32, low=2, medium=6
- Match method counts: unique_name=308

Zero-match audit list:

- [17356] 2023-10-25_GMX_Migrator.pdf
- [17357] 2023-11-26_GMX_Subaccount.pdf
- [17358] 2023-12-17_GMX_Governance_Updates.pdf
- [17367] 2025-04-11_GMX_Gasless_Sponsored_Calls_1.pdf
- [17368] 2025-04-11_GMX_Gasless_Sponsored_Calls_2.pdf
- [17375] 2025-07-29_GMX_Crosschain_V2.2_7_report.pdf
- [17377] 2025-09-24_GMX_OFT_Review_report.pdf
- [17417] 2026-05-26_GMX_Risk_Oracle_Review_Report.pdf

Fork inheritance lineage and inherited audits are included when available.
