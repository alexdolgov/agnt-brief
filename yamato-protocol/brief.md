# Agentic Audit Brief: Yamato Protocol

## Project Overview

- Project: Yamato Protocol (`yamato-protocol`)
- Website: [https://app.yamato.fi/#/](https://app.yamato.fi/#/)
- Lifecycle: active (Tier 0, 65% below peak)
- Generated: 2026-05-24T23:01:53.440Z
- Pipeline run: v2-pipeline-2026-05-22-eff36e-2ebb
- Chains: ethereum
- Contract surface: 63 unique implementations (98 raw deployments)
- DeFi Llama TVL: $1,438,852.01
- On-chain TVL (included contracts): $910.87
- TVL by chain: Ethereum $910.87

## Project Description

Yamato Protocol is a collateralized debt position (CDP) system on Ethereum that allows users to deposit collateral and mint a stablecoin (CJPY). It includes mechanisms for borrowing, repaying, depositing, withdrawing, and redeeming, along with fee distribution, price feeds, and governance via YMT and veYMT tokens.

### Architecture

The ETH mainnet family provides the token layer (CJPY, YMT, veYMT) used across the protocol. The Real Time TX family (YamatoV4) orchestrates CDP interactions and relies on price feeds, fee pools, and registries, while the Yamato Protocol family (PoolV2) supplies liquidity infrastructure that supports stablecoin operations.

## Audit Coverage Summary

- Verified implementations audited: 22/46 (47.8%)
- Verified + Unaudited implementations: 24
- Verified by bytecode match: 0
- Unverified implementations: 17
- Unique implementations: 63
- Raw deployments: 98
- Audits discovered: 3
- Scoreable audits (matched contracts): 3
- ASD (verified + unaudited TVL): $818.32
- Latest audit: 2024-08 (aging)
- Staleness: 0 fresh, 1 aging, 2 stale, 0 unknown
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| BlockApex | Tier 2 | 22 | 47.8% | 2024-08 |

## Contract Surface

### ✅ Verified + Audited (22)

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| FeePoolV2 | core_logic | ethereum | 2 deployments: ethereum [`0x070877...6582bf`](./contracts/ethereum-1/0x070877ae8297725e53c9fbf649afb5093d6582bf/); ethereum `0x290e56...204c3c` | ✅ Audited |
| PoolV2 | core_logic | ethereum | 2 deployments: ethereum [`0x2d6cda...6638ea`](./contracts/ethereum-1/0x2d6cdade756ce8eec74c2037bb88323f8d6638ea/); ethereum `0x9c1f0e...745f0b` | ✅ Audited |
| CurrencyOSV3 | unknown | ethereum | [`0xe69c6b...a3784f`](./contracts/ethereum-1/0xe69c6bf0a6ea2f12abe054988a3e2091a8a3784f/) | ✅ Audited |
| PledgeLib | unknown | ethereum | 3 deployments: ethereum [`0x25026b...8aad07`](./contracts/ethereum-1/0x25026b8e547500c57ba63596de177da0808aad07/); ethereum `0x364c7f...464b69`; ethereum `0xfd5fca...ce86bf` | ✅ Audited |
| PriceFeedV3 | operational_periphery | ethereum | 2 deployments: ethereum [`0x3f4e4d...6fff2f`](./contracts/ethereum-1/0x3f4e4dad0ac01da50a774f3389b70506c96fff2f/); ethereum `0x7d8b9e...df3275` | ✅ Audited |
| PriorityRegistryV6 | registry | ethereum | 2 deployments: ethereum [`0x0c9bdf...f4190b`](./contracts/ethereum-1/0x0c9bdf09de9eacbe692db2c17a75bfdb5ff4190b/); ethereum `0xac9f41...019d2d` | ✅ Audited |
| ScoreRegistry | registry | ethereum | 3 deployments: ethereum [`0x02f2ce...aefbeb`](./contracts/ethereum-1/0x02f2ceb46aa1b499ba0df22e55d6e97e73aefbeb/); ethereum `0x683da0...06b3b7`; ethereum `0x85d813...b36abe` | ✅ Audited |
| ScoreWeightController | governance | ethereum | 3 deployments: ethereum [`0x6f2d29...6f63e4`](./contracts/ethereum-1/0x6f2d29dfb597fcddce8f85c671fcc332196f63e4/); ethereum `0x9e6e32...d769d4`; ethereum `0xcb0c89...ffecee` | ✅ Audited |
| veYMT | unknown | ethereum | 2 deployments: ethereum [`0x9e3ce7...b66a0c`](./contracts/ethereum-1/0x9e3ce75131bd03ef6ea79e5ed68e889cc9b66a0c/); ethereum `0xf13fa0...3cb016` | ✅ Audited |
| YamatoBorrowerV2 | core_logic | ethereum | 2 deployments: ethereum [`0xb469db...3621d2`](./contracts/ethereum-1/0xb469db779832a36cdbb092faf1950c75803621d2/); ethereum `0xf63271...8dba54` | ✅ Audited |
| YamatoDepositorV2 | unknown | ethereum | [`0xf42123...d0ae33`](./contracts/ethereum-1/0xf421237f7651787153511fdf0ca6d8de8ad0ae33/) | ✅ Audited |
| YamatoDepositorV3 | unknown | ethereum | 2 deployments: ethereum [`0x011d33...2b9881`](./contracts/ethereum-1/0x011d338006b3c189aa4e86a8703114e2c82b9881/); ethereum `0x511b45...2b5937` | ✅ Audited |
| YamatoRedeemerV4 | unknown | ethereum | [`0x97150f...a5f60d`](./contracts/ethereum-1/0x97150fbfc8819e712999cf0609e58e3ca0a5f60d/) | ✅ Audited |
| YamatoRedeemerV5 | unknown | ethereum | 2 deployments: ethereum [`0x049833...1d8e81`](./contracts/ethereum-1/0x04983321d9f61de47ed5bcc3b20bef638c1d8e81/); ethereum `0xd869dd...53a019` | ✅ Audited |
| YamatoRepayerV3 | unknown | ethereum | 2 deployments: ethereum [`0x9ab920...aedae8`](./contracts/ethereum-1/0x9ab920c44c0bc5b8afc4437c004d985364aedae8/); ethereum `0xac235b...e6cfe8` | ✅ Audited |
| YamatoSweeperV3 | unknown | ethereum | 2 deployments: ethereum [`0x528406...31ec27`](./contracts/ethereum-1/0x528406c3ec81dc030798246f70df999d6831ec27/); ethereum `0x91dc6c...bd253c` | ✅ Audited |
| YamatoV3 | unknown | ethereum | [`0xdc7cde...2f9da7`](./contracts/ethereum-1/0xdc7cdec9c2485ead231d9184ea650439b42f9da7/) | ✅ Audited |
| YamatoV4 | unknown | ethereum | 2 deployments: ethereum [`0x02fe72...84f257`](./contracts/ethereum-1/0x02fe72b2e9ff717ebf3049333b184e9cd984f257/); ethereum `0x0bfa59...9a4838` | ✅ Audited |
| YamatoWithdrawerV2 | operational_periphery | ethereum | [`0x1988b0...4a45ea`](./contracts/ethereum-1/0x1988b06eae3a742f3128f6e65fa50efe594a45ea/) | ✅ Audited |
| YamatoWithdrawerV3 | operational_periphery | ethereum | 2 deployments: ethereum [`0x5d1094...36ecc4`](./contracts/ethereum-1/0x5d1094ef89179b87e4852df7ccc9b43d2b36ecc4/); ethereum `0x84c854...197505` | ✅ Audited |
| YMT | unknown | ethereum | 2 deployments: ethereum [`0x0f4fc7...4c9c09`](./contracts/ethereum-1/0x0f4fc7d24f28c4373097733aae53f0025d4c9c09/); ethereum `0x4a232b...16f20e` | ✅ Audited |
| YmtMinter | unknown | ethereum | 3 deployments: ethereum [`0x7d7059...d43fff`](./contracts/ethereum-1/0x7d70597d468c7553f793eedafd87ddbd87d43fff/); ethereum `0x81930e...29529a`; ethereum `0xbf86a0...00f516` | ✅ Audited |

### ⚠️ Verified + Unaudited (24)

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| FeePool | core_logic | ethereum | 3 deployments: ethereum [`0x03b24f...48168a`](./contracts/ethereum-1/0x03b24fa2e286e26d98deef4eb58d33f16748168a/); ethereum `0x9823e0...64c869`; ethereum `0xf99e78...408924` | ⚠️ Unaudited |
| CJPY | unknown | ethereum | [`0x1cfa56...298372`](./contracts/ethereum-1/0x1cfa5641c01406ab8ac350ded7d735ec41298372/) | ⚠️ Unaudited |
| Distributor | operational_periphery | ethereum | [`0xa90a01...793b5f`](./contracts/ethereum-1/0xa90a01242c2966ee761c130a260ceb9d9a793b5f/) | ⚠️ Unaudited |
| DistributorReceiver | operational_periphery | ethereum | 2 deployments: ethereum [`0x17e0a0...d49c0a`](./contracts/ethereum-1/0x17e0a06efe428be9f052973057f3128bead49c0a/); ethereum `0x3d0955...40c6a5` | ⚠️ Unaudited |
| Factory | registry | ethereum | 2 deployments: ethereum [`0x3ee095...891243`](./contracts/ethereum-1/0x3ee0952314739e2c4270f0ece989cf73f5891243/); ethereum `0xe48acb...0fa44a` | ⚠️ Unaudited |
| FeeDistributorV1 | operational_periphery | ethereum | 2 deployments: ethereum [`0x0d99bf...17a0c9`](./contracts/ethereum-1/0x0d99bfc6367add8b199fa530168dcd893317a0c9/); ethereum `0x1d3d35...b8eebf` | ⚠️ Unaudited |
| GaugeControllerV1 | operational_periphery | ethereum | 2 deployments: ethereum [`0x54cc8f...3e6b44`](./contracts/ethereum-1/0x54cc8fceffb8bb908baac0cc6aa61b39963e6b44/); ethereum `0xc1a82f...346722` | ⚠️ Unaudited |
| Kompu | unknown | ethereum | 5 deployments: ethereum [`0x2bf8b0...5d7922`](./contracts/ethereum-1/0x2bf8b07e41572fb09d9f002b2500e3eedc5d7922/); ethereum `0x68cbe7...23bf75`; ethereum `0x7a997e...2840e1`; ethereum `0xaa59f5...e7bfa2`; ethereum `0xe0e2d8...389044` | ⚠️ Unaudited |
| LinearVesting | operational_periphery | ethereum | [`0x188a9a...6fcdbe`](./contracts/ethereum-1/0x188a9a506686d1b8dd475d7bf6fdba9ea26fcdbe/) | ⚠️ Unaudited |
| MinterV1 | unknown | ethereum | 2 deployments: ethereum [`0x5d0da8...6bade4`](./contracts/ethereum-1/0x5d0da8882f95dc27eba915f3ea266bcc3d6bade4/); ethereum `0x803935...49c9da` | ⚠️ Unaudited |
| MultiplicativePriceFeed | operational_periphery | ethereum | [`0x96cf27...3390ee`](./contracts/ethereum-1/0x96cf272b16d3aec1933b593b25e3c60f173390ee/) | ⚠️ Unaudited |
| MultiTransfers | unknown | ethereum | [`0xca078e...0311c1`](./contracts/ethereum-1/0xca078e865792904ab6ce51447c74a997a10311c1/) | ⚠️ Unaudited |
| RewardGaugeV1 | operational_periphery | ethereum | 2 deployments: ethereum [`0x772b86...1b1118`](./contracts/ethereum-1/0x772b86f1afa923908ba8e8f27e8acba6a01b1118/); ethereum `0xb075e3...35ef10` | ⚠️ Unaudited |
| Standard | unknown | ethereum | [`0x3df8b6...7ed3ef`](./contracts/ethereum-1/0x3df8b693bb67093838c13e841fe3424b4f7ed3ef/) | ⚠️ Unaudited |
| TemplateV1 | unknown | ethereum | 2 deployments: ethereum [`0x526b33...b0d646`](./contracts/ethereum-1/0x526b335a114fda6caefa8f74a32d874fb8b0d646/); ethereum `0x598840...d0ed1d` | ⚠️ Unaudited |
| TemplateV1_5 | unknown | ethereum | [`0x7cfb70...3c96f1`](./contracts/ethereum-1/0x7cfb70dd50baa538bfcd1749f56e8ae0563c96f1/) | ⚠️ Unaudited |
| TemplateYMWKWithdraw | operational_periphery | ethereum | [`0x3f651a...a11b1c`](./contracts/ethereum-1/0x3f651aab647411b7a621ea5d4919215591a11b1c/) | ⚠️ Unaudited |
| VotingEscrow | operational_periphery | ethereum | [`0x168c2f...c7d113`](./contracts/ethereum-1/0x168c2f7d4924bd6e4282f7edbb0cfdcca1c7d113/) | ⚠️ Unaudited |
| YamatoBorrower | core_logic | ethereum | [`0x7edfd3...cb4cc1`](./contracts/ethereum-1/0x7edfd33fc389c9b9c0e3350ac618912053cb4cc1/) | ⚠️ Unaudited |
| YamatoDepositor | unknown | ethereum | [`0x3fe24a...23aa69`](./contracts/ethereum-1/0x3fe24ab7bf7885acde4343b0ce90d79d1623aa69/) | ⚠️ Unaudited |
| YamatoRepayerV2 | unknown | ethereum | [`0x955b82...81bb88`](./contracts/ethereum-1/0x955b82f4dd992a75d454265ed9337036d881bb88/) | ⚠️ Unaudited |
| YamatoSweeperV2 | unknown | ethereum | [`0x01a761...413389`](./contracts/ethereum-1/0x01a7619e0cac10847279d17c43cc6bbbda413389/) | ⚠️ Unaudited |
| YmtVesting | operational_periphery | ethereum | 2 deployments: ethereum [`0x5ed64b...2c925f`](./contracts/ethereum-1/0x5ed64bf0764202be868b5df2deda467ae12c925f/); ethereum `0x6d6676...05ebae` | ⚠️ Unaudited |
| YMWK | unknown | ethereum | [`0x15dac0...ec4f87`](./contracts/ethereum-1/0x15dac05c93e1c5f31a29547340997ba9f6ec4f87/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (17)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| UnnamedContract | unknown | ethereum | `0x12318f...f6112b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x2170f3...c97b03` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x296ec3...a9c3b5` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x2eaa42...4cb469` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x36b404...b33add` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x3d1e11...ee10c2` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x3f9c83...15b64e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x565b10...1e6dab` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x7bed97...f1363c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x817ffe...4af9dc` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x8a979c...cc907f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xa5398c...8ca550` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xbb4025...cf4e95` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xd0c89e...30500d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xddf9b0...a31e8e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xf18035...7700ce` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xf48ac4...36e1fe` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [<>\](https://github.com/BlockApex/Audit-Reports/blob/master/Yamato%20Protocol%20Final%20Audit.pdf) | BlockApex | Audit | 2022-09 | stale | Direct | contract_name | 11 | high |
| [Yamato Protocol Final Audit (Extended).pdf](https://github.com/BlockApex/Audit-Reports/blob/master/Yamato%20Protocol%20Final%20Audit%20(Extended).pdf) | BlockApex | Audit | 2023-07 | stale | Direct | contract_name | 2 | high |
| [Yamato Protocol V2 - Final Audit.pdf](https://github.com/BlockApex/Audit-Reports/blob/master/Yamato%20Protocol%20V2%20-%20Final%20Audit.pdf) | BlockApex | Audit | 2024-08 | aging | Direct | contract_name | 30 | high |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | [`0x03b24f...48168a`](./contracts/ethereum-1/0x03b24fa2e286e26d98deef4eb58d33f16748168a/) | FeePool | core_logic | $818.32 | Verified native implementation with $818.32 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1cfa56...298372`](./contracts/ethereum-1/0x1cfa5641c01406ab8ac350ded7d735ec41298372/) | CJPY | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xa90a01...793b5f`](./contracts/ethereum-1/0xa90a01242c2966ee761c130a260ceb9d9a793b5f/) | Distributor | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x17e0a0...d49c0a`](./contracts/ethereum-1/0x17e0a06efe428be9f052973057f3128bead49c0a/) | DistributorReceiver | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x3ee095...891243`](./contracts/ethereum-1/0x3ee0952314739e2c4270f0ece989cf73f5891243/) | Factory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x54cc8f...3e6b44`](./contracts/ethereum-1/0x54cc8fceffb8bb908baac0cc6aa61b39963e6b44/) | GaugeControllerV1 | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x188a9a...6fcdbe`](./contracts/ethereum-1/0x188a9a506686d1b8dd475d7bf6fdba9ea26fcdbe/) | LinearVesting | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x96cf27...3390ee`](./contracts/ethereum-1/0x96cf272b16d3aec1933b593b25e3c60f173390ee/) | MultiplicativePriceFeed | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xca078e...0311c1`](./contracts/ethereum-1/0xca078e865792904ab6ce51447c74a997a10311c1/) | MultiTransfers | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x3df8b6...7ed3ef`](./contracts/ethereum-1/0x3df8b693bb67093838c13e841fe3424b4f7ed3ef/) | Standard | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x526b33...b0d646`](./contracts/ethereum-1/0x526b335a114fda6caefa8f74a32d874fb8b0d646/) | TemplateV1 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x7cfb70...3c96f1`](./contracts/ethereum-1/0x7cfb70dd50baa538bfcd1749f56e8ae0563c96f1/) | TemplateV1_5 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x3f651a...a11b1c`](./contracts/ethereum-1/0x3f651aab647411b7a621ea5d4919215591a11b1c/) | TemplateYMWKWithdraw | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x168c2f...c7d113`](./contracts/ethereum-1/0x168c2f7d4924bd6e4282f7edbb0cfdcca1c7d113/) | VotingEscrow | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x7edfd3...cb4cc1`](./contracts/ethereum-1/0x7edfd33fc389c9b9c0e3350ac618912053cb4cc1/) | YamatoBorrower | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x3fe24a...23aa69`](./contracts/ethereum-1/0x3fe24ab7bf7885acde4343b0ce90d79d1623aa69/) | YamatoDepositor | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x955b82...81bb88`](./contracts/ethereum-1/0x955b82f4dd992a75d454265ed9337036d881bb88/) | YamatoRepayerV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x01a761...413389`](./contracts/ethereum-1/0x01a7619e0cac10847279d17c43cc6bbbda413389/) | YamatoSweeperV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x5ed64b...2c925f`](./contracts/ethereum-1/0x5ed64bf0764202be868b5df2deda467ae12c925f/) | YmtVesting | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x15dac0...ec4f87`](./contracts/ethereum-1/0x15dac05c93e1c5f31a29547340997ba9f6ec4f87/) | YMWK | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 35 |
| upstream | 0 |
| standard_library | 15 |
| needs_review | 13 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=3
- Match method counts: extraction_exact=43

Fork inheritance lineage and inherited audits are included when available.
