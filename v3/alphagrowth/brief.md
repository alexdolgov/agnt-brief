# Agentic Audit Brief: alphagrowth

## Project Overview

- Project: alphagrowth (`alphagrowth`)
- Website: [https://app.euler.finance/governor/alphagrowth?network=unichain](https://app.euler.finance/governor/alphagrowth?network=unichain)
- Lifecycle: active (Tier 0, 25.2% below peak)
- Generated: 2026-07-04T11:05:39.369Z
- Pipeline run: v2-pipeline-2026-07-01-2b719a-f2f0
- Chains: base, ethereum, linea, unichain
- Contract surface: 111 unique implementations (318 raw deployments)
- DeFi Llama TVL: $7,315,785.21
- On-chain TVL (included contracts): $5,936,051.72
- TVL by chain: Unichain $2,988,703.54 | Base $1,740,580.58 | Ethereum $1,095,577.81 | Linea $111,189.80

## Project Description

Risk Curators. Structurally: 175 project-authored contract(s) across 4 chain(s); 6 ERC4626 vaults, 10 ERC20 tokens, 2 Chainlink feeds; role-gated via AccessControl; upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 8 functional families. Its contracts share 63 common project-authored base contract(s) (feemodule, shared, evcutil). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 744; live-surface contracts included: 318 (273 live, 45 unknown).
- Excluded by liveness: 426 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 4/67 (6.0%)
- Deployed-live implementations: 67 of 111 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 4/67
- Verified + Unaudited implementations: 63
- Verified by bytecode match: 0
- Unverified implementations: 44
- Unique implementations: 111
- Raw deployments: 318
- Audits discovered: 16 (16 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 7
- ASD (verified + unaudited TVL): $5,936,051.72
- Latest audit: 2025-11 (fresh)
- Audit staleness (calendar age): 3 fresh, 13 aging, 0 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 4 match-unverified
- Tier 1 coverage: 4.5% (ChainSecurity, Cyfrin, Spearbit)

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| Spearbit | Tier 1 | 3 | 4.5% | 2025-09 |
| Cyfrin | Tier 1 | 2 | 3.0% | 2025-05 |
| ChainSecurity | Tier 1 | 1 | 1.5% | 2025-03 |
| Pashov Audit Group | Tier 2 | 1 | 1.5% | 2025-11 |
| yAudit | Tier 2 | 1 | 1.5% | 2025-11 |

## Contract Surface

### ✅ Verified + Audited (4)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| ERC4626EVCCollateralSecuritizeFactory | registry | ethereum | n/a | [`0x5f51d9...f76cbb`](./contracts/ethereum-1/0x5f51d980f15fe6075ae30394dc35de57a4f76cbb/) | ✅ Audited |
| EulerSwapFactory | unknown | ethereum | n/a | 4 deployments: ethereum [`0x806af3...4b1211`](./contracts/ethereum-1/0x806af31a325be46812fc8e8391333c4fa74b1211/); ethereum `0xb013be...2cf228`; ethereum `0xd05213...04df5f`; ethereum `0xfb9fe6...10cad4` | ✅ Audited |
| EulerSwapPeriphery | adapter | ethereum | n/a | 2 deployments: ethereum [`0x208ff5...d16b06`](./contracts/ethereum-1/0x208ff5eb543814789321daa1b5eb551881d16b06/); ethereum `0xd3a349...fd513e` | ✅ Audited |
| EulerSwapRegistry | registry | ethereum | n/a | [`0x5fccb8...32814a`](./contracts/ethereum-1/0x5fccb84363f020c0cade052c9c654aabf932814a/) | ✅ Audited |

### ⚠️ Verified + Unaudited (63)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| EVault | core_logic | unichain | n/a | 7 deployments: unichain [`0x1f3134...0e1ffc`](./contracts/unichain-130/0x1f3134c3f3f8add904b9635acbefc0ea0d0e1ffc/); unichain `0x54ff50...02d06a`; unichain `0x5d2511...796485`; unichain `0x6eae95...a682ba`; unichain `0x7650d7...24086f`; unichain `0xd49181...64ead3`; unichain `0xe36da4...729f86` | ⚠️ Unaudited |
| EVault | core_logic | base | n/a | 12 deployments: base [`0x085178...9a7ee7`](./contracts/base-8453/0x085178078796da17b191f9081b5e2fccc79a7ee7/); base `0x0a1a3b...80ee16`; base `0x358f25...b9ea49`; base `0x3f0d3f...638a7a`; base `0x5fe2de...74ac25`; base `0x7b181d...572609`; base `0x859160...a4b410`; base `0x882018...5d7f8b`; base `0x990d61...df7cf2`; base `0xd4a805...130d14`; base `0xe72ea9...aec7e4`; base `0xfab9af...05ccd3` | ⚠️ Unaudited |
| EVault | core_logic | ethereum | n/a | 17 deployments: ethereum [`0x29a56a...45cc8e`](./contracts/ethereum-1/0x29a56a1b8214d9cf7c5561811750d5cbdb45cc8e/); ethereum `0x2a3564...8246ad`; ethereum `0x2f849b...ec8a6b`; ethereum `0x2ff5f1...19443b`; ethereum `0x3573a8...dd81c6`; ethereum `0x35d4f8...8e88e3`; ethereum `0x412d0e...640229`; ethereum `0x49d9fd...614eb8`; ethereum `0x69a2fa...217705`; ethereum `0x6fe7fa...da0fbc`; ethereum `0x97c726...7ecc21`; ethereum `0xa7a064...ef7ec3`; ethereum `0xbd858d...0246cd`; ethereum `0xbfdc48...7198e9`; ethereum `0xc11d6b...1b0aef`; ethereum `0xf75d18...90b262`; ethereum `0xfbcc21...59512d` | ⚠️ Unaudited |
| EVault | core_logic | linea | n/a | 4 deployments: linea [`0x359e36...21aa18`](./contracts/linea-59144/0x359e363c11fc619be76eec8baaa01e61d521aa18/); linea `0x8955d7...b217b4`; linea `0xa8a02e...854968`; linea `0xf4712f...327086` | ⚠️ Unaudited |
| AccountLens | periphery | ethereum | n/a | [`0xa60c42...e34bc7`](./contracts/ethereum-1/0xa60c4257c809353039a71527dfe701b577e34bc7/) | ⚠️ Unaudited |
| BalanceForwarder | unknown | ethereum | n/a | [`0xa252af...84fee5`](./contracts/ethereum-1/0xa252af9208e53c0ac6a79a5d0933a8d1f184fee5/) | ⚠️ Unaudited |
| BeaconProxy | registry | ethereum | n/a | 2 deployments: ethereum [`0x55f9ba...21a3d3`](./contracts/ethereum-1/0x55f9bace2c864ac0d3392ea9fa654b605f21a3d3/); ethereum `0xb7522c...821795` | ⚠️ Unaudited |
| Borrowing | unknown | ethereum | n/a | [`0x639156...605acf`](./contracts/ethereum-1/0x639156f8feb0cd88205e4861a0224ec169605acf/) | ⚠️ Unaudited |
| CapRiskSteward | unknown | ethereum | n/a | 2 deployments: ethereum [`0x465528...4f8b8c`](./contracts/ethereum-1/0x465528b234fec209db52c9901dd959742a4f8b8c/); ethereum `0xfe56ca...e89b95` | ⚠️ Unaudited |
| CapRiskStewardFactory | unknown | ethereum | n/a | 3 deployments: ethereum [`0x93c233...6f3208`](./contracts/ethereum-1/0x93c233008971e878d60a7737657869ab746f3208/); ethereum `0xa446a5...3a448b`; ethereum `0xff00fa...cffb84` | ⚠️ Unaudited |
| ChronicleOracle | operational_periphery | ethereum | n/a | [`0x28e36e...583b85`](./contracts/ethereum-1/0x28e36ea7481934a651da81483358c67a51583b85/) | ⚠️ Unaudited |
| CrossAdapter | adapter | ethereum | n/a | 27 deployments: ethereum [`0x130eab...0ffaed`](./contracts/ethereum-1/0x130eabada6f4c663095c8e9e276ab5da670ffaed/); ethereum `0x15226e...aac6bb`; ethereum `0x336d82...fba6e8`; ethereum `0x3fc222...1b4f12`; ethereum `0x4a35fe...b205af`; ethereum `0x55757d...58dcc1`; ethereum `0x562929...ec1832`; ethereum `0x566c24...eef5dd`; ethereum `0x5ae8c1...78c275`; ethereum `0x5b12ce...f6b066`; ethereum `0x5bc6c0...3a554c`; ethereum `0x62b1de...b25f61`; ethereum `0x6a569e...a84dc7`; ethereum `0x8424db...77ed0c`; ethereum `0xa52631...7b6cff`; ethereum `0xa625cb...62c564`; ethereum `0xadccfc...09c988`; ethereum `0xb0baa4...3254f0`; ethereum `0xca5b70...56b85f`; ethereum `0xcf8f3a...972785`; ethereum `0xd201e8...e98f36`; ethereum `0xd6b5eb...1179c5`; ethereum `0xd7440b...40cd22`; ethereum `0xd7ad78...f21895`; ethereum `0xf61517...5e6683`; ethereum `0xf9de42...156ce6`; ethereum `0xffe3b0...fab24e` | ⚠️ Unaudited |
| DToken | unknown | ethereum | n/a | 6 deployments: ethereum [`0x03601e...6975d7`](./contracts/ethereum-1/0x03601edc8af4b0439d63eb3a45ed11b01c6975d7/); ethereum `0x169fcd...99be8c`; ethereum `0x29dadd...bbff79`; ethereum `0x6e0f1a...153b2c`; ethereum `0xc293f2...64a4c6`; ethereum `0xe374b7...2924e5` | ⚠️ Unaudited |
| EdgeFactory | unknown | ethereum | n/a | 2 deployments: ethereum [`0x66f616...09927a`](./contracts/ethereum-1/0x66f616de88eeca5e1e3b0b6e9914a60a5c09927a/); ethereum `0xa969b8...1659bd` | ⚠️ Unaudited |
| EdgeFactoryPerspective | unknown | ethereum | n/a | 2 deployments: ethereum [`0x8c7543...d4d788`](./contracts/ethereum-1/0x8c7543f83d3d295f68447792581f73d7d5d4d788/); ethereum `0xf9ffeb...a66309` | ⚠️ Unaudited |
| EscrowedCollateralPerspective | operational_periphery | ethereum | n/a | 2 deployments: ethereum [`0x4e58bb...7fadde`](./contracts/ethereum-1/0x4e58bbea423c4b9a2fc7b8e58f5499f9927fadde/); ethereum `0xc68cb3...cd5828` | ⚠️ Unaudited |
| EscrowPerspective | unknown | ethereum | n/a | 2 deployments: ethereum [`0x91f046...ead0c5`](./contracts/ethereum-1/0x91f046e629226b2c78b84fa1537603961aead0c5/); ethereum `0xf0e1db...74dded` | ⚠️ Unaudited |
| EthereumVaultConnector | core_logic | ethereum | n/a | [`0x0c9a3d...9ee383`](./contracts/ethereum-1/0x0c9a3dd6b8f28529d72d7f9ce918d493519ee383/) | ⚠️ Unaudited |
| EToken | unknown | ethereum | n/a | 7 deployments: ethereum [`0x090c75...0d56cf`](./contracts/ethereum-1/0x090c752b7b26d3cc382bf532ec9c4403c80d56cf/); ethereum `0x1245f0...eafbdb`; ethereum `0x196fdd...d33cb8`; ethereum `0x75e82d...ddc1e0`; ethereum `0xbb0d4b...1f4c0a`; ethereum `0xee385a...33abab`; ethereum `0xf376cf...42bcfc` | ⚠️ Unaudited |
| EulerBasePerspective | unknown | ethereum | n/a | [`0x4df63d...318c39`](./contracts/ethereum-1/0x4df63d20cb2a5faa5b9cb978089bdfccfd318c39/) | ⚠️ Unaudited |
| EulerEarn | unknown | ethereum | n/a | 2 deployments: ethereum [`0x253453...a4daab`](./contracts/ethereum-1/0x253453bc43f0b961528c9cbc18a3ae3de0a4daab/); ethereum `0xba4214...043da9` | ⚠️ Unaudited |
| EulerEarnFactory | unknown | ethereum | n/a | 3 deployments: ethereum [`0x59709b...308af4`](./contracts/ethereum-1/0x59709b029b140c853fe28d277f83c3a65e308af4/); ethereum `0x9a20d3...1e3427`; ethereum `0xa36d0b...07ff2d` | ⚠️ Unaudited |
| EulerEarnFactoryPerspective | unknown | ethereum | n/a | 2 deployments: ethereum [`0xa45895...a1667e`](./contracts/ethereum-1/0xa45895144f2b6e7e6d2fcaffe6ea19e86aa1667e/); ethereum `0xc09be1...098b52` | ⚠️ Unaudited |
| EulerEarnVault | unknown | ethereum | n/a | 3 deployments: ethereum [`0x02122a...2dbd05`](./contracts/ethereum-1/0x02122afd2687ddb1dd3b9f2f2d7cc6fd422dbd05/); ethereum `0x264bad...44e27c`; ethereum `0xfd78c8...56cded` | ⚠️ Unaudited |
| EulerEarnVaultLens | unknown | ethereum | n/a | 9 deployments: ethereum [`0x07d6b3...635091`](./contracts/ethereum-1/0x07d6b3981cbc1dc34102735b987b175116635091/); ethereum `0x189841...a2458e`; ethereum `0x20954c...5013d9`; ethereum `0xa09144...41a8be`; ethereum `0xadd180...502fdd`; ethereum `0xafad3c...f6285f`; ethereum `0xcfe86b...fa4f9a`; ethereum `0xf8be6d...6a05ef`; ethereum `0xf99770...64084a` | ⚠️ Unaudited |
| EulerFactoryPerspective | unknown | ethereum | n/a | 2 deployments: ethereum [`0x866708...d4a74f`](./contracts/ethereum-1/0x8667082f128fa13139b859c1b40b4c8014d4a74f/); ethereum `0xe6beaa...e17f54` | ⚠️ Unaudited |
| EulerGeneralView | unknown | ethereum | n/a | [`0xacc25c...e68e42`](./contracts/ethereum-1/0xacc25c4d40651676feed43a3467f3169e3e68e42/) | ⚠️ Unaudited |
| EulerSimpleLens | unknown | ethereum | n/a | [`0xc2d41d...20b38e`](./contracts/ethereum-1/0xc2d41d42939109cdcfa26c6965269d9c0220b38e/) | ⚠️ Unaudited |
| EulerSwap | unknown | ethereum | n/a | 4 deployments: ethereum [`0x05d6c4...ea92ee`](./contracts/ethereum-1/0x05d6c4d46a794468f282469c0e9346f121ea92ee/); ethereum `0x8b0e04...74dc97`; ethereum `0xc35a0f...d6b117`; ethereum `0xf5d355...ce33d1` | ⚠️ Unaudited |
| EulerSwapManagement | unknown | ethereum | n/a | [`0xa6c1dd...5ef86a`](./contracts/ethereum-1/0xa6c1ddc10fb13fdd998a4940a883aa952f5ef86a/) | ⚠️ Unaudited |
| EulerSwapProtocolFeeConfig | governance | ethereum | n/a | [`0x5171ae...f53b63`](./contracts/ethereum-1/0x5171aed04fa9551db484f07c853f252bc6f53b63/) | ⚠️ Unaudited |
| EulerUngovernedPerspective | unknown | ethereum | n/a | 10 deployments: ethereum [`0x000d8a...b05875`](./contracts/ethereum-1/0x000d8aa9e414b9e7e7591a456ca910fb3bb05875/); ethereum `0x2206c3...f0710b`; ethereum `0x534556...cd60bd`; ethereum `0x600bbe...21b507`; ethereum `0x60fcc0...7955ee`; ethereum `0x6a123b...3d6215`; ethereum `0x7160cb...307bc6`; ethereum `0x7695a3...17351c`; ethereum `0xb50a07...5e7fbf`; ethereum `0xd9dec3...f52646` | ⚠️ Unaudited |
| EVKFactoryPerspective | unknown | ethereum | n/a | [`0xb30f23...82e182`](./contracts/ethereum-1/0xb30f23bc5f93f097b3a699f71b0b1718fc82e182/) | ⚠️ Unaudited |
| Exec | unknown | ethereum | n/a | 3 deployments: ethereum [`0x0bf049...3bb44d`](./contracts/ethereum-1/0x0bf04952a5b3ef6bad343c2218f584a7413bb44d/); ethereum `0x14cbac...8436d2`; ethereum `0x155020...cac8c1` | ⚠️ Unaudited |
| FactoryGovernor | registry | ethereum | n/a | 2 deployments: ethereum [`0x2f1325...dc1f3d`](./contracts/ethereum-1/0x2f13256e04022d6356d8ce8c53c7364e13dc1f3d/); ethereum `0x799e9b...42a224` | ⚠️ Unaudited |
| Fee | unknown | ethereum | n/a | 2 deployments: ethereum [`0x0009a4...46a0c9`](./contracts/ethereum-1/0x0009a4657c52ea648490aa06138b88ce0f46a0c9/); ethereum `0x42aeb7...ffbe13` | ⚠️ Unaudited |
| FixedRateOracle | operational_periphery | ethereum | n/a | 6 deployments: ethereum [`0x4cfa6e...c3b7c1`](./contracts/ethereum-1/0x4cfa6e2783c02ce427d720e22e574c8c89c3b7c1/); ethereum `0x86cb59...be3f56`; ethereum `0x95df7a...9b8439`; ethereum `0xb5004f...31ffb4`; ethereum `0xbd3365...2121dc`; ethereum `0xf58f4d...bdd9f0` | ⚠️ Unaudited |
| FlashLoan | unknown | ethereum | n/a | [`0x07df2a...8259b3`](./contracts/ethereum-1/0x07df2ad9878f8797b4055230bbae5c808b8259b3/) | ⚠️ Unaudited |
| GnosisSafe | governance | ethereum | n/a | [`0xcad001...fb1dce`](./contracts/ethereum-1/0xcad001c30e96765ac90307669d578219d4fb1dce/) | ⚠️ Unaudited |
| GovernableWhitelistPerspective | unknown | ethereum | n/a | 2 deployments: ethereum [`0x232f49...eb9399`](./contracts/ethereum-1/0x232f49b73b3e1c65bccb1ff4874cadcd16eb9399/); ethereum `0x3f323e...77f418` | ⚠️ Unaudited |
| Governance | unknown | ethereum | n/a | 3 deployments: ethereum [`0x04cb46...5adfde`](./contracts/ethereum-1/0x04cb462a121e1799722fe84c60e790b64d5adfde/); ethereum `0x554ee3...812f73`; ethereum `0xe83b69...91a1cf` | ⚠️ Unaudited |
| Governance | unknown | ethereum | n/a | 2 deployments: ethereum [`0x8ff1c8...29dd7d`](./contracts/ethereum-1/0x8ff1c814719096b61abf00bb46ead0c9a529dd7d/); ethereum `0xa61f50...5f0b67` | ⚠️ Unaudited |
| GovernedPerspective | unknown | ethereum | n/a | 4 deployments: ethereum [`0x492e9f...c74d44`](./contracts/ethereum-1/0x492e9fe1289d43f8bb6275237bf16c9248c74d44/); ethereum `0x747a72...05165e`; ethereum `0xc01218...6e6eb2`; ethereum `0xd39452...29ce96` | ⚠️ Unaudited |
| GovernorAccessControlEmergency | unknown | ethereum | n/a | 2 deployments: ethereum [`0x088756...a63153`](./contracts/ethereum-1/0x088756eb730a08cbeb98dfe67ca74697a8a63153/); ethereum `0x354008...e30a1b` | ⚠️ Unaudited |
| GovernorAccessControlEmergencyFactory | unknown | ethereum | n/a | [`0x025c88...120faf`](./contracts/ethereum-1/0x025c8831c6e45420df8e71f7b6b99f733d120faf/) | ⚠️ Unaudited |
| Hooks | unknown | ethereum | n/a | 2 deployments: ethereum [`0x32737a...978ba3`](./contracts/ethereum-1/0x32737a15c40d7d42e6c9013138d3b2a775978ba3/); ethereum `0xd62665...571d82` | ⚠️ Unaudited |
| HookTarget | unknown | ethereum | n/a | [`0x6f5dad...1cad6a`](./contracts/ethereum-1/0x6f5dad1fce5944c241dfb586293d81fc791cad6a/) | ⚠️ Unaudited |
| HookTargetAccessControlKeyring | unknown | ethereum | n/a | [`0x6a7ced...a83d0a`](./contracts/ethereum-1/0x6a7ced396c7317f9465640a583b7f2564ca83d0a/) | ⚠️ Unaudited |
| Initialize | unknown | ethereum | n/a | [`0x7dd834...e84f3c`](./contracts/ethereum-1/0x7dd834c7844710435bd471b7499b16421ee84f3c/) | ⚠️ Unaudited |
| IRMLens | periphery | ethereum | n/a | 8 deployments: ethereum [`0x061b6b...0f807a`](./contracts/ethereum-1/0x061b6b0ba1b552006556c278fc8798d1e20f807a/); ethereum `0x0a6bf6...8e7743`; ethereum `0x35b2fa...bfeac2`; ethereum `0x57b1bb...6c52c1`; ethereum `0x5c5302...7e460b`; ethereum `0x97fcaa...c3f4c8`; ethereum `0xbbc1ca...2109cf`; ethereum `0xc6e506...843626` | ⚠️ Unaudited |
| Liquidation | unknown | ethereum | n/a | 4 deployments: ethereum [`0x16fa62...2ad23c`](./contracts/ethereum-1/0x16fa62d8c322a6156fb5ef267342a3c7952ad23c/); ethereum `0x9ea85b...9f156c`; ethereum `0xaed37a...19493e`; ethereum `0xd737ee...45ed98` | ⚠️ Unaudited |
| Markets | unknown | ethereum | n/a | 3 deployments: ethereum [`0x12401f...b41477`](./contracts/ethereum-1/0x12401f97e2264adbf8ff98da72e3465d97b41477/); ethereum `0x1e21ca...7f7fce`; ethereum `0xe5d0a7...ba2cd1` | ⚠️ Unaudited |
| OracleLens | unknown | ethereum | n/a | 14 deployments: ethereum [`0x02bd64...ec2d83`](./contracts/ethereum-1/0x02bd64ce7fbdbe7eb84d1f9b08e0cc2a7fec2d83/); ethereum `0x0c4773...f3f183`; ethereum `0x0f8560...47bd4f`; ethereum `0x1c4224...fe518e`; ethereum `0x26b1e2...26a867`; ethereum `0x30e6df...f7b48a`; ethereum `0x400043...f9dbc4`; ethereum `0x500e76...923d38`; ethereum `0x53dcfc...b1858a`; ethereum `0x76e96f...59a766`; ethereum `0x787449...a9045d`; ethereum `0x79211f...08fab6`; ethereum `0xc2ca69...7c5703`; ethereum `0xddd1ea...eb0334` | ⚠️ Unaudited |
| Rewards | unknown | ethereum | n/a | 2 deployments: ethereum [`0x0ee5c5...e2fcec`](./contracts/ethereum-1/0x0ee5c537e91bb988fe615d0da78582ed21e2fcec/); ethereum `0xfde7a2...cb265b` | ⚠️ Unaudited |
| RiskManager | unknown | ethereum | n/a | 6 deployments: ethereum [`0x00d54f...0ca69d`](./contracts/ethereum-1/0x00d54f129293b1580c779c8f04b2d8ce370ca69d/); ethereum `0x3297c8...8931a6`; ethereum `0x402c85...2ca376`; ethereum `0x98d7a0...b92ce6`; ethereum `0xad8a5c...2dd652`; ethereum `0xb4d68b...afe2ad` | ⚠️ Unaudited |
| SnapshotRegistry | unknown | ethereum | n/a | 10 deployments: ethereum [`0x0a6467...bf459c`](./contracts/ethereum-1/0x0a64670763777e59898ae28d6acb7f2062bf459c/); ethereum `0x40fc79...71445f`; ethereum `0x46157b...e61433`; ethereum `0x4a337c...a325dc`; ethereum `0x4e72f8...cfac97`; ethereum `0x546b74...47987c`; ethereum `0x7fa4d5...4521df`; ethereum `0xa084a7...7c5fe6`; ethereum `0xb3b30f...c219ac`; ethereum `0xb8b734...39c94a` | ⚠️ Unaudited |
| Strategy | unknown | ethereum | n/a | 2 deployments: ethereum [`0x4fe5a6...6e6be8`](./contracts/ethereum-1/0x4fe5a6ee0be736cf7ec34c95a55b9d006e6e6be8/); ethereum `0xbd29b6...4e2fa3` | ⚠️ Unaudited |
| TimelockController | governance | ethereum | n/a | 2 deployments: ethereum [`0x1b8c36...f74f5a`](./contracts/ethereum-1/0x1b8c367ae56656b1d0901b2add1ad3226ff74f5a/); ethereum `0xfb034c...07a968` | ⚠️ Unaudited |
| Token | unknown | ethereum | n/a | [`0x8a58ae...94973c`](./contracts/ethereum-1/0x8a58aecbe677682d0f037c67f37f5a7a2e94973c/) | ⚠️ Unaudited |
| UtilsLens | unknown | ethereum | n/a | 14 deployments: ethereum [`0x009bd9...16a0d8`](./contracts/ethereum-1/0x009bd94ad5fa60e676bfd3a45b5305463216a0d8/); ethereum `0x1ad6ed...6ee539`; ethereum `0x1b6e0b...af2d95`; ethereum `0x39cea1...3fe2f4`; ethereum `0x3ebfd2...27fb36`; ethereum `0x6104c0...dec34a`; ethereum `0x7b89cc...e6e0fc`; ethereum `0xb8cac3...5afcc1`; ethereum `0xbef9b6...fcc071`; ethereum `0xc56752...24a753`; ethereum `0xcf1801...488727`; ethereum `0xdf7ec7...e1938d`; ethereum `0xef3f5d...bbd3d1`; ethereum `0xf364ce...6118ea` | ⚠️ Unaudited |
| Vault | unknown | ethereum | n/a | [`0xb4ad4d...7f0188`](./contracts/ethereum-1/0xb4ad4d9c02c01b01cf586c16f01c58c73c7f0188/) | ⚠️ Unaudited |
| VaultLens | unknown | ethereum | n/a | 21 deployments: ethereum [`0x079fa5...c0e45e`](./contracts/ethereum-1/0x079fa5cde9c9647d26e79f3520fbdf9dbcc0e45e/); ethereum `0x0dd643...734fd8`; ethereum `0x352e64...3f2c3b`; ethereum `0x57904b...035c90`; ethereum `0x66529d...d98498`; ethereum `0x6f544e...77ae55`; ethereum `0x72bbdb...f51f15`; ethereum `0x7427e9...0f3177`; ethereum `0x75aaf5...90a29a`; ethereum `0x83801c...fc5b60`; ethereum `0x8489e3...c77f71`; ethereum `0x91f5a0...6209e8`; ethereum `0xa18d79...ea66ab`; ethereum `0xa8695d...da8914`; ethereum `0xb65c7a...bc59eb`; ethereum `0xc3c456...657403`; ethereum `0xcd28b1...1174a2`; ethereum `0xdb259a...7fc3e2`; ethereum `0xe240c5...55b539`; ethereum `0xe4044d...9ed29e`; ethereum `0xf7c8d2...a10ac6` | ⚠️ Unaudited |
| WithdrawalQueue | unknown | ethereum | n/a | 2 deployments: ethereum [`0x8542f0...6e3177`](./contracts/ethereum-1/0x8542f0461e89bfa3324b0911c63f57b9de6e3177/); ethereum `0xff7a0b...f6be57` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (44)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | ethereum | n/a | `0x00cecc...179b8c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | 2 deployments: ethereum `0x021f26...f6557d`; ethereum `0x7995dd...c9e866` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x04d321...525332` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x0fac4d...75c084` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x101f9a...dca1ab` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x193022...183162` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x1e3249...d18e66` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x23731d...45d7c2` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x24d633...a33933` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x281545...0932da` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x2d2f24...3de6f8` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x3d7d70...69f980` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x3de571...2f2c2d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x479c8f...34792c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x6487c4...eb5063` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x74a221...24180f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x7594ae...6943a6` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x7d092b...0bcca8` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x85d88c...107504` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x95058f...d5d6a4` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x950c6b...361b39` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x9ad2df...584f11` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x9d2b30...720ea4` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xa2c12a...8a690e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xa86cb9...e00265` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xb4876b...1441fe` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xbf0459...4fb66c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xca7a82...e900be` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xcd04c0...20aeb4` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xe7c7b2...97db7d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xeb3332...c9c9a1` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xf2581c...fdd241` | ❓ Unverified |
| UnnamedContract | unknown | unichain | n/a | `0x36639e...2d120a` | ❓ Unverified |
| UnnamedContract | unknown | unichain | n/a | `0x8d9ff3...d352b9` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x2a3564...8246ad` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x441029...d6823a` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x49d9fd...614eb8` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x5304eb...ea0448` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x69a2fa...217705` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x97c726...7ecc21` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xb7522c...821795` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xbd858d...0246cd` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xc11d6b...1b0aef` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xf75d18...90b262` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [Pashov_Audit_Group_report.pdf](https://github.com/euler-xyz/euler-earn/blob/master/audits/Pashov%5FAudit%5FGroup%5Freport.pdf) | Pashov Audit Group | Audit | 2025-07 | aging | Direct | n/a | 0 | n/a |
| [Certora_EulerEarn_report.pdf](https://github.com/euler-xyz/euler-earn/blob/master/audits/Certora%5FEulerEarn%5Freport.pdf) | Pashov Audit Group | Audit | 2025-07 | aging | Direct | n/a | 0 | n/a |
| [Sigma_Prime_EulerEarn_report.pdf](https://github.com/euler-xyz/euler-earn/blob/master/audits/Sigma%5FPrime%5FEulerEarn%5Freport.pdf) | Sigma Prime | Audit | 2025-07 | aging | Direct | n/a | 0 | n/a |
| [Certora_EulerEarn_report.pdf](https://raw.githubusercontent.com/euler-xyz/euler-earn/b2fd6e699ee20bcfe7459f375b3cee5d2fa53345/audits/Certora_EulerEarn_report.pdf) | Spearbit | Audit | 2025-07 | aging | Direct | n/a | 0 | n/a |
| [Sigma_Prime_EulerEarn_report.pdf](https://raw.githubusercontent.com/euler-xyz/euler-earn/b2fd6e699ee20bcfe7459f375b3cee5d2fa53345/audits/Sigma_Prime_EulerEarn_report.pdf) | Spearbit | Audit | 2025-07 | aging | Direct | n/a | 0 | n/a |
| [omniscia.io/reports/euler-finance-earn-yield-aggregator-66faae519dcc3c0018b9097e](https://omniscia.io/reports/euler-finance-earn-yield-aggregator-66faae519dcc3c0018b9097e) | Enigma Ventures | Audit | 2024-10 | aging | Direct | n/a | 0 | n/a |
| [Certora_EulerEarn_report.pdf](https://github.com/euler-xyz/euler-earn/blob/master/audits/Certora_EulerEarn_report.pdf) | Certora | Audit | 2025-07 | aging | Direct | n/a | 0 | n/a |
| [Sigma_Prime_EulerEarn_report.pdf](https://github.com/euler-xyz/euler-earn/blob/master/audits/Sigma_Prime_EulerEarn_report.pdf) | Sigma Prime | Audit | 2025-07 | aging | Direct | n/a | 0 | n/a |
| [2025-05-26-cyfrin-eulerswap-v2.0.pdf](https://github.com/euler-xyz/euler-swap/blob/master/audits/2025-05-26-cyfrin-eulerswap-v2.0.pdf) | Cyfrin | Audit | 2025-05 | aging | Direct | contract_name | 2 | n/a |
| [report-cantinacode-uniswap-euler-0422.pdf](https://github.com/euler-xyz/euler-swap/blob/master/audits/report-cantinacode-uniswap-euler-0422.pdf) | Spearbit | Audit | 2025-05 | aging | Direct | contract_name | 2 | n/a |
| [ChainSecurity_EulerSwap_audit.pdf](https://github.com/euler-xyz/euler-swap/blob/master/audits/ChainSecurity%5FEulerSwap%5Faudit.pdf) | ChainSecurity | Audit | 2025-03 | aging | Direct | contract_name | 1 | n/a |
| [report-euler-swap-050325.pdf](https://github.com/euler-xyz/euler-swap/blob/master/audits/report-euler-swap-050325.pdf) | Spearbit | Audit | 2025-03 | aging | Direct | contract_name | 2 | n/a |
| [eulerswap-audit-report.pdf](https://github.com/euler-xyz/euler-swap/blob/master/audits/eulerswap-audit-report.pdf) | Spearbit | Audit | 2025-02 | aging | Direct | n/a | 0 | n/a |
| [report-cantinacode-euler-0901.pdf](https://github.com/euler-xyz/euler-swap/blob/master/audits/report-cantinacode-euler-0901.pdf) | Spearbit | Audit | 2025-09 | fresh | Direct | contract_name | 1 | n/a |
| [yAudit ERC4626 and Vault Securitize.pdf](https://github.com/euler-xyz/evk-periphery/blob/master/audits/yAudit%20ERC4626%20and%20Vault%20Securitize.pdf) | yAudit | Audit | 2025-11 | fresh | Direct | contract_name | 1 | n/a |
| [Pashov Group ERC4626 and Vault Securitize.pdf](https://github.com/euler-xyz/evk-periphery/blob/master/audits/Pashov%20Group%20ERC4626%20and%20Vault%20Securitize.pdf) | Pashov Audit Group | Audit | 2025-11 | fresh | Direct | contract_name | 1 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | [`0x29a56a...45cc8e`](./contracts/ethereum-1/0x29a56a1b8214d9cf7c5561811750d5cbdb45cc8e/) | EVault | core_logic | $1,095,577.81 | Verified native implementation with $1,095,577.81 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xa60c42...e34bc7`](./contracts/ethereum-1/0xa60c4257c809353039a71527dfe701b577e34bc7/) | AccountLens | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x130eab...0ffaed`](./contracts/ethereum-1/0x130eabada6f4c663095c8e9e276ab5da670ffaed/) | CrossAdapter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x4e58bb...7fadde`](./contracts/ethereum-1/0x4e58bbea423c4b9a2fc7b8e58f5499f9927fadde/) | EscrowedCollateralPerspective | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x2f1325...dc1f3d`](./contracts/ethereum-1/0x2f13256e04022d6356d8ce8c53c7364e13dc1f3d/) | FactoryGovernor | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x8ff1c8...29dd7d`](./contracts/ethereum-1/0x8ff1c814719096b61abf00bb46ead0c9a529dd7d/) | Governance | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x061b6b...0f807a`](./contracts/ethereum-1/0x061b6b0ba1b552006556c278fc8798d1e20f807a/) | IRMLens | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 9 |
| upstream | 5 |
| standard_library | 6 |
| needs_review | 91 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 9
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: contract_name=10

Zero-match audit list:

- [11522] Pashov_Audit_Group_report.pdf
- [11523] Certora_EulerEarn_report.pdf
- [11524] Sigma_Prime_EulerEarn_report.pdf
- [11525] Certora_EulerEarn_report.pdf
- [11526] Sigma_Prime_EulerEarn_report.pdf
- [11528] omniscia.io/reports/euler-finance-earn-yield-aggregator-66faae519dcc3c0018b9097e
- [11529] Certora_EulerEarn_report.pdf
- [11531] Sigma_Prime_EulerEarn_report.pdf
- [11536] eulerswap-audit-report.pdf

Fork inheritance lineage and inherited audits are included when available.
