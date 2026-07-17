# Agentic Audit Brief: Avantgarde

## Export Authority

- Production state: **published scope**
- Raw selected rows: 12 across 3 audit(s)
- Eligible audit results: 3 (3 matched; 0 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e9e09d06b414f9cd852c36a58d42ce16279465f2d9791cd2a8178f3f54b89ecd`

## Project Overview

- Project: Avantgarde (`avantgarde`)
- Website: [https://app.morpho.org/ethereum/curator/avantgarde](https://app.morpho.org/ethereum/curator/avantgarde)
- Lifecycle: unknown
- Generated: 2026-07-15T18:30:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: base, ethereum
- Contract surface: 85 unique implementations (85 raw deployments)
- Coverage basis: 4/6 confirmed own live verified implementations (66.7%); conservative 66.7% with 0 needs-review implementation(s)
- DeFi Llama TVL: $399,864.72
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for Avantgarde. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 1 contract row(s) across base, ethereum. Structural roles: 1 core. No upgradeable pattern was identified in these rows.

## Logic Topography

- Exact-run contract rows: 1
- Structural roles: core (1)
- Contract kinds: contract (1)
- Detected standards: erc20 (1), erc20permit (1), erc4626 (1), multicall (1)
- Frameworks: none
- Upgradeable-pattern rows: 0

## Fork Lineage

This project reuses audited code from **Morpho** (`morpho`) in the VaultV2 subsystem.
3 audits inherited from `morpho`, scoped to that subsystem.

Total inherited audits: 3. Inherited coverage reflects forked/shared code audited by the origin project — it is not a direct audit of this project.

## Fork Analysis

0 of 6 contracts are derived from known codebases. 6 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- MetaMorphoV1_1 (`0x5b56f90340dbaa6a8693dadb141d620f0e154fe6`, chain 1)
- MetaMorphoV1_1 (`0xf79f51f8f473ed34f6b2b13ee74c3208286d53eb`, chain 1)
- VaultV2 (`0x132fe294ea9b6fad8ca00554d211d5f2b905c1ad`, chain 1)
- VaultV2 (`0x8e56cb6bc1a8961ed9062b99045d3299b27cdb4d`, chain 1)
- VaultV2 (`0xebbae8cfabb0092d5b32f00ebee0c8139d24ddcd`, chain 1)
- VaultV2 (`0xe34d43ca9152d198b60654868c8cd197196a492f`, chain 8453)

## Contract Surface Quality

- Logic-topography rows: 1; live-surface rows included: 1 (1 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 6/6 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 4/6 (66.7%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 6 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 79 discovered implementations shown in the inventory but excluded from coverage (8 third-party/infra; 4 standard proxy/library)
- Proxy deployments represented within implementation groups: 6
- Confirmed-live implementations: 6 of 85 unique; 79 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 4/84
- Verified + Unaudited implementations: 80
- Verified by bytecode match: 0
- Unverified implementations: 1
- Unique implementations: 85
- Raw deployments: 85
- Audits discovered: 3 (0 direct, 3 inherited from forked code)
- Scoreable audits (matched contracts): 3
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2025-09 (fresh)
- Audit staleness (calendar age): 3 fresh, 0 aging, 0 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 4 match-unverified
- Tier 1 coverage: 66.7% (ChainSecurity, Spearbit)

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| Blackthorn | Tier 2 | 4 | 4.8% | 2025-09 |
| ChainSecurity | Tier 1 | 4 | 4.8% | 2025-09 |
| Spearbit | Tier 1 | 4 | 4.8% | 2025-09 |

## Contract Surface

### ✅ Verified + Audited (4)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| VaultV2 | unknown | project_anchor | own_supporting | 0 | ethereum | unit-379840 | `0x132fe294ea9b6fad8ca00554d211d5f2b905c1ad` | ✅ Audited |
| VaultV2 | unknown | project_anchor | own_supporting | 0 | ethereum | unit-379842 | `0x8e56cb6bc1a8961ed9062b99045d3299b27cdb4d` | ✅ Audited |
| VaultV2 | unknown | project_anchor | own_supporting | 0 | ethereum | unit-379843 | `0xebbae8cfabb0092d5b32f00ebee0c8139d24ddcd` | ✅ Audited |
| VaultV2 | unknown | project_anchor | own_supporting | 0 | base | unit-379845 | `0xe34d43ca9152d198b60654868c8cd197196a492f` | ✅ Audited |

### ⚠️ Verified + Unaudited (80)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| AaveV2MigrationAdapter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x40288815c399709dfc0875a384b637ffe387961b` | ⚠️ Unaudited |
| AaveV2MigrationBundler | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb3dcc75db379925edfd3007511a8ce0cb4aa8e76` | ⚠️ Unaudited |
| AaveV3MigrationAdapter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2cc8d502a65824b4cf9a58db03490ba024bdb806` | ⚠️ Unaudited |
| AaveV3MigrationBundler | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x98ccb155e86bb478d514a827d16f58c6912f9bdc` | ⚠️ Unaudited |
| AaveV3OptimizerMigrationAdapter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9e2ea2d5785598a163d569d795f286f5c55ad972` | ⚠️ Unaudited |
| AaveV3OptimizerMigrationBundler | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x16f38d2e764e7bebf625a8e995b34968226d2f9c` | ⚠️ Unaudited |
| AccessControlledAggregator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x00c7a37b03690fb9f41b5c5af8131735c7275446` | ⚠️ Unaudited |
| AccessControlledOffchainAggregator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x00260db07a22a6a5182213d8de1aba0705a6cd78` | ⚠️ Unaudited |
| AdaptiveCurveIrm | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x870ac11d48b15db9a138cf899d20f13f79ba00bc` | ⚠️ Unaudited |
| Aggregator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0b8b84d5f89378eb7f902031b6006dd6c0eeae4d` | ⚠️ Unaudited |
| AggregatorFacade | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x010b33ce6fe3c65e8c873d91be0bcb3de36c0a67` | ⚠️ Unaudited |
| ArbitrumValidator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x31982c9e5edd99bb923a948252167ea4bbc38ac1` | ⚠️ Unaudited |
| BulkerGateway | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf99e3796f94000462f736925cf32162fea82c168` | ⚠️ Unaudited |
| Bundler3 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6566194141eefa99af43bb5aa71460ca2dc90245` | ⚠️ Unaudited |
| CompoundV2MigrationAdapter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9b89c07f480df1945279031b5fc6ff241b8f1101` | ⚠️ Unaudited |
| CompoundV2MigrationBundler | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x26bf52a84360ad3d01d7cdc28fc2ddc04d8c8647` | ⚠️ Unaudited |
| CompoundV3MigrationAdapter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdba5bde29ea030bfa6a608592dfca1d02cb26773` | ⚠️ Unaudited |
| CompoundV3MigrationBundler | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3a0e2e9fb9c95fbc843daf166276c90b6c479558` | ⚠️ Unaudited |
| ConfirmedTransactionModule | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2e1b5a40edc922bce489668b11749b8eabd67f6b` | ⚠️ Unaudited |
| CPoR | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x575a16cd2305ad7171f5c1036c3506070df28c51` | ⚠️ Unaudited |
| DelayedERC4626Oracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x363fffe9e293df351fec24bde69954c472c52321` | ⚠️ Unaudited |
| DualBot | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0f2ceadda587491dd513a82cd0fecb896e2880f4` | ⚠️ Unaudited |
| DummyFeed | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc3866d726c204c0836e0677a31973c649888973d` | ⚠️ Unaudited |
| EACAggregatorProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x00a773bd2ce922f866bb43ab876009fb959d7c29` | ⚠️ Unaudited |
| ERC20WrapperAdapter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf83d17dfe160597b19e4fdd8ea61a23e9a87f962` | ⚠️ Unaudited |
| ERC4626Feed | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6d32736220291d20e927b891aba976c6fc89891f` | ⚠️ Unaudited |
| EthereumBundler | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa7995f71aa11525db02fc2473c37dee5dbf55107` | ⚠️ Unaudited |
| EthereumBundlerV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x4095f064b8d3c3548a3bebfd0bbfd04750e30077` | ⚠️ Unaudited |
| EthereumGeneralAdapter1 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4a6c312ec70e8747a587ee860a0353cd42be0ae0` | ⚠️ Unaudited |
| Executor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x72d2277c7242a4464d9b277cf682e350205e6938` | ⚠️ Unaudited |
| FeedRegistry | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x47fb2585d2c56fe188d0e6ec628a38b74fceeedf` | ⚠️ Unaudited |
| Firefighter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x213f30e50892dc90d8893618c656316b769ffb23` | ⚠️ Unaudited |
| Flags | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x24ec8467ab20e0b3c11a0a3fa39ccba9ec3bdabf` | ⚠️ Unaudited |
| KeeperRegistry | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4f75953c2661d3a0138fcd80551ea10b80dd08c7` | ⚠️ Unaudited |
| Lens | unknown | external_dependency_or_infra | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x507fa343d0a90786d86c7cd885f5c49263a91ff4` | ⚠️ Unaudited |
| Liquidator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc88058aa7c210e23e6cc54baba7ba6c51479dd4d` | ⚠️ Unaudited |
| MetaMorphoFactory | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | n/a | `0xa9c3d3a366466fa809d1ae982fb2c46e5fc41101` | ⚠️ Unaudited |
| MetaMorphoV1_1 | unknown | project_anchor | own_supporting | 0 | ethereum | unit-379841 | `0x5b56f90340dbaa6a8693dadb141d620f0e154fe6` | ⚠️ Unaudited |
| MetaMorphoV1_1 | unknown | project_anchor | own_supporting | 0 | ethereum | unit-379844 | `0xf79f51f8f473ed34f6b2b13ee74c3208286d53eb` | ⚠️ Unaudited |
| MetaMorphoV1_1Factory | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | n/a | `0x1897a8997241c1cd4bd0698647e4eb7213535c24` | ⚠️ Unaudited |
| MetaOracleDeviationTimelockFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x44d049eed4ad33807859c45bbd3a8eb47917a9f4` | ⚠️ Unaudited |
| Morpho | unknown | external_dependency_or_infra | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x33333aea097c193e66081e930c33020272b33333` | ⚠️ Unaudited |
| MorphoChainlinkOracleV2 | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | n/a | `0x95e85fef34b79f0030f41fb619733bf7e024bd87` | ⚠️ Unaudited |
| MorphoChainlinkOracleV2Factory | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | n/a | `0x3a7bb36ee3f3ee32a60e9f2b33c1e5f2e83ad766` | ⚠️ Unaudited |
| MorphoMarketV1AdapterV2Factory | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | n/a | `0x32bb1c0d48d8b1b3363e86eeb9a0300bad61ccc1` | ⚠️ Unaudited |
| MorphoOFTAdapter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x50d3d6fd7518682155e3c1b65fdd50e1b35649d9` | ⚠️ Unaudited |
| MorphoToken | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | n/a | `0x9994e35db50125e0df82e4c2dde62496ce330999` | ⚠️ Unaudited |
| MorphoTokenEthereum | unknown | external_dependency_or_infra | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x58d97b57bb95320f9a05dc918aef65434969c2b2` | ⚠️ Unaudited |
| MorphoVaultV1AdapterFactory | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | n/a | `0xd1b8e2dee25c2b89dcd2f98448a7ce87d6f63394` | ⚠️ Unaudited |
| Oracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0fc84ab084a08971e6f52a9da41bfae82b546ebe` | ⚠️ Unaudited |
| ParaswapAdapter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x03b5259bd204bfd4a616e5b79b0b786d90c6c38f` | ⚠️ Unaudited |
| PositionsManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4592e45e0c5dbee94a135720ccff2e4353dac6de` | ⚠️ Unaudited |
| PriceConsumer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7f7d995fc12752fe5df42134252e8b7a8922f242` | ⚠️ Unaudited |
| ProxyAdmin | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | n/a | `0x857ff845f9b11c19553b1d090b41c2255c67acc0` | ⚠️ Unaudited |
| PublicAllocator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3df41890b6f4b723d9bb85f81d42990e0fca05c4` | ⚠️ Unaudited |
| RegistryList | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3696c5eae4a7ffd04ea163564571e9cd8ed9364e` | ⚠️ Unaudited |
| ReservoirLooper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0f6b59f54087ace95cb1fdcb3d2af1aca7c87df4` | ⚠️ Unaudited |
| SavingsDai | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x83f20f44975d03b1b09e64809b757c47f942beea` | ⚠️ Unaudited |
| SimpleReadAccessController | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4a9d21b46810f69a02ac2d61f4bf1963de82700d` | ⚠️ Unaudited |
| SimpleWriteAccessController | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x641b698ad1c6e503470520b0eecb472c0589dfe6` | ⚠️ Unaudited |
| SupplyVault | unknown | external_dependency_or_infra | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x36f8d0d0573ae92326827c4a82fe4ce4c244cab6` | ⚠️ Unaudited |
| Swapper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2540ff76ebd375691528665634fb15b118e73b3e` | ⚠️ Unaudited |
| SwapperAngle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4e8644d7e0c185f07ab33535ca73a8d3880d592e` | ⚠️ Unaudited |
| SwapperDaiUsds | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x99ce8de8737a1b05affd9539750c23255e29c873` | ⚠️ Unaudited |
| SwapperERC4626 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1193888325a82ff22603bd316ed7b5398c080e26` | ⚠️ Unaudited |
| SwapperMakerPSM | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0076af860630ea0337d4c932b986d68f32a41254` | ⚠️ Unaudited |
| SwapperRusd | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x242db4438ba1686050d679680478da876a9dacee` | ⚠️ Unaudited |
| SwapperSimpleUniV3 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x45241b97afbe5b9883b8439615d9f7e28033d54a` | ⚠️ Unaudited |
| SwapperWsteth | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8fa4443df3989ed5c51a4e6f436f1f51129dc868` | ⚠️ Unaudited |
| UniversalRewardsDistributor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x330eefa8a787552dc5cad3c3ca644844b1e61ddb` | ⚠️ Unaudited |
| UrdFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9baa51245cdd28d8d74afe8b3959b616e9ee7c8d` | ⚠️ Unaudited |
| UsycBot | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3e33c1e80cf8fd074da6eb408f2059c2a9900c03` | ⚠️ Unaudited |
| UsycLiquidator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3858266579f2913cbba5eaa6381cddfc684728ce` | ⚠️ Unaudited |
| ValidatorProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x264bddfd9d93d48d759fbdb0670be1c6fdd50236` | ⚠️ Unaudited |
| VaultV2Factory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa1d94f746defa1928926b84fb2596c06926c0405` | ⚠️ Unaudited |
| Vester | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x21aef9afc97301c9db61e45179dff1115ca16e60` | ⚠️ Unaudited |
| Vyper_contract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe384f1db840ddfac78ddd25e5fdb89a9a2411a72` | ⚠️ Unaudited |
| Wrapper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9d03bb2092270648d7480049d0e58d2fcf0e5123` | ⚠️ Unaudited |
| WstethBot | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf14dc5bdfa8050a3ebf330092f71c54d3febd16b` | ⚠️ Unaudited |
| WstEthStEthExchangeRateChainlinkAdapter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x905b7dabcd3ce6b792d874e303d336424cdb1421` | ⚠️ Unaudited |

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
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe34d43ca9152d198b60654868c8cd197196a492f` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [2025-09-15-blackthorn.pdf](https://github.com/morpho-org/vault-v2/blob/main/audits/2025-09-15-blackthorn.pdf) | Blackthorn | Audit | 2025-09 | fresh | Inherited from Morpho — forked code, scoped to VaultV2 | n/a | matched | 0 | 0 | 0 | 0 | n/a |
| [2025-09-15-chainsecurity.pdf](https://github.com/morpho-org/vault-v2/blob/main/audits/2025-09-15-chainsecurity.pdf) | ChainSecurity | Audit | 2025-09 | fresh | Inherited from Morpho — forked code, scoped to VaultV2 | n/a | matched | 0 | 0 | 0 | 0 | n/a |
| [2025-09-15-spearbit.pdf](https://github.com/morpho-org/vault-v2/blob/main/audits/2025-09-15-spearbit.pdf) | Spearbit | Audit | 2025-09 | fresh | Inherited from Morpho — forked code, scoped to VaultV2 | n/a | matched | 0 | 0 | 0 | 0 | n/a |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [18819] 2025-09-15-blackthorn.pdf — matched: No reason recorded
- [18820] 2025-09-15-chainsecurity.pdf — matched: No reason recorded
- [18821] 2025-09-15-spearbit.pdf — matched: No reason recorded

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

- No persisted address-book scope analysis is available.

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 66 |
| upstream | 7 |
| standard_library | 5 |
| needs_review | 7 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Address-book scope dispositions: 0 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 0 unmatched
- Matched-own operational status: 0 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: n/a
- Match method counts: normalized_scope_reviewed_exact_source_hash_v1=12

Fork inheritance lineage and inherited audits are included when available.
