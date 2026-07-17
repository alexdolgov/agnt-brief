# Agentic Audit Brief: Component

## Project Overview

- Project: Component (`component`)
- Lifecycle: unknown
- Generated: 2026-07-04T14:53:10.372Z
- Pipeline run: v2-2026-07-02-1ba3fd
- Chains: bsc, ethereum
- Contract surface: 68 unique implementations (68 raw deployments)
- DeFi Llama TVL: $161,320.73
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Dexs. Structurally: 67 project-authored contract(s) across 2 chain(s); 13 ERC20 tokens; role-gated via AccessControl; built on openzeppelin.

### Architecture

The protocol comprises 2 functional families. Its contracts share 9 common project-authored base contract(s) (chainlinkedoraclesimple, oraclesimple, auth). Dominant framework: openzeppelin.

## Fork Lineage

This project reuses audited code from **Unit Protocol** (`unit-protocol`) in the ParametersBatchUpdater subsystem.
4 audits inherited from `unit-protocol`, scoped to that subsystem.

Total inherited audits: 4. Inherited coverage reflects forked/shared code audited by the origin project — it is not a direct audit of this project.

## Contract Surface Quality

- Indexed contracts: 68; live-surface contracts included: 68 (68 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 1/61 (1.6%)
- Deployed-live implementations: 68 of 68 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 1/68
- Verified + Unaudited implementations: 67
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 68
- Raw deployments: 68
- Audits discovered: 4 (0 direct, 4 inherited from forked code)
- Scoreable audits (matched contracts): 4
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2021-01 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 1 stale, 3 unknown
- Coverage code basis (deployed vs audited code): 1 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| CertiK | Tier 2 | 1 | 1.5% | n/a |
| LevelK | Tier 2 | 1 | 1.5% | 2021-01 |
| Unknown | Tier 2 | 1 | 1.5% | n/a |
| yAudit | Tier 2 | 1 | 1.5% | n/a |

## Contract Surface

### ✅ Verified + Audited (1)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| ParametersBatchUpdater | unknown | ethereum | n/a | [`0x4dd1a6db148becdadadfc407d23b725edd3cfb6f`](./contracts/ethereum-1/0x4dd1a6db148becdadadfc407d23b725edd3cfb6f/) | ✅ Audited |

### ⚠️ Verified + Unaudited (67)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| AssetParametersViewer | unknown | ethereum | n/a | [`0xd51f509fb80b4ff4d4bfb4144eed877f0f499af6`](./contracts/ethereum-1/0xd51f509fb80b4ff4d4bfb4144eed877f0f499af6/) | ⚠️ Unaudited |
| BearingAssetOracle | unknown | ethereum | n/a | [`0x190db945ae572ae72e367b549b78c41e211864ab`](./contracts/ethereum-1/0x190db945ae572ae72e367b549b78c41e211864ab/) | ⚠️ Unaudited |
| BearingAssetOracleSimple | unknown | ethereum | n/a | [`0xc31629c9d5bc9a28cefa34d73d87d86b2a6b4315`](./contracts/ethereum-1/0xc31629c9d5bc9a28cefa34d73d87d86b2a6b4315/) | ⚠️ Unaudited |
| CDPManager01 | unknown | ethereum | n/a | [`0x0e13ab042ec5ab9fc6f43979406088b9028f66fa`](./contracts/ethereum-1/0x0e13ab042ec5ab9fc6f43979406088b9028f66fa/) | ⚠️ Unaudited |
| CDPManager01_Fallback | unknown | ethereum | n/a | [`0xad3617d11f4c1d30603551ea75e9ace9cb386e15`](./contracts/ethereum-1/0xad3617d11f4c1d30603551ea75e9ace9cb386e15/) | ⚠️ Unaudited |
| CDPRegistry | unknown | ethereum | n/a | [`0x1a5ff58bc3246eb233fea20d32b79b5f01ec650c`](./contracts/ethereum-1/0x1a5ff58bc3246eb233fea20d32b79b5f01ec650c/) | ⚠️ Unaudited |
| ChainlinkedKeep3rV1OracleMainAsset | unknown | ethereum | n/a | [`0x0ca3de93de71e4a28eb5d04b72970d69458a3d21`](./contracts/ethereum-1/0x0ca3de93de71e4a28eb5d04b72970d69458a3d21/) | ⚠️ Unaudited |
| ChainlinkedKeep3rV1OraclePoolToken | unknown | ethereum | n/a | [`0x3b5f4d33845d546c76dfb624ef002cb3a58391e9`](./contracts/ethereum-1/0x3b5f4d33845d546c76dfb624ef002cb3a58391e9/) | ⚠️ Unaudited |
| ChainlinkedKeydonixOracleMainAsset | unknown | ethereum | n/a | [`0x769e35030f5ce160b287bce0462d46decf29b6dd`](./contracts/ethereum-1/0x769e35030f5ce160b287bce0462d46decf29b6dd/) | ⚠️ Unaudited |
| ChainlinkedKeydonixOraclePoolToken | unknown | ethereum | n/a | [`0x11586e3b20239ef471134a0da4a4239010a1c500`](./contracts/ethereum-1/0x11586e3b20239ef471134a0da4a4239010a1c500/) | ⚠️ Unaudited |
| ChainlinkedOracleMainAsset | unknown | ethereum | n/a | [`0x0b17546514aad0d5453f9e2d0a56a19cb5dae774`](./contracts/ethereum-1/0x0b17546514aad0d5453f9e2d0a56a19cb5dae774/) | ⚠️ Unaudited |
| CollateralRegistry | unknown | ethereum | n/a | [`0x3db39b538db1123389c77f888a213f1a6dd22ef3`](./contracts/ethereum-1/0x3db39b538db1123389c77f888a213f1a6dd22ef3/) | ⚠️ Unaudited |
| Component | unknown | ethereum | n/a | [`0x2e5f6c31ffebb8221bbaed6e8214557633347570`](./contracts/ethereum-1/0x2e5f6c31ffebb8221bbaed6e8214557633347570/) | ⚠️ Unaudited |
| Components | unknown | ethereum | n/a | [`0x71b1e5565cb206d426ab355a5835b62e50fc919e`](./contracts/ethereum-1/0x71b1e5565cb206d426ab355a5835b62e50fc919e/) | ⚠️ Unaudited |
| ComponentToken | unknown | ethereum | n/a | [`0x9f20ed5f919dc1c1695042542c13adcfc100dcab`](./contracts/ethereum-1/0x9f20ed5f919dc1c1695042542c13adcfc100dcab/) | ⚠️ Unaudited |
| CurveLPOracle | unknown | ethereum | n/a | [`0x0e08d9e1dc22a400ebca25e9a8f292910fa8fe08`](./contracts/ethereum-1/0x0e08d9e1dc22a400ebca25e9a8f292910fa8fe08/) | ⚠️ Unaudited |
| CyTokenOracle | unknown | ethereum | n/a | [`0x40b743ca424e3ec7b97f5ad93d2263ae01dae1d8`](./contracts/ethereum-1/0x40b743ca424e3ec7b97f5ad93d2263ae01dae1d8/) | ⚠️ Unaudited |
| DirectAssimilator | unknown | bsc | n/a | [`0x39dcad1a118d6786b1225c1b8140de9ba0e0e57c`](./contracts/bsc-56/0x39dcad1a118d6786b1225c1b8140de9ba0e0e57c/) | ⚠️ Unaudited |
| Distribution | unknown | ethereum | n/a | [`0x2532d45794b76b93700265243b4424f45ad33091`](./contracts/ethereum-1/0x2532d45794b76b93700265243b4424f45ad33091/) | ⚠️ Unaudited |
| DummyToken | unknown | ethereum | n/a | [`0x6aade8a8a6b85921009d2caa25dc69348f4c009e`](./contracts/ethereum-1/0x6aade8a8a6b85921009d2caa25dc69348f4c009e/) | ⚠️ Unaudited |
| FeeDistribution | unknown | ethereum | n/a | [`0x3f93de882da8150dc98a3a1f4626e80e3282df46`](./contracts/ethereum-1/0x3f93de882da8150dc98a3a1f4626e80e3282df46/) | ⚠️ Unaudited |
| FeeDistributionHelper | unknown | ethereum | n/a | [`0x57a3cc9b4c5b189b116a8d4af18db7e653044a1a`](./contracts/ethereum-1/0x57a3cc9b4c5b189b116a8d4af18db7e653044a1a/) | ⚠️ Unaudited |
| ForceTransferAssetStore | unknown | ethereum | n/a | [`0xf7633fa353e74edb211b1d22e23c96ae4d7b24c0`](./contracts/ethereum-1/0xf7633fa353e74edb211b1d22e23c96ae4d7b24c0/) | ⚠️ Unaudited |
| Foundation | unknown | ethereum | n/a | [`0x492530fc97522d142bc57710be57fa57a43dc911`](./contracts/ethereum-1/0x492530fc97522d142bc57710be57fa57a43dc911/) | ⚠️ Unaudited |
| LiquidationAuction01 | unknown | ethereum | n/a | [`0xa41a3625c02c60ae932515e7f921ada1811af6a5`](./contracts/ethereum-1/0xa41a3625c02c60ae932515e7f921ada1811af6a5/) | ⚠️ Unaudited |
| LiquidationAuction02 | unknown | ethereum | n/a | [`0xaef1ed4c492bf4c57221be0706def67813d79955`](./contracts/ethereum-1/0xaef1ed4c492bf4c57221be0706def67813d79955/) | ⚠️ Unaudited |
| LiquidationTriggerChainlinkMainAsset | unknown | ethereum | n/a | [`0x854bf644e31d6619d3fe246f8d83e87ed85baa12`](./contracts/ethereum-1/0x854bf644e31d6619d3fe246f8d83e87ed85baa12/) | ⚠️ Unaudited |
| LiquidationTriggerKeep3rMainAsset | unknown | ethereum | n/a | [`0x2b6369fb4faaa3c0b2b766a5e1073fec6b176270`](./contracts/ethereum-1/0x2b6369fb4faaa3c0b2b766a5e1073fec6b176270/) | ⚠️ Unaudited |
| LiquidationTriggerKeep3rPoolToken | unknown | ethereum | n/a | [`0x0ca1a59a987922375234df94919a456f61e93e1e`](./contracts/ethereum-1/0x0ca1a59a987922375234df94919a456f61e93e1e/) | ⚠️ Unaudited |
| LiquidationTriggerKeep3rSushiSwapMainAsset | unknown | ethereum | n/a | [`0x20c854cdd322d3a501da91374027b4b257de57dd`](./contracts/ethereum-1/0x20c854cdd322d3a501da91374027b4b257de57dd/) | ⚠️ Unaudited |
| LiquidationTriggerKeep3rSushiSwapPoolToken | unknown | ethereum | n/a | [`0x78d09b58402c29016425497289e12fdd12f06027`](./contracts/ethereum-1/0x78d09b58402c29016425497289e12fdd12f06027/) | ⚠️ Unaudited |
| LiquidationTriggerKeydonixMainAsset | unknown | ethereum | n/a | [`0x701a228b0d7a3fc740462e9b2af13f2a5c16c882`](./contracts/ethereum-1/0x701a228b0d7a3fc740462e9b2af13f2a5c16c882/) | ⚠️ Unaudited |
| LiquidationTriggerKeydonixPoolToken | unknown | ethereum | n/a | [`0xf6f90336666413c73a940e0a53cb2f762326ab10`](./contracts/ethereum-1/0xf6f90336666413c73a940e0a53cb2f762326ab10/) | ⚠️ Unaudited |
| LiquidationTriggerSimple | unknown | ethereum | n/a | [`0x18485d35c86adb634c8879a58c25f50c960c5917`](./contracts/ethereum-1/0x18485d35c86adb634c8879a58c25f50c960c5917/) | ⚠️ Unaudited |
| MainnetUsdpToUsdpAssimilator | unknown | ethereum | n/a | [`0x70f648c442efa7007e7e4323e14e7bdc800bd0cf`](./contracts/ethereum-1/0x70f648c442efa7007e7e4323e14e7bdc800bd0cf/) | ⚠️ Unaudited |
| MerkleDistributor | unknown | ethereum | n/a | [`0xc8c59160542b97bd160b3b6a6b353dac0adc8283`](./contracts/ethereum-1/0xc8c59160542b97bd160b3b6a6b353dac0adc8283/) | ⚠️ Unaudited |
| OraclePoolToken | unknown | ethereum | n/a | [`0x5968bc303930155d36fa9aee2b5b0f6d39598434`](./contracts/ethereum-1/0x5968bc303930155d36fa9aee2b5b0f6d39598434/) | ⚠️ Unaudited |
| OracleRegistry | unknown | ethereum | n/a | [`0x10bbe205832edc371781cc224ef202cd98e8f38f`](./contracts/ethereum-1/0x10bbe205832edc371781cc224ef202cd98e8f38f/) | ⚠️ Unaudited |
| Orchestrator | unknown | bsc | n/a | [`0x2e5f6c31ffebb8221bbaed6e8214557633347570`](./contracts/bsc-56/0x2e5f6c31ffebb8221bbaed6e8214557633347570/) | ⚠️ Unaudited |
| PartitionedLiquidity | unknown | ethereum | n/a | [`0x660717f9cf0e35cd8a2b53d9ef17de8a936a65f0`](./contracts/ethereum-1/0x660717f9cf0e35cd8a2b53d9ef17de8a936a65f0/) | ⚠️ Unaudited |
| ProportionalLiquidity | unknown | ethereum | n/a | [`0x49519631b404e06ca79c9c7b0dc91648d86f08db`](./contracts/ethereum-1/0x49519631b404e06ca79c9c7b0dc91648d86f08db/) | ⚠️ Unaudited |
| QuackedDuck | unknown | ethereum | n/a | [`0xab5cf4620c16fdbd584b64c6e6eb7703a422f604`](./contracts/ethereum-1/0xab5cf4620c16fdbd584b64c6e6eb7703a422f604/) | ⚠️ Unaudited |
| SelectiveLiquidity | unknown | ethereum | n/a | [`0x5d127ae0438393c1057f73afd82752069987c463`](./contracts/ethereum-1/0x5d127ae0438393c1057f73afd82752069987c463/) | ⚠️ Unaudited |
| StakeManager_CMP_CMPLP | unknown | ethereum | n/a | [`0x2be4d20b9eeb7d625fa68112568f94c615af376b`](./contracts/ethereum-1/0x2be4d20b9eeb7d625fa68112568f94c615af376b/) | ⚠️ Unaudited |
| Swaps | unknown | bsc | n/a | [`0x0bd4e0acb1fde78c0ce4d9f265685f7b22722a01`](./contracts/bsc-56/0x0bd4e0acb1fde78c0ce4d9f265685f7b22722a01/) | ⚠️ Unaudited |
| TokenVesting | unknown | ethereum | n/a | [`0x3976cdc41f34466ebb7efa2fd097d3eab808ea65`](./contracts/ethereum-1/0x3976cdc41f34466ebb7efa2fd097d3eab808ea65/) | ⚠️ Unaudited |
| UniswapV3Oracle | unknown | ethereum | n/a | [`0x807983026c476d4e0d695e80413309aa186e0ba7`](./contracts/ethereum-1/0x807983026c476d4e0d695e80413309aa186e0ba7/) | ⚠️ Unaudited |
| USDP | unknown | ethereum | n/a | [`0x1456688345527be1f37e9e627da0837d6f08c925`](./contracts/ethereum-1/0x1456688345527be1f37e9e627da0837d6f08c925/) | ⚠️ Unaudited |
| USDPStaking | unknown | ethereum | n/a | [`0x8ac08b12b9417dbecf7f6ab2dd96e22441adf3a4`](./contracts/ethereum-1/0x8ac08b12b9417dbecf7f6ab2dd96e22441adf3a4/) | ⚠️ Unaudited |
| USDPStakingCollector | unknown | ethereum | n/a | [`0x650cc1623f81582b19e89db09e242d8de0dae511`](./contracts/ethereum-1/0x650cc1623f81582b19e89db09e242d8de0dae511/) | ⚠️ Unaudited |
| Vault | unknown | ethereum | n/a | [`0xb1cff81b9305166ff1efc49a129ad2afcd7bcf19`](./contracts/ethereum-1/0xb1cff81b9305166ff1efc49a129ad2afcd7bcf19/) | ⚠️ Unaudited |
| VaultManagerChainlinkMainAsset | unknown | ethereum | n/a | [`0x7a646c42b64d21e6b871efd85f54d707ace1f9d1`](./contracts/ethereum-1/0x7a646c42b64d21e6b871efd85f54d707ace1f9d1/) | ⚠️ Unaudited |
| VaultManagerKeep3rMainAsset | unknown | ethereum | n/a | [`0x16c3ad40950acfb0910452d0c537f91570cc8f76`](./contracts/ethereum-1/0x16c3ad40950acfb0910452d0c537f91570cc8f76/) | ⚠️ Unaudited |
| VaultManagerKeep3rPoolToken | unknown | ethereum | n/a | [`0x1ee32424cd66c23386cf511c8b749c1e92043b0c`](./contracts/ethereum-1/0x1ee32424cd66c23386cf511c8b749c1e92043b0c/) | ⚠️ Unaudited |
| VaultManagerKeep3rSushiSwapMainAsset | unknown | ethereum | n/a | [`0x54ba276a62e7e3e76d362f672f00ed31a983067b`](./contracts/ethereum-1/0x54ba276a62e7e3e76d362f672f00ed31a983067b/) | ⚠️ Unaudited |
| VaultManagerKeep3rSushiSwapPoolToken | unknown | ethereum | n/a | [`0x18a2381d318ee56d19316f4a7d39a2a7996e8390`](./contracts/ethereum-1/0x18a2381d318ee56d19316f4a7d39a2a7996e8390/) | ⚠️ Unaudited |
| VaultManagerKeep3rUniswapPoolToken | unknown | ethereum | n/a | [`0x2637d65912660e527c998824b8933d1a1bd7daa3`](./contracts/ethereum-1/0x2637d65912660e527c998824b8933d1a1bd7daa3/) | ⚠️ Unaudited |
| VaultManagerKeydonixMainAsset | unknown | ethereum | n/a | [`0x78727a77028d9130d2772713d570780231e64ecf`](./contracts/ethereum-1/0x78727a77028d9130d2772713d570780231e64ecf/) | ⚠️ Unaudited |
| VaultManagerKeydonixPoolToken | unknown | ethereum | n/a | [`0xf1ca03aae24c4865d09643cb929141d8d3c60a75`](./contracts/ethereum-1/0xf1ca03aae24c4865d09643cb929141d8d3c60a75/) | ⚠️ Unaudited |
| VaultManagerParameters | unknown | ethereum | n/a | [`0x203153522b9eaef4ae17c6e99851ee7b2f7d312e`](./contracts/ethereum-1/0x203153522b9eaef4ae17c6e99851ee7b2f7d312e/) | ⚠️ Unaudited |
| VaultManagerSimple | unknown | ethereum | n/a | [`0xb82c6d510b3a0dc9f198de0ad2a3839973c6783c`](./contracts/ethereum-1/0xb82c6d510b3a0dc9f198de0ad2a3839973c6783c/) | ⚠️ Unaudited |
| VaultManagerStandard | unknown | ethereum | n/a | [`0x2726ebdf958cc15f5adb01aad22741329948fbdb`](./contracts/ethereum-1/0x2726ebdf958cc15f5adb01aad22741329948fbdb/) | ⚠️ Unaudited |
| VaultParameters | unknown | ethereum | n/a | [`0xb46f8cf42e504efe8bef895f848741daa55e9f1d`](./contracts/ethereum-1/0xb46f8cf42e504efe8bef895f848741daa55e9f1d/) | ⚠️ Unaudited |
| ViewLiquidity | unknown | ethereum | n/a | [`0x7b57f2f49e87b0c622269d025e3be93fba57406e`](./contracts/ethereum-1/0x7b57f2f49e87b0c622269d025e3be93fba57406e/) | ⚠️ Unaudited |
| Vyper_contract | unknown | ethereum | n/a | [`0x18e6c923d57a1378b6addc473a59b40d031069ec`](./contracts/ethereum-1/0x18e6c923d57a1378b6addc473a59b40d031069ec/) | ⚠️ Unaudited |
| WrappedToUnderlyingOracle | unknown | ethereum | n/a | [`0x1145e9503000c4b2c9022a196717be5b7feba6a1`](./contracts/ethereum-1/0x1145e9503000c4b2c9022a196717be5b7feba6a1/) | ⚠️ Unaudited |
| YvTokenOracle | unknown | ethereum | n/a | [`0x759eb07a8258bcf5590e9303763803dcf264652d`](./contracts/ethereum-1/0x759eb07a8258bcf5590e9303763803dcf264652d/) | ⚠️ Unaudited |

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

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [Levelk_Security_Audit_Report.pdf](https://github.com/unitprotocol/protocol_docs/blob/master/Levelk_Security_Audit_Report.pdf) | LevelK | Audit | 2021-01 | stale | Inherited from Unit Protocol — forked code, scoped to ParametersBatchUpdater | inherited | 1 | n/a |
| [Mixbytes Security Audit Report.pdf](https://github.com/unitprotocol/protocol_docs/blob/master/Mixbytes%20Security%20Audit%20Report.pdf) | yAudit | Audit | n/a | unknown | Inherited from Unit Protocol — forked code, scoped to ParametersBatchUpdater | inherited | 1 | n/a |
| [certik-final-report.pdf](https://github.com/unitprotocol/protocol_docs/blob/master/certik-final-report.pdf) | CertiK | Audit | n/a | unknown | Inherited from Unit Protocol — forked code, scoped to ParametersBatchUpdater | inherited | 1 | n/a |
| [borrow_protocol.pdf](https://github.com/unitprotocol/protocol_docs/blob/master/borrow_protocol.pdf) | Unknown | Audit | n/a | unknown | Inherited from Unit Protocol — forked code, scoped to ParametersBatchUpdater | inherited | 1 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | [`0xd51f509fb80b4ff4d4bfb4144eed877f0f499af6`](./contracts/ethereum-1/0xd51f509fb80b4ff4d4bfb4144eed877f0f499af6/) | AssetParametersViewer | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x190db945ae572ae72e367b549b78c41e211864ab`](./contracts/ethereum-1/0x190db945ae572ae72e367b549b78c41e211864ab/) | BearingAssetOracle | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xc31629c9d5bc9a28cefa34d73d87d86b2a6b4315`](./contracts/ethereum-1/0xc31629c9d5bc9a28cefa34d73d87d86b2a6b4315/) | BearingAssetOracleSimple | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0e13ab042ec5ab9fc6f43979406088b9028f66fa`](./contracts/ethereum-1/0x0e13ab042ec5ab9fc6f43979406088b9028f66fa/) | CDPManager01 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xad3617d11f4c1d30603551ea75e9ace9cb386e15`](./contracts/ethereum-1/0xad3617d11f4c1d30603551ea75e9ace9cb386e15/) | CDPManager01_Fallback | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1a5ff58bc3246eb233fea20d32b79b5f01ec650c`](./contracts/ethereum-1/0x1a5ff58bc3246eb233fea20d32b79b5f01ec650c/) | CDPRegistry | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x3db39b538db1123389c77f888a213f1a6dd22ef3`](./contracts/ethereum-1/0x3db39b538db1123389c77f888a213f1a6dd22ef3/) | CollateralRegistry | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x2e5f6c31ffebb8221bbaed6e8214557633347570`](./contracts/ethereum-1/0x2e5f6c31ffebb8221bbaed6e8214557633347570/) | Component | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x71b1e5565cb206d426ab355a5835b62e50fc919e`](./contracts/ethereum-1/0x71b1e5565cb206d426ab355a5835b62e50fc919e/) | Components | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x9f20ed5f919dc1c1695042542c13adcfc100dcab`](./contracts/ethereum-1/0x9f20ed5f919dc1c1695042542c13adcfc100dcab/) | ComponentToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x40b743ca424e3ec7b97f5ad93d2263ae01dae1d8`](./contracts/ethereum-1/0x40b743ca424e3ec7b97f5ad93d2263ae01dae1d8/) | CyTokenOracle | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x39dcad1a118d6786b1225c1b8140de9ba0e0e57c`](./contracts/bsc-56/0x39dcad1a118d6786b1225c1b8140de9ba0e0e57c/) | DirectAssimilator | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x2532d45794b76b93700265243b4424f45ad33091`](./contracts/ethereum-1/0x2532d45794b76b93700265243b4424f45ad33091/) | Distribution | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x6aade8a8a6b85921009d2caa25dc69348f4c009e`](./contracts/ethereum-1/0x6aade8a8a6b85921009d2caa25dc69348f4c009e/) | DummyToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x3f93de882da8150dc98a3a1f4626e80e3282df46`](./contracts/ethereum-1/0x3f93de882da8150dc98a3a1f4626e80e3282df46/) | FeeDistribution | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x57a3cc9b4c5b189b116a8d4af18db7e653044a1a`](./contracts/ethereum-1/0x57a3cc9b4c5b189b116a8d4af18db7e653044a1a/) | FeeDistributionHelper | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xf7633fa353e74edb211b1d22e23c96ae4d7b24c0`](./contracts/ethereum-1/0xf7633fa353e74edb211b1d22e23c96ae4d7b24c0/) | ForceTransferAssetStore | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x492530fc97522d142bc57710be57fa57a43dc911`](./contracts/ethereum-1/0x492530fc97522d142bc57710be57fa57a43dc911/) | Foundation | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xa41a3625c02c60ae932515e7f921ada1811af6a5`](./contracts/ethereum-1/0xa41a3625c02c60ae932515e7f921ada1811af6a5/) | LiquidationAuction01 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xaef1ed4c492bf4c57221be0706def67813d79955`](./contracts/ethereum-1/0xaef1ed4c492bf4c57221be0706def67813d79955/) | LiquidationAuction02 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x854bf644e31d6619d3fe246f8d83e87ed85baa12`](./contracts/ethereum-1/0x854bf644e31d6619d3fe246f8d83e87ed85baa12/) | LiquidationTriggerChainlinkMainAsset | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x2b6369fb4faaa3c0b2b766a5e1073fec6b176270`](./contracts/ethereum-1/0x2b6369fb4faaa3c0b2b766a5e1073fec6b176270/) | LiquidationTriggerKeep3rMainAsset | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0ca1a59a987922375234df94919a456f61e93e1e`](./contracts/ethereum-1/0x0ca1a59a987922375234df94919a456f61e93e1e/) | LiquidationTriggerKeep3rPoolToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x20c854cdd322d3a501da91374027b4b257de57dd`](./contracts/ethereum-1/0x20c854cdd322d3a501da91374027b4b257de57dd/) | LiquidationTriggerKeep3rSushiSwapMainAsset | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x78d09b58402c29016425497289e12fdd12f06027`](./contracts/ethereum-1/0x78d09b58402c29016425497289e12fdd12f06027/) | LiquidationTriggerKeep3rSushiSwapPoolToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x701a228b0d7a3fc740462e9b2af13f2a5c16c882`](./contracts/ethereum-1/0x701a228b0d7a3fc740462e9b2af13f2a5c16c882/) | LiquidationTriggerKeydonixMainAsset | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xf6f90336666413c73a940e0a53cb2f762326ab10`](./contracts/ethereum-1/0xf6f90336666413c73a940e0a53cb2f762326ab10/) | LiquidationTriggerKeydonixPoolToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x18485d35c86adb634c8879a58c25f50c960c5917`](./contracts/ethereum-1/0x18485d35c86adb634c8879a58c25f50c960c5917/) | LiquidationTriggerSimple | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x70f648c442efa7007e7e4323e14e7bdc800bd0cf`](./contracts/ethereum-1/0x70f648c442efa7007e7e4323e14e7bdc800bd0cf/) | MainnetUsdpToUsdpAssimilator | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xc8c59160542b97bd160b3b6a6b353dac0adc8283`](./contracts/ethereum-1/0xc8c59160542b97bd160b3b6a6b353dac0adc8283/) | MerkleDistributor | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x5968bc303930155d36fa9aee2b5b0f6d39598434`](./contracts/ethereum-1/0x5968bc303930155d36fa9aee2b5b0f6d39598434/) | OraclePoolToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x10bbe205832edc371781cc224ef202cd98e8f38f`](./contracts/ethereum-1/0x10bbe205832edc371781cc224ef202cd98e8f38f/) | OracleRegistry | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x2e5f6c31ffebb8221bbaed6e8214557633347570`](./contracts/bsc-56/0x2e5f6c31ffebb8221bbaed6e8214557633347570/) | Orchestrator | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x660717f9cf0e35cd8a2b53d9ef17de8a936a65f0`](./contracts/ethereum-1/0x660717f9cf0e35cd8a2b53d9ef17de8a936a65f0/) | PartitionedLiquidity | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x49519631b404e06ca79c9c7b0dc91648d86f08db`](./contracts/ethereum-1/0x49519631b404e06ca79c9c7b0dc91648d86f08db/) | ProportionalLiquidity | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xab5cf4620c16fdbd584b64c6e6eb7703a422f604`](./contracts/ethereum-1/0xab5cf4620c16fdbd584b64c6e6eb7703a422f604/) | QuackedDuck | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x5d127ae0438393c1057f73afd82752069987c463`](./contracts/ethereum-1/0x5d127ae0438393c1057f73afd82752069987c463/) | SelectiveLiquidity | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x2be4d20b9eeb7d625fa68112568f94c615af376b`](./contracts/ethereum-1/0x2be4d20b9eeb7d625fa68112568f94c615af376b/) | StakeManager_CMP_CMPLP | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x0bd4e0acb1fde78c0ce4d9f265685f7b22722a01`](./contracts/bsc-56/0x0bd4e0acb1fde78c0ce4d9f265685f7b22722a01/) | Swaps | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x3976cdc41f34466ebb7efa2fd097d3eab808ea65`](./contracts/ethereum-1/0x3976cdc41f34466ebb7efa2fd097d3eab808ea65/) | TokenVesting | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1456688345527be1f37e9e627da0837d6f08c925`](./contracts/ethereum-1/0x1456688345527be1f37e9e627da0837d6f08c925/) | USDP | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x8ac08b12b9417dbecf7f6ab2dd96e22441adf3a4`](./contracts/ethereum-1/0x8ac08b12b9417dbecf7f6ab2dd96e22441adf3a4/) | USDPStaking | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x650cc1623f81582b19e89db09e242d8de0dae511`](./contracts/ethereum-1/0x650cc1623f81582b19e89db09e242d8de0dae511/) | USDPStakingCollector | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xb1cff81b9305166ff1efc49a129ad2afcd7bcf19`](./contracts/ethereum-1/0xb1cff81b9305166ff1efc49a129ad2afcd7bcf19/) | Vault | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x7a646c42b64d21e6b871efd85f54d707ace1f9d1`](./contracts/ethereum-1/0x7a646c42b64d21e6b871efd85f54d707ace1f9d1/) | VaultManagerChainlinkMainAsset | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x16c3ad40950acfb0910452d0c537f91570cc8f76`](./contracts/ethereum-1/0x16c3ad40950acfb0910452d0c537f91570cc8f76/) | VaultManagerKeep3rMainAsset | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1ee32424cd66c23386cf511c8b749c1e92043b0c`](./contracts/ethereum-1/0x1ee32424cd66c23386cf511c8b749c1e92043b0c/) | VaultManagerKeep3rPoolToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x54ba276a62e7e3e76d362f672f00ed31a983067b`](./contracts/ethereum-1/0x54ba276a62e7e3e76d362f672f00ed31a983067b/) | VaultManagerKeep3rSushiSwapMainAsset | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x18a2381d318ee56d19316f4a7d39a2a7996e8390`](./contracts/ethereum-1/0x18a2381d318ee56d19316f4a7d39a2a7996e8390/) | VaultManagerKeep3rSushiSwapPoolToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x2637d65912660e527c998824b8933d1a1bd7daa3`](./contracts/ethereum-1/0x2637d65912660e527c998824b8933d1a1bd7daa3/) | VaultManagerKeep3rUniswapPoolToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x78727a77028d9130d2772713d570780231e64ecf`](./contracts/ethereum-1/0x78727a77028d9130d2772713d570780231e64ecf/) | VaultManagerKeydonixMainAsset | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xf1ca03aae24c4865d09643cb929141d8d3c60a75`](./contracts/ethereum-1/0xf1ca03aae24c4865d09643cb929141d8d3c60a75/) | VaultManagerKeydonixPoolToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x203153522b9eaef4ae17c6e99851ee7b2f7d312e`](./contracts/ethereum-1/0x203153522b9eaef4ae17c6e99851ee7b2f7d312e/) | VaultManagerParameters | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xb82c6d510b3a0dc9f198de0ad2a3839973c6783c`](./contracts/ethereum-1/0xb82c6d510b3a0dc9f198de0ad2a3839973c6783c/) | VaultManagerSimple | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x2726ebdf958cc15f5adb01aad22741329948fbdb`](./contracts/ethereum-1/0x2726ebdf958cc15f5adb01aad22741329948fbdb/) | VaultManagerStandard | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xb46f8cf42e504efe8bef895f848741daa55e9f1d`](./contracts/ethereum-1/0xb46f8cf42e504efe8bef895f848741daa55e9f1d/) | VaultParameters | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x7b57f2f49e87b0c622269d025e3be93fba57406e`](./contracts/ethereum-1/0x7b57f2f49e87b0c622269d025e3be93fba57406e/) | ViewLiquidity | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x18e6c923d57a1378b6addc473a59b40d031069ec`](./contracts/ethereum-1/0x18e6c923d57a1378b6addc473a59b40d031069ec/) | Vyper_contract | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1145e9503000c4b2c9022a196717be5b7feba6a1`](./contracts/ethereum-1/0x1145e9503000c4b2c9022a196717be5b7feba6a1/) | WrappedToUnderlyingOracle | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x759eb07a8258bcf5590e9303763803dcf264652d`](./contracts/ethereum-1/0x759eb07a8258bcf5590e9303763803dcf264652d/) | YvTokenOracle | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 61 |
| upstream | 7 |
| standard_library | 0 |
| needs_review | 0 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: inherited_name_remap=4

Fork inheritance lineage and inherited audits are included when available.
