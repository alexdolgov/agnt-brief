# Agentic Audit Brief: Synthetix

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

- Project: Synthetix (`synthetix`)
- Website: [https://synthetix.io](https://synthetix.io)
- Lifecycle: unknown
- Generated: 2026-07-15T18:30:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: arbitrum, arbitrum-sepolia, base, base-sepolia, ethereum, optimism, sepolia
- Contract surface: 275 unique implementations (459 raw deployments)
- Coverage basis: 0/15 confirmed own live verified implementations (0.0%); conservative 0.0% with 0 needs-review implementation(s)
- DeFi Llama TVL: $1,304,903.00
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for Synthetix. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 16 contract row(s) across arbitrum, arbitrum-sepolia, base, base-sepolia, ethereum, optimism, sepolia. Structural roles: 9 supporting, 4 unclassified, 2 core, 1 infra. 5 row(s) use upgradeable patterns.

## Logic Topography

- Exact-run contract rows: 16
- Structural roles: supporting (9), unclassified (4), core (2), infra (1)
- Contract kinds: contract (13), abstract (3)
- Detected standards: erc1967proxy (5), erc165 (1)
- Frameworks: openzeppelin (4), openzeppelin-upgradeable (1)
- Upgradeable-pattern rows: 5

## Fork Analysis

0 of 89 contracts are derived from known codebases. 89 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0x0aaf30...cb42e3`, chain 1)
- UnnamedContract (`0x0e4296...d77dac`, chain 1)
- UnnamedContract (`0x10a5f7...09275f`, chain 1)
- UnnamedContract (`0x200d50...8f27a9`, chain 1)
- UnnamedContract (`0x2cd12c...7fa5c0`, chain 1)
- UnnamedContract (`0x3f3ed1...08b9f9`, chain 1)
- UnnamedContract (`0x7b9525...1332d8`, chain 1)
- UnnamedContract (`0xb2f30a...f38175`, chain 1)
- UnnamedContract (`0xc011a7...af2a6f`, chain 1)
- UnnamedContract (`0xd71170...9421b3`, chain 1)
- UnnamedContract (`0xe2c565...5a1e3e`, chain 1)
- UnnamedContract (`0x08b2a7...ce42be`, chain 10)
- UnnamedContract (`0x0aaf30...cb42e3`, chain 10)
- UnnamedContract (`0x0e4296...d77dac`, chain 10)
- UnnamedContract (`0x38908e...c74595`, chain 10)
- UnnamedContract (`0x420000...000006`, chain 10)
- UnnamedContract (`0x421dec...f6bf04`, chain 10)
- UnnamedContract (`0x5a41f6...abb3bf`, chain 10)
- UnnamedContract (`0xa0639f...5b12fe`, chain 10)
- UnnamedContract (`0xb2f30a...f38175`, chain 10)
- UnnamedContract (`0xdfa2d3...bc5adb`, chain 10)
- UnnamedContract (`0xe2c565...5a1e3e`, chain 10)
- UnnamedContract (`0x09d515...1a23c3`, chain 8453)
- UnnamedContract (`0x2ae3f1...0dec22`, chain 8453)
- UnnamedContract (`0x2f64ad...488e65`, chain 8453)
- UnnamedContract (`0x3526d4...50d976`, chain 8453)
- UnnamedContract (`0x3d07cb...e2b264`, chain 8453)
- UnnamedContract (`0x420000...000006`, chain 8453)
- UnnamedContract (`0x4d64e1...ef0237`, chain 8453)
- UnnamedContract (`0x4ea71a...3ccacc`, chain 8453)
- UnnamedContract (`0x63f4dd...8cf5b8`, chain 8453)
- UnnamedContract (`0x729ef3...6616d2`, chain 8453)
- UnnamedContract (`0x7656bd...e20711`, chain 8453)
- UnnamedContract (`0x7a1b3d...2b83fd`, chain 8453)
- UnnamedContract (`0x833589...a02913`, chain 8453)
- UnnamedContract (`0x8f80b2...315c32`, chain 8453)
- UnnamedContract (`0x90e42b...67fe38`, chain 8453)
- UnnamedContract (`0xa7163f...1a1676`, chain 8453)
- UnnamedContract (`0xc1cba3...0ee452`, chain 8453)
- UnnamedContract (`0xc302f3...0a292a`, chain 8453)
- UnnamedContract (`0xc74ea7...6302e7`, chain 8453)
- UnnamedContract (`0xcb68b8...09e8cf`, chain 8453)
- UnnamedContract (`0xcbb7c0...ed33bf`, chain 8453)
- UnnamedContract (`0xe8183a...769052`, chain 8453)
- UnnamedContract (`0xede1d0...bd071c`, chain 8453)
- UnnamedContract (`0xfa24be...7e0080`, chain 8453)
- UnnamedContract (`0x0aaf30...cb42e3`, chain 42161)
- UnnamedContract (`0x0e4296...d77dac`, chain 42161)
- UnnamedContract (`0x211cc4...5fe5d2`, chain 42161)
- UnnamedContract (`0x28b69c...1b6b87`, chain 42161)
- UnnamedContract (`0x357510...cf4dbe`, chain 42161)
- UnnamedContract (`0x3ec3fe...795b1e`, chain 42161)
- UnnamedContract (`0x5979d7...800529`, chain 42161)
- UnnamedContract (`0x5d3a1f...52ef34`, chain 42161)
- UnnamedContract (`0x5eff59...221f17`, chain 42161)
- UnnamedContract (`0x7301a8...a3b871`, chain 42161)
- UnnamedContract (`0x806b9d...5bd55a`, chain 42161)
- UnnamedContract (`0x82af49...3fbab1`, chain 42161)
- UnnamedContract (`0x8b6d64...951fa8`, chain 42161)
- UnnamedContract (`0x8cb5d5...35f13b`, chain 42161)
- UnnamedContract (`0x912ce5...9e6548`, chain 42161)
- UnnamedContract (`0x91935e...531c50`, chain 42161)
- UnnamedContract (`0x95af0b...b8da48`, chain 42161)
- UnnamedContract (`0x9ac841...d7cee5`, chain 42161)
- UnnamedContract (`0xa65538...757d60`, chain 42161)
- UnnamedContract (`0xaf88d0...8e5831`, chain 42161)
- UnnamedContract (`0xb2f30a...f38175`, chain 42161)
- UnnamedContract (`0xb36393...15416a`, chain 42161)
- UnnamedContract (`0xb74da9...617124`, chain 42161)
- UnnamedContract (`0xd237f2...f1f3c5`, chain 42161)
- UnnamedContract (`0xd76296...edc659`, chain 42161)
- UnnamedContract (`0xd93544...1d36c6`, chain 42161)
- UnnamedContract (`0xe3ee09...5c19ca`, chain 42161)
- UnnamedContract (`0xe81be4...452365`, chain 42161)
- UnnamedContract (`0xfa86ab...a80232`, chain 42161)
- Proxy (`0x3acf16...38b2f5`, chain 1)
- Proxy (`0xffffff...875847`, chain 1)
- Proxy (`0x19f03f...66170c`, chain 10)
- Proxy (`0xffffff...875847`, chain 10)
- Proxy (`0x0a2af9...e1c9ce`, chain 8453)
- Proxy (`0x181415...4caa61`, chain 8453)
- Proxy (`0x32c222...72c696`, chain 8453)
- Proxy (`0xffffff...875847`, chain 42161)
- ProxyERC20 (`0x8700da...7599b4`, chain 10)
- PythERC7412Wrapper (`0x9cb0b4...b1953a`, chain 8453)
- RewardsDistributor (`0xe92bcd...28263b`, chain 8453)
- TransparentUpgradeableProxy (`0x6c84a8...d0de40`, chain 42161)
- TrustedMulticallForwarder (`0xe2c565...5a1e3e`, chain 8453)
- TrustedMulticallForwarder (`0xe2c565...5a1e3e`, chain 42161)

## Contract Surface Quality

- Logic-topography rows: 16; live-surface rows included: 16 (15 live, 1 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 89/176 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 0/15 (0.0%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 90 own, 86 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 99 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 3 standard proxy/library)
- Proxy deployments represented within implementation groups: 13
- Confirmed-live implementations: 90 of 275 unique; 185 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 0/85
- Verified + Unaudited implementations: 85
- Verified by bytecode match: 0
- Unverified implementations: 190
- Unique implementations: 275
- Raw deployments: 459
- Audits discovered: 1 (1 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2023-04 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 1 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (85)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| AccountModule | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | 8 deployments: optimism `0x12a948...ec89e9`; optimism `0x162847...f4712b`; optimism `0x3b078d...872649`; optimism `0x435358...a003ec`; optimism `0x786e8e...a78923`; optimism `0xd007f8...85ce2d`; base `0x35606a...c69a8d`; base `0xd5fccd...186869` | ⚠️ Unaudited |
| AccountRouter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | 3 deployments: optimism `0x52899a...0f6665`; base `0x7e06f2...a3ac67`; base `0x7f2227...dc7d3e` | ⚠️ Unaudited |
| AccountTokenModule | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | 3 deployments: optimism `0x9977bd...cb9743`; base `0xd10cd9...cfecdd`; base `0xf28e37...bc11a1` | ⚠️ Unaudited |
| AssociateDebtModule | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | 12 deployments: optimism `0x098be3...c97a87`; optimism `0x12e3f8...dc9332`; optimism `0x1588fc...0a36b2`; optimism `0x1a122d...87a0f4`; optimism `0x243670...7da400`; optimism `0x7782a4...93ca30`; optimism `0xc09a31...c21b9b`; optimism `0xd57521...02d025`; optimism `0xe48954...523135`; optimism `0xef35b9...dde7cb`; base `0x2f9158...f231aa`; base `0x3091ac...0c8506` | ⚠️ Unaudited |
| AssociatedSystemsModule | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 2 deployments: base `0x0daea0...8a359c`; base `0xdae65a...917515` | ⚠️ Unaudited |
| AsyncOrderCancelModule | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 3 deployments: base `0x0b08d5...6b11ee`; base `0xd7c1ea...d96b34`; base `0xfb1037...75e86a` | ⚠️ Unaudited |
| AsyncOrderConfigurationModule | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 2 deployments: base `0x72054f...e1b940`; base `0x86770a...b162a4` | ⚠️ Unaudited |
| AsyncOrderModule | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 5 deployments: base `0x171633...58374d`; base `0x4636c5...a6a10e`; base `0x740444...1fe299`; base `0xad3549...56ba77`; base `0xdb497a...069eec` | ⚠️ Unaudited |
| AsyncOrderSettlementModule | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 2 deployments: base `0x98d601...40de1c`; base `0xf32688...538d74` | ⚠️ Unaudited |
| AsyncOrderSettlementPythModule | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 3 deployments: base `0x030c3c...350242`; base `0x66afcc...fa920e`; base `0xb1204d...3598fa` | ⚠️ Unaudited |
| AtomicOrderModule | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 2 deployments: base `0x4e8f55...bffeb5`; base `0x6d9a85...dde85e` | ⚠️ Unaudited |
| CcipReceiverModule | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 2 deployments: base `0x46f438...5c6e7a`; base `0x978d4b...6604c5` | ⚠️ Unaudited |
| CollateralConfigurationModule | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | 4 deployments: optimism `0x5d94ee...8bc647`; optimism `0x7c67fe...a4b08b`; base `0xb16a8b...d0c1a3`; base `0xfc10ce...643a41` | ⚠️ Unaudited |
| CollateralModule | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | 13 deployments: optimism `0x12346f...097f8d`; optimism `0x3caa81...c18e36`; optimism `0x5c4909...8e064e`; optimism `0x5e528c...4e9381`; optimism `0x8e4461...f11ec5`; optimism `0x917271...3df1a3`; optimism `0x9476e8...ad9d9e`; optimism `0xbdef7a...421b64`; optimism `0xcbcdab...944ea6`; optimism `0xeb30f4...626d26`; optimism `0xef738d...9a81f9`; base `0x7ea002...e1ca5d`; base `0xe082bd...ebecb0` | ⚠️ Unaudited |
| CoreModule | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 2 deployments: base `0x7bc5ec...c8414b`; base `0xf12b26...b59202` | ⚠️ Unaudited |
| CoreRouter | adapter | project_anchor | own_supporting | 1 | ethereum | unit-393822 | `0xffffff...875847` | ⚠️ Unaudited |
| CoreRouter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | 5 deployments: optimism `0x32ed65...108002`; optimism `0x71727f...bd840f`; optimism `0xe3b41f...c60e0e`; base `0x6c3edb...31cfe1`; base `0xaae20d...5bc639` | ⚠️ Unaudited |
| CoreRouter | adapter | project_anchor | own_supporting | 1 | optimism | unit-393823 | `0xffffff...875847` | ⚠️ Unaudited |
| CoreRouter | adapter | project_anchor | own_supporting | 1 | base | unit-393828 | `0x32c222...72c696` | ⚠️ Unaudited |
| CoreRouter | adapter | project_anchor | own_supporting | 1 | arbitrum | unit-393825 | `0xffffff...875847` | ⚠️ Unaudited |
| CrossChainUSDModule | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 2 deployments: base `0xcee752...5b433d`; base `0xf5c78b...44e0f5` | ⚠️ Unaudited |
| DebtRepayer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xbd8004...3f7e37` | ⚠️ Unaudited |
| Depot | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x15ed8d...c4fcf5` | ⚠️ Unaudited |
| ExchangeRates | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x73b172...9eb21c` | ⚠️ Unaudited |
| FeatureFlagModule | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 6 deployments: base `0x27a64e...448376`; base `0x569e1a...5bdc8d`; base `0x6a8a99...d8bee5`; base `0x7e2308...42faee`; base `0xd966c6...f58d70`; base `0xe00ce1...deddbc` | ⚠️ Unaudited |
| FeePool | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xebdbac...a86e32` | ⚠️ Unaudited |
| GlobalPerpsMarketModule | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 3 deployments: base `0x0ddf6f...eb3eac`; base `0xdebc93...3342d0`; base `0xf9332c...30319d` | ⚠️ Unaudited |
| GnosisSafe | governance | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0xeb3107...917769` | ⚠️ Unaudited |
| GnosisSafeL2 | governance | non_address_book | standard_proxy_or_library (excluded) | 1 | base | n/a | `0xbb63ca...e83c82` | ⚠️ Unaudited |
| GnosisSafeL2 | governance | non_address_book | standard_proxy_or_library (excluded) | 1 | arbitrum | n/a | `0xd3dfa1...13a93b` | ⚠️ Unaudited |
| InitialModuleBundle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x6dff97...28bc34` | ⚠️ Unaudited |
| Issuer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | 3 deployments: optimism `0x16476e...3bd571`; optimism `0x232ee7...28b889`; optimism `0x49acf9...c133a7` | ⚠️ Unaudited |
| IssueUSDModule | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | 11 deployments: optimism `0x058dc9...d094f7`; optimism `0x0a1708...660400`; optimism `0x3a6061...317524`; optimism `0x5c68b5...33776d`; optimism `0x608bb8...201718`; optimism `0x7beac3...21670c`; optimism `0xcf195e...360fa2`; optimism `0xe63606...3d59a4`; optimism `0xf02b4c...727f92`; base `0xb3da45...baa25c`; base `0xe8f3c0...3763b9` | ⚠️ Unaudited |
| L2TBTC | unknown | project_anchor | own_supporting | 1 | arbitrum | unit-393826 | `0x6c84a8...d0de40` | ⚠️ Unaudited |
| LegacyMarket | unknown | project_anchor | own_supporting | 1 | ethereum | unit-393821 | `0x3acf16...38b2f5` | ⚠️ Unaudited |
| LegacyMarket | unknown | project_anchor | own_supporting | 1 | optimism | unit-393824 | 2 deployments: optimism `0x19f03f...66170c`; optimism `0xa9056e...3348ab` | ⚠️ Unaudited |
| LegacyMarket | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | 2 deployments: optimism `0x24a307...f23dba`; optimism `0x883532...c66f86` | ⚠️ Unaudited |
| LiquidationModule | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | 14 deployments: optimism `0x23e161...b65d10`; optimism `0x4cb44d...e9159e`; optimism `0x6e045e...0b8424`; optimism `0x7a1351...d2ba67`; optimism `0x93ee4d...f5d677`; optimism `0x973e9a...dc354f`; optimism `0xaa2c0b...8e95f9`; optimism `0xd5603b...11d74a`; optimism `0xe1ba4a...bdc965`; base `0x661a88...d6f9ba`; base `0x6f7e8e...237a02`; base `0x72e13c...d807d2`; base `0x94433f...f4ab7b`; base `0xbc4804...07088b` | ⚠️ Unaudited |
| MarketCollateralModule | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | 5 deployments: optimism `0x8b9b5a...3497f1`; optimism `0x91b618...1ac9e9`; optimism `0xbb46f9...2beaaf`; base `0xa29c7b...b729f0`; base `0xf326af...f2b027` | ⚠️ Unaudited |
| MarketConfigurationModule | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 5 deployments: base `0x1174e8...f7f65e`; base `0x38c9e0...de1801`; base `0x6ebf18...389caa`; base `0xb919ed...73229b`; base `0xc29930...e1fa62` | ⚠️ Unaudited |
| MarketManagerModule | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | 3 deployments: optimism `0x0cb4bf...1094dc`; base `0x758a39...5e72e4`; base `0xf273aa...9dd93e` | ⚠️ Unaudited |
| Migration_HanOptimism | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x360825...d27e2e` | ⚠️ Unaudited |
| MultipleMerkleDistributor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | 3 deployments: optimism `0x6fa4b5...f50764`; optimism `0xa059f5...10aa01`; optimism `0xd2a4c0...288421` | ⚠️ Unaudited |
| NodeModule | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | 3 deployments: optimism `0x1fa923...3fe786`; base `0x67a5a7...0c95b1`; base `0x94d473...602b77` | ⚠️ Unaudited |
| OracleRouter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | 3 deployments: optimism `0x27d97f...5562cb`; base `0x3f5ec5...da0a2d`; base `0xb5dc6c...529000` | ⚠️ Unaudited |
| Permit2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x000000...c78ba3` | ⚠️ Unaudited |
| PerpsAccountModule | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 4 deployments: base `0x12de57...79f95f`; base `0x484dd4...7fd4b7`; base `0x4a0471...b8f0d6`; base `0x741702...8d22bf` | ⚠️ Unaudited |
| PerpsMarketFactoryModule | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 3 deployments: base `0x60f83b...07e266`; base `0x9e7317...021659`; base `0xd002ba...acf0ce` | ⚠️ Unaudited |
| PerpsMarketModule | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 3 deployments: base `0x0ac30c...3caa73`; base `0xe0d1a1...ccc7c7`; base `0xe77913...d7dc60` | ⚠️ Unaudited |
| PerpsMarketRouter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 4 deployments: base `0x020eda...c81c3c`; base `0x0f5ccd...7cafc0`; base `0x5e28b2...8e9540`; base `0xdcc310...c06ac6` | ⚠️ Unaudited |
| PerpsMarketRouter | adapter | project_anchor | own_supporting | 1 | base | unit-393829 | `0x0a2af9...e1c9ce` | ⚠️ Unaudited |
| Pool420 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | 7 deployments: optimism `0x22f86f...201cdc`; optimism `0x24c001...95fe1e`; optimism `0x29f2f1...326ab0`; optimism `0x2fd250...77b308`; optimism `0x2ffba7...859113`; optimism `0x5032c1...5fb675`; optimism `0xa3fdf8...b31bea` | ⚠️ Unaudited |
| Pool420Migrate | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x2305f5...b247af` | ⚠️ Unaudited |
| Pool420Withdraw | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | 2 deployments: optimism `0x67108f...071cce`; optimism `0x74177d...6b446d` | ⚠️ Unaudited |
| PoolConfigurationModule | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 3 deployments: optimism `0x3093cb...3bf927`; base `0x2fac35...415eac`; base `0x3f10b7...7a8c46` | ⚠️ Unaudited |
| PoolModule | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 3 deployments: optimism `0x600f30...a13cf3`; base `0x026969...026b03`; base `0xbcc471...29bfb7` | ⚠️ Unaudited |
| PositionManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | 2 deployments: optimism `0x040962...510115`; optimism `0x8d99de...e45cdb` | ⚠️ Unaudited |
| PositionManagerNewPool | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x693cd9...636f48` | ⚠️ Unaudited |
| Proxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 10 deployments: ethereum `0x29a904...65f7d0`; ethereum `0x3eb064...00e037`; ethereum `0x559e84...28b2cf`; ethereum `0x62492f...29af88`; ethereum `0x64d5df...f09a99`; ethereum `0xb440dd...92d309`; ethereum `0xdce506...368a33`; ethereum `0xe05d80...c2bfa3`; ethereum `0xed4699...fd381a`; ethereum `0xf48129...713258` | ⚠️ Unaudited |
| ProxyERC20 | token | project_anchor | own_supporting | 0 | optimism | unit-393672 | `0x8700da...7599b4` | ⚠️ Unaudited |
| PythERC7412Wrapper | unknown | project_anchor | own_supporting | 0 | base | unit-393778 | `0x9cb0b4...b1953a` | ⚠️ Unaudited |
| RetiredSynthsUSD | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x9614b0...dcb1c3` | ⚠️ Unaudited |
| RewardsDistributor | unknown | project_anchor | own_supporting | 0 | base | unit-393768 | `0x45063d...1d6593` | ⚠️ Unaudited |
| RewardsDistributor | unknown | project_anchor | own_supporting | 0 | base | unit-393787 | `0xe92bcd...28263b` | ⚠️ Unaudited |
| RewardsManagerModule | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | 10 deployments: optimism `0x17996f...f541c8`; optimism `0x3d3161...0e43a9`; optimism `0x69052d...21968a`; optimism `0x7cea62...feec27`; optimism `0xcb3707...32e144`; optimism `0xd0683a...51ac63`; optimism `0xe4cf03...a36ce2`; optimism `0xf93e40...f42788`; base `0x184f59...7f2477`; base `0xa51b34...b1675b` | ⚠️ Unaudited |
| SafeDecimalMath | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x84d626...8f3e7b` | ⚠️ Unaudited |
| SimpleNFT | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x0f2816...a28482` | ⚠️ Unaudited |
| SpotMarketFactoryModule | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 2 deployments: base `0x3400f8...7f351b`; base `0x6a7921...2fc7e0` | ⚠️ Unaudited |
| SpotMarketRouter | adapter | project_anchor | own_supporting | 1 | base | unit-393827 | `0x181415...4caa61` | ⚠️ Unaudited |
| SpotMarketRouter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 2 deployments: base `0x293347...db26e7`; base `0x333e0b...853569` | ⚠️ Unaudited |
| Synth | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 8 deployments: ethereum `0x0cbe2d...df2f25`; ethereum `0x112d5f...0a5601`; ethereum `0x297270...44a9c3`; ethereum `0x48414e...e35ea6`; ethereum `0xb03dfc...fcf00d`; ethereum `0xc2bb52...338a10`; ethereum `0xd9e5a0...d71325`; ethereum `0xdf846d...e9188c` | ⚠️ Unaudited |
| Synthetix | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x07ec35...44c0b9`; ethereum `0x457cd1...eca529`; ethereum `0x58a4cd...527bff` | ⚠️ Unaudited |
| SynthetixDepositContract | core_logic | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0xd62595...dbd37b` | ⚠️ Unaudited |
| SynthetixState | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x4b9ca5...2d5b82`; ethereum `0x7e2958...05c185`; ethereum `0xffd79c...a896d3` | ⚠️ Unaudited |
| SynthRouter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 2 deployments: base `0x531217...ab00d1`; base `0x6d200d...d44415` | ⚠️ Unaudited |
| SynthTokenModule | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 2 deployments: base `0x832258...c0f116`; base `0x889d9f...debd31` | ⚠️ Unaudited |
| TokenState | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 6 deployments: ethereum `0x20569b...078a4f`; ethereum `0x249a10...e5a596`; ethereum `0x4dfacf...8361ed`; ethereum `0x6568d9...0529c4`; ethereum `0xbf0933...c159d5`; ethereum `0xcb29d2...d55203` | ⚠️ Unaudited |
| TreasuryStakingRewards | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | 2 deployments: optimism `0x6ace5b...2453e4`; optimism `0xf65063...cf3365` | ⚠️ Unaudited |
| TrustedMulticallForwarder | periphery | project_anchor | own_supporting | 0 | base | unit-393785 | `0xe2c565...5a1e3e` | ⚠️ Unaudited |
| TrustedMulticallForwarder | periphery | project_anchor | own_supporting | 0 | arbitrum | unit-393723 | `0xe2c565...5a1e3e` | ⚠️ Unaudited |
| USDRouter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 3 deployments: optimism `0x95ac74...132637`; base `0x199e5d...23ad16`; base `0x8d8e99...8546ec` | ⚠️ Unaudited |
| USDTokenModule | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 3 deployments: optimism `0xdaf89f...697b91`; base `0x3a650e...5bfd13`; base `0x6e78b9...9601c4` | ⚠️ Unaudited |
| UtilsModule | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 3 deployments: optimism `0x750714...7168d3`; base `0x6dd6e5...2ec76b`; base `0xfcad0f...2f127a` | ⚠️ Unaudited |
| VaultModule | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | 11 deployments: optimism `0x0dce58...a093a8`; optimism `0x255fd9...414e7d`; optimism `0x52c89f...4ca334`; optimism `0xa49ef9...a01158`; optimism `0xa861ed...e06f63`; optimism `0xae3d2a...c3514d`; optimism `0xdb83d8...9a32af`; optimism `0xec09d3...a36a9b`; optimism `0xf69845...29faa0`; base `0xd9f395...cb8783`; base `0xebe6f4...d2a7c2` | ⚠️ Unaudited |
| WrapperModule | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 2 deployments: base `0x20042b...0dbdec`; base `0xf87ce3...66632a` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (190)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-393654 | `0x0aaf30...cb42e3` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-393655 | `0x0e4296...d77dac` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-393656 | `0x10a5f7...09275f` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-393657 | `0x200d50...8f27a9` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-393658 | `0x2cd12c...7fa5c0` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-393659 | `0x3f3ed1...08b9f9` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-393660 | `0x7b9525...1332d8` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-393661 | `0xb2f30a...f38175` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-393662 | `0xc011a7...af2a6f` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-393663 | `0xd71170...9421b3` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-393664 | `0xe2c565...5a1e3e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x00e047...433134` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x058850...eef8c9` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-393665 | `0x08b2a7...ce42be` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-393666 | `0x0aaf30...cb42e3` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-393667 | `0x0e4296...d77dac` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x1b7484...509c07` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x228f4a...086494` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x26d4ff...7587b8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x299ece...be312c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x2b75d3...e1699d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-393668 | `0x38908e...c74595` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x3b5940...5db619` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x3ee05e...34c94b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x3f0535...dbbac4` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-393669 | `0x420000...000006` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-393670 | `0x421dec...f6bf04` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x46eaf2...a67102` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x4e2d8d...2bfc64` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x514130...73b542` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x5764ba...07e130` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-393671 | `0x5a41f6...abb3bf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x5d379c...cc7c9f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x683a66...c3221f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x70da0e...e52ad4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x8a6102...d16585` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x90e42b...67fe38` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-393673 | `0xa0639f...5b12fe` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xa7ae6d...ef672f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xa99616...ce4a0b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-393674 | `0xb2f30a...f38175` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xb36393...15416a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xb606f2...b57e1a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xb87b56...671e91` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-393675 | `0xdfa2d3...bc5adb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xe0385f...e21cf8` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-393676 | `0xe2c565...5a1e3e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xe7f85b...e7c2bf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xfcb6e4...f2c78e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xfdb10b...8b0643` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-393762 | `0x09d515...1a23c3` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-393763 | `0x2ae3f1...0dec22` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-393764 | `0x2f64ad...488e65` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-393765 | `0x3526d4...50d976` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-393766 | `0x3d07cb...e2b264` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-393767 | `0x420000...000006` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-393769 | `0x4d64e1...ef0237` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-393770 | `0x4ea71a...3ccacc` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-393771 | `0x63f4dd...8cf5b8` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-393772 | `0x729ef3...6616d2` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-393773 | `0x7656bd...e20711` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-393774 | `0x7a1b3d...2b83fd` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-393775 | `0x833589...a02913` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-393776 | `0x8f80b2...315c32` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-393777 | `0x90e42b...67fe38` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-393779 | `0xa7163f...1a1676` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-393780 | `0xc1cba3...0ee452` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-393781 | `0xc302f3...0a292a` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-393782 | `0xc74ea7...6302e7` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-393783 | `0xcb68b8...09e8cf` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-393784 | `0xcbb7c0...ed33bf` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-393786 | `0xe8183a...769052` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-393788 | `0xede1d0...bd071c` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-393789 | `0xfa24be...7e0080` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xfe46d0...f5bbed` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-393697 | `0x0aaf30...cb42e3` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-393698 | `0x0e4296...d77dac` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-393699 | `0x211cc4...5fe5d2` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-393700 | `0x28b69c...1b6b87` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-393701 | `0x357510...cf4dbe` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-393702 | `0x3ec3fe...795b1e` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-393703 | `0x5979d7...800529` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-393704 | `0x5d3a1f...52ef34` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-393705 | `0x5eff59...221f17` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-393706 | `0x7301a8...a3b871` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-393707 | `0x806b9d...5bd55a` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-393708 | `0x82af49...3fbab1` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-393709 | `0x8b6d64...951fa8` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-393710 | `0x8cb5d5...35f13b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-393711 | `0x912ce5...9e6548` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-393712 | `0x91935e...531c50` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-393713 | `0x95af0b...b8da48` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-393714 | `0x9ac841...d7cee5` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-393715 | `0xa65538...757d60` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-393716 | `0xaf88d0...8e5831` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-393717 | `0xb2f30a...f38175` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-393718 | `0xb36393...15416a` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-393719 | `0xb74da9...617124` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-393720 | `0xd237f2...f1f3c5` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-393721 | `0xd76296...edc659` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-393722 | `0xd93544...1d36c6` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-393724 | `0xe3ee09...5c19ca` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-393725 | `0xe81be4...452365` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-393726 | `0xfa86ab...a80232` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | base-sepolia | unit-393790 | `0x00ab6b...84dbed` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | base-sepolia | unit-393791 | `0x0148f0...6c69cf` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | base-sepolia | unit-393792 | `0x1c6dfe...370107` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | base-sepolia | unit-393793 | `0x21fdb2...c21a2a` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | base-sepolia | unit-393794 | `0x410eec...97a5e8` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | base-sepolia | unit-393795 | `0x420000...000006` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | base-sepolia | unit-393796 | `0x49ecf2...3d70f3` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | base-sepolia | unit-393797 | `0x4f908d...0db935` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | base-sepolia | unit-393798 | `0x517a74...b52284` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | base-sepolia | unit-393799 | `0x5ca6e1...c60edc` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | base-sepolia | unit-393800 | `0x5dc259...a80486` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | base-sepolia | unit-393801 | `0x60c970...705678` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | base-sepolia | unit-393802 | `0x682f0d...afeaae` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | base-sepolia | unit-393803 | `0x764f4c...f919a1` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | base-sepolia | unit-393804 | `0x7bf65a...59b822` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | base-sepolia | unit-393805 | `0x8069c4...239d39` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | base-sepolia | unit-393806 | `0x8608d5...064e6e` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | base-sepolia | unit-393807 | `0x86771c...856fab` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | base-sepolia | unit-393808 | `0x86b35f...e71985` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | base-sepolia | unit-393809 | `0x961f69...b5416f` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | base-sepolia | unit-393810 | `0x9eb560...b145d9` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | base-sepolia | unit-393811 | `0xa28719...f5d25a` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | base-sepolia | unit-393812 | `0xad2fe7...8fef72` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | base-sepolia | unit-393813 | `0xb3f05d...422a70` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | base-sepolia | unit-393814 | `0xb94c6e...f91528` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | base-sepolia | unit-393815 | `0xc43708...ce3c30` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | base-sepolia | unit-393816 | `0xc8ee21...0085f2` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | base-sepolia | unit-393817 | `0xd4e93f...121f21` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | base-sepolia | unit-393818 | `0xe2c565...5a1e3e` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | base-sepolia | unit-393819 | `0xe51a5c...10fe3a` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | base-sepolia | unit-393820 | `0xf53ca6...250c8d` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | arbitrum-sepolia | unit-393727 | `0x12ae0d...9f7a73` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | arbitrum-sepolia | unit-393728 | `0x1b791d...47525e` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | arbitrum-sepolia | unit-393729 | `0x208b65...268815` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | arbitrum-sepolia | unit-393730 | `0x26c9b8...872512` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | arbitrum-sepolia | unit-393731 | `0x35e81e...2f5956` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | arbitrum-sepolia | unit-393732 | `0x397493...91d818` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | arbitrum-sepolia | unit-393733 | `0x3a1725...6cf243` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | arbitrum-sepolia | unit-393734 | `0x415901...671f08` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | arbitrum-sepolia | unit-393735 | `0x4aff59...ae37fd` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | arbitrum-sepolia | unit-393736 | `0x546648...17dbfc` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | arbitrum-sepolia | unit-393737 | `0x711d4f...6a8a40` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | arbitrum-sepolia | unit-393738 | `0x726cfb...aee78b` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | arbitrum-sepolia | unit-393739 | `0x75faf1...46aa4d` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | arbitrum-sepolia | unit-393740 | `0x764907...2a8e42` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | arbitrum-sepolia | unit-393741 | `0x7b356e...4820e3` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | arbitrum-sepolia | unit-393742 | `0x7fcad8...cd7699` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | arbitrum-sepolia | unit-393743 | `0x88dcca...dbafff` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | arbitrum-sepolia | unit-393744 | `0x8db7e7...70cdb6` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | arbitrum-sepolia | unit-393745 | `0x93d645...fff041` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | arbitrum-sepolia | unit-393746 | `0x980b62...f17c73` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | arbitrum-sepolia | unit-393747 | `0x9ac0a9...d13a8f` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | arbitrum-sepolia | unit-393748 | `0xa13dae...3906c1` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | arbitrum-sepolia | unit-393749 | `0xa73a7b...bdb460` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | arbitrum-sepolia | unit-393750 | `0xb1dca5...a1416d` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | arbitrum-sepolia | unit-393751 | `0xb3a0e9...2dc933` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | arbitrum-sepolia | unit-393752 | `0xc555af...a686d3` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | arbitrum-sepolia | unit-393753 | `0xcf4578...67182d` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | arbitrum-sepolia | unit-393754 | `0xd45eac...f0bd1b` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | arbitrum-sepolia | unit-393755 | `0xd58a25...1c7cbf` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | arbitrum-sepolia | unit-393756 | `0xda7b43...605ec9` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | arbitrum-sepolia | unit-393757 | `0xde0a47...0d01b8` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | arbitrum-sepolia | unit-393758 | `0xe2c565...5a1e3e` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | arbitrum-sepolia | unit-393759 | `0xe487ad...325260` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | arbitrum-sepolia | unit-393760 | `0xecbcb8...ed4f2a` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | arbitrum-sepolia | unit-393761 | `0xf3d410...3a6c87` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-393677 | `0x07049d...d3517e` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-393678 | `0x079e7e...b1f9cb` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-393679 | `0x08c1f6...28c25c` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-393680 | `0x286dda...506f35` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-393681 | `0x29ba9b...467006` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-393682 | `0x3a12e3...1a730e` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-393683 | `0x4ae41c...192245` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-393684 | `0x5f75ea...49cbf0` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-393685 | `0x8715b7...7a0a8f` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-393686 | `0x94c535...bef776` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-393687 | `0x961b26...db742c` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-393688 | `0xa86dcb...df98ca` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-393689 | `0xbee85d...6d8f2e` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-393690 | `0xc4c3fa...fb0a88` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-393691 | `0xcb5d8f...114240` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-393692 | `0xdbe114...2bafc2` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-393693 | `0xe2c565...5a1e3e` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-393694 | `0xea1ef4...fb54c3` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-393695 | `0xf87e23...57e67a` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-393696 | `0xfda819...b87106` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [iosiro.com/audits/synthetix-v3-smart-contract-audit](https://iosiro.com/audits/synthetix-v3-smart-contract-audit) | iosiro | Audit | 2023-04 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 42 | high |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [20635] iosiro.com/audits/synthetix-v3-smart-contract-audit — no match: Extracted contracts from scope section (modules and storage directories) and coverage table. Audit date is the end date of Phase 2 (2023-04-26).

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| iosiro.com/audits/synthetix-v3-smart-contract-audit | AccountModule | unmatched — not counted | — | listed in scope and coverage table | no |
| iosiro.com/audits/synthetix-v3-smart-contract-audit | AccountTokenModule | unmatched — not counted | — | listed in coverage table | no |
| iosiro.com/audits/synthetix-v3-smart-contract-audit | AssociateDebtModule | unmatched — not counted | — | listed in coverage table | no |
| iosiro.com/audits/synthetix-v3-smart-contract-audit | AssociatedSystemsModule | unmatched — not counted | — | listed in coverage table | no |
| iosiro.com/audits/synthetix-v3-smart-contract-audit | CollateralConfigurationModule | unmatched — not counted | — | listed in coverage table | no |
| iosiro.com/audits/synthetix-v3-smart-contract-audit | CollateralModule | unmatched — not counted | — | listed in scope and coverage table | no |
| iosiro.com/audits/synthetix-v3-smart-contract-audit | FeatureFlagModule | unmatched — not counted | — | listed in coverage table | no |
| iosiro.com/audits/synthetix-v3-smart-contract-audit | IssueUSDModule | unmatched — not counted | — | listed in scope and coverage table | no |
| iosiro.com/audits/synthetix-v3-smart-contract-audit | LiquidationModule | unmatched — not counted | — | listed in coverage table | no |
| iosiro.com/audits/synthetix-v3-smart-contract-audit | MarketCollateralModule | unmatched — not counted | — | listed in coverage table | no |
| iosiro.com/audits/synthetix-v3-smart-contract-audit | MarketManagerModule | unmatched — not counted | — | listed in coverage table | no |
| iosiro.com/audits/synthetix-v3-smart-contract-audit | MulticallModule | unmatched — not counted | — | listed in coverage table | no |
| iosiro.com/audits/synthetix-v3-smart-contract-audit | OwnerModule | unmatched — not counted | — | listed in coverage table | no |
| iosiro.com/audits/synthetix-v3-smart-contract-audit | PoolConfigurationModule | unmatched — not counted | — | listed in coverage table | no |
| iosiro.com/audits/synthetix-v3-smart-contract-audit | PoolModule | unmatched — not counted | — | listed in scope and coverage table | no |
| iosiro.com/audits/synthetix-v3-smart-contract-audit | RewardsManagerModule | unmatched — not counted | — | listed in coverage table | no |
| iosiro.com/audits/synthetix-v3-smart-contract-audit | UpgradeModule | unmatched — not counted | — | listed in coverage table | no |
| iosiro.com/audits/synthetix-v3-smart-contract-audit | USDTokenModule | unmatched — not counted | — | listed in coverage table | no |
| iosiro.com/audits/synthetix-v3-smart-contract-audit | UtilsModule | unmatched — not counted | — | listed in coverage table | no |
| iosiro.com/audits/synthetix-v3-smart-contract-audit | VaultModule | unmatched — not counted | — | listed in coverage table | no |
| iosiro.com/audits/synthetix-v3-smart-contract-audit | Account | unmatched — not counted | — | listed in coverage table | no |
| iosiro.com/audits/synthetix-v3-smart-contract-audit | AccountRBAC | unmatched — not counted | — | listed in coverage table | no |
| iosiro.com/audits/synthetix-v3-smart-contract-audit | Collateral | unmatched — not counted | — | listed in coverage table | no |
| iosiro.com/audits/synthetix-v3-smart-contract-audit | CollateralConfiguration | unmatched — not counted | — | listed in coverage table | no |
| iosiro.com/audits/synthetix-v3-smart-contract-audit | CollateralLock | unmatched — not counted | — | listed in coverage table | no |
| iosiro.com/audits/synthetix-v3-smart-contract-audit | Config | unmatched — not counted | — | listed in coverage table | no |
| iosiro.com/audits/synthetix-v3-smart-contract-audit | Distribution | unmatched — not counted | — | listed in coverage table | no |
| iosiro.com/audits/synthetix-v3-smart-contract-audit | DistributionActor | unmatched — not counted | — | listed in coverage table | no |
| iosiro.com/audits/synthetix-v3-smart-contract-audit | Market | unmatched — not counted | — | listed in coverage table | no |
| iosiro.com/audits/synthetix-v3-smart-contract-audit | MarketConfiguration | unmatched — not counted | — | listed in coverage table | no |
| iosiro.com/audits/synthetix-v3-smart-contract-audit | MarketCreator | unmatched — not counted | — | listed in coverage table | no |
| iosiro.com/audits/synthetix-v3-smart-contract-audit | MarketPoolInfo | unmatched — not counted | — | listed in coverage table | no |
| iosiro.com/audits/synthetix-v3-smart-contract-audit | OracleManager | unmatched — not counted | — | listed in coverage table | no |
| iosiro.com/audits/synthetix-v3-smart-contract-audit | Pool | unmatched — not counted | — | listed in coverage table | no |
| iosiro.com/audits/synthetix-v3-smart-contract-audit | RewardDistribution | unmatched — not counted | — | listed in coverage table | no |
| iosiro.com/audits/synthetix-v3-smart-contract-audit | RewardDistributionClaimStatus | unmatched — not counted | — | listed in coverage table | no |
| iosiro.com/audits/synthetix-v3-smart-contract-audit | ScalableMapping | unmatched — not counted | — | listed in coverage table | no |
| iosiro.com/audits/synthetix-v3-smart-contract-audit | SystemAccountConfiguration | unmatched — not counted | — | listed in coverage table | no |
| iosiro.com/audits/synthetix-v3-smart-contract-audit | SystemPoolConfiguration | unmatched — not counted | — | listed in coverage table | no |
| iosiro.com/audits/synthetix-v3-smart-contract-audit | Vault | unmatched — not counted | — | listed in coverage table | no |
| iosiro.com/audits/synthetix-v3-smart-contract-audit | VaultEpoch | unmatched — not counted | — | listed in coverage table | no |
| iosiro.com/audits/synthetix-v3-smart-contract-audit | InitialModuleBundle | unmatched — not counted | — | listed in coverage table | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | `0xffffff...875847` | CoreRouter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | `0xffffff...875847` | CoreRouter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0x32c222...72c696` | CoreRouter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0xffffff...875847` | CoreRouter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0x6c84a8...d0de40` | L2TBTC | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x3acf16...38b2f5` | LegacyMarket | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | `0x19f03f...66170c` | LegacyMarket | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0x0a2af9...e1c9ce` | PerpsMarketRouter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | `0x8700da...7599b4` | ProxyERC20 | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0x9cb0b4...b1953a` | PythERC7412Wrapper | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0x45063d...1d6593` | RewardsDistributor | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0xe92bcd...28263b` | RewardsDistributor | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0x181415...4caa61` | SpotMarketRouter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0xe2c565...5a1e3e` | TrustedMulticallForwarder | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0xe2c565...5a1e3e` | TrustedMulticallForwarder | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 80 |
| upstream | 0 |
| standard_library | 5 |
| needs_review | 190 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Address-book scope dispositions: 0 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 42 unmatched
- Matched-own operational status: 0 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=1
- Match method counts: n/a

Zero-match audit list:

- [20635] iosiro.com/audits/synthetix-v3-smart-contract-audit

Fork inheritance lineage and inherited audits are included when available.
