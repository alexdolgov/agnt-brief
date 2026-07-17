# Agentic Audit Brief: Yamato Protocol

## Project Overview

- Project: Yamato Protocol (`yamato-protocol`)
- Website: [https://app.yamato.fi/#/](https://app.yamato.fi/#/)
- Lifecycle: unknown
- Generated: 2026-07-04T14:54:13.723Z
- Pipeline run: v2-pipeline-2026-07-01-3e33f2-d640
- Chains: ethereum
- Contract surface: 47 unique implementations (54 raw deployments)
- DeFi Llama TVL: $1,058,179.34
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

CDP. Structurally: 49 project-authored contract(s) across 1 chain(s); 4 ERC20 tokens, 1 Chainlink feed; upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 4 functional families. Its contracts share 8 common project-authored base contract(s) (yamatoaction, yamatobase, uupsbase). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 113; live-surface contracts included: 54 (37 live, 17 unknown).
- Excluded by liveness: 59 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 11/29 (37.9%)
- Deployed-live implementations: 30 of 47 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 11/30
- Verified + Unaudited implementations: 19
- Verified by bytecode match: 0
- Unverified implementations: 17
- Unique implementations: 47
- Raw deployments: 54
- Audits discovered: 3 (3 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 3
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2024-08 (aging)
- Audit staleness (calendar age): 0 fresh, 1 aging, 2 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 9 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 2 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| BlockApex | Tier 2 | 11 | 36.7% | 2024-08 |

## Contract Surface

### ✅ Verified + Audited (11)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| CurrencyOSV2 | unknown | ethereum | n/a | [`0xe85cb27b3720d6ec23bb99b3378e6cb5c1418acd`](./contracts/ethereum-1/0xe85cb27b3720d6ec23bb99b3378e6cb5c1418acd/) | ✅ Audited |
| PledgeLib | unknown | ethereum | n/a | 3 deployments: ethereum [`0x25026b8e547500c57ba63596de177da0808aad07`](./contracts/ethereum-1/0x25026b8e547500c57ba63596de177da0808aad07/); ethereum `0x364c7fe685d241d22de8f4aeaeda1443fe464b69`; ethereum `0xfd5fca2f1c9e47e88d0f2defe526439c6ece86bf` | ✅ Audited |
| PoolV2 | unknown | ethereum | n/a | 2 deployments: ethereum [`0x2d6cdade756ce8eec74c2037bb88323f8d6638ea`](./contracts/ethereum-1/0x2d6cdade756ce8eec74c2037bb88323f8d6638ea/); ethereum `0x9c1f0e3d4bd4a513721c028e1d4610cd17745f0b` | ✅ Audited |
| PriceFeedV3 | unknown | ethereum | n/a | 2 deployments: ethereum [`0x3f4e4dad0ac01da50a774f3389b70506c96fff2f`](./contracts/ethereum-1/0x3f4e4dad0ac01da50a774f3389b70506c96fff2f/); ethereum `0x7d8b9ebfc8bb3d42099cd8cd86b4376e49df3275` | ✅ Audited |
| PriorityRegistryV6 | unknown | ethereum | n/a | 2 deployments: ethereum [`0x0c9bdf09de9eacbe692db2c17a75bfdb5ff4190b`](./contracts/ethereum-1/0x0c9bdf09de9eacbe692db2c17a75bfdb5ff4190b/); ethereum `0xac9f416e9ec659319c2be9421e2b3eb3df019d2d` | ✅ Audited |
| veYMT | unknown | ethereum | n/a | 2 deployments: ethereum [`0x9e3ce75131bd03ef6ea79e5ed68e889cc9b66a0c`](./contracts/ethereum-1/0x9e3ce75131bd03ef6ea79e5ed68e889cc9b66a0c/); ethereum `0xf13fa0c3564db9b2aa8a0651d05f96e5af3cb016` | ✅ Audited |
| YamatoDepositorV2 | unknown | ethereum | n/a | [`0xf421237f7651787153511fdf0ca6d8de8ad0ae33`](./contracts/ethereum-1/0xf421237f7651787153511fdf0ca6d8de8ad0ae33/) | ✅ Audited |
| YamatoRedeemerV4 | unknown | ethereum | n/a | [`0x97150fbfc8819e712999cf0609e58e3ca0a5f60d`](./contracts/ethereum-1/0x97150fbfc8819e712999cf0609e58e3ca0a5f60d/) | ✅ Audited |
| YamatoV3 | unknown | ethereum | n/a | [`0xdc7cdec9c2485ead231d9184ea650439b42f9da7`](./contracts/ethereum-1/0xdc7cdec9c2485ead231d9184ea650439b42f9da7/) | ✅ Audited |
| YamatoWithdrawerV2 | unknown | ethereum | n/a | [`0x1988b06eae3a742f3128f6e65fa50efe594a45ea`](./contracts/ethereum-1/0x1988b06eae3a742f3128f6e65fa50efe594a45ea/) | ✅ Audited |
| YMT | unknown | ethereum | n/a | 2 deployments: ethereum [`0x0f4fc7d24f28c4373097733aae53f0025d4c9c09`](./contracts/ethereum-1/0x0f4fc7d24f28c4373097733aae53f0025d4c9c09/); ethereum `0x4a232b18e26b6c84573c1aa118916bdbfb16f20e` | ✅ Audited |

### ⚠️ Verified + Unaudited (19)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| CJPY | unknown | ethereum | n/a | [`0x1cfa5641c01406ab8ac350ded7d735ec41298372`](./contracts/ethereum-1/0x1cfa5641c01406ab8ac350ded7d735ec41298372/) | ⚠️ Unaudited |
| CurrencyOSV3 | unknown | ethereum | n/a | [`0x811ce73639a05f436a56ea71480cd921a4039542`](./contracts/ethereum-1/0x811ce73639a05f436a56ea71480cd921a4039542/) | ⚠️ Unaudited |
| CurveTwocryptoOptimized | unknown | ethereum | n/a | [`0x592878b920101946fb5915ab97961bc546f211cc`](./contracts/ethereum-1/0x592878b920101946fb5915ab97961bc546f211cc/) | ⚠️ Unaudited |
| DistributorReceiver | operational_periphery | ethereum | n/a | [`0x3d095553fe2a3b138b31f9d47a26e2adf340c6a5`](./contracts/ethereum-1/0x3d095553fe2a3b138b31f9d47a26e2adf340c6a5/) | ⚠️ Unaudited |
| ScoreRegistry | unknown | ethereum | n/a | [`0x02f2ceb46aa1b499ba0df22e55d6e97e73aefbeb`](./contracts/ethereum-1/0x02f2ceb46aa1b499ba0df22e55d6e97e73aefbeb/) | ⚠️ Unaudited |
| VotingEscrow | operational_periphery | ethereum | n/a | [`0x168c2f7d4924bd6e4282f7edbb0cfdcca1c7d113`](./contracts/ethereum-1/0x168c2f7d4924bd6e4282f7edbb0cfdcca1c7d113/) | ⚠️ Unaudited |
| YamatoBorrower | unknown | ethereum | n/a | [`0x7edfd33fc389c9b9c0e3350ac618912053cb4cc1`](./contracts/ethereum-1/0x7edfd33fc389c9b9c0e3350ac618912053cb4cc1/) | ⚠️ Unaudited |
| YamatoBorrowerV2 | unknown | ethereum | n/a | [`0xf63271eefc761dcace3d22137b513941dc8dba54`](./contracts/ethereum-1/0xf63271eefc761dcace3d22137b513941dc8dba54/) | ⚠️ Unaudited |
| YamatoDepositor | unknown | ethereum | n/a | [`0x3fe24ab7bf7885acde4343b0ce90d79d1623aa69`](./contracts/ethereum-1/0x3fe24ab7bf7885acde4343b0ce90d79d1623aa69/) | ⚠️ Unaudited |
| YamatoDepositorV3 | unknown | ethereum | n/a | [`0x011d338006b3c189aa4e86a8703114e2c82b9881`](./contracts/ethereum-1/0x011d338006b3c189aa4e86a8703114e2c82b9881/) | ⚠️ Unaudited |
| YamatoRedeemerV5 | unknown | ethereum | n/a | [`0xd869dd57566daf8f160090fc0f3ff362f953a019`](./contracts/ethereum-1/0xd869dd57566daf8f160090fc0f3ff362f953a019/) | ⚠️ Unaudited |
| YamatoRepayerV2 | unknown | ethereum | n/a | [`0x955b82f4dd992a75d454265ed9337036d881bb88`](./contracts/ethereum-1/0x955b82f4dd992a75d454265ed9337036d881bb88/) | ⚠️ Unaudited |
| YamatoRepayerV3 | unknown | ethereum | n/a | [`0x9ab920c44c0bc5b8afc4437c004d985364aedae8`](./contracts/ethereum-1/0x9ab920c44c0bc5b8afc4437c004d985364aedae8/) | ⚠️ Unaudited |
| YamatoSweeperV2 | unknown | ethereum | n/a | [`0x01a7619e0cac10847279d17c43cc6bbbda413389`](./contracts/ethereum-1/0x01a7619e0cac10847279d17c43cc6bbbda413389/) | ⚠️ Unaudited |
| YamatoSweeperV3 | unknown | ethereum | n/a | [`0x91dc6c1463889d90dcb6cc8629e9db6b20bd253c`](./contracts/ethereum-1/0x91dc6c1463889d90dcb6cc8629e9db6b20bd253c/) | ⚠️ Unaudited |
| YamatoV4 | unknown | ethereum | n/a | [`0x0bfa59f9fbe9565c240cd64311c86e90e59a4838`](./contracts/ethereum-1/0x0bfa59f9fbe9565c240cd64311c86e90e59a4838/) | ⚠️ Unaudited |
| YamatoWithdrawerV3 | unknown | ethereum | n/a | [`0x84c854552ef439ad28a25d328156a05c2e197505`](./contracts/ethereum-1/0x84c854552ef439ad28a25d328156a05c2e197505/) | ⚠️ Unaudited |
| YmtVesting | operational_periphery | ethereum | n/a | [`0x5ed64bf0764202be868b5df2deda467ae12c925f`](./contracts/ethereum-1/0x5ed64bf0764202be868b5df2deda467ae12c925f/) | ⚠️ Unaudited |
| YMWK | unknown | ethereum | n/a | [`0x15dac05c93e1c5f31a29547340997ba9f6ec4f87`](./contracts/ethereum-1/0x15dac05c93e1c5f31a29547340997ba9f6ec4f87/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (17)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | ethereum | n/a | `0x12318f2b350f93605b75a557faa501adb3f6112b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x2170f35f6370c8bb82379a31fea35b8b39c97b03` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x296ec37bff10cd73fc606136dfa675efc1a9c3b5` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x2eaa420127cbdd6151f1f17ba50d2479604cb469` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x36b4040947a670f4b96565257ed3146325b33add` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x3d1e11ecac91edf0cab4b371e3075f252bee10c2` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x3f9c83b0d06defa7fec8a73a79de43a48c15b64e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x565b10180bbfa8ec228f2764057862b54e1e6dab` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x7bed97aaff71fdb17533a940e052712f07f1363c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x817ffe93f1258383dd1a42900ca02106644af9dc` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x8a979cb9ffc9eda421a9ee7a2fd9d89430cc907f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xa5398c3bfeeea44b52537795749ddec3ba8ca550` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xbb4025015bcb374820ee04e9907d30ef39cf4e95` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xd0c89ef9b3035adda0a6d5b81e32f2594930500d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xddf9b0f618444b0b7bf1b3fad479d16996a31e8e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xf18035ece77a7fd23f52d54711a53fc53e7700ce` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xf48ac47f8090d600819e3906d8b8b804ef36e1fe` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [Yamato Protocol Final Audit.pdf](https://github.com/BlockApex/Audit-Reports/blob/master/Yamato%20Protocol%20Final%20Audit.pdf) | BlockApex | Audit | 2022-09 | stale | Direct | contract_name | 12 | high |
| [Yamato Protocol Final Audit (Extended).pdf](https://github.com/BlockApex/Audit-Reports/blob/master/Yamato%20Protocol%20Final%20Audit%20(Extended).pdf) | BlockApex | Audit | 2023-07 | stale | Direct | contract_name | 3 | high |
| [Yamato Protocol V2 - Final Audit.pdf](https://github.com/BlockApex/Audit-Reports/blob/master/Yamato%20Protocol%20V2%20-%20Final%20Audit.pdf) | BlockApex | Audit | 2024-08 | aging | Direct | contract_name | 2 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | [`0x1cfa5641c01406ab8ac350ded7d735ec41298372`](./contracts/ethereum-1/0x1cfa5641c01406ab8ac350ded7d735ec41298372/) | CJPY | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x811ce73639a05f436a56ea71480cd921a4039542`](./contracts/ethereum-1/0x811ce73639a05f436a56ea71480cd921a4039542/) | CurrencyOSV3 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x3d095553fe2a3b138b31f9d47a26e2adf340c6a5`](./contracts/ethereum-1/0x3d095553fe2a3b138b31f9d47a26e2adf340c6a5/) | DistributorReceiver | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x02f2ceb46aa1b499ba0df22e55d6e97e73aefbeb`](./contracts/ethereum-1/0x02f2ceb46aa1b499ba0df22e55d6e97e73aefbeb/) | ScoreRegistry | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x168c2f7d4924bd6e4282f7edbb0cfdcca1c7d113`](./contracts/ethereum-1/0x168c2f7d4924bd6e4282f7edbb0cfdcca1c7d113/) | VotingEscrow | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x7edfd33fc389c9b9c0e3350ac618912053cb4cc1`](./contracts/ethereum-1/0x7edfd33fc389c9b9c0e3350ac618912053cb4cc1/) | YamatoBorrower | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xf63271eefc761dcace3d22137b513941dc8dba54`](./contracts/ethereum-1/0xf63271eefc761dcace3d22137b513941dc8dba54/) | YamatoBorrowerV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x3fe24ab7bf7885acde4343b0ce90d79d1623aa69`](./contracts/ethereum-1/0x3fe24ab7bf7885acde4343b0ce90d79d1623aa69/) | YamatoDepositor | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x011d338006b3c189aa4e86a8703114e2c82b9881`](./contracts/ethereum-1/0x011d338006b3c189aa4e86a8703114e2c82b9881/) | YamatoDepositorV3 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xd869dd57566daf8f160090fc0f3ff362f953a019`](./contracts/ethereum-1/0xd869dd57566daf8f160090fc0f3ff362f953a019/) | YamatoRedeemerV5 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x955b82f4dd992a75d454265ed9337036d881bb88`](./contracts/ethereum-1/0x955b82f4dd992a75d454265ed9337036d881bb88/) | YamatoRepayerV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x9ab920c44c0bc5b8afc4437c004d985364aedae8`](./contracts/ethereum-1/0x9ab920c44c0bc5b8afc4437c004d985364aedae8/) | YamatoRepayerV3 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x01a7619e0cac10847279d17c43cc6bbbda413389`](./contracts/ethereum-1/0x01a7619e0cac10847279d17c43cc6bbbda413389/) | YamatoSweeperV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x91dc6c1463889d90dcb6cc8629e9db6b20bd253c`](./contracts/ethereum-1/0x91dc6c1463889d90dcb6cc8629e9db6b20bd253c/) | YamatoSweeperV3 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0bfa59f9fbe9565c240cd64311c86e90e59a4838`](./contracts/ethereum-1/0x0bfa59f9fbe9565c240cd64311c86e90e59a4838/) | YamatoV4 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x84c854552ef439ad28a25d328156a05c2e197505`](./contracts/ethereum-1/0x84c854552ef439ad28a25d328156a05c2e197505/) | YamatoWithdrawerV3 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x5ed64bf0764202be868b5df2deda467ae12c925f`](./contracts/ethereum-1/0x5ed64bf0764202be868b5df2deda467ae12c925f/) | YmtVesting | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x15dac05c93e1c5f31a29547340997ba9f6ec4f87`](./contracts/ethereum-1/0x15dac05c93e1c5f31a29547340997ba9f6ec4f87/) | YMWK | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 29 |
| upstream | 1 |
| standard_library | 0 |
| needs_review | 17 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=2
- Match method counts: contract_name=2, extraction_exact=15

Fork inheritance lineage and inherited audits are included when available.
