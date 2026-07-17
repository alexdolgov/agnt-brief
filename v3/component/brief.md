# Agentic Audit Brief: Component

## Export Authority

- Production state: **blocked no audit authority**
- Raw selected rows: 0 across 0 audit(s)
- Eligible audit results: 0 (0 matched; 0 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `12555af2097191e60e7a3dc0743058c9046ed87a105382bdae663a49f79103f7`

## Project Overview

- Project: Component (`component`)
- Website: [https://component.finance/](https://component.finance/)
- Lifecycle: unknown
- Generated: 2026-07-17T12:00:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: bsc, ethereum, fantom, gnosis
- Contract surface: 106 unique implementations (106 raw deployments)
- Coverage basis: 0/3 confirmed own live verified implementations (0.0%); conservative 0.0% with 0 needs-review implementation(s)
- DeFi Llama TVL: $161,320.73
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for Component. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 3 contract row(s) across bsc, ethereum, fantom, gnosis. Structural roles: 3 core. No upgradeable pattern was identified in these rows.

## Logic Topography

- Exact-run contract rows: 3
- Structural roles: core (3)
- Contract kinds: contract (3)
- Detected standards: erc165 (1), erc20 (1)
- Frameworks: none
- Upgradeable-pattern rows: 0

## Fork Analysis

0 of 27 contracts are derived from known codebases. 27 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0x2f4184f73634775cd929c081d6e15ca8f3ff5fab`, chain 1)
- UnnamedContract (`0x57813e8d1e77c069e66d0bce3729288ac4d6f0c8`, chain 1)
- UnnamedContract (`0x6477960dd932d29518d7e8087d5ea3d11e606068`, chain 1)
- UnnamedContract (`0x721e5380627e8ab1a3636edeab05994fc0406bed`, chain 1)
- UnnamedContract (`0xad6e6594e2e9cca9326dd80bffd7baef4e2a10f1`, chain 1)
- UnnamedContract (`0x3bb6bf6ecbc71f8f78d1eec9c91de4f8fd5c891c`, chain 56)
- UnnamedContract (`0x7b57f2f49e87b0c622269d025e3be93fba57406e`, chain 56)
- UnnamedContract (`0xcf76a0cedf50da184fdef08a9d04e6829d7fefdf`, chain 56)
- UnnamedContract (`0xe2722579f525d02576799934072efb50441d452f`, chain 56)
- UnnamedContract (`0xe5481b3b4e78811ee565eb4af4aabf3f23469b33`, chain 56)
- UnnamedContract (`0x53de001bbfae8cecbbd6245817512f8dbd8eef18`, chain 100)
- UnnamedContract (`0x990107a31d2a3ec03390c44f6250438484e1b7a3`, chain 100)
- UnnamedContract (`0xc1b303c0a40b02395bbdbf20fcee21796dbc5f61`, chain 100)
- UnnamedContract (`0xc7e06837595336559ee2a23045fdc9713b2e3037`, chain 100)
- UnnamedContract (`0xeac13bda20a0a81f5cb0addc4a091d00344c2e1b`, chain 100)
- UnnamedContract (`0xf82fc0ecbf3ff8e253a262447335d3d8a72cd028`, chain 100)
- UnnamedContract (`0xfbbd0f67cebca3252717e66c1ed1e97ad8b06377`, chain 100)
- UnnamedContract (`0x238139bf999f389063444e397cdfadf780ec57db`, chain 250)
- UnnamedContract (`0x49519631b404e06ca79c9c7b0dc91648d86f08db`, chain 250)
- UnnamedContract (`0x660da7864ee46ac94aef2df982f5bcab5b5e62ec`, chain 250)
- UnnamedContract (`0x7805e2f41c66c53cd82cce8c18db2ff78a530fe5`, chain 250)
- UnnamedContract (`0xb7e06998e79106b58b773948b6d9868b6108865d`, chain 250)
- UnnamedContract (`0xddca02ddd94f97eefe07fccde780fd2fbdc85b23`, chain 250)
- UnnamedContract (`0xea25f5c6034258469502e594a08a342401213701`, chain 250)
- DirectAssimilator (`0x39dcad1a118d6786b1225c1b8140de9ba0e0e57c`, chain 56)
- MainnetUsdpToUsdpAssimilator (`0x70f648c442efa7007e7e4323e14e7bdc800bd0cf`, chain 1)
- ProportionalLiquidity (`0x49519631b404e06ca79c9c7b0dc91648d86f08db`, chain 1)

## Contract Surface Quality

- Logic-topography rows: 3; live-surface rows included: 3 (3 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 27/27 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 0/3 (0.0%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 27 own, 14 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 65 discovered implementations shown in the inventory but excluded from coverage (7 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 1
- Confirmed-live implementations: 27 of 106 unique; 79 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 0/68
- Verified + Unaudited implementations: 68
- Verified by bytecode match: 0
- Unverified implementations: 38
- Unique implementations: 106
- Raw deployments: 106
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

### ⚠️ Verified + Unaudited (68)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| AssetParametersViewer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd51f509fb80b4ff4d4bfb4144eed877f0f499af6` | ⚠️ Unaudited |
| BearingAssetOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x190db945ae572ae72e367b549b78c41e211864ab` | ⚠️ Unaudited |
| BearingAssetOracleSimple | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc31629c9d5bc9a28cefa34d73d87d86b2a6b4315` | ⚠️ Unaudited |
| CDPManager01 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0e13ab042ec5ab9fc6f43979406088b9028f66fa` | ⚠️ Unaudited |
| CDPManager01_Fallback | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xad3617d11f4c1d30603551ea75e9ace9cb386e15` | ⚠️ Unaudited |
| CDPRegistry | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1a5ff58bc3246eb233fea20d32b79b5f01ec650c` | ⚠️ Unaudited |
| ChainlinkedKeep3rV1OracleMainAsset | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | n/a | `0x0ca3de93de71e4a28eb5d04b72970d69458a3d21` | ⚠️ Unaudited |
| ChainlinkedKeep3rV1OraclePoolToken | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | n/a | `0x3b5f4d33845d546c76dfb624ef002cb3a58391e9` | ⚠️ Unaudited |
| ChainlinkedKeydonixOracleMainAsset | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | n/a | `0x769e35030f5ce160b287bce0462d46decf29b6dd` | ⚠️ Unaudited |
| ChainlinkedKeydonixOraclePoolToken | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | n/a | `0x11586e3b20239ef471134a0da4a4239010a1c500` | ⚠️ Unaudited |
| ChainlinkedOracleMainAsset | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | n/a | `0x0b17546514aad0d5453f9e2d0a56a19cb5dae774` | ⚠️ Unaudited |
| CollateralRegistry | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3db39b538db1123389c77f888a213f1a6dd22ef3` | ⚠️ Unaudited |
| Component | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2e5f6c31ffebb8221bbaed6e8214557633347570` | ⚠️ Unaudited |
| Components | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x71b1e5565cb206d426ab355a5835b62e50fc919e` | ⚠️ Unaudited |
| ComponentToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9f20ed5f919dc1c1695042542c13adcfc100dcab` | ⚠️ Unaudited |
| CurveLPOracle | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | n/a | `0x0e08d9e1dc22a400ebca25e9a8f292910fa8fe08` | ⚠️ Unaudited |
| CyTokenOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x40b743ca424e3ec7b97f5ad93d2263ae01dae1d8` | ⚠️ Unaudited |
| DirectAssimilator | unknown | project_anchor | own_supporting | 0 | bsc | unit-232158 | `0x39dcad1a118d6786b1225c1b8140de9ba0e0e57c` | ⚠️ Unaudited |
| Distribution | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2532d45794b76b93700265243b4424f45ad33091` | ⚠️ Unaudited |
| DummyToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6aade8a8a6b85921009d2caa25dc69348f4c009e` | ⚠️ Unaudited |
| FeeDistribution | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3f93de882da8150dc98a3a1f4626e80e3282df46` | ⚠️ Unaudited |
| FeeDistributionHelper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x57a3cc9b4c5b189b116a8d4af18db7e653044a1a` | ⚠️ Unaudited |
| ForceTransferAssetStore | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf7633fa353e74edb211b1d22e23c96ae4d7b24c0` | ⚠️ Unaudited |
| Foundation | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x492530fc97522d142bc57710be57fa57a43dc911` | ⚠️ Unaudited |
| LiquidationAuction01 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa41a3625c02c60ae932515e7f921ada1811af6a5` | ⚠️ Unaudited |
| LiquidationAuction02 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xaef1ed4c492bf4c57221be0706def67813d79955` | ⚠️ Unaudited |
| LiquidationTriggerChainlinkMainAsset | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x854bf644e31d6619d3fe246f8d83e87ed85baa12` | ⚠️ Unaudited |
| LiquidationTriggerKeep3rMainAsset | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2b6369fb4faaa3c0b2b766a5e1073fec6b176270` | ⚠️ Unaudited |
| LiquidationTriggerKeep3rPoolToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0ca1a59a987922375234df94919a456f61e93e1e` | ⚠️ Unaudited |
| LiquidationTriggerKeep3rSushiSwapMainAsset | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x20c854cdd322d3a501da91374027b4b257de57dd` | ⚠️ Unaudited |
| LiquidationTriggerKeep3rSushiSwapPoolToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x78d09b58402c29016425497289e12fdd12f06027` | ⚠️ Unaudited |
| LiquidationTriggerKeydonixMainAsset | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x701a228b0d7a3fc740462e9b2af13f2a5c16c882` | ⚠️ Unaudited |
| LiquidationTriggerKeydonixPoolToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf6f90336666413c73a940e0a53cb2f762326ab10` | ⚠️ Unaudited |
| LiquidationTriggerSimple | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x18485d35c86adb634c8879a58c25f50c960c5917` | ⚠️ Unaudited |
| MainnetUsdpToUsdpAssimilator | unknown | project_anchor | own_supporting | 0 | ethereum | unit-232141 | `0x70f648c442efa7007e7e4323e14e7bdc800bd0cf` | ⚠️ Unaudited |
| MerkleDistributor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc8c59160542b97bd160b3b6a6b353dac0adc8283` | ⚠️ Unaudited |
| OraclePoolToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5968bc303930155d36fa9aee2b5b0f6d39598434` | ⚠️ Unaudited |
| OracleRegistry | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x10bbe205832edc371781cc224ef202cd98e8f38f` | ⚠️ Unaudited |
| Orchestrator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x2e5f6c31ffebb8221bbaed6e8214557633347570` | ⚠️ Unaudited |
| ParametersBatchUpdater | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4dd1a6db148becdadadfc407d23b725edd3cfb6f` | ⚠️ Unaudited |
| PartitionedLiquidity | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x660717f9cf0e35cd8a2b53d9ef17de8a936a65f0` | ⚠️ Unaudited |
| ProportionalLiquidity | unknown | project_anchor | own_supporting | 1 | ethereum | unit-232164 | `0x49519631b404e06ca79c9c7b0dc91648d86f08db` | ⚠️ Unaudited |
| QuackedDuck | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xab5cf4620c16fdbd584b64c6e6eb7703a422f604` | ⚠️ Unaudited |
| SelectiveLiquidity | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5d127ae0438393c1057f73afd82752069987c463` | ⚠️ Unaudited |
| StakeManager_CMP_CMPLP | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2be4d20b9eeb7d625fa68112568f94c615af376b` | ⚠️ Unaudited |
| Swaps | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x0bd4e0acb1fde78c0ce4d9f265685f7b22722a01` | ⚠️ Unaudited |
| TokenVesting | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3976cdc41f34466ebb7efa2fd097d3eab808ea65` | ⚠️ Unaudited |
| UniswapV3Oracle | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | n/a | `0x807983026c476d4e0d695e80413309aa186e0ba7` | ⚠️ Unaudited |
| USDP | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1456688345527be1f37e9e627da0837d6f08c925` | ⚠️ Unaudited |
| USDPStaking | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8ac08b12b9417dbecf7f6ab2dd96e22441adf3a4` | ⚠️ Unaudited |
| USDPStakingCollector | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x650cc1623f81582b19e89db09e242d8de0dae511` | ⚠️ Unaudited |
| Vault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb1cff81b9305166ff1efc49a129ad2afcd7bcf19` | ⚠️ Unaudited |
| VaultManagerChainlinkMainAsset | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7a646c42b64d21e6b871efd85f54d707ace1f9d1` | ⚠️ Unaudited |
| VaultManagerKeep3rMainAsset | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x16c3ad40950acfb0910452d0c537f91570cc8f76` | ⚠️ Unaudited |
| VaultManagerKeep3rPoolToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1ee32424cd66c23386cf511c8b749c1e92043b0c` | ⚠️ Unaudited |
| VaultManagerKeep3rSushiSwapMainAsset | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x54ba276a62e7e3e76d362f672f00ed31a983067b` | ⚠️ Unaudited |
| VaultManagerKeep3rSushiSwapPoolToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x18a2381d318ee56d19316f4a7d39a2a7996e8390` | ⚠️ Unaudited |
| VaultManagerKeep3rUniswapPoolToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2637d65912660e527c998824b8933d1a1bd7daa3` | ⚠️ Unaudited |
| VaultManagerKeydonixMainAsset | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x78727a77028d9130d2772713d570780231e64ecf` | ⚠️ Unaudited |
| VaultManagerKeydonixPoolToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf1ca03aae24c4865d09643cb929141d8d3c60a75` | ⚠️ Unaudited |
| VaultManagerParameters | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x203153522b9eaef4ae17c6e99851ee7b2f7d312e` | ⚠️ Unaudited |
| VaultManagerSimple | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb82c6d510b3a0dc9f198de0ad2a3839973c6783c` | ⚠️ Unaudited |
| VaultManagerStandard | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2726ebdf958cc15f5adb01aad22741329948fbdb` | ⚠️ Unaudited |
| VaultParameters | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb46f8cf42e504efe8bef895f848741daa55e9f1d` | ⚠️ Unaudited |
| ViewLiquidity | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7b57f2f49e87b0c622269d025e3be93fba57406e` | ⚠️ Unaudited |
| Vyper_contract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x18e6c923d57a1378b6addc473a59b40d031069ec` | ⚠️ Unaudited |
| WrappedToUnderlyingOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1145e9503000c4b2c9022a196717be5b7feba6a1` | ⚠️ Unaudited |
| YvTokenOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x759eb07a8258bcf5590e9303763803dcf264652d` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (38)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-232138 | `0x2f4184f73634775cd929c081d6e15ca8f3ff5fab` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-232139 | `0x57813e8d1e77c069e66d0bce3729288ac4d6f0c8` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-232140 | `0x6477960dd932d29518d7e8087d5ea3d11e606068` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-232142 | `0x721e5380627e8ab1a3636edeab05994fc0406bed` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-232143 | `0xad6e6594e2e9cca9326dd80bffd7baef4e2a10f1` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-232159 | `0x3bb6bf6ecbc71f8f78d1eec9c91de4f8fd5c891c` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | n/a | `0x55d398326f99059ff775485246999027b3197955` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-232160 | `0x7b57f2f49e87b0c622269d025e3be93fba57406e` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | n/a | `0x8ac76a51cc950d9822d68b83fe1ad97b32cd580d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-232161 | `0xcf76a0cedf50da184fdef08a9d04e6829d7fefdf` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | n/a | `0xdacd011a71f8c9619642bf482f1d4ceb338cffcf` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-232162 | `0xe2722579f525d02576799934072efb50441d452f` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-232163 | `0xe5481b3b4e78811ee565eb4af4aabf3f23469b33` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | n/a | `0xe9e7cea3dedca5984780bafc599bd69add087d56` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | gnosis | unit-232144 | `0x53de001bbfae8cecbbd6245817512f8dbd8eef18` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | gnosis | unit-232145 | `0x990107a31d2a3ec03390c44f6250438484e1b7a3` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | gnosis | unit-232146 | `0xc1b303c0a40b02395bbdbf20fcee21796dbc5f61` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | gnosis | unit-232147 | `0xc7e06837595336559ee2a23045fdc9713b2e3037` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | gnosis | n/a | `0xd10cc63531a514bba7789682e487add1f15a51e2` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | gnosis | n/a | `0xddafbb505ad214d7b80b1f830fccc89b60fb7a83` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | gnosis | n/a | `0xe91d153e0b41518a2ce8dd3d7944fa863463a97d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | gnosis | unit-232148 | `0xeac13bda20a0a81f5cb0addc4a091d00344c2e1b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | gnosis | unit-232149 | `0xf82fc0ecbf3ff8e253a262447335d3d8a72cd028` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | gnosis | unit-232150 | `0xfbbd0f67cebca3252717e66c1ed1e97ad8b06377` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | gnosis | n/a | `0xfc8b2690f66b46fec8b3ceeb95ff4ac35a0054bc` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | gnosis | n/a | `0xfe7ed09c4956f7cdb54ec4ffcb9818db2d7025b8` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | fantom | n/a | `0x04068da6c83afcfa0e13ba15a6696662335d5b75` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | fantom | unit-232151 | `0x238139bf999f389063444e397cdfadf780ec57db` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | fantom | n/a | `0x3129ac70c738d398d1d74c87eab9483fd56d16f8` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | fantom | unit-232152 | `0x49519631b404e06ca79c9c7b0dc91648d86f08db` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | fantom | unit-232153 | `0x660da7864ee46ac94aef2df982f5bcab5b5e62ec` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | fantom | unit-232154 | `0x7805e2f41c66c53cd82cce8c18db2ff78a530fe5` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | fantom | n/a | `0x82f0b8b456c1a451378467398982d4834b6829c1` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | fantom | n/a | `0x8d11ec38a3eb5e956b052f67da8bdc9bef8abf3e` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | fantom | unit-232155 | `0xb7e06998e79106b58b773948b6d9868b6108865d` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | fantom | n/a | `0xdc301622e621166bd8e82f2ca0a26c13ad0be355` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | fantom | unit-232156 | `0xddca02ddd94f97eefe07fccde780fd2fbdc85b23` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | fantom | unit-232157 | `0xea25f5c6034258469502e594a08a342401213701` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

- No persisted address-book scope analysis is available.

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| bsc | `0x39dcad1a118d6786b1225c1b8140de9ba0e0e57c` | DirectAssimilator | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x70f648c442efa7007e7e4323e14e7bdc800bd0cf` | MainnetUsdpToUsdpAssimilator | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x49519631b404e06ca79c9c7b0dc91648d86f08db` | ProportionalLiquidity | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 61 |
| upstream | 7 |
| standard_library | 0 |
| needs_review | 38 |

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
