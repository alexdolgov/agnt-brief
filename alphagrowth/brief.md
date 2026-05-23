# Agentic Audit Brief: alphagrowth

## Project Overview

- Project: alphagrowth (`alphagrowth`)
- Website: [https://app.euler.finance/governor/alphagrowth?network=unichain](https://app.euler.finance/governor/alphagrowth?network=unichain)
- Lifecycle: active (Tier 0, 15.7% below peak)
- Generated: 2026-05-23T06:47:27.387Z
- Pipeline run: v2-pipeline-2026-05-22-eff36e-2ebb
- Chains: base, ethereum, linea, unichain
- Contract surface: 135 unique implementations (718 raw deployments)
- DeFi Llama TVL: $8,847,548.87
- On-chain TVL (included contracts): $6,652,348.75
- TVL by chain: Unichain $3,835,218.03 | Base $2,117,387.18 | Ethereum $553,958.14 | Linea $145,785.40

## Project Description

AlphaGrowth is a DeFi protocol that provides risk-curated lending vaults (EVaults) and a decentralized exchange (EulerSwap). It enables users to deposit assets into isolated lending markets and trade tokens, with governance controlling risk parameters and protocol upgrades.

### Architecture

The Governor family controls the GenericFactory, which deploys EVaults for the alphagrowth lending markets. EulerSwap operates independently but shares the same governance infrastructure, with the Governor able to adjust its protocol fees and registry.

## Audit Coverage Summary

- Verified implementations audited: 9/109 (8.3%)
- Verified + Unaudited implementations: 100
- Verified by bytecode match: 0
- Unverified implementations: 26
- Unique implementations: 135
- Raw deployments: 718
- Audits discovered: 16
- Scoreable audits (matched contracts): 15
- ASD (verified + unaudited TVL): $6,652,348.75
- Latest audit: 2025-11 (fresh)
- Staleness: 10 fresh, 6 aging, 0 stale, 0 unknown
- Tier 1 coverage: 6.4% (Certora, ChainSecurity, Cyfrin, Spearbit)

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| Spearbit | Tier 1 | 7 | 6.4% | 2025-09 |
| Pashov Audit Group | Tier 2 | 5 | 4.6% | 2025-11 |
| Certora | Tier 1 | 3 | 2.8% | 2025-07 |
| Cyfrin | Tier 1 | 3 | 2.8% | 2025-05 |
| Sigma Prime | Tier 2 | 3 | 2.8% | 2025-07 |
| ChainSecurity | Tier 1 | 2 | 1.8% | 2025-03 |
| yAudit | Tier 2 | 2 | 1.8% | 2025-11 |

## Contract Surface

### ✅ Verified + Audited (9)

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| ERC4626EVCCollateralSecuritizeFactory | registry | ethereum | [`0x5f51d9...f76cbb`](./contracts/ethereum-1/0x5f51d980f15fe6075ae30394dc35de57a4f76cbb/) | ✅ Audited |
| EulerEarn | unknown | ethereum | 2 deployments: ethereum [`0x253453...a4daab`](./contracts/ethereum-1/0x253453bc43f0b961528c9cbc18a3ae3de0a4daab/); ethereum `0xba4214...043da9` | ✅ Audited |
| EulerEarnFactory | registry | ethereum | 3 deployments: ethereum [`0x59709b...308af4`](./contracts/ethereum-1/0x59709b029b140c853fe28d277f83c3a65e308af4/); ethereum `0x9a20d3...1e3427`; ethereum `0xa36d0b...07ff2d` | ✅ Audited |
| EulerSwap | unknown | ethereum | 4 deployments: ethereum [`0x05d6c4...ea92ee`](./contracts/ethereum-1/0x05d6c4d46a794468f282469c0e9346f121ea92ee/); ethereum `0x8b0e04...74dc97`; ethereum `0xc35a0f...d6b117`; ethereum `0xf5d355...ce33d1` | ✅ Audited |
| EulerSwapFactory | registry | ethereum | 4 deployments: ethereum [`0x806af3...4b1211`](./contracts/ethereum-1/0x806af31a325be46812fc8e8391333c4fa74b1211/); ethereum `0xb013be...2cf228`; ethereum `0xd05213...04df5f`; ethereum `0xfb9fe6...10cad4` | ✅ Audited |
| EulerSwapPeriphery | adapter | ethereum | 4 deployments: ethereum [`0x208ff5...d16b06`](./contracts/ethereum-1/0x208ff5eb543814789321daa1b5eb551881d16b06/); ethereum `0x52b26d...c5ed74`; ethereum `0xbaa3ac...c89e3a`; ethereum `0xd3a349...fd513e` | ✅ Audited |
| EulerSwapRegistry | registry | ethereum | [`0x5fccb8...32814a`](./contracts/ethereum-1/0x5fccb84363f020c0cade052c9c654aabf932814a/) | ✅ Audited |
| PublicAllocator | operational_periphery | ethereum | [`0x8fdcb8...274800`](./contracts/ethereum-1/0x8fdcb80a2894f0dc052c8d52d22544dc90274800/) | ✅ Audited |
| SwapVerifier | periphery | ethereum | 3 deployments: ethereum [`0x786c90...c582ab`](./contracts/ethereum-1/0x786c900d7d348662703c38b46f24c1cda2c582ab/); ethereum `0x84918b...5cbe15`; ethereum `0xae2648...0737c7` | ✅ Audited |

### ⚠️ Verified + Unaudited (100)

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| EVault | core_logic | base | 33 deployments: ethereum `0x29a56a...45cc8e`; ethereum `0x2f849b...ec8a6b`; ethereum `0x2ff5f1...19443b`; ethereum `0x3573a8...dd81c6`; ethereum `0x35d4f8...8e88e3`; ethereum `0x412d0e...640229`; ethereum `0x6fe7fa...da0fbc`; ethereum `0xa7a064...ef7ec3`; ethereum `0xbfdc48...7198e9`; ethereum `0xfbcc21...59512d`; unichain `0x1f3134...0e1ffc`; unichain `0x54ff50...02d06a`; unichain `0x5d2511...796485`; unichain `0x6eae95...a682ba`; unichain `0x7650d7...24086f`; unichain `0xd49181...64ead3`; unichain `0xe36da4...729f86`; base [`0x085178...9a7ee7`](./contracts/base-8453/0x085178078796da17b191f9081b5e2fccc79a7ee7/); base `0x0a1a3b...80ee16`; base `0x358f25...b9ea49`; base `0x3f0d3f...638a7a`; base `0x5fe2de...74ac25`; base `0x7b181d...572609`; base `0x859160...a4b410`; base `0x882018...5d7f8b`; base `0x990d61...df7cf2`; base `0xd4a805...130d14`; base `0xe72ea9...aec7e4`; base `0xfab9af...05ccd3`; linea `0x359e36...21aa18`; linea `0x8955d7...b217b4`; linea `0xa8a02e...854968`; linea `0xf4712f...327086` | ⚠️ Unaudited |
| RewardToken | token | ethereum | 2 deployments: ethereum [`0x5241e3...4464a7`](./contracts/ethereum-1/0x5241e34a1ea2bf6f297baf158e668e23244464a7/); ethereum `0xf3e621...b4e696` | ⚠️ Unaudited |
| EulStakes | token | ethereum | [`0xc697bb...716cd3`](./contracts/ethereum-1/0xc697bb6625d9f7adcf0fbf0cbd4dcf50d8716cd3/) | ⚠️ Unaudited |
| AccountLens | periphery | ethereum | 11 deployments: ethereum [`0x334209...0c230f`](./contracts/ethereum-1/0x3342097299f57ec4773578a94f99d5d2ea0c230f/); ethereum `0x5187ee...8ff257`; ethereum `0x5903c5...91b45a`; ethereum `0x61e09a...160119`; ethereum `0x880620...e60e9f`; ethereum `0x8f59c6...b68753`; ethereum `0x94b9d2...425844`; ethereum `0xa60c42...e34bc7`; ethereum `0xb8507b...27cd94`; ethereum `0xbd1bbb...53aaef`; ethereum `0xe5b2ad...6c246f` | ⚠️ Unaudited |
| BalanceForwarder | unknown | ethereum | [`0xa252af...84fee5`](./contracts/ethereum-1/0xa252af9208e53c0ac6a79a5d0933a8d1f184fee5/) | ⚠️ Unaudited |
| BeaconProxy | registry | ethereum | [`0x55f9ba...21a3d3`](./contracts/ethereum-1/0x55f9bace2c864ac0d3392ea9fa654b605f21a3d3/) | ⚠️ Unaudited |
| Borrowing | core_logic | ethereum | [`0x639156...605acf`](./contracts/ethereum-1/0x639156f8feb0cd88205e4861a0224ec169605acf/) | ⚠️ Unaudited |
| CapRiskSteward | unknown | ethereum | 2 deployments: ethereum [`0x465528...4f8b8c`](./contracts/ethereum-1/0x465528b234fec209db52c9901dd959742a4f8b8c/); ethereum `0xfe56ca...e89b95` | ⚠️ Unaudited |
| CapRiskStewardFactory | registry | ethereum | 3 deployments: ethereum [`0x93c233...6f3208`](./contracts/ethereum-1/0x93c233008971e878d60a7737657869ab746f3208/); ethereum `0xa446a5...3a448b`; ethereum `0xff00fa...cffb84` | ⚠️ Unaudited |
| ChronicleOracle | operational_periphery | ethereum | 8 deployments: ethereum [`0x28e36e...583b85`](./contracts/ethereum-1/0x28e36ea7481934a651da81483358c67a51583b85/); ethereum `0x420a98...e0d9c6`; ethereum `0x5a4741...cfcde6`; ethereum `0x5c5b67...9a25cf`; ethereum `0x6245cd...006cfc`; ethereum `0x956c9b...bd1b86`; ethereum `0x9ee335...953130`; ethereum `0xdc8af4...760721` | ⚠️ Unaudited |
| CrossAdapter | adapter | ethereum | 103 deployments: ethereum [`0x02dd5b...9528d7`](./contracts/ethereum-1/0x02dd5b7ab536629d2235276abcdf8eb3af9528d7/); ethereum `0x04a566...d0cf1c`; ethereum `0x0a7b3d...1544e4`; ethereum `0x0c5ec7...3404ce`; ethereum `0x130eab...0ffaed`; ethereum `0x15226e...aac6bb`; ethereum `0x1aa4b1...30fd7d`; ethereum `0x1bb5d7...a713ca`; ethereum `0x1df4f5...525496`; ethereum `0x1e87e5...326ebf`; ethereum `0x205934...44422c`; ethereum `0x26bda7...275a07`; ethereum `0x2a0cda...66c5dd`; ethereum `0x2b23b4...9a8205`; ethereum `0x301a93...c04685`; ethereum `0x30f7eb...746e3e`; ethereum `0x336d82...fba6e8`; ethereum `0x3ecfac...9df903`; ethereum `0x3ef9cd...1b0b4e`; ethereum `0x3fbff9...437637`; ethereum `0x3fc222...1b4f12`; ethereum `0x438d3b...7f25fe`; ethereum `0x445102...f2ab70`; ethereum `0x4a35fe...b205af`; ethereum `0x4add41...6581b7`; ethereum `0x4c00c5...0f1c59`; ethereum `0x4c2a73...fd7499`; ethereum `0x4f1bb8...d3271e`; ethereum `0x509ab7...a899d1`; ethereum `0x5412ed...d87d57`; ethereum `0x55757d...58dcc1`; ethereum `0x562929...ec1832`; ethereum `0x566c24...eef5dd`; ethereum `0x575232...894a85`; ethereum `0x5ae8c1...78c275`; ethereum `0x5b12ce...f6b066`; ethereum `0x5bc213...39fb3d`; ethereum `0x5bc6c0...3a554c`; ethereum `0x5ed265...7c6299`; ethereum `0x5ffc9c...5e2f06`; ethereum `0x62b1de...b25f61`; ethereum `0x62fd67...976ded`; ethereum `0x6653f1...6fa21b`; ethereum `0x66af61...67ca91`; ethereum `0x6a569e...a84dc7`; ethereum `0x6a7c5b...7a72af`; ethereum `0x6c68d8...f02f10`; ethereum `0x6fa8e7...58c957`; ethereum `0x7185a1...ffd024`; ethereum `0x73bddd...49ebe9`; ethereum `0x7cebec...20dd10`; ethereum `0x7f12be...a53fc5`; ethereum `0x7f2e2a...564e82`; ethereum `0x83a27c...fbf440`; ethereum `0x8424db...77ed0c`; ethereum `0x85a8d8...f3d201`; ethereum `0x871001...dd7444`; ethereum `0x8ce524...59beff`; ethereum `0x8e8cfc...04cd4e`; ethereum `0x8f3586...40ebe2`; ethereum `0x92587b...59af90`; ethereum `0x93de27...b12d20`; ethereum `0x951bcd...432928`; ethereum `0x98184f...bee902`; ethereum `0x9c3282...5c66ec`; ethereum `0x9d927d...f854d2`; ethereum `0xa0a951...f1edd7`; ethereum `0xa4496d...e17ce8`; ethereum `0xa52631...7b6cff`; ethereum `0xa625cb...62c564`; ethereum `0xa9d733...8c62be`; ethereum `0xa9e18e...7f6128`; ethereum `0xadccfc...09c988`; ethereum `0xae9ece...c91205`; ethereum `0xafdb48...e0c127`; ethereum `0xb0baa4...3254f0`; ethereum `0xbe3735...8611de`; ethereum `0xc4406e...e64c6b`; ethereum `0xc667d2...1cb2ed`; ethereum `0xc9775f...d28b2a`; ethereum `0xca5b70...56b85f`; ethereum `0xcab67d...2e68f4`; ethereum `0xcf8f3a...972785`; ethereum `0xd0156a...f62efa`; ethereum `0xd201e8...e98f36`; ethereum `0xd6b5eb...1179c5`; ethereum `0xd7440b...40cd22`; ethereum `0xd7ad78...f21895`; ethereum `0xd92742...17a3a1`; ethereum `0xdacb0d...6c227f`; ethereum `0xdc149e...27beab`; ethereum `0xe4e191...a4dc93`; ethereum `0xe56d93...56d2bd`; ethereum `0xe7a32e...58ec27`; ethereum `0xe8b751...4a5bf3`; ethereum `0xe8d293...572812`; ethereum `0xea876b...16ac23`; ethereum `0xeb3ed6...68c4ec`; ethereum `0xf61517...5e6683`; ethereum `0xf8147c...fe2058`; ethereum `0xf8e463...6e6e9e`; ethereum `0xf9de42...156ce6`; ethereum `0xffe3b0...fab24e` | ⚠️ Unaudited |
| DToken | token | ethereum | 6 deployments: ethereum [`0x03601e...6975d7`](./contracts/ethereum-1/0x03601edc8af4b0439d63eb3a45ed11b01c6975d7/); ethereum `0x169fcd...99be8c`; ethereum `0x29dadd...bbff79`; ethereum `0x6e0f1a...153b2c`; ethereum `0xc293f2...64a4c6`; ethereum `0xe374b7...2924e5` | ⚠️ Unaudited |
| EdgeFactory | registry | ethereum | 2 deployments: ethereum [`0x66f616...09927a`](./contracts/ethereum-1/0x66f616de88eeca5e1e3b0b6e9914a60a5c09927a/); ethereum `0xa969b8...1659bd` | ⚠️ Unaudited |
| EdgeFactoryPerspective | registry | ethereum | 2 deployments: ethereum [`0x8c7543...d4d788`](./contracts/ethereum-1/0x8c7543f83d3d295f68447792581f73d7d5d4d788/); ethereum `0xf9ffeb...a66309` | ⚠️ Unaudited |
| EscrowedCollateralPerspective | operational_periphery | ethereum | 2 deployments: ethereum [`0x4e58bb...7fadde`](./contracts/ethereum-1/0x4e58bbea423c4b9a2fc7b8e58f5499f9927fadde/); ethereum `0xc68cb3...cd5828` | ⚠️ Unaudited |
| EscrowPerspective | operational_periphery | ethereum | 2 deployments: ethereum [`0x91f046...ead0c5`](./contracts/ethereum-1/0x91f046e629226b2c78b84fa1537603961aead0c5/); ethereum `0xf0e1db...74dded` | ⚠️ Unaudited |
| EthereumVaultConnector | core_logic | ethereum | [`0x0c9a3d...9ee383`](./contracts/ethereum-1/0x0c9a3dd6b8f28529d72d7f9ce918d493519ee383/) | ⚠️ Unaudited |
| EToken | token | ethereum | 7 deployments: ethereum [`0x090c75...0d56cf`](./contracts/ethereum-1/0x090c752b7b26d3cc382bf532ec9c4403c80d56cf/); ethereum `0x1245f0...eafbdb`; ethereum `0x196fdd...d33cb8`; ethereum `0x75e82d...ddc1e0`; ethereum `0xbb0d4b...1f4c0a`; ethereum `0xee385a...33abab`; ethereum `0xf376cf...42bcfc` | ⚠️ Unaudited |
| Eul | unknown | ethereum | [`0xd9fcd9...aae07b`](./contracts/ethereum-1/0xd9fcd98c322942075a5c3860693e9f4f03aae07b/) | ⚠️ Unaudited |
| EulDistributor | operational_periphery | ethereum | [`0xd524e2...87a7e2`](./contracts/ethereum-1/0xd524e29e3baf5bb085403ca5665301e94387a7e2/) | ⚠️ Unaudited |
| EulDistributorOwner | operational_periphery | ethereum | [`0x8e3204...c05b5d`](./contracts/ethereum-1/0x8e3204ae99605e6ffd2bc72d765f480bf0c05b5d/) | ⚠️ Unaudited |
| EulerBasePerspective | unknown | ethereum | [`0x4df63d...318c39`](./contracts/ethereum-1/0x4df63d20cb2a5faa5b9cb978089bdfccfd318c39/) | ⚠️ Unaudited |
| EulerClaims | unknown | ethereum | 3 deployments: ethereum [`0x4ddce4...865f84`](./contracts/ethereum-1/0x4ddce44ab524f49b4050d9d59d7cf61cda865f84/); ethereum `0xb4efe9...fe865f`; ethereum `0xbc8021...4cf026` | ⚠️ Unaudited |
| EulerEarnFactoryPerspective | registry | ethereum | 2 deployments: ethereum [`0xa45895...a1667e`](./contracts/ethereum-1/0xa45895144f2b6e7e6d2fcaffe6ea19e86aa1667e/); ethereum `0xc09be1...098b52` | ⚠️ Unaudited |
| EulerEarnVault | core_logic | ethereum | 3 deployments: ethereum [`0x02122a...2dbd05`](./contracts/ethereum-1/0x02122afd2687ddb1dd3b9f2f2d7cc6fd422dbd05/); ethereum `0x264bad...44e27c`; ethereum `0xfd78c8...56cded` | ⚠️ Unaudited |
| EulerEarnVaultLens | core_logic | ethereum | 9 deployments: ethereum [`0x07d6b3...635091`](./contracts/ethereum-1/0x07d6b3981cbc1dc34102735b987b175116635091/); ethereum `0x189841...a2458e`; ethereum `0x20954c...5013d9`; ethereum `0xa09144...41a8be`; ethereum `0xadd180...502fdd`; ethereum `0xafad3c...f6285f`; ethereum `0xcfe86b...fa4f9a`; ethereum `0xf8be6d...6a05ef`; ethereum `0xf99770...64084a` | ⚠️ Unaudited |
| EulerFactoryPerspective | registry | ethereum | 2 deployments: ethereum [`0x866708...d4a74f`](./contracts/ethereum-1/0x8667082f128fa13139b859c1b40b4c8014d4a74f/); ethereum `0xe6beaa...e17f54` | ⚠️ Unaudited |
| EulerFixedCyclicalBinaryIRMFactory | registry | ethereum | [`0xa8f8e8...3ac8d0`](./contracts/ethereum-1/0xa8f8e82c9da15a991d7bf2486ae26e22743ac8d0/) | ⚠️ Unaudited |
| EulerGeneralView | unknown | ethereum | [`0xacc25c...e68e42`](./contracts/ethereum-1/0xacc25c4d40651676feed43a3467f3169e3e68e42/) | ⚠️ Unaudited |
| EulerKinkIRMFactory | registry | ethereum | 2 deployments: ethereum [`0xa065ca...a6f5fd`](./contracts/ethereum-1/0xa065ca5c2f250171ff8a8f93edf62c15e5a6f5fd/); ethereum `0xcae0a3...34c9f9` | ⚠️ Unaudited |
| EulerKinkyIRMFactory | registry | ethereum | [`0x010102...9fc102`](./contracts/ethereum-1/0x010102daab6133d4f8ceb4c8842a70b9899fc102/) | ⚠️ Unaudited |
| EulerRouterFactory | adapter | ethereum | [`0x70b3f6...72326a`](./contracts/ethereum-1/0x70b3f6f61b7bf237df04589ddaa842121072326a/) | ⚠️ Unaudited |
| EulerSimpleLens | periphery | ethereum | [`0xc2d41d...20b38e`](./contracts/ethereum-1/0xc2d41d42939109cdcfa26c6965269d9c0220b38e/) | ⚠️ Unaudited |
| EulerSwapManagement | unknown | ethereum | [`0xa6c1dd...5ef86a`](./contracts/ethereum-1/0xa6c1ddc10fb13fdd998a4940a883aa952f5ef86a/) | ⚠️ Unaudited |
| EulerSwapProtocolFeeConfig | governance | ethereum | [`0x5171ae...f53b63`](./contracts/ethereum-1/0x5171aed04fa9551db484f07c853f252bc6f53b63/) | ⚠️ Unaudited |
| EulerUngovernedPerspective | unknown | ethereum | 10 deployments: ethereum [`0x000d8a...b05875`](./contracts/ethereum-1/0x000d8aa9e414b9e7e7591a456ca910fb3bb05875/); ethereum `0x2206c3...f0710b`; ethereum `0x534556...cd60bd`; ethereum `0x600bbe...21b507`; ethereum `0x60fcc0...7955ee`; ethereum `0x6a123b...3d6215`; ethereum `0x7160cb...307bc6`; ethereum `0x7695a3...17351c`; ethereum `0xb50a07...5e7fbf`; ethereum `0xd9dec3...f52646` | ⚠️ Unaudited |
| EVKFactoryPerspective | registry | ethereum | [`0xb30f23...82e182`](./contracts/ethereum-1/0xb30f23bc5f93f097b3a699f71b0b1718fc82e182/) | ⚠️ Unaudited |
| Exec | unknown | ethereum | 3 deployments: ethereum [`0x0bf049...3bb44d`](./contracts/ethereum-1/0x0bf04952a5b3ef6bad343c2218f584a7413bb44d/); ethereum `0x14cbac...8436d2`; ethereum `0x155020...cac8c1` | ⚠️ Unaudited |
| Extractor | unknown | ethereum | 4 deployments: ethereum [`0x05df5b...973377`](./contracts/ethereum-1/0x05df5bb999bac668713122b83fb5de75b6973377/); ethereum `0x156242...e462b9`; ethereum `0x70a2dc...ca5df0`; ethereum `0xcc560e...ff6a8c` | ⚠️ Unaudited |
| FactoryGovernor | registry | ethereum | 2 deployments: ethereum [`0x2f1325...dc1f3d`](./contracts/ethereum-1/0x2f13256e04022d6356d8ce8c53c7364e13dc1f3d/); ethereum `0x799e9b...42a224` | ⚠️ Unaudited |
| Fee | unknown | ethereum | 2 deployments: ethereum [`0x0009a4...46a0c9`](./contracts/ethereum-1/0x0009a4657c52ea648490aa06138b88ce0f46a0c9/); ethereum `0x42aeb7...ffbe13` | ⚠️ Unaudited |
| FeeFlowController | governance | ethereum | [`0xfcd3db...0d1e32`](./contracts/ethereum-1/0xfcd3db06ea814eb21c84304fc7f90798c00d1e32/) | ⚠️ Unaudited |
| FeeFlowControllerUtil | governance | ethereum | [`0x653ed9...dd36df`](./contracts/ethereum-1/0x653ed9b915c7e7c413e7b2a2b6d83dfe02dd36df/) | ⚠️ Unaudited |
| FixedRateOracle | operational_periphery | ethereum | 33 deployments: ethereum [`0x14c855...759a05`](./contracts/ethereum-1/0x14c855046e91e91033aaff3191ea6717fb759a05/); ethereum `0x16a18a...1fa5d4`; ethereum `0x16a876...ade027`; ethereum `0x256f8f...e20ac6`; ethereum `0x2be3c0...e1414a`; ethereum `0x3415b1...8136c5`; ethereum `0x3ba9dc...07114d`; ethereum `0x4c631c...bb4b17`; ethereum `0x4cfa6e...c3b7c1`; ethereum `0x4e64e5...73cf45`; ethereum `0x4fd36c...84f893`; ethereum `0x53be6a...8eb56e`; ethereum `0x56f31b...3f9cbc`; ethereum `0x5c7943...622881`; ethereum `0x62357f...d2aa6e`; ethereum `0x6a8e56...d0cd77`; ethereum `0x6c34c9...bb591d`; ethereum `0x6fac9c...bab5be`; ethereum `0x7e6d49...d6a1fc`; ethereum `0x80876b...c580dd`; ethereum `0x810e3c...747a90`; ethereum `0x83e069...4f7a61`; ethereum `0x86cb59...be3f56`; ethereum `0x95df7a...9b8439`; ethereum `0xb5004f...31ffb4`; ethereum `0xbd3365...2121dc`; ethereum `0xc49988...64d637`; ethereum `0xceaef9...c77e3a`; ethereum `0xcf4124...378631`; ethereum `0xd35657...c3d4b8`; ethereum `0xe46bfb...947d21`; ethereum `0xf58f4d...bdd9f0`; ethereum `0xfef13a...0fe357` | ⚠️ Unaudited |
| FlashLoan | unknown | ethereum | [`0x07df2a...8259b3`](./contracts/ethereum-1/0x07df2ad9878f8797b4055230bbae5c808b8259b3/) | ⚠️ Unaudited |
| GnosisSafe | governance | ethereum | [`0xcad001...fb1dce`](./contracts/ethereum-1/0xcad001c30e96765ac90307669d578219d4fb1dce/) | ⚠️ Unaudited |
| GovernableWhitelistPerspective | unknown | ethereum | 2 deployments: ethereum [`0x232f49...eb9399`](./contracts/ethereum-1/0x232f49b73b3e1c65bccb1ff4874cadcd16eb9399/); ethereum `0x3f323e...77f418` | ⚠️ Unaudited |
| Governance | unknown | ethereum | 5 deployments: ethereum [`0x04cb46...5adfde`](./contracts/ethereum-1/0x04cb462a121e1799722fe84c60e790b64d5adfde/); ethereum `0x554ee3...812f73`; ethereum `0x8ff1c8...29dd7d`; ethereum `0xa61f50...5f0b67`; ethereum `0xe83b69...91a1cf` | ⚠️ Unaudited |
| GovernedPerspective | unknown | ethereum | 4 deployments: ethereum [`0x492e9f...c74d44`](./contracts/ethereum-1/0x492e9fe1289d43f8bb6275237bf16c9248c74d44/); ethereum `0x747a72...05165e`; ethereum `0xc01218...6e6eb2`; ethereum `0xd39452...29ce96` | ⚠️ Unaudited |
| GovernorAccessControlEmergency | governance | ethereum | 2 deployments: ethereum [`0x088756...a63153`](./contracts/ethereum-1/0x088756eb730a08cbeb98dfe67ca74697a8a63153/); ethereum `0x354008...e30a1b` | ⚠️ Unaudited |
| GovernorAccessControlEmergencyFactory | registry | ethereum | [`0x025c88...120faf`](./contracts/ethereum-1/0x025c8831c6e45420df8e71f7b6b99f733d120faf/) | ⚠️ Unaudited |
| Hooks | unknown | ethereum | 2 deployments: ethereum [`0x32737a...978ba3`](./contracts/ethereum-1/0x32737a15c40d7d42e6c9013138d3b2a775978ba3/); ethereum `0xd62665...571d82` | ⚠️ Unaudited |
| HookTarget | unknown | ethereum | [`0x6f5dad...1cad6a`](./contracts/ethereum-1/0x6f5dad1fce5944c241dfb586293d81fc791cad6a/) | ⚠️ Unaudited |
| HookTargetAccessControlKeyring | governance | ethereum | [`0x6a7ced...a83d0a`](./contracts/ethereum-1/0x6a7ced396c7317f9465640a583b7f2564ca83d0a/) | ⚠️ Unaudited |
| IdleTranchesOracle | operational_periphery | ethereum | [`0xfc15ec...427c62`](./contracts/ethereum-1/0xfc15ec9c88ca6fe3edd96465e7c4092e57427c62/) | ⚠️ Unaudited |
| Initialize | unknown | ethereum | [`0x7dd834...e84f3c`](./contracts/ethereum-1/0x7dd834c7844710435bd471b7499b16421ee84f3c/) | ⚠️ Unaudited |
| Installer | unknown | ethereum | [`0xec29b4...7edab5`](./contracts/ethereum-1/0xec29b4c2cacae5df1a491f084e5ec7c62a7edab5/) | ⚠️ Unaudited |
| IRMClassMajor | unknown | ethereum | [`0xd75870...38572b`](./contracts/ethereum-1/0xd75870dcbd1521e6cad7566fbca35d72e238572b/) | ⚠️ Unaudited |
| IRMClassMega | unknown | ethereum | [`0x894c74...08de2d`](./contracts/ethereum-1/0x894c7499f240c0e0205c56d26a5d609c8408de2d/) | ⚠️ Unaudited |
| IRMClassMidCap | unknown | ethereum | [`0xf058fe...107318`](./contracts/ethereum-1/0xf058fe816b01265d1ba0a3bd226049676b107318/) | ⚠️ Unaudited |
| IRMClassOHM | unknown | ethereum | [`0x89e8f6...959bef`](./contracts/ethereum-1/0x89e8f69c302d352d37de10019a69df4f7f959bef/) | ⚠️ Unaudited |
| IRMClassStable | unknown | ethereum | [`0x42ec0e...e9ee89`](./contracts/ethereum-1/0x42ec0eb1d2746a9f2739d7501c5d5608bde9ee89/) | ⚠️ Unaudited |
| IRMClassUSDT | token | ethereum | [`0xfd310b...0cf8ea`](./contracts/ethereum-1/0xfd310b00523707e6b3a9ba83c3d6eac3350cf8ea/) | ⚠️ Unaudited |
| IRMDefault | unknown | ethereum | [`0x680049...dd38f7`](./contracts/ethereum-1/0x68004911694ec42f0c56b7144a6a5281ffdd38f7/) | ⚠️ Unaudited |
| IRMLens | periphery | ethereum | 8 deployments: ethereum [`0x061b6b...0f807a`](./contracts/ethereum-1/0x061b6b0ba1b552006556c278fc8798d1e20f807a/); ethereum `0x0a6bf6...8e7743`; ethereum `0x35b2fa...bfeac2`; ethereum `0x57b1bb...6c52c1`; ethereum `0x5c5302...7e460b`; ethereum `0x97fcaa...c3f4c8`; ethereum `0xbbc1ca...2109cf`; ethereum `0xc6e506...843626` | ⚠️ Unaudited |
| Liquidation | unknown | ethereum | 4 deployments: ethereum [`0x16fa62...2ad23c`](./contracts/ethereum-1/0x16fa62d8c322a6156fb5ef267342a3c7952ad23c/); ethereum `0x9ea85b...9f156c`; ethereum `0xaed37a...19493e`; ethereum `0xd737ee...45ed98` | ⚠️ Unaudited |
| Markets | unknown | ethereum | 3 deployments: ethereum [`0x12401f...b41477`](./contracts/ethereum-1/0x12401f97e2264adbf8ff98da72e3465d97b41477/); ethereum `0x1e21ca...7f7fce`; ethereum `0xe5d0a7...ba2cd1` | ⚠️ Unaudited |
| NttManager | governance | ethereum | [`0x9502ad...e7b925`](./contracts/ethereum-1/0x9502ad5ed0ceed39eb604ae7f411836bd8e7b925/) | ⚠️ Unaudited |
| OFTAdapterUpgradeable | adapter | ethereum | [`0x4d7e09...75a531`](./contracts/ethereum-1/0x4d7e09f73843bd4735aaf7a74b6d877bac75a531/) | ⚠️ Unaudited |
| OracleLens | operational_periphery | ethereum | 14 deployments: ethereum [`0x02bd64...ec2d83`](./contracts/ethereum-1/0x02bd64ce7fbdbe7eb84d1f9b08e0cc2a7fec2d83/); ethereum `0x0c4773...f3f183`; ethereum `0x0f8560...47bd4f`; ethereum `0x1c4224...fe518e`; ethereum `0x26b1e2...26a867`; ethereum `0x30e6df...f7b48a`; ethereum `0x400043...f9dbc4`; ethereum `0x500e76...923d38`; ethereum `0x53dcfc...b1858a`; ethereum `0x76e96f...59a766`; ethereum `0x787449...a9045d`; ethereum `0x79211f...08fab6`; ethereum `0xc2ca69...7c5703`; ethereum `0xddd1ea...eb0334` | ⚠️ Unaudited |
| ProtocolConfig | governance | ethereum | [`0x4cd6bf...13351b`](./contracts/ethereum-1/0x4cd6bf1d183264c02be7748cb5cd3a47d013351b/) | ⚠️ Unaudited |
| PythOracle | operational_periphery | ethereum | 83 deployments: ethereum [`0x0081d8...873193`](./contracts/ethereum-1/0x0081d84174d84ee37973fc553b2a3a0101873193/); ethereum `0x1343a8...60f435`; ethereum `0x162306...9cd1a5`; ethereum `0x1800b0...3c6378`; ethereum `0x1f929d...df86cd`; ethereum `0x218f2c...d3ada1`; ethereum `0x26283c...2bea8c`; ethereum `0x2b4aeb...8089be`; ethereum `0x33243b...599956`; ethereum `0x33aaab...517785`; ethereum `0x350db1...fa8ce6`; ethereum `0x362320...f71286`; ethereum `0x36e2fa...b77aa9`; ethereum `0x37d7c0...2668ad`; ethereum `0x398d64...f20d5e`; ethereum `0x3a7671...4caf7d`; ethereum `0x478ed3...668197`; ethereum `0x499316...fb8f2d`; ethereum `0x4b6547...fbdd52`; ethereum `0x4e33d9...5bf676`; ethereum `0x51130a...af4118`; ethereum `0x5cc2e6...f06a94`; ethereum `0x5e40d3...db785c`; ethereum `0x5e9381...97bd34`; ethereum `0x630fab...675b90`; ethereum `0x658ba5...71d45a`; ethereum `0x65d798...e930a7`; ethereum `0x6647fb...88e17b`; ethereum `0x680922...3adf8a`; ethereum `0x6badd9...0c24bf`; ethereum `0x6d6a3c...6dde0e`; ethereum `0x6eedef...863ec5`; ethereum `0x6f79c2...61ee9d`; ethereum `0x705729...d96806`; ethereum `0x76cdd6...149731`; ethereum `0x76f623...286eec`; ethereum `0x7739a9...8c2c52`; ethereum `0x7ae18f...d41d31`; ethereum `0x7c89d0...2b3d4a`; ethereum `0x7fc56b...52325b`; ethereum `0x83c8e3...86f54b`; ethereum `0x873efb...7cb47a`; ethereum `0x8918d4...72cadb`; ethereum `0x8b55cd...3c3550`; ethereum `0x922d0c...228fe6`; ethereum `0x92b172...bc775e`; ethereum `0x990ec3...7132ef`; ethereum `0x999364...69f345`; ethereum `0xa03a5a...a91455`; ethereum `0xa11bcc...a14628`; ethereum `0xa1e0c3...950b25`; ethereum `0xa2869a...e61dde`; ethereum `0xab81e5...ce2c3f`; ethereum `0xb18f83...e34996`; ethereum `0xb74d67...f7226f`; ethereum `0xbf442e...b7434b`; ethereum `0xc03922...9a190b`; ethereum `0xc05055...b0d4e1`; ethereum `0xc642c4...debb74`; ethereum `0xc93382...badd1c`; ethereum `0xcb89a6...2e7cf9`; ethereum `0xce1b8f...9ee0dc`; ethereum `0xd1f0af...b5b92a`; ethereum `0xd27cac...a90506`; ethereum `0xd327b5...836d3f`; ethereum `0xd648bd...774a88`; ethereum `0xdb69d6...d7ff32`; ethereum `0xdcb7cf...0829e7`; ethereum `0xdcda67...dec3db`; ethereum `0xdf4513...28f680`; ethereum `0xe16e7d...0e3df7`; ethereum `0xe46a0c...5f4471`; ethereum `0xe6bbd4...5bb99a`; ethereum `0xe80918...4e4c08`; ethereum `0xea79ca...5e973f`; ethereum `0xeb059b...e91b88`; ethereum `0xf15936...6e7493`; ethereum `0xf21842...a4e93c`; ethereum `0xf6d8cc...65c987`; ethereum `0xfa6a85...17e2b4`; ethereum `0xfa908c...71873e`; ethereum `0xfa9880...19de65`; ethereum `0xfd2e26...980a47` | ⚠️ Unaudited |
| RateProviderOracle | operational_periphery | ethereum | 19 deployments: ethereum [`0x013f30...5451b5`](./contracts/ethereum-1/0x013f30a593718d962c0ceede0a66f5f9ef5451b5/); ethereum `0x196446...085c12`; ethereum `0x1bdddb...7eb695`; ethereum `0x286b8d...ce80e7`; ethereum `0x28b991...150a75`; ethereum `0x2e5c0b...734d6d`; ethereum `0x2fe6b2...fadfbc`; ethereum `0x517cb6...55a6c6`; ethereum `0x804c4f...48d875`; ethereum `0x80f9b6...dd8940`; ethereum `0x932fdc...bbf266`; ethereum `0x95545a...2f2045`; ethereum `0x99826e...16341e`; ethereum `0xab21f4...093029`; ethereum `0xba8e4e...8324e2`; ethereum `0xc09b45...8986b9`; ethereum `0xe6b889...881fd3`; ethereum `0xef1c2f...7e02d2`; ethereum `0xf3dff7...1e2629` | ⚠️ Unaudited |
| RedstoneCoreOracle | operational_periphery | ethereum | 127 deployments: ethereum [`0x03ed90...472dac`](./contracts/ethereum-1/0x03ed909ab6102c3f1bb9c665839ae580ac472dac/); ethereum `0x0831c0...24f546`; ethereum `0x0c8541...669974`; ethereum `0x0d99c6...ac4e4f`; ethereum `0x105c94...9b0127`; ethereum `0x11d5e4...397910`; ethereum `0x133605...14cb31`; ethereum `0x13e66c...2b7442`; ethereum `0x143063...56efb6`; ethereum `0x157e7e...36f496`; ethereum `0x16805c...454e82`; ethereum `0x19bfe3...199eed`; ethereum `0x1ced44...e26453`; ethereum `0x1e10d2...ffcfe5`; ethereum `0x222fc2...01931d`; ethereum `0x259bce...429085`; ethereum `0x25a766...1950e6`; ethereum `0x281b24...5f3466`; ethereum `0x2a95e7...ad64e5`; ethereum `0x2aa25a...98826e`; ethereum `0x2fa575...8a6cf5`; ethereum `0x31b9f8...f44533`; ethereum `0x31bd69...e43fac`; ethereum `0x32ffe7...38e86a`; ethereum `0x339cd0...ff6b21`; ethereum `0x371f23...5d7aa7`; ethereum `0x37f803...f0271a`; ethereum `0x393244...3bbbfe`; ethereum `0x3c2923...c77e1a`; ethereum `0x3ced8b...1bec1c`; ethereum `0x3d289e...350a80`; ethereum `0x3e520c...723540`; ethereum `0x3f3ba9...5728e8`; ethereum `0x42331b...41cff6`; ethereum `0x425fb2...46748c`; ethereum `0x45be10...41c054`; ethereum `0x4caa7f...812c8d`; ethereum `0x4d75af...81a49c`; ethereum `0x4fdd5f...ceec9d`; ethereum `0x54c679...81e035`; ethereum `0x59727d...b70623`; ethereum `0x5afea5...75bbc5`; ethereum `0x5b2075...d67cc6`; ethereum `0x5b447b...2dc090`; ethereum `0x62fdeb...b11f68`; ethereum `0x63e3cc...b2e0de`; ethereum `0x640434...99d277`; ethereum `0x664add...4e1f80`; ethereum `0x675f80...5bf539`; ethereum `0x691db6...dd8dfc`; ethereum `0x6c58af...da6aa8`; ethereum `0x6d4029...e56fac`; ethereum `0x6e2344...c65aec`; ethereum `0x741bec...3f3217`; ethereum `0x75c142...10af73`; ethereum `0x76f224...68ce8d`; ethereum `0x794395...391d1c`; ethereum `0x7a665a...281dd3`; ethereum `0x7b717b...df8d26`; ethereum `0x7d3eda...8fc88f`; ethereum `0x809e49...c2fa4f`; ethereum `0x80fc12...626d5e`; ethereum `0x81dc4e...61ece3`; ethereum `0x869ff5...d454ee`; ethereum `0x87a058...b54910`; ethereum `0x88143d...ec4fd3`; ethereum `0x8881d3...d00f57`; ethereum `0x8a5a1e...da567b`; ethereum `0x94f418...4cb4ff`; ethereum `0x94f68a...0a8498`; ethereum `0x96a678...24a653`; ethereum `0x9cc836...c2b53d`; ethereum `0x9f169a...f6dfac`; ethereum `0xa17130...e37e96`; ethereum `0xa19050...1a8b90`; ethereum `0xa22392...43158d`; ethereum `0xa5190b...dd2634`; ethereum `0xa60fac...9233d9`; ethereum `0xa664ed...3b1f20`; ethereum `0xa81ce0...715a72`; ethereum `0xabcc3f...2afcba`; ethereum `0xaef108...ff9ab5`; ethereum `0xb2ea64...bc5e76`; ethereum `0xb77d06...50b445`; ethereum `0xb82003...026a97`; ethereum `0xb8673a...ab69b4`; ethereum `0xbc2794...92a0cf`; ethereum `0xc01865...76afe8`; ethereum `0xc44f2f...1229c1`; ethereum `0xc65a85...05a38c`; ethereum `0xc87d51...e9e28e`; ethereum `0xc8b362...fbd7d9`; ethereum `0xc99d3a...f0e452`; ethereum `0xc9dc6c...0ab80f`; ethereum `0xcc6a08...33af67`; ethereum `0xcdf5e4...c7489e`; ethereum `0xce97f1...7b283b`; ethereum `0xcf1a68...7d6a86`; ethereum `0xcff632...248459`; ethereum `0xd06ac2...84d3d3`; ethereum `0xd1d7f9...08715b`; ethereum `0xd39450...63ce4a`; ethereum `0xd405dc...ea1054`; ethereum `0xd4090c...54cd32`; ethereum `0xd5950b...1919b8`; ethereum `0xd7f9c3...8c682f`; ethereum `0xd83b40...f5c462`; ethereum `0xdd14f5...4eb2e1`; ethereum `0xdfe70c...affcbf`; ethereum `0xe00cc9...817d6f`; ethereum `0xe3000f...692459`; ethereum `0xe5cbdd...e2ee2f`; ethereum `0xe60393...b36428`; ethereum `0xe81b50...e98e18`; ethereum `0xe87bab...be85fd`; ethereum `0xeb9ad7...6f9ccd`; ethereum `0xee3662...0d4e52`; ethereum `0xef1a15...ac538b`; ethereum `0xefb8f3...cf6765`; ethereum `0xf344cf...16a5d9`; ethereum `0xf3c1e4...6ef018`; ethereum `0xf4f395...3a1d87`; ethereum `0xf55a1b...54bbc6`; ethereum `0xf86a6f...797e04`; ethereum `0xf86e1e...9d10f1`; ethereum `0xfb9fd4...88826d`; ethereum `0xfde060...d20568` | ⚠️ Unaudited |
| Reverter | unknown | ethereum | 8 deployments: ethereum [`0x0a71c1...76a9e0`](./contracts/ethereum-1/0x0a71c167d6fbdb6721f37e1d543b4baccb76a9e0/); ethereum `0x13d739...7175f0`; ethereum `0x38c061...a2aa38`; ethereum `0x829414...c40b74`; ethereum `0x8de06b...812a3d`; ethereum `0x9102f2...e2dd1f`; ethereum `0xe3033e...f00450`; ethereum `0xf39d8b...028f1a` | ⚠️ Unaudited |
| Rewards | unknown | ethereum | 2 deployments: ethereum [`0x0ee5c5...e2fcec`](./contracts/ethereum-1/0x0ee5c537e91bb988fe615d0da78582ed21e2fcec/); ethereum `0xfde7a2...cb265b` | ⚠️ Unaudited |
| RewardsDistribution | unknown | ethereum | [`0xa9839d...610c43`](./contracts/ethereum-1/0xa9839d52e964d0ed0d6d546c27d2248fac610c43/) | ⚠️ Unaudited |
| RiskManager | governance | ethereum | 6 deployments: ethereum [`0x00d54f...0ca69d`](./contracts/ethereum-1/0x00d54f129293b1580c779c8f04b2d8ce370ca69d/); ethereum `0x3297c8...8931a6`; ethereum `0x402c85...2ca376`; ethereum `0x98d7a0...b92ce6`; ethereum `0xad8a5c...2dd652`; ethereum `0xb4d68b...afe2ad` | ⚠️ Unaudited |
| Safe | unknown | ethereum | 6 deployments: ethereum [`0x62962b...02b655`](./contracts/ethereum-1/0x62962b4d506b0065a133f37e19d163e5b002b655/); ethereum `0xb1345e...5fba27`; ethereum `0xb3b84e...b73c53`; ethereum `0xbdaa3f...6a976d`; ethereum `0xd5b7bc...cbd471`; ethereum `0xf8ef49...069b0f` | ⚠️ Unaudited |
| SequenceRegistry | registry | ethereum | [`0xeaddd2...106b54`](./contracts/ethereum-1/0xeaddd21618ad5deb412d3fd23580fd461c106b54/) | ⚠️ Unaudited |
| SnapshotRegistry | registry | ethereum | 10 deployments: ethereum [`0x0a6467...bf459c`](./contracts/ethereum-1/0x0a64670763777e59898ae28d6acb7f2062bf459c/); ethereum `0x40fc79...71445f`; ethereum `0x46157b...e61433`; ethereum `0x4a337c...a325dc`; ethereum `0x4e72f8...cfac97`; ethereum `0x546b74...47987c`; ethereum `0x7fa4d5...4521df`; ethereum `0xa084a7...7c5fe6`; ethereum `0xb3b30f...c219ac`; ethereum `0xb8b734...39c94a` | ⚠️ Unaudited |
| StakingRewards | unknown | ethereum | 3 deployments: ethereum [`0x229443...5bde9e`](./contracts/ethereum-1/0x229443bf7f1297192394b7127427db172a5bde9e/); ethereum `0x7882f9...90f860`; ethereum `0xe5afe8...74d570` | ⚠️ Unaudited |
| Strategy | core_logic | ethereum | 2 deployments: ethereum [`0x4fe5a6...6e6be8`](./contracts/ethereum-1/0x4fe5a6ee0be736cf7ec34c95a55b9d006e6e6be8/); ethereum `0xbd29b6...4e2fa3` | ⚠️ Unaudited |
| Swap | unknown | ethereum | 5 deployments: ethereum [`0x4440a1...1f37af`](./contracts/ethereum-1/0x4440a1de1fbd7f9ebead7c3dd42a44e0031f37af/); ethereum `0xa9b11f...a84c8e`; ethereum `0xe20582...c398f8`; ethereum `0xe96c97...1945dc`; ethereum `0xf40e83...00d8ca` | ⚠️ Unaudited |
| SwapHandler | unknown | ethereum | [`0xa24689...17afe3`](./contracts/ethereum-1/0xa24689b6ab48eccf7038c70ebc39f9ed4217afe3/) | ⚠️ Unaudited |
| SwapHandler1Inch | unknown | ethereum | [`0x32673d...343065`](./contracts/ethereum-1/0x32673daa164f4a290ae1f75ddc6aea5a2d343065/) | ⚠️ Unaudited |
| SwapHandlerUniAutoRouter | adapter | ethereum | [`0xd16790...f9d04e`](./contracts/ethereum-1/0xd1679029ae81da676d9b5850feb6c8ee68f9d04e/) | ⚠️ Unaudited |
| SwapHub | unknown | ethereum | [`0xc57d9e...b478c8`](./contracts/ethereum-1/0xc57d9e4a688551d99645b49126e93589d4b478c8/) | ⚠️ Unaudited |
| Swapper | adapter | ethereum | 5 deployments: ethereum [`0x2bba09...b728bf`](./contracts/ethereum-1/0x2bba09866b6f1025258542478c39720a09b728bf/); ethereum `0x719f8b...f9fb45`; ethereum `0x7813d9...515c9e`; ethereum `0x9b2583...df276c`; ethereum `0xbf893f...1d5204` | ⚠️ Unaudited |
| TermsOfUseSigner | unknown | ethereum | [`0x9ba11a...aadcba`](./contracts/ethereum-1/0x9ba11acd88b79b657bdbd00b6de759718aaadcba/) | ⚠️ Unaudited |
| TimelockController | governance | ethereum | 3 deployments: ethereum [`0x1b8c36...f74f5a`](./contracts/ethereum-1/0x1b8c367ae56656b1d0901b2add1ad3226ff74f5a/); ethereum `0xbfee2d...b97e59`; ethereum `0xfb034c...07a968` | ⚠️ Unaudited |
| Token | token | ethereum | [`0x8a58ae...94973c`](./contracts/ethereum-1/0x8a58aecbe677682d0f037c67f37f5a7a2e94973c/) | ⚠️ Unaudited |
| TrackingRewardStreams | unknown | ethereum | [`0x0d52d0...d7f8a3`](./contracts/ethereum-1/0x0d52d06ceb8dcdeeb40cfd9f17489b350dd7f8a3/) | ⚠️ Unaudited |
| UtilsLens | periphery | ethereum | 14 deployments: ethereum [`0x009bd9...16a0d8`](./contracts/ethereum-1/0x009bd94ad5fa60e676bfd3a45b5305463216a0d8/); ethereum `0x1ad6ed...6ee539`; ethereum `0x1b6e0b...af2d95`; ethereum `0x39cea1...3fe2f4`; ethereum `0x3ebfd2...27fb36`; ethereum `0x6104c0...dec34a`; ethereum `0x7b89cc...e6e0fc`; ethereum `0xb8cac3...5afcc1`; ethereum `0xbef9b6...fcc071`; ethereum `0xc56752...24a753`; ethereum `0xcf1801...488727`; ethereum `0xdf7ec7...e1938d`; ethereum `0xef3f5d...bbd3d1`; ethereum `0xf364ce...6118ea` | ⚠️ Unaudited |
| Vault | core_logic | ethereum | [`0xb4ad4d...7f0188`](./contracts/ethereum-1/0xb4ad4d9c02c01b01cf586c16f01c58c73c7f0188/) | ⚠️ Unaudited |
| VaultLens | core_logic | ethereum | 21 deployments: ethereum [`0x079fa5...c0e45e`](./contracts/ethereum-1/0x079fa5cde9c9647d26e79f3520fbdf9dbcc0e45e/); ethereum `0x0dd643...734fd8`; ethereum `0x352e64...3f2c3b`; ethereum `0x57904b...035c90`; ethereum `0x66529d...d98498`; ethereum `0x6f544e...77ae55`; ethereum `0x72bbdb...f51f15`; ethereum `0x7427e9...0f3177`; ethereum `0x75aaf5...90a29a`; ethereum `0x83801c...fc5b60`; ethereum `0x8489e3...c77f71`; ethereum `0x91f5a0...6209e8`; ethereum `0xa18d79...ea66ab`; ethereum `0xa8695d...da8914`; ethereum `0xb65c7a...bc59eb`; ethereum `0xc3c456...657403`; ethereum `0xcd28b1...1174a2`; ethereum `0xdb259a...7fc3e2`; ethereum `0xe240c5...55b539`; ethereum `0xe4044d...9ed29e`; ethereum `0xf7c8d2...a10ac6` | ⚠️ Unaudited |
| WBTCOracle | operational_periphery | ethereum | [`0xc87bfc...3e134e`](./contracts/ethereum-1/0xc87bfc9de10b45adb6d10945f612a3de5b3e134e/) | ⚠️ Unaudited |
| WithdrawalQueue | operational_periphery | ethereum | 2 deployments: ethereum [`0x8542f0...6e3177`](./contracts/ethereum-1/0x8542f0461e89bfa3324b0911c63f57b9de6e3177/); ethereum `0xff7a0b...f6be57` | ⚠️ Unaudited |
| WormholeTransceiver | unknown | ethereum | [`0x73cb24...0c00cd`](./contracts/ethereum-1/0x73cb24f20ef23fd24d52969398c62ed6030c00cd/) | ⚠️ Unaudited |
| WSTETHOracle | operational_periphery | ethereum | 2 deployments: ethereum [`0x4a9208...eebf5f`](./contracts/ethereum-1/0x4a9208bb40337ee983e2898ecb1009c763eebf5f/); ethereum `0x6061b6...54523e` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (26)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| Proxy (impl: 0x021f26e8fa57e7b88200da5c57f0c8af54f6557d) | proxy | ethereum | `0x7995dd...c9e866` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x00cecc...179b8c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x021f26...f6557d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x04d321...525332` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x0fac4d...75c084` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x101f9a...dca1ab` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x1e3249...d18e66` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x23731d...45d7c2` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x2d2f24...3de6f8` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x3d7d70...69f980` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x3de571...2f2c2d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x479c8f...34792c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x6487c4...eb5063` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x74a221...24180f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x85d88c...107504` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x950c6b...361b39` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x9d2b30...720ea4` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xa2c12a...8a690e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xa86cb9...e00265` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xb4876b...1441fe` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xbf0459...4fb66c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xcd04c0...20aeb4` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xe7c7b2...97db7d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xeb3332...c9c9a1` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xf2581c...fdd241` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x5304eb...ea0448` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [Pashov Audit Group EulerEarn (also discovered via alternate URL)](https://github.com/euler-xyz/euler-earn/blob/master/audits/Pashov%5FAudit%5FGroup%5Freport.pdf) | Pashov Audit Group | Audit | 2025-07 | fresh | Direct | contract_name | 6 | high |
| [Certora EulerEarn](https://github.com/euler-xyz/euler-earn/blob/master/audits/Certora%5FEulerEarn%5Freport.pdf) | Pashov Audit Group | Audit | 2025-07 | fresh | Direct | contract_name | 6 | high |
| [Sigma Prime EulerEarn](https://github.com/euler-xyz/euler-earn/blob/master/audits/Sigma%5FPrime%5FEulerEarn%5Freport.pdf) | Sigma Prime | Audit | 2025-07 | fresh | Direct | contract_name | 6 | high |
| [Rendered PDF capture](https://raw.githubusercontent.com/euler-xyz/euler-earn/b2fd6e699ee20bcfe7459f375b3cee5d2fa53345/audits/Certora_EulerEarn_report.pdf) | Spearbit | Audit | 2025-07 | fresh | Direct | contract_name | 6 | high |
| [Rendered PDF capture](https://raw.githubusercontent.com/euler-xyz/euler-earn/b2fd6e699ee20bcfe7459f375b3cee5d2fa53345/audits/Sigma_Prime_EulerEarn_report.pdf) | Spearbit | Audit | 2025-07 | fresh | Direct | contract_name | 6 | high |
| [Omniscia Euler Earn Report](https://omniscia.io/reports/euler-finance-earn-yield-aggregator-66faae519dcc3c0018b9097e) | Enigma Ventures | Audit | 2024-10 | aging | Direct | n/a | 0 | n/a |
| [Certora_EulerEarn_report.pdf](https://github.com/euler-xyz/euler-earn/blob/master/audits/Certora_EulerEarn_report.pdf) | Certora | Audit | 2025-07 | fresh | Direct | contract_name | 6 | high |
| [Sigma_Prime_EulerEarn_report.pdf](https://github.com/euler-xyz/euler-earn/blob/master/audits/Sigma_Prime_EulerEarn_report.pdf) | Sigma Prime | Audit | 2025-07 | fresh | Direct | contract_name | 6 | high |
| [Cyfrin EulerSwap](https://github.com/euler-xyz/euler-swap/blob/master/audits/2025-05-26-cyfrin-eulerswap-v2.0.pdf) | Cyfrin | Audit | 2025-05 | aging | Direct | contract_name | 12 | high |
| [Cantina Managed EulerSwap May 3](https://github.com/euler-xyz/euler-swap/blob/master/audits/report-cantinacode-uniswap-euler-0422.pdf) | Spearbit | Audit | 2025-05 | aging | Direct | contract_name | 12 | high |
| [ChainSecurity EulerSwap (also discovered via alternate URL)](https://github.com/euler-xyz/euler-swap/blob/master/audits/ChainSecurity%5FEulerSwap%5Faudit.pdf) | ChainSecurity | Audit | 2025-03 | aging | Direct | contract_name | 8 | high |
| [Cantina Managed EulerSwap Mar 29](https://github.com/euler-xyz/euler-swap/blob/master/audits/report-euler-swap-050325.pdf) | Spearbit | Audit | 2025-03 | aging | Direct | contract_name | 12 | high |
| [Fuzzland EulerSwap](https://github.com/euler-xyz/euler-swap/blob/master/audits/eulerswap-audit-report.pdf) | Spearbit | Audit | 2025-02 | aging | Direct | contract_name | 4 | high |
| [report-cantinacode-euler-0901.pdf](https://github.com/euler-xyz/euler-swap/blob/master/audits/report-cantinacode-euler-0901.pdf) | Spearbit | Audit | 2025-09 | fresh | Direct | contract_name | 5 | medium |
| [yAudit ERC4626 and Vault Securitize Report](https://github.com/euler-xyz/evk-periphery/blob/master/audits/yAudit%20ERC4626%20and%20Vault%20Securitize.pdf) | yAudit | Audit | 2025-11 | fresh | Direct | contract_name | 4 | high |
| [Pashov Group ERC4626 and Vault Securitize Report](https://github.com/euler-xyz/evk-periphery/blob/master/audits/Pashov%20Group%20ERC4626%20and%20Vault%20Securitize.pdf) | Pashov Audit Group | Audit | 2025-11 | fresh | Direct | contract_name | 4 | high |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | [`0x5241e3...4464a7`](./contracts/ethereum-1/0x5241e34a1ea2bf6f297baf158e668e23244464a7/) | RewardToken | token | $214,911.83 | Verified native implementation with $214,911.83 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xc697bb...716cd3`](./contracts/ethereum-1/0xc697bb6625d9f7adcf0fbf0cbd4dcf50d8716cd3/) | EulStakes | token | $144,057.79 | Verified native implementation with $144,057.79 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x334209...0c230f`](./contracts/ethereum-1/0x3342097299f57ec4773578a94f99d5d2ea0c230f/) | AccountLens | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xa252af...84fee5`](./contracts/ethereum-1/0xa252af9208e53c0ac6a79a5d0933a8d1f184fee5/) | BalanceForwarder | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x639156...605acf`](./contracts/ethereum-1/0x639156f8feb0cd88205e4861a0224ec169605acf/) | Borrowing | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x465528...4f8b8c`](./contracts/ethereum-1/0x465528b234fec209db52c9901dd959742a4f8b8c/) | CapRiskSteward | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x93c233...6f3208`](./contracts/ethereum-1/0x93c233008971e878d60a7737657869ab746f3208/) | CapRiskStewardFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x02dd5b...9528d7`](./contracts/ethereum-1/0x02dd5b7ab536629d2235276abcdf8eb3af9528d7/) | CrossAdapter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x03601e...6975d7`](./contracts/ethereum-1/0x03601edc8af4b0439d63eb3a45ed11b01c6975d7/) | DToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x66f616...09927a`](./contracts/ethereum-1/0x66f616de88eeca5e1e3b0b6e9914a60a5c09927a/) | EdgeFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x8c7543...d4d788`](./contracts/ethereum-1/0x8c7543f83d3d295f68447792581f73d7d5d4d788/) | EdgeFactoryPerspective | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x4e58bb...7fadde`](./contracts/ethereum-1/0x4e58bbea423c4b9a2fc7b8e58f5499f9927fadde/) | EscrowedCollateralPerspective | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x91f046...ead0c5`](./contracts/ethereum-1/0x91f046e629226b2c78b84fa1537603961aead0c5/) | EscrowPerspective | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0c9a3d...9ee383`](./contracts/ethereum-1/0x0c9a3dd6b8f28529d72d7f9ce918d493519ee383/) | EthereumVaultConnector | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x090c75...0d56cf`](./contracts/ethereum-1/0x090c752b7b26d3cc382bf532ec9c4403c80d56cf/) | EToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xd9fcd9...aae07b`](./contracts/ethereum-1/0xd9fcd98c322942075a5c3860693e9f4f03aae07b/) | Eul | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xd524e2...87a7e2`](./contracts/ethereum-1/0xd524e29e3baf5bb085403ca5665301e94387a7e2/) | EulDistributor | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x8e3204...c05b5d`](./contracts/ethereum-1/0x8e3204ae99605e6ffd2bc72d765f480bf0c05b5d/) | EulDistributorOwner | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x4df63d...318c39`](./contracts/ethereum-1/0x4df63d20cb2a5faa5b9cb978089bdfccfd318c39/) | EulerBasePerspective | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x4ddce4...865f84`](./contracts/ethereum-1/0x4ddce44ab524f49b4050d9d59d7cf61cda865f84/) | EulerClaims | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xa45895...a1667e`](./contracts/ethereum-1/0xa45895144f2b6e7e6d2fcaffe6ea19e86aa1667e/) | EulerEarnFactoryPerspective | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x02122a...2dbd05`](./contracts/ethereum-1/0x02122afd2687ddb1dd3b9f2f2d7cc6fd422dbd05/) | EulerEarnVault | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x07d6b3...635091`](./contracts/ethereum-1/0x07d6b3981cbc1dc34102735b987b175116635091/) | EulerEarnVaultLens | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x866708...d4a74f`](./contracts/ethereum-1/0x8667082f128fa13139b859c1b40b4c8014d4a74f/) | EulerFactoryPerspective | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xa8f8e8...3ac8d0`](./contracts/ethereum-1/0xa8f8e82c9da15a991d7bf2486ae26e22743ac8d0/) | EulerFixedCyclicalBinaryIRMFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xacc25c...e68e42`](./contracts/ethereum-1/0xacc25c4d40651676feed43a3467f3169e3e68e42/) | EulerGeneralView | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xa065ca...a6f5fd`](./contracts/ethereum-1/0xa065ca5c2f250171ff8a8f93edf62c15e5a6f5fd/) | EulerKinkIRMFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x010102...9fc102`](./contracts/ethereum-1/0x010102daab6133d4f8ceb4c8842a70b9899fc102/) | EulerKinkyIRMFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x70b3f6...72326a`](./contracts/ethereum-1/0x70b3f6f61b7bf237df04589ddaa842121072326a/) | EulerRouterFactory | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xc2d41d...20b38e`](./contracts/ethereum-1/0xc2d41d42939109cdcfa26c6965269d9c0220b38e/) | EulerSimpleLens | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xa6c1dd...5ef86a`](./contracts/ethereum-1/0xa6c1ddc10fb13fdd998a4940a883aa952f5ef86a/) | EulerSwapManagement | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x5171ae...f53b63`](./contracts/ethereum-1/0x5171aed04fa9551db484f07c853f252bc6f53b63/) | EulerSwapProtocolFeeConfig | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x000d8a...b05875`](./contracts/ethereum-1/0x000d8aa9e414b9e7e7591a456ca910fb3bb05875/) | EulerUngovernedPerspective | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xb30f23...82e182`](./contracts/ethereum-1/0xb30f23bc5f93f097b3a699f71b0b1718fc82e182/) | EVKFactoryPerspective | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0bf049...3bb44d`](./contracts/ethereum-1/0x0bf04952a5b3ef6bad343c2218f584a7413bb44d/) | Exec | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x05df5b...973377`](./contracts/ethereum-1/0x05df5bb999bac668713122b83fb5de75b6973377/) | Extractor | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x2f1325...dc1f3d`](./contracts/ethereum-1/0x2f13256e04022d6356d8ce8c53c7364e13dc1f3d/) | FactoryGovernor | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0009a4...46a0c9`](./contracts/ethereum-1/0x0009a4657c52ea648490aa06138b88ce0f46a0c9/) | Fee | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xfcd3db...0d1e32`](./contracts/ethereum-1/0xfcd3db06ea814eb21c84304fc7f90798c00d1e32/) | FeeFlowController | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x653ed9...dd36df`](./contracts/ethereum-1/0x653ed9b915c7e7c413e7b2a2b6d83dfe02dd36df/) | FeeFlowControllerUtil | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x14c855...759a05`](./contracts/ethereum-1/0x14c855046e91e91033aaff3191ea6717fb759a05/) | FixedRateOracle | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x07df2a...8259b3`](./contracts/ethereum-1/0x07df2ad9878f8797b4055230bbae5c808b8259b3/) | FlashLoan | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x232f49...eb9399`](./contracts/ethereum-1/0x232f49b73b3e1c65bccb1ff4874cadcd16eb9399/) | GovernableWhitelistPerspective | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x04cb46...5adfde`](./contracts/ethereum-1/0x04cb462a121e1799722fe84c60e790b64d5adfde/) | Governance | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x492e9f...c74d44`](./contracts/ethereum-1/0x492e9fe1289d43f8bb6275237bf16c9248c74d44/) | GovernedPerspective | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x088756...a63153`](./contracts/ethereum-1/0x088756eb730a08cbeb98dfe67ca74697a8a63153/) | GovernorAccessControlEmergency | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x025c88...120faf`](./contracts/ethereum-1/0x025c8831c6e45420df8e71f7b6b99f733d120faf/) | GovernorAccessControlEmergencyFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x32737a...978ba3`](./contracts/ethereum-1/0x32737a15c40d7d42e6c9013138d3b2a775978ba3/) | Hooks | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x6f5dad...1cad6a`](./contracts/ethereum-1/0x6f5dad1fce5944c241dfb586293d81fc791cad6a/) | HookTarget | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x6a7ced...a83d0a`](./contracts/ethereum-1/0x6a7ced396c7317f9465640a583b7f2564ca83d0a/) | HookTargetAccessControlKeyring | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x7dd834...e84f3c`](./contracts/ethereum-1/0x7dd834c7844710435bd471b7499b16421ee84f3c/) | Initialize | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xec29b4...7edab5`](./contracts/ethereum-1/0xec29b4c2cacae5df1a491f084e5ec7c62a7edab5/) | Installer | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xd75870...38572b`](./contracts/ethereum-1/0xd75870dcbd1521e6cad7566fbca35d72e238572b/) | IRMClassMajor | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x894c74...08de2d`](./contracts/ethereum-1/0x894c7499f240c0e0205c56d26a5d609c8408de2d/) | IRMClassMega | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xf058fe...107318`](./contracts/ethereum-1/0xf058fe816b01265d1ba0a3bd226049676b107318/) | IRMClassMidCap | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x89e8f6...959bef`](./contracts/ethereum-1/0x89e8f69c302d352d37de10019a69df4f7f959bef/) | IRMClassOHM | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x42ec0e...e9ee89`](./contracts/ethereum-1/0x42ec0eb1d2746a9f2739d7501c5d5608bde9ee89/) | IRMClassStable | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xfd310b...0cf8ea`](./contracts/ethereum-1/0xfd310b00523707e6b3a9ba83c3d6eac3350cf8ea/) | IRMClassUSDT | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x680049...dd38f7`](./contracts/ethereum-1/0x68004911694ec42f0c56b7144a6a5281ffdd38f7/) | IRMDefault | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x061b6b...0f807a`](./contracts/ethereum-1/0x061b6b0ba1b552006556c278fc8798d1e20f807a/) | IRMLens | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x16fa62...2ad23c`](./contracts/ethereum-1/0x16fa62d8c322a6156fb5ef267342a3c7952ad23c/) | Liquidation | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x12401f...b41477`](./contracts/ethereum-1/0x12401f97e2264adbf8ff98da72e3465d97b41477/) | Markets | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x02bd64...ec2d83`](./contracts/ethereum-1/0x02bd64ce7fbdbe7eb84d1f9b08e0cc2a7fec2d83/) | OracleLens | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x4cd6bf...13351b`](./contracts/ethereum-1/0x4cd6bf1d183264c02be7748cb5cd3a47d013351b/) | ProtocolConfig | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x013f30...5451b5`](./contracts/ethereum-1/0x013f30a593718d962c0ceede0a66f5f9ef5451b5/) | RateProviderOracle | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0a71c1...76a9e0`](./contracts/ethereum-1/0x0a71c167d6fbdb6721f37e1d543b4baccb76a9e0/) | Reverter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0ee5c5...e2fcec`](./contracts/ethereum-1/0x0ee5c537e91bb988fe615d0da78582ed21e2fcec/) | Rewards | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xa9839d...610c43`](./contracts/ethereum-1/0xa9839d52e964d0ed0d6d546c27d2248fac610c43/) | RewardsDistribution | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x00d54f...0ca69d`](./contracts/ethereum-1/0x00d54f129293b1580c779c8f04b2d8ce370ca69d/) | RiskManager | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xeaddd2...106b54`](./contracts/ethereum-1/0xeaddd21618ad5deb412d3fd23580fd461c106b54/) | SequenceRegistry | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0a6467...bf459c`](./contracts/ethereum-1/0x0a64670763777e59898ae28d6acb7f2062bf459c/) | SnapshotRegistry | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x229443...5bde9e`](./contracts/ethereum-1/0x229443bf7f1297192394b7127427db172a5bde9e/) | StakingRewards | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x4fe5a6...6e6be8`](./contracts/ethereum-1/0x4fe5a6ee0be736cf7ec34c95a55b9d006e6e6be8/) | Strategy | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x4440a1...1f37af`](./contracts/ethereum-1/0x4440a1de1fbd7f9ebead7c3dd42a44e0031f37af/) | Swap | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xa24689...17afe3`](./contracts/ethereum-1/0xa24689b6ab48eccf7038c70ebc39f9ed4217afe3/) | SwapHandler | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xc57d9e...b478c8`](./contracts/ethereum-1/0xc57d9e4a688551d99645b49126e93589d4b478c8/) | SwapHub | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x2bba09...b728bf`](./contracts/ethereum-1/0x2bba09866b6f1025258542478c39720a09b728bf/) | Swapper | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x9ba11a...aadcba`](./contracts/ethereum-1/0x9ba11acd88b79b657bdbd00b6de759718aaadcba/) | TermsOfUseSigner | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x8a58ae...94973c`](./contracts/ethereum-1/0x8a58aecbe677682d0f037c67f37f5a7a2e94973c/) | Token | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0d52d0...d7f8a3`](./contracts/ethereum-1/0x0d52d06ceb8dcdeeb40cfd9f17489b350dd7f8a3/) | TrackingRewardStreams | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x009bd9...16a0d8`](./contracts/ethereum-1/0x009bd94ad5fa60e676bfd3a45b5305463216a0d8/) | UtilsLens | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xb4ad4d...7f0188`](./contracts/ethereum-1/0xb4ad4d9c02c01b01cf586c16f01c58c73c7f0188/) | Vault | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x079fa5...c0e45e`](./contracts/ethereum-1/0x079fa5cde9c9647d26e79f3520fbdf9dbcc0e45e/) | VaultLens | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xc87bfc...3e134e`](./contracts/ethereum-1/0xc87bfc9de10b45adb6d10945f612a3de5b3e134e/) | WBTCOracle | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x8542f0...6e3177`](./contracts/ethereum-1/0x8542f0461e89bfa3324b0911c63f57b9de6e3177/) | WithdrawalQueue | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x4a9208...eebf5f`](./contracts/ethereum-1/0x4a9208bb40337ee983e2898ecb1009c763eebf5f/) | WSTETHOracle | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 99 |
| upstream | 6 |
| standard_library | 8 |
| needs_review | 22 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=14, medium=1
- Match method counts: extraction_exact=123

Zero-match audit list:

- [2121] Omniscia Euler Earn Report

Fork inheritance lineage and inherited audits are included when available.
