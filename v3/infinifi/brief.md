# Agentic Audit Brief: infiniFi

## Export Authority

- Production state: **published scope**
- Raw selected rows: 0 across 0 audit(s)
- Eligible audit results: 12 (0 matched; 12 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e40c73181a386361babecc6895e0f6c5587548f92814db09f88491f8b4a38d92`

## Project Overview

- Project: infiniFi (`infinifi`)
- Website: [https://infinifi.xyz](https://infinifi.xyz)
- Lifecycle: unknown
- Generated: 2026-07-24T14:10:00.000Z
- Pipeline run: brief-deployer-expansion-all-20260724-v1
- Chains: arbitrum, bsc, ethereum, plasma
- Contract surface: 164 unique implementations (232 raw deployments)
- Coverage basis: 0/27 confirmed own live verified implementations (0.0%); conservative 0.0% with 0 needs-review implementation(s)
- DeFi Llama TVL: $65,241,398.33
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for infiniFi. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 32 contract row(s) across arbitrum, bsc, ethereum, plasma. Structural roles: 24 unclassified, 5 supporting, 3 core. No upgradeable pattern was identified in these rows.

## Logic Topography

- Exact-run contract rows: 32
- Structural roles: unclassified (24), supporting (5), core (3)
- Contract kinds: contract (32)
- Detected standards: pausable (4), ownable (3), accesscontrol (2), erc165 (2), erc20 (2)
- Frameworks: openzeppelin (8)
- Upgradeable-pattern rows: 0

## Fork Analysis

0 of 26 contracts are derived from known codebases. 26 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0x4de0b0fae1544f82640fa9fbaec44023800713db`, chain 9745)
- UnnamedContract (`0xa5e0a9f506c5e1e2d0546161fa81c0d4051dfc3b`, chain 9745)
- FarmRegistry (`0xf5f2718708f471e43968271956cc01aaa8c46119`, chain 1)
- InfiniFiOFT (`0x60b14ec49874af1ba471685cb11132101aebdf09`, chain 56)
- InfiniFiOFT (`0x9fa1202516916534ade66962ee91410d559f1c10`, chain 56)
- LockedPositionToken (`0x12b004719fb632f1e7c010c6f5d6009fb4258442`, chain 1)
- LockedPositionToken (`0x3a744a6b57984eb62aeb36eb6501d268372cf8bb`, chain 1)
- LockedPositionToken (`0x3d360ab96b942c1251ab061178f731efebc2d644`, chain 1)
- LockedPositionToken (`0x66bcf6151d5558afb47c38b20663589843156078`, chain 1)
- LockedPositionToken (`0xb06cc4548febff3d66a680f9c516381c79bc9707`, chain 1)
- LockedPositionToken (`0xbb5ca732fafed8870f9c0e8406ad707939c912e1`, chain 1)
- LockedPositionToken (`0xbd3f9814eb946e617f1d774a6762cdbec0bf087a`, chain 1)
- LockedPositionToken (`0xd15fbf48c6dddadc9ef0693b060d80af51cc26d5`, chain 1)
- LockedPositionToken (`0xed030a37ec6eb308a416dc64dd4b649a2bbe4fcd`, chain 1)
- LockedPositionToken (`0xed2a360ffdc1ed4f8df0bd776a1ffbbe06444a0a`, chain 1)
- LockedPositionToken (`0xf0c4a78febf4062aed39a02be8a4c72e9857d7d1`, chain 1)
- LockedPositionToken (`0xf1839becaf586814d022f16cdb3504ff8d8ff361`, chain 1)
- LockedPositionToken (`0xf68b95b7e851170c0e5123a3249dd1ca46215085`, chain 1)
- ManualRebalancer (`0x160300d5c1ea377b823127d2d6668d43dd5c1d8a`, chain 1)
- ReceiptToken (`0x48f9e38f3070ad8945dfeae3fa70987722e3d89c`, chain 1)
- ReceiptToken (`0x626c23fe62f5c3a45fe0f1e79ea577bd7d134d54`, chain 9745)
- SafeProxy (`0x80608f852d152024c0a2087b16939235fec2400c`, chain 1)
- StakedToken (`0xdbdc1ef57537e34680b898e1febd3d68c7389bcb`, chain 1)
- StakedToken (`0xe335abb943ecf2d7555d0f732ecc19ce79c39afd`, chain 9745)
- Timelock (`0x3d18480cc32b6ab3b833dcabd80e76cfd41c48a9`, chain 1)
- Timelock (`0x4b174afbed7b98ba01f50e36109eee5e6d327c32`, chain 1)

## Contract Surface Quality

- Logic-topography rows: 32; live-surface rows included: 32 (29 live, 3 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 29/38 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 0/27 (0.0%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 29 own, 5 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 130 discovered implementations shown in the inventory but excluded from coverage (5 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 9
- Confirmed-live implementations: 29 of 164 unique; 135 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 0/94
- Verified + Unaudited implementations: 94
- Verified by bytecode match: 0
- Unverified implementations: 70
- Unique implementations: 164
- Raw deployments: 232
- Audits discovered: 12 (12 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2024-10 (aging)
- Audit staleness (calendar age): 0 fresh, 2 aging, 10 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (94)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| Accounting | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x7a5c5dba4fbd0e1e1a2ecdbe752fae55f6e842b3`; plasma `0xdeb0284d7120d3005cb06961cb1e651942ce765f` | ⚠️ Unaudited |
| ActionAddRemoveLiqV3 | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 1 | ethereum | unit-242652 | `0x888888888889758f76e7103c6cbf23abbf58f946` | ⚠️ Unaudited |
| AfterMintHook | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | plasma | n/a | 2 deployments: ethereum `0xa5e274e6c2abbd30e3a94e1a2df7e6f5944797a8`; plasma `0x1b286d4c12c9f7cc8a49836bd88d33ae804de53d` | ⚠️ Unaudited |
| AllocationVoting | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | plasma | n/a | 2 deployments: ethereum `0x49fa678bb8b2f5f8089493a6f93e1bb8500ff853`; plasma `0x13dd8034601ae91d1abcef4632083474fb043bb6` | ⚠️ Unaudited |
| AssetsChecker | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x16a139da0405eb9777ade4f5f0cc2416e5cd8619` | ⚠️ Unaudited |
| AutoFarm | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x15dc4c43b0d3283ae4f193bb8ac97181f4bbb56c`; ethereum `0x92c3a5f226a47a44ad73f04663b305372cc665bf` | ⚠️ Unaudited |
| BeforeRedeemHook | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | plasma | n/a | 2 deployments: ethereum `0x4b2bfe49829de3632449928507452ee667f61395`; plasma `0x44f9499122a7434252aa7df727d9552c2ba9c03b` | ⚠️ Unaudited |
| CapFarm | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x31fb2575d5ab1c370b0a612ac9ab569f2924c731`; ethereum `0x35f9ebdc02f936e199826778bc06a13272a06b87`; ethereum `0xac21b22b5aeb11bc32de4ecf59e4538fca48b694` | ⚠️ Unaudited |
| CoWSwapFarm | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x08ce17d83b3bebb1c43a55a054d656ecbebaffa7` | ⚠️ Unaudited |
| EmergencyWithdrawal | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0xa406afc7967c63c5c454ad1f0e0db9a761fe26e9`; plasma `0xcb4416118b0f354ed3895d1295e8c2990bdd44af` | ⚠️ Unaudited |
| ERC4626Farm | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 8 deployments: ethereum `0x05b9e728e93d090aa896b96d96ad215b6ca97e93`; ethereum `0x082de04c51d3d5332af2d046923496b05ce00bb3`; ethereum `0x1484d6c834ac99b9e50b17e57f85c8603f65657a`; ethereum `0x1d2ed96cd1f9f89668978b8cf52b5f2e4eed9f5c`; ethereum `0x4f6900bbb52cd514a7eb41adc6b367de7919ad88`; ethereum `0x6fbc446f25ab5141c4f7e7711e52dfc0ada407a5`; ethereum `0xbafdc42c84da2a79c5e72f25f610d84452e8d527`; ethereum `0xf7f724fdb7562850e2b068e0a52ec79a768ab884` | ⚠️ Unaudited |
| ERC4626FarmWithMaturity | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x76d2e84009dae457f8667d823c7c96e9a7c35b78` | ⚠️ Unaudited |
| ERC4626Oracle | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 7 deployments: ethereum `0x36cc593972ec3dafa1b3344736d770962e245b2a`; ethereum `0x41646dd6d8a4675a1765916c208fe4092ff66772`; ethereum `0x6492435abc7b42f9fb213969df0a32ad0994d95d`; ethereum `0xcb15a0edcddb190fb4ced6c4972d0564d6f7d4a7`; ethereum `0xe2d3f6fa4c4586ced53e1d286e8b1f43334b54d8`; ethereum `0xef985c1248c46b186959fcd26d4618c1cf6889c2`; ethereum `0xfa503f5fa3967789922e35b3a03fd56076a0440e` | ⚠️ Unaudited |
| EUSDEMigrationFarm | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6cb48b801f449ba52c1a3477484f4405235af976` | ⚠️ Unaudited |
| FarmRegistry | unknown | project_anchor | own_supporting | 0 | ethereum | unit-242641 | `0xf5f2718708f471e43968271956cc01aaa8c46119` | ⚠️ Unaudited |
| FarmRegistry | registry | non_address_book | non_address_book_inventory (excluded) | 0 | plasma | n/a | `0x73ab24e6b1e4e106cf95f0ffd393f39365c88861` | ⚠️ Unaudited |
| FixedPriceOracle | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 13 deployments: ethereum `0x0b832573f9aef9f045fa559366223abb086c1cb5`; ethereum `0x10f8ef5d2d5537fd0b4b0176aabe8111fd864dab`; ethereum `0x2630bbf66fc421e42dfffd370994fe1938d05083`; ethereum `0x3d627013d54388b3fc5a9de153c4544c0bc4af13`; ethereum `0x51fc27c676c25c388735a51b760d64fe0acff758`; ethereum `0x64b32f8198a4c89b1f10de7470ff281513e2e8f5`; ethereum `0x7ab218b82f77d00097766b7fea4df95a83753524`; ethereum `0x8abc952f91db6695e765744ae340bc5ea4b344c1`; ethereum `0xa532845947a980cb59cc7b3bed86cb5693bd4bc1`; ethereum `0xb2dbfece426479f8605d7c9154a55e0657d46790`; ethereum `0xb52af3f6d9e06590a0c3607ee60f7f299c745775`; ethereum `0xd15270f54807880c0e4ed6e076463b3f00a3a79b`; ethereum `0xd16bf32f67420dc60732c3cfc43103243fc3f3bf` | ⚠️ Unaudited |
| FluidRewardsClaimer | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | plasma | n/a | 3 deployments: ethereum `0xd0ec80032c0da717bd78b9569321d9069365241e`; plasma `0x7ba3bc4e47f9c44847caf58ba2e3957d984995a5`; plasma `0xc1fe7faaa61e2fc60cb6ff99cf5beedacaeb9bae` | ⚠️ Unaudited |
| FxSaveFarm | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc9c06c49ed83d12bca88bed999d4920f049beabc` | ⚠️ Unaudited |
| GauntletAlphaFarm | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2f59b7ee5aa0f7834b4526a015bc506a4c608c25` | ⚠️ Unaudited |
| GPv2Settlement | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | unit-242628 | `0x9008d19f58aabd9ed0d60971565aa8510560ab41` | ⚠️ Unaudited |
| InfiniFiCore | unknown | project_anchor | own_supporting | 0 | ethereum | unit-242643 | `0xf6d48735eccf12bdc1df2674b1ce3fcb3bd25490` | ⚠️ Unaudited |
| InfiniFiCore | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | plasma | n/a | 2 deployments: plasma `0x160300d5c1ea377b823127d2d6668d43dd5c1d8a`; plasma `0x4b174afbed7b98ba01f50e36109eee5e6d327c32` | ⚠️ Unaudited |
| InfiniFiGatewayV1 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7954d563cbd9ee121a77805bce5fe3c44f296d33` | ⚠️ Unaudited |
| InfiniFiGatewayV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd04b37f673c42baa46923fe74a830bae721fb41f` | ⚠️ Unaudited |
| InfiniFiGatewayV3 | unknown | project_anchor | own_supporting | 1 | ethereum | unit-242653 | 2 deployments: ethereum `0x3f04b65ddbd87f9ce0a2e7eb24d80e7fb87625b5`; ethereum `0xb44e494535a8fc1f0081f4f9289bcc7c57fbffb6` | ⚠️ Unaudited |
| InfiniFiGatewayV3 | unknown | project_anchor | own_supporting | 1 | plasma | unit-242654 | 2 deployments: plasma `0x64d9c2fc3c1bd36fec425edd78b67dfc5dcc98a0`; plasma `0x7a3e701d651aa51963a024ac328c2cceb0578692` | ⚠️ Unaudited |
| InfiniFiMintOVaultComposer | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x322135e7783cae3c61d30865ad653d7012ecc22d`; ethereum `0x728fabc3072f18e82e2ab4dbe43b982e49714fad` | ⚠️ Unaudited |
| InfiniFiOFT | unknown | project_anchor | own_supporting | 0 | bsc | unit-242644 | `0x60b14ec49874af1ba471685cb11132101aebdf09` | ⚠️ Unaudited |
| InfiniFiOFT | unknown | project_anchor | own_supporting | 0 | bsc | unit-242645 | `0x9fa1202516916534ade66962ee91410d559f1c10` | ⚠️ Unaudited |
| InfiniFiOFTAdapter | adapter | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x5f2106bb2a5aba6a783dbf29c8d3b09c175bc3c0`; ethereum `0xdd1cb2e1aa483e1d94e3e22e70cfbb634fcb3005` | ⚠️ Unaudited |
| InfiniFiReceiptTokenSYAdapter | adapter | non_address_book | non_address_book_inventory (excluded) | 0 | plasma | n/a | `0xf8b24d22153d86af79681e949ec2efaf75120600` | ⚠️ Unaudited |
| InfiniFiStakedTokenSY | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | plasma | n/a | 2 deployments: plasma `0xabd98b466196ca3d29e0a2a7859e151a31fe83c7`; plasma `0xeb32a309405c72253d5db9ef28310a8ff56b6fd7` | ⚠️ Unaudited |
| InfiniFiStakeOVaultComposer | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x3f59f82cb359b9332acaa48f999f4c92f38ae245`; ethereum `0x6375d26dc05d6dddd6933c8ee36b903b801d71e9` | ⚠️ Unaudited |
| LevelFarm | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4be546155461d097a714ef2668893b0d10ca124c` | ⚠️ Unaudited |
| LevelOracle | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfbbc645d82cbba7c20c37e477ef9c0032d7d7e51` | ⚠️ Unaudited |
| LiquidationFarm | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x1ad60c683ea27bef74b2c27c221486880e07592a`; ethereum `0xda40ce7dddbe7d54a106d32575b2ccf41ddb1a11` | ⚠️ Unaudited |
| LockedPositionToken | token | project_anchor | own_supporting | 0 | ethereum | unit-242617 | `0x12b004719fb632f1e7c010c6f5d6009fb4258442` | ⚠️ Unaudited |
| LockedPositionToken | token | project_anchor | own_supporting | 0 | ethereum | unit-242620 | `0x3a744a6b57984eb62aeb36eb6501d268372cf8bb` | ⚠️ Unaudited |
| LockedPositionToken | token | project_anchor | own_supporting | 0 | ethereum | unit-242622 | `0x3d360ab96b942c1251ab061178f731efebc2d644` | ⚠️ Unaudited |
| LockedPositionToken | token | project_anchor | own_supporting | 0 | ethereum | unit-242626 | `0x66bcf6151d5558afb47c38b20663589843156078` | ⚠️ Unaudited |
| LockedPositionToken | token | project_anchor | own_supporting | 0 | ethereum | unit-242630 | `0xb06cc4548febff3d66a680f9c516381c79bc9707` | ⚠️ Unaudited |
| LockedPositionToken | token | project_anchor | own_supporting | 0 | ethereum | unit-242631 | `0xbb5ca732fafed8870f9c0e8406ad707939c912e1` | ⚠️ Unaudited |
| LockedPositionToken | token | project_anchor | own_supporting | 0 | ethereum | unit-242632 | `0xbd3f9814eb946e617f1d774a6762cdbec0bf087a` | ⚠️ Unaudited |
| LockedPositionToken | token | project_anchor | own_supporting | 0 | ethereum | unit-242634 | `0xd15fbf48c6dddadc9ef0693b060d80af51cc26d5` | ⚠️ Unaudited |
| LockedPositionToken | token | project_anchor | own_supporting | 0 | ethereum | unit-242637 | `0xed030a37ec6eb308a416dc64dd4b649a2bbe4fcd` | ⚠️ Unaudited |
| LockedPositionToken | token | project_anchor | own_supporting | 0 | ethereum | unit-242638 | `0xed2a360ffdc1ed4f8df0bd776a1ffbbe06444a0a` | ⚠️ Unaudited |
| LockedPositionToken | token | project_anchor | own_supporting | 0 | ethereum | unit-242639 | `0xf0c4a78febf4062aed39a02be8a4c72e9857d7d1` | ⚠️ Unaudited |
| LockedPositionToken | token | project_anchor | own_supporting | 0 | ethereum | unit-242640 | `0xf1839becaf586814d022f16cdb3504ff8d8ff361` | ⚠️ Unaudited |
| LockedPositionToken | token | project_anchor | own_supporting | 0 | ethereum | unit-242642 | `0xf68b95b7e851170c0e5123a3249dd1ca46215085` | ⚠️ Unaudited |
| LockingController | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x1d95cc100d6cd9c7bbdbd7cb328d99b3d6037ff7`; plasma `0x43c1c7399c8d54a82817b4ea3f79e6f68f448d1c` | ⚠️ Unaudited |
| ManualRebalancer | adapter | project_anchor | own_supporting | 0 | ethereum | unit-242618 | `0x160300d5c1ea377b823127d2d6668d43dd5c1d8a` | ⚠️ Unaudited |
| MapleFarm | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x5f9f597e020bb2b30e92180eee617f4f81a922f7`; ethereum `0x6e6e73093a944ff37cb189bce79a2c1de08c4acd`; ethereum `0xf56e946e92fef6a050f482c560b5f8dccb8163b3` | ⚠️ Unaudited |
| MaturedFarmCleaner | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x607b5ab25b2ed5575d296a1cafc3a17161d4fa56` | ⚠️ Unaudited |
| MerklRewardsClaimer | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | plasma | n/a | 2 deployments: plasma `0x7a67248a73f9763203d4cd0fc8ef1c22c1b661c6`; plasma `0x9b3bf077757e6fdce20ef02c4d25387000396754` | ⚠️ Unaudited |
| MetaAggregationRouterV2 | adapter | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | unit-242625 | `0x6131b5fae19ea4f9d964eac0408e4408b66337b5` | ⚠️ Unaudited |
| MidasFarm | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x7373a7ce3c023c56cb66747afbdf827627d31679`; ethereum `0xf4ea3ec87b1c254f17a2fb68164db0caf6c4cecf` | ⚠️ Unaudited |
| MigrationController | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5f5403656e4db95accf1064a714b1bce351839f8` | ⚠️ Unaudited |
| MinorRolesManager | governance | non_address_book | non_address_book_inventory (excluded) | 0 | plasma | n/a | 2 deployments: ethereum `0xa08bf802dcecd3c44e6420a52d5158867366be9b`; plasma `0x2c0dfada99dff7ada03952a39302a16be2c19fe7` | ⚠️ Unaudited |
| MintController | governance | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x49877d937b9a00d50557bdc3d87287b5c3a4c256`; plasma `0x6f8a9eb6516eae5b8b3f8cc95ae4c79f4c33bc66` | ⚠️ Unaudited |
| OracleFactory | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa2b300c5d0e9250f646b20ec924efad36d19ed91` | ⚠️ Unaudited |
| OracleLib | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x02176d640657740539f70eea98501ebbf1c10ecc` | ⚠️ Unaudited |
| OVault_iUSD_siUSD | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x6345d938a607b8f5da825d1670b4890f5aa47fef`; ethereum `0xea52ce3ef9c7dd8f02cac2e7ce39505e0159f3a3` | ⚠️ Unaudited |
| OVault_USDC_iUSD | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x5ddbdc875ae800b1d61cc8c49324f259ef55f105`; ethereum `0xefaf2b8b4e1548ecc8d7dc7692a1dc053c02ab00` | ⚠️ Unaudited |
| OVault_USDC_siUSD | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x6fac6ab52d43e11b04f1587db00d5240e86491f7`; ethereum `0xdc78ff2b9da22a4b369be9c7d64722e8930bf016` | ⚠️ Unaudited |
| PendleCamelotV1VolatileSY | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x239c7c530f194e9e00856b5c55a95d485f64c56e` | ⚠️ Unaudited |
| PendleInfinifiSIUSD | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x13dd8034601ae91d1abcef4632083474fb043bb6` | ⚠️ Unaudited |
| PLSmoother | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc324569141697045b9ede54b5d4623a691ed57a4` | ⚠️ Unaudited |
| PLSmootherHelper | periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x215c7fa0e620fce99ed4891bccb7523388b010b8` | ⚠️ Unaudited |
| PrimeBrokerFarm | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfd1ea12d29b90630b265dbbc6af88266d1a83de4` | ⚠️ Unaudited |
| ReceiptToken | token | project_anchor | own_supporting | 0 | ethereum | unit-242623 | `0x48f9e38f3070ad8945dfeae3fa70987722e3d89c` | ⚠️ Unaudited |
| ReceiptToken | token | project_anchor | own_supporting | 0 | plasma | unit-242648 | `0x626c23fe62f5c3a45fe0f1e79ea577bd7d134d54` | ⚠️ Unaudited |
| RedeemController | governance | non_address_book | non_address_book_inventory (excluded) | 0 | plasma | n/a | 2 deployments: ethereum `0xcb1747e89a43dedcf4a2b831a0d94859efec7601`; plasma `0xb6931f0a698f4f40cbe0d79045dc2ec223f2616d` | ⚠️ Unaudited |
| ReservoirFarm | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6f53c12243d2fe281cfdfc63601f8b4e713d86de` | ⚠️ Unaudited |
| ResolvOracle | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x862bf0f4d43bb892aeccd6e6c43f34549ad48171` | ⚠️ Unaudited |
| RWAEscrowFarm | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 5 deployments: ethereum `0x04d5521ac09f8823338e8163dd8badaee39f3271`; ethereum `0x277fdf6dc5c53c5c2828188da84b9593a50884c1`; ethereum `0x75b4d36302380099d94271bfc8bdd12b07ffad5f`; ethereum `0x9e5efc5f387d8661c1afb2469b7eef6972451852`; ethereum `0xe919c66475f2f30d285c768853e6b5b23ef181cf` | ⚠️ Unaudited |
| RWAEscrowRateManager | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x11f6fab3f4d8635880c3e80cbae8aef8136d4189` | ⚠️ Unaudited |
| Safe | unknown | project_anchor | own_supporting | 1 | ethereum | unit-242651 | `0x80608f852d152024c0a2087b16939235fec2400c` | ⚠️ Unaudited |
| sGHOFarm | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7e9aa426abc2d9006e8c9881754baa00a392158d` | ⚠️ Unaudited |
| StakedToken | token | project_anchor | own_supporting | 0 | ethereum | unit-242635 | `0xdbdc1ef57537e34680b898e1febd3d68c7389bcb` | ⚠️ Unaudited |
| StakedToken | token | project_anchor | own_supporting | 0 | plasma | unit-242650 | `0xe335abb943ecf2d7555d0f732ecc19ce79c39afd` | ⚠️ Unaudited |
| SwapFarmV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xeb32a309405c72253d5db9ef28310a8ff56b6fd7` | ⚠️ Unaudited |
| SwapFarmV2WithMaturity | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x75381e9bc6b908a2e9bc31a535fc48ceceac568e`; ethereum `0x84ff7ef9568807c93436f09e2e613de2af3fe4ee`; ethereum `0xe945de0d08e2f39b0740fe2d6e50fe2bb9751ea4` | ⚠️ Unaudited |
| TestOFT | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa90c9bae9b1a41ced9639a652ba4162a2079cb00` | ⚠️ Unaudited |
| Timelock | governance | project_anchor | own_supporting | 0 | ethereum | unit-242621 | `0x3d18480cc32b6ab3b833dcabd80e76cfd41c48a9` | ⚠️ Unaudited |
| Timelock | governance | project_anchor | own_supporting | 0 | ethereum | unit-242624 | `0x4b174afbed7b98ba01f50e36109eee5e6d327c32` | ⚠️ Unaudited |
| Timelock | governance | non_address_book | non_address_book_inventory (excluded) | 0 | plasma | n/a | 4 deployments: plasma `0x0c206b695d65aef7381a03352acf9fe2f48927a3`; plasma `0x3d18480cc32b6ab3b833dcabd80e76cfd41c48a9`; plasma `0xd105b91517905c34c38af9d6e0db4b77e9e71ae1`; plasma `0xd54c8fff9c362d952d982f2bf006aac211108b3b` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | plasma | n/a | 2 deployments: plasma `0xad8e0c5db0057370e143a6a20ee2720298af8b26`; plasma `0xec59c2fff7fba91f68a9563dfe84fd26edc70a9a` | ⚠️ Unaudited |
| UnstakeAndRedeemHelper | periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4f0122d43ab4893d5977fb0358b73cc178339dfe` | ⚠️ Unaudited |
| UnwindingModule | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x7092a43ae5407666c78dbea657a1891f42b3dfcc`; plasma `0xbf69a4a09423e7ac37d5c7da0cd14f277f752488` | ⚠️ Unaudited |
| YieldSharing | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9e8b926a0eb276eb380fb8282ea20c2a2faea967` | ⚠️ Unaudited |
| YieldSharingV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | plasma | n/a | 3 deployments: ethereum `0x1cb9ed33924741f500e739e38c3215a76cd1f579`; plasma `0x1330902050db4edac0d9d8ca33fdab5dbe986c9c`; plasma `0x9b5ae92eba3c383be073e3ff94613b2c33851282` | ⚠️ Unaudited |
| YieldSharingV3 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x0d5dbf208a9a7540018d204a9a0ad08a091407e5`; ethereum `0x90e91f5bfd9a0a4d925bf30b512add8cd2bbae3b` | ⚠️ Unaudited |
| YieldSharingV3 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf28a28b4d14fa6614fe5270d147aa4a7df5642d9` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (70)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| PendleInfinifiSIUSD | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x9f30507c264cc6eb5be35b18ff9ad7b4539aa920` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1b449b1e39190de7e6017bdbde949a6ffea0f685` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1d5702c6d7eb30e42a8c94b8db7ea2e8444a37fd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x20c000000000000000000000048c8f36df1c9a4a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x20c000000000000000000000ab02d39df30bd17e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4de0b0fae1544f82640fa9fbaec44023800713db` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x555b6ee8fab3dfdbcca9121721c435fd4c7a1fd1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x60b14ec49874af1ba471685cb11132101aebdf09` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x626c23fe62f5c3a45fe0f1e79ea577bd7d134d54` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x64d9c2fc3c1bd36fec425edd78b67dfc5dcc98a0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9a0db2aac4e3a6a0324021d3a3fe51ddb18bb885` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | unit-242629 | `0x9a9fa8338dd5e5b2188006f1cd2ef26d921650c2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9fa1202516916534ade66962ee91410d559f1c10` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa11ce67cd9ad7295948a681617aa81e0523e0679` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa5e0a9f506c5e1e2d0546161fa81c0d4051dfc3b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbd7c594305c60111470cb83d5871b09f112fd268` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | unit-242633 | `0xc92e8bdf79f0507f65a392b0ab4667716bfe0110` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcaa00aaf6fbc769d627d825b4faedc3aad880597` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcde3eb49d53d932c605efbc1bc425c6affa5eac2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd1b47490209ccb7a806e8a45d9479490c040abf4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe335abb943ecf2d7555d0f732ecc19ce79c39afd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf294ad0e17e66cd82c6a0c7708cf909db6c136fc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfa339b5a3ad03fd9ff048f574636b60d0fc7538a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | plasma | n/a | `0x05266d4854f87a3f3ebb55579baea6f2dd59863c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | plasma | n/a | `0x0a99b6f01284be43d798c03a8834a6363511ac04` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | plasma | n/a | `0x0afcd255ed12b96e8e895a4b9f8600e56c1430c1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | plasma | n/a | `0x0cac0564723c4ed39468b309f7d5bf464b1526a7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | plasma | n/a | `0x0e09aabaa9a67ce863b129e4f44c0ecbb261cb99` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | plasma | n/a | `0x10f8ef5d2d5537fd0b4b0176aabe8111fd864dab` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | plasma | n/a | `0x119c127f3b4807c58d65a1102f215b5b0c29035c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | plasma | n/a | `0x132c455d1e45670b85d47c49efd3409018dccf1b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | plasma | n/a | `0x19f2410f89d098c8e1d2e39d75f3e4c6a351b076` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | plasma | n/a | `0x1cb58c5e90e4ee7ce77849dc9c1748f2bd36b050` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | plasma | n/a | `0x1d2ed96cd1f9f89668978b8cf52b5f2e4eed9f5c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | plasma | n/a | `0x227f2345f2e996acd783425f0be09647a8d6dbac` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | plasma | n/a | `0x2320eb969ad45a7d9d513095065cd377c6044445` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | plasma | n/a | `0x234546edbc8bda7ae496a3ed6863640c407a0ceb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | plasma | n/a | `0x2ab982944932df7b593990c9d15aee55a016dd03` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | plasma | n/a | `0x2e13c3174535883ff2f9d3c2cd890b9041f8a19f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | plasma | n/a | `0x3f04b65ddbd87f9ce0a2e7eb24d80e7fb87625b5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | plasma | n/a | `0x4167c3f75673b7a4c6baba181bfe7af5e4c78fb3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | plasma | n/a | `0x43cc956052d5693ef479eb21a80bfdcfe7d361e5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | plasma | n/a | `0x456ab33f76d4fdc9521711e10f6325a400410dbe` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | plasma | n/a | `0x4b2bfe49829de3632449928507452ee667f61395` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | plasma | unit-242647 | `0x4de0b0fae1544f82640fa9fbaec44023800713db` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | plasma | n/a | `0x5feaad299bf772505e79250ec58e28fdfdc52777` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | plasma | n/a | `0x60a0c87477fd50f0f721e3bc1fee924496fecab2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | plasma | n/a | `0x669345178b85f22a79e03c11189eaaddcc27c95c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | plasma | n/a | `0x6fbc446f25ab5141c4f7e7711e52dfc0ada407a5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | plasma | n/a | `0x7693b3212c69d70c10df2084ff2cae35587af86d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | plasma | n/a | `0x7954d563cbd9ee121a77805bce5fe3c44f296d33` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | plasma | n/a | `0x872909744199d544d65d0433ac34136d9d6e71ad` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | plasma | n/a | `0x8a98c453272e8b910da924ff0e93abdf2425ca6e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | plasma | n/a | `0x929335481ba086fd07d4a68b3669bc39d877842a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | plasma | n/a | `0x944637950bd8e8e7952eb68bde27ba9e56d1afa2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | plasma | n/a | `0x99015000b65f98e94f219531426d7cd6d9698eeb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | plasma | n/a | `0x9f30507c264cc6eb5be35b18ff9ad7b4539aa920` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | plasma | n/a | `0x9ff50aad2e153c87d3110b2c9877713b657356ba` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | plasma | n/a | `0xa2b300c5d0e9250f646b20ec924efad36d19ed91` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | plasma | n/a | `0xa4ad55dae871218d6782ab8daafeb243183ccdc7` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | plasma | unit-242649 | `0xa5e0a9f506c5e1e2d0546161fa81c0d4051dfc3b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | plasma | n/a | `0xac32d46601e38d7fd9e06fddb49eba3ef0f6eb25` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | plasma | n/a | `0xb5734d97df718f9d971054c3ac66f990e4ae2a81` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | plasma | n/a | `0xbfd5fc8deca3c6128bfce0fe46c25616811c3580` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | plasma | n/a | `0xcfdd5c03d640e4ecef25f32c12411f71b976a4f5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | plasma | n/a | `0xd91edc64f7d1d344c5955ba0516122ce8111bdb8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | plasma | n/a | `0xf31ec6894758d488c053086f928461064ce5c37b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | plasma | n/a | `0xf7f724fdb7562850e2b068e0a52ec79a768ab884` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | plasma | n/a | `0xfa10e328bc96664cc1ed143ef5bab64b23a3da4f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | plasma | n/a | `0xfc4909027681f9b07980b1582aba445233dc9497` | ❓ Unverified |

## Deployer Expansion Inventory

These rows are additive inventory from `project_contracts.discovery_source=deployer_expansion`; they do not change scope matching, coverage, or logic topography in this brief.

- Source: `project_contracts.discovery_source=deployer_expansion`
- Decision run: `deployer-candidate-production-20260712`
- Total contracts: 40
- Live contracts: 6
- Unknown liveness contracts: 34
- Source-verified contracts: 31
- Currently scope-matched contracts retained as-is: 0
- Classification counts: candidate auto own=1, candidate review=30, unverified unclassified=9

| Classification | Contract | Address-Book Class | Role | Liveness | Source | Decision | Deployer |
|---|---|---|---|---|---|---|---|
| candidate auto own | FarmRegistry<br>`0xf5f2718708f471e43968271956cc01aaa8c46119` | project_anchor | unknown | live | verified | automatic_own: fresh_structural_and_independent_ownership_match | `0xdecadac8778d088a30ee811b8cc4ee72ced9bf22` |
| candidate review | Accounting<br>`0x7a5c5dba4fbd0e1e1a2ecdbe752fae55f6e842b3` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xdecadac8778d088a30ee811b8cc4ee72ced9bf22` |
| candidate review | AfterMintHook<br>`0xa5e274e6c2abbd30e3a94e1a2df7e6f5944797a8` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xdecadac8778d088a30ee811b8cc4ee72ced9bf22` |
| candidate review | AllocationVoting<br>`0x49fa678bb8b2f5f8089493a6f93e1bb8500ff853` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xdecadac8778d088a30ee811b8cc4ee72ced9bf22` |
| candidate review | BeforeRedeemHook<br>`0x4b2bfe49829de3632449928507452ee667f61395` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xdecadac8778d088a30ee811b8cc4ee72ced9bf22` |
| candidate review | ERC4626Farm<br>`0x05b9e728e93d090aa896b96d96ad215b6ca97e93` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xdecadac8778d088a30ee811b8cc4ee72ced9bf22` |
| candidate review | ERC4626Farm<br>`0x1d2ed96cd1f9f89668978b8cf52b5f2e4eed9f5c` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xdecadac8778d088a30ee811b8cc4ee72ced9bf22` |
| candidate review | ERC4626Farm<br>`0xbafdc42c84da2a79c5e72f25f610d84452e8d527` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xdecadac8778d088a30ee811b8cc4ee72ced9bf22` |
| candidate review | ERC4626Farm<br>`0xf7f724fdb7562850e2b068e0a52ec79a768ab884` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xdecadac8778d088a30ee811b8cc4ee72ced9bf22` |
| candidate review | FixedPriceOracle<br>`0x2630bbf66fc421e42dfffd370994fe1938d05083` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xdecadac8778d088a30ee811b8cc4ee72ced9bf22` |
| candidate review | FixedPriceOracle<br>`0x51fc27c676c25c388735a51b760d64fe0acff758` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xdecadac8778d088a30ee811b8cc4ee72ced9bf22` |
| candidate review | FixedPriceOracle<br>`0x64b32f8198a4c89b1f10de7470ff281513e2e8f5` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xdecadac8778d088a30ee811b8cc4ee72ced9bf22` |
| candidate review | FixedPriceOracle<br>`0x8abc952f91db6695e765744ae340bc5ea4b344c1` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xdecadac8778d088a30ee811b8cc4ee72ced9bf22` |
| candidate review | FixedPriceOracle<br>`0xd15270f54807880c0e4ed6e076463b3f00a3a79b` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xdecadac8778d088a30ee811b8cc4ee72ced9bf22` |
| candidate review | InfiniFiCore<br>`0xf6d48735eccf12bdc1df2674b1ce3fcb3bd25490` | project_anchor | unknown | live | verified | review: no_fresh_structural_match | `0xdecadac8778d088a30ee811b8cc4ee72ced9bf22` |
| candidate review | InfiniFiGatewayV1<br>`0x7954d563cbd9ee121a77805bce5fe3c44f296d33` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xdecadac8778d088a30ee811b8cc4ee72ced9bf22` |
| candidate review | InfiniFiGatewayV2<br>`0xd04b37f673c42baa46923fe74a830bae721fb41f` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xdecadac8778d088a30ee811b8cc4ee72ced9bf22` |
| candidate review | InfiniFiGatewayV3<br>`0xb44e494535a8fc1f0081f4f9289bcc7c57fbffb6` | retained_scope_excluded_inventory | unknown | live | verified | review: no_fresh_structural_match | `0xdecadac8778d088a30ee811b8cc4ee72ced9bf22` |
| candidate review | LockingController<br>`0x1d95cc100d6cd9c7bbdbd7cb328d99b3d6037ff7` | non_address_book | unknown | unknown | verified | review: missing_independent_ownership_evidence | `0xdecadac8778d088a30ee811b8cc4ee72ced9bf22` |
| candidate review | MidasFarm<br>`0xf4ea3ec87b1c254f17a2fb68164db0caf6c4cecf` | non_address_book | unknown | unknown | verified | review: missing_independent_ownership_evidence | `0xdecadac8778d088a30ee811b8cc4ee72ced9bf22` |
| candidate review | MinorRolesManager<br>`0xa08bf802dcecd3c44e6420a52d5158867366be9b` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xdecadac8778d088a30ee811b8cc4ee72ced9bf22` |
| candidate review | TransparentUpgradeableProxy<br>`0x3f04b65ddbd87f9ce0a2e7eb24d80e7fb87625b5` | project_anchor | unknown | live | verified | review: no_fresh_structural_match | `0xdecadac8778d088a30ee811b8cc4ee72ced9bf22` |
| candidate review | TransparentUpgradeableProxy<br>`0x90e91f5bfd9a0a4d925bf30b512add8cd2bbae3b` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xdecadac8778d088a30ee811b8cc4ee72ced9bf22` |
| candidate review | UnwindingModule<br>`0x7092a43ae5407666c78dbea657a1891f42b3dfcc` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xdecadac8778d088a30ee811b8cc4ee72ced9bf22` |
| candidate review | YieldSharing<br>`0x9e8b926a0eb276eb380fb8282ea20c2a2faea967` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xdecadac8778d088a30ee811b8cc4ee72ced9bf22` |
| candidate review | YieldSharingV3<br>`0x0d5dbf208a9a7540018d204a9a0ad08a091407e5` | non_address_book | unknown | unknown | verified | review: missing_independent_ownership_evidence | `0xdecadac8778d088a30ee811b8cc4ee72ced9bf22` |
| candidate review | InfiniFiGatewayV3<br>`0x7a3e701d651aa51963a024ac328c2cceb0578692` | retained_scope_excluded_inventory | unknown | live | verified | review: no_fresh_structural_match | `0xdecadac8778d088a30ee811b8cc4ee72ced9bf22` |
| candidate review | InfiniFiStakedTokenSY<br>`0xabd98b466196ca3d29e0a2a7859e151a31fe83c7` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xdecadac8778d088a30ee811b8cc4ee72ced9bf22` |
| candidate review | TransparentUpgradeableProxy<br>`0x64d9c2fc3c1bd36fec425edd78b67dfc5dcc98a0` | project_anchor | unknown | live | verified | review: no_fresh_structural_match | `0xdecadac8778d088a30ee811b8cc4ee72ced9bf22` |
| candidate review | TransparentUpgradeableProxy<br>`0xeb32a309405c72253d5db9ef28310a8ff56b6fd7` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xdecadac8778d088a30ee811b8cc4ee72ced9bf22` |
| candidate review | TransparentUpgradeableProxy<br>`0xec59c2fff7fba91f68a9563dfe84fd26edc70a9a` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xdecadac8778d088a30ee811b8cc4ee72ced9bf22` |
| unverified unclassified | UnnamedContract<br>`0x1d5702c6d7eb30e42a8c94b8db7ea2e8444a37fd` | non_address_book | unknown | unknown | unverified | n/a | `0x1874028262f1f4b2dd1f2700a72ee8b9b7c69090` |
| unverified unclassified | UnnamedContract<br>`0x555b6ee8fab3dfdbcca9121721c435fd4c7a1fd1` | non_address_book | unknown | unknown | unverified | n/a | `0x1874028262f1f4b2dd1f2700a72ee8b9b7c69090` |
| unverified unclassified | UnnamedContract<br>`0x9a0db2aac4e3a6a0324021d3a3fe51ddb18bb885` | non_address_book | unknown | unknown | unverified | n/a | `0xdecadac8778d088a30ee811b8cc4ee72ced9bf22` |
| unverified unclassified | UnnamedContract<br>`0xbd7c594305c60111470cb83d5871b09f112fd268` | non_address_book | unknown | unknown | unverified | n/a | `0xdecadac8778d088a30ee811b8cc4ee72ced9bf22` |
| unverified unclassified | UnnamedContract<br>`0xcaa00aaf6fbc769d627d825b4faedc3aad880597` | non_address_book | unknown | unknown | unverified | n/a | `0x1874028262f1f4b2dd1f2700a72ee8b9b7c69090` |
| unverified unclassified | UnnamedContract<br>`0xcde3eb49d53d932c605efbc1bc425c6affa5eac2` | non_address_book | unknown | unknown | unverified | n/a | `0x1874028262f1f4b2dd1f2700a72ee8b9b7c69090` |
| unverified unclassified | UnnamedContract<br>`0xd1b47490209ccb7a806e8a45d9479490c040abf4` | non_address_book | unknown | unknown | unverified | n/a | `0x1874028262f1f4b2dd1f2700a72ee8b9b7c69090` |
| unverified unclassified | UnnamedContract<br>`0xf294ad0e17e66cd82c6a0c7708cf909db6c136fc` | non_address_book | unknown | unknown | unverified | n/a | `0x1874028262f1f4b2dd1f2700a72ee8b9b7c69090` |
| unverified unclassified | UnnamedContract<br>`0xad8e0c5db0057370e143a6a20ee2720298af8b26` | non_address_book | unknown | unknown | unverified | n/a | `0xdecadac8778d088a30ee811b8cc4ee72ced9bf22` |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [Ackee-Part 1.pdf](https://github.com/InfiniFi-Labs/infinifi-sy-adapter-fork/blob/main/audits/Ackee/Ackee-Part%201.pdf) | Ackee Blockchain | Audit | 2022-05 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 12 | high |
| [ChainSecurity.pdf](https://github.com/InfiniFi-Labs/infinifi-sy-adapter-fork/blob/main/audits/ChainSecurity.pdf) | ChainSecurity | Audit | 2024-08 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 28 | high |
| [Dedaub-Part 1.pdf](https://github.com/InfiniFi-Labs/infinifi-sy-adapter-fork/blob/main/audits/Dedaub/Dedaub-Part%201.pdf) | Dedaub | Audit | 2022-07 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 36 | high |
| [Spearbit.pdf](https://github.com/InfiniFi-Labs/infinifi-sy-adapter-fork/blob/main/audits/Spearbit.pdf) | Spearbit | Audit | 2024-07 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 13 | medium |
| [WatchPug-LpOracle.pdf](https://github.com/InfiniFi-Labs/infinifi-sy-adapter-fork/blob/main/audits/WatchPug/WatchPug-LpOracle.pdf) | WatchPug | Audit | 2023-05 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 4 | high |
| [WatchPug-Part 1 Follow Up 1.pdf](https://github.com/InfiniFi-Labs/infinifi-sy-adapter-fork/blob/main/audits/WatchPug/WatchPug-Part%201%20Follow%20Up%201.pdf) | WatchPug | Audit | 2022-07 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 10 | high |
| [WatchPug-Part 1 Follow Up 2.pdf](https://github.com/InfiniFi-Labs/infinifi-sy-adapter-fork/blob/main/audits/WatchPug/WatchPug-Part%201%20Follow%20Up%202.pdf) | WatchPug | Audit | 2022-07 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 5 | high |
| [WatchPug-Part 1.pdf](https://github.com/InfiniFi-Labs/infinifi-sy-adapter-fork/blob/main/audits/WatchPug/WatchPug-Part%201.pdf) | WatchPug | Audit | 2022-06 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 10 | high |
| [WatchPug-Part 2.pdf](https://github.com/InfiniFi-Labs/infinifi-sy-adapter-fork/blob/main/audits/WatchPug/WatchPug-Part%202.pdf) | WatchPug | Audit | 2022-08 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 8 | high |
| [WatchPug-PtOracle.pdf](https://github.com/InfiniFi-Labs/infinifi-sy-adapter-fork/blob/main/audits/WatchPug/WatchPug-PtOracle.pdf) | WatchPug | Audit | 2023-05 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 2 | high |
| [WatchPug-SparkLinearDiscountOracle.pdf](https://github.com/InfiniFi-Labs/infinifi-sy-adapter-fork/blob/main/audits/WatchPug/WatchPug-SparkLinearDiscountOracle.pdf) | WatchPug | Audit | 2024-10 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 1 | high |
| [WatchPug-sAPE.pdf](https://github.com/InfiniFi-Labs/infinifi-sy-adapter-fork/blob/main/audits/WatchPug/WatchPug-sAPE.pdf) | WatchPug | Audit | 2022-12 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 1 | high |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [4769] Ackee-Part 1.pdf — no match: Extracted contract names from System Overview and findings targets. Excluded files listed as out of scope. Audit date from document revision and citation.
- [4772] ChainSecurity.pdf — no match: All contract names extracted from the scope table in section 2.1. Audit date from cover page.
- [4773] Dedaub-Part 1.pdf — no match: All contracts listed in the scope section of the audit report.
- [4776] Spearbit.pdf — no match: No explicit scope section; contracts extracted from findings context. Audit date from report cover page.
- [4777] WatchPug-LpOracle.pdf — no match: The audit report covers Pendle LP Oracle smart contracts. The main contracts in scope are PendleLpOracleLib and PendlePtOracleLib, with dependencies OracleLib and MarketMathCore. The audit date is explicitly stated as May 26, 2023.
- [4778] WatchPug-Part 1 Follow Up 1.pdf — no match: Extracted contract names from findings and referenced files. No explicit scope section found; contracts are those mentioned in the audit findings.
- [4779] WatchPug-Part 1 Follow Up 2.pdf — no match: Extracted contract names from file paths and findings. Audit date from delivery date.
- [4780] WatchPug-Part 1.pdf — no match: Extracted 10 contract names from the audit report's scope and findings sections. The audit date is explicitly stated as June 28, 2022.
- [4781] WatchPug-Part 2.pdf — no match: Extracted contract names from the audit report's scope and findings sections. The report covers Pendle v2 (Part 2) with a focus on liquidity mining and voting contracts.
- [4782] WatchPug-PtOracle.pdf — no match: Audit report for Pendle PT Oracle project. Scope includes PendlePtOracle and PendlePtUsdChainlinkOracle contracts.
- [4783] WatchPug-SparkLinearDiscountOracle.pdf — no match: Only one contract in scope: PendleSparkLinearDiscountOracle. Audit date from delivery date.
- [4784] WatchPug-sAPE.pdf — no match: Only one contract, PendleApeStakingSY, is explicitly in scope. The report also references TokenHelper.sol but it is a library, not a contract in scope.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| Ackee-Part 1.pdf | SCYBase | unmatched — not counted | — | described in System Overview | no |
| Ackee-Part 1.pdf | RewardManager | unmatched — not counted | — | described in System Overview | no |
| Ackee-Part 1.pdf | SCYBaseWithRewards | unmatched — not counted | — | described in System Overview | no |
| Ackee-Part 1.pdf | PendleYieldContractFactory | unmatched — not counted | — | described in System Overview | no |
| Ackee-Part 1.pdf | PendleYieldToken | unmatched — not counted | — | described in System Overview | no |
| Ackee-Part 1.pdf | PendlePrincipalToken | unmatched — not counted | — | described in System Overview | no |
| Ackee-Part 1.pdf | PendleMarketFactory | unmatched — not counted | — | described in System Overview | no |
| Ackee-Part 1.pdf | PendleMarket | unmatched — not counted | — | described in System Overview | no |
| Ackee-Part 1.pdf | PendleRouter | unmatched — not counted | — | described in System Overview | no |
| Ackee-Part 1.pdf | PendleAaveV3SCY | unmatched — not counted | — | finding M1 target | no |
| Ackee-Part 1.pdf | Math | unmatched — not counted | — | finding M2 target | no |
| Ackee-Part 1.pdf | MarketMathAux | unmatched — not counted | — | finding I2 mentions swapScyForExactPt in MarketMathAux | no |
| ChainSecurity.pdf | PendlePrincipalToken | unmatched — not counted | — | listed in scope table | no |
| ChainSecurity.pdf | InterestManagerYT | unmatched — not counted | — | listed in scope table | no |
| ChainSecurity.pdf | PendleYieldToken | unmatched — not counted | — | listed in scope table | no |
| ChainSecurity.pdf | PendleYieldContractFactory | unmatched — not counted | — | listed in scope table | no |
| ChainSecurity.pdf | PendleERC20Permit | unmatched — not counted | — | listed in scope table | no |
| ChainSecurity.pdf | PendleERC20 | unmatched — not counted | — | listed in scope table | no |
| ChainSecurity.pdf | MiniHelpers | unmatched — not counted | — | listed in scope table | no |
| ChainSecurity.pdf | TokenHelper | unmatched — not counted | — | listed in scope table | no |
| ChainSecurity.pdf | Errors | unmatched — not counted | — | listed in scope table | no |
| ChainSecurity.pdf | LogExpMath | unmatched — not counted | — | listed in scope table | no |
| ChainSecurity.pdf | Math | unmatched — not counted | — | listed in scope table | no |
| ChainSecurity.pdf | BoringOwnableUpgradeable | unmatched — not counted | — | listed in scope table | no |
| ChainSecurity.pdf | ArrayLib | unmatched — not counted | — | listed in scope table | no |
| ChainSecurity.pdf | OracleLib | unmatched — not counted | — | listed in scope table | no |
| ChainSecurity.pdf | PendleMarketFactory | unmatched — not counted | — | listed in scope table | no |
| ChainSecurity.pdf | PendleGauge | unmatched — not counted | — | listed in scope table | no |
| ChainSecurity.pdf | PendleMarket | unmatched — not counted | — | listed in scope table | no |
| ChainSecurity.pdf | MarketMathCore | unmatched — not counted | — | listed in scope table | no |
| ChainSecurity.pdf | SYBase | unmatched — not counted | — | listed in scope table | no |
| ChainSecurity.pdf | SYBaseWithRewards | unmatched — not counted | — | listed in scope table | no |
| ChainSecurity.pdf | PYIndex | unmatched — not counted | — | listed in scope table | no |
| ChainSecurity.pdf | SYUtils | unmatched — not counted | — | listed in scope table | no |
| ChainSecurity.pdf | PendleWstEthSY | unmatched — not counted | — | listed in scope table | no |
| ChainSecurity.pdf | RewardManager | unmatched — not counted | — | listed in scope table | no |
| ChainSecurity.pdf | RewardManagerAbstract | unmatched — not counted | — | listed in scope table | no |
| ChainSecurity.pdf | PendleLpOracleLib | unmatched — not counted | — | listed in scope table | no |
| ChainSecurity.pdf | PendlePtOracle | unmatched — not counted | — | listed in scope table | no |
| ChainSecurity.pdf | PendlePtOracleLib | unmatched — not counted | — | listed in scope table | no |
| Dedaub-Part 1.pdf | PendleJoeSwapHelperUpg | unmatched — not counted | — | listed in scope | no |
| Dedaub-Part 1.pdf | SCYUtils | unmatched — not counted | — | listed in scope | no |
| Dedaub-Part 1.pdf | SCYIndex | unmatched — not counted | — | listed in scope | no |
| Dedaub-Part 1.pdf | MiniDeployer | unmatched — not counted | — | listed in scope | no |
| Dedaub-Part 1.pdf | ArrayLib | unmatched — not counted | — | listed in scope | no |
| Dedaub-Part 1.pdf | TokenHelper | unmatched — not counted | — | listed in scope | no |
| Dedaub-Part 1.pdf | LibRLP | unmatched — not counted | — | listed in scope | no |
| Dedaub-Part 1.pdf | LogExpMath | unmatched — not counted | — | listed in scope | no |
| Dedaub-Part 1.pdf | MarketApproxLib | unmatched — not counted | — | listed in scope | no |
| Dedaub-Part 1.pdf | Math | unmatched — not counted | — | listed in scope | no |
| Dedaub-Part 1.pdf | MarketMathCore | unmatched — not counted | — | listed in scope | no |
| Dedaub-Part 1.pdf | PendleMarket | unmatched — not counted | — | listed in scope | no |
| Dedaub-Part 1.pdf | PendleMarketFactory | unmatched — not counted | — | listed in scope | no |
| Dedaub-Part 1.pdf | ActionCore | unmatched — not counted | — | listed in scope | no |
| Dedaub-Part 1.pdf | ActionYT | unmatched — not counted | — | listed in scope | no |
| Dedaub-Part 1.pdf | ActionCallback | unmatched — not counted | — | listed in scope | no |
| Dedaub-Part 1.pdf | ActionSCYAndPTBase | unmatched — not counted | — | listed in scope | no |
| Dedaub-Part 1.pdf | CallbackHelper | unmatched — not counted | — | listed in scope | no |
| Dedaub-Part 1.pdf | ActionSCYAndPYBase | unmatched — not counted | — | listed in scope | no |
| Dedaub-Part 1.pdf | ActionSCYAndYTBase | unmatched — not counted | — | listed in scope | no |
| Dedaub-Part 1.pdf | PendleERC20 | unmatched — not counted | — | listed in scope | no |
| Dedaub-Part 1.pdf | PendlePrincipalToken | unmatched — not counted | — | listed in scope | no |
| Dedaub-Part 1.pdf | PendleYieldContractFactory | unmatched — not counted | — | listed in scope | no |
| Dedaub-Part 1.pdf | PendleYieldToken | unmatched — not counted | — | listed in scope | no |
| Dedaub-Part 1.pdf | PendleRouter | unmatched — not counted | — | listed in scope | no |
| Dedaub-Part 1.pdf | SCYBase | unmatched — not counted | — | listed in scope | no |
| Dedaub-Part 1.pdf | RewardManager | unmatched — not counted | — | listed in scope | no |
| Dedaub-Part 1.pdf | SCYBaseWithRewards | unmatched — not counted | — | listed in scope | no |
| Dedaub-Part 1.pdf | PendleBtrflySCY | unmatched — not counted | — | listed in scope | no |
| Dedaub-Part 1.pdf | PendleWstEthSCY | unmatched — not counted | — | listed in scope | no |
| Dedaub-Part 1.pdf | PendleERC4626SCY | unmatched — not counted | — | listed in scope | no |
| Dedaub-Part 1.pdf | PendleQiTokenSCY | unmatched — not counted | — | listed in scope | no |
| Dedaub-Part 1.pdf | PendleYearnVaultScy | unmatched — not counted | — | listed in scope | no |
| Dedaub-Part 1.pdf | PendleAaveV3SCY | unmatched — not counted | — | listed in scope | no |
| Dedaub-Part 1.pdf | PermissionsV2Upg | unmatched — not counted | — | listed in scope | no |
| Dedaub-Part 1.pdf | PendleGovernanceManager | unmatched — not counted | — | listed in scope | no |
| Spearbit.pdf | RewardManagerAbstract | unmatched — not counted | — | mentioned in finding context | no |
| Spearbit.pdf | PendleCamelotV1VolatileSY | unmatched — not counted | — | mentioned in finding context | no |
| Spearbit.pdf | PendleYieldToken | unmatched — not counted | — | mentioned in finding context | no |
| Spearbit.pdf | RewardManager | unmatched — not counted | — | mentioned in finding context | no |
| Spearbit.pdf | InterestManagerYT | unmatched — not counted | — | mentioned in finding context | no |
| Spearbit.pdf | MarketMathCore | unmatched — not counted | — | mentioned in finding context | no |
| Spearbit.pdf | PendleLpOracleLib | unmatched — not counted | — | mentioned in finding context | no |
| Spearbit.pdf | PendlePtOracleLib | unmatched — not counted | — | mentioned in finding context | no |
| Spearbit.pdf | OracleLib | unmatched — not counted | — | mentioned in finding context | no |
| Spearbit.pdf | PYIndex | unmatched — not counted | — | mentioned in finding context | no |
| Spearbit.pdf | SYUtils | unmatched — not counted | — | mentioned in finding context | no |
| Spearbit.pdf | PMath | unmatched — not counted | — | mentioned in finding context | no |
| Spearbit.pdf | LogExpMath | unmatched — not counted | — | mentioned in finding context | no |
| WatchPug-LpOracle.pdf | PendleLpOracleLib | unmatched — not counted | — | Listed in scope and findings reference this file. | no |
| WatchPug-LpOracle.pdf | PendlePtOracleLib | unmatched — not counted | — | Listed in scope and findings reference this file. | no |
| WatchPug-LpOracle.pdf | OracleLib | unmatched — not counted | — | Referenced in finding WP-I2. | no |
| WatchPug-LpOracle.pdf | MarketMathCore | unmatched — not counted | — | Referenced in findings as a dependency. | no |
| WatchPug-Part 1 Follow Up 1.pdf | PendleYearnVaultScy | unmatched — not counted | — | Listed in findings H1, L2, H3 | no |
| WatchPug-Part 1 Follow Up 1.pdf | PendleQiTokenSCY | unmatched — not counted | — | Listed in finding L2 | no |
| WatchPug-Part 1 Follow Up 1.pdf | PendleYieldToken | unmatched — not counted | — | Listed in findings M4, H7, G8 | no |
| WatchPug-Part 1 Follow Up 1.pdf | ActionSCYAndYTBase | unmatched — not counted | — | Listed in finding L5 | no |
| WatchPug-Part 1 Follow Up 1.pdf | ActionCallback | unmatched — not counted | — | Listed in findings L6, H7 | no |
| WatchPug-Part 1 Follow Up 1.pdf | SCYBase | unmatched — not counted | — | Referenced in findings L2 | no |
| WatchPug-Part 1 Follow Up 1.pdf | SCYBaseWithRewards | unmatched — not counted | — | Referenced in finding L2 | no |
| WatchPug-Part 1 Follow Up 1.pdf | SCYUtils | unmatched — not counted | — | Referenced in findings H1, L6 | no |
| WatchPug-Part 1 Follow Up 1.pdf | RewardManagerAbstract | unmatched — not counted | — | Referenced in findings M4 | no |
| WatchPug-Part 1 Follow Up 1.pdf | PendleQiTokenHelper | unmatched — not counted | — | Referenced in finding L2 | no |
| WatchPug-Part 1 Follow Up 2.pdf | PendleYieldToken | unmatched — not counted | — | listed in scope and findings | no |
| WatchPug-Part 1 Follow Up 2.pdf | PendleRouter | unmatched — not counted | — | listed in scope and findings | no |
| WatchPug-Part 1 Follow Up 2.pdf | ActionCallback | unmatched — not counted | — | listed in scope and findings | no |
| WatchPug-Part 1 Follow Up 2.pdf | PendleMarket | unmatched — not counted | — | listed in scope and findings | no |
| WatchPug-Part 1 Follow Up 2.pdf | SCYIndex | unmatched — not counted | — | listed in scope and findings | no |
| WatchPug-Part 1.pdf | PendleQiTokenSCY | unmatched — not counted | — | Listed in scope and findings (WP-H0, WP-H5) | no |
| WatchPug-Part 1.pdf | SCYBase | unmatched — not counted | — | Listed in scope and findings (WP-H0, WP-H5) | no |
| WatchPug-Part 1.pdf | PendleYieldContractFactory | unmatched — not counted | — | Listed in scope and finding WP-I1 | no |
| WatchPug-Part 1.pdf | PendleYieldToken | unmatched — not counted | — | Listed in scope and findings (WP-G2, WP-I3) | no |
| WatchPug-Part 1.pdf | PendleERC4626SCY | unmatched — not counted | — | Listed in scope and finding WP-I3 | no |
| WatchPug-Part 1.pdf | PendleYearnVaultScy | unmatched — not counted | — | Listed in scope and finding WP-H4 | no |
| WatchPug-Part 1.pdf | PendleMarket | unmatched — not counted | — | Listed in scope and finding WP-L6 | no |
| WatchPug-Part 1.pdf | MarketMathCore | unmatched — not counted | — | Listed in scope and findings (WP-I7, WP-G10) | no |
| WatchPug-Part 1.pdf | ActionSCYAndPTBase | unmatched — not counted | — | Listed in scope and finding WP-I7 | no |
| WatchPug-Part 1.pdf | RewardManager | unmatched — not counted | — | Listed in scope and finding WP-I9 | no |
| WatchPug-Part 2.pdf | PendleVotingControllerUpg | unmatched — not counted | — | Listed in scope and findings (WP-M1, WP-L5, WP-I11) | no |
| WatchPug-Part 2.pdf | VotingControllerStorageUpg | unmatched — not counted | — | Listed in scope and findings (WP-M1, WP-I4) | no |
| WatchPug-Part 2.pdf | VotingEscrowPendleMainchain | unmatched — not counted | — | Listed in scope and findings (WP-L2, WP-G8, WP-I10) | no |
| WatchPug-Part 2.pdf | PendleGaugeControllerBaseUpg | unmatched — not counted | — | Listed in scope and findings (WP-I3, WP-I9) | no |
| WatchPug-Part 2.pdf | PendleMarketFactory | unmatched — not counted | — | Listed in scope and findings (WP-I4) | no |
| WatchPug-Part 2.pdf | PendleGauge | unmatched — not counted | — | Listed in scope and findings (WP-I6, WP-G7) | no |
| WatchPug-Part 2.pdf | CelerSenderUpg | unmatched — not counted | — | Listed in scope and findings (WP-I10, WP-I11) | no |
| WatchPug-Part 2.pdf | PendleMarket | unmatched — not counted | — | Listed in scope and findings (WP-I12) | no |
| WatchPug-PtOracle.pdf | PendlePtOracle | unmatched — not counted | — | listed in scope and finding references | no |
| WatchPug-PtOracle.pdf | PendlePtUsdChainlinkOracle | unmatched — not counted | — | finding references | no |
| WatchPug-SparkLinearDiscountOracle.pdf | PendleSparkLinearDiscountOracle | unmatched — not counted | — | listed in scope table and referenced in findings | no |
| WatchPug-sAPE.pdf | PendleApeStakingSY | unmatched — not counted | — | listed in scope and findings | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | `0xf5f2718708f471e43968271956cc01aaa8c46119` | FarmRegistry | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xf6d48735eccf12bdc1df2674b1ce3fcb3bd25490` | InfiniFiCore | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x3f04b65ddbd87f9ce0a2e7eb24d80e7fb87625b5` | InfiniFiGatewayV3 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| plasma | `0x64d9c2fc3c1bd36fec425edd78b67dfc5dcc98a0` | InfiniFiGatewayV3 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0x60b14ec49874af1ba471685cb11132101aebdf09` | InfiniFiOFT | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0x9fa1202516916534ade66962ee91410d559f1c10` | InfiniFiOFT | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x12b004719fb632f1e7c010c6f5d6009fb4258442` | LockedPositionToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x3a744a6b57984eb62aeb36eb6501d268372cf8bb` | LockedPositionToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x3d360ab96b942c1251ab061178f731efebc2d644` | LockedPositionToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x66bcf6151d5558afb47c38b20663589843156078` | LockedPositionToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xb06cc4548febff3d66a680f9c516381c79bc9707` | LockedPositionToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xbb5ca732fafed8870f9c0e8406ad707939c912e1` | LockedPositionToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xbd3f9814eb946e617f1d774a6762cdbec0bf087a` | LockedPositionToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xd15fbf48c6dddadc9ef0693b060d80af51cc26d5` | LockedPositionToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xed030a37ec6eb308a416dc64dd4b649a2bbe4fcd` | LockedPositionToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xed2a360ffdc1ed4f8df0bd776a1ffbbe06444a0a` | LockedPositionToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xf0c4a78febf4062aed39a02be8a4c72e9857d7d1` | LockedPositionToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xf1839becaf586814d022f16cdb3504ff8d8ff361` | LockedPositionToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xf68b95b7e851170c0e5123a3249dd1ca46215085` | LockedPositionToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x160300d5c1ea377b823127d2d6668d43dd5c1d8a` | ManualRebalancer | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x48f9e38f3070ad8945dfeae3fa70987722e3d89c` | ReceiptToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| plasma | `0x626c23fe62f5c3a45fe0f1e79ea577bd7d134d54` | ReceiptToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xdbdc1ef57537e34680b898e1febd3d68c7389bcb` | StakedToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| plasma | `0xe335abb943ecf2d7555d0f732ecc19ce79c39afd` | StakedToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x3d18480cc32b6ab3b833dcabd80e76cfd41c48a9` | Timelock | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x4b174afbed7b98ba01f50e36109eee5e6d327c32` | Timelock | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 89 |
| upstream | 3 |
| standard_library | 1 |
| needs_review | 71 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 12
- Inherited remapped matches: 0
- Address-book scope dispositions: 0 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 130 unmatched
- Matched-own operational status: 0 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=11, medium=1
- Match method counts: n/a

Zero-match audit list:

- [4769] Ackee-Part 1.pdf
- [4772] ChainSecurity.pdf
- [4773] Dedaub-Part 1.pdf
- [4776] Spearbit.pdf
- [4777] WatchPug-LpOracle.pdf
- [4778] WatchPug-Part 1 Follow Up 1.pdf
- [4779] WatchPug-Part 1 Follow Up 2.pdf
- [4780] WatchPug-Part 1.pdf
- [4781] WatchPug-Part 2.pdf
- [4782] WatchPug-PtOracle.pdf
- [4783] WatchPug-SparkLinearDiscountOracle.pdf
- [4784] WatchPug-sAPE.pdf

Fork inheritance lineage and inherited audits are included when available.
