# Agentic Audit Brief: Hypha

## Project Overview

- Project: Hypha (`hypha`)
- Website: [https://www.hypha.sh/](https://www.hypha.sh/)
- Lifecycle: unknown
- Generated: 2026-07-04T14:53:21.831Z
- Pipeline run: v2-pipeline-2026-07-01-3e33f2-dc67
- Chains: avalanche
- Contract surface: 47 unique implementations (88 raw deployments)
- DeFi Llama TVL: $4,763,040.88
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Liquid Staking. Structurally: 45 project-authored contract(s) across 1 chain(s); 3 ERC20 tokens, 1 Chainlink feed; role-gated via AccessControl; upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 8 functional families. Its contracts share 3 common project-authored base contract(s) (base, baseabstract, erc20upgradeable). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 90; live-surface contracts included: 87 (60 live, 27 unknown).
- Excluded by liveness: 3 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 13/30 (43.3%)
- Deployed-live implementations: 33 of 47 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 13/40
- Verified + Unaudited implementations: 27
- Verified by bytecode match: 0
- Unverified implementations: 7
- Unique implementations: 47
- Raw deployments: 88
- Audits discovered: 3 (3 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 2
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2023-02 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 3 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 13 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: 23.3% (Code4rena)

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| Zellic | Tier 2 | 13 | 32.5% | 2023-02 |
| Code4rena | Tier 1 | 7 | 17.5% | 2023-02 |

## Contract Surface

### ✅ Verified + Audited (13)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| ClaimNodeOp | unknown | avalanche | n/a | [`0xb42cfad450b46fdc9cac5fbf14bc2e6091afc35c`](./contracts/avalanche-43114/0xb42cfad450b46fdc9cac5fbf14bc2e6091afc35c/) | ✅ Audited |
| ClaimProtocolDAO | unknown | avalanche | n/a | 2 deployments: avalanche [`0x4169cf88c7ed811e6f6e61917c5b915bea49476c`](./contracts/avalanche-43114/0x4169cf88c7ed811e6f6e61917c5b915bea49476c/); avalanche `0x6476a72282ea701748f56dcfb8a9ffa919bb286c` | ✅ Audited |
| MinipoolManager | unknown | avalanche | n/a | 5 deployments: avalanche [`0x9e6579161c6f53722541edbd5ac96779c5b280e9`](./contracts/avalanche-43114/0x9e6579161c6f53722541edbd5ac96779c5b280e9/); avalanche `0xb84fa022c7fe1ce3a1f94c49f2f13236c3d1ed08`; avalanche `0xc300bc9b4b690ba7a182126299a0618ece268ee7`; avalanche `0xc8de41c35fb389286546cf4107102a7656da7037`; avalanche `0xe51262211948c338c50640f1d5bdba4f4d208dea` | ✅ Audited |
| MultisigManager | unknown | avalanche | n/a | [`0x7fff419c562dd8b3cf16c335a01cdb37ea1b6a3b`](./contracts/avalanche-43114/0x7fff419c562dd8b3cf16c335a01cdb37ea1b6a3b/) | ✅ Audited |
| Ocyticus | unknown | avalanche | n/a | 2 deployments: avalanche [`0x9189d18f453b1ec1f02e40a8e3711334f9ea210b`](./contracts/avalanche-43114/0x9189d18f453b1ec1f02e40a8e3711334f9ea210b/); avalanche `0xffdc3b731c57a7179b90fe7f5c2b5b87a5ad5542` | ✅ Audited |
| Oracle | operational_periphery | avalanche | n/a | [`0x30fb915258d844e9dc420b2c3aa97420aea16db7`](./contracts/avalanche-43114/0x30fb915258d844e9dc420b2c3aa97420aea16db7/) | ✅ Audited |
| ProtocolDAO | unknown | avalanche | n/a | 4 deployments: avalanche [`0x41a76343eb93b4790e53c8e2789e09ef41195d0b`](./contracts/avalanche-43114/0x41a76343eb93b4790e53c8e2789e09ef41195d0b/); avalanche `0x70fd1a4419cd4436e4d44744c09f09a743fd1b65`; avalanche `0xa008cc1839024a311ad769e4ac302ee35a8ef546`; avalanche `0xfc3ea32c03b4be326bced178431789f7e2d8051a` | ✅ Audited |
| RewardsPool | operational_periphery | avalanche | n/a | [`0xaa8fd06cc3f1059b6d35870bbf625c1bac7c1b1d`](./contracts/avalanche-43114/0xaa8fd06cc3f1059b6d35870bbf625c1bac7c1b1d/) | ✅ Audited |
| Staking | unknown | avalanche | n/a | 3 deployments: avalanche [`0x439776d3786719e1243b628ef05e905679374a5f`](./contracts/avalanche-43114/0x439776d3786719e1243b628ef05e905679374a5f/); avalanche `0x9946e68490d71fe976951e360f295c4cf8531d00`; avalanche `0xb6ddbf75e2f0c7fc363b47b84b5c03959526aecb` | ✅ Audited |
| TokenggAVAX | token | avalanche | n/a | 4 deployments: avalanche [`0x576d98d26419c5ce9595833403f64d919eca7323`](./contracts/avalanche-43114/0x576d98d26419c5ce9595833403f64d919eca7323/); avalanche `0x84e71ced65470fab9d9d2d1a7eab33e1ddceb922`; avalanche `0xd960ce17d15bd0d056bc4aadc491cbb3fa16e584`; avalanche `0xf80eb498bbfd45f5e2d123dfbdb752677757843e` | ✅ Audited |
| TokenggAVAX | unknown | avalanche | n/a | 2 deployments: avalanche [`0xa25eaf2906fa1a3a13edac9b9657108af7b703e3`](./contracts/avalanche-43114/0xa25eaf2906fa1a3a13edac9b9657108af7b703e3/); avalanche `0xfad33e5854d7d0065cd4cd1e2ee9a64928163752` | ✅ Audited |
| TokenGGP | token | avalanche | n/a | [`0x69260b9483f9871ca57f81a90d91e2f96c2cd11d`](./contracts/avalanche-43114/0x69260b9483f9871ca57f81a90d91e2f96c2cd11d/) | ✅ Audited |
| Vault | unknown | avalanche | n/a | [`0xd45cb6f5aca41afaaaebdbe4efba49c1bc41e6ba`](./contracts/avalanche-43114/0xd45cb6f5aca41afaaaebdbe4efba49c1bc41e6ba/) | ✅ Audited |

### ⚠️ Verified + Unaudited (27)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| ArtifactHardwareProvider | unknown | avalanche | n/a | [`0xc095ece2c0f315381b4bf6de169fbc219b24194c`](./contracts/avalanche-43114/0xc095ece2c0f315381b4bf6de169fbc219b24194c/) | ⚠️ Unaudited |
| AssetLocker | unknown | avalanche | n/a | 2 deployments: avalanche [`0x37686293c9423a1c5a171aada28ab5c9086b8853`](./contracts/avalanche-43114/0x37686293c9423a1c5a171aada28ab5c9086b8853/); avalanche `0xd7c8f6a6b4f2389464aaabdf57bd864f9dcbd07b` | ⚠️ Unaudited |
| AvalancheHardwareRental | unknown | avalanche | n/a | 2 deployments: avalanche [`0x456a6e49409f137138e2e0255368a3a37876e87b`](./contracts/avalanche-43114/0x456a6e49409f137138e2e0255368a3a37876e87b/); avalanche `0xf451171872e9395021316e44d9f5475c90e27848` | ⚠️ Unaudited |
| CoqnetHardwareRental | unknown | avalanche | n/a | 2 deployments: avalanche [`0x7a212fb6b84461cf4f889cab42ff9e856db9a6dc`](./contracts/avalanche-43114/0x7a212fb6b84461cf4f889cab42ff9e856db9a6dc/); avalanche `0x8a2de3ccc35888bbdba2650cf10417b2089ac366` | ⚠️ Unaudited |
| CREATE3Factory | registry | avalanche | n/a | [`0x9fbb3df7c40da2e5a0de984ffe2ccb7c47cd0abf`](./contracts/avalanche-43114/0x9fbb3df7c40da2e5a0de984ffe2ccb7c47cd0abf/) | ⚠️ Unaudited |
| GnosisSafeL2 | governance | avalanche | n/a | [`0x6c104d5b914931ba179168d63739a297dc29bcf3`](./contracts/avalanche-43114/0x6c104d5b914931ba179168d63739a297dc29bcf3/) | ⚠️ Unaudited |
| GoGoGasStation | unknown | avalanche | n/a | 2 deployments: avalanche [`0x27ce13ed07c367258e0e65eb932dffcb84f62b7e`](./contracts/avalanche-43114/0x27ce13ed07c367258e0e65eb932dffcb84f62b7e/); avalanche `0x52950ffee4ae5c6206d598a639647df27f8f7bd2` | ⚠️ Unaudited |
| MinipoolStreamliner | unknown | avalanche | n/a | 3 deployments: avalanche [`0x0a75a480af4adc81b20b1664a1da2bd7caefa430`](./contracts/avalanche-43114/0x0a75a480af4adc81b20b1664a1da2bd7caefa430/); avalanche `0x8c05d78066431c3b11bbfb6f3546fd3f1396115c`; avalanche `0xb5f2ed77b7723da56ad58edca5106f07f390e560` | ⚠️ Unaudited |
| MinipoolStreamliner | unknown | avalanche | n/a | 2 deployments: avalanche [`0x746f2c0cf9cdac51e6aa7bc7020f9fda6ac1ecd8`](./contracts/avalanche-43114/0x746f2c0cf9cdac51e6aa7bc7020f9fda6ac1ecd8/); avalanche `0x752ab1da3f8fb0e715976bd5c3416a3a8e163ae1` | ⚠️ Unaudited |
| MinipoolStreamlinerV2 | unknown | avalanche | n/a | [`0xae1e7b06544a13315e6f7301cc161761813ce4b1`](./contracts/avalanche-43114/0xae1e7b06544a13315e6f7301cc161761813ce4b1/) | ⚠️ Unaudited |
| MOANI | unknown | avalanche | n/a | [`0x42edf547600d7e86be4b44cb7c6d8f8a2c948215`](./contracts/avalanche-43114/0x42edf547600d7e86be4b44cb7c6d8f8a2c948215/) | ⚠️ Unaudited |
| Multicall3 | periphery | avalanche | n/a | [`0xca11bde05977b3631167028862be2a173976ca11`](./contracts/avalanche-43114/0xca11bde05977b3631167028862be2a173976ca11/) | ⚠️ Unaudited |
| NodeAsAService | unknown | avalanche | n/a | 2 deployments: avalanche [`0x3ccef51d2e4042b1d01b41e2115a6eae8c7e805a`](./contracts/avalanche-43114/0x3ccef51d2e4042b1d01b41e2115a6eae8c7e805a/); avalanche `0xb306c94fd016a9e8de7c6643a4f16342dab20b04` | ⚠️ Unaudited |
| NodeSale | unknown | avalanche | n/a | 2 deployments: avalanche [`0x50db30deb68b0f40df4d07c002142100a5b77102`](./contracts/avalanche-43114/0x50db30deb68b0f40df4d07c002142100a5b77102/); avalanche `0xa60a66f6ce0f43b9d36d9c138aee858fc683cfaa` | ⚠️ Unaudited |
| OonodzHardwareProvider | unknown | avalanche | n/a | [`0xfe6ca6cd383d1e213f5d1015dd0bb35275e8fe3e`](./contracts/avalanche-43114/0xfe6ca6cd383d1e213f5d1015dd0bb35275e8fe3e/) | ⚠️ Unaudited |
| ParadiseTycoonPowerups | unknown | avalanche | n/a | 2 deployments: avalanche [`0x9fa82eb2d653fd2938d55cdd8e6e3771a3966cd9`](./contracts/avalanche-43114/0x9fa82eb2d653fd2938d55cdd8e6e3771a3966cd9/); avalanche `0xd0764d0b80beacbec8488b6c634cd3fa84c1823d` | ⚠️ Unaudited |
| ProxyAdmin | unknown | avalanche | n/a | 7 deployments: avalanche [`0x5313c309cd469b751ad3947568d65d4a70b247cf`](./contracts/avalanche-43114/0x5313c309cd469b751ad3947568d65d4a70b247cf/); avalanche `0x6e8fd36d51d159209054dadda7f87aa4e1aed940`; avalanche `0x89cf789e6b622e29ddaf5283cc0c2b1301b9b64d`; avalanche `0x9484d5da62664d65744de5d2c148c0ee89416c71`; avalanche `0xbc5627e0b497f18dd4a321f57f4d43c1e0e9e190`; avalanche `0xc7fef2eac21dddf9fa332c1ff4cf208599d7a6c6`; avalanche `0xf4c5626c39570f0637c1785b378b0ef45a1620a9` | ⚠️ Unaudited |
| StAvaxWavaxOracle | operational_periphery | avalanche | n/a | 2 deployments: avalanche [`0x7759c62e0e3c1c6ee5789b60ccd0826936cb618d`](./contracts/avalanche-43114/0x7759c62e0e3c1c6ee5789b60ccd0826936cb618d/); avalanche `0xa582a36f77e4536d95cbb99126640e7cbebc3a4b` | ⚠️ Unaudited |
| SubnetHardwareRentalMapping | unknown | avalanche | n/a | 2 deployments: avalanche [`0x8b85ca6e43f5b057793fb7567b4b4667dff33d0b`](./contracts/avalanche-43114/0x8b85ca6e43f5b057793fb7567b4b4667dff33d0b/); avalanche `0xf04aa1700694881761de6d1cc1c490102ff8a9ed` | ⚠️ Unaudited |
| SubnetStaking | unknown | avalanche | n/a | 2 deployments: avalanche [`0x697d7c12853a59429b62ab4d310975335dba2c68`](./contracts/avalanche-43114/0x697d7c12853a59429b62ab4d310975335dba2c68/); avalanche `0x9bfade56e75798167a84c24704fed6098b590819` | ⚠️ Unaudited |
| Timelock | governance | avalanche | n/a | [`0xcd385f1947d532186f3f6aaa93966e3e9c14af41`](./contracts/avalanche-43114/0xcd385f1947d532186f3f6aaa93966e3e9c14af41/) | ⚠️ Unaudited |
| TokenpstAVAX | unknown | avalanche | n/a | 2 deployments: avalanche [`0x6b37756df77a3798fd4f1476ef48c62be7e5aaf8`](./contracts/avalanche-43114/0x6b37756df77a3798fd4f1476ef48c62be7e5aaf8/); avalanche `0x82e1534a5b9b299028e8939a2aef5bcbc079b241` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | avalanche | n/a | 2 deployments: avalanche [`0x0146b8f75b9f03e0c08627e9ce2d3d07f59937af`](./contracts/avalanche-43114/0x0146b8f75b9f03e0c08627e9ce2d3d07f59937af/); avalanche `0x22bafb9c882a8ba7ee5559186540bcd8dba1d073` | ⚠️ Unaudited |
| TwapGGP | unknown | avalanche | n/a | [`0x3155a8f74f8618ebfdf4e04b40e86e5a51d56cfe`](./contracts/avalanche-43114/0x3155a8f74f8618ebfdf4e04b40e86e5a51d56cfe/) | ⚠️ Unaudited |
| WAVAX | unknown | avalanche | n/a | [`0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7`](./contracts/avalanche-43114/0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7/) | ⚠️ Unaudited |
| WithdrawQueue | operational_periphery | avalanche | n/a | 5 deployments: avalanche [`0x3dc34920e12067de82de2a94cd46544b255d08e2`](./contracts/avalanche-43114/0x3dc34920e12067de82de2a94cd46544b255d08e2/); avalanche `0x4043da5d66530f70f2ae1dfbea13d02051b45e6e`; avalanche `0x472e8266f564d52cba41e50817e3d2b63df56238`; avalanche `0x55eadf68ab32c4f782828148b465a76c54bd8a16`; avalanche `0x87c1b4de866b686e2b44e63521f02026e2b48a64` | ⚠️ Unaudited |
| WithdrawQueue | unknown | avalanche | n/a | 2 deployments: avalanche [`0x61f908d4992a790a2792d3c36850b4b9eb5849a3`](./contracts/avalanche-43114/0x61f908d4992a790a2792d3c36850b4b9eb5849a3/); avalanche `0xf25dc803dba114830b086e4cc09cfdebe2c10afd` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (7)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | avalanche | n/a | `0x17395ad76b236fabeac3634b78ff8f6970222199` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x19da5d5e16615a354316b792ef91d2dd43d439f4` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x213a742ec671a2852c7be7f328766621b08df34a` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x6c2e8cc2ba119776593a85a3941282a928cc4311` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x7cdf0d944d05aa13ae140a5e880d499808fffb98` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x9a4536d7df29b385c44737c60597ff9082f5ec4d` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xae6a7d4778cc35673fcae8f09cdfb4ae85607d89` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [GoGoPool - Zellic Audit Report.pdf](https://github.com/Zellic/publications/blob/master/GoGoPool%20-%20Zellic%20Audit%20Report.pdf) | Zellic | Audit | 2023-02 | stale | Direct | contract_name | 28 | high |
| [2023-02-gogopool-mitigation-contest (GitHub directory)](https://github.com/code-423n4/2023-02-gogopool-mitigation-contest) | Code4rena | Contest | 2023-02 | stale | Direct | contract_name | 18 | medium |
| [643ee88bf91b375b39ba2613_Kudelski_multisig_labs_report_1.1.pdf](https://assets-global.website-files.com/62f90a8443126c2ee50f4c4e/643ee88bf91b375b39ba2613_Kudelski_multisig_labs_report_1.1.pdf) | Code4rena | Contest | 2022-10 | stale | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| avalanche | [`0xc095ece2c0f315381b4bf6de169fbc219b24194c`](./contracts/avalanche-43114/0xc095ece2c0f315381b4bf6de169fbc219b24194c/) | ArtifactHardwareProvider | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x37686293c9423a1c5a171aada28ab5c9086b8853`](./contracts/avalanche-43114/0x37686293c9423a1c5a171aada28ab5c9086b8853/) | AssetLocker | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x456a6e49409f137138e2e0255368a3a37876e87b`](./contracts/avalanche-43114/0x456a6e49409f137138e2e0255368a3a37876e87b/) | AvalancheHardwareRental | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x7a212fb6b84461cf4f889cab42ff9e856db9a6dc`](./contracts/avalanche-43114/0x7a212fb6b84461cf4f889cab42ff9e856db9a6dc/) | CoqnetHardwareRental | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x9fbb3df7c40da2e5a0de984ffe2ccb7c47cd0abf`](./contracts/avalanche-43114/0x9fbb3df7c40da2e5a0de984ffe2ccb7c47cd0abf/) | CREATE3Factory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x27ce13ed07c367258e0e65eb932dffcb84f62b7e`](./contracts/avalanche-43114/0x27ce13ed07c367258e0e65eb932dffcb84f62b7e/) | GoGoGasStation | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x0a75a480af4adc81b20b1664a1da2bd7caefa430`](./contracts/avalanche-43114/0x0a75a480af4adc81b20b1664a1da2bd7caefa430/) | MinipoolStreamliner | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x746f2c0cf9cdac51e6aa7bc7020f9fda6ac1ecd8`](./contracts/avalanche-43114/0x746f2c0cf9cdac51e6aa7bc7020f9fda6ac1ecd8/) | MinipoolStreamliner | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0xae1e7b06544a13315e6f7301cc161761813ce4b1`](./contracts/avalanche-43114/0xae1e7b06544a13315e6f7301cc161761813ce4b1/) | MinipoolStreamlinerV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x42edf547600d7e86be4b44cb7c6d8f8a2c948215`](./contracts/avalanche-43114/0x42edf547600d7e86be4b44cb7c6d8f8a2c948215/) | MOANI | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x3ccef51d2e4042b1d01b41e2115a6eae8c7e805a`](./contracts/avalanche-43114/0x3ccef51d2e4042b1d01b41e2115a6eae8c7e805a/) | NodeAsAService | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x50db30deb68b0f40df4d07c002142100a5b77102`](./contracts/avalanche-43114/0x50db30deb68b0f40df4d07c002142100a5b77102/) | NodeSale | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0xfe6ca6cd383d1e213f5d1015dd0bb35275e8fe3e`](./contracts/avalanche-43114/0xfe6ca6cd383d1e213f5d1015dd0bb35275e8fe3e/) | OonodzHardwareProvider | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x9fa82eb2d653fd2938d55cdd8e6e3771a3966cd9`](./contracts/avalanche-43114/0x9fa82eb2d653fd2938d55cdd8e6e3771a3966cd9/) | ParadiseTycoonPowerups | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x7759c62e0e3c1c6ee5789b60ccd0826936cb618d`](./contracts/avalanche-43114/0x7759c62e0e3c1c6ee5789b60ccd0826936cb618d/) | StAvaxWavaxOracle | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x8b85ca6e43f5b057793fb7567b4b4667dff33d0b`](./contracts/avalanche-43114/0x8b85ca6e43f5b057793fb7567b4b4667dff33d0b/) | SubnetHardwareRentalMapping | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x697d7c12853a59429b62ab4d310975335dba2c68`](./contracts/avalanche-43114/0x697d7c12853a59429b62ab4d310975335dba2c68/) | SubnetStaking | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0xcd385f1947d532186f3f6aaa93966e3e9c14af41`](./contracts/avalanche-43114/0xcd385f1947d532186f3f6aaa93966e3e9c14af41/) | Timelock | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x6b37756df77a3798fd4f1476ef48c62be7e5aaf8`](./contracts/avalanche-43114/0x6b37756df77a3798fd4f1476ef48c62be7e5aaf8/) | TokenpstAVAX | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x3155a8f74f8618ebfdf4e04b40e86e5a51d56cfe`](./contracts/avalanche-43114/0x3155a8f74f8618ebfdf4e04b40e86e5a51d56cfe/) | TwapGGP | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7`](./contracts/avalanche-43114/0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7/) | WAVAX | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x3dc34920e12067de82de2a94cd46544b255d08e2`](./contracts/avalanche-43114/0x3dc34920e12067de82de2a94cd46544b255d08e2/) | WithdrawQueue | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x61f908d4992a790a2792d3c36850b4b9eb5849a3`](./contracts/avalanche-43114/0x61f908d4992a790a2792d3c36850b4b9eb5849a3/) | WithdrawQueue | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 36 |
| upstream | 0 |
| standard_library | 3 |
| needs_review | 8 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=1, medium=1
- Match method counts: extraction_exact=46

Zero-match audit list:

- [11933] 643ee88bf91b375b39ba2613_Kudelski_multisig_labs_report_1.1.pdf

Fork inheritance lineage and inherited audits are included when available.
