# Agentic Audit Brief: Aarna Protocol

## Export Authority

- Production state: **published scope**
- Raw selected rows: 2 across 1 audit(s)
- Eligible audit results: 3 (1 matched; 2 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e40c73181a386361babecc6895e0f6c5587548f92814db09f88491f8b4a38d92`

## Project Overview

- Project: Aarna Protocol (`aarna-protocol`)
- Website: [https://www.aarna.ai](https://www.aarna.ai)
- Lifecycle: unknown
- Generated: 2026-07-24T14:10:00.000Z
- Pipeline run: brief-deployer-expansion-all-20260724-v1
- Chains: arbitrum, base, ethereum, sonic
- Contract surface: 260 unique implementations (261 raw deployments)
- Coverage basis: 2/5 confirmed own live verified implementations (40.0%); conservative 40.0% with 0 needs-review implementation(s)
- DeFi Llama TVL: $501,712.82
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for Aarna Protocol. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 5 contract row(s) across arbitrum, base, ethereum, sonic. Structural roles: 4 core, 1 supporting. No upgradeable pattern was identified in these rows.

## Logic Topography

- Exact-run contract rows: 5
- Structural roles: core (4), supporting (1)
- Contract kinds: contract (5)
- Detected standards: ownable (4), ownable2step (4)
- Frameworks: openzeppelin (4)
- Upgradeable-pattern rows: 0

## Fork Analysis

0 of 26 contracts are derived from known codebases. 26 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0x3d2a8c1cfb03b6ac5c7171076253bd05622c22e9`, chain 1)
- UnnamedContract (`0x3e20112ae272b8af63477452c127ad9a452cd5d1`, chain 1)
- UnnamedContract (`0x4376158ac32c050c86cad8a139dcd9bacef51a9c`, chain 1)
- UnnamedContract (`0x6936df2d345605b3af42b880660b9717f2ae66dd`, chain 1)
- UnnamedContract (`0x72ec8447074dc0bfbedfb516cc250b525f3a4aba`, chain 1)
- UnnamedContract (`0xb157aeeafade31918c7c6011ce9d001c3de22df5`, chain 1)
- UnnamedContract (`0xb9c1344105faa4681bc7ffd68c5c526da61f2ae8`, chain 1)
- UnnamedContract (`0xceb202d3075be4abd24865fd8f307374923948ad`, chain 1)
- UnnamedContract (`0xcfff0e29cd34c60b6eb02b022ab45ab1d571dfec`, chain 1)
- UnnamedContract (`0xe56e418ad7fc784011b93360a4b4a84211d22f24`, chain 1)
- UnnamedContract (`0xf30f62963cce132f32306d7f18a8587958b30ea9`, chain 1)
- UnnamedContract (`0x213419cbaf24180ac24271093af3122c71bfb911`, chain 8453)
- UnnamedContract (`0x383b4234996c1db3a8491588a579304e4e5b9a13`, chain 8453)
- UnnamedContract (`0x6469d15333e7d6a8bdad18a18c251706570bc318`, chain 8453)
- UnnamedContract (`0x748d974d8c1d380da29db16d0840788949b99f63`, chain 8453)
- UnnamedContract (`0x9dc3f0f25d793bee5eec75da3058b0c919f71166`, chain 8453)
- UnnamedContract (`0xb4e62fae267331142a71cbd0ef6e8285e9faf52c`, chain 8453)
- UnnamedContract (`0xb56aa0cbee33c4b6b281027ebaa7697aad42a853`, chain 8453)
- UnnamedContract (`0xd3327f5102f59e57f34ee136d3be0b80d7bb2963`, chain 8453)
- UnnamedContract (`0xef3cebf4f1539d02ec58fc5525ac791e015f6602`, chain 8453)
- UnnamedContract (`0xfac8b52ebd53863222fddcd8e8af30c1915b095d`, chain 8453)
- AtvAdapter (`0x057a2a173468630c9f150996256821c131dc9efc`, chain 8453)
- AtvFactory (`0x053136b9a3826e72e6b8b692fd607ea8cd72bad4`, chain 8453)
- AtvMorphoBlueIntegration (`0x3c29eff521e6f8f8488eb9dfe7c81386d83db9d8`, chain 8453)
- PendleAdapter (`0x45afbac8be713d5f7cb42a7b1e6d034a681a2dff`, chain 1)
- SafeProxy (`0xc2b275d096403e2e4160b8af440ba47f89d9f49b`, chain 1)

## Contract Surface Quality

- Logic-topography rows: 5; live-surface rows included: 5 (5 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 26/26 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 2/5 (40.0%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 26 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 234 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 1 standard proxy/library)
- Proxy deployments represented within implementation groups: 5
- Confirmed-live implementations: 26 of 260 unique; 234 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 2/66
- Verified + Unaudited implementations: 64
- Verified by bytecode match: 0
- Unverified implementations: 194
- Unique implementations: 260
- Raw deployments: 261
- Audits discovered: 3 (3 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 1
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2025-10 (fresh)
- Audit staleness (calendar age): 1 fresh, 1 aging, 0 stale, 1 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 2 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| Failsafe | Tier 2 | 2 | 3.0% | 2025-10 |

## Contract Surface

### ✅ Verified + Audited (2)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| AtvAdapter | unknown | project_anchor | own_supporting | 0 | base | unit-225498 | `0x057a2a173468630c9f150996256821c131dc9efc` | ✅ Audited |
| AtvMorphoBlueIntegration | unknown | project_anchor | own_supporting | 0 | base | unit-225501 | `0x3c29eff521e6f8f8488eb9dfe7c81386d83db9d8` | ✅ Audited |

### ⚠️ Verified + Unaudited (64)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| Address | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xebe8b1f4701267bab8993fb5f804f842fb7af297` | ⚠️ Unaudited |
| AFiASRT | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1b14fe61a5c215138855246bd011a0d80d2b4617` | ⚠️ Unaudited |
| AFiBase | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0b895a9b6b5d0aa48292695c5d244ec5f14e4d02` | ⚠️ Unaudited |
| AFiBoosterTL | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1504e94b4c2c8a6e8c7c84aa9323f3fea37bc9ac` | ⚠️ Unaudited |
| AFiFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3a66dd5d1be2179fda40631708f334fc04a7593c` | ⚠️ Unaudited |
| AFiManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0020e7ebf874cd2b2e0378eba007cbc715f373b6` | ⚠️ Unaudited |
| AFiManagerV2_1 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8b21a81c58c20ebc0757c71870c61485ea16d1a6` | ⚠️ Unaudited |
| AFiOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x11747c3284b5f8088e815e5cf2e5c3062da55d5b` | ⚠️ Unaudited |
| AFiOracleV2_1 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x005aed2732db6230914ca49fb935d7f9f690a2b8` | ⚠️ Unaudited |
| AFiPassiveRebalanceStrategies | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x226b02e6ca55bb634cbb1412a644f4d97036bc49` | ⚠️ Unaudited |
| AFiPassiveRebalanceStrategiesV2_1 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x11dd82ceadf6874bd8f2916c26a65f13c806112d` | ⚠️ Unaudited |
| AFiStorage | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x24ba60e3c99c0bacb4e237e862542e65491eb741` | ⚠️ Unaudited |
| AFiStorageV2_1 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7f91aaca4b90643374dc5050585d00f2806d7465` | ⚠️ Unaudited |
| AFiTimeLock | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1a7a692c923c1ec403eff0b17fc950ec59fa184c` | ⚠️ Unaudited |
| APRRecommendation | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x206710c3db14593458eb9fb318dba53e582007ee` | ⚠️ Unaudited |
| ArbitrumBridgeReceiver | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x42480c37b249e33aabaf4c22b20235656bd38068` | ⚠️ Unaudited |
| ATokenInstance | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | `0x625e7708f30ca75bfd92586e17077590c60eb4cd` | ⚠️ Unaudited |
| AtvASRT | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1ef6900f89476b20b0645ae4f510164c37722a91` | ⚠️ Unaudited |
| AtvBase | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x0955b91424208c699d85cda85644736143b68dc4` | ⚠️ Unaudited |
| AtvBoosterTL | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x283775555757e74077d101a7cc76b6e86dd9ae88` | ⚠️ Unaudited |
| AtvDexAdapter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x3e4029472c4618c777b80715f7975c6c85d6ecf8` | ⚠️ Unaudited |
| AtvFactory | unknown | project_anchor | own_supporting | 0 | base | unit-225497 | `0x053136b9a3826e72e6b8b692fd607ea8cd72bad4` | ⚠️ Unaudited |
| AtvLeverageBundler | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x0b6291d7df80ef789772aaff633c807538e784d2` | ⚠️ Unaudited |
| AtvManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x0bc6b965b42d9429d3717d5cc35f9d9aace34b8e` | ⚠️ Unaudited |
| AtvOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x0faac27e4a9c1bbd02bb959330551f2d4484a70e` | ⚠️ Unaudited |
| AtvPassiveRebalanceStrategies | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x043e92d4672836d9fb481864325b7a7555662a4d` | ⚠️ Unaudited |
| AtvStorage | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x07ef18636a0e23b43f68264660940740e6d11d39` | ⚠️ Unaudited |
| AtvWrappedBoosterTL | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x04dd4466f633c5440bd1a2b1106963c442ba27c6` | ⚠️ Unaudited |
| BaseBulker | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xbde8f31d2ddda895264e27dd990fab3dc87b372d` | ⚠️ Unaudited |
| BaseVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x332e81368daec705612ff06b3a80b10ae1e5f110` | ⚠️ Unaudited |
| Bulker | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x74a81f84268744a40febc48f8b812a1f188d80c3` | ⚠️ Unaudited |
| CErc20 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x158079ee67fce2f58472a96584a73c7ab9ac95c1` | ⚠️ Unaudited |
| CErc20Delegator | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x5d3a536e4d6dbd6114cc1ead35777bab948e3643` | ⚠️ Unaudited |
| CEther | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4ddc2d193948926d02f9b1fe9e1daa0718270ed5` | ⚠️ Unaudited |
| Comet | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x14d2c9dd16304e8a95fc8395a37f17b6c15239c6` | ⚠️ Unaudited |
| CometExt | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x1b2e88cc7365d90e7e81392432482925bd8437e9` | ⚠️ Unaudited |
| CometFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1c1853bc7c6bff0d276da53972c0b1a066db1ae7` | ⚠️ Unaudited |
| CometProxyAdmin | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1ec63b5883c3481134fd50d5daebc83ecd2e8779` | ⚠️ Unaudited |
| CometRewards | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1b0e765f6224c21223aea2af16c1c46e38885a40` | ⚠️ Unaudited |
| Comptroller | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x178053c06006e67e09879c09ff012ff9d263df29` | ⚠️ Unaudited |
| ConfiguratorProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x316f9708bb98af7da9c68c1c3b5e79039cd336e3`; ethereum `0xcfc1fa6b7ca982176529899d99af6473ad80df4f` | ⚠️ Unaudited |
| ConfiguratorProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xb21b06d71c75973babde35b49ffdac3f82ad3775` | ⚠️ Unaudited |
| ConstantPriceFeed | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd72ac1bce9177cfe7aeb5d0516a38c88a64ce0ab` | ⚠️ Unaudited |
| DataConsumerWithSequencerCheck | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x32221633bf43e85ecf330fb6342b7098d4d1b4fc` | ⚠️ Unaudited |
| JumpRateModel | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5562024784cc914069d67d89a28e3201bf7b57e7` | ⚠️ Unaudited |
| Liquidator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb61c66a4d83da8e04f40ca844c0c4b508ca81fa3` | ⚠️ Unaudited |
| MainnetBulker | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa397a8c2086c554b531c02e29f3291c9704b00c7` | ⚠️ Unaudited |
| Maximillion | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf859a1ad94bcf445a406b892ef0d3082f4174088` | ⚠️ Unaudited |
| NCStableCoinInterestRateModel | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x645e758796408efdd65bbbd877e8ebceeb231f4c` | ⚠️ Unaudited |
| NCStandardInterestRateModel | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x18b5b6696e6569f437f48b111734d72b225d14a7` | ⚠️ Unaudited |
| PendleAdapter | unknown | project_anchor | own_supporting | 0 | ethereum | unit-225488 | `0x45afbac8be713d5f7cb42a7b1e6d034a681a2dff` | ⚠️ Unaudited |
| PendleMarketV3 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x3f5ea53d1160177445b1898afbb16da111182418` | ⚠️ Unaudited |
| PriceOracleProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1653c07fa6ce103b43925dddb5e31ca568e53ba1` | ⚠️ Unaudited |
| SafeProxy | unknown | project_anchor | own_supporting | 1 | ethereum | unit-225510 | `0xc2b275d096403e2e4160b8af440ba47f89d9f49b` | ⚠️ Unaudited |
| ScalingPriceFeed | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x23a982b74a3236a5f2297856d4391b2edbbb5549` | ⚠️ Unaudited |
| StakingManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x1ed5f11f8627fb369c2ddfc3722cb55de3e4efdf` | ⚠️ Unaudited |
| SYAtvAdapter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa394a082273998bdaeea3f1ee6435008d6f6d3a7` | ⚠️ Unaudited |
| TimeDelayModule | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x0faac27e4a9c1bbd02bb959330551f2d4484a70e` | ⚠️ Unaudited |
| Timelock | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x3fb4d38ea7ec20d91917c09591490eeda38cf88a` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | arbitrum | n/a | `0x9c4ec768c28520b50860ea7a15bd7213a9ff58bf` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xa5edbdd9646f8dff606d7448e414884c7d905dca` | ⚠️ Unaudited |
| WhitePaperInterestRateModel | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8c159cfd11677a4f2fe4fd0278dd37a95b986069` | ⚠️ Unaudited |
| WrappedBoosterTL | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x401cf9c74f83f53f0a8a804b49d3aeeee289b8bc` | ⚠️ Unaudited |
| WstETHPriceFeed | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4f67e4d9bd67efa28236013288737d39aef48e79` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (194)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x18b28bceb269d8b79dbee57fbc34a0514f6e2a4d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x23cbdbfff5bf475f87d3f28410cbecf566f61d5b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2421f0701ded65f88f0c4e0339ab0358d422aaa1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x25b5720e9b20be18b4d020153ac26d957c83e341` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x285617313887d43256f852cae0ee4de4b68d45b0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x289a2a20b74f065ad4b630d6a75f3bf8e6477f8a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2b8463052e2878f9b38ae9627344ecc88111617d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2c624ba2c75614f1cdf708c766a43c08c2b1c6a5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2f0899b5badca07f966cd6e4910d49d37cdf1b39` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3c8e93074d402c8b2203b911c6ea94a366719676` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-225485 | `0x3d2a8c1cfb03b6ac5c7171076253bd05622c22e9` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-225486 | `0x3e20112ae272b8af63477452c127ad9a452cd5d1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3f3e139b54510d03c70b9dbb197a2cb258144638` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x41a533b2480de772d3c5571dd35c1c25c3ae4d58` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x435fcaf116c9704333bde5c497f93aef30e99941` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-225487 | `0x4376158ac32c050c86cad8a139dcd9bacef51a9c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x475e2220843ad8488d205e5ed3cab55e66ae2ce6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4996a95cd2646db69d79a4736540b9c283986dfa` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4d484347f8f342b7d16e008dbce8db5e74ccbb4f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x507d61bf4b5bec45525860ebf108bb0f3d35adcc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x50cb5e9a07f5c8db997b236761622931364d634e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5672c892fb72e25070104e734119bb62ff9bc124` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x59a9e6ebcd68639a11c30bff8c4044552763c7ac` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5b2ffbad40819ae059c68a8446e66b7a890edefc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5ebad784813bddfe8f2374103e7b9d9c955959d7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5fc38d360908c63a7742e5b166f716a3adb22bf2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5ff0e8a83ef0ea6b0030b373c4986f068b456bad` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x606b90bd5845d9943d407f48d902c49b61a30958` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x659c4d54d5507aa004ce486cc8a4d5da1b271d2b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-225489 | `0x6936df2d345605b3af42b880660b9717f2ae66dd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6a38305d86a032db1b677c975e6fe5863cf1edd2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6e7526f542c0589ca59a0d99c5db718255534cd2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6ee586e60edf86239e6b10e2edfeb15660093014` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x70818eedb4a856c0f124591b46129928440740cb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x70b9bd72c912a96e67aadeff9ab6b6e1b9a78ba7` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-225490 | `0x72ec8447074dc0bfbedfb516cc250b525f3a4aba` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x78ee70a512f88d005279623d05d521c355f5fda1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7c870584c26822c8330149565ace8837c3d5f0eb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7d29e35ac5dac739bd76089274420fa3ce0cf43a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x801d075eb20ee982ba83218210a9f72715c5f0e9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x870c084cb1d737f372e9ea9a2b95cea8b62dd94c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8d47fc778c0084d97aa5abf7c669e99920fe6824` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x90b4d64f840a7d214d7cc791d010c43b11cd64a8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x90f8c146d7a037488c99e8d0609e3e80a8772d64` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x96d35637d014bbee006e7b39a84292e24946a158` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9deb2b3593eb4e1838b233d386a9358448f753e3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa00d8d52354f48402ec78230a6aaf7ccd78751a5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa0164bc9f1ce3f0034a4f0610c36b6d924b63a68` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa17581a9e3356d9a858b789d68b4d866e593ae94` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa325906696abdef3069e06c073f29c34af1a7e0c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa4352837af2493748eeb434d21040bd07b483dc4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa4c0babb949569cc20f83ee891f620aaeed9a5ab` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xac096b7df4b18587bc44126a09b413d3baddf5fb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb135e7a5f5c25a0ff744ebbde12806dcbdd47b48` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-225491 | `0xb157aeeafade31918c7c6011ce9d001c3de22df5` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-225492 | `0xb9c1344105faa4681bc7ffd68c5c526da61f2ae8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xba1e773597d5481d69eeff0f9c139dca37b442b4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xba40d65aae3ffccecab82e7e392661ccb297b542` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc1fef79117a568b5adda8436c61e1c58cfc36d5d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc3d688b66703497daa19211eedff47f25384cdc3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc465f585241971d209247d9df8338b6b0d535fa8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcb00e3d343667bab2f6ad8fab066df2cec180cd0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcb7426207a40b7477a890a949e31993884b7e138` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcc87816b4012d0056ccf3ed6bc7991cfb9a3053e` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-225493 | `0xceb202d3075be4abd24865fd8f307374923948ad` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xceceb0f8a14d92c423963d7fc519185fc9b69598` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-225494 | `0xcfff0e29cd34c60b6eb02b022ab45ab1d571dfec` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd018a9ba579d3882748c1f1e4dad7203926dc43b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd0819625a4d3e93881744d1de2b75ae3455363a9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd61c33624cccb3854749a72da47e0d21351bc3ba` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd851568fe222b312bebe1781a6179589fdda4a05` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xda6238fbddd23a0f74f6a03227124e44c2266f46` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdc1c6f2f8582351b3be359025dd300e7b93e42d6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xde197e9267d2b90ef5d4fc545c61432dae55832b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe2c1f54aff6b38fd9df7a69f22cb5fd3ba09f030` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe3cb06cb58e84f96aede7d2d703f0b969bb69a81` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-225495 | `0xe56e418ad7fc784011b93360a4b4a84211d22f24` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-225496 | `0xf30f62963cce132f32306d7f18a8587958b30ea9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf4d1ee82a413e46d76faeae3403f498cd0612669` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf7966d268b262e8376ff80a73e26b4feebc0f639` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf95afb206b04633d3ddb6028b3d136aad01822e0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfab125812cfbc585661e5abef81ba7b83607390c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x13da4847c80732cab3341f459a094e042af98691` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x1c50033ce4d8d66ff79a71b145974925a72a93a2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x217f6d9e3597fd61d50017c26d8c03531d2fef1e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x27c33cf8fe5220438f6085ab04cfceb3d33ac3cc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x2f2632527a2990e6c9693b395253bfad7e02967d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x32221633bf43e85ecf330fb6342b7098d4d1b4fc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x3409790802765d020ab02121f01bd4fad71da6ae` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x45ef934f39e58f4fe64ff593b7d79ee73122cf06` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x4700bd9cc7232f243945b4a55834ab84563e4e9d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x5077974e22e3f433e63e4526b5709fa8a68b16b9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x73ddcc0452f916652a080bae8da2a70943f7e69d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x74b83c29112de7c23c2422c2668562e13eec0a57` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x964421fc080c2603395b8d2ad3ce280bddb8eab1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xe6c3e4f787612a4c93152222138853019890c08f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xebe8b1f4701267bab8993fb5f804f842fb7af297` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xf2fd709f0e1203210d759866a90f815585dc796d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x115637016accafce537a7b9cd28546475ceec9e2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x17020ed4081cc98c27091c387916846569255e42` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-225499 | `0x213419cbaf24180ac24271093af3122c71bfb911` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x27c33cf8fe5220438f6085ab04cfceb3d33ac3cc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x2f2632527a2990e6c9693b395253bfad7e02967d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x33c0a9805a6370f4063c7514333b1f018dc6e9d5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x3409790802765d020ab02121f01bd4fad71da6ae` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x347fa51f32f3bd99ac5308f5c6e4e24c663a95e6` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-225500 | `0x383b4234996c1db3a8491588a579304e4e5b9a13` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x3e4029472c4618c777b80715f7975c6c85d6ecf8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x4665e219dae4a18de15d1afae17bb259ea231945` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x4a809464ba6d663caae7065c4c0ff276b270f710` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x51c2e75281683ddf9208714f9e4729c8af860f32` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x54723e58d694072d32e19d8af0cd30585bff8535` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x561006c341c87ec2c3336d64fc81d845955ee988` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x5e790c37d8d652d269391299b7d3cf8d528c46db` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x62872a33611e9fa205f948a7989240687fe170ca` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x62e727fed8b52185757e371f9f4d1c561acf25bd` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-225502 | `0x6469d15333e7d6a8bdad18a18c251706570bc318` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x647874867e0a5b7a1e79bde9aa37b42632dda009` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x6511a40fd96719b91a4f691e311adbde9fcc0f17` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x6b4cebfe198604ee90eae9d1f559ef40aca15c30` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x6b8019b89fa7aedf830373296699e1ea7ff42614` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x71eb0be7ffb712504df9231d817946512a9d3481` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-225503 | `0x748d974d8c1d380da29db16d0840788949b99f63` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x74b83c29112de7c23c2422c2668562e13eec0a57` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x7599305c6971fcd854e7b0a4d1435637f5602a50` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x7f7a2a12f4a9cc31ac206fe407d47d2bbf38b4c0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x87ee87c3063ec531c0a707af6e96d1f5b9fc02dc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x88b5ce20d193afd9854ec75bfc8a13865a3c9c31` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x92ec373cd641b486ec312207ade2b7f29792e031` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x9748f394b8c1d1cf5c08ac5f0f7f26b0dfa2e45e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x9799e6ccb8d911f07beee2ec2787b215a9307aea` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x9d8be8f9e0403819677a22a4e58f40c9356e891b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-225504 | `0x9dc3f0f25d793bee5eec75da3058b0c919f71166` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x9e3d86ad41fc44a9bb8a486673c3eff867f48e3b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x9e740a9f7fb50e13ec74ec09ebd0f2a02af0bc26` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xa1b63eb0c1fdc4d88c9d9f6d9985506bfa999c24` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xa2913fe70ddf6a43428c8b2d9326dbde4f9d1cd9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xa4e26449eb2aac50e5d7a788a59359b65a32c990` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xacb7a08373773d7898ff16bb3977f1c5877e2130` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-225505 | `0xb4e62fae267331142a71cbd0ef6e8285e9faf52c` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-225506 | `0xb56aa0cbee33c4b6b281027ebaa7697aad42a853` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xb87dc0b82118145443dde8cc3651e4a867d05e4f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xbc280cd1a71734b24a95ab8cb0e3ddb1e47bb0d2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xbe3389847a89275e0c7c77003187b024853c644f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xc052573a2856ce7aeb7f2092b8a252ef6564de2c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xcbabadf1d025f3ade6f9708ca9b998ada39e2cda` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xd1f75de096bae7a8d269bbdd3b341d4d05cfe2c2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xd2d63862e28a25d87943963e1fca1c32b428d9aa` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-225507 | `0xd3327f5102f59e57f34ee136d3be0b80d7bb2963` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xd9388383fe4b49735a0d4877d0568769999a944a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xdc9a4a3b68f386fb12b5fcfdaee80c6dc9f3fc37` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xdfc33d275d797ddf34cf6095a83d572f13cbce63` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xe26c8d611db34ef818b8a3539c6db657f91e248d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xe414ff8d7d14e077dba56b7894624c554f31f81e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xed9f04d99fa07666cd1f2467774ff5e37e6bacef` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-225508 | `0xef3cebf4f1539d02ec58fc5525ac791e015f6602` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xf2fd709f0e1203210d759866a90f815585dc796d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xf4e97c2d645f26ca1d44bbef62d63abadd9b1df8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xf88730cc17567389ded22188129fa7fa71709b5b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-225509 | `0xfac8b52ebd53863222fddcd8e8af30c1915b095d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xff7b143d3dfdc84877a7010c1c058fa6cff14b71` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x0955b91424208c699d85cda85644736143b68dc4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x14fc9206890df1f1aff787bccf257e1f38aac4f2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x15f7ad22caa786b1237b27d4324c7e4a93c5e66b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x217f6d9e3597fd61d50017c26d8c03531d2fef1e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x368a8789fc1ffd850eb25b735788a395d656913a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x45ef934f39e58f4fe64ff593b7d79ee73122cf06` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x4700bd9cc7232f243945b4a55834ab84563e4e9d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x5077974e22e3f433e63e4526b5709fa8a68b16b9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x56a8a6b10861921bda70580f5fff630135088926` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x60fe0543a0cf3084d62131c7c68dc553778e1851` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x66ec16c514e2e0ff901365323389c0e35ddbd010` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x70bb315343580aa7a93159ae314d0d6fa63764b5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x724c199a8b8f987eb1985710e73db23f0f6bc4db` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x73ddcc0452f916652a080bae8da2a70943f7e69d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x82118c5223ba3c597d34b8ee5fcde158b1dc02f7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x84f383390317d88276cccc2aafe46359739feb79` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x887d6e3e25d3e2c3b35ffa399d08de4291765214` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x8a06e2f3cc3e14b24024bfcf3f73e978a7724432` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x91969529fe630320f9a5661504c6c6e6cca150f4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x92457c32bfec86b91bbe09bdf1cc231628afcd15` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x964421fc080c2603395b8d2ad3ce280bddb8eab1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xa667c81578edbcce7c5a5ba7ccf0ad826b19ec08` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xc856b2a456fdc0193361ef305fd3b5e458c3b9cf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xc8716db2f5f7b2e875169c5f9a94b5dabc5d0375` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xd0893b002295d0041d40923f9d95fd343a7bb0c1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xd90db03a7069fc11ea09e3805ec69cb2766d5e3a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xda5b9c29cd36cd82991811a8e9e7bee42e946051` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xdd60547b8c7a717ab6109badb4a2614fe4072d56` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xe7191b3e6f4bc66e71ebdd1360fc9131bd829c86` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xebe9339e17fd27125a06206b8d67d215452723e8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xf2faa0e6a942ede988f867e201f5a793bbc0fbdb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xf97abc1dfd6e09d48c25d130de524b52f3a61d67` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xfba03f6d1a2b5d438fca0c263886483fd665d012` | ❓ Unverified |

## Deployer Expansion Inventory

These rows are additive inventory from `project_contracts.discovery_source=deployer_expansion`; they do not change scope matching, coverage, or logic topography in this brief.

- Source: `project_contracts.discovery_source=deployer_expansion`
- Decision run: `deployer-candidate-production-20260712`
- Total contracts: 174
- Live contracts: 0
- Unknown liveness contracts: 174
- Source-verified contracts: 0
- Currently scope-matched contracts retained as-is: 0
- Classification counts: unverified unclassified=174

| Classification | Contract | Address-Book Class | Role | Liveness | Source | Decision | Deployer |
|---|---|---|---|---|---|---|---|
| unverified unclassified | UnnamedContract<br>`0x18b28bceb269d8b79dbee57fbc34a0514f6e2a4d` | non_address_book | unknown | unknown | unverified | n/a | `0xa10d2e55f0f87756d6f99960176120c512eb3e15` |
| unverified unclassified | UnnamedContract<br>`0x23cbdbfff5bf475f87d3f28410cbecf566f61d5b` | non_address_book | unknown | unknown | unverified | n/a | `0xa10d2e55f0f87756d6f99960176120c512eb3e15` |
| unverified unclassified | UnnamedContract<br>`0x2421f0701ded65f88f0c4e0339ab0358d422aaa1` | non_address_book | unknown | unknown | unverified | n/a | `0xa10d2e55f0f87756d6f99960176120c512eb3e15` |
| unverified unclassified | UnnamedContract<br>`0x25b5720e9b20be18b4d020153ac26d957c83e341` | non_address_book | unknown | unknown | unverified | n/a | `0xa10d2e55f0f87756d6f99960176120c512eb3e15` |
| unverified unclassified | UnnamedContract<br>`0x285617313887d43256f852cae0ee4de4b68d45b0` | non_address_book | unknown | unknown | unverified | n/a | `0x343715fa797b8e9fe48b9efab4b54f01ca860e78` |
| unverified unclassified | UnnamedContract<br>`0x289a2a20b74f065ad4b630d6a75f3bf8e6477f8a` | non_address_book | unknown | unknown | unverified | n/a | `0xa10d2e55f0f87756d6f99960176120c512eb3e15` |
| unverified unclassified | UnnamedContract<br>`0x2b8463052e2878f9b38ae9627344ecc88111617d` | non_address_book | unknown | unknown | unverified | n/a | `0xa10d2e55f0f87756d6f99960176120c512eb3e15` |
| unverified unclassified | UnnamedContract<br>`0x2c624ba2c75614f1cdf708c766a43c08c2b1c6a5` | non_address_book | unknown | unknown | unverified | n/a | `0xa10d2e55f0f87756d6f99960176120c512eb3e15` |
| unverified unclassified | UnnamedContract<br>`0x2f0899b5badca07f966cd6e4910d49d37cdf1b39` | non_address_book | unknown | unknown | unverified | n/a | `0xa10d2e55f0f87756d6f99960176120c512eb3e15` |
| unverified unclassified | UnnamedContract<br>`0x3c8e93074d402c8b2203b911c6ea94a366719676` | non_address_book | unknown | unknown | unverified | n/a | `0xa10d2e55f0f87756d6f99960176120c512eb3e15` |
| unverified unclassified | UnnamedContract<br>`0x3f3e139b54510d03c70b9dbb197a2cb258144638` | non_address_book | unknown | unknown | unverified | n/a | `0xa10d2e55f0f87756d6f99960176120c512eb3e15` |
| unverified unclassified | UnnamedContract<br>`0x41a533b2480de772d3c5571dd35c1c25c3ae4d58` | non_address_book | unknown | unknown | unverified | n/a | `0xa10d2e55f0f87756d6f99960176120c512eb3e15` |
| unverified unclassified | UnnamedContract<br>`0x435fcaf116c9704333bde5c497f93aef30e99941` | non_address_book | unknown | unknown | unverified | n/a | `0xa10d2e55f0f87756d6f99960176120c512eb3e15` |
| unverified unclassified | UnnamedContract<br>`0x475e2220843ad8488d205e5ed3cab55e66ae2ce6` | non_address_book | unknown | unknown | unverified | n/a | `0xa10d2e55f0f87756d6f99960176120c512eb3e15` |
| unverified unclassified | UnnamedContract<br>`0x4996a95cd2646db69d79a4736540b9c283986dfa` | non_address_book | unknown | unknown | unverified | n/a | `0xa10d2e55f0f87756d6f99960176120c512eb3e15` |
| unverified unclassified | UnnamedContract<br>`0x4d484347f8f342b7d16e008dbce8db5e74ccbb4f` | non_address_book | unknown | unknown | unverified | n/a | `0xa10d2e55f0f87756d6f99960176120c512eb3e15` |
| unverified unclassified | UnnamedContract<br>`0x507d61bf4b5bec45525860ebf108bb0f3d35adcc` | non_address_book | unknown | unknown | unverified | n/a | `0xa10d2e55f0f87756d6f99960176120c512eb3e15` |
| unverified unclassified | UnnamedContract<br>`0x50cb5e9a07f5c8db997b236761622931364d634e` | non_address_book | unknown | unknown | unverified | n/a | `0x343715fa797b8e9fe48b9efab4b54f01ca860e78` |
| unverified unclassified | UnnamedContract<br>`0x5672c892fb72e25070104e734119bb62ff9bc124` | non_address_book | unknown | unknown | unverified | n/a | `0xa10d2e55f0f87756d6f99960176120c512eb3e15` |
| unverified unclassified | UnnamedContract<br>`0x59a9e6ebcd68639a11c30bff8c4044552763c7ac` | non_address_book | unknown | unknown | unverified | n/a | `0xa10d2e55f0f87756d6f99960176120c512eb3e15` |
| unverified unclassified | UnnamedContract<br>`0x5b2ffbad40819ae059c68a8446e66b7a890edefc` | non_address_book | unknown | unknown | unverified | n/a | `0xa10d2e55f0f87756d6f99960176120c512eb3e15` |
| unverified unclassified | UnnamedContract<br>`0x5ebad784813bddfe8f2374103e7b9d9c955959d7` | non_address_book | unknown | unknown | unverified | n/a | `0xa10d2e55f0f87756d6f99960176120c512eb3e15` |
| unverified unclassified | UnnamedContract<br>`0x5fc38d360908c63a7742e5b166f716a3adb22bf2` | non_address_book | unknown | unknown | unverified | n/a | `0xa10d2e55f0f87756d6f99960176120c512eb3e15` |
| unverified unclassified | UnnamedContract<br>`0x5ff0e8a83ef0ea6b0030b373c4986f068b456bad` | non_address_book | unknown | unknown | unverified | n/a | `0xa10d2e55f0f87756d6f99960176120c512eb3e15` |
| unverified unclassified | UnnamedContract<br>`0x606b90bd5845d9943d407f48d902c49b61a30958` | non_address_book | unknown | unknown | unverified | n/a | `0xa10d2e55f0f87756d6f99960176120c512eb3e15` |
| unverified unclassified | UnnamedContract<br>`0x659c4d54d5507aa004ce486cc8a4d5da1b271d2b` | non_address_book | unknown | unknown | unverified | n/a | `0xa10d2e55f0f87756d6f99960176120c512eb3e15` |
| unverified unclassified | UnnamedContract<br>`0x6a38305d86a032db1b677c975e6fe5863cf1edd2` | non_address_book | unknown | unknown | unverified | n/a | `0xa10d2e55f0f87756d6f99960176120c512eb3e15` |
| unverified unclassified | UnnamedContract<br>`0x6e7526f542c0589ca59a0d99c5db718255534cd2` | non_address_book | unknown | unknown | unverified | n/a | `0xa10d2e55f0f87756d6f99960176120c512eb3e15` |
| unverified unclassified | UnnamedContract<br>`0x6ee586e60edf86239e6b10e2edfeb15660093014` | non_address_book | unknown | unknown | unverified | n/a | `0xa10d2e55f0f87756d6f99960176120c512eb3e15` |
| unverified unclassified | UnnamedContract<br>`0x70818eedb4a856c0f124591b46129928440740cb` | non_address_book | unknown | unknown | unverified | n/a | `0xa10d2e55f0f87756d6f99960176120c512eb3e15` |
| unverified unclassified | UnnamedContract<br>`0x70b9bd72c912a96e67aadeff9ab6b6e1b9a78ba7` | non_address_book | unknown | unknown | unverified | n/a | `0xa10d2e55f0f87756d6f99960176120c512eb3e15` |
| unverified unclassified | UnnamedContract<br>`0x78ee70a512f88d005279623d05d521c355f5fda1` | non_address_book | unknown | unknown | unverified | n/a | `0xa10d2e55f0f87756d6f99960176120c512eb3e15` |
| unverified unclassified | UnnamedContract<br>`0x7c870584c26822c8330149565ace8837c3d5f0eb` | non_address_book | unknown | unknown | unverified | n/a | `0xa10d2e55f0f87756d6f99960176120c512eb3e15` |
| unverified unclassified | UnnamedContract<br>`0x7d29e35ac5dac739bd76089274420fa3ce0cf43a` | non_address_book | unknown | unknown | unverified | n/a | `0xa10d2e55f0f87756d6f99960176120c512eb3e15` |
| unverified unclassified | UnnamedContract<br>`0x801d075eb20ee982ba83218210a9f72715c5f0e9` | non_address_book | unknown | unknown | unverified | n/a | `0xa10d2e55f0f87756d6f99960176120c512eb3e15` |
| unverified unclassified | UnnamedContract<br>`0x870c084cb1d737f372e9ea9a2b95cea8b62dd94c` | non_address_book | unknown | unknown | unverified | n/a | `0xa10d2e55f0f87756d6f99960176120c512eb3e15` |
| unverified unclassified | UnnamedContract<br>`0x8d47fc778c0084d97aa5abf7c669e99920fe6824` | non_address_book | unknown | unknown | unverified | n/a | `0xa10d2e55f0f87756d6f99960176120c512eb3e15` |
| unverified unclassified | UnnamedContract<br>`0x90b4d64f840a7d214d7cc791d010c43b11cd64a8` | non_address_book | unknown | unknown | unverified | n/a | `0xa10d2e55f0f87756d6f99960176120c512eb3e15` |
| unverified unclassified | UnnamedContract<br>`0x90f8c146d7a037488c99e8d0609e3e80a8772d64` | non_address_book | unknown | unknown | unverified | n/a | `0xa10d2e55f0f87756d6f99960176120c512eb3e15` |
| unverified unclassified | UnnamedContract<br>`0x96d35637d014bbee006e7b39a84292e24946a158` | non_address_book | unknown | unknown | unverified | n/a | `0xa10d2e55f0f87756d6f99960176120c512eb3e15` |
| unverified unclassified | UnnamedContract<br>`0x9deb2b3593eb4e1838b233d386a9358448f753e3` | non_address_book | unknown | unknown | unverified | n/a | `0x0237b676b540585cf4decfee00830366d8a876b5` |
| unverified unclassified | UnnamedContract<br>`0xa00d8d52354f48402ec78230a6aaf7ccd78751a5` | non_address_book | unknown | unknown | unverified | n/a | `0xa10d2e55f0f87756d6f99960176120c512eb3e15` |
| unverified unclassified | UnnamedContract<br>`0xa0164bc9f1ce3f0034a4f0610c36b6d924b63a68` | non_address_book | unknown | unknown | unverified | n/a | `0xa10d2e55f0f87756d6f99960176120c512eb3e15` |
| unverified unclassified | UnnamedContract<br>`0xa17581a9e3356d9a858b789d68b4d866e593ae94` | non_address_book | unknown | unknown | unverified | n/a | `0x343715fa797b8e9fe48b9efab4b54f01ca860e78` |
| unverified unclassified | UnnamedContract<br>`0xa325906696abdef3069e06c073f29c34af1a7e0c` | non_address_book | unknown | unknown | unverified | n/a | `0xa10d2e55f0f87756d6f99960176120c512eb3e15` |
| unverified unclassified | UnnamedContract<br>`0xa4352837af2493748eeb434d21040bd07b483dc4` | non_address_book | unknown | unknown | unverified | n/a | `0xa10d2e55f0f87756d6f99960176120c512eb3e15` |
| unverified unclassified | UnnamedContract<br>`0xa4c0babb949569cc20f83ee891f620aaeed9a5ab` | non_address_book | unknown | unknown | unverified | n/a | `0xa10d2e55f0f87756d6f99960176120c512eb3e15` |
| unverified unclassified | UnnamedContract<br>`0xac096b7df4b18587bc44126a09b413d3baddf5fb` | non_address_book | unknown | unknown | unverified | n/a | `0xa10d2e55f0f87756d6f99960176120c512eb3e15` |
| unverified unclassified | UnnamedContract<br>`0xb135e7a5f5c25a0ff744ebbde12806dcbdd47b48` | non_address_book | unknown | unknown | unverified | n/a | `0xa10d2e55f0f87756d6f99960176120c512eb3e15` |
| unverified unclassified | UnnamedContract<br>`0xba1e773597d5481d69eeff0f9c139dca37b442b4` | non_address_book | unknown | unknown | unverified | n/a | `0xa10d2e55f0f87756d6f99960176120c512eb3e15` |
| unverified unclassified | UnnamedContract<br>`0xba40d65aae3ffccecab82e7e392661ccb297b542` | non_address_book | unknown | unknown | unverified | n/a | `0xa10d2e55f0f87756d6f99960176120c512eb3e15` |
| unverified unclassified | UnnamedContract<br>`0xc1fef79117a568b5adda8436c61e1c58cfc36d5d` | non_address_book | unknown | unknown | unverified | n/a | `0xa10d2e55f0f87756d6f99960176120c512eb3e15` |
| unverified unclassified | UnnamedContract<br>`0xc3d688b66703497daa19211eedff47f25384cdc3` | non_address_book | unknown | unknown | unverified | n/a | `0x343715fa797b8e9fe48b9efab4b54f01ca860e78` |
| unverified unclassified | UnnamedContract<br>`0xc465f585241971d209247d9df8338b6b0d535fa8` | non_address_book | unknown | unknown | unverified | n/a | `0xa10d2e55f0f87756d6f99960176120c512eb3e15` |
| unverified unclassified | UnnamedContract<br>`0xcb00e3d343667bab2f6ad8fab066df2cec180cd0` | non_address_book | unknown | unknown | unverified | n/a | `0xa10d2e55f0f87756d6f99960176120c512eb3e15` |
| unverified unclassified | UnnamedContract<br>`0xcb7426207a40b7477a890a949e31993884b7e138` | non_address_book | unknown | unknown | unverified | n/a | `0xa10d2e55f0f87756d6f99960176120c512eb3e15` |
| unverified unclassified | UnnamedContract<br>`0xcc87816b4012d0056ccf3ed6bc7991cfb9a3053e` | non_address_book | unknown | unknown | unverified | n/a | `0xa10d2e55f0f87756d6f99960176120c512eb3e15` |
| unverified unclassified | UnnamedContract<br>`0xceceb0f8a14d92c423963d7fc519185fc9b69598` | non_address_book | unknown | unknown | unverified | n/a | `0xa10d2e55f0f87756d6f99960176120c512eb3e15` |
| unverified unclassified | UnnamedContract<br>`0xcfc1fa6b7ca982176529899d99af6473ad80df4f` | non_address_book | unknown | unknown | unverified | n/a | `0x343715fa797b8e9fe48b9efab4b54f01ca860e78` |
| unverified unclassified | UnnamedContract<br>`0xd018a9ba579d3882748c1f1e4dad7203926dc43b` | non_address_book | unknown | unknown | unverified | n/a | `0xa10d2e55f0f87756d6f99960176120c512eb3e15` |
| unverified unclassified | UnnamedContract<br>`0xd0819625a4d3e93881744d1de2b75ae3455363a9` | non_address_book | unknown | unknown | unverified | n/a | `0xa10d2e55f0f87756d6f99960176120c512eb3e15` |
| unverified unclassified | UnnamedContract<br>`0xd61c33624cccb3854749a72da47e0d21351bc3ba` | non_address_book | unknown | unknown | unverified | n/a | `0xa10d2e55f0f87756d6f99960176120c512eb3e15` |
| unverified unclassified | UnnamedContract<br>`0xd851568fe222b312bebe1781a6179589fdda4a05` | non_address_book | unknown | unknown | unverified | n/a | `0xa10d2e55f0f87756d6f99960176120c512eb3e15` |
| unverified unclassified | UnnamedContract<br>`0xda6238fbddd23a0f74f6a03227124e44c2266f46` | non_address_book | unknown | unknown | unverified | n/a | `0xa10d2e55f0f87756d6f99960176120c512eb3e15` |
| unverified unclassified | UnnamedContract<br>`0xdc1c6f2f8582351b3be359025dd300e7b93e42d6` | non_address_book | unknown | unknown | unverified | n/a | `0xa10d2e55f0f87756d6f99960176120c512eb3e15` |
| unverified unclassified | UnnamedContract<br>`0xde197e9267d2b90ef5d4fc545c61432dae55832b` | non_address_book | unknown | unknown | unverified | n/a | `0xa10d2e55f0f87756d6f99960176120c512eb3e15` |
| unverified unclassified | UnnamedContract<br>`0xe2c1f54aff6b38fd9df7a69f22cb5fd3ba09f030` | non_address_book | unknown | unknown | unverified | n/a | `0x343715fa797b8e9fe48b9efab4b54f01ca860e78` |
| unverified unclassified | UnnamedContract<br>`0xe3cb06cb58e84f96aede7d2d703f0b969bb69a81` | non_address_book | unknown | unknown | unverified | n/a | `0xa10d2e55f0f87756d6f99960176120c512eb3e15` |
| unverified unclassified | UnnamedContract<br>`0xf4d1ee82a413e46d76faeae3403f498cd0612669` | non_address_book | unknown | unknown | unverified | n/a | `0xa10d2e55f0f87756d6f99960176120c512eb3e15` |
| unverified unclassified | UnnamedContract<br>`0xf7966d268b262e8376ff80a73e26b4feebc0f639` | non_address_book | unknown | unknown | unverified | n/a | `0xa10d2e55f0f87756d6f99960176120c512eb3e15` |
| unverified unclassified | UnnamedContract<br>`0xf95afb206b04633d3ddb6028b3d136aad01822e0` | non_address_book | unknown | unknown | unverified | n/a | `0xa10d2e55f0f87756d6f99960176120c512eb3e15` |
| unverified unclassified | UnnamedContract<br>`0xfab125812cfbc585661e5abef81ba7b83607390c` | non_address_book | unknown | unknown | unverified | n/a | `0xa10d2e55f0f87756d6f99960176120c512eb3e15` |
| unverified unclassified | UnnamedContract<br>`0x13da4847c80732cab3341f459a094e042af98691` | non_address_book | unknown | unknown | unverified | n/a | `0xa10d2e55f0f87756d6f99960176120c512eb3e15` |
| unverified unclassified | UnnamedContract<br>`0x1c50033ce4d8d66ff79a71b145974925a72a93a2` | non_address_book | unknown | unknown | unverified | n/a | `0xa10d2e55f0f87756d6f99960176120c512eb3e15` |
| unverified unclassified | UnnamedContract<br>`0x217f6d9e3597fd61d50017c26d8c03531d2fef1e` | non_address_book | unknown | unknown | unverified | n/a | `0xa10d2e55f0f87756d6f99960176120c512eb3e15` |
| unverified unclassified | UnnamedContract<br>`0x27c33cf8fe5220438f6085ab04cfceb3d33ac3cc` | non_address_book | unknown | unknown | unverified | n/a | `0xa10d2e55f0f87756d6f99960176120c512eb3e15` |
| unverified unclassified | UnnamedContract<br>`0x2f2632527a2990e6c9693b395253bfad7e02967d` | non_address_book | unknown | unknown | unverified | n/a | `0xa10d2e55f0f87756d6f99960176120c512eb3e15` |
| unverified unclassified | UnnamedContract<br>`0x32221633bf43e85ecf330fb6342b7098d4d1b4fc` | non_address_book | unknown | unknown | unverified | n/a | `0xa10d2e55f0f87756d6f99960176120c512eb3e15` |
| unverified unclassified | UnnamedContract<br>`0x3409790802765d020ab02121f01bd4fad71da6ae` | non_address_book | unknown | unknown | unverified | n/a | `0xa10d2e55f0f87756d6f99960176120c512eb3e15` |
| unverified unclassified | UnnamedContract<br>`0x45ef934f39e58f4fe64ff593b7d79ee73122cf06` | non_address_book | unknown | unknown | unverified | n/a | `0xa10d2e55f0f87756d6f99960176120c512eb3e15` |
| unverified unclassified | UnnamedContract<br>`0x4700bd9cc7232f243945b4a55834ab84563e4e9d` | non_address_book | unknown | unknown | unverified | n/a | `0xa10d2e55f0f87756d6f99960176120c512eb3e15` |
| unverified unclassified | UnnamedContract<br>`0x5077974e22e3f433e63e4526b5709fa8a68b16b9` | non_address_book | unknown | unknown | unverified | n/a | `0xa10d2e55f0f87756d6f99960176120c512eb3e15` |
| unverified unclassified | UnnamedContract<br>`0x73ddcc0452f916652a080bae8da2a70943f7e69d` | non_address_book | unknown | unknown | unverified | n/a | `0xa10d2e55f0f87756d6f99960176120c512eb3e15` |
| unverified unclassified | UnnamedContract<br>`0x74b83c29112de7c23c2422c2668562e13eec0a57` | non_address_book | unknown | unknown | unverified | n/a | `0xa10d2e55f0f87756d6f99960176120c512eb3e15` |
| unverified unclassified | UnnamedContract<br>`0x964421fc080c2603395b8d2ad3ce280bddb8eab1` | non_address_book | unknown | unknown | unverified | n/a | `0xa10d2e55f0f87756d6f99960176120c512eb3e15` |
| unverified unclassified | UnnamedContract<br>`0xe6c3e4f787612a4c93152222138853019890c08f` | non_address_book | unknown | unknown | unverified | n/a | `0xa10d2e55f0f87756d6f99960176120c512eb3e15` |
| unverified unclassified | UnnamedContract<br>`0xebe8b1f4701267bab8993fb5f804f842fb7af297` | non_address_book | unknown | unknown | unverified | n/a | `0xa10d2e55f0f87756d6f99960176120c512eb3e15` |
| unverified unclassified | UnnamedContract<br>`0xf2fd709f0e1203210d759866a90f815585dc796d` | non_address_book | unknown | unknown | unverified | n/a | `0xa10d2e55f0f87756d6f99960176120c512eb3e15` |
| unverified unclassified | UnnamedContract<br>`0x115637016accafce537a7b9cd28546475ceec9e2` | non_address_book | unknown | unknown | unverified | n/a | `0x0237b676b540585cf4decfee00830366d8a876b5` |
| unverified unclassified | UnnamedContract<br>`0x17020ed4081cc98c27091c387916846569255e42` | non_address_book | unknown | unknown | unverified | n/a | `0x0237b676b540585cf4decfee00830366d8a876b5` |
| unverified unclassified | UnnamedContract<br>`0x27c33cf8fe5220438f6085ab04cfceb3d33ac3cc` | non_address_book | unknown | unknown | unverified | n/a | `0xa10d2e55f0f87756d6f99960176120c512eb3e15` |
| unverified unclassified | UnnamedContract<br>`0x2f2632527a2990e6c9693b395253bfad7e02967d` | non_address_book | unknown | unknown | unverified | n/a | `0xa10d2e55f0f87756d6f99960176120c512eb3e15` |
| unverified unclassified | UnnamedContract<br>`0x33c0a9805a6370f4063c7514333b1f018dc6e9d5` | non_address_book | unknown | unknown | unverified | n/a | `0x0237b676b540585cf4decfee00830366d8a876b5` |
| unverified unclassified | UnnamedContract<br>`0x3409790802765d020ab02121f01bd4fad71da6ae` | non_address_book | unknown | unknown | unverified | n/a | `0xa10d2e55f0f87756d6f99960176120c512eb3e15` |
| unverified unclassified | UnnamedContract<br>`0x347fa51f32f3bd99ac5308f5c6e4e24c663a95e6` | non_address_book | unknown | unknown | unverified | n/a | `0x0237b676b540585cf4decfee00830366d8a876b5` |
| unverified unclassified | UnnamedContract<br>`0x3e4029472c4618c777b80715f7975c6c85d6ecf8` | non_address_book | unknown | unknown | unverified | n/a | `0xa10d2e55f0f87756d6f99960176120c512eb3e15` |
| unverified unclassified | UnnamedContract<br>`0x4665e219dae4a18de15d1afae17bb259ea231945` | non_address_book | unknown | unknown | unverified | n/a | `0x0237b676b540585cf4decfee00830366d8a876b5` |
| unverified unclassified | UnnamedContract<br>`0x4a809464ba6d663caae7065c4c0ff276b270f710` | non_address_book | unknown | unknown | unverified | n/a | `0x0237b676b540585cf4decfee00830366d8a876b5` |
| unverified unclassified | UnnamedContract<br>`0x51c2e75281683ddf9208714f9e4729c8af860f32` | non_address_book | unknown | unknown | unverified | n/a | `0x0237b676b540585cf4decfee00830366d8a876b5` |
| unverified unclassified | UnnamedContract<br>`0x54723e58d694072d32e19d8af0cd30585bff8535` | non_address_book | unknown | unknown | unverified | n/a | `0x0237b676b540585cf4decfee00830366d8a876b5` |
| unverified unclassified | UnnamedContract<br>`0x561006c341c87ec2c3336d64fc81d845955ee988` | non_address_book | unknown | unknown | unverified | n/a | `0x0237b676b540585cf4decfee00830366d8a876b5` |
| unverified unclassified | UnnamedContract<br>`0x5e790c37d8d652d269391299b7d3cf8d528c46db` | non_address_book | unknown | unknown | unverified | n/a | `0x0237b676b540585cf4decfee00830366d8a876b5` |
| unverified unclassified | UnnamedContract<br>`0x62872a33611e9fa205f948a7989240687fe170ca` | non_address_book | unknown | unknown | unverified | n/a | `0xa10d2e55f0f87756d6f99960176120c512eb3e15` |
| unverified unclassified | UnnamedContract<br>`0x62e727fed8b52185757e371f9f4d1c561acf25bd` | non_address_book | unknown | unknown | unverified | n/a | `0x0237b676b540585cf4decfee00830366d8a876b5` |
| unverified unclassified | UnnamedContract<br>`0x647874867e0a5b7a1e79bde9aa37b42632dda009` | non_address_book | unknown | unknown | unverified | n/a | `0x0237b676b540585cf4decfee00830366d8a876b5` |
| unverified unclassified | UnnamedContract<br>`0x6511a40fd96719b91a4f691e311adbde9fcc0f17` | non_address_book | unknown | unknown | unverified | n/a | `0x0237b676b540585cf4decfee00830366d8a876b5` |
| unverified unclassified | UnnamedContract<br>`0x6b4cebfe198604ee90eae9d1f559ef40aca15c30` | non_address_book | unknown | unknown | unverified | n/a | `0xa10d2e55f0f87756d6f99960176120c512eb3e15` |
| unverified unclassified | UnnamedContract<br>`0x6b8019b89fa7aedf830373296699e1ea7ff42614` | non_address_book | unknown | unknown | unverified | n/a | `0x0237b676b540585cf4decfee00830366d8a876b5` |
| unverified unclassified | UnnamedContract<br>`0x71eb0be7ffb712504df9231d817946512a9d3481` | non_address_book | unknown | unknown | unverified | n/a | `0x0237b676b540585cf4decfee00830366d8a876b5` |
| unverified unclassified | UnnamedContract<br>`0x74b83c29112de7c23c2422c2668562e13eec0a57` | non_address_book | unknown | unknown | unverified | n/a | `0xa10d2e55f0f87756d6f99960176120c512eb3e15` |
| unverified unclassified | UnnamedContract<br>`0x7599305c6971fcd854e7b0a4d1435637f5602a50` | non_address_book | unknown | unknown | unverified | n/a | `0x0237b676b540585cf4decfee00830366d8a876b5` |
| unverified unclassified | UnnamedContract<br>`0x7f7a2a12f4a9cc31ac206fe407d47d2bbf38b4c0` | non_address_book | unknown | unknown | unverified | n/a | `0x0237b676b540585cf4decfee00830366d8a876b5` |
| unverified unclassified | UnnamedContract<br>`0x87ee87c3063ec531c0a707af6e96d1f5b9fc02dc` | non_address_book | unknown | unknown | unverified | n/a | `0x0237b676b540585cf4decfee00830366d8a876b5` |
| unverified unclassified | UnnamedContract<br>`0x88b5ce20d193afd9854ec75bfc8a13865a3c9c31` | non_address_book | unknown | unknown | unverified | n/a | `0x0237b676b540585cf4decfee00830366d8a876b5` |
| unverified unclassified | UnnamedContract<br>`0x92ec373cd641b486ec312207ade2b7f29792e031` | non_address_book | unknown | unknown | unverified | n/a | `0x0237b676b540585cf4decfee00830366d8a876b5` |
| unverified unclassified | UnnamedContract<br>`0x9748f394b8c1d1cf5c08ac5f0f7f26b0dfa2e45e` | non_address_book | unknown | unknown | unverified | n/a | `0x0237b676b540585cf4decfee00830366d8a876b5` |
| unverified unclassified | UnnamedContract<br>`0x9799e6ccb8d911f07beee2ec2787b215a9307aea` | non_address_book | unknown | unknown | unverified | n/a | `0x0237b676b540585cf4decfee00830366d8a876b5` |
| unverified unclassified | UnnamedContract<br>`0x9d8be8f9e0403819677a22a4e58f40c9356e891b` | non_address_book | unknown | unknown | unverified | n/a | `0x0237b676b540585cf4decfee00830366d8a876b5` |
| unverified unclassified | UnnamedContract<br>`0x9e3d86ad41fc44a9bb8a486673c3eff867f48e3b` | non_address_book | unknown | unknown | unverified | n/a | `0x0237b676b540585cf4decfee00830366d8a876b5` |
| unverified unclassified | UnnamedContract<br>`0x9e740a9f7fb50e13ec74ec09ebd0f2a02af0bc26` | non_address_book | unknown | unknown | unverified | n/a | `0x0237b676b540585cf4decfee00830366d8a876b5` |
| unverified unclassified | UnnamedContract<br>`0xa1b63eb0c1fdc4d88c9d9f6d9985506bfa999c24` | non_address_book | unknown | unknown | unverified | n/a | `0x0237b676b540585cf4decfee00830366d8a876b5` |
| unverified unclassified | UnnamedContract<br>`0xa2913fe70ddf6a43428c8b2d9326dbde4f9d1cd9` | non_address_book | unknown | unknown | unverified | n/a | `0x0237b676b540585cf4decfee00830366d8a876b5` |
| unverified unclassified | UnnamedContract<br>`0xa4e26449eb2aac50e5d7a788a59359b65a32c990` | non_address_book | unknown | unknown | unverified | n/a | `0x0237b676b540585cf4decfee00830366d8a876b5` |
| unverified unclassified | UnnamedContract<br>`0xacb7a08373773d7898ff16bb3977f1c5877e2130` | non_address_book | unknown | unknown | unverified | n/a | `0x0237b676b540585cf4decfee00830366d8a876b5` |
| unverified unclassified | UnnamedContract<br>`0xb87dc0b82118145443dde8cc3651e4a867d05e4f` | non_address_book | unknown | unknown | unverified | n/a | `0x0237b676b540585cf4decfee00830366d8a876b5` |
| unverified unclassified | UnnamedContract<br>`0xbc280cd1a71734b24a95ab8cb0e3ddb1e47bb0d2` | non_address_book | unknown | unknown | unverified | n/a | `0xa10d2e55f0f87756d6f99960176120c512eb3e15` |
| unverified unclassified | UnnamedContract<br>`0xbe3389847a89275e0c7c77003187b024853c644f` | non_address_book | unknown | unknown | unverified | n/a | `0x0237b676b540585cf4decfee00830366d8a876b5` |
| unverified unclassified | UnnamedContract<br>`0xc052573a2856ce7aeb7f2092b8a252ef6564de2c` | non_address_book | unknown | unknown | unverified | n/a | `0x0237b676b540585cf4decfee00830366d8a876b5` |
| unverified unclassified | UnnamedContract<br>`0xcbabadf1d025f3ade6f9708ca9b998ada39e2cda` | non_address_book | unknown | unknown | unverified | n/a | `0x0237b676b540585cf4decfee00830366d8a876b5` |
| unverified unclassified | UnnamedContract<br>`0xd1f75de096bae7a8d269bbdd3b341d4d05cfe2c2` | non_address_book | unknown | unknown | unverified | n/a | `0x0237b676b540585cf4decfee00830366d8a876b5` |
| unverified unclassified | UnnamedContract<br>`0xd2d63862e28a25d87943963e1fca1c32b428d9aa` | non_address_book | unknown | unknown | unverified | n/a | `0x0237b676b540585cf4decfee00830366d8a876b5` |
| unverified unclassified | UnnamedContract<br>`0xd9388383fe4b49735a0d4877d0568769999a944a` | non_address_book | unknown | unknown | unverified | n/a | `0x0237b676b540585cf4decfee00830366d8a876b5` |
| unverified unclassified | UnnamedContract<br>`0xdc9a4a3b68f386fb12b5fcfdaee80c6dc9f3fc37` | non_address_book | unknown | unknown | unverified | n/a | `0x0237b676b540585cf4decfee00830366d8a876b5` |
| unverified unclassified | UnnamedContract<br>`0xdfc33d275d797ddf34cf6095a83d572f13cbce63` | non_address_book | unknown | unknown | unverified | n/a | `0x0237b676b540585cf4decfee00830366d8a876b5` |
| unverified unclassified | UnnamedContract<br>`0xe26c8d611db34ef818b8a3539c6db657f91e248d` | non_address_book | unknown | unknown | unverified | n/a | `0x0237b676b540585cf4decfee00830366d8a876b5` |
| unverified unclassified | UnnamedContract<br>`0xe414ff8d7d14e077dba56b7894624c554f31f81e` | non_address_book | unknown | unknown | unverified | n/a | `0x0237b676b540585cf4decfee00830366d8a876b5` |
| unverified unclassified | UnnamedContract<br>`0xed9f04d99fa07666cd1f2467774ff5e37e6bacef` | non_address_book | unknown | unknown | unverified | n/a | `0x0237b676b540585cf4decfee00830366d8a876b5` |
| unverified unclassified | UnnamedContract<br>`0xf2fd709f0e1203210d759866a90f815585dc796d` | non_address_book | unknown | unknown | unverified | n/a | `0xa10d2e55f0f87756d6f99960176120c512eb3e15` |
| unverified unclassified | UnnamedContract<br>`0xf4e97c2d645f26ca1d44bbef62d63abadd9b1df8` | non_address_book | unknown | unknown | unverified | n/a | `0x0237b676b540585cf4decfee00830366d8a876b5` |
| unverified unclassified | UnnamedContract<br>`0xf88730cc17567389ded22188129fa7fa71709b5b` | non_address_book | unknown | unknown | unverified | n/a | `0x0237b676b540585cf4decfee00830366d8a876b5` |
| unverified unclassified | UnnamedContract<br>`0xff7b143d3dfdc84877a7010c1c058fa6cff14b71` | non_address_book | unknown | unknown | unverified | n/a | `0x0237b676b540585cf4decfee00830366d8a876b5` |
| unverified unclassified | UnnamedContract<br>`0x0955b91424208c699d85cda85644736143b68dc4` | non_address_book | unknown | unknown | unverified | n/a | `0xa10d2e55f0f87756d6f99960176120c512eb3e15` |
| unverified unclassified | UnnamedContract<br>`0x14fc9206890df1f1aff787bccf257e1f38aac4f2` | non_address_book | unknown | unknown | unverified | n/a | `0xa10d2e55f0f87756d6f99960176120c512eb3e15` |
| unverified unclassified | UnnamedContract<br>`0x15f7ad22caa786b1237b27d4324c7e4a93c5e66b` | non_address_book | unknown | unknown | unverified | n/a | `0xa10d2e55f0f87756d6f99960176120c512eb3e15` |
| unverified unclassified | UnnamedContract<br>`0x217f6d9e3597fd61d50017c26d8c03531d2fef1e` | non_address_book | unknown | unknown | unverified | n/a | `0xa10d2e55f0f87756d6f99960176120c512eb3e15` |
| unverified unclassified | UnnamedContract<br>`0x368a8789fc1ffd850eb25b735788a395d656913a` | non_address_book | unknown | unknown | unverified | n/a | `0xa10d2e55f0f87756d6f99960176120c512eb3e15` |
| unverified unclassified | UnnamedContract<br>`0x45ef934f39e58f4fe64ff593b7d79ee73122cf06` | non_address_book | unknown | unknown | unverified | n/a | `0xa10d2e55f0f87756d6f99960176120c512eb3e15` |
| unverified unclassified | UnnamedContract<br>`0x4700bd9cc7232f243945b4a55834ab84563e4e9d` | non_address_book | unknown | unknown | unverified | n/a | `0xa10d2e55f0f87756d6f99960176120c512eb3e15` |
| unverified unclassified | UnnamedContract<br>`0x5077974e22e3f433e63e4526b5709fa8a68b16b9` | non_address_book | unknown | unknown | unverified | n/a | `0xa10d2e55f0f87756d6f99960176120c512eb3e15` |
| unverified unclassified | UnnamedContract<br>`0x56a8a6b10861921bda70580f5fff630135088926` | non_address_book | unknown | unknown | unverified | n/a | `0xa10d2e55f0f87756d6f99960176120c512eb3e15` |
| unverified unclassified | UnnamedContract<br>`0x60fe0543a0cf3084d62131c7c68dc553778e1851` | non_address_book | unknown | unknown | unverified | n/a | `0xa10d2e55f0f87756d6f99960176120c512eb3e15` |
| unverified unclassified | UnnamedContract<br>`0x66ec16c514e2e0ff901365323389c0e35ddbd010` | non_address_book | unknown | unknown | unverified | n/a | `0xa10d2e55f0f87756d6f99960176120c512eb3e15` |
| unverified unclassified | UnnamedContract<br>`0x70bb315343580aa7a93159ae314d0d6fa63764b5` | non_address_book | unknown | unknown | unverified | n/a | `0xa10d2e55f0f87756d6f99960176120c512eb3e15` |
| unverified unclassified | UnnamedContract<br>`0x724c199a8b8f987eb1985710e73db23f0f6bc4db` | non_address_book | unknown | unknown | unverified | n/a | `0xa10d2e55f0f87756d6f99960176120c512eb3e15` |
| unverified unclassified | UnnamedContract<br>`0x73ddcc0452f916652a080bae8da2a70943f7e69d` | non_address_book | unknown | unknown | unverified | n/a | `0xa10d2e55f0f87756d6f99960176120c512eb3e15` |
| unverified unclassified | UnnamedContract<br>`0x82118c5223ba3c597d34b8ee5fcde158b1dc02f7` | non_address_book | unknown | unknown | unverified | n/a | `0xa10d2e55f0f87756d6f99960176120c512eb3e15` |
| unverified unclassified | UnnamedContract<br>`0x84f383390317d88276cccc2aafe46359739feb79` | non_address_book | unknown | unknown | unverified | n/a | `0xa10d2e55f0f87756d6f99960176120c512eb3e15` |
| unverified unclassified | UnnamedContract<br>`0x887d6e3e25d3e2c3b35ffa399d08de4291765214` | non_address_book | unknown | unknown | unverified | n/a | `0xa10d2e55f0f87756d6f99960176120c512eb3e15` |
| unverified unclassified | UnnamedContract<br>`0x8a06e2f3cc3e14b24024bfcf3f73e978a7724432` | non_address_book | unknown | unknown | unverified | n/a | `0xa10d2e55f0f87756d6f99960176120c512eb3e15` |
| unverified unclassified | UnnamedContract<br>`0x91969529fe630320f9a5661504c6c6e6cca150f4` | non_address_book | unknown | unknown | unverified | n/a | `0xa10d2e55f0f87756d6f99960176120c512eb3e15` |
| unverified unclassified | UnnamedContract<br>`0x92457c32bfec86b91bbe09bdf1cc231628afcd15` | non_address_book | unknown | unknown | unverified | n/a | `0xa10d2e55f0f87756d6f99960176120c512eb3e15` |
| unverified unclassified | UnnamedContract<br>`0x964421fc080c2603395b8d2ad3ce280bddb8eab1` | non_address_book | unknown | unknown | unverified | n/a | `0xa10d2e55f0f87756d6f99960176120c512eb3e15` |
| unverified unclassified | UnnamedContract<br>`0xa667c81578edbcce7c5a5ba7ccf0ad826b19ec08` | non_address_book | unknown | unknown | unverified | n/a | `0xa10d2e55f0f87756d6f99960176120c512eb3e15` |
| unverified unclassified | UnnamedContract<br>`0xc856b2a456fdc0193361ef305fd3b5e458c3b9cf` | non_address_book | unknown | unknown | unverified | n/a | `0xa10d2e55f0f87756d6f99960176120c512eb3e15` |
| unverified unclassified | UnnamedContract<br>`0xc8716db2f5f7b2e875169c5f9a94b5dabc5d0375` | non_address_book | unknown | unknown | unverified | n/a | `0xa10d2e55f0f87756d6f99960176120c512eb3e15` |
| unverified unclassified | UnnamedContract<br>`0xd0893b002295d0041d40923f9d95fd343a7bb0c1` | non_address_book | unknown | unknown | unverified | n/a | `0xa10d2e55f0f87756d6f99960176120c512eb3e15` |
| unverified unclassified | UnnamedContract<br>`0xd90db03a7069fc11ea09e3805ec69cb2766d5e3a` | non_address_book | unknown | unknown | unverified | n/a | `0xa10d2e55f0f87756d6f99960176120c512eb3e15` |
| unverified unclassified | UnnamedContract<br>`0xda5b9c29cd36cd82991811a8e9e7bee42e946051` | non_address_book | unknown | unknown | unverified | n/a | `0xa10d2e55f0f87756d6f99960176120c512eb3e15` |
| unverified unclassified | UnnamedContract<br>`0xdd60547b8c7a717ab6109badb4a2614fe4072d56` | non_address_book | unknown | unknown | unverified | n/a | `0xa10d2e55f0f87756d6f99960176120c512eb3e15` |
| unverified unclassified | UnnamedContract<br>`0xe7191b3e6f4bc66e71ebdd1360fc9131bd829c86` | non_address_book | unknown | unknown | unverified | n/a | `0xa10d2e55f0f87756d6f99960176120c512eb3e15` |
| unverified unclassified | UnnamedContract<br>`0xebe9339e17fd27125a06206b8d67d215452723e8` | non_address_book | unknown | unknown | unverified | n/a | `0xa10d2e55f0f87756d6f99960176120c512eb3e15` |
| unverified unclassified | UnnamedContract<br>`0xf2faa0e6a942ede988f867e201f5a793bbc0fbdb` | non_address_book | unknown | unknown | unverified | n/a | `0xa10d2e55f0f87756d6f99960176120c512eb3e15` |
| unverified unclassified | UnnamedContract<br>`0xf97abc1dfd6e09d48c25d130de524b52f3a61d67` | non_address_book | unknown | unknown | unverified | n/a | `0xa10d2e55f0f87756d6f99960176120c512eb3e15` |
| unverified unclassified | UnnamedContract<br>`0xfba03f6d1a2b5d438fca0c263886483fd665d012` | non_address_book | unknown | unknown | unverified | n/a | `0xa10d2e55f0f87756d6f99960176120c512eb3e15` |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [DL audit link](https://skynet.certik.com/projects/aarna-protocol) | CertiK | Audit | 2025-07 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 10 | high |
| [FailSafe >](https://drive.google.com/drive/folders/14_ulqN1J3Sd61QMrwYEbeafjxK8Nf5Uq?usp=sharing) | Failsafe | Audit | n/a | unknown | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |
| [The Base vault contracts have been audited by Failsafe. The [audit report]() covers findings, resolutions, and the scope of the review.](https://drive.google.com/file/d/16EK-59YoFuBfGL4zRR7YBbL9ko35Au7U/view) | Failsafe | Audit | 2025-10 | fresh | Direct | contract_name | matched | 2 | 0 | 0 | 5 | high |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [16709] DL audit link — no match: Extracted 10 contract names from the 'Contracts in Scope' and 'Audited Files' sections. Audit date inferred from 'Last Audit was delivered on 7/28/2025'.
- [16710] FailSafe > — no match: The provided text is a Google Drive listing of multiple PDF files, not the actual audit report content. No contract names or audit date could be extracted.
- [16711] The Base vault contracts have been audited by Failsafe. The [audit report]() covers findings, resolutions, and the scope of the review. — matched: Extracted contract names from findings sections where they are explicitly mentioned as audited targets. No explicit scope table found; contracts are inferred from the report's detailed findings.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| DL audit link | AFiBase | unmatched — not counted | — | listed in 'Contracts in Scope' and 'Verified On-Chain Contracts' | no |
| DL audit link | AFiFactory | unmatched — not counted | — | listed in 'Contracts in Scope' and 'Verified On-Chain Contracts' | no |
| DL audit link | AFiManager | unmatched — not counted | — | listed in 'Contracts in Scope' and 'Verified On-Chain Contracts' | no |
| DL audit link | AFiOracle | unmatched — not counted | — | listed in 'Contracts in Scope' and 'Verified On-Chain Contracts' | no |
| DL audit link | AFiPassiveRebalanceStrategies | unmatched — not counted | — | listed in 'Contracts in Scope' and 'Verified On-Chain Contracts' | no |
| DL audit link | AFiStorage | unmatched — not counted | — | listed in 'Contracts in Scope' and 'Verified On-Chain Contracts' | no |
| DL audit link | TimeDelayModule | unmatched — not counted | — | listed in 'Contracts in Scope' and 'Verified On-Chain Contracts' | no |
| DL audit link | AFiTimeLock | unmatched — not counted | — | listed in 'Contracts in Scope' and 'Verified On-Chain Contracts' | no |
| DL audit link | ArrayUtils | unmatched — not counted | — | listed in 'Audited Files/SHA256' | no |
| DL audit link | FullMath | unmatched — not counted | — | listed in 'Audited Files/SHA256' | no |
| The Base vault contracts have been audited by Failsafe. The [audit report]() covers findings, resolutions, and the scope of the review. | AtvStakingManager | unmatched — not counted | — | Finding 1, Finding 2 | no |
| The Base vault contracts have been audited by Failsafe. The [audit report]() covers findings, resolutions, and the scope of the review. | AtvBase | unmatched — not counted | — | Finding 1, Finding 4, Finding 5, Finding 6 | no |
| The Base vault contracts have been audited by Failsafe. The [audit report]() covers findings, resolutions, and the scope of the review. | AtvStorage | unmatched — not counted | — | Finding 1, Finding 2, Finding 4 | no |
| The Base vault contracts have been audited by Failsafe. The [audit report]() covers findings, resolutions, and the scope of the review. | AtvMorphoBlueIntegration | own contract | AtvMorphoBlueIntegration (selected) `0x3c29eff521e6f8f8488eb9dfe7c81386d83db9d8` — deployed 2026-02-09 14:50:05+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| The Base vault contracts have been audited by Failsafe. The [audit report]() covers findings, resolutions, and the scope of the review. | AtvPassiveRebalanceStrategies | unmatched — not counted | — | Finding 3 | no |
| The Base vault contracts have been audited by Failsafe. The [audit report]() covers findings, resolutions, and the scope of the review. | AtvOracle | unmatched — not counted | — | Finding 3 | no |
| The Base vault contracts have been audited by Failsafe. The [audit report]() covers findings, resolutions, and the scope of the review. | AtvAdapter | own contract | AtvAdapter (selected) `0x057a2a173468630c9f150996256821c131dc9efc` — deployed 2026-02-09 14:29:07+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| base | `0x053136b9a3826e72e6b8b692fd607ea8cd72bad4` | AtvFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x45afbac8be713d5f7cb42a7b1e6d034a681a2dff` | PendleAdapter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 62 |
| upstream | 1 |
| standard_library | 3 |
| needs_review | 194 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 2
- Inherited remapped matches: 0
- Address-book scope dispositions: 2 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 15 unmatched
- Matched-own operational status: 2 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=2, low=1
- Match method counts: unique_name=2

Zero-match audit list:

- [16709] DL audit link
- [16710] FailSafe >

Fork inheritance lineage and inherited audits are included when available.
