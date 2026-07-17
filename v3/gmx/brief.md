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

**DataStore** (`0x2f0b22339414aded7d5f06f9d604c7ff5b2fe3f6`, chain 43114)
Origin: mcdex (`0x46ffa915d87bf915c2d01ac7d4c1c5338fa5acec`)
Containment: 100.0% - 57 functions inherited
Centroid audit status: pending_validation

Additions (unaudited): none

Removals (removed from original): none

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0x1bc32eecaa8f504d2225096649a0347153a37f10`, chain 42161)
- UnnamedContract (`0x3d6ba4a91ffde7c519379f8dca5fe58b7125c294`, chain 42161)
- UnnamedContract (`0x4baa24f93a657f0c1b4a0ffc72b91011e35ca46b`, chain 42161)
- UnnamedContract (`0x5a1344252f0cdfdb765dd5ab97c98734f1d7ed6d`, chain 42161)
- UnnamedContract (`0x5bb6dcb09010069228b2aa766fae513ef7923472`, chain 42161)
- UnnamedContract (`0x839b6e19e54a5862da61974a01675a5f6cc5c8b4`, chain 42161)
- UnnamedContract (`0x955aa50d2ecceffa59084be5e875eb676ffafa98`, chain 42161)
- UnnamedContract (`0xad712e1667bc8aaa6c4ea5f47dcd487ddd96bc35`, chain 42161)
- UnnamedContract (`0xbad04ddcc5cc284a86493afa75d2beb970c72216`, chain 42161)
- UnnamedContract (`0xc92741f0a0d20a95529873cbb3480b1f8c228d9f`, chain 42161)
- UnnamedContract (`0xec0e4a27a9fbfc64e4915c254b961260df28054c`, chain 42161)
- DepositVault (`0x90c670825d0c62ede1c5ee9571d6d9a17a722dff`, chain 43114)
- EventEmitter (`0xc8ee91a54287db53897056e12d9819156d3822fb`, chain 42161)
- GlvVault (`0x393053b58f9678c9c28c2ce941ff6cac49c3f8f9`, chain 42161)
- MarketFactory (`0xc57c155faccd93f62546f329d1483e0e5b9c1241`, chain 43114)
- Multicall3 (`0x50474cae810b316c294111807f94f9f48527e7f8`, chain 43114)
- OrderVault (`0x31ef83a530fde1b38ee9a18093a333d8bbbc40d5`, chain 42161)
- RoleStore (`0x3c3d99fd298f679dbc2cecd132b4ec4d0f5e6e72`, chain 42161)
- ShiftVault (`0x7fc46ccb386e9bbbfb49a2639002734c3ec52b39`, chain 43114)
- TimelockConfig (`0x37e1aeb6118b0106810d2ef7662875c414e39ca4`, chain 43114)
- WithdrawalVault (`0x0628d46b5d145f183adb6ef1f2c97ed1c4701c55`, chain 42161)

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
| DataStore | unknown | project_anchor | own_core | 0 | avalanche | n/a | `0x2f0b22339414aded7d5f06f9d604c7ff5b2fe3f6` | ✅ Audited |
| DepositVault | unknown | project_anchor | own_core | 0 | avalanche | n/a | `0x90c670825d0c62ede1c5ee9571d6d9a17a722dff` | ✅ Audited |
| EventEmitter | unknown | project_anchor | own_core | 0 | arbitrum | n/a | `0xc8ee91a54287db53897056e12d9819156d3822fb` | ✅ Audited |
| GlvVault | unknown | project_anchor | own_core | 0 | arbitrum | n/a | `0x393053b58f9678c9c28c2ce941ff6cac49c3f8f9` | ✅ Audited |
| MarketFactory | unknown | project_anchor | own_core | 0 | avalanche | n/a | `0xc57c155faccd93f62546f329d1483e0e5b9c1241` | ✅ Audited |
| OrderVault | unknown | project_anchor | own_core | 0 | arbitrum | n/a | `0x31ef83a530fde1b38ee9a18093a333d8bbbc40d5` | ✅ Audited |
| RoleStore | unknown | project_anchor | own_core | 0 | arbitrum | n/a | `0x3c3d99fd298f679dbc2cecd132b4ec4d0f5e6e72` | ✅ Audited |
| ShiftVault | unknown | project_anchor | own_core | 0 | avalanche | n/a | `0x7fc46ccb386e9bbbfb49a2639002734c3ec52b39` | ✅ Audited |
| TimelockConfig | unknown | project_anchor | own_core | 0 | avalanche | n/a | `0x37e1aeb6118b0106810d2ef7662875c414e39ca4` | ✅ Audited |
| WithdrawalVault | unknown | project_anchor | own_core | 0 | arbitrum | n/a | `0x0628d46b5d145f183adb6ef1f2c97ed1c4701c55` | ✅ Audited |

### ⚠️ Verified + Unaudited (176)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| AdlHandler | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x0f012e736e63eab4e326595055a33279633daa93` | ⚠️ Unaudited |
| AdlUtils | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x0dbb1b891636dc90a2bca29d1cfb80dfdd73193f` | ⚠️ Unaudited |
| AutoCancelSyncer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x294a967d1750ba6b4e8a765b363bcf693d0c5b63` | ⚠️ Unaudited |
| BaseOrderUtils | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x00f8739ea881bbc93535877e45f67a468ed9ffec` | ⚠️ Unaudited |
| BatchSender | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x1070f775e8eb466154bba8fa0076c4adc7fe17e8` | ⚠️ Unaudited |
| BonusDistributor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x03f349b3cc4f200d7fae4d8ddaf1507f5a40d356` | ⚠️ Unaudited |
| Bridge | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x931dda8e3d4e4b7832e9005812c979008b576441` | ⚠️ Unaudited |
| BridgeOutFromControllerUtils | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x40336d25f5c0218efab8c3d43db1b45c81fe419e` | ⚠️ Unaudited |
| CallbackUtils | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x010fdbc97e0f33209fe6fa5ca271619af202c3ae` | ⚠️ Unaudited |
| ChainlinkDataStreamProvider | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xb9089f9b862db6b591cc54a2d12c1fbacf0bf834` | ⚠️ Unaudited |
| ChainlinkPriceFeedProvider | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x05d97cee050bfb81fb3ead4a9368584f8e72c88e` | ⚠️ Unaudited |
| ChainReader | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x152feadb10ded82f5405b3b26e0a27fc2944d5de` | ⚠️ Unaudited |
| ClaimHandler | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x0e3e890994ce78e215019463abf9326b951a1392` | ⚠️ Unaudited |
| ClaimUtils | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x0bbf4665243ab8b5e8e73d6f9ce02ba4006af761` | ⚠️ Unaudited |
| ClaimVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x093a1a45b1c67f88f61087b2632e0599f4a7bfd9` | ⚠️ Unaudited |
| Config | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x0913ca02b93a2aa381a420aeac38490ee6284a32` | ⚠️ Unaudited |
| ConfigSyncer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x266de1daf55e0630c2e288f0bff7b4610239f2ab` | ⚠️ Unaudited |
| ConfigTimelockController | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x093a1a45b1c67f88f61087b2632e0599f4a7bfd9` | ⚠️ Unaudited |
| ConfigUtils | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x1158e639da58fd104908343ef3f42a79d54d2918` | ⚠️ Unaudited |
| ContributorHandler | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | `0x4729d9f61c0159f5e02d2c2e5937b3225e55442c` | ⚠️ Unaudited |
| DecreaseOrderExecutor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x0560bba77567d62584814db9cf1dbe38dd5aaf7d` | ⚠️ Unaudited |
| DecreaseOrderUtils | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x02f4d5f2e984b1c2ec23859cb5d98aadc51b9b3d` | ⚠️ Unaudited |
| DecreasePositionCollateralUtils | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x02176d8560f0596f67c2d10133f07b635602a168` | ⚠️ Unaudited |
| DecreasePositionSwapUtils | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x026c0ca0cc15256a1f184325de40fa14af780214` | ⚠️ Unaudited |
| DecreasePositionUtils | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x04484fd714edf126f4a938e52057005aef450b60` | ⚠️ Unaudited |
| DepositEventUtils | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x0e9b519759cd400942f119db747dc8e018e6d139` | ⚠️ Unaudited |
| DepositHandler | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x041388a07ea8ba588d9c8ebfc7dae054da2f4727` | ⚠️ Unaudited |
| DepositStoreUtils | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x035a9a047d20a486e14a613b04d5a95d7a617c5d` | ⚠️ Unaudited |
| DepositUtils | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x37440f0e7a268fa875fa05ef446c1fa11199defd` | ⚠️ Unaudited |
| EdgeDataStreamProvider | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x176fd214bc59005ffd722ae3f8fa12a31391f6ae` | ⚠️ Unaudited |
| EdgeDataStreamVerifier | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x006cb0ebd0a41ed496d6384c02e667c14ab948e9` | ⚠️ Unaudited |
| EsGMX | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x56f9799a53fa850d6f7c71f7e9015eb7768758a0` | ⚠️ Unaudited |
| EsGmxBatchSender | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xc3828fa579996090dc7767e051341338e60207ef` | ⚠️ Unaudited |
| ExchangeRouter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x11e590f6092d557bf71baded50d81521674f8275` | ⚠️ Unaudited |
| ExecuteDepositUtils | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x12771e8805304a3d09a63b84fd7f2ec42cfd6380` | ⚠️ Unaudited |
| ExecuteGlvDepositUtils | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x28f1f4aa95f49fab62464536a269437b13d48976` | ⚠️ Unaudited |
| ExecuteOrderUtils | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x0b030a7463e9bbc8dd6dfbe20b13f86ef4e59b13` | ⚠️ Unaudited |
| ExecuteWithdrawalUtils | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x1364dec7e321059a1bd803e2b634b7a8efd5ae75` | ⚠️ Unaudited |
| ExternalHandler | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x389cef541397e872dc04421f166b5bc2e0b374a5` | ⚠️ Unaudited |
| FastPriceEvents | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x02b7023d43bc52bff8a0c54a9f2ecec053523bf6` | ⚠️ Unaudited |
| FastPriceFeed | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x068f2880c5dc0cb5c1ef913a517f3ad4122167c7` | ⚠️ Unaudited |
| FeeDistributor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x5a44a3b026d50ec039582fdb3afdd88e2092e211` | ⚠️ Unaudited |
| FeeDistributorUtils | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x043f53eb916179682bf55fc61315014590e3070f` | ⚠️ Unaudited |
| FeeDistributorVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x0560bba77567d62584814db9cf1dbe38dd5aaf7d` | ⚠️ Unaudited |
| FeeHandler | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x1a3a103f9f536a0456c9b205152a3ac2b3c54490` | ⚠️ Unaudited |
| FeeUtils | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x00d29d62f04b430de8ee4f745a07d703ec754441` | ⚠️ Unaudited |
| GasTest | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x25da50811fd2809e15609b73ce4067dfafb9a3df` | ⚠️ Unaudited |
| GasUtils | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x043f53eb916179682bf55fc61315014590e3070f` | ⚠️ Unaudited |
| GelatoRelayRouter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x006cb0ebd0a41ed496d6384c02e667c14ab948e9` | ⚠️ Unaudited |
| GLP | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x01234181085565ed162a948b6a5e88758cd7c7b8` | ⚠️ Unaudited |
| GlpBalance | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x13e0bbe893b33b64d4f3f96725dd70531fa4ebce` | ⚠️ Unaudited |
| GlpManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x321f653eed006ad1c29d174e17d96351bde22649` | ⚠️ Unaudited |
| GlvDepositCalc | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x03b577d9a38303e2dd4498cdb71cba760cdb84dc` | ⚠️ Unaudited |
| GlvDepositEventUtils | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x04e3978be0a0f4da931972eac4473112efec7f79` | ⚠️ Unaudited |
| GlvDepositHandler | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x0ec1f54cd316a9db85fecafdd2ccde8dd36458d6` | ⚠️ Unaudited |
| GlvDepositStoreUtils | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x0dc24af5bbbec90c1defd8f5f72e47c7d298c0ae` | ⚠️ Unaudited |
| GlvDepositUtils | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x157e6bd60d71ad6202448bf85699fe2695f80b6f` | ⚠️ Unaudited |
| GlvFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x5d6b84086da6d4b0b6c0df7e02f8a6a039226530` | ⚠️ Unaudited |
| GlvHandler | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x26dddaa629bb35fc1853d051561f2200dd190588` | ⚠️ Unaudited |
| GlvReader | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x12ac77003b3d11b0853d1fd12e5af22a9060ec4b` | ⚠️ Unaudited |
| GlvRouter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x0f012e736e63eab4e326595055a33279633daa93` | ⚠️ Unaudited |
| GlvShiftEventUtils | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x0fe3deb8dcf68bfcbaab62e589777ac526acef4e` | ⚠️ Unaudited |
| GlvShiftHandler | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x13e4ff24bf48bede5ff8e29f4fd947a2271524e3` | ⚠️ Unaudited |
| GlvShiftStoreUtils | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x19a34c31f9af449be8c4abcc269bad49c2944db1` | ⚠️ Unaudited |
| GlvShiftUtils | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x1e390dc57878bae3b32d24c9e8f431cd4d5ee4b8` | ⚠️ Unaudited |
| GlvStoreUtils | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x046fe3fa276ee09fa24c7ab25f343ac5c5ada7e9` | ⚠️ Unaudited |
| GlvUtils | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x19254a4dfbd855e11cc9def57cc7844ff8fa4088` | ⚠️ Unaudited |
| GlvWithdrawalEventUtils | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x00261e5da1f20c93bb5258e384591293da24a4f6` | ⚠️ Unaudited |
| GlvWithdrawalHandler | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x1eea01a3592b8943737977b93ed24be7842d2427` | ⚠️ Unaudited |
| GlvWithdrawalStoreUtils | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x03b033b3afec18b468ea2f5c7c11e20c8932d499` | ⚠️ Unaudited |
| GlvWithdrawalUtils | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x2637fc0db1234f284b978eb080bc68ee26c9130c` | ⚠️ Unaudited |
| GmOracleProvider | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x5d6b84086da6d4b0b6c0df7e02f8a6a039226530` | ⚠️ Unaudited |
| GMX | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x01234181085565ed162a948b6a5e88758cd7c7b8` | ⚠️ Unaudited |
| GmxTimelock | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x0339740d92fb8baf73bab0e9eb9494bc0df1cafd` | ⚠️ Unaudited |
| Governable | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xaf8e969e3e23f1732f614e64630498ec809d8a47` | ⚠️ Unaudited |
| GovTimelockController | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x4bd1cdaab4254fc43ef6424653ca2375b4c94c0e` | ⚠️ Unaudited |
| GovToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x0ff183e29f1924ad10475506d7722169010ceccb` | ⚠️ Unaudited |
| IncreaseOrderExecutor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x1cc0a1c7a61355fa5fc0634d955c2e3fda1a3b5f` | ⚠️ Unaudited |
| IncreaseOrderUtils | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x004e6525b733bc5dbff224f600c27b48f6ccdff5` | ⚠️ Unaudited |
| IncreasePositionUtils | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x026c0ca0cc15256a1f184325de40fa14af780214` | ⚠️ Unaudited |
| JitOrderHandler | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x381f6d3c6b66e3a16a165d26157e1c4da25ce40c` | ⚠️ Unaudited |
| JoePair | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | avalanche | unit-241293 | `0x0c91a070f862666bbcce281346be45766d874d98` | ⚠️ Unaudited |
| LayerZeroProvider | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x0ba5201343f7a18740acc0920aac16aa27b50bdf` | ⚠️ Unaudited |
| LiquidationHandler | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x07d7c9e1df9e92dfee48947739d26e8e7a1aab2c` | ⚠️ Unaudited |
| LiquidationUtils | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x07049c080d841427ae77f11c26796cd0a41e47c8` | ⚠️ Unaudited |
| MarketEventUtils | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x0419073c68a65b286b30fec7f08bfc35e975ed5b` | ⚠️ Unaudited |
| MarketStoreUtils | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x184675717d5ef9f2bb3df7e9fc639f2f9c044327` | ⚠️ Unaudited |
| MarketUtils | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x0666034fd7fef174f8c628a9790d6add6564fb56` | ⚠️ Unaudited |
| MintableBaseToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x09cbe2f4230048270e628ac91f323ae6e5408b8d` | ⚠️ Unaudited |
| MockPriceFeed | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x2e29ae5474588c79c2c1169d7e7bbb5db6a607c0` | ⚠️ Unaudited |
| Multicall3 | unknown | project_anchor | needs_review (excluded) | 0 | avalanche | n/a | `0x50474cae810b316c294111807f94f9f48527e7f8` | ⚠️ Unaudited |
| MultichainClaimsRouter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x277b4c0e8a76fa927c9881967a4475fd6e234e95` | ⚠️ Unaudited |
| MultichainGlvRouter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x2a7244ee5373d2f161ce99f0d144c12860d651af` | ⚠️ Unaudited |
| MultichainGmRouter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x10fa5bd343373101654e896b43ca38fd8f3789f9` | ⚠️ Unaudited |
| MultichainOrderRouter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x2be05d69c59b0f7aae0c6e955a5f9a52aca6a4a8` | ⚠️ Unaudited |
| MultichainReader | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x823b558b4bc0a2c4974a0d8d7885aa1102d15dec` | ⚠️ Unaudited |
| MultichainSubaccountRouter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x14d9392cc51d0bc0803d9eef9f3ec44a72e5d0b3` | ⚠️ Unaudited |
| MultichainTransferRouter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x26641575ad64fbd1b20ada59935c3471a294fb2f` | ⚠️ Unaudited |
| MultichainUtils | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x0fe3deb8dcf68bfcbaab62e589777ac526acef4e` | ⚠️ Unaudited |
| MultichainVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x29d792a8fddf6cecd14185bac499648b791abe57` | ⚠️ Unaudited |
| Oracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x04e605bd30dee1e97c0f1310d950adc8d5214625` | ⚠️ Unaudited |
| OracleModuleTest | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x2e246061be08dc56d33e03dc0cb962c2155722b5` | ⚠️ Unaudited |
| OracleStore | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xa6ac2e08c6d6bbd9b237e0daaecd7577996f4e84` | ⚠️ Unaudited |
| OrderBook | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | arbitrum | unit-241232 | `0x09f77e8a13de9a35a7231028187e9fd5db8a2acb` | ⚠️ Unaudited |
| OrderBookReader | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | arbitrum | unit-241265 | `0xa27c20a7cf0e1c68c0460706bb674f98f362bc21` | ⚠️ Unaudited |
| OrderEventUtils | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x06090f3209dedb831c9e102a841ed273ef6fbfb4` | ⚠️ Unaudited |
| OrderExecutor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x7257ac5d0a0aac04aa7ba2ac0a6eb742e332c3fb` | ⚠️ Unaudited |
| OrderHandler | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x00db21077c63fff542c017cc4cdcc84229bfb373` | ⚠️ Unaudited |
| OrderStoreUtils | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x00d29d62f04b430de8ee4f745a07d703ec754441` | ⚠️ Unaudited |
| OrderUtils | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x09c7a13e0ff43d4f9e3cfd2ed3b2b41198af761f` | ⚠️ Unaudited |
| PositionEventUtils | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x00eb8ca57b5b149577ac466cde8128d8d67efe97` | ⚠️ Unaudited |
| PositionImpactPoolUtils | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x175f46e993a96428e2ad62fcc418129cf582a628` | ⚠️ Unaudited |
| PositionManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x6a02e6381297826cca630fc5e2d53bdbbbaf93b2` | ⚠️ Unaudited |
| PositionPricingUtils | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x05976c2f946865a6390166347f52c781bc753630` | ⚠️ Unaudited |
| PositionRouter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x05cb7c42890e0522264fe5ec6d84e8d7218cb78f` | ⚠️ Unaudited |
| PositionRouterReader | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x2a74c7498d42ecee75032ed41416c5fa39802f74` | ⚠️ Unaudited |
| PositionStoreUtils | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x00db21077c63fff542c017cc4cdcc84229bfb373` | ⚠️ Unaudited |
| PositionUtils | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x035e550d5e97175a4c573e67c5c776cc20539641` | ⚠️ Unaudited |
| PriceFeedTimelock | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x7b1ffddeec3c4797079c7ed91057e399e9d43a8b` | ⚠️ Unaudited |
| Printer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x19aa6eb3a6491f648af591b83de9d5f102e28c9f` | ⚠️ Unaudited |
| ProtocolGovernor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x03e8f708e9c85edceaa6ad7cd06824ceb82a7e68` | ⚠️ Unaudited |
| Reader | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x0537c767cdac0726c76bb89e92904fe28fd02fe1` | ⚠️ Unaudited |
| ReaderDepositUtils | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x1d3dbe2f913dca27e943b2837a4cdad6653b02e2` | ⚠️ Unaudited |
| ReaderPositionUtils | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x04315e233c1c6ffa61080b76e29d5e8a1f7b4a35` | ⚠️ Unaudited |
| ReaderPricingUtils | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x1639063f217e14635674baa129abc80bc21b24aa` | ⚠️ Unaudited |
| ReaderUtils | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x0597fb70ff1b3081c9b27a9effd1407df1b4035f` | ⚠️ Unaudited |
| ReaderWithdrawalUtils | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x096a71dc140f1746ac5515ecb4ddafc7ebb35142` | ⚠️ Unaudited |
| ReferralEventUtils | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x129174043b134ad27eae552d6bea08f23f771205` | ⚠️ Unaudited |
| ReferralReader | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x505ce16d3017be7d76a7c2631c0590e71a975083` | ⚠️ Unaudited |
| ReferralStorage | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x0e725cb75258c3d8e9fb47267207b8973b882ebf` | ⚠️ Unaudited |
| ReferralStorageTimelock | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x370a34f6200770d79b54080150b61c0326208ac5` | ⚠️ Unaudited |
| ReferralUtils | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x0aa9410f2e38f5a5bec68adb0c3d59b09b6747a8` | ⚠️ Unaudited |
| RelayUtils | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x05fca76dee79743426dace9a3369e4b9af7fe4ea` | ⚠️ Unaudited |
| RewardDistributor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x03f349b3cc4f200d7fae4d8ddaf1507f5a40d356` | ⚠️ Unaudited |
| RewardManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xb9fcd526e11aa577591d776baa051dc335728d65` | ⚠️ Unaudited |
| RewardReader | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | avalanche | unit-241291 | `0x04fc11bd28763872d143637a7c768bd96e44c1b6` | ⚠️ Unaudited |
| RewardRouter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xc73d553473dc65ce56db96c58e6a091c20980fba` | ⚠️ Unaudited |
| RewardRouterV2 | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | arbitrum | unit-241248 | `0x5e4766f932ce00aa4a1a82d3da85adf15c5694a1` | ⚠️ Unaudited |
| RewardTracker | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x0a22fec325b89ac294fceafefd7fbc9115be964b` | ⚠️ Unaudited |
| RiskOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x329ffe00a16f5f4ca93428215accd3de04fb917b` | ⚠️ Unaudited |
| RiskOracleConfig | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x5ca40cbb5321bbe4ef74ddf01ccd2b4bcc76a9f9` | ⚠️ Unaudited |
| Router | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | avalanche | unit-241296 | `0x5f719c2f1095f7b9fc68a68e35b51194f4b6abe8` | ⚠️ Unaudited |
| ShiftEventUtils | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x00261e5da1f20c93bb5258e384591293da24a4f6` | ⚠️ Unaudited |
| ShiftHandler | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x03b577d9a38303e2dd4498cdb71cba760cdb84dc` | ⚠️ Unaudited |
| ShiftStoreUtils | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x0af6605a7cff7a6617e4830599073b85010d2ca3` | ⚠️ Unaudited |
| ShiftUtils | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x0eea22131471e5766ef313bd1cccbcc1c0e89599` | ⚠️ Unaudited |
| ShortsTracker | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x9234252975484d75fd05f3e4f7bdbec61956d73a` | ⚠️ Unaudited |
| ShortsTrackerTimelock | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x79b6ee65fc1466b5fd95e20650df740c085c6c2a` | ⚠️ Unaudited |
| SimulationRouter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xefe0ebbb14b65a4c19731cb264dd8dc6c70b15f4` | ⚠️ Unaudited |
| StakedGlp | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x01af26b74409d10e15b102621edd29c326ba1c55` | ⚠️ Unaudited |
| StakedGlpMigrator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xe19ab1cca0a010521140cf5ada1cf8308c0b382c` | ⚠️ Unaudited |
| StakeManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x417076ca70dae5a1ecf69bc8757c25b877284128` | ⚠️ Unaudited |
| SubaccountGelatoRelayRouter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x0c4d69369982f7e8002089387a95ff059deff6b3` | ⚠️ Unaudited |
| SubaccountRouter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x1258ab791230412dc862ce0ca46f2bf307386d03` | ⚠️ Unaudited |
| SubaccountRouterUtils | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x30549b8c00a8cfcbb6818069f71f05c675e6203b` | ⚠️ Unaudited |
| SubaccountUtils | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x06090f3209dedb831c9e102a841ed273ef6fbfb4` | ⚠️ Unaudited |
| SwapHandler | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x03a6e8af1685099470019de39b1573d415856879` | ⚠️ Unaudited |
| SwapOrderExecutor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x455d555350d5cccd1e3eb3d563b411ef24697050` | ⚠️ Unaudited |
| SwapOrderUtils | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x062c6653052d90d66515ec4270f647d462b0a565` | ⚠️ Unaudited |
| SwapPricingUtils | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x08f96361d3d67e107ecf968bf0cf706f706ba7fa` | ⚠️ Unaudited |
| SwapUtils | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x00f6d4c797f56137649c833c952c5096960592fe` | ⚠️ Unaudited |
| Timelock | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x033f484869dd8fb40041dfc7979d75ca5260e0ec` | ⚠️ Unaudited |
| TimestampInitializer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x1e72f7c6198c3df7ca7f12173b3ebebb46434960` | ⚠️ Unaudited |
| TokenManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x1bcfff1bddf755de10de20771eed0c71ff370967` | ⚠️ Unaudited |
| UniswapV3Pool | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | arbitrum | unit-241256 | `0x80a9ae39310abf666a87c743d6ebbd0e8c42158e` | ⚠️ Unaudited |
| USDG | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x40757a2883f82392c49ce86cb0d92d0653db2d51` | ⚠️ Unaudited |
| Vault | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | arbitrum | unit-241243 | `0x489ee077994b6658eafa855c308275ead8097c4a` | ⚠️ Unaudited |
| VaultErrorController | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x0d526187c18f00cf8dabbf865f65ccff9e403ef4` | ⚠️ Unaudited |
| VaultPriceFeed | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x105a9c480acd14ff57aefb58e2b658d4275436eb` | ⚠️ Unaudited |
| VaultReader | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x060cbba8730eff54ee24e08d6a4973f376463cc0` | ⚠️ Unaudited |
| VaultUtils | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x5a8caa298b76fa3e7f55e571bf1bf937fe5cb161` | ⚠️ Unaudited |
| Vester | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x199070ddfd1cfb69173aa2f7e20906f26b363004` | ⚠️ Unaudited |
| WithdrawalEventUtils | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x04e3978be0a0f4da931972eac4473112efec7f79` | ⚠️ Unaudited |
| WithdrawalHandler | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x1037c3b54b3109a495b8d0cce6c32f819284f0cf` | ⚠️ Unaudited |
| WithdrawalStoreUtils | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x04baf822e66ec7aa859dcbf32b7cf7af31dffcdf` | ⚠️ Unaudited |
| WithdrawalUtils | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x0c27a77f47cf89c1b936f8eceeb13864321e0b31` | ⚠️ Unaudited |

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
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-241235 | `0x1bc32eecaa8f504d2225096649a0347153a37f10` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | arbitrum | unit-241236 | `0x22199a49a999c351ef7927602cfb187ec3cae489` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | arbitrum | unit-241240 | `0x3963ffc9dff443c2a94f21b129d429891e32ec18` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-241241 | `0x3d6ba4a91ffde7c519379f8dca5fe58b7125c294` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-241244 | `0x4baa24f93a657f0c1b4a0ffc72b91011e35ca46b` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | arbitrum | unit-241245 | `0x5402b5f40310bded796c7d0f3ff6683f5c0cffdf` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-241246 | `0x5a1344252f0cdfdb765dd5ab97c98734f1d7ed6d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-241247 | `0x5bb6dcb09010069228b2aa766fae513ef7923472` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-241257 | `0x839b6e19e54a5862da61974a01675a5f6cc5c8b4` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | arbitrum | unit-241260 | `0x8bfb8e82ee4569aee78d03235ff465bd436d40e0` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-241261 | `0x955aa50d2ecceffa59084be5e875eb676ffafa98` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | arbitrum | unit-241268 | `0xabbc5f99639c9b6bcb58544ddf04efa6802f4064` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-241269 | `0xad712e1667bc8aaa6c4ea5f47dcd487ddd96bc35` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | arbitrum | unit-241274 | `0xb87a436b93ffe9d75c5cfa7bacfff96430b09868` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | arbitrum | unit-241275 | `0xb95db5b167d75e6d04227cfffa61069348d271f5` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-241276 | `0xbad04ddcc5cc284a86493afa75d2beb970c72216` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-241279 | `0xc92741f0a0d20a95529873cbb3480b1f8c228d9f` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | arbitrum | unit-241282 | `0xd2d1162512f927a7e282ef43a362659e4f2a728f` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | arbitrum | unit-241287 | `0xe6fab3f0c7199b0d34d7fbe83394fc0e0d06e99d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-241289 | `0xec0e4a27a9fbfc64e4915c254b961260df28054c` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | arbitrum | unit-241290 | `0xfc5a1a6eb076a2c7ad06ed22c90d7e710e35ad0a` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | avalanche | unit-241292 | `0x091ed806490cc58fd514441499e58984ccce0630` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | avalanche | unit-241294 | `0x4296e307f108b2f583ff2f7b7270ee7831574ae5` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | avalanche | unit-241295 | `0x4d268a7d4c16ceb5a606c173bd974984343fea13` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | avalanche | unit-241297 | `0x62edc0692bd897d2295872a9ffcac5425011c661` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | avalanche | unit-241298 | `0x67b789d48c926006f5132bfce4e976f0a7a63d5d` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | avalanche | unit-241299 | `0x827ed045002ecdabeb6e2b0d1604cf5fc3d322f8` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | avalanche | unit-241300 | `0x9ab2de34a33fb459b538c43f251eb825645e8595` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | avalanche | unit-241301 | `0xae64d55a6f09e4263421737397d1fdfa71896a69` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | avalanche | unit-241302 | `0xb70b91ce0771d3f4c81d87660f71da31d48eb3b3` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | avalanche | unit-241303 | `0xccfe3e576f8145403d3ce8f3c2f6519dae40683b` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | avalanche | unit-241304 | `0xd152c7f25db7f4b95b7658323c5f33d176818ee4` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | avalanche | unit-241305 | `0xfff6d276bc37c61a23f06410dce4a400f66420f8` | ❓ Unverified |

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
| ABDK_GMX_Synthetics_Audit.pdf | RoleStore | own contract | RoleStore (selected) `0x3c3d99fd298f679dbc2cecd132b4ec4d0f5e6e72` — deployed 2023-07-04 11:44:17+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| ABDK_GMX_Synthetics_Audit.pdf | SwapOrderUtils | unmatched — not counted | — | listed in scope | no |
| ABDK_GMX_Synthetics_Audit.pdf | MarketFactory | own contract | MarketFactory (selected) `0xc57c155faccd93f62546f329d1483e0e5b9c1241` — deployed 2023-07-04 13:25:27+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| ABDK_GMX_Synthetics_Audit.pdf | DecreasePositionUtils | unmatched — not counted | — | listed in scope | no |
| ABDK_GMX_Synthetics_Audit.pdf | Precision | unmatched — not counted | — | listed in scope | no |
| ABDK_GMX_Synthetics_Audit.pdf | Role | unmatched — not counted | — | listed in scope | no |
| ABDK_GMX_Synthetics_Audit.pdf | FeeReceiver | unmatched — not counted | — | listed in scope | no |
| ABDK_GMX_Synthetics_Audit.pdf | WithdrawalHandler | own contract | 0x5bb6dc… (selected) `0x5bb6dcb09010069228b2aa766fae513ef7923472` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| ABDK_GMX_Synthetics_Audit.pdf | DepositUtils | unmatched — not counted | — | listed in scope | no |
| ABDK_GMX_Synthetics_Audit.pdf | LiquidationHandler | own contract | 0x1bc32e… (selected) `0x1bc32eecaa8f504d2225096649a0347153a37f10` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| ABDK_GMX_Synthetics_Audit.pdf | DataStore | own contract | DataStore (selected) `0x2f0b22339414aded7d5f06f9d604c7ff5b2fe3f6` — deployed 2023-07-04 13:13:48+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| ABDK_GMX_Synthetics_Audit.pdf | Oracle | unmatched — not counted | — | listed in scope | no |
| ABDK_GMX_Synthetics_Audit.pdf | OracleModule | unmatched — not counted | — | listed in scope | no |
| ABDK_GMX_Synthetics_Audit.pdf | OrderHandler | own contract | 0xbad04d… (selected) `0xbad04ddcc5cc284a86493afa75d2beb970c72216` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
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
| ABDK_GMX_Synthetics_Audit.pdf | DepositHandler | own contract | 0x839b6e… (selected) `0x839b6e19e54a5862da61974a01675a5f6cc5c8b4` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| ABDK_GMX_Synthetics_Audit.pdf | DepositStore | unmatched — not counted | — | listed in scope | no |
| ABDK_GMX_Synthetics_Audit.pdf | OrderStore | unmatched — not counted | — | listed in scope | no |
| ABDK_GMX_Synthetics_Audit.pdf | EnumerableSet | unmatched — not counted | — | listed in scope | no |
| GMX_Synthetics_DeDaub_Audit.pdf | Bank | unmatched — not counted | — | listed in scope | no |
| GMX_Synthetics_DeDaub_Audit.pdf | StrictBank | unmatched — not counted | — | listed in scope | no |
| GMX_Synthetics_DeDaub_Audit.pdf | DataStore | own contract | DataStore (selected) `0x2f0b22339414aded7d5f06f9d604c7ff5b2fe3f6` — deployed 2023-07-04 13:13:48+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| GMX_Synthetics_DeDaub_Audit.pdf | Keys | unmatched — not counted | — | listed in scope | no |
| GMX_Synthetics_DeDaub_Audit.pdf | Deposit | unmatched — not counted | — | listed in scope | no |
| GMX_Synthetics_DeDaub_Audit.pdf | DepositStore | unmatched — not counted | — | listed in scope | no |
| GMX_Synthetics_DeDaub_Audit.pdf | DepositUtils | unmatched — not counted | — | listed in scope | no |
| GMX_Synthetics_DeDaub_Audit.pdf | EthUtils | unmatched — not counted | — | listed in scope | no |
| GMX_Synthetics_DeDaub_Audit.pdf | IWETH | unmatched — not counted | — | listed in scope | no |
| GMX_Synthetics_DeDaub_Audit.pdf | EventEmitter | own contract | EventEmitter (selected) `0xc8ee91a54287db53897056e12d9819156d3822fb` — deployed 2023-07-04 11:48:15+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| GMX_Synthetics_DeDaub_Audit.pdf | DepositHandler | own contract | 0x839b6e… (selected) `0x839b6e19e54a5862da61974a01675a5f6cc5c8b4` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| GMX_Synthetics_DeDaub_Audit.pdf | OrderHandler | own contract | 0xbad04d… (selected) `0xbad04ddcc5cc284a86493afa75d2beb970c72216` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| GMX_Synthetics_DeDaub_Audit.pdf | WithdrawalHandler | own contract | 0x5bb6dc… (selected) `0x5bb6dcb09010069228b2aa766fae513ef7923472` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| GMX_Synthetics_DeDaub_Audit.pdf | FeatureUtils | unmatched — not counted | — | listed in scope | no |
| GMX_Synthetics_DeDaub_Audit.pdf | FeeReceiver | unmatched — not counted | — | listed in scope | no |
| GMX_Synthetics_DeDaub_Audit.pdf | FeeUtils | unmatched — not counted | — | listed in scope | no |
| GMX_Synthetics_DeDaub_Audit.pdf | GasUtils | unmatched — not counted | — | listed in scope | no |
| GMX_Synthetics_DeDaub_Audit.pdf | Governable | unmatched — not counted | — | listed in scope | no |
| GMX_Synthetics_DeDaub_Audit.pdf | MarketFactory | own contract | MarketFactory (selected) `0xc57c155faccd93f62546f329d1483e0e5b9c1241` — deployed 2023-07-04 13:25:27+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
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
| GMX_Synthetics_DeDaub_Audit.pdf | RoleStore | own contract | RoleStore (selected) `0x3c3d99fd298f679dbc2cecd132b4ec4d0f5e6e72` — deployed 2023-07-04 11:44:17+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
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
| 2022-10-24_GMX_Synthetics.pdf | DataStore | own contract | DataStore (selected) `0x2f0b22339414aded7d5f06f9d604c7ff5b2fe3f6` — deployed 2023-07-04 13:13:48+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2022-10-24_GMX_Synthetics.pdf | Keys | unmatched — not counted | — | listed in scope table | no |
| 2022-10-24_GMX_Synthetics.pdf | Deposit | unmatched — not counted | — | listed in scope table | no |
| 2022-10-24_GMX_Synthetics.pdf | DepositStore | unmatched — not counted | — | listed in scope table | no |
| 2022-10-24_GMX_Synthetics.pdf | DepositUtils | unmatched — not counted | — | listed in scope table | no |
| 2022-10-24_GMX_Synthetics.pdf | DepositHandler | own contract | 0x839b6e… (selected) `0x839b6e19e54a5862da61974a01675a5f6cc5c8b4` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2022-10-24_GMX_Synthetics.pdf | LiquidationHandler | own contract | 0x1bc32e… (selected) `0x1bc32eecaa8f504d2225096649a0347153a37f10` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2022-10-24_GMX_Synthetics.pdf | OrderHandler | own contract | 0xbad04d… (selected) `0xbad04ddcc5cc284a86493afa75d2beb970c72216` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2022-10-24_GMX_Synthetics.pdf | WithdrawalHandler | own contract | 0x5bb6dc… (selected) `0x5bb6dcb09010069228b2aa766fae513ef7923472` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2022-10-24_GMX_Synthetics.pdf | FeatureUtils | unmatched — not counted | — | listed in scope table | no |
| 2022-10-24_GMX_Synthetics.pdf | FeeUtils | unmatched — not counted | — | listed in scope table | no |
| 2022-10-24_GMX_Synthetics.pdf | GasUtils | unmatched — not counted | — | listed in scope table | no |
| 2022-10-24_GMX_Synthetics.pdf | Governable | unmatched — not counted | — | listed in scope table | no |
| 2022-10-24_GMX_Synthetics.pdf | Market | unmatched — not counted | — | listed in scope table | no |
| 2022-10-24_GMX_Synthetics.pdf | MarketFactory | own contract | MarketFactory (selected) `0xc57c155faccd93f62546f329d1483e0e5b9c1241` — deployed 2023-07-04 13:25:27+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
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
| 2022-10-24_GMX_Synthetics.pdf | RoleStore | own contract | RoleStore (selected) `0x3c3d99fd298f679dbc2cecd132b4ec4d0f5e6e72` — deployed 2023-07-04 11:44:17+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
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
| 2023-01-08_GMX_Synthetics.pdf | DataStore | own contract | DataStore (selected) `0x2f0b22339414aded7d5f06f9d604c7ff5b2fe3f6` — deployed 2023-07-04 13:13:48+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2023-01-08_GMX_Synthetics.pdf | Keys | unmatched — not counted | — | listed in scope table | no |
| 2023-01-08_GMX_Synthetics.pdf | Deposit | unmatched — not counted | — | listed in scope table | no |
| 2023-01-08_GMX_Synthetics.pdf | DepositStore | unmatched — not counted | — | listed in scope table | no |
| 2023-01-08_GMX_Synthetics.pdf | EventEmitter | own contract | EventEmitter (selected) `0xc8ee91a54287db53897056e12d9819156d3822fb` — deployed 2023-07-04 11:48:15+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2023-01-08_GMX_Synthetics.pdf | DepositHandler | own contract | 0x839b6e… (selected) `0x839b6e19e54a5862da61974a01675a5f6cc5c8b4` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2023-01-08_GMX_Synthetics.pdf | OrderHandler | own contract | 0xbad04d… (selected) `0xbad04ddcc5cc284a86493afa75d2beb970c72216` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2023-01-08_GMX_Synthetics.pdf | WithdrawalHandler | own contract | 0x5bb6dc… (selected) `0x5bb6dcb09010069228b2aa766fae513ef7923472` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2023-01-08_GMX_Synthetics.pdf | FeatureUtils | unmatched — not counted | — | listed in scope table | no |
| 2023-01-08_GMX_Synthetics.pdf | FeeReceiver | unmatched — not counted | — | listed in scope table | no |
| 2023-01-08_GMX_Synthetics.pdf | GasUtils | unmatched — not counted | — | listed in scope table | no |
| 2023-01-08_GMX_Synthetics.pdf | Governable | unmatched — not counted | — | listed in scope table | no |
| 2023-01-08_GMX_Synthetics.pdf | LiquidationUtils | unmatched — not counted | — | listed in scope table | no |
| 2023-01-08_GMX_Synthetics.pdf | Market | unmatched — not counted | — | listed in scope table | no |
| 2023-01-08_GMX_Synthetics.pdf | MarketFactory | own contract | MarketFactory (selected) `0xc57c155faccd93f62546f329d1483e0e5b9c1241` — deployed 2023-07-04 13:25:27+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
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
| 2023-01-08_GMX_Synthetics.pdf | RoleStore | own contract | RoleStore (selected) `0x3c3d99fd298f679dbc2cecd132b4ec4d0f5e6e72` — deployed 2023-07-04 11:44:17+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
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
| 2023-01-08_GMX_Synthetics.pdf | Multicall3 | ambiguous — not counted | 0x4baa24… (alternative) `0x4baa24f93a657f0c1b4a0ffc72b91011e35ca46b` — liveness: live (current_address_book_code)<br>Multicall3 (alternative) `0x50474cae810b316c294111807f94f9f48527e7f8` — deployed 2023-07-04 13:28:55+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
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
| 2023-03-15_GMX_Synthetics.pdf | DataStore | own contract | DataStore (selected) `0x2f0b22339414aded7d5f06f9d604c7ff5b2fe3f6` — deployed 2023-07-04 13:13:48+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2023-03-15_GMX_Synthetics.pdf | Keys | unmatched — not counted | — | listed in scope table | no |
| 2023-03-15_GMX_Synthetics.pdf | Deposit | unmatched — not counted | — | listed in scope table | no |
| 2023-03-15_GMX_Synthetics.pdf | DepositStoreUtils | unmatched — not counted | — | listed in scope table | no |
| 2023-03-15_GMX_Synthetics.pdf | EventEmitter | own contract | EventEmitter (selected) `0xc8ee91a54287db53897056e12d9819156d3822fb` — deployed 2023-07-04 11:48:15+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2023-03-15_GMX_Synthetics.pdf | DepositHandler | own contract | 0x839b6e… (selected) `0x839b6e19e54a5862da61974a01675a5f6cc5c8b4` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2023-03-15_GMX_Synthetics.pdf | OrderHandler | own contract | 0xbad04d… (selected) `0xbad04ddcc5cc284a86493afa75d2beb970c72216` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2023-03-15_GMX_Synthetics.pdf | WithdrawalHandler | own contract | 0x5bb6dc… (selected) `0x5bb6dcb09010069228b2aa766fae513ef7923472` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2023-03-15_GMX_Synthetics.pdf | FeatureUtils | unmatched — not counted | — | listed in scope table | no |
| 2023-03-15_GMX_Synthetics.pdf | OrderVault | own contract | OrderVault (selected) `0x31ef83a530fde1b38ee9a18093a333d8bbbc40d5` — deployed 2023-07-04 11:53:55+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2023-03-15_GMX_Synthetics.pdf | DepositVault | own contract | DepositVault (selected) `0x90c670825d0c62ede1c5ee9571d6d9a17a722dff` — deployed 2023-07-04 13:25:59+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2023-03-15_GMX_Synthetics.pdf | WithdrawalVault | own contract | WithdrawalVault (selected) `0x0628d46b5d145f183adb6ef1f2c97ed1c4701c55` — deployed 2023-07-04 12:20:38+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2023-03-15_GMX_Synthetics.pdf | GasUtils | unmatched — not counted | — | listed in scope table | no |
| 2023-03-15_GMX_Synthetics.pdf | Governable | unmatched — not counted | — | listed in scope table | no |
| 2023-03-15_GMX_Synthetics.pdf | LiquidationUtils | unmatched — not counted | — | listed in scope table | no |
| 2023-03-15_GMX_Synthetics.pdf | Market | unmatched — not counted | — | listed in scope table | no |
| 2023-03-15_GMX_Synthetics.pdf | MarketFactory | own contract | MarketFactory (selected) `0xc57c155faccd93f62546f329d1483e0e5b9c1241` — deployed 2023-07-04 13:25:27+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
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
| 2023-03-15_GMX_Synthetics.pdf | RoleStore | own contract | RoleStore (selected) `0x3c3d99fd298f679dbc2cecd132b4ec4d0f5e6e72` — deployed 2023-07-04 11:44:17+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
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
| 2023-03-15_GMX_Synthetics.pdf | Multicall3 | ambiguous — not counted | 0x4baa24… (alternative) `0x4baa24f93a657f0c1b4a0ffc72b91011e35ca46b` — liveness: live (current_address_book_code)<br>Multicall3 (alternative) `0x50474cae810b316c294111807f94f9f48527e7f8` — deployed 2023-07-04 13:28:55+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| 2023-03-15_GMX_Synthetics.pdf | PayableMulticall | unmatched — not counted | — | listed in scope table | no |
| 2023-03-15_GMX_Synthetics.pdf | Precision | unmatched — not counted | — | listed in scope table | no |
| 2023-03-15_GMX_Synthetics.pdf | Withdrawal | unmatched — not counted | — | listed in scope table | no |
| 2023-03-15_GMX_Synthetics.pdf | WithdrawalStoreUtils | unmatched — not counted | — | listed in scope table | no |
| 2023-03-15_GMX_Synthetics.pdf | WithdrawalUtils | unmatched — not counted | — | listed in scope table | no |
| 2023-03-15_GMX_Synthetics.pdf | Config | own contract | 0x5a1344… (selected) `0x5a1344252f0cdfdb765dd5ab97c98734f1d7ed6d` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2023-05-15_GMX_Synthetics.pdf | AdlUtils | unmatched — not counted | — | listed in scope table | no |
| 2023-05-15_GMX_Synthetics.pdf | Bank | unmatched — not counted | — | listed in scope table | no |
| 2023-05-15_GMX_Synthetics.pdf | StrictBank | unmatched — not counted | — | listed in scope table | no |
| 2023-05-15_GMX_Synthetics.pdf | CallbackUtils | unmatched — not counted | — | listed in scope table | no |
| 2023-05-15_GMX_Synthetics.pdf | IDepositCallbackReceiver | unmatched — not counted | — | listed in scope table | no |
| 2023-05-15_GMX_Synthetics.pdf | IOrderCallbackReceiver | unmatched — not counted | — | listed in scope table | no |
| 2023-05-15_GMX_Synthetics.pdf | IWithdrawalCallbackReceiver | unmatched — not counted | — | listed in scope table | no |
| 2023-05-15_GMX_Synthetics.pdf | ArbSys | unmatched — not counted | — | listed in scope table | no |
| 2023-05-15_GMX_Synthetics.pdf | Chain | unmatched — not counted | — | listed in scope table | no |
| 2023-05-15_GMX_Synthetics.pdf | DataStore | own contract | DataStore (selected) `0x2f0b22339414aded7d5f06f9d604c7ff5b2fe3f6` — deployed 2023-07-04 13:13:48+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2023-05-15_GMX_Synthetics.pdf | Keys | unmatched — not counted | — | listed in scope table | no |
| 2023-05-15_GMX_Synthetics.pdf | Deposit | unmatched — not counted | — | listed in scope table | no |
| 2023-05-15_GMX_Synthetics.pdf | DepositStoreUtils | unmatched — not counted | — | listed in scope table | no |
| 2023-05-15_GMX_Synthetics.pdf | EventEmitter | own contract | EventEmitter (selected) `0xc8ee91a54287db53897056e12d9819156d3822fb` — deployed 2023-07-04 11:48:15+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2023-05-15_GMX_Synthetics.pdf | DepositHandler | own contract | 0x839b6e… (selected) `0x839b6e19e54a5862da61974a01675a5f6cc5c8b4` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2023-05-15_GMX_Synthetics.pdf | OrderHandler | own contract | 0xbad04d… (selected) `0xbad04ddcc5cc284a86493afa75d2beb970c72216` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2023-05-15_GMX_Synthetics.pdf | WithdrawalHandler | own contract | 0x5bb6dc… (selected) `0x5bb6dcb09010069228b2aa766fae513ef7923472` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2023-05-15_GMX_Synthetics.pdf | FeatureUtils | unmatched — not counted | — | listed in scope table | no |
| 2023-05-15_GMX_Synthetics.pdf | OrderVault | own contract | OrderVault (selected) `0x31ef83a530fde1b38ee9a18093a333d8bbbc40d5` — deployed 2023-07-04 11:53:55+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2023-05-15_GMX_Synthetics.pdf | DepositVault | own contract | DepositVault (selected) `0x90c670825d0c62ede1c5ee9571d6d9a17a722dff` — deployed 2023-07-04 13:25:59+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2023-05-15_GMX_Synthetics.pdf | WithdrawalVault | own contract | WithdrawalVault (selected) `0x0628d46b5d145f183adb6ef1f2c97ed1c4701c55` — deployed 2023-07-04 12:20:38+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2023-05-15_GMX_Synthetics.pdf | GasUtils | unmatched — not counted | — | listed in scope table | no |
| 2023-05-15_GMX_Synthetics.pdf | Governable | unmatched — not counted | — | listed in scope table | no |
| 2023-05-15_GMX_Synthetics.pdf | LiquidationUtils | unmatched — not counted | — | listed in scope table | no |
| 2023-05-15_GMX_Synthetics.pdf | Market | unmatched — not counted | — | listed in scope table | no |
| 2023-05-15_GMX_Synthetics.pdf | MarketFactory | own contract | MarketFactory (selected) `0xc57c155faccd93f62546f329d1483e0e5b9c1241` — deployed 2023-07-04 13:25:27+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
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
| 2023-05-15_GMX_Synthetics.pdf | RoleStore | own contract | RoleStore (selected) `0x3c3d99fd298f679dbc2cecd132b4ec4d0f5e6e72` — deployed 2023-07-04 11:44:17+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
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
| 2023-05-15_GMX_Synthetics.pdf | Multicall3 | ambiguous — not counted | 0x4baa24… (alternative) `0x4baa24f93a657f0c1b4a0ffc72b91011e35ca46b` — liveness: live (current_address_book_code)<br>Multicall3 (alternative) `0x50474cae810b316c294111807f94f9f48527e7f8` — deployed 2023-07-04 13:28:55+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| 2023-05-15_GMX_Synthetics.pdf | PayableMulticall | unmatched — not counted | — | listed in scope table | no |
| 2023-05-15_GMX_Synthetics.pdf | Precision | unmatched — not counted | — | listed in scope table | no |
| 2023-05-15_GMX_Synthetics.pdf | Withdrawal | unmatched — not counted | — | listed in scope table | no |
| 2023-05-15_GMX_Synthetics.pdf | WithdrawalStoreUtils | unmatched — not counted | — | listed in scope table | no |
| 2023-05-15_GMX_Synthetics.pdf | WithdrawalUtils | unmatched — not counted | — | listed in scope table | no |
| 2023-05-15_GMX_Synthetics.pdf | Config | own contract | 0x5a1344… (selected) `0x5a1344252f0cdfdb765dd5ab97c98734f1d7ed6d` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2023-06-02_GMX_Synthetics.pdf | AdlUtils | unmatched — not counted | — | listed in scope table | no |
| 2023-06-02_GMX_Synthetics.pdf | Bank | unmatched — not counted | — | listed in scope table | no |
| 2023-06-02_GMX_Synthetics.pdf | StrictBank | unmatched — not counted | — | listed in scope table | no |
| 2023-06-02_GMX_Synthetics.pdf | CallbackUtils | unmatched — not counted | — | listed in scope table | no |
| 2023-06-02_GMX_Synthetics.pdf | IDepositCallbackReceiver | unmatched — not counted | — | listed in scope table | no |
| 2023-06-02_GMX_Synthetics.pdf | IOrderCallbackReceiver | unmatched — not counted | — | listed in scope table | no |
| 2023-06-02_GMX_Synthetics.pdf | IWithdrawalCallbackReceiver | unmatched — not counted | — | listed in scope table | no |
| 2023-06-02_GMX_Synthetics.pdf | ArbSys | unmatched — not counted | — | listed in scope table | no |
| 2023-06-02_GMX_Synthetics.pdf | Chain | unmatched — not counted | — | listed in scope table | no |
| 2023-06-02_GMX_Synthetics.pdf | Config | own contract | 0x5a1344… (selected) `0x5a1344252f0cdfdb765dd5ab97c98734f1d7ed6d` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2023-06-02_GMX_Synthetics.pdf | Timelock | unmatched — not counted | — | listed in scope table | no |
| 2023-06-02_GMX_Synthetics.pdf | DataStore | own contract | DataStore (selected) `0x2f0b22339414aded7d5f06f9d604c7ff5b2fe3f6` — deployed 2023-07-04 13:13:48+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2023-06-02_GMX_Synthetics.pdf | Keys | unmatched — not counted | — | listed in scope table | no |
| 2023-06-02_GMX_Synthetics.pdf | Deposit | unmatched — not counted | — | listed in scope table | no |
| 2023-06-02_GMX_Synthetics.pdf | DepositStoreUtils | unmatched — not counted | — | listed in scope table | no |
| 2023-06-02_GMX_Synthetics.pdf | DepositUtils | unmatched — not counted | — | listed in scope table | no |
| 2023-06-02_GMX_Synthetics.pdf | DepositVault | own contract | DepositVault (selected) `0x90c670825d0c62ede1c5ee9571d6d9a17a722dff` — deployed 2023-07-04 13:25:59+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2023-06-02_GMX_Synthetics.pdf | ExecuteDepositUtils | unmatched — not counted | — | listed in scope table | no |
| 2023-06-02_GMX_Synthetics.pdf | AdlHandler | own contract | 0xec0e4a… (selected) `0xec0e4a27a9fbfc64e4915c254b961260df28054c` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2023-06-02_GMX_Synthetics.pdf | BaseOrderHandler | unmatched — not counted | — | listed in scope table | no |
| 2023-06-02_GMX_Synthetics.pdf | DepositHandler | own contract | 0x839b6e… (selected) `0x839b6e19e54a5862da61974a01675a5f6cc5c8b4` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2023-06-02_GMX_Synthetics.pdf | ExchangeUtils | unmatched — not counted | — | listed in scope table | no |
| 2023-06-02_GMX_Synthetics.pdf | LiquidationHandler | own contract | 0x1bc32e… (selected) `0x1bc32eecaa8f504d2225096649a0347153a37f10` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2023-06-02_GMX_Synthetics.pdf | LiquidationUtils | unmatched — not counted | — | listed in scope table | no |
| 2023-06-02_GMX_Synthetics.pdf | OrderHandler | own contract | 0xbad04d… (selected) `0xbad04ddcc5cc284a86493afa75d2beb970c72216` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2023-06-02_GMX_Synthetics.pdf | WithdrawalHandler | own contract | 0x5bb6dc… (selected) `0x5bb6dcb09010069228b2aa766fae513ef7923472` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2023-06-02_GMX_Synthetics.pdf | MarketStoreUtils | unmatched — not counted | — | listed in scope table | no |
| 2023-06-02_GMX_Synthetics.pdf | FeatureUtils | unmatched — not counted | — | listed in scope table | no |
| 2023-06-02_GMX_Synthetics.pdf | FeeHandler | unmatched — not counted | — | listed in scope table | no |
| 2023-06-02_GMX_Synthetics.pdf | FeeUtils | unmatched — not counted | — | listed in scope table | no |
| 2023-06-02_GMX_Synthetics.pdf | GasUtils | unmatched — not counted | — | listed in scope table | no |
| 2023-06-02_GMX_Synthetics.pdf | Market | unmatched — not counted | — | listed in scope table | no |
| 2023-06-02_GMX_Synthetics.pdf | MarketFactory | own contract | MarketFactory (selected) `0xc57c155faccd93f62546f329d1483e0e5b9c1241` — deployed 2023-07-04 13:25:27+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
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
| 2023-06-02_GMX_Synthetics.pdf | OrderVault | own contract | OrderVault (selected) `0x31ef83a530fde1b38ee9a18093a333d8bbbc40d5` — deployed 2023-07-04 11:53:55+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
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
| 2023-06-02_GMX_Synthetics.pdf | RoleStore | own contract | RoleStore (selected) `0x3c3d99fd298f679dbc2cecd132b4ec4d0f5e6e72` — deployed 2023-07-04 11:44:17+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
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
| 2023-06-02_GMX_Synthetics.pdf | WithdrawalVault | own contract | WithdrawalVault (selected) `0x0628d46b5d145f183adb6ef1f2c97ed1c4701c55` — deployed 2023-07-04 12:20:38+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
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
| 2023-07-11_GMX_Synthetics.pdf | DataStore | own contract | DataStore (selected) `0x2f0b22339414aded7d5f06f9d604c7ff5b2fe3f6` — deployed 2023-07-04 13:13:48+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2023-07-11_GMX_Synthetics.pdf | Keys | unmatched — not counted | — | listed in scope table | no |
| 2023-07-11_GMX_Synthetics.pdf | Deposit | unmatched — not counted | — | listed in scope table | no |
| 2023-07-11_GMX_Synthetics.pdf | DepositStoreUtils | unmatched — not counted | — | listed in scope table | no |
| 2023-07-11_GMX_Synthetics.pdf | EventEmitter | own contract | EventEmitter (selected) `0xc8ee91a54287db53897056e12d9819156d3822fb` — deployed 2023-07-04 11:48:15+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2023-07-11_GMX_Synthetics.pdf | DepositHandler | own contract | 0x839b6e… (selected) `0x839b6e19e54a5862da61974a01675a5f6cc5c8b4` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2023-07-11_GMX_Synthetics.pdf | OrderHandler | own contract | 0xbad04d… (selected) `0xbad04ddcc5cc284a86493afa75d2beb970c72216` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2023-07-11_GMX_Synthetics.pdf | WithdrawalHandler | own contract | 0x5bb6dc… (selected) `0x5bb6dcb09010069228b2aa766fae513ef7923472` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2023-07-11_GMX_Synthetics.pdf | FeatureUtils | unmatched — not counted | — | listed in scope table | no |
| 2023-07-11_GMX_Synthetics.pdf | OrderVault | own contract | OrderVault (selected) `0x31ef83a530fde1b38ee9a18093a333d8bbbc40d5` — deployed 2023-07-04 11:53:55+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2023-07-11_GMX_Synthetics.pdf | DepositVault | own contract | DepositVault (selected) `0x90c670825d0c62ede1c5ee9571d6d9a17a722dff` — deployed 2023-07-04 13:25:59+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2023-07-11_GMX_Synthetics.pdf | WithdrawalVault | own contract | WithdrawalVault (selected) `0x0628d46b5d145f183adb6ef1f2c97ed1c4701c55` — deployed 2023-07-04 12:20:38+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2023-07-11_GMX_Synthetics.pdf | GasUtils | unmatched — not counted | — | listed in scope table | no |
| 2023-07-11_GMX_Synthetics.pdf | LiquidationUtils | unmatched — not counted | — | listed in scope table | no |
| 2023-07-11_GMX_Synthetics.pdf | Market | unmatched — not counted | — | listed in scope table | no |
| 2023-07-11_GMX_Synthetics.pdf | MarketFactory | own contract | MarketFactory (selected) `0xc57c155faccd93f62546f329d1483e0e5b9c1241` — deployed 2023-07-04 13:25:27+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
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
| 2023-07-11_GMX_Synthetics.pdf | RoleStore | own contract | RoleStore (selected) `0x3c3d99fd298f679dbc2cecd132b4ec4d0f5e6e72` — deployed 2023-07-04 11:44:17+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
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
| 2023-07-11_GMX_Synthetics.pdf | Config | own contract | 0x5a1344… (selected) `0x5a1344252f0cdfdb765dd5ab97c98734f1d7ed6d` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2023-07-11_GMX_Synthetics.pdf | Errors | unmatched — not counted | — | listed in scope table | no |
| 2023-07-11_GMX_Synthetics.pdf | BaseOrderHandler | unmatched — not counted | — | listed in scope table | no |
| 2023-07-11_GMX_Synthetics.pdf | ExchangeUtils | unmatched — not counted | — | listed in scope table | no |
| 2023-07-11_GMX_Synthetics.pdf | LiquidationHandler | own contract | 0x1bc32e… (selected) `0x1bc32eecaa8f504d2225096649a0347153a37f10` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2023-07-11_GMX_Synthetics.pdf | FeeHandler | unmatched — not counted | — | listed in scope table | no |
| 2023-07-11_GMX_Synthetics.pdf | MarketPoolValueInfo | unmatched — not counted | — | listed in scope table | no |
| 2023-07-11_GMX_Synthetics.pdf | DecreasePositionSwapUtils | unmatched — not counted | — | listed in scope table | no |
| 2023-07-11_GMX_Synthetics.pdf | PositionStoreUtils | unmatched — not counted | — | listed in scope table | no |
| 2023-07-11_GMX_Synthetics.pdf | AccountUtils | unmatched — not counted | — | listed in scope table | no |
| 2023-07-11_GMX_Synthetics.pdf | Cast | unmatched — not counted | — | listed in scope table | no |
| 2023-07-11_GMX_Synthetics.pdf | GlobalReentrancyGuard | unmatched — not counted | — | listed in scope table | no |
| 2023-07-11_GMX_Synthetics.pdf | Uint256Mask | unmatched — not counted | — | listed in scope table | no |
| 2023-07-11_GMX_Synthetics.pdf | AdlHandler | own contract | 0xec0e4a… (selected) `0xec0e4a27a9fbfc64e4915c254b961260df28054c` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
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
| 2023-07-28_GMX_Synthetics.pdf | DataStore | own contract | DataStore (selected) `0x2f0b22339414aded7d5f06f9d604c7ff5b2fe3f6` — deployed 2023-07-04 13:13:48+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2023-07-28_GMX_Synthetics.pdf | Keys | unmatched — not counted | — | listed in scope table | no |
| 2023-07-28_GMX_Synthetics.pdf | Deposit | unmatched — not counted | — | listed in scope table | no |
| 2023-07-28_GMX_Synthetics.pdf | DepositStoreUtils | unmatched — not counted | — | listed in scope table | no |
| 2023-07-28_GMX_Synthetics.pdf | EventEmitter | own contract | EventEmitter (selected) `0xc8ee91a54287db53897056e12d9819156d3822fb` — deployed 2023-07-04 11:48:15+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2023-07-28_GMX_Synthetics.pdf | DepositHandler | own contract | 0x839b6e… (selected) `0x839b6e19e54a5862da61974a01675a5f6cc5c8b4` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2023-07-28_GMX_Synthetics.pdf | OrderHandler | own contract | 0xbad04d… (selected) `0xbad04ddcc5cc284a86493afa75d2beb970c72216` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2023-07-28_GMX_Synthetics.pdf | WithdrawalHandler | own contract | 0x5bb6dc… (selected) `0x5bb6dcb09010069228b2aa766fae513ef7923472` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2023-07-28_GMX_Synthetics.pdf | FeatureUtils | unmatched — not counted | — | listed in scope table | no |
| 2023-07-28_GMX_Synthetics.pdf | OrderVault | own contract | OrderVault (selected) `0x31ef83a530fde1b38ee9a18093a333d8bbbc40d5` — deployed 2023-07-04 11:53:55+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2023-07-28_GMX_Synthetics.pdf | DepositVault | own contract | DepositVault (selected) `0x90c670825d0c62ede1c5ee9571d6d9a17a722dff` — deployed 2023-07-04 13:25:59+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2023-07-28_GMX_Synthetics.pdf | WithdrawalVault | own contract | WithdrawalVault (selected) `0x0628d46b5d145f183adb6ef1f2c97ed1c4701c55` — deployed 2023-07-04 12:20:38+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2023-07-28_GMX_Synthetics.pdf | GasUtils | unmatched — not counted | — | listed in scope table | no |
| 2023-07-28_GMX_Synthetics.pdf | LiquidationUtils | unmatched — not counted | — | listed in scope table | no |
| 2023-07-28_GMX_Synthetics.pdf | Market | unmatched — not counted | — | listed in scope table | no |
| 2023-07-28_GMX_Synthetics.pdf | MarketFactory | own contract | MarketFactory (selected) `0xc57c155faccd93f62546f329d1483e0e5b9c1241` — deployed 2023-07-04 13:25:27+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
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
| 2023-07-28_GMX_Synthetics.pdf | RoleStore | own contract | RoleStore (selected) `0x3c3d99fd298f679dbc2cecd132b4ec4d0f5e6e72` — deployed 2023-07-04 11:44:17+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
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
| 2023-07-28_GMX_Synthetics.pdf | Config | own contract | 0x5a1344… (selected) `0x5a1344252f0cdfdb765dd5ab97c98734f1d7ed6d` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2023-07-28_GMX_Synthetics.pdf | Errors | unmatched — not counted | — | listed in scope table | no |
| 2023-07-28_GMX_Synthetics.pdf | BaseOrderHandler | unmatched — not counted | — | listed in scope table | no |
| 2023-07-28_GMX_Synthetics.pdf | ExchangeUtils | unmatched — not counted | — | listed in scope table | no |
| 2023-07-28_GMX_Synthetics.pdf | LiquidationHandler | own contract | 0x1bc32e… (selected) `0x1bc32eecaa8f504d2225096649a0347153a37f10` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2023-07-28_GMX_Synthetics.pdf | FeeHandler | unmatched — not counted | — | listed in scope table | no |
| 2023-07-28_GMX_Synthetics.pdf | MarketPoolValueInfo | unmatched — not counted | — | listed in scope table | no |
| 2023-07-28_GMX_Synthetics.pdf | DecreasePositionSwapUtils | unmatched — not counted | — | listed in scope table | no |
| 2023-07-28_GMX_Synthetics.pdf | PositionStoreUtils | unmatched — not counted | — | listed in scope table | no |
| 2023-07-28_GMX_Synthetics.pdf | AccountUtils | unmatched — not counted | — | listed in scope table | no |
| 2023-07-28_GMX_Synthetics.pdf | Cast | unmatched — not counted | — | listed in scope table | no |
| 2023-07-28_GMX_Synthetics.pdf | GlobalReentrancyGuard | unmatched — not counted | — | listed in scope table | no |
| 2023-07-28_GMX_Synthetics.pdf | Uint256Mask | unmatched — not counted | — | listed in scope table | no |
| 2023-07-28_GMX_Synthetics.pdf | AdlHandler | own contract | 0xec0e4a… (selected) `0xec0e4a27a9fbfc64e4915c254b961260df28054c` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2023-07-28_GMX_Synthetics.pdf | DecreasePositionCollateralUtils | unmatched — not counted | — | listed in scope table | no |
| 2023-07-28_GMX_Synthetics.pdf | ErrorUtils | unmatched — not counted | — | listed in scope table | no |
| 2023-09-01_GMX_Oracle_Updates.pdf | Config | own contract | 0x5a1344… (selected) `0x5a1344252f0cdfdb765dd5ab97c98734f1d7ed6d` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2023-09-01_GMX_Oracle_Updates.pdf | Timelock | unmatched — not counted | — | listed in scope table | no |
| 2023-09-01_GMX_Oracle_Updates.pdf | Keys | unmatched — not counted | — | listed in scope table | no |
| 2023-09-01_GMX_Oracle_Updates.pdf | ExecuteDepositUtils | unmatched — not counted | — | listed in scope table | no |
| 2023-09-01_GMX_Oracle_Updates.pdf | Errors | unmatched — not counted | — | listed in scope table | no |
| 2023-09-01_GMX_Oracle_Updates.pdf | AdlHandler | own contract | 0xec0e4a… (selected) `0xec0e4a27a9fbfc64e4915c254b961260df28054c` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2023-09-01_GMX_Oracle_Updates.pdf | BaseOrderHandler | unmatched — not counted | — | listed in scope table | no |
| 2023-09-01_GMX_Oracle_Updates.pdf | DepositHandler | own contract | 0x839b6e… (selected) `0x839b6e19e54a5862da61974a01675a5f6cc5c8b4` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2023-09-01_GMX_Oracle_Updates.pdf | WithdrawalHandler | own contract | 0x5bb6dc… (selected) `0x5bb6dcb09010069228b2aa766fae513ef7923472` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
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
| 2023-09-26_GMX_Synthetics_Updates.pdf | Config | own contract | 0x5a1344… (selected) `0x5a1344252f0cdfdb765dd5ab97c98734f1d7ed6d` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
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
| 2024-01-16_GMX_Config.pdf | Config | own contract | 0x5a1344… (selected) `0x5a1344252f0cdfdb765dd5ab97c98734f1d7ed6d` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2024-01-16_GMX_Config.pdf | RoleModule | unmatched — not counted | — | mentioned in findings description | no |
| 2024-06-14_GMX_Updates_1.pdf | OrderUtils | unmatched — not counted | — | Listed in findings locations (e.g., C-01, C-02, L-23) | no |
| 2024-06-14_GMX_Updates_1.pdf | Keys | unmatched — not counted | — | Listed in findings locations (e.g., C-03, L-20) | no |
| 2024-06-14_GMX_Updates_1.pdf | ExecuteDepositUtils | unmatched — not counted | — | Listed in findings locations (e.g., H-01) | no |
| 2024-06-14_GMX_Updates_1.pdf | Timelock | unmatched — not counted | — | Listed in findings locations (e.g., H-02) | no |
| 2024-06-14_GMX_Updates_1.pdf | ShiftHandler | own contract | 0xad712e… (selected) `0xad712e1667bc8aaa6c4ea5f47dcd487ddd96bc35` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2024-06-14_GMX_Updates_1.pdf | Config | own contract | 0x5a1344… (selected) `0x5a1344252f0cdfdb765dd5ab97c98734f1d7ed6d` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2024-06-14_GMX_Updates_1.pdf | GMOracleProvider | unmatched — not counted | — | Listed in findings locations (e.g., H-05) | no |
| 2024-06-14_GMX_Updates_1.pdf | GasUtils | unmatched — not counted | — | Listed in findings locations (e.g., H-06, M-02, M-09) | no |
| 2024-06-14_GMX_Updates_1.pdf | SwapOrderUtils | unmatched — not counted | — | Listed in findings locations (e.g., H-07) | no |
| 2024-06-14_GMX_Updates_1.pdf | Oracle | unmatched — not counted | — | Listed in findings locations (e.g., H-08, L-10, L-11, L-24) | no |
| 2024-06-14_GMX_Updates_1.pdf | ExternalHandler | unmatched — not counted | — | Listed in findings locations (e.g., M-01) | no |
| 2024-06-14_GMX_Updates_1.pdf | AutoCancelUtils | unmatched — not counted | — | Listed in findings locations (e.g., M-03) | no |
| 2024-06-14_GMX_Updates_1.pdf | ShiftUtils | unmatched — not counted | — | Listed in findings locations (e.g., M-04, L-12, L-18) | no |
| 2024-06-14_GMX_Updates_1.pdf | WithdrawalHandler | own contract | 0x5bb6dc… (selected) `0x5bb6dcb09010069228b2aa766fae513ef7923472` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2024-06-14_GMX_Updates_1.pdf | MarketUtils | unmatched — not counted | — | Listed in findings locations (e.g., L-01, L-08, L-22) | no |
| 2024-06-14_GMX_Updates_1.pdf | TimestampInitializer | unmatched — not counted | — | Listed in findings locations (e.g., L-05, L-21) | no |
| 2024-06-14_GMX_Updates_1.pdf | GmOracleUtils | unmatched — not counted | — | Listed in findings locations (e.g., L-14) | no |
| 2024-06-14_GMX_Updates_1.pdf | Errors | unmatched — not counted | — | Listed in findings locations (e.g., L-16) | no |
| 2024-06-14_GMX_Updates_1.pdf | ChainlinkDataStreamProvider | unmatched — not counted | — | Listed in findings locations (e.g., L-17) | no |
| 2024-06-14_GMX_Updates_2.pdf | OrderHandler | own contract | 0xbad04d… (selected) `0xbad04ddcc5cc284a86493afa75d2beb970c72216` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2024-06-14_GMX_Updates_2.pdf | SwapOrderUtils | unmatched — not counted | — | listed in finding C-02 | no |
| 2024-06-14_GMX_Updates_2.pdf | OrderUtils | unmatched — not counted | — | listed in findings H-01, M-01, L-06 | no |
| 2024-06-14_GMX_Updates_2.pdf | CallbackUtils | unmatched — not counted | — | listed in finding M-03 | no |
| 2024-06-14_GMX_Updates_2.pdf | ExecuteOrderUtils | unmatched — not counted | — | listed in finding M-06 | no |
| 2024-06-14_GMX_Updates_2.pdf | GasUtils | unmatched — not counted | — | listed in findings L-02, L-08 | no |
| 2024-06-14_GMX_Updates_2.pdf | DepositUtils | unmatched — not counted | — | listed in finding L-05 | no |
| 2024-06-14_GMX_Updates_2.pdf | MarketUtils | unmatched — not counted | — | listed in finding L-07 | no |
| 2024-06-14_GMX_Updates_3.pdf | OrderUtils | unmatched — not counted | — | mentioned in finding location | no |
| 2024-06-14_GMX_Updates_3.pdf | OrderVault | own contract | OrderVault (selected) `0x31ef83a530fde1b38ee9a18093a333d8bbbc40d5` — deployed 2023-07-04 11:53:55+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2024-06-14_GMX_Updates_3.pdf | OrderStore | unmatched — not counted | — | mentioned in finding description | no |
| 2024-06-14_GMX_Updates_3.pdf | MarketIncrease | unmatched — not counted | — | mentioned in finding description | no |
| 2024-09-03_GMX_GLV.pdf | GlvRouter | own contract | 0xc92741… (selected) `0xc92741f0a0d20a95529873cbb3480b1f8c228d9f` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2024-09-03_GMX_GLV.pdf | GlvHandler | unmatched — not counted | — | listed in finding locations (H-01, M-05, L-01, L-02, L-07, L-23, L-30) | no |
| 2024-09-03_GMX_GLV.pdf | CallbackUtils | unmatched — not counted | — | listed in finding locations (H-02, M-12) | no |
| 2024-09-03_GMX_GLV.pdf | GasUtils | unmatched — not counted | — | listed in finding locations (M-01, M-11, L-15) | no |
| 2024-09-03_GMX_GLV.pdf | GlvWithdrawalUtils | unmatched — not counted | — | listed in finding locations (M-02, M-03, M-06, M-07, M-08) | no |
| 2024-09-03_GMX_GLV.pdf | GlvDepositUtils | unmatched — not counted | — | listed in finding locations (M-09, L-06, L-10, L-20, L-21, L-32) | no |
| 2024-09-03_GMX_GLV.pdf | GlvUtils | unmatched — not counted | — | listed in finding locations (L-03, L-04) | no |
| 2024-09-03_GMX_GLV.pdf | Config | own contract | 0x5a1344… (selected) `0x5a1344252f0cdfdb765dd5ab97c98734f1d7ed6d` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2024-09-03_GMX_GLV.pdf | GlvShiftUtils | unmatched — not counted | — | listed in finding locations (L-08, L-09, L-16, L-29, L-31) | no |
| 2024-09-03_GMX_GLV.pdf | GlvFactory | unmatched — not counted | — | listed in finding location (L-11) | no |
| 2024-09-03_GMX_GLV.pdf | Errors | unmatched — not counted | — | listed in finding location (L-14) | no |
| 2024-09-03_GMX_GLV.pdf | ShiftHandler | own contract | 0xad712e… (selected) `0xad712e1667bc8aaa6c4ea5f47dcd487ddd96bc35` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2024-09-03_GMX_GLV.pdf | Keys | unmatched — not counted | — | listed in finding location (L-25) | no |
| 2024-09-03_GMX_GLV.pdf | GlvStoreUtils | unmatched — not counted | — | listed in finding locations (L-25, L-26) | no |
| 2024-09-03_GMX_GLV.pdf | GlvWithdrawalStoreUtils | unmatched — not counted | — | listed in finding location (L-27) | no |
| 2024-09-03_GMX_GLV.pdf | ExecuteDepositUtils | unmatched — not counted | — | referenced in L-32 description | no |
| 2024-09-03_GMX_GLV.pdf | ExecuteWithdrawalUtils | unmatched — not counted | — | referenced in M-08 recommendation | no |
| 2024-09-04_GMX_Config_Syncer.pdf | ConfigSyncer | unmatched — not counted | — | mentioned in audit summary and findings | no |
| 2024-09-04_GMX_Config_Syncer.pdf | RiskOracle | unmatched — not counted | — | findings reference RiskOracle.sol and Arbitrum Sepolia address | no |
| 2024-09-04_GMX_Config_Syncer.pdf | Config | own contract | 0x5a1344… (selected) `0x5a1344252f0cdfdb765dd5ab97c98734f1d7ed6d` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2024-11-18_GMX_Buybacks_Report.pdf | FeeHandler | unmatched — not counted | — | Listed in findings locations | no |
| 2024-11-18_GMX_Buybacks_Report.pdf | Config | own contract | 0x5a1344… (selected) `0x5a1344252f0cdfdb765dd5ab97c98734f1d7ed6d` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2024-11-18_GMX_Pro_Tiers_Report.pdf | Config | own contract | 0x5a1344… (selected) `0x5a1344252f0cdfdb765dd5ab97c98734f1d7ed6d` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
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
| 2025-07-29_GMX_Crosschain_V2.2_1_report.pdf | OrderHandler | own contract | 0xbad04d… (selected) `0xbad04ddcc5cc284a86493afa75d2beb970c72216` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2025-07-29_GMX_Crosschain_V2.2_1_report.pdf | WithdrawalHandler | own contract | 0x5bb6dc… (selected) `0x5bb6dcb09010069228b2aa766fae513ef7923472` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2025-07-29_GMX_Crosschain_V2.2_1_report.pdf | GlvHandler | unmatched — not counted | — | listed in scope and findings | no |
| 2025-07-29_GMX_Crosschain_V2.2_1_report.pdf | AdlHandler | own contract | 0xec0e4a… (selected) `0xec0e4a27a9fbfc64e4915c254b961260df28054c` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2025-07-29_GMX_Crosschain_V2.2_1_report.pdf | Config | own contract | 0x5a1344… (selected) `0x5a1344252f0cdfdb765dd5ab97c98734f1d7ed6d` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
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
| 2025-07-29_GMX_Crosschain_V2.2_2_report.pdf | TimelockConfig | own contract | TimelockConfig (selected) `0x37e1aeb6118b0106810d2ef7662875c414e39ca4` — deployed 2025-11-17 10:27:27+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
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
| 2025-07-29_GMX_Crosschain_V2.2_3_report.pdf | DepositHandler | own contract | 0x839b6e… (selected) `0x839b6e19e54a5862da61974a01675a5f6cc5c8b4` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2025-07-29_GMX_Crosschain_V2.2_3_report.pdf | MarketPoolValueInfo | unmatched — not counted | — | listed in findings L-02, L-28 | no |
| 2025-07-29_GMX_Crosschain_V2.2_3_report.pdf | MultichainTransferRouter | unmatched — not counted | — | listed in findings L-03, L-42, L-46, L-47 | no |
| 2025-07-29_GMX_Crosschain_V2.2_3_report.pdf | SubaccountRouter | unmatched — not counted | — | listed in finding L-04 | no |
| 2025-07-29_GMX_Crosschain_V2.2_3_report.pdf | LiquidationUtils | unmatched — not counted | — | listed in finding L-07 | no |
| 2025-07-29_GMX_Crosschain_V2.2_3_report.pdf | SwapUtils | unmatched — not counted | — | listed in finding M-11 | no |
| 2025-07-29_GMX_Crosschain_V2.2_3_report.pdf | ConfigTimelockController | own contract | 0x3d6ba4… (selected) `0x3d6ba4a91ffde7c519379f8dca5fe58b7125c294` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
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
| 2025-07-29_GMX_Crosschain_V2.2_4_report.pdf | TimelockConfig | own contract | TimelockConfig (selected) `0x37e1aeb6118b0106810d2ef7662875c414e39ca4` — deployed 2025-11-17 10:27:27+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
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
| 2025-07-29_GMX_Crosschain_V2.2_5_report.pdf | Config | own contract | 0x5a1344… (selected) `0x5a1344252f0cdfdb765dd5ab97c98734f1d7ed6d` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
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
| 2025-07-29_GMX_Crosschain_V2.2_6_report.pdf | Config | own contract | 0x5a1344… (selected) `0x5a1344252f0cdfdb765dd5ab97c98734f1d7ed6d` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2025-07-29_GMX_Crosschain_V2.2_7_report.pdf | BridgeOutFromControllerUtils | unmatched — not counted | — | H-01 finding location | no |
| 2025-07-29_GMX_Crosschain_V2.2_7_report.pdf | EdgeDataStreamProvider | unmatched — not counted | — | L-01 finding location | no |
| 2025-07-29_GMX_Crosschain_V2.2_7_report.pdf | ClaimHandler | unmatched — not counted | — | L-03, L-04, L-05, L-06, L-07 finding locations | no |
| 2025-07-29_GMX_Crosschain_V2.2_7_report.pdf | LayerZeroProvider | unmatched — not counted | — | L-08 finding location | no |
| 2025-09-24_GMX_JIT_Review_report.pdf | JitOrderHandler | unmatched — not counted | — | Listed in findings locations (e.g., H-01, H-02, M-02, etc.) | no |
| 2025-09-24_GMX_JIT_Review_report.pdf | ExecuteGlvDepositUtils | unmatched — not counted | — | Listed in findings locations (M-01, L-08, L-11) | no |
| 2025-09-24_GMX_JIT_Review_report.pdf | BaseHandler | unmatched — not counted | — | Listed in findings location (M-08) | no |
| 2025-09-24_GMX_JIT_Review_report.pdf | ShiftHandler | own contract | 0xad712e… (selected) `0xad712e1667bc8aaa6c4ea5f47dcd487ddd96bc35` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2025-09-24_GMX_JIT_Review_report.pdf | GlvUtils | unmatched — not counted | — | Listed in findings locations (M-11, L-03) | no |
| 2025-09-24_GMX_JIT_Review_report.pdf | ExchangeRouter | unmatched — not counted | — | Listed in findings location (L-01) | no |
| 2025-09-24_GMX_JIT_Review_report.pdf | AdlHandler | own contract | 0xec0e4a… (selected) `0xec0e4a27a9fbfc64e4915c254b961260df28054c` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2025-09-24_GMX_JIT_Review_report.pdf | OrderHandler | own contract | 0xbad04d… (selected) `0xbad04ddcc5cc284a86493afa75d2beb970c72216` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2025-09-24_GMX_JIT_Review_report.pdf | GlvShiftUtils | unmatched — not counted | — | Listed in findings locations (L-05, L-06, L-20, M-01 in Remediation) | no |
| 2025-09-24_GMX_JIT_Review_report.pdf | Oracle | unmatched — not counted | — | Listed in findings location (L-10) | no |
| 2025-09-24_GMX_JIT_Review_report.pdf | GlvShiftHandler | unmatched — not counted | — | Listed in findings location (L-14) | no |
| 2025-09-24_GMX_JIT_Review_report.pdf | LiquidationHandler | own contract | 0x1bc32e… (selected) `0x1bc32eecaa8f504d2225096649a0347153a37f10` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
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
| 2025-11-04_GMX_Fee_Automations_report.pdf | Config | own contract | 0x5a1344… (selected) `0x5a1344252f0cdfdb765dd5ab97c98734f1d7ed6d` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2025-11-04_GMX_Fee_Automations_report.pdf | TimelockConfig | own contract | TimelockConfig (selected) `0x37e1aeb6118b0106810d2ef7662875c414e39ca4` — deployed 2025-11-17 10:27:27+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
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
| Sherlock_GMX_Update_Audit_Report.pdf | DepositHandler | own contract | 0x839b6e… (selected) `0x839b6e19e54a5862da61974a01675a5f6cc5c8b4` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Sherlock_GMX_Update_Audit_Report.pdf | ExecuteDepositUtils | unmatched — not counted | — | listed in findings | no |
| Sherlock_GMX_Update_Audit_Report.pdf | PositionPricingUtils | unmatched — not counted | — | mentioned in findings | no |
| Sherlock_GMX_Update_Audit_Report.pdf | OracleUtils | unmatched — not counted | — | mentioned in findings | no |
| Sherlock_GMX_Update_Audit_Report.pdf | Calc | unmatched — not counted | — | mentioned in findings | no |
| Sherlock_GMX_Update_Audit_Report.pdf | Precision | unmatched — not counted | — | mentioned in findings | no |
| Sherlock_GMX_Update_Audit_Report.pdf | ErrorUtils | unmatched — not counted | — | mentioned in findings | no |
| Sherlock_GMX_Update_Audit_Report.pdf | Keys | unmatched — not counted | — | mentioned in findings | no |
| Sherlock_GMX_Update_Audit_Report.pdf | Order | unmatched — not counted | — | mentioned in findings | no |
| Sherlock_GMX_Update_Audit_Report.pdf | Market | unmatched — not counted | — | mentioned in findings | no |
| Sherlock_GMX_Update_Audit_Report.pdf | DataStore | own contract | DataStore (selected) `0x2f0b22339414aded7d5f06f9d604c7ff5b2fe3f6` — deployed 2023-07-04 13:13:48+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Sherlock_GMX_Update_Audit_Report.pdf | EventEmitter | own contract | EventEmitter (selected) `0xc8ee91a54287db53897056e12d9819156d3822fb` — deployed 2023-07-04 11:48:15+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Sherlock_GMX_Update_Audit_Report.pdf | StrictBank | unmatched — not counted | — | mentioned in findings | no |
| Sherlock_GMX_Update_Audit_Report.pdf | Oracle | unmatched — not counted | — | mentioned in findings | no |
| Sherlock_GMX_Update_Audit_Report.pdf | OracleStore | unmatched — not counted | — | mentioned in findings | no |
| Sherlock_GMX_Update_Audit_Report.pdf | RoleStore | own contract | RoleStore (selected) `0x3c3d99fd298f679dbc2cecd132b4ec4d0f5e6e72` — deployed 2023-07-04 11:44:17+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Sherlock_GMX_Update_Audit_Report.pdf | Router | unmatched — not counted | — | mentioned in findings | no |
| Sherlock_GMX_Update_Audit_Report.pdf | ExchangeRouter | unmatched — not counted | — | mentioned in findings | no |
| Sherlock_GMX_Update_Audit_Report.pdf | DepositVault | own contract | DepositVault (selected) `0x90c670825d0c62ede1c5ee9571d6d9a17a722dff` — deployed 2023-07-04 13:25:59+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Sherlock_GMX_Update_Audit_Report.pdf | WithdrawalVault | own contract | WithdrawalVault (selected) `0x0628d46b5d145f183adb6ef1f2c97ed1c4701c55` — deployed 2023-07-04 12:20:38+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Sherlock_GMX_Update_Audit_Report.pdf | OrderVault | own contract | OrderVault (selected) `0x31ef83a530fde1b38ee9a18093a333d8bbbc40d5` — deployed 2023-07-04 11:53:55+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Sherlock_GMX_Update_Audit_Report.pdf | SwapHandler | unmatched — not counted | — | mentioned in findings | no |
| Sherlock_GMX_Update_Audit_Report.pdf | OrderHandler | own contract | 0xbad04d… (selected) `0xbad04ddcc5cc284a86493afa75d2beb970c72216` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Sherlock_GMX_Update_Audit_Report.pdf | LiquidationHandler | own contract | 0x1bc32e… (selected) `0x1bc32eecaa8f504d2225096649a0347153a37f10` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Sherlock_GMX_Update_Audit_Report.pdf | ReferralStorage | unmatched — not counted | — | mentioned in findings | no |
| Sherlock_GMX_Update_Audit_Report.pdf | MarketFactory | own contract | MarketFactory (selected) `0xc57c155faccd93f62546f329d1483e0e5b9c1241` — deployed 2023-07-04 13:25:27+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
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
