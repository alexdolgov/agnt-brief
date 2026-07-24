# Agentic Audit Brief: Tangent Finance

## Export Authority

- Production state: **published scope**
- Raw selected rows: 3 across 3 audit(s)
- Eligible audit results: 5 (3 matched; 2 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `f59b0c07e38ecec2d34eb2896e4262470519ed280e5a0a28b0f46fc69c79a374`

## Project Overview

- Project: Tangent Finance (`tangent-finance`)
- Website: [https://app.tangent.finance/](https://app.tangent.finance/)
- Lifecycle: unknown
- Generated: 2026-07-24T14:10:00.000Z
- Pipeline run: brief-deployer-expansion-all-20260724-v1
- Chains: ethereum
- Contract surface: 93 unique implementations (93 raw deployments)
- Coverage basis: 1/1 confirmed own live verified implementations (100.0%); conservative 100.0% with 0 needs-review implementation(s)
- DeFi Llama TVL: $3,145,684.27
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## ⚠️ Limited Contract Surface

This brief covers only 1 contract implementation(s). The pipeline may not have discovered all deployed contracts for this project.
Coverage assessment and audit matching are based on this incomplete surface.

## Project Description

This brief describes the observed EVM deployment and audit surface for Tangent Finance. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 3 contract row(s) across ethereum. Structural roles: 2 core, 1 supporting. No upgradeable pattern was identified in these rows.

## Logic Topography

- Exact-run contract rows: 3
- Structural roles: core (2), supporting (1)
- Contract kinds: contract (3)
- Detected standards: none
- Frameworks: openzeppelin (2), chainlink (1)
- Upgradeable-pattern rows: 0

## Fork Analysis

0 of 1 contracts are derived from known codebases. 1 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- ConvexFxnLPMarket (`0x849cf82e0ebcfeab8270cc5a3ea3b26cd481b754`, chain 1)

## Contract Surface Quality

- Logic-topography rows: 3; live-surface rows included: 3 (1 live, 2 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 1/16 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 1/1 (100.0%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 1 own, 15 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 77 discovered implementations shown in the inventory but excluded from coverage (33 third-party/infra; 1 standard proxy/library)
- Proxy deployments represented within implementation groups: 2
- Confirmed-live implementations: 1 of 93 unique; 92 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 1/32
- Verified + Unaudited implementations: 31
- Verified by bytecode match: 0
- Unverified implementations: 61
- Unique implementations: 93
- Raw deployments: 93
- Audits discovered: 5 (5 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 3
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2025-12 (fresh)
- Audit staleness (calendar age): 4 fresh, 0 aging, 0 stale, 1 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 1 match-unverified
- Tier 1 coverage: 100.0% (Sherlock)

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| Pashov Audit Group | Tier 2 | 1 | 3.1% | 2025-12 |
| Sherlock | Tier 1 | 1 | 3.1% | 2025-09 |

## Contract Surface

### ✅ Verified + Audited (1)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| ConvexFxnLPMarket | unknown | project_anchor | own_supporting | 0 | ethereum | unit-258129 | `0x849cf82e0ebcfeab8270cc5a3ea3b26cd481b754` | ✅ Audited |

### ⚠️ Verified + Unaudited (31)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| AggregatorStablePriceV3 - aggregator of stablecoin prices for crvUSD | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1770b6426e2028423a99f9cc523a1aa81beb9fea` | ⚠️ Unaudited |
| AggregatorStablePriceV3 - aggregator of stablecoin prices for USG | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x970b2f2cec66f92de81dae6af363d1d135dd2f97` | ⚠️ Unaudited |
| BasicERC20Market | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb10ec742bc530b4fd5484f6364993d9bd98642b8` | ⚠️ Unaudited |
| ControlTower | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf3f7669dceed2f985815011c19ed68f667267215` | ⚠️ Unaudited |
| ConvexCrvLPMarket | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x68e75bfc46fe4cd2eaa1ceb1fd68990916a0ebfb` | ⚠️ Unaudited |
| CurveGaugeMarket | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4742a56668fbacbc11087f516c4b01ebc48f716f` | ⚠️ Unaudited |
| FeeHarvester | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8bd47c9b4309b5069ae2c0f925f26e1c368d8f0d` | ⚠️ Unaudited |
| FiatToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8cbde23b1416cac07a52591bba744c744d77a91a` | ⚠️ Unaudited |
| FiatTokenProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0xa0b86991c6218b36c1d19d4a2e9eb0ce3606eb48` | ⚠️ Unaudited |
| FiatTokenUtil | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6315aa908c50376d1028412c028aa0629f0355a6` | ⚠️ Unaudited |
| FiatTokenV1 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0882477e7895bdc5cea7cb1552ed914ab157fe56` | ⚠️ Unaudited |
| FiatTokenV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb7277a6e95992041568d9391d09d0122023778a2` | ⚠️ Unaudited |
| FiatTokenV2_1 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa2327a938febf5fec13bacfb16ae10ecbc4cbdcf` | ⚠️ Unaudited |
| IRCalculator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb4e1d3bbd2843263d58b4d648c599512cea6e88b` | ⚠️ Unaudited |
| MarketCreator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x214c8a1023b30032a2eded109146658c6d6f2781` | ⚠️ Unaudited |
| MarketViewer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x05afee1b483dda7273be250f93219b607ea2477d` | ⚠️ Unaudited |
| MasterMinter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x566c11b5c2201b69c9269fe924e4395873674335` | ⚠️ Unaudited |
| OracleChainlinkWrapper | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | n/a | `0x06acead7af9abe0b2a3b2e914b54c9368935b292` | ⚠️ Unaudited |
| OracleCoinFromCurveLP | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | unit-258121 | `0x0124b3e9a4477ac694b37fbf6314fb5d7ed0b074` | ⚠️ Unaudited |
| OracleDuoPoolStable | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0695758772db50a0aa0255afdb7535de23168542` | ⚠️ Unaudited |
| OracleRedstoneWrapperFallback | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | unit-258122 | `0x01ddf74e6e27d73c12e16047dc78d0398b40ff88` | ⚠️ Unaudited |
| PauserProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x10b1f36452e27f08b0b5747f577ff816b0e6b5fa` | ⚠️ Unaudited |
| Peg Keeper Regulator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x887706612730b7a227f3bffd8c9a6e6c3cb3f19e` | ⚠️ Unaudited |
| Peg Keeper V2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8a7f16508d1e8b48bdf36023f378cc04d9506d4e` | ⚠️ Unaudited |
| PendlePTRouter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8b5ace406e682a44afcc7bcab4f20bccb7cd2f52` | ⚠️ Unaudited |
| RewardAccumulator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1461d76aa1c9c523398301d9174098c6d53ce639` | ⚠️ Unaudited |
| Safe | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x461b62cb3a7e9df8f800ae058ae92f855f2c27ca` | ⚠️ Unaudited |
| StakeDaoVaultV2Market | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x161d6fa48b0e0152763c3929a3813bd177fc099f` | ⚠️ Unaudited |
| USG | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb1c2db5d6ca03fce73dbd304d320bf76c55ae1b1` | ⚠️ Unaudited |
| Yearn V3 Vault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf17d6f98a5c6eaa99d149079984119e0a4ef6900` | ⚠️ Unaudited |
| ZappingProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa9e0021d8917c51f496823605d218d7e78719c99` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (61)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1abb39263bcc17c9c3af4c7b51bc2c6dc225c80f` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | unit-258123 | `0x25605c9981bcdf2457791daf84514bacd15b6775` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2903b611f3a0bc488d1ac1580bef7d2c9fa79cfd` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | unit-258124 | `0x31acd625f66a587fa77c7c7c603240377513ead7` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | n/a | `0x35c62ac45ddf3079e2daa0b8957862a1800920da` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | n/a | `0x385b0c21d2f93a76468f8e074ede3ef6f8ff13ce` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | n/a | `0x3ccd01e66172b2c1b3c17f485b7f2987ae94da6a` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | unit-258125 | `0x4cf9d48ea81ac25b3ca2577962ce93e15783523e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x51c88d507e0df0d54daae6fea5b037ae39f4f76d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x536d4e9c0944de2ac6657d610aa99fa5e97ce493` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x56dbc69208044748af4d33392e25fc9336f11931` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5c996574270f439bfff5b7647ee92c1879d35a4b` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | n/a | `0x5d34f650c779124676cd72922112a997a4173aef` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | unit-258126 | `0x5d634da5e979155ae5f9bf6b56f451d69cb3df9b` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | unit-258127 | `0x6094c7944ebca80324f8ea2fe1504904aceb4a28` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | n/a | `0x63f1715e46d9ce230f09a34c7d051ec0f738fe2b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x66d7753f2e72a5d64cee1d7ec4e1af2110f8185a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x673d049150e583a28bbe16e8fdf141f3e8072bed` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6a672127eb6fc55515d5a39ffb6e1224965322a1` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | unit-258128 | `0x747582f3c12dd89219f788cdc152cfc9c7a54e16` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | unit-258130 | `0x867df395cf6af1abf4dfbd41bed6967667d598b7` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | unit-258131 | `0x8aa49a3ba86ed4c9fe8fa787934d2f7860509859` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | n/a | `0x8ce9fb9a62dbae1cd8a3abbf5bf1e8b522d2f957` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | unit-258132 | `0x905f644ad88f98a42ed830746b2a96c3378deefb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9f162292bc39f194a3ca87e39700293bd9aa710a` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | n/a | `0xa3daa1d1e1fe2694db205eec4db7e89b2656c3f4` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | unit-258133 | `0xa3e8636213ec899e9ee6e94c1fdde8fae0ba1291` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa6069a4a53b564eb0a312e08f5af19ae2ba5d67e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa63ded87df22ee573567ad1dd87d0a71c8fcd380` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa6c6193abaf2f1b72ed251984d391eaac7c31e77` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa876374f38aaab2246ef871fb066541b732de410` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | unit-258134 | `0xa8c43f747f17181eef26753371f52b3bb61651be` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xaed9bcae0831caf4a45739ec7910cedf2ac5d9a1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb53b1e50643ba89e1be280d6e04186f90b698a81` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | n/a | `0xb8cc9e84941605f553004d188e31e2aeb4061fd2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb91fea3834417d9dfe581262b20e86f5bdfec9fa` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbce94d131b288590f1ef1f62622865ba1fa514e4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbffbd9c9ac1645285d017a69885304831e8b9b71` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | unit-258135 | `0xc866d0d6532db2d3904d91dc69b6279d1b4a0e0c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc9c80e8481c2b6f979afc155bc3f979cfad19c56` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xca30e7aacfd7c4d16d0d460e188d38150c123d01` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcad9adfc5f9570926601aa3b2e91baf4c60d492f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcaf6096ef4f27122a0b92ca753f9940a1c001daa` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | n/a | `0xcba777240d1a0bd66c8ff67544a054862687b6ef` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcd691e2f2dfbeb79074dcaa19174ee2e6d710822` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | n/a | `0xcf434527aefbc808e3e3400ab489a0e25c4af4ca` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | n/a | `0xd0879e35783a165965d5cd524fc9b0d1cf02b066` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd2c7257efe28a1b1446904a371e3d51e1c2f7e0e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd3d29a8752fc40d64a20bbc043147077570c1785` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd7a63e1ffff888488db275189078282da8a4e638` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd990182f55002ea664c6670a4af77c3bf24c682a` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | n/a | `0xdb0fc4ae74fa8d8a1c3d31e6e9113dbc8b2c7daa` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xddb637645349d0579fa627f3f583e52f53b7d600` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe08c2512f87cf63fb7d2325edd08aec7920ac2f6` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | unit-258136 | `0xe10885152b5c5d36fab30490e82339ea6482a4c3` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | n/a | `0xe3adae98edd21c0b4a4c3e05e7e1136dad2163bd` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | n/a | `0xe3e9628d2b047aa43ab08adc1b5bb059ca0b1268` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | n/a | `0xf26b689da847db08f6bb3b3186fdf7eddb8e69c9` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | n/a | `0xf31be70c9d9596b23088125345f044065b0bf886` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf89615f75c8161dc185c03020240905f6b66bad9` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | n/a | `0xfc3dff91fb8a7ac53f61d9d465d71d1b89e01fe4` | ❓ Unverified |

## Deployer Expansion Inventory

These rows are additive inventory from `project_contracts.discovery_source=deployer_expansion`; they do not change scope matching, coverage, or logic topography in this brief.

- Source: `project_contracts.discovery_source=deployer_expansion`
- Decision run: `deployer-candidate-production-20260712`
- Total contracts: 16
- Live contracts: 0
- Unknown liveness contracts: 16
- Source-verified contracts: 0
- Currently scope-matched contracts retained as-is: 0
- Contract rows sorted by chain, deployer, classification, contract name, then address.
- Classification counts: unverified unclassified=16

| Chain | Classification | Contract | Address-Book Class | Role | Liveness | Source | Decision | Deployer |
|---|---|---|---|---|---|---|---|---|
| ethereum | unverified unclassified | UnnamedContract<br>`0x1abb39263bcc17c9c3af4c7b51bc2c6dc225c80f` | non_address_book | unknown | unknown | unverified | n/a | `0xe08c2512f87cf63fb7d2325edd08aec7920ac2f6` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x2903b611f3a0bc488d1ac1580bef7d2c9fa79cfd` | non_address_book | unknown | unknown | unverified | n/a | `0xe08c2512f87cf63fb7d2325edd08aec7920ac2f6` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x51c88d507e0df0d54daae6fea5b037ae39f4f76d` | non_address_book | unknown | unknown | unverified | n/a | `0xe08c2512f87cf63fb7d2325edd08aec7920ac2f6` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x66d7753f2e72a5d64cee1d7ec4e1af2110f8185a` | non_address_book | unknown | unknown | unverified | n/a | `0xe08c2512f87cf63fb7d2325edd08aec7920ac2f6` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x673d049150e583a28bbe16e8fdf141f3e8072bed` | non_address_book | unknown | unknown | unverified | n/a | `0xe08c2512f87cf63fb7d2325edd08aec7920ac2f6` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x6a672127eb6fc55515d5a39ffb6e1224965322a1` | non_address_book | unknown | unknown | unverified | n/a | `0xe08c2512f87cf63fb7d2325edd08aec7920ac2f6` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x9f162292bc39f194a3ca87e39700293bd9aa710a` | non_address_book | unknown | unknown | unverified | n/a | `0xe08c2512f87cf63fb7d2325edd08aec7920ac2f6` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xa876374f38aaab2246ef871fb066541b732de410` | non_address_book | unknown | unknown | unverified | n/a | `0xe08c2512f87cf63fb7d2325edd08aec7920ac2f6` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xb53b1e50643ba89e1be280d6e04186f90b698a81` | non_address_book | unknown | unknown | unverified | n/a | `0xe08c2512f87cf63fb7d2325edd08aec7920ac2f6` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xb91fea3834417d9dfe581262b20e86f5bdfec9fa` | non_address_book | unknown | unknown | unverified | n/a | `0xe08c2512f87cf63fb7d2325edd08aec7920ac2f6` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xca30e7aacfd7c4d16d0d460e188d38150c123d01` | non_address_book | unknown | unknown | unverified | n/a | `0xe08c2512f87cf63fb7d2325edd08aec7920ac2f6` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xcad9adfc5f9570926601aa3b2e91baf4c60d492f` | non_address_book | unknown | unknown | unverified | n/a | `0xe08c2512f87cf63fb7d2325edd08aec7920ac2f6` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xcaf6096ef4f27122a0b92ca753f9940a1c001daa` | non_address_book | unknown | unknown | unverified | n/a | `0xe08c2512f87cf63fb7d2325edd08aec7920ac2f6` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xcd691e2f2dfbeb79074dcaa19174ee2e6d710822` | non_address_book | unknown | unknown | unverified | n/a | `0xe08c2512f87cf63fb7d2325edd08aec7920ac2f6` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xd990182f55002ea664c6670a4af77c3bf24c682a` | non_address_book | unknown | unknown | unverified | n/a | `0xe08c2512f87cf63fb7d2325edd08aec7920ac2f6` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xddb637645349d0579fa627f3f583e52f53b7d600` | non_address_book | unknown | unknown | unverified | n/a | `0xe08c2512f87cf63fb7d2325edd08aec7920ac2f6` |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [drive.google.com/file/d/1K4rHyRfI4XWMtEfNe8ykLQu_DYuHxJ-U/view](https://drive.google.com/file/d/1K4rHyRfI4XWMtEfNe8ykLQu_DYuHxJ-U/view) | Egis Security | Audit | 2025-08 | fresh | Direct | contract_name | no match | 0 | 0 | 0 | 10 | high |
| [2025.09.11 - Final - USG - Tangent Audit Report.pdf](https://github.com/sherlock-protocol/sherlock-reports/blob/main/audits/2025.09.11%20-%20Final%20-%20USG%20-%20Tangent%20Audit%20Report.pdf) | Sherlock | Contest | 2025-09 | fresh | Direct | contract_name | matched | 1 | 0 | 0 | 28 | high |
| [Tangent-security-review_2025-10-30.pdf](https://github.com/pashov/audits/blob/master/team/pdf/Tangent-security-review_2025-10-30.pdf) | Pashov Audit Group | Audit | 2025-11 | fresh | Direct | contract_name | matched | 1 | 0 | 0 | 28 | high |
| [Tangent-security-review_2025-12-08.pdf](https://github.com/pashov/audits/blob/master/team/pdf/Tangent-security-review_2025-12-08.pdf) | Pashov Audit Group | Audit | 2025-12 | fresh | Direct | contract_name | matched | 1 | 0 | 0 | 14 | high |
| [app.zerocool.ai/share/LazsB_w5GNqH-GQWkZTOTZ6JkOAxbusdcMRrirDEHVg](https://app.zerocool.ai/share/LazsB_w5GNqH-GQWkZTOTZ6JkOAxbusdcMRrirDEHVg?finding=M-01) | Zerocool | Audit | n/a | unknown | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [21131] drive.google.com/file/d/1K4rHyRfI4XWMtEfNe8ykLQu_DYuHxJ-U/view — no match: Extracted contract names from context lines in findings and the scope table on page 6. The audit date is from the cover page.
- [21132] 2025.09.11 - Final - USG - Tangent Audit Report.pdf — matched: All contract names extracted from the 'Scope' section file list. Audit date from cover page: 'Date Audited: August 28 - September 11, 2025' -> end date used.
- [21133] Tangent-security-review_2025-10-30.pdf — matched: All contracts listed in the Scope section of the audit report were extracted. The audit date is the end date of the review period (November 12th 2025).
- [21134] Tangent-security-review_2025-12-08.pdf — matched: All 15 contracts listed in the Scope section of the audit report.
- [21135] app.zerocool.ai/share/LazsB_w5GNqH-GQWkZTOTZ6JkOAxbusdcMRrirDEHVg — no match: The provided text is only a title 'zerocool-frontend' with no audit report content, contract names, or date.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| drive.google.com/file/d/1K4rHyRfI4XWMtEfNe8ykLQu_DYuHxJ-U/view | OracleBase | unmatched — not counted | — | Context:OracleBase.sol#L20 in finding 6.1.1 | no |
| drive.google.com/file/d/1K4rHyRfI4XWMtEfNe8ykLQu_DYuHxJ-U/view | RewardAccumulator | unmatched — not counted | — | Context:RewardAccumulator.sol:564-568 in finding 6.1.2 | no |
| drive.google.com/file/d/1K4rHyRfI4XWMtEfNe8ykLQu_DYuHxJ-U/view | VsTan | unmatched — not counted | — | Context:VsTan.sol#L542-L543 in finding 6.2.5 | no |
| drive.google.com/file/d/1K4rHyRfI4XWMtEfNe8ykLQu_DYuHxJ-U/view | ZappingProxy | unmatched — not counted | — | Context:ZappingProxy.sol#L47-L48 in finding 6.2.1 | no |
| drive.google.com/file/d/1K4rHyRfI4XWMtEfNe8ykLQu_DYuHxJ-U/view | ControlTower | unmatched — not counted | — | Context:ControlTower.sol#L52-L55 in finding 6.2.4 | no |
| drive.google.com/file/d/1K4rHyRfI4XWMtEfNe8ykLQu_DYuHxJ-U/view | IRCalculator | unmatched — not counted | — | Mentioned in finding 6.2.3 as having same issue | no |
| drive.google.com/file/d/1K4rHyRfI4XWMtEfNe8ykLQu_DYuHxJ-U/view | ConvexCrvLPMarket | unmatched — not counted | — | Context:ConvexCrvLPMarket.sol#L66-L69 in finding 6.2.6 | no |
| drive.google.com/file/d/1K4rHyRfI4XWMtEfNe8ykLQu_DYuHxJ-U/view | Collateral | unmatched — not counted | — | Context:Collateral.sol#L80-L84 in finding 6.2.8 | no |
| drive.google.com/file/d/1K4rHyRfI4XWMtEfNe8ykLQu_DYuHxJ-U/view | MarketCore | unmatched — not counted | — | Context:MarketCore.sol#L412 in finding 6.2.9 | no |
| drive.google.com/file/d/1K4rHyRfI4XWMtEfNe8ykLQu_DYuHxJ-U/view | PauseSettings | unmatched — not counted | — | Mentioned in informational findings 6.3.5 and 6.3.6 | no |
| 2025.09.11 - Final - USG - Tangent Audit Report.pdf | Collateral | unmatched — not counted | — | listed in scope | no |
| 2025.09.11 - Final - USG - Tangent Audit Report.pdf | DebtIR | unmatched — not counted | — | listed in scope | no |
| 2025.09.11 - Final - USG - Tangent Audit Report.pdf | MarketCore | unmatched — not counted | — | listed in scope | no |
| 2025.09.11 - Final - USG - Tangent Audit Report.pdf | MarketExternalActions | unmatched — not counted | — | listed in scope | no |
| 2025.09.11 - Final - USG - Tangent Audit Report.pdf | PauseSettings | unmatched — not counted | — | listed in scope | no |
| 2025.09.11 - Final - USG - Tangent Audit Report.pdf | BasicERC20Market | unmatched — not counted | — | listed in scope | no |
| 2025.09.11 - Final - USG - Tangent Audit Report.pdf | ConvexCrvLPMarket | unmatched — not counted | — | listed in scope | no |
| 2025.09.11 - Final - USG - Tangent Audit Report.pdf | ConvexFxnLPMarket | own contract | ConvexFxnLPMarket (selected) `0x849cf82e0ebcfeab8270cc5a3ea3b26cd481b754` — deployed 2026-05-21 21:10:47+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2025.09.11 - Final - USG - Tangent Audit Report.pdf | OracleCryptoSwap | unmatched — not counted | — | listed in scope | no |
| 2025.09.11 - Final - USG - Tangent Audit Report.pdf | OracleDuoPoolStable | unmatched — not counted | — | listed in scope | no |
| 2025.09.11 - Final - USG - Tangent Audit Report.pdf | OracleBase | unmatched — not counted | — | listed in scope | no |
| 2025.09.11 - Final - USG - Tangent Audit Report.pdf | OraclePendlePT | unmatched — not counted | — | listed in scope | no |
| 2025.09.11 - Final - USG - Tangent Audit Report.pdf | ChainlinkAggregatorWrapper | unmatched — not counted | — | listed in scope | no |
| 2025.09.11 - Final - USG - Tangent Audit Report.pdf | OracleCoinFromCurveLP | unmatched — not counted | — | listed in scope | no |
| 2025.09.11 - Final - USG - Tangent Audit Report.pdf | OracleERC4626 | unmatched — not counted | — | listed in scope | no |
| 2025.09.11 - Final - USG - Tangent Audit Report.pdf | PendlePTRouter | unmatched — not counted | — | listed in scope | no |
| 2025.09.11 - Final - USG - Tangent Audit Report.pdf | TAN | unmatched — not counted | — | listed in scope | no |
| 2025.09.11 - Final - USG - Tangent Audit Report.pdf | USG | unmatched — not counted | — | listed in scope | no |
| 2025.09.11 - Final - USG - Tangent Audit Report.pdf | VsTAN | unmatched — not counted | — | listed in scope | no |
| 2025.09.11 - Final - USG - Tangent Audit Report.pdf | WStable | unmatched — not counted | — | listed in scope | no |
| 2025.09.11 - Final - USG - Tangent Audit Report.pdf | LightOwnable | unmatched — not counted | — | listed in scope | no |
| 2025.09.11 - Final - USG - Tangent Audit Report.pdf | LightReentrancyGuardTransient | unmatched — not counted | — | listed in scope | no |
| 2025.09.11 - Final - USG - Tangent Audit Report.pdf | ZappingUtil | unmatched — not counted | — | listed in scope | no |
| 2025.09.11 - Final - USG - Tangent Audit Report.pdf | ControlTower | unmatched — not counted | — | listed in scope | no |
| 2025.09.11 - Final - USG - Tangent Audit Report.pdf | IRCalculator | unmatched — not counted | — | listed in scope | no |
| 2025.09.11 - Final - USG - Tangent Audit Report.pdf | MarketCreator | unmatched — not counted | — | listed in scope | no |
| 2025.09.11 - Final - USG - Tangent Audit Report.pdf | Migratoor | unmatched — not counted | — | listed in scope | no |
| 2025.09.11 - Final - USG - Tangent Audit Report.pdf | RewardAccumulator | unmatched — not counted | — | listed in scope | no |
| 2025.09.11 - Final - USG - Tangent Audit Report.pdf | ZappingProxy | unmatched — not counted | — | listed in scope | no |
| Tangent-security-review_2025-10-30.pdf | Collateral | unmatched — not counted | — | listed in scope | no |
| Tangent-security-review_2025-10-30.pdf | DebtIR | unmatched — not counted | — | listed in scope | no |
| Tangent-security-review_2025-10-30.pdf | MarketCore | unmatched — not counted | — | listed in scope | no |
| Tangent-security-review_2025-10-30.pdf | MarketExternalActions | unmatched — not counted | — | listed in scope | no |
| Tangent-security-review_2025-10-30.pdf | PauseSettings | unmatched — not counted | — | listed in scope | no |
| Tangent-security-review_2025-10-30.pdf | BasicERC20Market | unmatched — not counted | — | listed in scope | no |
| Tangent-security-review_2025-10-30.pdf | ConvexCrvLPMarket | unmatched — not counted | — | listed in scope | no |
| Tangent-security-review_2025-10-30.pdf | ConvexFxnLPMarket | own contract | ConvexFxnLPMarket (selected) `0x849cf82e0ebcfeab8270cc5a3ea3b26cd481b754` — deployed 2026-05-21 21:10:47+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Tangent-security-review_2025-10-30.pdf | OracleCryptoSwap | unmatched — not counted | — | listed in scope | no |
| Tangent-security-review_2025-10-30.pdf | OracleDuoPoolStable | unmatched — not counted | — | listed in scope | no |
| Tangent-security-review_2025-10-30.pdf | OracleBase | unmatched — not counted | — | listed in scope | no |
| Tangent-security-review_2025-10-30.pdf | OraclePendlePT | unmatched — not counted | — | listed in scope | no |
| Tangent-security-review_2025-10-30.pdf | OracleChainlinkWrapper | unmatched — not counted | — | listed in scope | no |
| Tangent-security-review_2025-10-30.pdf | OracleCoinFromCurveLP | unmatched — not counted | — | listed in scope | no |
| Tangent-security-review_2025-10-30.pdf | OracleERC4626 | unmatched — not counted | — | listed in scope | no |
| Tangent-security-review_2025-10-30.pdf | PendlePTRouter | unmatched — not counted | — | listed in scope | no |
| Tangent-security-review_2025-10-30.pdf | TAN | unmatched — not counted | — | listed in scope | no |
| Tangent-security-review_2025-10-30.pdf | USG | unmatched — not counted | — | listed in scope | no |
| Tangent-security-review_2025-10-30.pdf | VsTAN | unmatched — not counted | — | listed in scope | no |
| Tangent-security-review_2025-10-30.pdf | WStable | unmatched — not counted | — | listed in scope | no |
| Tangent-security-review_2025-10-30.pdf | LightOwnable | unmatched — not counted | — | listed in scope | no |
| Tangent-security-review_2025-10-30.pdf | LightReentrancyGuardTransient | unmatched — not counted | — | listed in scope | no |
| Tangent-security-review_2025-10-30.pdf | ZappingUtil | unmatched — not counted | — | listed in scope | no |
| Tangent-security-review_2025-10-30.pdf | ControlTower | unmatched — not counted | — | listed in scope | no |
| Tangent-security-review_2025-10-30.pdf | IRCalculator | unmatched — not counted | — | listed in scope | no |
| Tangent-security-review_2025-10-30.pdf | MarketCreator | unmatched — not counted | — | listed in scope | no |
| Tangent-security-review_2025-10-30.pdf | Migratoor | unmatched — not counted | — | listed in scope | no |
| Tangent-security-review_2025-10-30.pdf | RewardAccumulator | unmatched — not counted | — | listed in scope | no |
| Tangent-security-review_2025-10-30.pdf | ZappingProxy | unmatched — not counted | — | listed in scope | no |
| Tangent-security-review_2025-12-08.pdf | CurveGaugeMarket | unmatched — not counted | — | listed in scope | no |
| Tangent-security-review_2025-12-08.pdf | StakeDaoVaultV2Market | unmatched — not counted | — | listed in scope | no |
| Tangent-security-review_2025-12-08.pdf | ConvexCrvLPMarket | unmatched — not counted | — | listed in scope | no |
| Tangent-security-review_2025-12-08.pdf | ConvexFXNLPMarket | own contract | ConvexFxnLPMarket (selected) `0x849cf82e0ebcfeab8270cc5a3ea3b26cd481b754` — deployed 2026-05-21 21:10:47+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Tangent-security-review_2025-12-08.pdf | USG | unmatched — not counted | — | listed in scope | no |
| Tangent-security-review_2025-12-08.pdf | ControlTower | unmatched — not counted | — | listed in scope | no |
| Tangent-security-review_2025-12-08.pdf | IRCalculator | unmatched — not counted | — | listed in scope | no |
| Tangent-security-review_2025-12-08.pdf | Migratoor | unmatched — not counted | — | listed in scope | no |
| Tangent-security-review_2025-12-08.pdf | MarketCreator | unmatched — not counted | — | listed in scope | no |
| Tangent-security-review_2025-12-08.pdf | RewardAccumulator | unmatched — not counted | — | listed in scope | no |
| Tangent-security-review_2025-12-08.pdf | MarketExternalActions | unmatched — not counted | — | listed in scope | no |
| Tangent-security-review_2025-12-08.pdf | MarketCore | unmatched — not counted | — | listed in scope | no |
| Tangent-security-review_2025-12-08.pdf | PauseSettings | unmatched — not counted | — | listed in scope | no |
| Tangent-security-review_2025-12-08.pdf | DebtIR | unmatched — not counted | — | listed in scope | no |
| Tangent-security-review_2025-12-08.pdf | Collateral | unmatched — not counted | — | listed in scope | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 27 |
| upstream | 4 |
| standard_library | 1 |
| needs_review | 61 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 2
- Inherited remapped matches: 0
- Address-book scope dispositions: 3 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 80 unmatched
- Matched-own operational status: 3 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=4, low=1
- Match method counts: unique_name=3

Zero-match audit list:

- [21131] drive.google.com/file/d/1K4rHyRfI4XWMtEfNe8ykLQu_DYuHxJ-U/view
- [21135] app.zerocool.ai/share/LazsB_w5GNqH-GQWkZTOTZ6JkOAxbusdcMRrirDEHVg

Fork inheritance lineage and inherited audits are included when available.
