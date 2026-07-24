# Agentic Audit Brief: Wan Bridge

## Export Authority

- Production state: **published scope**
- Raw selected rows: 0 across 0 audit(s)
- Eligible audit results: 3 (0 matched; 3 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e40c73181a386361babecc6895e0f6c5587548f92814db09f88491f8b4a38d92`

## Project Overview

- Project: Wan Bridge (`wan-bridge`)
- Website: [https://bridge.wanchain.org](https://bridge.wanchain.org)
- Lifecycle: unknown
- Generated: 2026-07-24T14:10:00.000Z
- Pipeline run: brief-deployer-expansion-all-20260724-v1
- Chains: arbitrum, avalanche, base, blast, bsc, celo, ethereum, fantom, linea, metis, moonbeam, moonriver, opbnb, optimism, polygon, polygon-zkevm, zksync-era
- Contract surface: 368 unique implementations (540 raw deployments)
- Coverage basis: 0/12 confirmed own live verified implementations (0.0%); conservative 0.0% with 0 needs-review implementation(s)
- DeFi Llama TVL: $23,452,772.39
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for Wan Bridge. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 16 contract row(s) across arbitrum, avalanche, base, blast, bsc, celo, ethereum, fantom, linea, metis, moonbeam, moonriver, opbnb, optimism, polygon, polygon-zkevm, zksync-era. Structural roles: 8 unclassified, 7 core, 1 supporting. 7 row(s) use upgradeable patterns.

## Logic Topography

- Exact-run contract rows: 16
- Structural roles: unclassified (8), core (7), supporting (1)
- Contract kinds: contract (16)
- Detected standards: erc1967proxy (7), ownable (1)
- Frameworks: openzeppelin (8)
- Upgradeable-pattern rows: 7

## Fork Analysis

0 of 17 contracts are derived from known codebases. 17 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0xec0d8cfd081ccce2d6ed4e3dd8f248d3caa3d24b`, chain 1)
- UnnamedContract (`0xfceaaaeb8d564a9d0e71ef36f027b9d162bc334e`, chain 1)
- UnnamedContract (`0x30b8d9e757595b5cbaecdfd81e9eeccf4b31e53d`, chain 137)
- UnnamedContract (`0xd6b24d0867753082e40778addb13e462a02689de`, chain 204)
- UnnamedContract (`0x102f0ce7a439d51247167d6233a0a44c3f8389a1`, chain 324)
- UnnamedContract (`0x012297f3d1cb0d685b195a70231730f4c8c86f86`, chain 8453)
- UnnamedContract (`0xd4b5f10d61916bd6e0860144a91ac658de8a1437`, chain 42161)
- UnnamedContract (`0x0d4d2595b1d83ab6110b4291816d62d1417c5a8b`, chain 43114)
- CrossProxy (`0xc3711bdbe7e3063bf6c22e7fed42f782ac82baee`, chain 56)
- CrossProxy (`0x2216072a246a84f7b9ce0f1415dd239c9bf201ab`, chain 137)
- CrossProxy (`0x6372aec6263aa93eacedc994d38aa9117b6b95b5`, chain 1284)
- CrossProxy (`0xde1ae3c465354f01189150f3836c7c15a1d6671d`, chain 1285)
- CrossProxy (`0xf7ba155556e2cd4dfe3fe26e506a14d2f4b97613`, chain 42161)
- CrossProxy (`0x14ca89ac9cd73b01bf71a3af3f8cf8fd224d6a1d`, chain 42220)
- CrossProxy (`0x74e121a34a66d54c33f3291f2cdf26b1cd037c3a`, chain 43114)
- Fee (`0x592de30bebff484b5a43a6e8e3ec1a814902e0b6`, chain 10)
- UnnamedContract (`0xccffe9d337f3c1b16bd271d109e691246fd69ee3`, chain 250)

## Contract Surface Quality

- Logic-topography rows: 16; live-surface rows included: 16 (12 live, 4 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 20/21 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 0/12 (0.0%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 21 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 347 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 1 standard proxy/library)
- Proxy deployments represented within implementation groups: 51
- Confirmed-live implementations: 21 of 368 unique; 347 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 0/93
- Verified + Unaudited implementations: 93
- Verified by bytecode match: 0
- Unverified implementations: 275
- Unique implementations: 368
- Raw deployments: 540
- Audits discovered: 3 (3 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2019-07 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 3 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (93)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| ARBIS | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x9f20de1fc9b161b34089cbeae888168b44b03461` | ⚠️ Unaudited |
| AutoFarmV2_CrossChain | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | 2 deployments: moonriver `0xfada8cc923514f1d7b0586ad554b4a0cead4680e`; celo `0xdd11b66b90402f294a017c4688509c364312303f` | ⚠️ Unaudited |
| Bn128SchnorrVerifier | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | 12 deployments: optimism `0x8d42d317b2bd6b60183461ed41bd00f17c3f3fe8`; bsc `0xd3a4bd71a0dee15a73c11ecb0f3d0f001b41cd53`; polygon `0x86b830023a8593a6a98f30783029506290558d0e`; metis `0x8d42d317b2bd6b60183461ed41bd00f17c3f3fe8`; moonbeam `0x6e228a699be7a3e9797009bbfb7f4a1a6516354d`; moonriver `0x0e3f52157df2d2974949570b1871aecbaec8414d`; base `0x7e0195a43a5dd27c507a1f0b2371d543c9e4dfc9`; arbitrum `0x86b830023a8593a6a98f30783029506290558d0e`; celo `0x86ec03f7bafab24f69ebc456cc429b6f389ea4e4`; avalanche `0xe162d75452f357cb95b8867e06174d9c410887b5`; linea `0x9c17ec2a4e07d29a2bf8a781bcdbde230159b85f`; blast `0x5b0b9d1a58cacb8e3f7cb72225996fc535530f6b` | ⚠️ Unaudited |
| CommonProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x2055ae7250f814995ab41499ba1963f2c2f58a3a` | ⚠️ Unaudited |
| CrossAdminManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xe1efc9336d6ee679f1b47a01d4d0ef5ab8cbd269` | ⚠️ Unaudited |
| CrossDelegate | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xf9f6c923866853a265cbe2f035eeb15ac970bb4a` | ⚠️ Unaudited |
| CrossDelegateV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x75df5dc2769770789e6a053fe2e14454e36f9e85` | ⚠️ Unaudited |
| CrossDelegateV4 | unknown | project_anchor | own_supporting | 1 | optimism | unit-261864 | 2 deployments: optimism `0x00e5330ece02a25be85cfdfc1a19d5f06c8f5e28`; optimism `0xc6ae1db6c66d909f7bfeeeb24f9adb8620bf9dbf` | ⚠️ Unaudited |
| CrossDelegateV4 | unknown | project_anchor | own_supporting | 1 | polygon | unit-261867 | `0x2216072a246a84f7b9ce0f1415dd239c9bf201ab` | ⚠️ Unaudited |
| CrossDelegateV4 | unknown | project_anchor | own_supporting | 1 | moonbeam | unit-261865 | `0x6372aec6263aa93eacedc994d38aa9117b6b95b5` | ⚠️ Unaudited |
| CrossDelegateV4 | unknown | project_anchor | own_supporting | 1 | moonriver | unit-261866 | `0xde1ae3c465354f01189150f3836c7c15a1d6671d` | ⚠️ Unaudited |
| CrossDelegateV4 | unknown | project_anchor | own_supporting | 1 | base | unit-261874 | 2 deployments: base `0x2715aa7156634256ae75240c2c5543814660cd04`; base `0x2f676cb3e9178eb4913ab4d42506d1fde82296fb` | ⚠️ Unaudited |
| CrossDelegateV4 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 9 deployments: optimism `0xc95a4bc5c14cc6a23af46ba50d3785d5fd55446d`; polygon `0x6a60b5099b68ac80b28f44eb30894c7d165a72f6`; metis `0xc0264277fcca5fcfabd41a8bc01c1fcaf8383e41`; metis `0xc95a4bc5c14cc6a23af46ba50d3785d5fd55446d`; base `0x97e0883493e8bb7a119a1e36e53ee9e7a2d3ca7b`; arbitrum `0x011754d9a4661d914141a96a03684f147e5b2a06`; celo `0xee91925aacca9b96a77a977ab1dd1688f596858e`; linea `0x70114d2a0ec788bafee869acf7fd1f8c76491799`; blast `0xc6ae1db6c66d909f7bfeeeb24f9adb8620bf9dbf` | ⚠️ Unaudited |
| CrossDelegateV4 | unknown | project_anchor | own_supporting | 1 | arbitrum | unit-261868 | `0xf7ba155556e2cd4dfe3fe26e506a14d2f4b97613` | ⚠️ Unaudited |
| CrossDelegateV4 | unknown | project_anchor | own_supporting | 1 | celo | unit-261869 | `0x14ca89ac9cd73b01bf71a3af3f8cf8fd224d6a1d` | ⚠️ Unaudited |
| CrossDelegateV4 | unknown | project_anchor | own_supporting | 1 | linea | unit-261872 | 2 deployments: linea `0x65b3ae390b3531cf94b8be3f735f72752c5d3bf9`; linea `0xffb876bd5bee99e992cac826a04396002f5f4a65` | ⚠️ Unaudited |
| CrossDelegateV4 | unknown | project_anchor | own_supporting | 1 | blast | unit-261873 | 2 deployments: blast `0x00e5330ece02a25be85cfdfc1a19d5f06c8f5e28`; blast `0xc21e5553c8dddf2e4a93e5bedbae436d4291f603` | ⚠️ Unaudited |
| CrossDelegateV6 | unknown | project_anchor | own_supporting | 1 | bsc | unit-261871 | `0xc3711bdbe7e3063bf6c22e7fed42f782ac82baee` | ⚠️ Unaudited |
| CrossProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | avalanche | n/a | 2 deployments: avalanche `0x079ae74b9ebd1d4f51ce2d1848565829b081099e`; avalanche `0xc9ea89502f43162ab724eb5f7687f2c590056c9d` | ⚠️ Unaudited |
| CrossProxy | proxy | project_anchor | own_supporting | 1 | avalanche | unit-261870 | `0x74e121a34a66d54c33f3291f2cdf26b1cd037c3a` | ⚠️ Unaudited |
| CrossProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | 2 deployments: metis `0xc6ae1db6c66d909f7bfeeeb24f9adb8620bf9dbf`; linea `0xc21e5553c8dddf2e4a93e5bedbae436d4291f603` | ⚠️ Unaudited |
| CrossSwapEntrance | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 2 deployments: optimism `0x9cf661e0d591e44f2458b45f37eb72c07b3a28c6`; base `0x5bc813a8bf026e099ee8ec16fe6b178761e444d6` | ⚠️ Unaudited |
| Fee | unknown | project_anchor | own_supporting | 0 | optimism | unit-261856 | `0x592de30bebff484b5a43a6e8e3ec1a814902e0b6` | ⚠️ Unaudited |
| FeeHelper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | 2 deployments: optimism `0xeac9c22e8f8f33bd40e143b4008125bbf3574988`; linea `0xb30778550a959c207601d77ff13fe38a5abb2546` | ⚠️ Unaudited |
| GroupApprove | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | 6 deployments: optimism `0x329f162550e3d5d9898a0aae05e21bfcd5f1cf83`; metis `0x16b389364a18cb066257fec7ad841106303b4c6b`; base `0xd97de67b982d79ed9f7eb2b1a13abc704b2ca082`; celo `0x48dbcccf3166f6e65280b654a6becb1287204d38`; linea `0x3cc97934f6770b649ef27682c6b9369b073c1058`; blast `0x131dfc3ca32d3a959012606855320cbe8e655132` | ⚠️ Unaudited |
| HTLCDebtLib | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xd2d59025217d000c4bbc097e93a39baa9341206d` | ⚠️ Unaudited |
| HTLCDebtLibV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | 2 deployments: polygon `0x47be7cc7c13315fdd1bbf3dbab512af23961ba53`; arbitrum `0x47be7cc7c13315fdd1bbf3dbab512af23961ba53` | ⚠️ Unaudited |
| HTLCTxLib | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 3 deployments: bsc `0x329e173f320b0805984edd9fbb0fb7b649054e44`; polygon `0x63c5acc9bd1cfc14582a5520415480c33734f18f`; arbitrum `0x63c5acc9bd1cfc14582a5520415480c33734f18f` | ⚠️ Unaudited |
| L2TBTC | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | `0x6c84a8f1c29108f47a79964b5fe888d4f4d0de40` | ⚠️ Unaudited |
| Layer2BridgeDelegate | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 2 deployments: polygon `0xbd4191828aeff23fb9e0249a5ae583a4b9425e49`; arbitrum `0x382b085a47cff1ea34bac4fe016f5fa5f061af7a` | ⚠️ Unaudited |
| Layer2BridgeDelegateV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | polygon | n/a | 2 deployments: polygon `0x011754d9a4661d914141a96a03684f147e5b2a06`; polygon `0xd557cc89ca98db85ef5ad09afba7c22583fe727e` | ⚠️ Unaudited |
| Layer2BridgeDelegateV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x4dee9c3c1b8718ef21758e7296dc921cf5305dfb` | ⚠️ Unaudited |
| Layer2BridgeDelegateV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | 2 deployments: arbitrum `0x599b4dc9f0d267ed76b9e2da9e4b3194a410c016`; arbitrum `0x783353136e8b4b1eb14539422c36121af400ca6c` | ⚠️ Unaudited |
| MappingTokenV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | 29 deployments: moonbeam `0x283ad86af3e6e96cef7845a6bcbf313019812d09`; moonbeam `0x30950e8705d9345a8ddf25caaab038df1dbbbc27`; moonbeam `0x455febd10a12772c8358f53ff3dee86472878d90`; moonbeam `0x5331141912a84875beb757e175d991a2c6c89ef4`; moonbeam `0x5f0061d84ee2f507c29aa87471e58f9d75d52776`; moonbeam `0x935ad14b4cc1d7bd3efdf42c1a6f0bdce63a93bb`; moonbeam `0xb436452915e19f36cdd4d9f6c4fd83484b7f2c36`; moonbeam `0xcd6f474afb8304aa025ab19b89394e35a2b2dedd`; moonriver `0x147dbae284bbd624b7b5a98dc862e21e8857446d`; moonriver `0x15b9ca9659f5dff2b7d35a98dd0790a3cbb3d445`; moonriver `0x41562ae242d194247389152acaa7a9397136b09f`; moonriver `0x53f14c39ad32315ba97d6efe028355b6a96925ae`; moonriver `0x576fde3f61b7c97e381c94e7a03dbc2e08af1111`; moonriver `0x748134b5f553f2bcbd78c6826de99a70274bdeb3`; moonriver `0x78f811a431d248c1edcf6d95ec8551879b2897c3`; moonriver `0x9d5bc9b873aed984e2b6a64d4792249d68bba2fe`; moonriver `0xa4dd0b5b5e83a4d9c6b4b406affb1d388df27862`; moonriver `0xa4fc4a0a55673102bb3fda1b5615043fa5406cac`; moonriver `0xb668cd490a4421f993f93be2819a922dbbb32804`; moonriver `0xbef0081000cba68c96cc3c475b9368aeb66e958f`; moonriver `0xc005a7a1502c9de16ccdaba7cda0cee4ac304993`; moonriver `0xd924f195c6012c301f42290cf0fde385a66039de`; moonriver `0xdd7f2bc5f0ef210ca183349ae90785fdfb374ae7`; moonriver `0xe936caa7f6d9f5c9e907111fcaf7c351c184cda7`; moonriver `0xffef2639b2ee39f9c284d0107e567dd2f7b20613`; avalanche `0x8d9dcc422407f40bf105d8c777ccb365aceb70b6`; avalanche `0x9e529b128e3e3ffcb261ee35e10a3366f51448e5`; avalanche `0xd38bfdbfe7002ca56a1e05606e75aef5c521fff9`; avalanche `0xea6887e4a9cda1b77e70129e5fba830cdb5cddef` | ⚠️ Unaudited |
| MarinateAutoCompounder | adapter | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x1922c36f3bc762ca300b4a46bb2102f84b1684ab` | ⚠️ Unaudited |
| Messager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x012297f3d1cb0d685b195a70231730f4c8c86f86` | ⚠️ Unaudited |
| Multicall2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | 7 deployments: base `0x1ed3538383bbfdb80343b18f85d6c5a5fb232fb6`; base `0xbe5187c2a7eb776c1caeed2c37e7599fb05000d3`; celo `0x149180976acce60ced0a9c339853c9d1d4160765`; linea `0x5b0b9d1a58cacb8e3f7cb72225996fc535530f6b`; linea `0x8d42d317b2bd6b60183461ed41bd00f17c3f3fe8`; linea `0xd4b5f10d61916bd6e0860144a91ac658de8a1437`; blast `0xd4b5f10d61916bd6e0860144a91ac658de8a1437` | ⚠️ Unaudited |
| MulticallV2 | periphery | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0x0d10a02696cb9cfdc4de45bd5580eda85f22353b` | ⚠️ Unaudited |
| NFTHelper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xa39ee04e8208c3309026f34007f036cbb03fa01d` | ⚠️ Unaudited |
| NFTHelperERC721T | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xd8dde3abe038519cb46afd36bf8777fdc754a480` | ⚠️ Unaudited |
| NFTLibV1 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | 10 deployments: optimism `0x50133f6836cb91237e17177e2985cbdad51f0cf2`; optimism `0xb30778550a959c207601d77ff13fe38a5abb2546`; metis `0x50133f6836cb91237e17177e2985cbdad51f0cf2`; base `0x5b0b9d1a58cacb8e3f7cb72225996fc535530f6b`; base `0xa63a35951dd74f6a00dfdb0a749f04adb27b4f27`; base `0xc95a4bc5c14cc6a23af46ba50d3785d5fd55446d`; linea `0x2715aa7156634256ae75240c2c5543814660cd04`; linea `0x8968cc03fd249ad8d649d93fcec70c1b99a6b5f3`; blast `0x1289f70b8a16797cccbfcca8a845f36324ac9f8b`; blast `0xb30778550a959c207601d77ff13fe38a5abb2546` | ⚠️ Unaudited |
| NyanRewards | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 2 deployments: arbitrum `0x32e5594f14de658b0d577d6560fa0d9c6f1aa724`; arbitrum `0x62ff5be795262999fc1ebac29277575031d2da2c` | ⚠️ Unaudited |
| OracleDelegate | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | optimism | n/a | 2 deployments: optimism `0xbe5187c2a7eb776c1caeed2c37e7599fb05000d3`; optimism `0xc21e5553c8dddf2e4a93e5bedbae436d4291f603` | ⚠️ Unaudited |
| OracleDelegate | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0xd8fc5034166e984c1131b940dde4be69491c3acc`; bsc `0xd948675a4da40cd7aa6f1ec1f10db5a4ffb6b990` | ⚠️ Unaudited |
| OracleDelegate | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | polygon | n/a | 2 deployments: polygon `0x7f70d0047ae63131ab77f179a90f1a41ceea93aa`; polygon `0xbf9076b4ea99c1fce5e2b0fc7ac5955333f47d18` | ⚠️ Unaudited |
| OracleDelegate | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | 4 deployments: polygon `0x8d508595f094c42ade6d3625a206abe9551c5858`; metis `0xc21e5553c8dddf2e4a93e5bedbae436d4291f603`; moonriver `0x9c9ec2790a654528762d14a44c09f3083f7d7d79`; linea `0xbe5187c2a7eb776c1caeed2c37e7599fb05000d3` | ⚠️ Unaudited |
| OracleDelegate | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | moonbeam | n/a | 2 deployments: moonbeam `0x079497f92f4522b3b17112aa8d28c4ce138935ba`; moonbeam `0xcaa36de573f8203f880a1c0bbdcea996bf3b1748` | ⚠️ Unaudited |
| OracleDelegate | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | moonriver | n/a | 2 deployments: moonriver `0x1d920b2a602e1339a18855eaca5ef6a51527627c`; moonriver `0xffd3e7dabcdec920eed13b19a81b205aa0dd6e05` | ⚠️ Unaudited |
| OracleDelegate | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0x290108879b633557cb35e8baa57ea9216278a61b`; base `0x70114d2a0ec788bafee869acf7fd1f8c76491799` | ⚠️ Unaudited |
| OracleDelegate | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | 2 deployments: arbitrum `0x7f70d0047ae63131ab77f179a90f1a41ceea93aa`; arbitrum `0xbf9076b4ea99c1fce5e2b0fc7ac5955333f47d18` | ⚠️ Unaudited |
| OracleDelegate | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | celo | n/a | 2 deployments: celo `0x4c0cadc3f72992c95475e55506b27b451b04c11a`; celo `0x9c11539603661b6c90e65e96aa8ac4b8e4b914c8` | ⚠️ Unaudited |
| OracleDelegate | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | avalanche | n/a | 2 deployments: avalanche `0x69f3cd9ccd1e06c4152f0979546cabf4263a0fbb`; avalanche `0x716f88d32b52342af040b2e775871dff56ebd035` | ⚠️ Unaudited |
| OracleDelegate | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | linea | n/a | 2 deployments: linea `0x7e0195a43a5dd27c507a1f0b2371d543c9e4dfc9`; linea `0xdf8af8c2e8cad112e501c4c3c639a3380985e3fe` | ⚠️ Unaudited |
| OracleDelegate | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | blast | n/a | 2 deployments: blast `0x8d42d317b2bd6b60183461ed41bd00f17c3f3fe8`; blast `0xbe5187c2a7eb776c1caeed2c37e7599fb05000d3` | ⚠️ Unaudited |
| OracleProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | 2 deployments: polygon `0x75df5dc2769770789e6a053fe2e14454e36f9e85`; metis `0xbe5187c2a7eb776c1caeed2c37e7599fb05000d3` | ⚠️ Unaudited |
| PooledMappingToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xae110a0e6e5ddb0108f6d752f754b575d62b7534` | ⚠️ Unaudited |
| QuotaDelegate | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x40f8298199e09d7fada87e3b1ef9061bdca2fe89`; bsc `0xade7049af141c3258489595c807c85740bc07320` | ⚠️ Unaudited |
| QuotaDelegate | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | moonriver | n/a | 2 deployments: moonriver `0x5950e891188addad309fd885cfd8d781dfef1969`; moonriver `0x83600c1be0dd23dbe7ed43cd1f130c4d21c51f0d` | ⚠️ Unaudited |
| QuotaDelegate | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | moonriver | n/a | 2 deployments: moonriver `0x603be493e0b0e5181c5f0799afb003bd8ed076a5`; moonriver `0x7ee4c21c1932176e87df17f1db95ab7e24d5cb4a` | ⚠️ Unaudited |
| QuotaDelegate | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | avalanche | n/a | 2 deployments: avalanche `0x3c84ef5880102a2424ce87837ec2e524e228281b`; avalanche `0x4c4ca7afd772cdc4f78b04b18df675f9e140c845` | ⚠️ Unaudited |
| RapidityLib | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x31432b8b5496a5332fb2e64940822bb960fadd5a` | ⚠️ Unaudited |
| RapidityLibV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 2 deployments: polygon `0xf7ba155556e2cd4dfe3fe26e506a14d2f4b97613`; arbitrum `0x8d508595f094c42ade6d3625a206abe9551c5858` | ⚠️ Unaudited |
| RapidityLibV4 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | 9 deployments: optimism `0x1289f70b8a16797cccbfcca8a845f36324ac9f8b`; optimism `0xbe201985b711d44bbe0e77770a58c922135aa17d`; metis `0x1289f70b8a16797cccbfcca8a845f36324ac9f8b`; base `0x4f1ab74c2a9e8f591e8a80768e115c9f75935bad`; base `0x555cf9c9d1bcdbe75e0ee6536fac65c8a69cd6a3`; linea `0x290108879b633557cb35e8baa57ea9216278a61b`; linea `0x3bb87041edf93eaea82f47f2b495e5859085e3ee`; blast `0xbe201985b711d44bbe0e77770a58c922135aa17d`; blast `0xc95a4bc5c14cc6a23af46ba50d3785d5fd55446d` | ⚠️ Unaudited |
| SignatureVerifier | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | 12 deployments: optimism `0x09cdfc56439643d151585b77899d0dc0f982bcd2`; bsc `0x5ff81da1574bc8e19fb6aa78ea2ad97eb57c7f3e`; polygon `0x8818c74956ae90c6c7b317439373052073e62999`; metis `0x09cdfc56439643d151585b77899d0dc0f982bcd2`; moonbeam `0xe727e81ea730ea216ca3720c2597fd14bf2b825a`; moonriver `0xc565ed1e12ce78f3a1df9f8c3e0a1b7e8577702c`; base `0xffb876bd5bee99e992cac826a04396002f5f4a65`; arbitrum `0x8818c74956ae90c6c7b317439373052073e62999`; celo `0xe0c8c2fdc6fc440bd1ec918299585321494536ff`; avalanche `0x4f1d3d9ce4bb7646c35dcd05d3296f106f12345c`; linea `0x6957e0df854b8dc2cada2bac902544f2c34ebfbd`; blast `0x09cdfc56439643d151585b77899d0dc0f982bcd2` | ⚠️ Unaudited |
| SimpleMultiSender | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 2 deployments: optimism `0x1e7e46945e50bbe7df7014c086b642e6b7b4a625`; base `0x0e57db96f34aaa743a3f77e8fc0b17641ca9f1df` | ⚠️ Unaudited |
| stARBIS | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xbf00759d7e329d7a7fa1d4dcdc914c53d1d2db86` | ⚠️ Unaudited |
| TimelockController | governance | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | 4 deployments: optimism `0x858df58d3c91467532d4dfc05cc00d305d462155`; metis `0x7f27b1cfedada5bc5e2e221eb4ed002313319c4b`; celo `0xf865a3d2291a67bdf9785f593a0e342ac1436e24`; blast `0x6584d72dbc6b1a5d74f49bc9300042b586856006` | ⚠️ Unaudited |
| TokenManagerDelegate | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x77ecc3b0a33b5e03e4db7e27937880ea6e4979af` | ⚠️ Unaudited |
| TokenManagerDelegateV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | optimism | n/a | 2 deployments: optimism `0x1ed3538383bbfdb80343b18f85d6c5a5fb232fb6`; optimism `0xd4b5f10d61916bd6e0860144a91ac658de8a1437` | ⚠️ Unaudited |
| TokenManagerDelegateV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | `0x39af91cba3aed00e9b356ecc3675c7ef309017dd` | ⚠️ Unaudited |
| TokenManagerDelegateV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | polygon | n/a | 2 deployments: polygon `0x9b1f4c3091e825a6abe451d0a266ee18005839e7`; polygon `0xc928c8e48647c8b0ce550c2352087b1cf5c6111e` | ⚠️ Unaudited |
| TokenManagerDelegateV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | moonbeam | n/a | `0xc814ff82e04c556fba1639f1fddc158709184169` | ⚠️ Unaudited |
| TokenManagerDelegateV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | moonriver | n/a | `0x32e1504a67826960245506706e0b129dc2a53b7f` | ⚠️ Unaudited |
| TokenManagerDelegateV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0x09cdfc56439643d151585b77899d0dc0f982bcd2`; base `0x8d42d317b2bd6b60183461ed41bd00f17c3f3fe8` | ⚠️ Unaudited |
| TokenManagerDelegateV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | 2 deployments: arbitrum `0x5585cb0e704c02f996892edde876745d18cbd415`; arbitrum `0xc928c8e48647c8b0ce550c2352087b1cf5c6111e` | ⚠️ Unaudited |
| TokenManagerDelegateV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | celo | n/a | 2 deployments: celo `0x77e3695c26ff538b4db9593b20620b73d00c7059`; celo `0xd6965a9b739240db7acd36e3afb2dfe1dae7c694` | ⚠️ Unaudited |
| TokenManagerDelegateV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | avalanche | n/a | `0xf06d72375d3bf5ab1a8222858e2098b16e5e8355` | ⚠️ Unaudited |
| TokenManagerDelegateV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | 5 deployments: polygon `0x1bc20d6b6a4f0d768e1b39d42575fc3cb008e865`; metis `0xd4b5f10d61916bd6e0860144a91ac658de8a1437`; base `0x50133f6836cb91237e17177e2985cbdad51f0cf2`; linea `0x09cdfc56439643d151585b77899d0dc0f982bcd2`; linea `0x1ed3538383bbfdb80343b18f85d6c5a5fb232fb6` | ⚠️ Unaudited |
| TokenManagerDelegateV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | linea | n/a | 2 deployments: linea `0x4f1ab74c2a9e8f591e8a80768e115c9f75935bad`; linea `0x97e0883493e8bb7a119a1e36e53ee9e7a2d3ca7b` | ⚠️ Unaudited |
| TokenManagerDelegateV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | blast | n/a | 2 deployments: blast `0x1ed3538383bbfdb80343b18f85d6c5a5fb232fb6`; blast `0x50133f6836cb91237e17177e2985cbdad51f0cf2` | ⚠️ Unaudited |
| TokenManagerProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | moonriver | n/a | 2 deployments: moonriver `0xe136d172143993e8cf0e79d6a4db6d041120a78b`; moonriver `0xf8b0d176257f9dc1ee49f038bb4f6cfd51af5762` | ⚠️ Unaudited |
| TokenManagerProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 3 deployments: metis `0x1ed3538383bbfdb80343b18f85d6c5a5fb232fb6`; base `0x1289f70b8a16797cccbfcca8a845f36324ac9f8b`; linea `0x50133f6836cb91237e17177e2985cbdad51f0cf2` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | proxy | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0xeb986da994e4a118d5956b02d8b7c3c7ce373674` | ⚠️ Unaudited |
| WanCctpV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | optimism | n/a | 2 deployments: optimism `0x555cf9c9d1bcdbe75e0ee6536fac65c8a69cd6a3`; optimism `0xa63a35951dd74f6a00dfdb0a749f04adb27b4f27` | ⚠️ Unaudited |
| WanCctpV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | optimism | n/a | `0xf5db314d1bb8e6166a2b54b057dca934ac3b5d43` | ⚠️ Unaudited |
| WanCctpV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 2 deployments: optimism `0x2f676cb3e9178eb4913ab4d42506d1fde82296fb`; base `0x2ab37662ac4dc8aada595256cd57221c0c38c838` | ⚠️ Unaudited |
| WanCctpV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0x40c1aa1a40be3cd006ae2f4784a68fc8244e890d`; base `0x69798671b1172371e49da4d74d00104cadd7ed15` | ⚠️ Unaudited |
| WanCctpV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0x441bffbe26b819e51deb32aeadeb1f847f24d859`; base `0x5107033dd55d70e8241534c6509697dcfb5c72f8` | ⚠️ Unaudited |
| WanCctpV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | `0x76c51350705756030c70ccb82ef23345c2a4610e` | ⚠️ Unaudited |
| WmbGateway | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | 4 deployments: optimism `0x9c0e23e1c597da8024eb62cd4e3c95e3d2478408`; base `0xa67a44fd38ee29b802f2f4795627e45f1bee252e`; base `0xe156987a81a9b841c1def6f111ea69bf817fb272`; linea `0x2e042cf87aea59c4826b379e3302b8ac02389a3d` | ⚠️ Unaudited |
| WrappedERC1155T1 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x990825c5d894385f1c5bd36b6427c5336d984e07` | ⚠️ Unaudited |
| WrappedERC721T1 | token | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | 2 deployments: polygon `0xcfad8a6ed9b7075c5a3b42557cf2b343b266c472`; polygon `0xf6b9cd2e63f45c9b172ddfcdcf7eed5402fdf245` | ⚠️ Unaudited |
| WrappedToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 18 deployments: polygon `0x4d14963528a62c6e90644bfc8a419cc41dc15588`; polygon `0x599b4dc9f0d267ed76b9e2da9e4b3194a410c016`; polygon `0x6dc2fc72584bffa35cc6d521a22081dd0217f3b6`; polygon `0x789acfd3525cc5523f95bcf45df263f17577d1a4`; polygon `0xa07c874323ab6ac31d7fa3dcfb92163f363f7113`; polygon `0xa3f9e72d598e99a8eb135257a57b133fd41a6d89`; base `0x05e0302e690632b33b831c61a847f159ae010282`; base `0x1e7e46945e50bbe7df7014c086b642e6b7b4a625`; base `0x3bb87041edf93eaea82f47f2b495e5859085e3ee`; base `0x4b1690f6596574fcb0c1b7681e7fa0cea00fc95e`; base `0x72ccf64ee5e2c7629ee4eee3e6ad6990289178ae`; base `0x73d9230f580eab929cde18873e4879785462728c`; base `0x7e5fe1e587a5c38b4a4a9ba38a35096f8ea35aac`; base `0xb1f19e492401545c1b060c4b18688f9178325b4d`; base `0xb30778550a959c207601d77ff13fe38a5abb2546`; base `0xc5cd7e7ecc39eceaeeee089f98c3d351d93810c2`; base `0xd7466f2600563da9ef462b5f3b6ca9506aa34c69`; base `0xe0cf5a329b861fe83814844d2382d0aa483a5e01` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (275)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| Proxy (impl: 0xc0264277fcca5fcfabd41a8bc01c1fcaf8383e41) | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | optimism | n/a | 2 deployments: optimism `0x7f27b1cfedada5bc5e2e221eb4ed002313319c4b`; optimism `0xc0264277fcca5fcfabd41a8bc01c1fcaf8383e41` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0b98183f06ce5694736880ed644c74606e5d3895` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0eff4c50f6c32a2815d79bded30eb60e2410c601` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x169ea2e2c8783a9da305f563c65793525e831f62` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2532d74f8db5b369e58dafbd1a104890f8dfa000` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2af614e23dd48a8a3f6b59245c1458712e55bc37` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x474999877e40db4a7e3211b0889b76131e35ea04` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6a132d12b674d93e32b4877dc0381c72332c288d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6b052e5abeaed172cb485ae11cdecd130c14aeef` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x81677c261019760859c44bc7d8a70f8c4dbb388e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x84271540f80e8879826c377ebc496dfae270321a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x88f54adf33962fae05f802d2568f4dbf2ff030e3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9276ee38a5250e2f7fbe00a12ec17d09b5d28f3d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbab93311de250b5b422c705129b3617b3cb6e9e1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbb38d10033b26f3836a8c1e41788206868b9f228` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc654a945e8ed388c0477f81f1be531946fcc6ff0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe6b40857d9c3c1b22b21fd39fc2708779ff34483` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-261854 | `0xec0d8cfd081ccce2d6ed4e3dd8f248d3caa3d24b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xeeeab46a7ec47c4959ecdc290dc8358bde64fda2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf6fad8f166c4a766568f0d821a30ff5d21b6bd9c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf8f3d2a9ac19b1835faba9252ca5a101667e7c7a` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-261855 | `0xfceaaaeb8d564a9d0e71ef36f027b9d162bc334e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x3bb87041edf93eaea82f47f2b495e5859085e3ee` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x8ba0fb3bf5f215fce9e78a5d6482d9f5115656bc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xc5cd7e7ecc39eceaeeee089f98c3d351d93810c2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xdd4b9b3ce03faaba4a3839c8b5023b7792be6e2c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xe156987a81a9b841c1def6f111ea69bf817fb272` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x08b069686501bbaf54ad2a73a07e31c80b3462e4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x10acbe3b9e6a2ff7f341e5cbf4b6617741ff44aa` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x16b8ca1c5b0214c1fb1f37fba7ed3a7e63833c59` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x1bbc16260d5d052f1493b8f2aeee7888fed1e9ab` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x1fe6b14d2add97d1a9aa53883ca010a94e9c5d1e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x23d8e77ff239446fa4ed8fe90d1172d117d4493b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x2592267c4afe607ceb7c8e05b204d1cb817eac67` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-261857 | `0x30b8d9e757595b5cbaecdfd81e9eeccf4b31e53d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x31b1644f8379a22d25f845a67f1ab346e76001aa` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x329f162550e3d5d9898a0aae05e21bfcd5f1cf83` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x34c8b806538bc6071ed628f2a408581160aca67b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x3906d89e4d29ecb47db33ca72d356246b7a7cbec` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x3bb87041edf93eaea82f47f2b495e5859085e3ee` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x4863fe0d81e1b4f5e8f151cb51d99d5cd69d081b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x5585cb0e704c02f996892edde876745d18cbd415` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x5e63da96fabca989e77d1b711dac9ef29df762dd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x600c2c7eaed186ee414c60a8b3a4a3e2ee6e1ee8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x64d5d9642ba91b915f1bd8e510b9a70ee1273f54` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x670c48fa3b35d902b8360c478d97ca59da48e1e5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x70de793ace58a4bc16c9b5962073f39e05f75b68` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x7126b2251468e93e36e16d3f33b410365aeda9cb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x74ce47500c6f8e69aa532af4a133da3593b6f3a8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x76c51350705756030c70ccb82ef23345c2a4610e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x7f27b1cfedada5bc5e2e221eb4ed002313319c4b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x83ad59e8c1c56cf19fff4d3e392a9cb06a6fe188` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x8c3ac0620a9a23f49dae8b2702823fa3ce9256b9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x8c90935da827d4bbc139312ef7ef2914295db5f7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x93af551be52e3554e57a3cef2ff89f96f32dcb33` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x945dcc9c3f65bf99314306cddaa449a9f05dd18c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x9a27a8950c256921b0afbe26823be717d612b447` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x9fad67533babbcc19633d17978702b7b1a27ac74` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xa55f691d3de6a6d645ce6da885332f375933a854` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xb2c6979890fbad83a6a5266d41b7d50dbe24a87a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xbdc15c6d12f89c0d2f49f336ebd17ec5ed3b785b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xc6e999a655a798a41a8f882fb2ec0a82a6a2a036` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xc702c95612cd70b0440571dd7fa9c7b3057c152b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xc8c75627eec4a05dbb259746d2c3061a7af0b669` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xca9586a1fc2e54b35da266a6e3801585b8958e43` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xcaed472112b2237db0538050bc2d76b518976ee0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xdb972882aca18e8a2a77eae17cc7f45ca31452b3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xdbf42c26ac554a492ca76b808cd91e106865c391` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xe0d4b59f95dd4dfb50803c327b37c0e3252622a9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xe156987a81a9b841c1def6f111ea69bf817fb272` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xea0c753d391761bbdb090ac93102a4d1bdcbee2b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xea257af689abe1107578247ea558bf20d88a994f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xeac9c22e8f8f33bd40e143b4008125bbf3574988` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xeeaaf9f4bc94031544c3ea94a8cef2fe1291b997` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xf4facc1604be225357d0393257cf8edad1648da8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xf9fb5eb1770f32adcbee9c1ac2908c67b291c05f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xff3c2f49c4558234aa490de1790087be5cae9008` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | opbnb | n/a | `0x1b680c9693f9eececc2c15f7dd0d97f755d4e82d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | opbnb | n/a | `0x1b765da9d2b444a76983aceb68d1850155aee672` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | opbnb | n/a | `0x21d04952720aba475b0d6c33a7404c52d020aaa6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | opbnb | n/a | `0x2f782fd9166b32f8b063ca5122711e59e1135f20` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | opbnb | n/a | `0x34cd1ce396c29075381fd2c61b0959ce640fecc9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | opbnb | n/a | `0x3515c36bd2f4d7df533de87939754e1588ee97d3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | opbnb | n/a | `0x44d9f33e880f42a1dba296818c8b55b248b3dd47` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | opbnb | n/a | `0x4a7d429e54b1b393cbe5240dbdfc2372ddb87a5f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | opbnb | n/a | `0x4d1025b68d73c56774b525da24a934dfb98041d6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | opbnb | n/a | `0x4d77dcd4884a97e866864c6c21644bec72002c18` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | opbnb | n/a | `0x5168ee8574b14ff7f1b1011feb5e11b05afa3faa` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | opbnb | n/a | `0x54735c4d44224e8d4dd0fd135e9abe534f5cfc7a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | opbnb | n/a | `0x55b6d603e6cee576050ae25db4eea37a7dcde862` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | opbnb | n/a | `0x59e3a64fafb786cbef89a233d11b2414024807ad` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | opbnb | n/a | `0x6d55a1cbb8e2512406d8b2dad216f390680ab46a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | opbnb | n/a | `0x73e465cd05331a8838bc70b9a2e9d6cf27ce42a1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | opbnb | n/a | `0x784cfb262777a33170fdbd15d09e750b06e3641e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | opbnb | n/a | `0xa53cd64d2103c6664a058e5e1bf89fea23040189` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | opbnb | n/a | `0xca0a41ecb2dcccb7c572842d4ec52c86d2fe8122` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | opbnb | n/a | `0xd29f2607eaf10e5faa334e40cf4c0e5813b2eb88` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | opbnb | n/a | `0xd69457d2d6032c80a9c545fdc6fbd903aeb4c095` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | opbnb | unit-261858 | `0xd6b24d0867753082e40778addb13e462a02689de` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | opbnb | n/a | `0xdbbaf352e4691821ef37ac36cdb8e81950372f52` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | opbnb | n/a | `0xfdabacebcb29cd85c88acf95f1c1ed94b8c11724` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | fantom | n/a | 5 deployments: fantom `0x76b8c3ecdf99483335239e66f34191f11534cbaa`; fantom `0x9c30e4b50b4b3804d3b50f01619c61fe44ed894e`; polygon-zkevm `0xb13afe3e965dcd483022b1cc3adf03eea039a754`; polygon-zkevm `0xbe5187c2a7eb776c1caeed2c37e7599fb05000d3`; polygon-zkevm `0xc21e5553c8dddf2e4a93e5bedbae436d4291f603` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | fantom | unit-261859 | `0xccffe9d337f3c1b16bd271d109e691246fd69ee3` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | zksync-era | unit-261860 | `0x102f0ce7a439d51247167d6233a0a44c3f8389a1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0x69120197b77b51d32ffa5eafe16b3d78115640c6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | metis | n/a | `0xdd4b9b3ce03faaba4a3839c8b5023b7792be6e2c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | `0x0de50554333aa03e5383df38023fc89d8e342275` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | `0x247a1bd062ea12a6c236393a3c90d3344e3f0e3f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | `0x2a8bdd8792818c67a2a54d44e3e54fcfff30d3f9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | `0x398d9647ae6c5e64b0d1afbedfa2fd42bb43939e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | `0x3a6e4f233e2a51d65d97633a14d1f030009c5ce1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | `0x46ebefdb6598b2932c13509b6cff27ba78b7ec73` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | `0x634cd40c6b1f17be53d5784c059d75d2eefb3c88` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | `0x75609d8286960ddeed767c95f8c71b856e507924` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | `0x75b12ffc4a4740c246d7d553c897e52236433a52` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | `0xb2db18b1256681825209fe7ce4dd90abed2be6c1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | `0xb83410325f8a6f9bd7bff9eff49d33ace8a024cf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonbeam | n/a | `0xbacaaa4509ee9c9b2cf7133b970bc6db47713477` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0x04f121209adf4622ee8a908a62001d6bcaa4d0d6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0x06ba9fb89982f88e420ffdd4e3698557e26cdd09` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0x0c98e59e8327f156ab12a042f5e1f0adb97c0931` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0x143371cde723891e3e9c30a8db84c411268653bf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0x16cfb244a3a4e6776c1b731b565515dae32c7d54` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0x1a40a8c7d965f3929e0c56bb301ebe82f5ff0d48` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0x1fe0c23940fce7f440248e00ce2a175977ee4b16` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0x21145564b1b4dfc195bea79f2843a6299e8f630b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0x21be489c84cfcc4ac0da06fd756db885635b482e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0x266b63bffd05b157eada1f381ad68583c999c8ac` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0x2c2c7d2683a69bd17b73455d47535dff6bd9fb12` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0x3e0be2786431e28c0fd4b00ba09eec5a1be3cf76` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0x438587eab690b69db1bf08d44475b3eb7ca65b11` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0x4869f219bf8d0c89010154e6b8a9920c6ac99a98` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0x5662b58bd44619ea74a6b01d9c5dc89656e9d0a9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0x59bc491986722d2bc78089cd38f9e9798ebfe339` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0x5b13cc8a120a20afcb40229846a61020e42adb63` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0x5b88a19d625e524a7c9cc7e7c8c5430400113681` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0x5d3ac98ed0ccf70493295c8136f4bf1c40e8489a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0x67cc99a4e76a3af7df524fb3aac6d5c3970a4436` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0x686efdb6f49dc908b85a13efba8e31a5cb2fc501` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0x719be39f708506d6e31ce27193f98130a4e231d5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0x72e54b83f64de6cf99798dbd1591cd48b62ff515` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0x75cef576cbe80cef6d6270086e8bd0a82b925088` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0x7a3772850ce76d661d841ea4af7d8240ff215a81` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0x7e8503a336aa795f5f30e8be92cc07430ad35b13` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0x7f4f008b6da59667998673563dc46524f9fa6932` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0x835460b80883ba7983bbdcc5981501b836332e41` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0x86178bd58cd2f5eb9d145762f3bac52486ea57ce` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0x864a0b7f8466247a0e44558d29cdc37d4623f213` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0x89d03a238780634db11b4c26adbc936fee8dee31` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0x8b854a029850aab7d05a0f9e3f42903d98be795d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0x947934bb8c221338d6261facf6eb223118af2131` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0x95ef70ff0d0fcd62edb406850f69f18b42a239ca` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0x9e8d79287adb6e6e73bde777b0b7442eb0325fd2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0x9f77ded3713c88bcc3bad07afb16e824ec2a6831` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0xab16069d3e9e352343b2040ce7d7715c585994f9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0xacc391693de3d745047c9bf1e631d49ff5e397a6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0xad1245b0068c9a1faecfa0c2f4c68b58b12090e0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0xaea5f423361e799950e09d38c4dabac2db77e800` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0xaf03df49d0acf76b81674e1250611491a3d3c063` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0xb4b71fb46590ae1e4f7e3da71f23ad1a8f809da7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0xb55b06236653a1439323a66e56c2a6c02e68e423` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0xb881712724214bc887132942e7ed47ac3bbb106f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0xbf19c3fe078258f1d1c34bec7e624ad8a1de343a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0xbf328d09710a8df370935f2ec3e131f037448627` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0xc9a95011bff79dece9280b19c2eba1538f39f6d4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0xce82011c9cef9d7e6495d5514416d046cddeaa1b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0xd20ac8b6d7ec750cd2957d6ec2a483522a1483c3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0xd899eeee9dedd70cf4e96d39015017374d1005dd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0xdd5f00b70762925bede6819b53ae5427e3efe423` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0xe91893ac5e91c33cb65962b4b7771ecba8b647f9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0xe91dc80a284237155526825c6411001ef0b160bd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0xea68c140ea18dfa14cb8781b1738b49cc0540ffa` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0xed2ce4e98cbb2c786c88f3e958040faba469a8fd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0xfdb5e2adb1a9b21fd9c277b1d9ecca437f58ae59` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-261863 | `0x012297f3d1cb0d685b195a70231730f4c8c86f86` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x4dcb61fe56096daf28a9184d702d77c203ce50a1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0x8afac7ba82bbd551032330cb9f3b21d9b7ba0d9d`; base `0xeac9c22e8f8f33bd40e143b4008125bbf3574988` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xc21e5553c8dddf2e4a93e5bedbae436d4291f603` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xc6ae1db6c66d909f7bfeeeb24f9adb8620bf9dbf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xdd4b9b3ce03faaba4a3839c8b5023b7792be6e2c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x16b389364a18cb066257fec7ad841106303b4c6b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x30b8d9e757595b5cbaecdfd81e9eeccf4b31e53d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x372d0695e75563d9180f8ce31c9924d7e8aaac47` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x3bb87041edf93eaea82f47f2b495e5859085e3ee` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x4a8f986ce9f7a30b2e81fb0c99b98da988d6e0cf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x4b1690f6596574fcb0c1b7681e7fa0cea00fc95e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x4dee9c3c1b8718ef21758e7296dc921cf5305dfb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x4f1ab74c2a9e8f591e8a80768e115c9f75935bad` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x592de30bebff484b5a43a6e8e3ec1a814902e0b6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x5bc813a8bf026e099ee8ec16fe6b178761e444d6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x607ba7209e2810687847bd3688c35f0910667eb3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x65b3ae390b3531cf94b8be3f735f72752c5d3bf9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x65f17bbfb1c2b8ef9165e2f936122b6d88106cc5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x69120197b77b51d32ffa5eafe16b3d78115640c6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x71f7f49ff81e9be77c9175611212ecb199ba0824` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x73be9e99faa2df5f504252bbfcd86ab7bd362457` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x7f27b1cfedada5bc5e2e221eb4ed002313319c4b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x8968cc03fd249ad8d649d93fcec70c1b99a6b5f3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x8d42d317b2bd6b60183461ed41bd00f17c3f3fe8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x93af551be52e3554e57a3cef2ff89f96f32dcb33` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x97e0883493e8bb7a119a1e36e53ee9e7a2d3ca7b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x9cf661e0d591e44f2458b45f37eb72c07b3a28c6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xb10ed23083e197dccd0854e57c5196007a41f3f7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xb2c6979890fbad83a6a5266d41b7d50dbe24a87a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xb66f96e30d6a0ae64d24e392bb2dbd25155cb3a6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xc0264277fcca5fcfabd41a8bc01c1fcaf8383e41` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xc5cd7e7ecc39eceaeeee089f98c3d351d93810c2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xca508d2153ad72325f746a4f44f20a48850064b5` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-261861 | `0xd4b5f10d61916bd6e0860144a91ac658de8a1437` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xda5a121d70e808007c9318846bf00e284a29a586` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xdd4b9b3ce03faaba4a3839c8b5023b7792be6e2c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xe0cf5a329b861fe83814844d2382d0aa483a5e01` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xe156987a81a9b841c1def6f111ea69bf817fb272` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xea0c753d391761bbdb090ac93102a4d1bdcbee2b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xeac9c22e8f8f33bd40e143b4008125bbf3574988` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0x1faa6f2b3c252da20820593d6de5c40ffcaf7655` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0x526a2a9a76688cb395e742faafc5286d08e95913` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x00e5330ece02a25be85cfdfc1a19d5f06c8f5e28` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x0a48bd410757f666d6eb8bd37bff93005097ee07` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x0a7cdb63be5707007b155ebaf5b72336522c6aa7` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | avalanche | unit-261862 | `0x0d4d2595b1d83ab6110b4291816d62d1417c5a8b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x10acbe3b9e6a2ff7f341e5cbf4b6617741ff44aa` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x1e7e46945e50bbe7df7014c086b642e6b7b4a625` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x1f83de7c74e611f7688ee4565f2c9dcbc49ca13a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x237e7fc6319bf62b936a1803bde7e8a7d056d62e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x265fc66e84939f36d90ee38734afe4a770d2c114` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x26834c5a99825d8d98d20ef8c3351eb0dbd64576` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x2f676cb3e9178eb4913ab4d42506d1fde82296fb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x31b1644f8379a22d25f845a67f1ab346e76001aa` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x31c8cb9ab37199749ef1a952c4cf1f2f69a822bb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x32777ccbc08eb191eda08352ed7df2038952e429` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x34c8b806538bc6071ed628f2a408581160aca67b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x35291d62a6d57e200d8b38764f855e47f47e4eb3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x3a0e4388bab1bb7564bc2f76dc2f962a71339d3e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x3a471089dc0a91676b1dbd62da7e49dab6b94d00` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x3cc97934f6770b649ef27682c6b9369b073c1058` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x49a313673d4354ddc596e9b2131964fbfcd872b0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x4cbce6e06b38b09c5d5747507eda77717d8434fe` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x52f44783bdf480e88c0ed4cf341a933cacfdbcaa` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x574d446cdf628f9a8b8b244a1483f77584940dcb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x61cfecdc60605c1b9fd57854d7607786af4b949f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x6473afbf80732651450f083a03f46e7b463f0a19` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x69282f841459a3d83984dbad366e2cc14c5b2aa2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x69e9fbc6a01407f194f3aa5af77e4c324f77c5cd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x73be9e99faa2df5f504252bbfcd86ab7bd362457` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x822c433922f80f905e4f6d052bda468389c8c379` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x841d8919f37ba52abc6ca36df1583917ea5183ee` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x85a094575806c6502bb97716f711d4182a54f14d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x8f8165fc9d56902e4b25898b0f2fb169bd27c490` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x940f7994921a292a5062dc81c65511fda79f4bc9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x9fad67533babbcc19633d17978702b7b1a27ac74` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xa4726706935901fe7dd0f23cf5d4fb19867dfc88` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xa7455515a29d852639cc2927147b96039ec5abbf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xaecbf30602caf42467e7120c04271edcc843f3c7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xb1f19e492401545c1b060c4b18688f9178325b4d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xb24999cf67e4eacbf164bce9138136f33589d969` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xb30778550a959c207601d77ff13fe38a5abb2546` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xb58078cbe44fb2cb51cdf59e02fc35072139aeef` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xb842192120a85d51840ab9ac67cf008b9fc3a6b2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xbdf2b2e10ea12598341410f9396d519c03919e2f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xc6d1bb32c6b214d1337c5e79c965d51b7f39ac63` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xc73869475a500d5a89fd891b40ae6b9a38a18ac9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xccf619a8a7a1557fbe3b61f551971309f4818e24` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xdbf42c26ac554a492ca76b808cd91e106865c391` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xe0866edc0cc43ff07bfe126f3cb2f94a0803047f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xe82c5f834de565034f8d683a79d45628e90158a2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xf1ea78421fc28dbfe620bb79c9945a4ade110200` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xfe631743eef5418103738d41d8221423e675b249` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xfe6b1a3b9ca4b5463cafc4ddd3d996ca7a2cd15b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xff3c2f49c4558234aa490de1790087be5cae9008` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xffb876bd5bee99e992cac826a04396002f5f4a65` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x1289f70b8a16797cccbfcca8a845f36324ac9f8b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | linea | n/a | 2 deployments: linea `0x72ccf64ee5e2c7629ee4eee3e6ad6990289178ae`; linea `0xe1efc9336d6ee679f1b47a01d4d0ef5ab8cbd269` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0xc6ae1db6c66d909f7bfeeeb24f9adb8620bf9dbf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0xc95a4bc5c14cc6a23af46ba50d3785d5fd55446d` | ❓ Unverified |

## Deployer Expansion Inventory

These rows are additive inventory from `project_contracts.discovery_source=deployer_expansion`; they do not change scope matching, coverage, or logic topography in this brief.

- Source: `project_contracts.discovery_source=deployer_expansion`
- Decision run: `deployer-candidate-production-20260712`
- Total contracts: 456
- Live contracts: 4
- Unknown liveness contracts: 452
- Source-verified contracts: 193
- Currently scope-matched contracts retained as-is: 0
- Classification counts: candidate review=90, contamination review=8, source verified unclassified=95, unverified unclassified=263

Showing first 200 of 456 contracts. The complete deployer expansion list is in `brief.json`.

| Classification | Contract | Address-Book Class | Role | Liveness | Source | Decision | Deployer |
|---|---|---|---|---|---|---|---|
| candidate review | Bn128SchnorrVerifier<br>`0x8d42d317b2bd6b60183461ed41bd00f17c3f3fe8` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x4cf0a877e906dead748a41ae7da8c220e4247d9e` |
| candidate review | CommonProxy<br>`0x555cf9c9d1bcdbe75e0ee6536fac65c8a69cd6a3` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x4cf0a877e906dead748a41ae7da8c220e4247d9e` |
| candidate review | CrossDelegateV4<br>`0x00e5330ece02a25be85cfdfc1a19d5f06c8f5e28` | retained_scope_excluded_inventory | unknown | unknown | verified | review: missing_independent_ownership_evidence | `0x4cf0a877e906dead748a41ae7da8c220e4247d9e` |
| candidate review | CrossDelegateV4<br>`0xc95a4bc5c14cc6a23af46ba50d3785d5fd55446d` | non_address_book | unknown | unknown | verified | review: missing_independent_ownership_evidence | `0x4cf0a877e906dead748a41ae7da8c220e4247d9e` |
| candidate review | CrossProxy<br>`0xc6ae1db6c66d909f7bfeeeb24f9adb8620bf9dbf` | project_anchor | unknown | live | verified | review: no_fresh_structural_match | `0x4cf0a877e906dead748a41ae7da8c220e4247d9e` |
| candidate review | Messager<br>`0x012297f3d1cb0d685b195a70231730f4c8c86f86` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x4cf0a877e906dead748a41ae7da8c220e4247d9e` |
| candidate review | NFTLibV1<br>`0x50133f6836cb91237e17177e2985cbdad51f0cf2` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x4cf0a877e906dead748a41ae7da8c220e4247d9e` |
| candidate review | NFTLibV1<br>`0xb30778550a959c207601d77ff13fe38a5abb2546` | non_address_book | unknown | unknown | verified | review: missing_independent_ownership_evidence | `0x4cf0a877e906dead748a41ae7da8c220e4247d9e` |
| candidate review | RapidityLibV4<br>`0x1289f70b8a16797cccbfcca8a845f36324ac9f8b` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x4cf0a877e906dead748a41ae7da8c220e4247d9e` |
| candidate review | RapidityLibV4<br>`0xbe201985b711d44bbe0e77770a58c922135aa17d` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x4cf0a877e906dead748a41ae7da8c220e4247d9e` |
| candidate review | TokenManagerDelegateV2<br>`0xd4b5f10d61916bd6e0860144a91ac658de8a1437` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x4cf0a877e906dead748a41ae7da8c220e4247d9e` |
| candidate review | Bn128SchnorrVerifier<br>`0xd3a4bd71a0dee15a73c11ecb0f3d0f001b41cd53` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x9261f3a5717ff3112fb42369f98bbfb55c8a1ed2` |
| candidate review | CrossDelegate<br>`0xf9f6c923866853a265cbe2f035eeb15ac970bb4a` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x9261f3a5717ff3112fb42369f98bbfb55c8a1ed2` |
| candidate review | HTLCDebtLib<br>`0xd2d59025217d000c4bbc097e93a39baa9341206d` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x9261f3a5717ff3112fb42369f98bbfb55c8a1ed2` |
| candidate review | HTLCTxLib<br>`0x329e173f320b0805984edd9fbb0fb7b649054e44` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x9261f3a5717ff3112fb42369f98bbfb55c8a1ed2` |
| candidate review | TokenManagerDelegate<br>`0x77ecc3b0a33b5e03e4db7e27937880ea6e4979af` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x9261f3a5717ff3112fb42369f98bbfb55c8a1ed2` |
| candidate review | Bn128SchnorrVerifier<br>`0x86b830023a8593a6a98f30783029506290558d0e` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xdb13888fc7aa45d8c828325becd7c4b5c6e98779` |
| candidate review | CommonProxy<br>`0x2055ae7250f814995ab41499ba1963f2c2f58a3a` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xdb13888fc7aa45d8c828325becd7c4b5c6e98779` |
| candidate review | CommonProxy<br>`0xd557cc89ca98db85ef5ad09afba7c22583fe727e` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xdb13888fc7aa45d8c828325becd7c4b5c6e98779` |
| candidate review | CrossDelegateV4<br>`0x6a60b5099b68ac80b28f44eb30894c7d165a72f6` | non_address_book | unknown | unknown | verified | review: missing_independent_ownership_evidence | `0xdb13888fc7aa45d8c828325becd7c4b5c6e98779` |
| candidate review | HTLCTxLib<br>`0x63c5acc9bd1cfc14582a5520415480c33734f18f` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xdb13888fc7aa45d8c828325becd7c4b5c6e98779` |
| candidate review | TokenManagerDelegateV2<br>`0x1bc20d6b6a4f0d768e1b39d42575fc3cb008e865` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xdb13888fc7aa45d8c828325becd7c4b5c6e98779` |
| candidate review | TokenManagerDelegateV2<br>`0x9b1f4c3091e825a6abe451d0a266ee18005839e7` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xdb13888fc7aa45d8c828325becd7c4b5c6e98779` |
| candidate review | WrappedToken<br>`0x4d14963528a62c6e90644bfc8a419cc41dc15588` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xdb13888fc7aa45d8c828325becd7c4b5c6e98779` |
| candidate review | WrappedToken<br>`0x599b4dc9f0d267ed76b9e2da9e4b3194a410c016` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xdb13888fc7aa45d8c828325becd7c4b5c6e98779` |
| candidate review | WrappedToken<br>`0x6dc2fc72584bffa35cc6d521a22081dd0217f3b6` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xdb13888fc7aa45d8c828325becd7c4b5c6e98779` |
| candidate review | WrappedToken<br>`0x789acfd3525cc5523f95bcf45df263f17577d1a4` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xdb13888fc7aa45d8c828325becd7c4b5c6e98779` |
| candidate review | WrappedToken<br>`0xa07c874323ab6ac31d7fa3dcfb92163f363f7113` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xdb13888fc7aa45d8c828325becd7c4b5c6e98779` |
| candidate review | WrappedToken<br>`0xa3f9e72d598e99a8eb135257a57b133fd41a6d89` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xdb13888fc7aa45d8c828325becd7c4b5c6e98779` |
| candidate review | Bn128SchnorrVerifier<br>`0x6e228a699be7a3e9797009bbfb7f4a1a6516354d` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x7521eda00e2ce05ac4a9d8353d096ccb970d5188` |
| candidate review | Bn128SchnorrVerifier<br>`0x0e3f52157df2d2974949570b1871aecbaec8414d` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xe775567e538b7daa25aa4909b0c98c12e53c748b` |
| candidate review | Bn128SchnorrVerifier<br>`0x7e0195a43a5dd27c507a1f0b2371d543c9e4dfc9` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x4cf0a877e906dead748a41ae7da8c220e4247d9e` |
| candidate review | CommonProxy<br>`0x441bffbe26b819e51deb32aeadeb1f847f24d859` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x4cf0a877e906dead748a41ae7da8c220e4247d9e` |
| candidate review | CommonProxy<br>`0x69798671b1172371e49da4d74d00104cadd7ed15` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x4cf0a877e906dead748a41ae7da8c220e4247d9e` |
| candidate review | CrossDelegateV4<br>`0x2f676cb3e9178eb4913ab4d42506d1fde82296fb` | retained_scope_excluded_inventory | unknown | unknown | verified | review: missing_independent_ownership_evidence | `0x4cf0a877e906dead748a41ae7da8c220e4247d9e` |
| candidate review | CrossDelegateV4<br>`0x97e0883493e8bb7a119a1e36e53ee9e7a2d3ca7b` | non_address_book | unknown | unknown | verified | review: missing_independent_ownership_evidence | `0x4cf0a877e906dead748a41ae7da8c220e4247d9e` |
| candidate review | CrossProxy<br>`0x2715aa7156634256ae75240c2c5543814660cd04` | project_anchor | unknown | live | verified | review: no_fresh_structural_match | `0x4cf0a877e906dead748a41ae7da8c220e4247d9e` |
| candidate review | Multicall2<br>`0x1ed3538383bbfdb80343b18f85d6c5a5fb232fb6` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x4cf0a877e906dead748a41ae7da8c220e4247d9e` |
| candidate review | Multicall2<br>`0xbe5187c2a7eb776c1caeed2c37e7599fb05000d3` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x4cf0a877e906dead748a41ae7da8c220e4247d9e` |
| candidate review | NFTLibV1<br>`0x5b0b9d1a58cacb8e3f7cb72225996fc535530f6b` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x4cf0a877e906dead748a41ae7da8c220e4247d9e` |
| candidate review | NFTLibV1<br>`0xa63a35951dd74f6a00dfdb0a749f04adb27b4f27` | non_address_book | unknown | unknown | verified | review: missing_independent_ownership_evidence | `0x4cf0a877e906dead748a41ae7da8c220e4247d9e` |
| candidate review | NFTLibV1<br>`0xc95a4bc5c14cc6a23af46ba50d3785d5fd55446d` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x4cf0a877e906dead748a41ae7da8c220e4247d9e` |
| candidate review | RapidityLibV4<br>`0x4f1ab74c2a9e8f591e8a80768e115c9f75935bad` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x4cf0a877e906dead748a41ae7da8c220e4247d9e` |
| candidate review | RapidityLibV4<br>`0x555cf9c9d1bcdbe75e0ee6536fac65c8a69cd6a3` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x4cf0a877e906dead748a41ae7da8c220e4247d9e` |
| candidate review | SignatureVerifier<br>`0xffb876bd5bee99e992cac826a04396002f5f4a65` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x4cf0a877e906dead748a41ae7da8c220e4247d9e` |
| candidate review | TokenManagerDelegateV2<br>`0x50133f6836cb91237e17177e2985cbdad51f0cf2` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x4cf0a877e906dead748a41ae7da8c220e4247d9e` |
| candidate review | TokenManagerDelegateV2<br>`0x8d42d317b2bd6b60183461ed41bd00f17c3f3fe8` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x4cf0a877e906dead748a41ae7da8c220e4247d9e` |
| candidate review | WrappedToken<br>`0x05e0302e690632b33b831c61a847f159ae010282` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x4cf0a877e906dead748a41ae7da8c220e4247d9e` |
| candidate review | WrappedToken<br>`0x3bb87041edf93eaea82f47f2b495e5859085e3ee` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x4cf0a877e906dead748a41ae7da8c220e4247d9e` |
| candidate review | WrappedToken<br>`0x4b1690f6596574fcb0c1b7681e7fa0cea00fc95e` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x4cf0a877e906dead748a41ae7da8c220e4247d9e` |
| candidate review | WrappedToken<br>`0x73d9230f580eab929cde18873e4879785462728c` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x4cf0a877e906dead748a41ae7da8c220e4247d9e` |
| candidate review | WrappedToken<br>`0xb1f19e492401545c1b060c4b18688f9178325b4d` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x4cf0a877e906dead748a41ae7da8c220e4247d9e` |
| candidate review | WrappedToken<br>`0xb30778550a959c207601d77ff13fe38a5abb2546` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x4cf0a877e906dead748a41ae7da8c220e4247d9e` |
| candidate review | WrappedToken<br>`0xd7466f2600563da9ef462b5f3b6ca9506aa34c69` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x4cf0a877e906dead748a41ae7da8c220e4247d9e` |
| candidate review | WrappedToken<br>`0xe0cf5a329b861fe83814844d2382d0aa483a5e01` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x4cf0a877e906dead748a41ae7da8c220e4247d9e` |
| candidate review | Bn128SchnorrVerifier<br>`0x86b830023a8593a6a98f30783029506290558d0e` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xdb13888fc7aa45d8c828325becd7c4b5c6e98779` |
| candidate review | CommonProxy<br>`0x783353136e8b4b1eb14539422c36121af400ca6c` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xdb13888fc7aa45d8c828325becd7c4b5c6e98779` |
| candidate review | CrossDelegateV4<br>`0x011754d9a4661d914141a96a03684f147e5b2a06` | non_address_book | unknown | unknown | verified | review: missing_independent_ownership_evidence | `0xdb13888fc7aa45d8c828325becd7c4b5c6e98779` |
| candidate review | HTLCTxLib<br>`0x63c5acc9bd1cfc14582a5520415480c33734f18f` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xdb13888fc7aa45d8c828325becd7c4b5c6e98779` |
| candidate review | TokenManagerDelegateV2<br>`0x5585cb0e704c02f996892edde876745d18cbd415` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xdb13888fc7aa45d8c828325becd7c4b5c6e98779` |
| candidate review | Bn128SchnorrVerifier<br>`0x86ec03f7bafab24f69ebc456cc429b6f389ea4e4` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x05caf88ff0b089a9f31ea7275bcaa90f8ad90fb9` |
| candidate review | CrossDelegateV4<br>`0xee91925aacca9b96a77a977ab1dd1688f596858e` | non_address_book | unknown | unknown | verified | review: missing_independent_ownership_evidence | `0x05caf88ff0b089a9f31ea7275bcaa90f8ad90fb9` |
| candidate review | TokenManagerDelegateV2<br>`0xd6965a9b739240db7acd36e3afb2dfe1dae7c694` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x05caf88ff0b089a9f31ea7275bcaa90f8ad90fb9` |
| candidate review | Bn128SchnorrVerifier<br>`0xe162d75452f357cb95b8867e06174d9c410887b5` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x5ebaebc473df393e63ae5b7670434c03e28de581` |
| candidate review | MappingTokenV2<br>`0x8d9dcc422407f40bf105d8c777ccb365aceb70b6` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x5ebaebc473df393e63ae5b7670434c03e28de581` |
| candidate review | MappingTokenV2<br>`0x9e529b128e3e3ffcb261ee35e10a3366f51448e5` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x5ebaebc473df393e63ae5b7670434c03e28de581` |
| candidate review | MappingTokenV2<br>`0xd38bfdbfe7002ca56a1e05606e75aef5c521fff9` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x5ebaebc473df393e63ae5b7670434c03e28de581` |
| candidate review | PooledMappingToken<br>`0xae110a0e6e5ddb0108f6d752f754b575d62b7534` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x5ebaebc473df393e63ae5b7670434c03e28de581` |
| candidate review | Bn128SchnorrVerifier<br>`0x9c17ec2a4e07d29a2bf8a781bcdbde230159b85f` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x4cf0a877e906dead748a41ae7da8c220e4247d9e` |
| candidate review | CrossDelegateV4<br>`0x65b3ae390b3531cf94b8be3f735f72752c5d3bf9` | retained_scope_excluded_inventory | unknown | unknown | verified | review: missing_independent_ownership_evidence | `0x4cf0a877e906dead748a41ae7da8c220e4247d9e` |
| candidate review | CrossDelegateV4<br>`0x70114d2a0ec788bafee869acf7fd1f8c76491799` | non_address_book | unknown | unknown | verified | review: missing_independent_ownership_evidence | `0x4cf0a877e906dead748a41ae7da8c220e4247d9e` |
| candidate review | CrossProxy<br>`0xc21e5553c8dddf2e4a93e5bedbae436d4291f603` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x4cf0a877e906dead748a41ae7da8c220e4247d9e` |
| candidate review | CrossProxy<br>`0xffb876bd5bee99e992cac826a04396002f5f4a65` | project_anchor | unknown | live | verified | review: no_fresh_structural_match | `0x4cf0a877e906dead748a41ae7da8c220e4247d9e` |
| candidate review | FeeHelper<br>`0xb30778550a959c207601d77ff13fe38a5abb2546` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x4cf0a877e906dead748a41ae7da8c220e4247d9e` |
| candidate review | NFTLibV1<br>`0x2715aa7156634256ae75240c2c5543814660cd04` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x4cf0a877e906dead748a41ae7da8c220e4247d9e` |
| candidate review | NFTLibV1<br>`0x8968cc03fd249ad8d649d93fcec70c1b99a6b5f3` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x4cf0a877e906dead748a41ae7da8c220e4247d9e` |
| candidate review | RapidityLibV4<br>`0x290108879b633557cb35e8baa57ea9216278a61b` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x4cf0a877e906dead748a41ae7da8c220e4247d9e` |
| candidate review | RapidityLibV4<br>`0x3bb87041edf93eaea82f47f2b495e5859085e3ee` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x4cf0a877e906dead748a41ae7da8c220e4247d9e` |
| candidate review | TokenManagerDelegateV2<br>`0x09cdfc56439643d151585b77899d0dc0f982bcd2` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x4cf0a877e906dead748a41ae7da8c220e4247d9e` |
| candidate review | TokenManagerDelegateV2<br>`0x1ed3538383bbfdb80343b18f85d6c5a5fb232fb6` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x4cf0a877e906dead748a41ae7da8c220e4247d9e` |
| candidate review | TokenManagerDelegateV2<br>`0x4f1ab74c2a9e8f591e8a80768e115c9f75935bad` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x4cf0a877e906dead748a41ae7da8c220e4247d9e` |
| candidate review | Bn128SchnorrVerifier<br>`0x5b0b9d1a58cacb8e3f7cb72225996fc535530f6b` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x4cf0a877e906dead748a41ae7da8c220e4247d9e` |
| candidate review | CrossDelegateV4<br>`0x00e5330ece02a25be85cfdfc1a19d5f06c8f5e28` | retained_scope_excluded_inventory | unknown | unknown | verified | review: missing_independent_ownership_evidence | `0x4cf0a877e906dead748a41ae7da8c220e4247d9e` |
| candidate review | CrossDelegateV4<br>`0xc6ae1db6c66d909f7bfeeeb24f9adb8620bf9dbf` | non_address_book | unknown | unknown | verified | review: missing_independent_ownership_evidence | `0x4cf0a877e906dead748a41ae7da8c220e4247d9e` |
| candidate review | CrossProxy<br>`0xc21e5553c8dddf2e4a93e5bedbae436d4291f603` | project_anchor | unknown | live | verified | review: no_fresh_structural_match | `0x4cf0a877e906dead748a41ae7da8c220e4247d9e` |
| candidate review | NFTLibV1<br>`0x1289f70b8a16797cccbfcca8a845f36324ac9f8b` | non_address_book | unknown | unknown | verified | review: missing_independent_ownership_evidence | `0x4cf0a877e906dead748a41ae7da8c220e4247d9e` |
| candidate review | NFTLibV1<br>`0xb30778550a959c207601d77ff13fe38a5abb2546` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x4cf0a877e906dead748a41ae7da8c220e4247d9e` |
| candidate review | RapidityLibV4<br>`0xbe201985b711d44bbe0e77770a58c922135aa17d` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x4cf0a877e906dead748a41ae7da8c220e4247d9e` |
| candidate review | RapidityLibV4<br>`0xc95a4bc5c14cc6a23af46ba50d3785d5fd55446d` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x4cf0a877e906dead748a41ae7da8c220e4247d9e` |
| candidate review | TokenManagerDelegateV2<br>`0x1ed3538383bbfdb80343b18f85d6c5a5fb232fb6` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x4cf0a877e906dead748a41ae7da8c220e4247d9e` |
| contamination review | SignatureVerifier<br>`0x09cdfc56439643d151585b77899d0dc0f982bcd2` | non_address_book | unknown | unknown | verified | n/a | `0x4cf0a877e906dead748a41ae7da8c220e4247d9e` |
| contamination review | NFTHelperERC721T<br>`0xd8dde3abe038519cb46afd36bf8777fdc754a480` | non_address_book | unknown | unknown | verified | n/a | `0xdb13888fc7aa45d8c828325becd7c4b5c6e98779` |
| contamination review | OracleProxy<br>`0x75df5dc2769770789e6a053fe2e14454e36f9e85` | non_address_book | unknown | unknown | verified | n/a | `0xdb13888fc7aa45d8c828325becd7c4b5c6e98779` |
| contamination review | TokenManagerProxy<br>`0x09cdfc56439643d151585b77899d0dc0f982bcd2` | non_address_book | unknown | unknown | verified | n/a | `0x4cf0a877e906dead748a41ae7da8c220e4247d9e` |
| contamination review | TokenManagerProxy<br>`0x1289f70b8a16797cccbfcca8a845f36324ac9f8b` | non_address_book | unknown | unknown | verified | n/a | `0x4cf0a877e906dead748a41ae7da8c220e4247d9e` |
| contamination review | CrossDelegateV2<br>`0x75df5dc2769770789e6a053fe2e14454e36f9e85` | non_address_book | unknown | unknown | verified | n/a | `0xdb13888fc7aa45d8c828325becd7c4b5c6e98779` |
| contamination review | SignatureVerifier<br>`0x4f1d3d9ce4bb7646c35dcd05d3296f106f12345c` | non_address_book | unknown | unknown | verified | n/a | `0x5ebaebc473df393e63ae5b7670434c03e28de581` |
| contamination review | TokenManagerProxy<br>`0xf06d72375d3bf5ab1a8222858e2098b16e5e8355` | non_address_book | unknown | unknown | verified | n/a | `0x5ebaebc473df393e63ae5b7670434c03e28de581` |
| source verified unclassified | CrossAdminManager<br>`0xe1efc9336d6ee679f1b47a01d4d0ef5ab8cbd269` | non_address_book | unknown | unknown | verified | n/a | `0x4cf0a877e906dead748a41ae7da8c220e4247d9e` |
| source verified unclassified | CrossSwapEntrance<br>`0x9cf661e0d591e44f2458b45f37eb72c07b3a28c6` | non_address_book | unknown | unknown | verified | n/a | `0x4cf0a877e906dead748a41ae7da8c220e4247d9e` |
| source verified unclassified | FeeHelper<br>`0xeac9c22e8f8f33bd40e143b4008125bbf3574988` | non_address_book | unknown | unknown | verified | n/a | `0x4cf0a877e906dead748a41ae7da8c220e4247d9e` |
| source verified unclassified | OracleDelegate<br>`0xc21e5553c8dddf2e4a93e5bedbae436d4291f603` | non_address_book | unknown | unknown | verified | n/a | `0x4cf0a877e906dead748a41ae7da8c220e4247d9e` |
| source verified unclassified | OracleProxy<br>`0xbe5187c2a7eb776c1caeed2c37e7599fb05000d3` | non_address_book | unknown | unknown | verified | n/a | `0x4cf0a877e906dead748a41ae7da8c220e4247d9e` |
| source verified unclassified | TokenManagerProxy<br>`0x1ed3538383bbfdb80343b18f85d6c5a5fb232fb6` | non_address_book | unknown | unknown | verified | n/a | `0x4cf0a877e906dead748a41ae7da8c220e4247d9e` |
| source verified unclassified | WanCctpV2<br>`0xa63a35951dd74f6a00dfdb0a749f04adb27b4f27` | non_address_book | unknown | unknown | verified | n/a | `0x4cf0a877e906dead748a41ae7da8c220e4247d9e` |
| source verified unclassified | WmbGateway<br>`0x9c0e23e1c597da8024eb62cd4e3c95e3d2478408` | non_address_book | unknown | unknown | verified | n/a | `0x4cf0a877e906dead748a41ae7da8c220e4247d9e` |
| source verified unclassified | OracleDelegate<br>`0xd8fc5034166e984c1131b940dde4be69491c3acc` | non_address_book | unknown | unknown | verified | n/a | `0x9261f3a5717ff3112fb42369f98bbfb55c8a1ed2` |
| source verified unclassified | OracleProxy<br>`0xd948675a4da40cd7aa6f1ec1f10db5a4ffb6b990` | non_address_book | unknown | unknown | verified | n/a | `0x9261f3a5717ff3112fb42369f98bbfb55c8a1ed2` |
| source verified unclassified | QuotaDelegate<br>`0x40f8298199e09d7fada87e3b1ef9061bdca2fe89` | non_address_book | unknown | unknown | verified | n/a | `0x9261f3a5717ff3112fb42369f98bbfb55c8a1ed2` |
| source verified unclassified | QuotaProxy<br>`0xade7049af141c3258489595c807c85740bc07320` | non_address_book | unknown | unknown | verified | n/a | `0x9261f3a5717ff3112fb42369f98bbfb55c8a1ed2` |
| source verified unclassified | RapidityLib<br>`0x31432b8b5496a5332fb2e64940822bb960fadd5a` | non_address_book | unknown | unknown | verified | n/a | `0x9261f3a5717ff3112fb42369f98bbfb55c8a1ed2` |
| source verified unclassified | SignatureVerifier<br>`0x5ff81da1574bc8e19fb6aa78ea2ad97eb57c7f3e` | non_address_book | unknown | unknown | verified | n/a | `0x9261f3a5717ff3112fb42369f98bbfb55c8a1ed2` |
| source verified unclassified | TokenManagerProxy<br>`0x39af91cba3aed00e9b356ecc3675c7ef309017dd` | non_address_book | unknown | unknown | verified | n/a | `0x9261f3a5717ff3112fb42369f98bbfb55c8a1ed2` |
| source verified unclassified | HTLCDebtLibV2<br>`0x47be7cc7c13315fdd1bbf3dbab512af23961ba53` | non_address_book | unknown | unknown | verified | n/a | `0xdb13888fc7aa45d8c828325becd7c4b5c6e98779` |
| source verified unclassified | Layer2BridgeDelegate<br>`0xbd4191828aeff23fb9e0249a5ae583a4b9425e49` | non_address_book | unknown | unknown | verified | n/a | `0xdb13888fc7aa45d8c828325becd7c4b5c6e98779` |
| source verified unclassified | Layer2BridgeDelegateV2<br>`0x011754d9a4661d914141a96a03684f147e5b2a06` | non_address_book | unknown | unknown | verified | n/a | `0xdb13888fc7aa45d8c828325becd7c4b5c6e98779` |
| source verified unclassified | Layer2BridgeDelegateV2<br>`0x4dee9c3c1b8718ef21758e7296dc921cf5305dfb` | non_address_book | unknown | unknown | verified | n/a | `0xdb13888fc7aa45d8c828325becd7c4b5c6e98779` |
| source verified unclassified | NFTHelper<br>`0xa39ee04e8208c3309026f34007f036cbb03fa01d` | non_address_book | unknown | unknown | verified | n/a | `0xdb13888fc7aa45d8c828325becd7c4b5c6e98779` |
| source verified unclassified | OracleDelegate<br>`0x7f70d0047ae63131ab77f179a90f1a41ceea93aa` | non_address_book | unknown | unknown | verified | n/a | `0xdb13888fc7aa45d8c828325becd7c4b5c6e98779` |
| source verified unclassified | OracleDelegate<br>`0x8d508595f094c42ade6d3625a206abe9551c5858` | non_address_book | unknown | unknown | verified | n/a | `0xdb13888fc7aa45d8c828325becd7c4b5c6e98779` |
| source verified unclassified | OracleProxy<br>`0xbf9076b4ea99c1fce5e2b0fc7ac5955333f47d18` | non_address_book | unknown | unknown | verified | n/a | `0xdb13888fc7aa45d8c828325becd7c4b5c6e98779` |
| source verified unclassified | RapidityLibV2<br>`0xf7ba155556e2cd4dfe3fe26e506a14d2f4b97613` | non_address_book | unknown | unknown | verified | n/a | `0xdb13888fc7aa45d8c828325becd7c4b5c6e98779` |
| source verified unclassified | SignatureVerifier<br>`0x8818c74956ae90c6c7b317439373052073e62999` | non_address_book | unknown | unknown | verified | n/a | `0xdb13888fc7aa45d8c828325becd7c4b5c6e98779` |
| source verified unclassified | TokenManagerProxy<br>`0xc928c8e48647c8b0ce550c2352087b1cf5c6111e` | non_address_book | unknown | unknown | verified | n/a | `0xdb13888fc7aa45d8c828325becd7c4b5c6e98779` |
| source verified unclassified | WrappedERC1155T1<br>`0x990825c5d894385f1c5bd36b6427c5336d984e07` | non_address_book | unknown | unknown | verified | n/a | `0xdb13888fc7aa45d8c828325becd7c4b5c6e98779` |
| source verified unclassified | WrappedERC721T1<br>`0xf6b9cd2e63f45c9b172ddfcdcf7eed5402fdf245` | non_address_book | unknown | unknown | verified | n/a | `0xdb13888fc7aa45d8c828325becd7c4b5c6e98779` |
| source verified unclassified | MappingTokenV2<br>`0x283ad86af3e6e96cef7845a6bcbf313019812d09` | non_address_book | unknown | unknown | verified | n/a | `0x7521eda00e2ce05ac4a9d8353d096ccb970d5188` |
| source verified unclassified | MappingTokenV2<br>`0x30950e8705d9345a8ddf25caaab038df1dbbbc27` | non_address_book | unknown | unknown | verified | n/a | `0x7521eda00e2ce05ac4a9d8353d096ccb970d5188` |
| source verified unclassified | MappingTokenV2<br>`0x5331141912a84875beb757e175d991a2c6c89ef4` | non_address_book | unknown | unknown | verified | n/a | `0x7521eda00e2ce05ac4a9d8353d096ccb970d5188` |
| source verified unclassified | MappingTokenV2<br>`0x935ad14b4cc1d7bd3efdf42c1a6f0bdce63a93bb` | non_address_book | unknown | unknown | verified | n/a | `0x7521eda00e2ce05ac4a9d8353d096ccb970d5188` |
| source verified unclassified | MappingTokenV2<br>`0xb436452915e19f36cdd4d9f6c4fd83484b7f2c36` | non_address_book | unknown | unknown | verified | n/a | `0x7521eda00e2ce05ac4a9d8353d096ccb970d5188` |
| source verified unclassified | MappingTokenV2<br>`0xcd6f474afb8304aa025ab19b89394e35a2b2dedd` | non_address_book | unknown | unknown | verified | n/a | `0x7521eda00e2ce05ac4a9d8353d096ccb970d5188` |
| source verified unclassified | OracleDelegate<br>`0x079497f92f4522b3b17112aa8d28c4ce138935ba` | non_address_book | unknown | unknown | verified | n/a | `0x7521eda00e2ce05ac4a9d8353d096ccb970d5188` |
| source verified unclassified | OracleProxy<br>`0xcaa36de573f8203f880a1c0bbdcea996bf3b1748` | non_address_book | unknown | unknown | verified | n/a | `0x7521eda00e2ce05ac4a9d8353d096ccb970d5188` |
| source verified unclassified | SignatureVerifier<br>`0xe727e81ea730ea216ca3720c2597fd14bf2b825a` | non_address_book | unknown | unknown | verified | n/a | `0x7521eda00e2ce05ac4a9d8353d096ccb970d5188` |
| source verified unclassified | TokenManagerProxy<br>`0xc814ff82e04c556fba1639f1fddc158709184169` | non_address_book | unknown | unknown | verified | n/a | `0x7521eda00e2ce05ac4a9d8353d096ccb970d5188` |
| source verified unclassified | MappingTokenV2<br>`0x147dbae284bbd624b7b5a98dc862e21e8857446d` | non_address_book | unknown | unknown | verified | n/a | `0xe775567e538b7daa25aa4909b0c98c12e53c748b` |
| source verified unclassified | MappingTokenV2<br>`0x53f14c39ad32315ba97d6efe028355b6a96925ae` | non_address_book | unknown | unknown | verified | n/a | `0xe775567e538b7daa25aa4909b0c98c12e53c748b` |
| source verified unclassified | MappingTokenV2<br>`0xa4dd0b5b5e83a4d9c6b4b406affb1d388df27862` | non_address_book | unknown | unknown | verified | n/a | `0xe775567e538b7daa25aa4909b0c98c12e53c748b` |
| source verified unclassified | MappingTokenV2<br>`0xa4fc4a0a55673102bb3fda1b5615043fa5406cac` | non_address_book | unknown | unknown | verified | n/a | `0xe775567e538b7daa25aa4909b0c98c12e53c748b` |
| source verified unclassified | MappingTokenV2<br>`0xb668cd490a4421f993f93be2819a922dbbb32804` | non_address_book | unknown | unknown | verified | n/a | `0xe775567e538b7daa25aa4909b0c98c12e53c748b` |
| source verified unclassified | MappingTokenV2<br>`0xbef0081000cba68c96cc3c475b9368aeb66e958f` | non_address_book | unknown | unknown | verified | n/a | `0xe775567e538b7daa25aa4909b0c98c12e53c748b` |
| source verified unclassified | MappingTokenV2<br>`0xdd7f2bc5f0ef210ca183349ae90785fdfb374ae7` | non_address_book | unknown | unknown | verified | n/a | `0xe775567e538b7daa25aa4909b0c98c12e53c748b` |
| source verified unclassified | OracleDelegate<br>`0x1d920b2a602e1339a18855eaca5ef6a51527627c` | non_address_book | unknown | unknown | verified | n/a | `0xe775567e538b7daa25aa4909b0c98c12e53c748b` |
| source verified unclassified | OracleDelegate<br>`0x9c9ec2790a654528762d14a44c09f3083f7d7d79` | non_address_book | unknown | unknown | verified | n/a | `0xe775567e538b7daa25aa4909b0c98c12e53c748b` |
| source verified unclassified | OracleProxy<br>`0xffd3e7dabcdec920eed13b19a81b205aa0dd6e05` | non_address_book | unknown | unknown | verified | n/a | `0xe775567e538b7daa25aa4909b0c98c12e53c748b` |
| source verified unclassified | QuotaDelegate<br>`0x5950e891188addad309fd885cfd8d781dfef1969` | non_address_book | unknown | unknown | verified | n/a | `0xe775567e538b7daa25aa4909b0c98c12e53c748b` |
| source verified unclassified | QuotaDelegate<br>`0x7ee4c21c1932176e87df17f1db95ab7e24d5cb4a` | non_address_book | unknown | unknown | verified | n/a | `0xe775567e538b7daa25aa4909b0c98c12e53c748b` |
| source verified unclassified | QuotaProxy<br>`0x603be493e0b0e5181c5f0799afb003bd8ed076a5` | non_address_book | unknown | unknown | verified | n/a | `0xe775567e538b7daa25aa4909b0c98c12e53c748b` |
| source verified unclassified | QuotaProxy<br>`0x83600c1be0dd23dbe7ed43cd1f130c4d21c51f0d` | non_address_book | unknown | unknown | verified | n/a | `0xe775567e538b7daa25aa4909b0c98c12e53c748b` |
| source verified unclassified | SignatureVerifier<br>`0xc565ed1e12ce78f3a1df9f8c3e0a1b7e8577702c` | non_address_book | unknown | unknown | verified | n/a | `0xe775567e538b7daa25aa4909b0c98c12e53c748b` |
| source verified unclassified | TokenManagerProxy<br>`0x32e1504a67826960245506706e0b129dc2a53b7f` | non_address_book | unknown | unknown | verified | n/a | `0xe775567e538b7daa25aa4909b0c98c12e53c748b` |
| source verified unclassified | TokenManagerProxy<br>`0xe136d172143993e8cf0e79d6a4db6d041120a78b` | non_address_book | unknown | unknown | verified | n/a | `0xe775567e538b7daa25aa4909b0c98c12e53c748b` |
| source verified unclassified | CrossSwapEntrance<br>`0x5bc813a8bf026e099ee8ec16fe6b178761e444d6` | non_address_book | unknown | unknown | verified | n/a | `0x4cf0a877e906dead748a41ae7da8c220e4247d9e` |
| source verified unclassified | OracleDelegate<br>`0x290108879b633557cb35e8baa57ea9216278a61b` | non_address_book | unknown | unknown | verified | n/a | `0x4cf0a877e906dead748a41ae7da8c220e4247d9e` |
| source verified unclassified | OracleProxy<br>`0x70114d2a0ec788bafee869acf7fd1f8c76491799` | non_address_book | unknown | unknown | verified | n/a | `0x4cf0a877e906dead748a41ae7da8c220e4247d9e` |
| source verified unclassified | WanCctpV2<br>`0x40c1aa1a40be3cd006ae2f4784a68fc8244e890d` | non_address_book | unknown | unknown | verified | n/a | `0x4cf0a877e906dead748a41ae7da8c220e4247d9e` |
| source verified unclassified | WanCctpV2<br>`0x5107033dd55d70e8241534c6509697dcfb5c72f8` | non_address_book | unknown | unknown | verified | n/a | `0x4cf0a877e906dead748a41ae7da8c220e4247d9e` |
| source verified unclassified | WmbGateway<br>`0xa67a44fd38ee29b802f2f4795627e45f1bee252e` | non_address_book | unknown | unknown | verified | n/a | `0x4cf0a877e906dead748a41ae7da8c220e4247d9e` |
| source verified unclassified | WmbGateway<br>`0xe156987a81a9b841c1def6f111ea69bf817fb272` | non_address_book | unknown | unknown | verified | n/a | `0x4cf0a877e906dead748a41ae7da8c220e4247d9e` |
| source verified unclassified | HTLCDebtLibV2<br>`0x47be7cc7c13315fdd1bbf3dbab512af23961ba53` | non_address_book | unknown | unknown | verified | n/a | `0xdb13888fc7aa45d8c828325becd7c4b5c6e98779` |
| source verified unclassified | Layer2BridgeDelegate<br>`0x382b085a47cff1ea34bac4fe016f5fa5f061af7a` | non_address_book | unknown | unknown | verified | n/a | `0xdb13888fc7aa45d8c828325becd7c4b5c6e98779` |
| source verified unclassified | Layer2BridgeDelegateV2<br>`0x599b4dc9f0d267ed76b9e2da9e4b3194a410c016` | non_address_book | unknown | unknown | verified | n/a | `0xdb13888fc7aa45d8c828325becd7c4b5c6e98779` |
| source verified unclassified | OracleDelegate<br>`0x7f70d0047ae63131ab77f179a90f1a41ceea93aa` | non_address_book | unknown | unknown | verified | n/a | `0xdb13888fc7aa45d8c828325becd7c4b5c6e98779` |
| source verified unclassified | OracleProxy<br>`0xbf9076b4ea99c1fce5e2b0fc7ac5955333f47d18` | non_address_book | unknown | unknown | verified | n/a | `0xdb13888fc7aa45d8c828325becd7c4b5c6e98779` |
| source verified unclassified | RapidityLibV2<br>`0x8d508595f094c42ade6d3625a206abe9551c5858` | non_address_book | unknown | unknown | verified | n/a | `0xdb13888fc7aa45d8c828325becd7c4b5c6e98779` |
| source verified unclassified | SignatureVerifier<br>`0x8818c74956ae90c6c7b317439373052073e62999` | non_address_book | unknown | unknown | verified | n/a | `0xdb13888fc7aa45d8c828325becd7c4b5c6e98779` |
| source verified unclassified | TokenManagerProxy<br>`0xc928c8e48647c8b0ce550c2352087b1cf5c6111e` | non_address_book | unknown | unknown | verified | n/a | `0xdb13888fc7aa45d8c828325becd7c4b5c6e98779` |
| source verified unclassified | Multicall2<br>`0x149180976acce60ced0a9c339853c9d1d4160765` | non_address_book | unknown | unknown | verified | n/a | `0x05caf88ff0b089a9f31ea7275bcaa90f8ad90fb9` |
| source verified unclassified | OracleDelegate<br>`0x9c11539603661b6c90e65e96aa8ac4b8e4b914c8` | non_address_book | unknown | unknown | verified | n/a | `0x05caf88ff0b089a9f31ea7275bcaa90f8ad90fb9` |
| source verified unclassified | OracleProxy<br>`0x4c0cadc3f72992c95475e55506b27b451b04c11a` | non_address_book | unknown | unknown | verified | n/a | `0x05caf88ff0b089a9f31ea7275bcaa90f8ad90fb9` |
| source verified unclassified | SignatureVerifier<br>`0xe0c8c2fdc6fc440bd1ec918299585321494536ff` | non_address_book | unknown | unknown | verified | n/a | `0x05caf88ff0b089a9f31ea7275bcaa90f8ad90fb9` |
| source verified unclassified | TokenManagerProxy<br>`0x77e3695c26ff538b4db9593b20620b73d00c7059` | non_address_book | unknown | unknown | verified | n/a | `0x05caf88ff0b089a9f31ea7275bcaa90f8ad90fb9` |
| source verified unclassified | CrossProxy<br>`0x079ae74b9ebd1d4f51ce2d1848565829b081099e` | non_address_book | unknown | unknown | verified | n/a | `0x5ebaebc473df393e63ae5b7670434c03e28de581` |
| source verified unclassified | OracleDelegate<br>`0x69f3cd9ccd1e06c4152f0979546cabf4263a0fbb` | non_address_book | unknown | unknown | verified | n/a | `0x5ebaebc473df393e63ae5b7670434c03e28de581` |
| source verified unclassified | OracleProxy<br>`0x716f88d32b52342af040b2e775871dff56ebd035` | non_address_book | unknown | unknown | verified | n/a | `0x5ebaebc473df393e63ae5b7670434c03e28de581` |
| source verified unclassified | QuotaDelegate<br>`0x3c84ef5880102a2424ce87837ec2e524e228281b` | non_address_book | unknown | unknown | verified | n/a | `0x5ebaebc473df393e63ae5b7670434c03e28de581` |
| source verified unclassified | QuotaProxy<br>`0x4c4ca7afd772cdc4f78b04b18df675f9e140c845` | non_address_book | unknown | unknown | verified | n/a | `0x5ebaebc473df393e63ae5b7670434c03e28de581` |
| source verified unclassified | Multicall2<br>`0x5b0b9d1a58cacb8e3f7cb72225996fc535530f6b` | non_address_book | unknown | unknown | verified | n/a | `0x4cf0a877e906dead748a41ae7da8c220e4247d9e` |
| source verified unclassified | Multicall2<br>`0x8d42d317b2bd6b60183461ed41bd00f17c3f3fe8` | non_address_book | unknown | unknown | verified | n/a | `0x4cf0a877e906dead748a41ae7da8c220e4247d9e` |
| source verified unclassified | Multicall2<br>`0xd4b5f10d61916bd6e0860144a91ac658de8a1437` | non_address_book | unknown | unknown | verified | n/a | `0x4cf0a877e906dead748a41ae7da8c220e4247d9e` |
| source verified unclassified | OracleDelegate<br>`0x7e0195a43a5dd27c507a1f0b2371d543c9e4dfc9` | non_address_book | unknown | unknown | verified | n/a | `0x4cf0a877e906dead748a41ae7da8c220e4247d9e` |
| source verified unclassified | OracleDelegate<br>`0xbe5187c2a7eb776c1caeed2c37e7599fb05000d3` | non_address_book | unknown | unknown | verified | n/a | `0x4cf0a877e906dead748a41ae7da8c220e4247d9e` |
| source verified unclassified | OracleProxy<br>`0xdf8af8c2e8cad112e501c4c3c639a3380985e3fe` | non_address_book | unknown | unknown | verified | n/a | `0x4cf0a877e906dead748a41ae7da8c220e4247d9e` |
| source verified unclassified | SignatureVerifier<br>`0x6957e0df854b8dc2cada2bac902544f2c34ebfbd` | non_address_book | unknown | unknown | verified | n/a | `0x4cf0a877e906dead748a41ae7da8c220e4247d9e` |
| source verified unclassified | TokenManagerProxy<br>`0x50133f6836cb91237e17177e2985cbdad51f0cf2` | non_address_book | unknown | unknown | verified | n/a | `0x4cf0a877e906dead748a41ae7da8c220e4247d9e` |
| source verified unclassified | TokenManagerProxy<br>`0x97e0883493e8bb7a119a1e36e53ee9e7a2d3ca7b` | non_address_book | unknown | unknown | verified | n/a | `0x4cf0a877e906dead748a41ae7da8c220e4247d9e` |
| source verified unclassified | WmbGateway<br>`0x2e042cf87aea59c4826b379e3302b8ac02389a3d` | non_address_book | unknown | unknown | verified | n/a | `0x4cf0a877e906dead748a41ae7da8c220e4247d9e` |
| source verified unclassified | Multicall2<br>`0xd4b5f10d61916bd6e0860144a91ac658de8a1437` | non_address_book | unknown | unknown | verified | n/a | `0x4cf0a877e906dead748a41ae7da8c220e4247d9e` |
| source verified unclassified | OracleDelegate<br>`0xbe5187c2a7eb776c1caeed2c37e7599fb05000d3` | non_address_book | unknown | unknown | verified | n/a | `0x4cf0a877e906dead748a41ae7da8c220e4247d9e` |
| source verified unclassified | OracleProxy<br>`0x8d42d317b2bd6b60183461ed41bd00f17c3f3fe8` | non_address_book | unknown | unknown | verified | n/a | `0x4cf0a877e906dead748a41ae7da8c220e4247d9e` |
| source verified unclassified | SignatureVerifier<br>`0x09cdfc56439643d151585b77899d0dc0f982bcd2` | non_address_book | unknown | unknown | verified | n/a | `0x4cf0a877e906dead748a41ae7da8c220e4247d9e` |
| source verified unclassified | TokenManagerProxy<br>`0x50133f6836cb91237e17177e2985cbdad51f0cf2` | non_address_book | unknown | unknown | verified | n/a | `0x4cf0a877e906dead748a41ae7da8c220e4247d9e` |
| unverified unclassified | UnnamedContract<br>`0x0b98183f06ce5694736880ed644c74606e5d3895` | non_address_book | unknown | unknown | unverified | n/a | `0x714ba5cd1fd5176c2d206e5be5a972f734026661` |
| unverified unclassified | UnnamedContract<br>`0x0eff4c50f6c32a2815d79bded30eb60e2410c601` | non_address_book | unknown | unknown | unverified | n/a | `0x714ba5cd1fd5176c2d206e5be5a972f734026661` |
| unverified unclassified | UnnamedContract<br>`0x169ea2e2c8783a9da305f563c65793525e831f62` | non_address_book | unknown | unknown | unverified | n/a | `0x714ba5cd1fd5176c2d206e5be5a972f734026661` |
| unverified unclassified | UnnamedContract<br>`0x2532d74f8db5b369e58dafbd1a104890f8dfa000` | non_address_book | unknown | unknown | unverified | n/a | `0x714ba5cd1fd5176c2d206e5be5a972f734026661` |
| unverified unclassified | UnnamedContract<br>`0x2af614e23dd48a8a3f6b59245c1458712e55bc37` | non_address_book | unknown | unknown | unverified | n/a | `0x714ba5cd1fd5176c2d206e5be5a972f734026661` |
| unverified unclassified | UnnamedContract<br>`0x474999877e40db4a7e3211b0889b76131e35ea04` | non_address_book | unknown | unknown | unverified | n/a | `0x5f5ddee54ca451bc20be2c63362e770172df1937` |
| unverified unclassified | UnnamedContract<br>`0x6a132d12b674d93e32b4877dc0381c72332c288d` | non_address_book | unknown | unknown | unverified | n/a | `0x714ba5cd1fd5176c2d206e5be5a972f734026661` |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [Wanchain 1.0.pdf](https://github.com/wanchain/Audits/blob/master/Wanchain%201.0.pdf) | unknown | Audit | 2018-07 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 14 | high |
| [Wanchain Open Storeman.pdf](https://github.com/wanchain/Audits/blob/master/Wanchain%20Open%20Storeman.pdf) | unknown | Audit | 2019-02 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 3 | high |
| [Wanchain PoS.pdf](https://github.com/wanchain/Audits/blob/master/Wanchain%20PoS.pdf) | unknown | Audit | 2019-07 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 4 | high |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [3319] Wanchain 1.0.pdf — no match: All contract names extracted from the vulnerability table and evaluation sections. Date from page header.
- [3320] Wanchain Open Storeman.pdf — no match: Audit report explicitly lists three contracts in scope: ImprovedStoremanGroupAdmin.sol, StoremanGroup.sol, StoremanLottery.sol. Audit completion date is 2019.02.23.
- [3321] Wanchain PoS.pdf — no match: Audit report explicitly lists four contracts in scope with file paths. Audit completion date is 2019.07.22.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| Wanchain 1.0.pdf | wan-alt.sol | unmatched — not counted | — | listed in scope table and evaluated in section 4.2 | no |
| Wanchain 1.0.pdf | wan-token.sol | unmatched — not counted | — | listed in scope table and evaluated in section 4.3 | no |
| Wanchain 1.0.pdf | ConvertLib.sol | unmatched — not counted | — | listed in scope table and evaluated in section 4.4 | no |
| Wanchain 1.0.pdf | ERC20Protocol.sol | unmatched — not counted | — | listed in scope table and evaluated in section 4.5 | no |
| Wanchain 1.0.pdf | HTLCBase.sol | unmatched — not counted | — | listed in scope table and evaluated in section 4.6 | no |
| Wanchain 1.0.pdf | HTLCETH.sol | unmatched — not counted | — | listed in scope table and evaluated in section 4.7 | no |
| Wanchain 1.0.pdf | HTLCWETH.sol | unmatched — not counted | — | listed in scope table and evaluated in section 4.8 | no |
| Wanchain 1.0.pdf | Halt.sol | unmatched — not counted | — | listed in scope table and evaluated in section 4.9 | no |
| Wanchain 1.0.pdf | Owned.sol | unmatched — not counted | — | listed in scope table and evaluated in section 4.10 | no |
| Wanchain 1.0.pdf | SafeMath.sol | unmatched — not counted | — | listed in scope table and evaluated in section 4.11 | no |
| Wanchain 1.0.pdf | StandardToken.sol | unmatched — not counted | — | listed in scope table and evaluated in section 4.12 | no |
| Wanchain 1.0.pdf | StoremanGroupAdmin.sol | unmatched — not counted | — | listed in scope table and evaluated in section 4.13 | no |
| Wanchain 1.0.pdf | WETH.sol | unmatched — not counted | — | listed in scope table and evaluated in section 4.14 | no |
| Wanchain 1.0.pdf | WETHManager.sol | unmatched — not counted | — | listed in scope table and evaluated in section 4.15 | no |
| Wanchain Open Storeman.pdf | ImprovedStoremanGroupAdmin | unmatched — not counted | — | listed in scope table and audit summary | no |
| Wanchain Open Storeman.pdf | StoremanGroup | unmatched — not counted | — | listed in scope table and audit summary | no |
| Wanchain Open Storeman.pdf | StoremanLottery | unmatched — not counted | — | listed in scope table and audit summary | no |
| Wanchain PoS.pdf | pos_control_contracts | unmatched — not counted | — | listed in scope table and audit report | no |
| Wanchain PoS.pdf | pos_staking_contracts | unmatched — not counted | — | listed in scope table and audit report | no |
| Wanchain PoS.pdf | random_beacon_contract | unmatched — not counted | — | listed in scope table and audit report | no |
| Wanchain PoS.pdf | slot_leader_select_contracts | unmatched — not counted | — | listed in scope table and audit report | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| optimism | `0x00e5330ece02a25be85cfdfc1a19d5f06c8f5e28` | CrossDelegateV4 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | `0x2216072a246a84f7b9ce0f1415dd239c9bf201ab` | CrossDelegateV4 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| moonbeam | `0x6372aec6263aa93eacedc994d38aa9117b6b95b5` | CrossDelegateV4 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| moonriver | `0xde1ae3c465354f01189150f3836c7c15a1d6671d` | CrossDelegateV4 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0x2715aa7156634256ae75240c2c5543814660cd04` | CrossDelegateV4 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0xf7ba155556e2cd4dfe3fe26e506a14d2f4b97613` | CrossDelegateV4 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| celo | `0x14ca89ac9cd73b01bf71a3af3f8cf8fd224d6a1d` | CrossDelegateV4 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| linea | `0x65b3ae390b3531cf94b8be3f735f72752c5d3bf9` | CrossDelegateV4 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| blast | `0x00e5330ece02a25be85cfdfc1a19d5f06c8f5e28` | CrossDelegateV4 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0xc3711bdbe7e3063bf6c22e7fed42f782ac82baee` | CrossDelegateV6 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | `0x74e121a34a66d54c33f3291f2cdf26b1cd037c3a` | CrossProxy | proxy | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | `0x592de30bebff484b5a43a6e8e3ec1a814902e0b6` | Fee | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 90 |
| upstream | 0 |
| standard_library | 3 |
| needs_review | 275 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 3
- Inherited remapped matches: 0
- Address-book scope dispositions: 0 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 21 unmatched
- Matched-own operational status: 0 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=3
- Match method counts: n/a

Zero-match audit list:

- [3319] Wanchain 1.0.pdf
- [3320] Wanchain Open Storeman.pdf
- [3321] Wanchain PoS.pdf

Fork inheritance lineage and inherited audits are included when available.
