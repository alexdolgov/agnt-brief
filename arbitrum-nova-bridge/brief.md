# Agentic Audit Brief: Arbitrum Nova Bridge

⚠️ Lifecycle status: DECLINING - TVL dropped 52.1% over 90 days

## Project Overview

- Project: Arbitrum Nova Bridge (`arbitrum-nova-bridge`)
- Website: [https://portal.arbitrum.io/bridge?l2ChainId=42170](https://portal.arbitrum.io/bridge?l2ChainId=42170)
- Lifecycle: declining (Tier 1, declining)
- Generated: 2026-07-04T14:53:04.052Z
- Pipeline run: v2-pipeline-2026-07-01-3e33f2-3e24
- Chains: arbitrum, ethereum
- Contract surface: 56 unique implementations (135 raw deployments)
- DeFi Llama TVL: $9,906,466.95
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Canonical Bridge. Structurally: 51 project-authored contract(s) across 2 chain(s); 1 ERC20 token; role-gated via AccessControl; upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 6 functional families. Its contracts share 10 common project-authored base contract(s) (ionestepprover, delegatecallaware, absbridge). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 181; live-surface contracts included: 135 (127 live, 8 unknown).
- Excluded by liveness: 46 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 30/41 (73.2%)
- Deployed-live implementations: 48 of 56 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 37/48
- Verified + Unaudited implementations: 11
- Verified by bytecode match: 0
- Unverified implementations: 8
- Unique implementations: 56
- Raw deployments: 135
- Audits discovered: 32 (32 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 15
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2025-05 (aging)
- Audit staleness (calendar age): 0 fresh, 17 aging, 14 stale, 1 unknown
- Coverage code basis (deployed vs audited code): 37 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: 73.2% (Code4rena, ConsenSys Diligence, Trail of Bits)
- Note: This protocol is classified as [declining]. ASD of n/a represents exposure in a protocol with declining activity.

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| Trail of Bits | Tier 1 | 29 | 60.4% | 2025-05 |
| Consensys Diligence | Tier 1 | 28 | 58.3% | 2022-05 |
| Code4rena | Tier 1 | 12 | 25.0% | 2024-08 |

## Contract Surface

### ✅ Verified + Audited (37)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| BOLDUpgradeAction | unknown | ethereum | n/a | 2 deployments: ethereum [`0xd25b258b55765c9fb5567ecabb6114b03b0f78b5`](./contracts/ethereum-1/0xd25b258b55765c9fb5567ecabb6114b03b0f78b5/); ethereum `0xf795ec38701234664f69dbd761ee9c511f25ac1d` | ✅ Audited |
| Bridge | unknown | ethereum | n/a | 4 deployments: ethereum [`0x041752178b4a7b6800cc38260f3d443fc868fa7a`](./contracts/ethereum-1/0x041752178b4a7b6800cc38260f3d443fc868fa7a/); ethereum `0x298e5c615a9bdded7814e137b2b63c62fbcaa43d`; ethereum `0x677ecf96dbfee1defbde8d2e905a39f73aa27b89`; ethereum `0xc26bc91f516f02c540f62943ad1b6ab5fd46e29a` | ✅ Audited |
| Bridge | operational_periphery | ethereum | n/a | [`0xc1ebd02f738644983b6c4b2d440b8e77dde276bd`](./contracts/ethereum-1/0xc1ebd02f738644983b6c4b2d440b8e77dde276bd/) | ✅ Audited |
| BridgeCreator | operational_periphery | ethereum | n/a | 3 deployments: ethereum [`0xe38f0215b96ef5bd6450d5d0a3464f0432bfa04a`](./contracts/ethereum-1/0xe38f0215b96ef5bd6450d5d0a3464f0432bfa04a/); ethereum `0xe98c12c1aa68fa37c174dffcd1811364477bec5e`; ethereum `0xf2c8b215dc8b82507a621809cc154187a7965c1c` | ✅ Audited |
| ChallengeManager | unknown | ethereum | n/a | 5 deployments: ethereum [`0x02e05a9245c5853f895dadcc3a8216c953c8736b`](./contracts/ethereum-1/0x02e05a9245c5853f895dadcc3a8216c953c8736b/); ethereum `0x1440955812f191453aba5e09b9f74988c80f156e`; ethereum `0x914b7b3053b35b84a24df08d7c9cebcaea4e2948`; ethereum `0xbd5be96869f1149b296d52944a2f08600eb1f97a`; ethereum `0xe129b8aa61df65cbdbae4345ee3fb40168dfd566` | ✅ Audited |
| EdgeChallengeManager | unknown | ethereum | n/a | 2 deployments: ethereum [`0x058e1cbb62096189bc7cc1fe08a0859905d969ea`](./contracts/ethereum-1/0x058e1cbb62096189bc7cc1fe08a0859905d969ea/); ethereum `0x93069ffd7730733ecfd57a0d2d528cf686248524` | ✅ Audited |
| EnableFastConfirmAction | unknown | ethereum | n/a | [`0xe102b527075b028b6bc6f4d4f11292d2f8a6673d`](./contracts/ethereum-1/0xe102b527075b028b6bc6f4d4f11292d2f8a6673d/) | ✅ Audited |
| ERC20Bridge | unknown | ethereum | n/a | 4 deployments: ethereum [`0x81be1bf06cb9b23e8eeda3145c3366a912dad9d6`](./contracts/ethereum-1/0x81be1bf06cb9b23e8eeda3145c3366a912dad9d6/); ethereum `0x9f6a999626add08991c7c3752b9d510a085bcf96`; ethereum `0xd721556db42fc5ea529870ebd2196156063721c7`; ethereum `0xefa1de858293593732a09c9daa238bec49595751` | ✅ Audited |
| ERC20Inbox | unknown | ethereum | n/a | 3 deployments: ethereum [`0xd210b64ed9d47ef8acf1a3284722fcc7fc6a1f4e`](./contracts/ethereum-1/0xd210b64ed9d47ef8acf1a3284722fcc7fc6a1f4e/); ethereum `0xd5dcf625e1fd5c338ce09bbe27e02e8dafc1880a`; ethereum `0xef56eebd29ba736094f23e57aae075685fb9bd6d` | ✅ Audited |
| Inbox | unknown | ethereum | n/a | 6 deployments: ethereum [`0x1b2676d32e2f7430a564dd4560641f990dfe3d6a`](./contracts/ethereum-1/0x1b2676d32e2f7430a564dd4560641f990dfe3d6a/); ethereum `0x5aed5f8a1e3607476f1f81c3d8fe126deb0afe94`; ethereum `0x9c4ce5ef20f831f4e7fecf58aaa0cda8d3091c35`; ethereum `0xa8ad1d77321443282cdc1f5fb348c2e01c311bf5`; ethereum `0xc23e3f20340f8ef09c8861a724c29db43ba3eed4`; ethereum `0xc47ec337a63d83293858653a1ae5cd8a1d2915d9` | ✅ Audited |
| Inbox | unknown | ethereum | n/a | [`0xc4448b71118c9071bcb9734a0eac55d18a153949`](./contracts/ethereum-1/0xc4448b71118c9071bcb9734a0eac55d18a153949/) | ✅ Audited |
| L1CustomGateway | unknown | ethereum | n/a | 2 deployments: ethereum [`0x23122da8c581aa7e0d07a36ff1f16f799650232f`](./contracts/ethereum-1/0x23122da8c581aa7e0d07a36ff1f16f799650232f/); ethereum `0xc8d26ab9e132c79140b3376a0ac7932e4680aa45` | ✅ Audited |
| L1CustomGateway | unknown | ethereum | n/a | [`0x97367486f5905c2b7ee7b58330fb4eb52639db17`](./contracts/ethereum-1/0x97367486f5905c2b7ee7b58330fb4eb52639db17/) | ✅ Audited |
| L1ERC20Gateway | unknown | ethereum | n/a | 2 deployments: ethereum [`0xb2535b988dce19f9d71dfb22db6da744acac21bf`](./contracts/ethereum-1/0xb2535b988dce19f9d71dfb22db6da744acac21bf/); ethereum `0xb4299a1f5f26ff6a98b7ba35572290c359fde900` | ✅ Audited |
| L1ERC20Gateway | unknown | ethereum | n/a | [`0xf852de96ad5ca30d54b40b9ce5c8c6de56c0ef4b`](./contracts/ethereum-1/0xf852de96ad5ca30d54b40b9ce5c8c6de56c0ef4b/) | ✅ Audited |
| L1GatewayRouter | unknown | ethereum | n/a | 2 deployments: ethereum [`0x52595021fa01b3e14ec6c88953afc8e35dff423c`](./contracts/ethereum-1/0x52595021fa01b3e14ec6c88953afc8e35dff423c/); ethereum `0xc840838bc438d73c16c2f8b22d2ce3669963cd48` | ✅ Audited |
| L1GatewayRouter | unknown | ethereum | n/a | 2 deployments: ethereum [`0x6d1c576fe3e54313990450f5fa322306b4ccb47b`](./contracts/ethereum-1/0x6d1c576fe3e54313990450f5fa322306b4ccb47b/); ethereum `0xa9610559f1e5bb0eab9a25e21137d39426fd477e` | ✅ Audited |
| L1WethGateway | unknown | ethereum | n/a | 2 deployments: ethereum [`0x1986a7d7a9bb6cdbd87460bc2381d012071de0b1`](./contracts/ethereum-1/0x1986a7d7a9bb6cdbd87460bc2381d012071de0b1/); ethereum `0xcb5e8875563ca959b729a522d65dbba91c4d0728` | ✅ Audited |
| L1WethGateway | unknown | ethereum | n/a | 2 deployments: ethereum [`0x6299838c8254b59213eb56d158ebe562d23c4936`](./contracts/ethereum-1/0x6299838c8254b59213eb56d158ebe562d23c4936/); ethereum `0xb63762dfdaaf0f665a1f387e9b29699f22ac409c` | ✅ Audited |
| L1WethGateway | unknown | ethereum | n/a | [`0xe4e2121b479017955be0b175305b35f312330bae`](./contracts/ethereum-1/0xe4e2121b479017955be0b175305b35f312330bae/) | ✅ Audited |
| L2ArbitrumToken | token | arbitrum | n/a | [`0x912ce59144191c1204e64559fe8253a0e49e6548`](./contracts/arbitrum-42161/0x912ce59144191c1204e64559fe8253a0e49e6548/) | ✅ Audited |
| OldOutbox | unknown | ethereum | n/a | [`0x667e23abd27e623c11d4cc00ca3ec4d0bd63337a`](./contracts/ethereum-1/0x667e23abd27e623c11d4cc00ca3ec4d0bd63337a/) | ✅ Audited |
| OneStepProofEntry | unknown | ethereum | n/a | 9 deployments: ethereum [`0x4397fe1e959ba81b9d5f1a9679ddd891955a42d6`](./contracts/ethereum-1/0x4397fe1e959ba81b9d5f1a9679ddd891955a42d6/); ethereum `0x4dc0d390025336a2ad7bf2058bacd7aeb89b151f`; ethereum `0x83fa8ed860514370fbcc5f04ea7969475f48cfeb`; ethereum `0x8f4985d6c62124f5716ef83ed1846a49624390f8`; ethereum `0x8faa21891b0b928afebd5314d1d313f8f7b34dac`; ethereum `0x91cb57f200bd5f897e41c164425ab4db0991a64f`; ethereum `0x95b1e64710ce30cf9346f7b9c6cb9366282e3c7c`; ethereum `0xa328baf257a937b7934429a5d8458d98693c6fc7`; ethereum `0xc6e1e6db03c3f475bc760fe20ed93401ec5c4f7e` | ✅ Audited |
| OneStepProver0 | unknown | ethereum | n/a | 9 deployments: ethereum [`0x2733206827d957b6a0c6417e4eed5ba59eaaa7a4`](./contracts/ethereum-1/0x2733206827d957b6a0c6417e4eed5ba59eaaa7a4/); ethereum `0x2dccabe89cf76132619a9b18e9f9e48e837222b5`; ethereum `0x3111ba6e3c8c16502dbf3c2553816268e73f410d`; ethereum `0x35fbc5f03d86e88973b06fb9c5a913d54abdf731`; ethereum `0x7368f782e109518fd3914e8b315ee45e51c15835`; ethereum `0xa174e12ff8c6b18b37feca77d6d350d89379a58c`; ethereum `0xa4ac119b4affb14ce7cffd2563f278794b921d1e`; ethereum `0xd0465e3356213869f1fae38b3e67cbf4e873c5b6`; ethereum `0xe0e0f91bc7bc1755a93995e1132b4e20abba97bf` | ✅ Audited |
| Outbox | unknown | ethereum | n/a | 3 deployments: ethereum [`0x186267690cb723d72a7edbc002476e23d694cb33`](./contracts/ethereum-1/0x186267690cb723d72a7edbc002476e23d694cb33/); ethereum `0xa7402fdca6f5b01302a6fd0d6768e8fd132eb752`; ethereum `0xbc89410298e009fae66b5b70d389e0fd6fd5f12d` | ✅ Audited |
| Outbox | unknown | ethereum | n/a | [`0xd4b80c3d7240325d18e645b49e6535a3bf95cc58`](./contracts/ethereum-1/0xd4b80c3d7240325d18e645b49e6535a3bf95cc58/) | ✅ Audited |
| ProxyAdmin | unknown | ethereum | n/a | [`0xa8f7dded54a726eb873e98bff2c95abf2d03e560`](./contracts/ethereum-1/0xa8f7dded54a726eb873e98bff2c95abf2d03e560/) | ✅ Audited |
| RollupAdminLogic | unknown | ethereum | n/a | 6 deployments: ethereum [`0x16ad566aaa05fe6977a033de2472c05c84cab724`](./contracts/ethereum-1/0x16ad566aaa05fe6977a033de2472c05c84cab724/); ethereum `0x2f9491db1920726d0cfe8ac5f1cac1f730c5dc44`; ethereum `0x72f193d0f305f532c87a4b9d0a2f407a3f4f585f`; ethereum `0x7fc126ff51183a78c5e0437467f325f661d8df17`; ethereum `0x9b56a789fedd5df27dbab53b085f7157397ca17d`; ethereum `0xbaa095103177a2e2e9304eae890e2854ec8cd635` | ✅ Audited |
| RollupCreator | unknown | ethereum | n/a | 3 deployments: ethereum [`0x43698080f40db54dee6871540037b8ab8fd0ab44`](./contracts/ethereum-1/0x43698080f40db54dee6871540037b8ab8fd0ab44/); ethereum `0x62b6df2c37bc74ca5bca17fc086a0d58dfc4119a`; ethereum `0x8c88430658a03497d13cdff7684d37b15aa2f3e1` | ✅ Audited |
| RollupEventInbox | unknown | ethereum | n/a | 3 deployments: ethereum [`0x1ed42156d64b52100f005d7e39092d49ed47ec8e`](./contracts/ethereum-1/0x1ed42156d64b52100f005d7e39092d49ed47ec8e/); ethereum `0x7b6784fbd233edb47e11ea4e7205fc4229447662`; ethereum `0x98f5035ad01e6d83e271e0bc7338f5a1a8a66829` | ✅ Audited |
| RollupUserLogic | unknown | ethereum | n/a | 5 deployments: ethereum [`0x4d42373d1d8fc9aef11477984b9be42672e12463`](./contracts/ethereum-1/0x4d42373d1d8fc9aef11477984b9be42672e12463/); ethereum `0x5607ea4b5f6e3f610bd346b36d3143fff46d1c34`; ethereum `0x5c93bab9ff2fa3884b643bd8545c625de0633517`; ethereum `0x5e7147d34eab8c86b19ded94c00f82181b5580ef`; ethereum `0xa4892ffe3deab25337d7d1a5b94b35daba255451` | ✅ Audited |
| SequencerInbox | unknown | ethereum | n/a | [`0x211e1c4c7f1bf5351ac850ed10fd68cffcf6c21b`](./contracts/ethereum-1/0x211e1c4c7f1bf5351ac850ed10fd68cffcf6c21b/) | ✅ Audited |
| SequencerInbox | unknown | ethereum | n/a | 10 deployments: ethereum [`0x31da64d19cd31a19cd09f4070366fe2144792cf7`](./contracts/ethereum-1/0x31da64d19cd31a19cd09f4070366fe2144792cf7/); ethereum `0x6f2e7f9b5db5e4e9b5b1181d2eb0e4972500c324`; ethereum `0x93dcfc7e658050c80700a6eb7faf12efacf5bf76`; ethereum `0x9ed1d71e3f3dd08de9cc2415a60af5c0b6553c0a`; ethereum `0xbf223aac3165ec9bdaf43420537fe68f905427d4`; ethereum `0xcc4e9e22acdf93192cf7e149d7563f6d660e9afc`; ethereum `0xe154a8d54e39cd8edaea85870ea349b82b0e4ef4`; ethereum `0xe4be5495054fe4fa4ea5972219484984927681e3`; ethereum `0xed34928506dab5dbe1d08f1912fef0029d8e9480`; ethereum `0xff2a93f6c7481846b0308a1a49501dcc75a306f4` | ✅ Audited |
| SetValidatorsAction | unknown | ethereum | n/a | [`0xbf94afebfbf062a88615bc012da39d0822670aba`](./contracts/ethereum-1/0xbf94afebfbf062a88615bc012da39d0822670aba/) | ✅ Audited |
| UpgradeExecutor | unknown | ethereum | n/a | 3 deployments: ethereum [`0x995f930b4a943620f1341a287c9f2cf093f6d47a`](./contracts/ethereum-1/0x995f930b4a943620f1341a287c9f2cf093f6d47a/); ethereum `0xde505e42d50abd07c8d39dcf692920d56cba35da`; ethereum `0xeab0678f76f7b371f4dab44c29800e84b5662d4b` | ✅ Audited |
| ValidatorUtils | unknown | ethereum | n/a | 2 deployments: ethereum [`0x166f9647b7d21e9e0076bbfeb66c66e18c7a1654`](./contracts/ethereum-1/0x166f9647b7d21e9e0076bbfeb66c66e18c7a1654/); ethereum `0x34f2d59f084f2dad4f386b8742cf2332260152a3` | ✅ Audited |
| ValidatorWalletCreator | unknown | ethereum | n/a | 3 deployments: ethereum [`0x085c69a44f3df550b6666d052d4621b9b44436f1`](./contracts/ethereum-1/0x085c69a44f3df550b6666d052d4621b9b44436f1/); ethereum `0x225ea72daf733b0335bff86f7b077385395463ca`; ethereum `0xddd434ac6177bb0809183a84769fb14bc5b48858` | ✅ Audited |

### ⚠️ Verified + Unaudited (11)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| ArbOneAIPArbOS31UpgradeChallengeManagerAction | unknown | ethereum | n/a | [`0x19b715cf310c28c9020e53aaa11ce9df42e718b5`](./contracts/ethereum-1/0x19b715cf310c28c9020e53aaa11ce9df42e718b5/) | ⚠️ Unaudited |
| DeployHelper | unknown | ethereum | n/a | 3 deployments: ethereum [`0x15b7911c2974dfa95ae12192e2a3387b204c1f32`](./contracts/ethereum-1/0x15b7911c2974dfa95ae12192e2a3387b204c1f32/); ethereum `0x524c56448d9c2c2f17f99bc85a3a3c0456d4980b`; ethereum `0x6319ff757edab7196376cc6104362057dacf6ec7` | ⚠️ Unaudited |
| ERC20Outbox | unknown | ethereum | n/a | 3 deployments: ethereum [`0x1032615db60c64b902b8f1255afc97270acfe7f7`](./contracts/ethereum-1/0x1032615db60c64b902b8f1255afc97270acfe7f7/); ethereum `0x17e0c5fe0dff2ae4cfc9e96d9ccd112daf5c0386`; ethereum `0xdf7031a87549b4ae2bc692091973dcea0fbc0e5f` | ⚠️ Unaudited |
| ERC20RollupEventInbox | unknown | ethereum | n/a | 3 deployments: ethereum [`0x0d079b22b0b4083b9b0bdc62bf1a4eaf4a95bdee`](./contracts/ethereum-1/0x0d079b22b0b4083b9b0bdc62bf1a4eaf4a95bdee/); ethereum `0x2ec583c6f24c8b03c471dc01efb6dd69360e49cb`; ethereum `0x60ced0a2b95d85e1c81203c44a6301fc456908ea` | ⚠️ Unaudited |
| L1DAITokenBridge | operational_periphery | ethereum | n/a | [`0x10e6593cdda8c58a1d0f14c5164b376352a55f2f`](./contracts/ethereum-1/0x10e6593cdda8c58a1d0f14c5164b376352a55f2f/) | ⚠️ Unaudited |
| L1Escrow | operational_periphery | ethereum | n/a | [`0xa10c7ce4b876998858b1a9e12b10092229539400`](./contracts/ethereum-1/0xa10c7ce4b876998858b1a9e12b10092229539400/) | ⚠️ Unaudited |
| L1Token | token | ethereum | n/a | [`0xe3dbc4f88eaa632ddf9708732e2832eeaa6688ab`](./contracts/ethereum-1/0xe3dbc4f88eaa632ddf9708732e2832eeaa6688ab/) | ⚠️ Unaudited |
| NitroContracts2Point1Point0UpgradeAction | unknown | ethereum | n/a | [`0x9e0049b901531aee041ad0d63faeeeffbf442225`](./contracts/ethereum-1/0x9e0049b901531aee041ad0d63faeeeffbf442225/) | ⚠️ Unaudited |
| NitroContracts2Point1Point2UpgradeAction | unknown | ethereum | n/a | [`0x78ee30c74b3ce1aeb38163db3e7d769d9735542f`](./contracts/ethereum-1/0x78ee30c74b3ce1aeb38163db3e7d769d9735542f/) | ⚠️ Unaudited |
| NovaAIPArbOS31UpgradeChallengeManagerAction | unknown | ethereum | n/a | [`0x658afc9d5ec4476fa6bb7033ea465f9901fbff27`](./contracts/ethereum-1/0x658afc9d5ec4476fa6bb7033ea465f9901fbff27/) | ⚠️ Unaudited |
| RollupProxy | unknown | ethereum | n/a | 2 deployments: ethereum [`0x13cf1a771156a8674fc5d4c750546888e21726bc`](./contracts/ethereum-1/0x13cf1a771156a8674fc5d4c750546888e21726bc/); ethereum `0x1ef37117b804b41d98fb2c70d94dfc3e04336b17` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (8)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | ethereum | n/a | `0x42a4dad048a24bad79568f068550b355c6eccb7a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x4482d08a89cbe77fb2433b7b2e5e366dc3135136` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x826acced29b11d5c136e3607e4d824acc6d86a2d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xa98b1be4d5d1ca03b336d7aa95b7c0a24fb78113` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xb1f1a77ab63671a6355fa5c8423f436118943411` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xb5f6951ab2504442c3f6dd37ff1e1d1d253c5097` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xbccf962fa0b75c2a59c258d39cf62f5335c44aca` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xe58ea0500f3d41c7549402bc1bb24a2531389639` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [Manual audit seed](https://docs.arbitrum.io/audit-reports) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [view](https://docs.arbitrum.io/assets/files/2025_05_06_trail_of_bits_arbos_40_nitro_summary_report-769a942c08fe0f917eef523cba81a459.pdf) | Trail of Bits | Audit | 2025-05 | aging | Direct | n/a | 0 | n/a |
| [view](https://docs.arbitrum.io/assets/files/2025_04_18_trail_of_bits_reward_distributor_fixes_security_review-95acad5683bf61562ac3cedea313e749.pdf) | Trail of Bits | Audit | 2025-04 | aging | Direct | n/a | 0 | n/a |
| [view](https://docs.arbitrum.io/assets/files/2025_03_11_trail_of_bits_sequencer_liveness_security_review-298b2cd6810968ed840dff94df1e0c0e.pdf) | Trail of Bits | Audit | 2025-03 | aging | Direct | n/a | 0 | n/a |
| [view](https://docs.arbitrum.io/assets/files/2025_02_28_trail_of_bits_security_council_rotation_security_review-6feca69ad7afe171104ecabaefe8971a.pdf) | Trail of Bits | Audit | 2025-03 | aging | Direct | n/a | 0 | n/a |
| [view](https://docs.arbitrum.io/assets/files/2025_02_28_trail_of_bits_disable_gateway_action_security_review-11ed2e1370d062c2ade5e5d6b085a8f3.pdf) | Trail of Bits | Audit | 2025-03 | aging | Direct | n/a | 0 | n/a |
| [view](https://docs.arbitrum.io/assets/files/2025_02_14_trail_of_bits_custom_fee_token_exchange_rate_security_review-640d7ef454d21c739e50c594fac727d9.pdf) | Trail of Bits | Audit | 2025-03 | aging | Direct | n/a | 0 | n/a |
| [view](https://docs.arbitrum.io/assets/files/2025_02_14_trail_of_bits_geth_14_4_security_review-f24eef2e97e06e030fd5c1cc3a54ce5d.pdf) | Trail of Bits | Audit | 2025-03 | aging | Direct | n/a | 0 | n/a |
| [view](https://docs.arbitrum.io/assets/files/2025_02_02_trail_of_bits_custom_fee_erc20_bridge_security_review-ccd6d481c1f7d41436a3ceb474bcd0f3.pdf) | Trail of Bits | Audit | 2025-03 | aging | Direct | contract_name | 32 | high |
| [view](https://docs.arbitrum.io/assets/files/2024_12_26_trail_of_bits_bold_fixes_security_review-95c9ee3b07ccb11e59e57744ddc017d2.pdf) | Trail of Bits | Audit | 2024-12 | aging | Direct | contract_name | 1 | high |
| [view](https://docs.arbitrum.io/assets/files/2024_10_30_trail_of_bits_security_audit_nitro_contracts_with_bold-90984d87c800f448601b84972e544e1d.pdf) | Trail of Bits | Audit | 2024-10 | aging | Direct | contract_name | 10 | high |
| [view](https://docs.arbitrum.io/assets/files/2024_10_23_trail_of_bits_security_audit_arbos32_emergency_fixes-d3e018abb506e80f9625508dbaab2358.pdf) | Trail of Bits | Audit | 2024-10 | aging | Direct | n/a | 0 | n/a |
| [view](https://docs.arbitrum.io/assets/files/2024_10_07_trail_of_bits_security_audit_bold_optimized_history_commitments-025bd74c8af33bb436e606b55a3ef550.pdf) | Trail of Bits | Audit | 2024-10 | aging | Direct | n/a | 0 | n/a |
| [view](https://docs.arbitrum.io/assets/files/2024_09_25_trail_of_bits_security_audit_timeboost_auction_contracts-2a8dbdf7b139db4224d30d6d1015aa85.pdf) | Trail of Bits | Audit | 2024-09 | aging | Direct | n/a | 0 | n/a |
| [view](https://docs.arbitrum.io/assets/files/2024_09_05_open_zeppelin_security_audit_stylus_rust_sdk-a78b94ded01f4e5f96dfd55a47158680.pdf) | Trail of Bits | Audit | 2024-09 | aging | Direct | n/a | 0 | n/a |
| [view](https://docs.arbitrum.io/assets/files/2024_08_29_trail_of_bits_security_audit_orbit_and_governance_upgrade_actions_v2_1-8d6150a317148e1bfcf428b4e2c8ef2d.pdf) | Trail of Bits | Audit | 2024-08 | aging | Direct | contract_name | 6 | high |
| [view](https://docs.arbitrum.io/assets/files/2024_08_29_trail_of_bits_security_audit_usdc_custom_gateway_and_arbos_upgrade_at_timestamp_action-f490e6aa741551bfbf4b2349fcc82579.pdf) | Trail of Bits | Audit | 2024-08 | aging | Direct | n/a | 0 | n/a |
| [view](https://docs.arbitrum.io/assets/files/2024_08_05_trail_of_bits_security_audit_bold_and_dac_rewards_updates-d0d6028126d4539be649eb05db5380c4.pdf) | Code4rena | Contest | 2024-08 | aging | Direct | contract_name | 32 | high |
| [view](https://docs.arbitrum.io/assets/files/2024_08_01_trail_of_bits_security_audit_custom_fee_token-7ce514634632f4735a710c81b55f2d27.pdf) | Trail of Bits | Audit | 2024-05 | stale | Direct | contract_name | 4 | high |
| [view](https://docs.arbitrum.io/assets/files/2024_07_26_trail_of_bits_security_audit_arbos_31-4538d946ebcd4187b211a868b6e8ea08.pdf) | Trail of Bits | Audit | 2024-07 | stale | Direct | contract_name | 11 | high |
| [view](https://docs.arbitrum.io/assets/files/2024_07_26_trail_of_bits_security_audit_arbos30_nitro_upgrade-d3b44d44e482a44a1710c80014a6630a.pdf) | Trail of Bits | Audit | 2024-07 | stale | Direct | n/a | 0 | n/a |
| [view](https://docs.arbitrum.io/assets/files/2024_06_17_code4rena_security_audit_arbos30_nitro_upgrade-3663f40614e5dadebbf4ef0e6a8e5c1e.pdf) | Code4rena | Contest | 2024-06 | stale | Direct | contract_name | 26 | high |
| [view](https://docs.arbitrum.io/assets/files/2024_06_10_trail_of_bits_security_audit_stylus-f2f68cbe59f5ac1c085292f6811c8ac9.pdf) | Trail of Bits | Audit | 2024-06 | stale | Direct | n/a | 0 | n/a |
| [view](https://docs.arbitrum.io/assets/files/2024_05_02_trail_of_bits_security_audit_bold_delay_buffer-7329f073827e7e12aede9a9203db1e01.pdf) | Trail of Bits | Audit | 2023-08 | stale | Direct | contract_name | 4 | high |
| [view](https://docs.arbitrum.io/assets/files/2024_08_20_chainsecurity_security_audit_nova_fee_router_update_arbos_31-12a4328ecb6f0966acacb54da8f49698.pdf) | ChainSecurity | Audit | 2023-08 | stale | Direct | n/a | 0 | n/a |
| [view](https://docs.arbitrum.io/assets/files/2024_03_18_trail_of_bits_security_audit_l1_l3_teleporter-76736686c28613a9473c149615f94765.pdf) | Trail of Bits | Audit | 2024-03 | stale | Direct | n/a | 0 | n/a |
| [view](https://docs.arbitrum.io/assets/files/2023_08_02_trail_of_bits_security_audit_challenge_protocol_v2-b63429218c10faec79c4834f8582f9d3.pdf) | Code4rena | Contest | 2023-08 | stale | Direct | contract_name | 7 | high |
| [view](https://docs.arbitrum.io/assets/files/2023_06_23_trail_of_bits_security_audit_governance_report_governance_token_bridge-ca76b55fb6c017c17ef78d0721f7e714.pdf) | Trail of Bits | Audit | 2023-01 | stale | Direct | contract_name | 14 | high |
| [view](https://docs.arbitrum.io/assets/files/2022_10_22_trail_of_bits_security_audit_nitro_2_of_2-11d8ca6bdf6e154c9b62e401b3220b1e.pdf) | Trail of Bits | Audit | 2022-10 | stale | Direct | contract_name | 32 | high |
| [view](https://docs.arbitrum.io/assets/files/2024_06_24_consensys_diligence_security_audit_nitro_contracts-b89f0db3702d3eec15a9211233ace9a6.pdf) | Consensys Diligence | Audit | 2022-05 | stale | Direct | contract_name | 71 | high |
| [view](https://docs.arbitrum.io/assets/files/2022_03_14_trail_of_bits_security_audit_nitro_1_of_2-d777111730bd602222978f7d98713d40.pdf) | Trail of Bits | Audit | 2022-03 | stale | Direct | contract_name | 37 | high |
| [view](https://docs.arbitrum.io/assets/files/2021_11_05_consensys_diligence_security_audit_core_contracts_token_bridge-664fbe3e5a14a41acaee4af64ae06100.pdf) | Consensys Diligence | Audit | 2021-11 | stale | Direct | contract_name | 52 | high |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | [`0x19b715cf310c28c9020e53aaa11ce9df42e718b5`](./contracts/ethereum-1/0x19b715cf310c28c9020e53aaa11ce9df42e718b5/) | ArbOneAIPArbOS31UpgradeChallengeManagerAction | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x15b7911c2974dfa95ae12192e2a3387b204c1f32`](./contracts/ethereum-1/0x15b7911c2974dfa95ae12192e2a3387b204c1f32/) | DeployHelper | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1032615db60c64b902b8f1255afc97270acfe7f7`](./contracts/ethereum-1/0x1032615db60c64b902b8f1255afc97270acfe7f7/) | ERC20Outbox | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0d079b22b0b4083b9b0bdc62bf1a4eaf4a95bdee`](./contracts/ethereum-1/0x0d079b22b0b4083b9b0bdc62bf1a4eaf4a95bdee/) | ERC20RollupEventInbox | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x10e6593cdda8c58a1d0f14c5164b376352a55f2f`](./contracts/ethereum-1/0x10e6593cdda8c58a1d0f14c5164b376352a55f2f/) | L1DAITokenBridge | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xa10c7ce4b876998858b1a9e12b10092229539400`](./contracts/ethereum-1/0xa10c7ce4b876998858b1a9e12b10092229539400/) | L1Escrow | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xe3dbc4f88eaa632ddf9708732e2832eeaa6688ab`](./contracts/ethereum-1/0xe3dbc4f88eaa632ddf9708732e2832eeaa6688ab/) | L1Token | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x9e0049b901531aee041ad0d63faeeeffbf442225`](./contracts/ethereum-1/0x9e0049b901531aee041ad0d63faeeeffbf442225/) | NitroContracts2Point1Point0UpgradeAction | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x78ee30c74b3ce1aeb38163db3e7d769d9735542f`](./contracts/ethereum-1/0x78ee30c74b3ce1aeb38163db3e7d769d9735542f/) | NitroContracts2Point1Point2UpgradeAction | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x658afc9d5ec4476fa6bb7033ea465f9901fbff27`](./contracts/ethereum-1/0x658afc9d5ec4476fa6bb7033ea465f9901fbff27/) | NovaAIPArbOS31UpgradeChallengeManagerAction | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x13cf1a771156a8674fc5d4c750546888e21726bc`](./contracts/ethereum-1/0x13cf1a771156a8674fc5d4c750546888e21726bc/) | RollupProxy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 41 |
| upstream | 0 |
| standard_library | 7 |
| needs_review | 8 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 17
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=15
- Match method counts: extraction_exact=339

Zero-match audit list:

- [24048] Manual audit seed
- [24049] view
- [24050] view
- [24051] view
- [24052] view
- [24053] view
- [24054] view
- [24055] view
- [24059] view
- [24060] view
- [24061] view
- [24062] view
- [24064] view
- [24068] view
- [24070] view
- [24072] view
- [24073] view

Fork inheritance lineage and inherited audits are included when available.
