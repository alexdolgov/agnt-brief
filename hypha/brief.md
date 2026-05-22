# Agentic Audit Brief: Hypha

⚠️ Lifecycle status: UNKNOWN - TVL dropped 32.2% over 90 days

## Project Overview

- Project: Hypha (`hypha`)
- Website: [https://www.hypha.sh/](https://www.hypha.sh/)
- Lifecycle: unknown (Tier 0, 83.4% below peak)
- Generated: 2026-05-22T20:16:32.764Z
- Pipeline run: v2-pipeline-2026-05-22-eff36e-2ebb
- Chains: avalanche
- Contract surface: 84 unique implementations (117 raw deployments)
- DeFi Llama TVL: $15,289,637.34
- On-chain TVL (included contracts): $16,373,227.04
- TVL by chain: Avalanche $16,373,227.04

## Project Description

Hypha is a liquid staking protocol on Avalanche that allows users to stake AVAX and receive liquid staking tokens (ggAVAX, pstAVAX) while earning rewards. It also supports node operation and governance through its native GGP token.

### Architecture

The liquid staking family relies on the token infrastructure (GGP) for incentives and governance for parameter management. Node operation contracts interact with staking and rewards distribution, while governance controls upgrades across all families via proxy admins and multisig.

## Audit Coverage Summary

- Verified implementations audited: 0/36 (0.0%)
- Verified + Unaudited implementations: 36
- Verified by bytecode match: 0
- Unverified implementations: 48
- Unique implementations: 84
- Raw deployments: 117
- Audits discovered: 3
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): $16,373,227.04
- Latest audit: 2023-02 (stale)
- Staleness: 0 fresh, 0 aging, 2 stale, 1 unknown
- Tier 1 coverage: No Tier 1 coverage
- Note: This protocol is classified as [unknown]. ASD of $16,373,227.04 represents exposure in a protocol with unknown activity.

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (36)

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| TokenggAVAX | token | avalanche | 5 deployments: avalanche [`0x576d98...ca7323`](./contracts/avalanche-43114/0x576d98d26419c5ce9595833403f64d919eca7323/); avalanche `0x84e71c...ceb922`; avalanche `0xa25eaf...b703e3`; avalanche `0xf80eb4...57843e`; avalanche `0xfad33e...163752` | ⚠️ Unaudited |
| TokenGGP | token | avalanche | [`0x69260b...2cd11d`](./contracts/avalanche-43114/0x69260b9483f9871ca57f81a90d91e2f96c2cd11d/) | ⚠️ Unaudited |
| Vault | core_logic | avalanche | [`0xd45cb6...41e6ba`](./contracts/avalanche-43114/0xd45cb6f5aca41afaaaebdbe4efba49c1bc41e6ba/) | ⚠️ Unaudited |
| Airdrop | operational_periphery | avalanche | 2 deployments: avalanche [`0x0c58c2...3902d9`](./contracts/avalanche-43114/0x0c58c2041da4cfccf5818bbe3b66dbc23b3902d9/); avalanche `0xcebbe6...4e6c2f` | ⚠️ Unaudited |
| AssetLocker | unknown | avalanche | 2 deployments: avalanche [`0x376862...6b8853`](./contracts/avalanche-43114/0x37686293c9423a1c5a171aada28ab5c9086b8853/); avalanche `0xd7c8f6...cbd07b` | ⚠️ Unaudited |
| ClaimNodeOp | unknown | avalanche | [`0xb42cfa...afc35c`](./contracts/avalanche-43114/0xb42cfad450b46fdc9cac5fbf14bc2e6091afc35c/) | ⚠️ Unaudited |
| ClaimProtocolDAO | unknown | avalanche | 2 deployments: avalanche [`0x4169cf...49476c`](./contracts/avalanche-43114/0x4169cf88c7ed811e6f6e61917c5b915bea49476c/); avalanche `0x6476a7...bb286c` | ⚠️ Unaudited |
| CommunityTreasury | operational_periphery | avalanche | [`0x650f58...a72358`](./contracts/avalanche-43114/0x650f5865541f6d68bddfe977db933c293ea72358/) | ⚠️ Unaudited |
| CREATE3Factory | registry | avalanche | [`0x9fbb3d...cd0abf`](./contracts/avalanche-43114/0x9fbb3df7c40da2e5a0de984ffe2ccb7c47cd0abf/) | ⚠️ Unaudited |
| GGAVAXPriceFeed | operational_periphery | avalanche | [`0x358283...af8020`](./contracts/avalanche-43114/0x3582837738a46985f900e8ab30191198e0af8020/) | ⚠️ Unaudited |
| GGAVAXRateProvider | unknown | avalanche | [`0x1bb74e...9a0a7f`](./contracts/avalanche-43114/0x1bb74ec551ccd9fe416c71f904d64f42079a0a7f/) | ⚠️ Unaudited |
| GnosisSafeL2 | governance | avalanche | [`0x6c104d...29bcf3`](./contracts/avalanche-43114/0x6c104d5b914931ba179168d63739a297dc29bcf3/) | ⚠️ Unaudited |
| GovernorAlpha | governance | avalanche | [`0xb0ff2b...f43ee1`](./contracts/avalanche-43114/0xb0ff2b1047d9e8d294c2ed798fae3fa817f43ee1/) | ⚠️ Unaudited |
| LiquidityPoolManagerV2 | core_logic | avalanche | [`0x912b5d...397994`](./contracts/avalanche-43114/0x912b5d41656048ef681efa9d32488a3ffe397994/) | ⚠️ Unaudited |
| MinipoolManager | core_logic | avalanche | 4 deployments: avalanche [`0x9e6579...b280e9`](./contracts/avalanche-43114/0x9e6579161c6f53722541edbd5ac96779c5b280e9/); avalanche `0xb84fa0...d1ed08`; avalanche `0xc8de41...da7037`; avalanche `0xe51262...208dea` | ⚠️ Unaudited |
| MinipoolStreamliner | core_logic | avalanche | [`0x0a75a4...efa430`](./contracts/avalanche-43114/0x0a75a480af4adc81b20b1664a1da2bd7caefa430/) | ⚠️ Unaudited |
| MOANI | unknown | avalanche | [`0x42edf5...948215`](./contracts/avalanche-43114/0x42edf547600d7e86be4b44cb7c6d8f8a2c948215/) | ⚠️ Unaudited |
| Multicall3 | periphery | avalanche | [`0xca11bd...76ca11`](./contracts/avalanche-43114/0xca11bde05977b3631167028862be2a173976ca11/) | ⚠️ Unaudited |
| MultisigManager | governance | avalanche | [`0x7fff41...1b6a3b`](./contracts/avalanche-43114/0x7fff419c562dd8b3cf16c335a01cdb37ea1b6a3b/) | ⚠️ Unaudited |
| NodeSale | unknown | avalanche | 2 deployments: avalanche [`0x50db30...b77102`](./contracts/avalanche-43114/0x50db30deb68b0f40df4d07c002142100a5b77102/); avalanche `0xa60a66...83cfaa` | ⚠️ Unaudited |
| Ocyticus | unknown | avalanche | 2 deployments: avalanche [`0x9189d1...ea210b`](./contracts/avalanche-43114/0x9189d18f453b1ec1f02e40a8e3711334f9ea210b/); avalanche `0xffdc3b...ad5542` | ⚠️ Unaudited |
| OneInchMock | unknown | avalanche | [`0x25314c...8b58aa`](./contracts/avalanche-43114/0x25314c5a00004f5b4fa83c82238ab879f48b58aa/) | ⚠️ Unaudited |
| Oracle | operational_periphery | avalanche | [`0x30fb91...a16db7`](./contracts/avalanche-43114/0x30fb915258d844e9dc420b2c3aa97420aea16db7/) | ⚠️ Unaudited |
| ProtocolDAO | unknown | avalanche | 3 deployments: avalanche [`0x41a763...195d0b`](./contracts/avalanche-43114/0x41a76343eb93b4790e53c8e2789e09ef41195d0b/); avalanche `0xa008cc...8ef546`; avalanche `0xfc3ea3...d8051a` | ⚠️ Unaudited |
| ProxyAdmin | governance | avalanche | 4 deployments: avalanche [`0x5313c3...b247cf`](./contracts/avalanche-43114/0x5313c309cd469b751ad3947568d65d4a70b247cf/); avalanche `0x6e8fd3...aed940`; avalanche `0x9484d5...416c71`; avalanche `0xbc5627...e9e190` | ⚠️ Unaudited |
| RewardsPool | operational_periphery | avalanche | [`0xaa8fd0...7c1b1d`](./contracts/avalanche-43114/0xaa8fd06cc3f1059b6d35870bbf625c1bac7c1b1d/) | ⚠️ Unaudited |
| Staking | unknown | avalanche | 3 deployments: avalanche [`0x439776...374a5f`](./contracts/avalanche-43114/0x439776d3786719e1243b628ef05e905679374a5f/); avalanche `0x9946e6...531d00`; avalanche `0xb6ddbf...26aecb` | ⚠️ Unaudited |
| StAvaxWavaxOracle | operational_periphery | avalanche | 2 deployments: avalanche [`0x7759c6...cb618d`](./contracts/avalanche-43114/0x7759c62e0e3c1c6ee5789b60ccd0826936cb618d/); avalanche `0xa582a3...bc3a4b` | ⚠️ Unaudited |
| Storage | unknown | avalanche | [`0x1cea17...dff1a9`](./contracts/avalanche-43114/0x1cea17f9de4de28feb6a102988e12d4b90dff1a9/) | ⚠️ Unaudited |
| Timelock | governance | avalanche | 3 deployments: avalanche [`0x81a63b...25dc4a`](./contracts/avalanche-43114/0x81a63b858a60c9305672480ceb17ee764e25dc4a/); avalanche `0xcd385f...14af41`; avalanche `0xeb5c91...4b1ff8` | ⚠️ Unaudited |
| TokenpstAVAX | token | avalanche | [`0x82e153...79b241`](./contracts/avalanche-43114/0x82e1534a5b9b299028e8939a2aef5bcbc079b241/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | proxy | avalanche | 5 deployments: avalanche [`0x6b3775...e5aaf8`](./contracts/avalanche-43114/0x6b37756df77a3798fd4f1476ef48c62be7e5aaf8/); avalanche `0x752ab1...163ae1`; avalanche `0x7a212f...b9a6dc`; avalanche `0x8b85ca...f33d0b`; avalanche `0xf45117...e27848` | ⚠️ Unaudited |
| TreasuryVester | operational_periphery | avalanche | [`0x6747ac...12acee`](./contracts/avalanche-43114/0x6747ac215daffee03a42f49febb6ab448e12acee/) | ⚠️ Unaudited |
| TwapGGP | unknown | avalanche | [`0x3155a8...d56cfe`](./contracts/avalanche-43114/0x3155a8f74f8618ebfdf4e04b40e86e5a51d56cfe/) | ⚠️ Unaudited |
| WAVAX | unknown | avalanche | 2 deployments: avalanche [`0x7fc6d4...1d51d4`](./contracts/avalanche-43114/0x7fc6d48e6e8e8b9505c171325539c651bf1d51d4/); avalanche `0xb31f66...fd66c7` | ⚠️ Unaudited |
| WithdrawQueue | operational_periphery | avalanche | 7 deployments: avalanche [`0x3dc349...5d08e2`](./contracts/avalanche-43114/0x3dc34920e12067de82de2a94cd46544b255d08e2/); avalanche `0x4043da...b45e6e`; avalanche `0x472e82...f56238`; avalanche `0x55eadf...bd8a16`; avalanche `0x61f908...5849a3`; avalanche `0x87c1b4...b48a64`; avalanche `0xf25dc8...c10afd` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (48)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| Proxy (impl: 0x0146b8f75b9f03e0c08627e9ce2d3d07f59937af) | proxy | avalanche | `0x22bafb...a1d073` | ❓ Unverified |
| Proxy (impl: 0x3ccef51d2e4042b1d01b41e2115a6eae8c7e805a) | proxy | avalanche | `0xb306c9...b20b04` | ❓ Unverified |
| Proxy (impl: 0x52950ffee4ae5c6206d598a639647df27f8f7bd2) | proxy | avalanche | `0x27ce13...f62b7e` | ❓ Unverified |
| Proxy (impl: 0x697d7c12853a59429b62ab4d310975335dba2c68) | proxy | avalanche | `0x9bfade...590819` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x0146b8...9937af` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x04eb48...bdbc1c` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x051911...219476` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x0cb6ea...80790c` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x0efbfe...45742e` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x0fb541...27912e` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x17395a...222199` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x19da5d...d439f4` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x213a74...8df34a` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x24d89c...bfd852` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x3ccef5...7e805a` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x44771c...5cd65f` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x456a6e...76e87b` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x49b4a0...de6759` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x52950f...8f7bd2` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x697d7c...ba2c68` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x6c2e8c...cc4311` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x70fd1a...fd1b65` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x71fe4e...1dd265` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x746f2c...c1ecd8` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x7cdf0d...fffb98` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x7e9985...e9e7ed` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x844878...9ad6e2` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x89cf78...b9b64d` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x8a2de3...9ac366` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x8c05d7...96115c` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x91aa62...2e8bc8` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x97b99b...6e633c` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x9a4536...f5ec4d` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xa47a05...cf0ca9` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xae1e7b...3ce4b1` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xae6a7d...607d89` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xb5f2ed...90e560` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xb6f012...fb3c4f` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xc095ec...24194c` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xc300bc...268ee7` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xc7fef2...d7a6c6` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xc880ac...dbe04c` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xd960ce...16e584` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xdcd29f...fd5ff5` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xf04aa1...f8a9ed` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xf4c562...1620a9` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xf940bd...73f71c` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xfe6ca6...e8fe3e` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [here](https://github.com/Zellic/publications/blob/master/GoGoPool%20-%20Zellic%20Audit%20Report.pdf) | Zellic | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [here](https://assets-global.website-files.com/62f90a8443126c2ee50f4c4e/643ee88bf91b375b39ba2613_Kudelski_multisig_labs_report_1.1.pdf) | Code4rena | Contest | 2022-10 | stale | Direct | n/a | 0 | n/a |
| [here](https://github.com/code-423n4/2023-02-gogopool-mitigation-contest) | Code4rena | Contest | 2023-02 | stale | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| avalanche | [`0x576d98...ca7323`](./contracts/avalanche-43114/0x576d98d26419c5ce9595833403f64d919eca7323/) | TokenggAVAX | token | $14,642,694.98 | Verified native implementation with $14,642,694.98 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x69260b...2cd11d`](./contracts/avalanche-43114/0x69260b9483f9871ca57f81a90d91e2f96c2cd11d/) | TokenGGP | token | $1,454,395.76 | Verified native implementation with $1,454,395.76 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0xd45cb6...41e6ba`](./contracts/avalanche-43114/0xd45cb6f5aca41afaaaebdbe4efba49c1bc41e6ba/) | Vault | core_logic | $276,136.30 | Verified native implementation with $276,136.30 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x0c58c2...3902d9`](./contracts/avalanche-43114/0x0c58c2041da4cfccf5818bbe3b66dbc23b3902d9/) | Airdrop | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x376862...6b8853`](./contracts/avalanche-43114/0x37686293c9423a1c5a171aada28ab5c9086b8853/) | AssetLocker | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0xb42cfa...afc35c`](./contracts/avalanche-43114/0xb42cfad450b46fdc9cac5fbf14bc2e6091afc35c/) | ClaimNodeOp | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x4169cf...49476c`](./contracts/avalanche-43114/0x4169cf88c7ed811e6f6e61917c5b915bea49476c/) | ClaimProtocolDAO | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x650f58...a72358`](./contracts/avalanche-43114/0x650f5865541f6d68bddfe977db933c293ea72358/) | CommunityTreasury | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x358283...af8020`](./contracts/avalanche-43114/0x3582837738a46985f900e8ab30191198e0af8020/) | GGAVAXPriceFeed | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x1bb74e...9a0a7f`](./contracts/avalanche-43114/0x1bb74ec551ccd9fe416c71f904d64f42079a0a7f/) | GGAVAXRateProvider | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0xb0ff2b...f43ee1`](./contracts/avalanche-43114/0xb0ff2b1047d9e8d294c2ed798fae3fa817f43ee1/) | GovernorAlpha | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x912b5d...397994`](./contracts/avalanche-43114/0x912b5d41656048ef681efa9d32488a3ffe397994/) | LiquidityPoolManagerV2 | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x9e6579...b280e9`](./contracts/avalanche-43114/0x9e6579161c6f53722541edbd5ac96779c5b280e9/) | MinipoolManager | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x0a75a4...efa430`](./contracts/avalanche-43114/0x0a75a480af4adc81b20b1664a1da2bd7caefa430/) | MinipoolStreamliner | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x7fff41...1b6a3b`](./contracts/avalanche-43114/0x7fff419c562dd8b3cf16c335a01cdb37ea1b6a3b/) | MultisigManager | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x50db30...b77102`](./contracts/avalanche-43114/0x50db30deb68b0f40df4d07c002142100a5b77102/) | NodeSale | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x9189d1...ea210b`](./contracts/avalanche-43114/0x9189d18f453b1ec1f02e40a8e3711334f9ea210b/) | Ocyticus | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x25314c...8b58aa`](./contracts/avalanche-43114/0x25314c5a00004f5b4fa83c82238ab879f48b58aa/) | OneInchMock | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x30fb91...a16db7`](./contracts/avalanche-43114/0x30fb915258d844e9dc420b2c3aa97420aea16db7/) | Oracle | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x41a763...195d0b`](./contracts/avalanche-43114/0x41a76343eb93b4790e53c8e2789e09ef41195d0b/) | ProtocolDAO | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0xaa8fd0...7c1b1d`](./contracts/avalanche-43114/0xaa8fd06cc3f1059b6d35870bbf625c1bac7c1b1d/) | RewardsPool | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x439776...374a5f`](./contracts/avalanche-43114/0x439776d3786719e1243b628ef05e905679374a5f/) | Staking | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x7759c6...cb618d`](./contracts/avalanche-43114/0x7759c62e0e3c1c6ee5789b60ccd0826936cb618d/) | StAvaxWavaxOracle | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x1cea17...dff1a9`](./contracts/avalanche-43114/0x1cea17f9de4de28feb6a102988e12d4b90dff1a9/) | Storage | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x81a63b...25dc4a`](./contracts/avalanche-43114/0x81a63b858a60c9305672480ceb17ee764e25dc4a/) | Timelock | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x82e153...79b241`](./contracts/avalanche-43114/0x82e1534a5b9b299028e8939a2aef5bcbc079b241/) | TokenpstAVAX | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x6747ac...12acee`](./contracts/avalanche-43114/0x6747ac215daffee03a42f49febb6ab448e12acee/) | TreasuryVester | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x3155a8...d56cfe`](./contracts/avalanche-43114/0x3155a8f74f8618ebfdf4e04b40e86e5a51d56cfe/) | TwapGGP | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x7fc6d4...1d51d4`](./contracts/avalanche-43114/0x7fc6d48e6e8e8b9505c171325539c651bf1d51d4/) | WAVAX | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x3dc349...5d08e2`](./contracts/avalanche-43114/0x3dc34920e12067de82de2a94cd46544b255d08e2/) | WithdrawQueue | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 33 |
| upstream | 0 |
| standard_library | 5 |
| needs_review | 46 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 3
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Zero-match audit list:

- [1968] here
- [1969] here
- [1970] here

Fork inheritance lineage and inherited audits are included when available.
