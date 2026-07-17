# Agentic Audit Brief: Wan Bridge

## Project Overview

- Project: Wan Bridge (`wan-bridge`)
- Website: [https://bridge.wanchain.org](https://bridge.wanchain.org)
- Lifecycle: unknown
- Generated: 2026-07-04T14:54:10.116Z
- Pipeline run: v2-pipeline-2026-07-01-3e33f2-f007
- Chains: arbitrum, avalanche, base, blast, bsc, celo, ethereum, fantom, linea, metis, moonbeam, moonriver, optimism, polygon, polygon-zkevm, zksync-era
- Contract surface: 175 unique implementations (288 raw deployments)
- DeFi Llama TVL: $23,452,772.39
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Bridge. Structurally: 98 project-authored contract(s) across 13 chain(s); 32 ERC20 tokens, 1 ERC721 NFT, 1 ERC1155 multi-token; role-gated via AccessControl; upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 9 functional families. Its contracts share 16 common project-authored base contract(s) (crossstoragev4, crossstoragev3, crossstoragev2). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 385; live-surface contracts included: 283 (139 live, 144 unknown).
- Excluded by liveness: 102 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 2/44 (4.5%)
- Deployed-live implementations: 47 of 175 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 2/53
- Verified + Unaudited implementations: 51
- Verified by bytecode match: 0
- Unverified implementations: 122
- Unique implementations: 175
- Raw deployments: 288
- Audits discovered: 3 (3 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 1
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2019-07 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 3 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 2 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| unknown | Tier 2 | 2 | 3.8% | 2019-07 |

## Contract Surface

### ✅ Verified + Audited (2)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| CrossProxy | proxy | avalanche | n/a | [`0x74e121a34a66d54c33f3291f2cdf26b1cd037c3a`](./contracts/avalanche-43114/0x74e121a34a66d54c33f3291f2cdf26b1cd037c3a/) | ✅ Audited |
| OracleProxy | operational_periphery | metis | n/a | [`0xbe5187c2a7eb776c1caeed2c37e7599fb05000d3`](./contracts/metis-1088/0xbe5187c2a7eb776c1caeed2c37e7599fb05000d3/) | ✅ Audited |

### ⚠️ Verified + Unaudited (51)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| ARBIS | unknown | arbitrum | n/a | [`0x9f20de1fc9b161b34089cbeae888168b44b03461`](./contracts/arbitrum-42161/0x9f20de1fc9b161b34089cbeae888168b44b03461/) | ⚠️ Unaudited |
| AutoFarmV2_CrossChain | unknown | celo | n/a | 2 deployments: moonriver `0xfada8cc923514f1d7b0586ad554b4a0cead4680e`; celo [`0xdd11b66b90402f294a017c4688509c364312303f`](./contracts/celo-42220/0xdd11b66b90402f294a017c4688509c364312303f/) | ⚠️ Unaudited |
| Bn128SchnorrVerifier | unknown | moonriver | n/a | 12 deployments: optimism `0x8d42d317b2bd6b60183461ed41bd00f17c3f3fe8`; bsc `0xd3a4bd71a0dee15a73c11ecb0f3d0f001b41cd53`; polygon `0x86b830023a8593a6a98f30783029506290558d0e`; metis `0x8d42d317b2bd6b60183461ed41bd00f17c3f3fe8`; moonbeam `0x6e228a699be7a3e9797009bbfb7f4a1a6516354d`; moonriver [`0x0e3f52157df2d2974949570b1871aecbaec8414d`](./contracts/moonriver-1285/0x0e3f52157df2d2974949570b1871aecbaec8414d/); base `0x7e0195a43a5dd27c507a1f0b2371d543c9e4dfc9`; arbitrum `0x86b830023a8593a6a98f30783029506290558d0e`; celo `0x86ec03f7bafab24f69ebc456cc429b6f389ea4e4`; avalanche `0xe162d75452f357cb95b8867e06174d9c410887b5`; linea `0x9c17ec2a4e07d29a2bf8a781bcdbde230159b85f`; blast `0x5b0b9d1a58cacb8e3f7cb72225996fc535530f6b` | ⚠️ Unaudited |
| CommonProxy | unknown | polygon | n/a | [`0x2055ae7250f814995ab41499ba1963f2c2f58a3a`](./contracts/polygon-137/0x2055ae7250f814995ab41499ba1963f2c2f58a3a/) | ⚠️ Unaudited |
| CrossDelegate | unknown | bsc | n/a | [`0xf9f6c923866853a265cbe2f035eeb15ac970bb4a`](./contracts/bsc-56/0xf9f6c923866853a265cbe2f035eeb15ac970bb4a/) | ⚠️ Unaudited |
| CrossDelegateV4 | unknown | optimism | n/a | 2 deployments: optimism [`0x00e5330ece02a25be85cfdfc1a19d5f06c8f5e28`](./contracts/optimism-10/0x00e5330ece02a25be85cfdfc1a19d5f06c8f5e28/); optimism `0xc6ae1db6c66d909f7bfeeeb24f9adb8620bf9dbf` | ⚠️ Unaudited |
| CrossDelegateV4 | unknown | polygon | n/a | [`0x2216072a246a84f7b9ce0f1415dd239c9bf201ab`](./contracts/polygon-137/0x2216072a246a84f7b9ce0f1415dd239c9bf201ab/) | ⚠️ Unaudited |
| CrossDelegateV4 | unknown | moonbeam | n/a | [`0x6372aec6263aa93eacedc994d38aa9117b6b95b5`](./contracts/moonbeam-1284/0x6372aec6263aa93eacedc994d38aa9117b6b95b5/) | ⚠️ Unaudited |
| CrossDelegateV4 | unknown | moonriver | n/a | [`0xde1ae3c465354f01189150f3836c7c15a1d6671d`](./contracts/moonriver-1285/0xde1ae3c465354f01189150f3836c7c15a1d6671d/) | ⚠️ Unaudited |
| CrossDelegateV4 | unknown | base | n/a | 2 deployments: base [`0x2715aa7156634256ae75240c2c5543814660cd04`](./contracts/base-8453/0x2715aa7156634256ae75240c2c5543814660cd04/); base `0x2f676cb3e9178eb4913ab4d42506d1fde82296fb` | ⚠️ Unaudited |
| CrossDelegateV4 | unknown | arbitrum | n/a | 9 deployments: optimism `0xc95a4bc5c14cc6a23af46ba50d3785d5fd55446d`; polygon `0x6a60b5099b68ac80b28f44eb30894c7d165a72f6`; metis `0xc0264277fcca5fcfabd41a8bc01c1fcaf8383e41`; metis `0xc95a4bc5c14cc6a23af46ba50d3785d5fd55446d`; base `0x97e0883493e8bb7a119a1e36e53ee9e7a2d3ca7b`; arbitrum [`0x011754d9a4661d914141a96a03684f147e5b2a06`](./contracts/arbitrum-42161/0x011754d9a4661d914141a96a03684f147e5b2a06/); celo `0xee91925aacca9b96a77a977ab1dd1688f596858e`; linea `0x70114d2a0ec788bafee869acf7fd1f8c76491799`; blast `0xc6ae1db6c66d909f7bfeeeb24f9adb8620bf9dbf` | ⚠️ Unaudited |
| CrossDelegateV4 | unknown | arbitrum | n/a | [`0xf7ba155556e2cd4dfe3fe26e506a14d2f4b97613`](./contracts/arbitrum-42161/0xf7ba155556e2cd4dfe3fe26e506a14d2f4b97613/) | ⚠️ Unaudited |
| CrossDelegateV4 | unknown | celo | n/a | [`0x14ca89ac9cd73b01bf71a3af3f8cf8fd224d6a1d`](./contracts/celo-42220/0x14ca89ac9cd73b01bf71a3af3f8cf8fd224d6a1d/) | ⚠️ Unaudited |
| CrossDelegateV4 | unknown | linea | n/a | 2 deployments: linea [`0x65b3ae390b3531cf94b8be3f735f72752c5d3bf9`](./contracts/linea-59144/0x65b3ae390b3531cf94b8be3f735f72752c5d3bf9/); linea `0xffb876bd5bee99e992cac826a04396002f5f4a65` | ⚠️ Unaudited |
| CrossDelegateV4 | unknown | blast | n/a | 2 deployments: blast [`0x00e5330ece02a25be85cfdfc1a19d5f06c8f5e28`](./contracts/blast-81457/0x00e5330ece02a25be85cfdfc1a19d5f06c8f5e28/); blast `0xc21e5553c8dddf2e4a93e5bedbae436d4291f603` | ⚠️ Unaudited |
| CrossDelegateV6 | unknown | bsc | n/a | [`0xc3711bdbe7e3063bf6c22e7fed42f782ac82baee`](./contracts/bsc-56/0xc3711bdbe7e3063bf6c22e7fed42f782ac82baee/) | ⚠️ Unaudited |
| CrossProxy | unknown | linea | n/a | 2 deployments: metis `0xc6ae1db6c66d909f7bfeeeb24f9adb8620bf9dbf`; linea [`0xc21e5553c8dddf2e4a93e5bedbae436d4291f603`](./contracts/linea-59144/0xc21e5553c8dddf2e4a93e5bedbae436d4291f603/) | ⚠️ Unaudited |
| Fee | unknown | optimism | n/a | [`0x592de30bebff484b5a43a6e8e3ec1a814902e0b6`](./contracts/optimism-10/0x592de30bebff484b5a43a6e8e3ec1a814902e0b6/) | ⚠️ Unaudited |
| FeeHelper | unknown | linea | n/a | [`0xb30778550a959c207601d77ff13fe38a5abb2546`](./contracts/linea-59144/0xb30778550a959c207601d77ff13fe38a5abb2546/) | ⚠️ Unaudited |
| GroupApprove | unknown | blast | n/a | 6 deployments: optimism `0x329f162550e3d5d9898a0aae05e21bfcd5f1cf83`; metis `0x16b389364a18cb066257fec7ad841106303b4c6b`; base `0xd97de67b982d79ed9f7eb2b1a13abc704b2ca082`; celo `0x48dbcccf3166f6e65280b654a6becb1287204d38`; linea `0x3cc97934f6770b649ef27682c6b9369b073c1058`; blast [`0x131dfc3ca32d3a959012606855320cbe8e655132`](./contracts/blast-81457/0x131dfc3ca32d3a959012606855320cbe8e655132/) | ⚠️ Unaudited |
| HTLCDebtLib | unknown | bsc | n/a | [`0xd2d59025217d000c4bbc097e93a39baa9341206d`](./contracts/bsc-56/0xd2d59025217d000c4bbc097e93a39baa9341206d/) | ⚠️ Unaudited |
| HTLCTxLib | unknown | bsc | n/a | 3 deployments: bsc [`0x329e173f320b0805984edd9fbb0fb7b649054e44`](./contracts/bsc-56/0x329e173f320b0805984edd9fbb0fb7b649054e44/); polygon `0x63c5acc9bd1cfc14582a5520415480c33734f18f`; arbitrum `0x63c5acc9bd1cfc14582a5520415480c33734f18f` | ⚠️ Unaudited |
| L2TBTC | unknown | arbitrum | n/a | [`0x6c84a8f1c29108f47a79964b5fe888d4f4d0de40`](./contracts/arbitrum-42161/0x6c84a8f1c29108f47a79964b5fe888d4f4d0de40/) | ⚠️ Unaudited |
| Layer2BridgeDelegateV2 | unknown | polygon | n/a | 2 deployments: polygon [`0x011754d9a4661d914141a96a03684f147e5b2a06`](./contracts/polygon-137/0x011754d9a4661d914141a96a03684f147e5b2a06/); polygon `0xd557cc89ca98db85ef5ad09afba7c22583fe727e` | ⚠️ Unaudited |
| Layer2BridgeDelegateV2 | unknown | arbitrum | n/a | 2 deployments: arbitrum [`0x599b4dc9f0d267ed76b9e2da9e4b3194a410c016`](./contracts/arbitrum-42161/0x599b4dc9f0d267ed76b9e2da9e4b3194a410c016/); arbitrum `0x783353136e8b4b1eb14539422c36121af400ca6c` | ⚠️ Unaudited |
| MappingTokenV2 | token | moonriver | n/a | 16 deployments: moonbeam `0x455febd10a12772c8358f53ff3dee86472878d90`; moonbeam `0x5f0061d84ee2f507c29aa87471e58f9d75d52776`; moonriver [`0x15b9ca9659f5dff2b7d35a98dd0790a3cbb3d445`](./contracts/moonriver-1285/0x15b9ca9659f5dff2b7d35a98dd0790a3cbb3d445/); moonriver `0x41562ae242d194247389152acaa7a9397136b09f`; moonriver `0x576fde3f61b7c97e381c94e7a03dbc2e08af1111`; moonriver `0x748134b5f553f2bcbd78c6826de99a70274bdeb3`; moonriver `0x78f811a431d248c1edcf6d95ec8551879b2897c3`; moonriver `0x9d5bc9b873aed984e2b6a64d4792249d68bba2fe`; moonriver `0xc005a7a1502c9de16ccdaba7cda0cee4ac304993`; moonriver `0xd924f195c6012c301f42290cf0fde385a66039de`; moonriver `0xe936caa7f6d9f5c9e907111fcaf7c351c184cda7`; moonriver `0xffef2639b2ee39f9c284d0107e567dd2f7b20613`; avalanche `0x8d9dcc422407f40bf105d8c777ccb365aceb70b6`; avalanche `0x9e529b128e3e3ffcb261ee35e10a3366f51448e5`; avalanche `0xd38bfdbfe7002ca56a1e05606e75aef5c521fff9`; avalanche `0xea6887e4a9cda1b77e70129e5fba830cdb5cddef` | ⚠️ Unaudited |
| MarinateAutoCompounder | adapter | arbitrum | n/a | [`0x1922c36f3bc762ca300b4a46bb2102f84b1684ab`](./contracts/arbitrum-42161/0x1922c36f3bc762ca300b4a46bb2102f84b1684ab/) | ⚠️ Unaudited |
| Messager | unknown | optimism | n/a | [`0x012297f3d1cb0d685b195a70231730f4c8c86f86`](./contracts/optimism-10/0x012297f3d1cb0d685b195a70231730f4c8c86f86/) | ⚠️ Unaudited |
| Multicall2 | unknown | base | n/a | 2 deployments: base [`0x1ed3538383bbfdb80343b18f85d6c5a5fb232fb6`](./contracts/base-8453/0x1ed3538383bbfdb80343b18f85d6c5a5fb232fb6/); base `0xbe5187c2a7eb776c1caeed2c37e7599fb05000d3` | ⚠️ Unaudited |
| MulticallV2 | periphery | metis | n/a | [`0x0d10a02696cb9cfdc4de45bd5580eda85f22353b`](./contracts/metis-1088/0x0d10a02696cb9cfdc4de45bd5580eda85f22353b/) | ⚠️ Unaudited |
| NFTLibV1 | unknown | blast | n/a | 10 deployments: optimism `0x50133f6836cb91237e17177e2985cbdad51f0cf2`; optimism `0xb30778550a959c207601d77ff13fe38a5abb2546`; metis `0x50133f6836cb91237e17177e2985cbdad51f0cf2`; base `0x5b0b9d1a58cacb8e3f7cb72225996fc535530f6b`; base `0xa63a35951dd74f6a00dfdb0a749f04adb27b4f27`; base `0xc95a4bc5c14cc6a23af46ba50d3785d5fd55446d`; linea `0x2715aa7156634256ae75240c2c5543814660cd04`; linea `0x8968cc03fd249ad8d649d93fcec70c1b99a6b5f3`; blast [`0x1289f70b8a16797cccbfcca8a845f36324ac9f8b`](./contracts/blast-81457/0x1289f70b8a16797cccbfcca8a845f36324ac9f8b/); blast `0xb30778550a959c207601d77ff13fe38a5abb2546` | ⚠️ Unaudited |
| NyanRewards | unknown | arbitrum | n/a | 2 deployments: arbitrum [`0x32e5594f14de658b0d577d6560fa0d9c6f1aa724`](./contracts/arbitrum-42161/0x32e5594f14de658b0d577d6560fa0d9c6f1aa724/); arbitrum `0x62ff5be795262999fc1ebac29277575031d2da2c` | ⚠️ Unaudited |
| OracleDelegate | operational_periphery | metis | n/a | [`0xc21e5553c8dddf2e4a93e5bedbae436d4291f603`](./contracts/metis-1088/0xc21e5553c8dddf2e4a93e5bedbae436d4291f603/) | ⚠️ Unaudited |
| PooledMappingToken | unknown | avalanche | n/a | [`0xae110a0e6e5ddb0108f6d752f754b575d62b7534`](./contracts/avalanche-43114/0xae110a0e6e5ddb0108f6d752f754b575d62b7534/) | ⚠️ Unaudited |
| RapidityLibV4 | unknown | optimism | n/a | 9 deployments: optimism [`0x1289f70b8a16797cccbfcca8a845f36324ac9f8b`](./contracts/optimism-10/0x1289f70b8a16797cccbfcca8a845f36324ac9f8b/); optimism `0xbe201985b711d44bbe0e77770a58c922135aa17d`; metis [`0x1289f70b8a16797cccbfcca8a845f36324ac9f8b`](./contracts/metis-1088/0x1289f70b8a16797cccbfcca8a845f36324ac9f8b/); base `0x4f1ab74c2a9e8f591e8a80768e115c9f75935bad`; base `0x555cf9c9d1bcdbe75e0ee6536fac65c8a69cd6a3`; linea `0x290108879b633557cb35e8baa57ea9216278a61b`; linea `0x3bb87041edf93eaea82f47f2b495e5859085e3ee`; blast `0xbe201985b711d44bbe0e77770a58c922135aa17d`; blast `0xc95a4bc5c14cc6a23af46ba50d3785d5fd55446d` | ⚠️ Unaudited |
| SignatureVerifier | periphery | metis | n/a | 2 deployments: metis [`0x09cdfc56439643d151585b77899d0dc0f982bcd2`](./contracts/metis-1088/0x09cdfc56439643d151585b77899d0dc0f982bcd2/); base `0xffb876bd5bee99e992cac826a04396002f5f4a65` | ⚠️ Unaudited |
| SimpleMultiSender | unknown | base | n/a | 2 deployments: optimism `0x1e7e46945e50bbe7df7014c086b642e6b7b4a625`; base [`0x0e57db96f34aaa743a3f77e8fc0b17641ca9f1df`](./contracts/base-8453/0x0e57db96f34aaa743a3f77e8fc0b17641ca9f1df/) | ⚠️ Unaudited |
| stARBIS | unknown | arbitrum | n/a | [`0xbf00759d7e329d7a7fa1d4dcdc914c53d1d2db86`](./contracts/arbitrum-42161/0xbf00759d7e329d7a7fa1d4dcdc914c53d1d2db86/) | ⚠️ Unaudited |
| TimelockController | governance | blast | n/a | 4 deployments: optimism `0x858df58d3c91467532d4dfc05cc00d305d462155`; metis `0x7f27b1cfedada5bc5e2e221eb4ed002313319c4b`; celo `0xf865a3d2291a67bdf9785f593a0e342ac1436e24`; blast [`0x6584d72dbc6b1a5d74f49bc9300042b586856006`](./contracts/blast-81457/0x6584d72dbc6b1a5d74f49bc9300042b586856006/) | ⚠️ Unaudited |
| TokenManagerDelegate | unknown | bsc | n/a | [`0x77ecc3b0a33b5e03e4db7e27937880ea6e4979af`](./contracts/bsc-56/0x77ecc3b0a33b5e03e4db7e27937880ea6e4979af/) | ⚠️ Unaudited |
| TokenManagerDelegateV2 | unknown | linea | n/a | 12 deployments: optimism `0xd4b5f10d61916bd6e0860144a91ac658de8a1437`; polygon `0x1bc20d6b6a4f0d768e1b39d42575fc3cb008e865`; polygon `0x9b1f4c3091e825a6abe451d0a266ee18005839e7`; metis `0xd4b5f10d61916bd6e0860144a91ac658de8a1437`; base `0x50133f6836cb91237e17177e2985cbdad51f0cf2`; base `0x8d42d317b2bd6b60183461ed41bd00f17c3f3fe8`; arbitrum `0x5585cb0e704c02f996892edde876745d18cbd415`; celo `0xd6965a9b739240db7acd36e3afb2dfe1dae7c694`; linea [`0x09cdfc56439643d151585b77899d0dc0f982bcd2`](./contracts/linea-59144/0x09cdfc56439643d151585b77899d0dc0f982bcd2/); linea `0x1ed3538383bbfdb80343b18f85d6c5a5fb232fb6`; linea `0x4f1ab74c2a9e8f591e8a80768e115c9f75935bad`; blast `0x1ed3538383bbfdb80343b18f85d6c5a5fb232fb6` | ⚠️ Unaudited |
| TokenManagerProxy | governance | metis | n/a | [`0x1ed3538383bbfdb80343b18f85d6c5a5fb232fb6`](./contracts/metis-1088/0x1ed3538383bbfdb80343b18f85d6c5a5fb232fb6/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | proxy | ethereum | n/a | [`0xeb986da994e4a118d5956b02d8b7c3c7ce373674`](./contracts/ethereum-1/0xeb986da994e4a118d5956b02d8b7c3c7ce373674/) | ⚠️ Unaudited |
| WanCctpV2 | unknown | optimism | n/a | 2 deployments: optimism [`0x555cf9c9d1bcdbe75e0ee6536fac65c8a69cd6a3`](./contracts/optimism-10/0x555cf9c9d1bcdbe75e0ee6536fac65c8a69cd6a3/); optimism `0xa63a35951dd74f6a00dfdb0a749f04adb27b4f27` | ⚠️ Unaudited |
| WanCctpV2 | unknown | optimism | n/a | [`0xf5db314d1bb8e6166a2b54b057dca934ac3b5d43`](./contracts/optimism-10/0xf5db314d1bb8e6166a2b54b057dca934ac3b5d43/) | ⚠️ Unaudited |
| WanCctpV2 | unknown | base | n/a | 2 deployments: optimism `0x2f676cb3e9178eb4913ab4d42506d1fde82296fb`; base [`0x2ab37662ac4dc8aada595256cd57221c0c38c838`](./contracts/base-8453/0x2ab37662ac4dc8aada595256cd57221c0c38c838/) | ⚠️ Unaudited |
| WanCctpV2 | unknown | base | n/a | 2 deployments: base [`0x40c1aa1a40be3cd006ae2f4784a68fc8244e890d`](./contracts/base-8453/0x40c1aa1a40be3cd006ae2f4784a68fc8244e890d/); base `0x69798671b1172371e49da4d74d00104cadd7ed15` | ⚠️ Unaudited |
| WanCctpV2 | unknown | base | n/a | 2 deployments: base [`0x441bffbe26b819e51deb32aeadeb1f847f24d859`](./contracts/base-8453/0x441bffbe26b819e51deb32aeadeb1f847f24d859/); base `0x5107033dd55d70e8241534c6509697dcfb5c72f8` | ⚠️ Unaudited |
| WanCctpV2 | unknown | base | n/a | [`0x76c51350705756030c70ccb82ef23345c2a4610e`](./contracts/base-8453/0x76c51350705756030c70ccb82ef23345c2a4610e/) | ⚠️ Unaudited |
| WrappedERC721T1 | token | polygon | n/a | [`0xcfad8a6ed9b7075c5a3b42557cf2b343b266c472`](./contracts/polygon-137/0xcfad8a6ed9b7075c5a3b42557cf2b343b266c472/) | ⚠️ Unaudited |
| WrappedToken | unknown | base | n/a | 18 deployments: polygon `0x4d14963528a62c6e90644bfc8a419cc41dc15588`; polygon `0x599b4dc9f0d267ed76b9e2da9e4b3194a410c016`; polygon `0x6dc2fc72584bffa35cc6d521a22081dd0217f3b6`; polygon `0x789acfd3525cc5523f95bcf45df263f17577d1a4`; polygon `0xa07c874323ab6ac31d7fa3dcfb92163f363f7113`; polygon `0xa3f9e72d598e99a8eb135257a57b133fd41a6d89`; base [`0x05e0302e690632b33b831c61a847f159ae010282`](./contracts/base-8453/0x05e0302e690632b33b831c61a847f159ae010282/); base `0x1e7e46945e50bbe7df7014c086b642e6b7b4a625`; base `0x3bb87041edf93eaea82f47f2b495e5859085e3ee`; base `0x4b1690f6596574fcb0c1b7681e7fa0cea00fc95e`; base `0x72ccf64ee5e2c7629ee4eee3e6ad6990289178ae`; base `0x73d9230f580eab929cde18873e4879785462728c`; base `0x7e5fe1e587a5c38b4a4a9ba38a35096f8ea35aac`; base `0xb1f19e492401545c1b060c4b18688f9178325b4d`; base `0xb30778550a959c207601d77ff13fe38a5abb2546`; base `0xc5cd7e7ecc39eceaeeee089f98c3d351d93810c2`; base `0xd7466f2600563da9ef462b5f3b6ca9506aa34c69`; base `0xe0cf5a329b861fe83814844d2382d0aa483a5e01` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (122)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| Proxy (impl: 0xc0264277fcca5fcfabd41a8bc01c1fcaf8383e41) | unknown | optimism | n/a | 2 deployments: optimism `0x7f27b1cfedada5bc5e2e221eb4ed002313319c4b`; optimism `0xc0264277fcca5fcfabd41a8bc01c1fcaf8383e41` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0x3bb87041edf93eaea82f47f2b495e5859085e3ee` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0x8ba0fb3bf5f215fce9e78a5d6482d9f5115656bc` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0xc5cd7e7ecc39eceaeeee089f98c3d351d93810c2` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0xdd4b9b3ce03faaba4a3839c8b5023b7792be6e2c` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0xe156987a81a9b841c1def6f111ea69bf817fb272` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x16b8ca1c5b0214c1fb1f37fba7ed3a7e63833c59` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x1bbc16260d5d052f1493b8f2aeee7888fed1e9ab` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x3906d89e4d29ecb47db33ca72d356246b7a7cbec` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x5585cb0e704c02f996892edde876745d18cbd415` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xdb972882aca18e8a2a77eae17cc7f45ca31452b3` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xea0c753d391761bbdb090ac93102a4d1bdcbee2b` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xeeaaf9f4bc94031544c3ea94a8cef2fe1291b997` | ❓ Unverified |
| UnnamedContract | unknown | fantom | n/a | 6 deployments: fantom `0x76b8c3ecdf99483335239e66f34191f11534cbaa`; fantom `0x9c30e4b50b4b3804d3b50f01619c61fe44ed894e`; fantom `0xccffe9d337f3c1b16bd271d109e691246fd69ee3`; polygon-zkevm `0xb13afe3e965dcd483022b1cc3adf03eea039a754`; polygon-zkevm `0xbe5187c2a7eb776c1caeed2c37e7599fb05000d3`; polygon-zkevm `0xc21e5553c8dddf2e4a93e5bedbae436d4291f603` | ❓ Unverified |
| UnnamedContract | unknown | zksync-era | n/a | `0x102f0ce7a439d51247167d6233a0a44c3f8389a1` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0x69120197b77b51d32ffa5eafe16b3d78115640c6` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0xdd4b9b3ce03faaba4a3839c8b5023b7792be6e2c` | ❓ Unverified |
| UnnamedContract | unknown | moonbeam | n/a | `0x0de50554333aa03e5383df38023fc89d8e342275` | ❓ Unverified |
| UnnamedContract | unknown | moonbeam | n/a | `0x247a1bd062ea12a6c236393a3c90d3344e3f0e3f` | ❓ Unverified |
| UnnamedContract | unknown | moonbeam | n/a | `0x2a8bdd8792818c67a2a54d44e3e54fcfff30d3f9` | ❓ Unverified |
| UnnamedContract | unknown | moonbeam | n/a | `0x398d9647ae6c5e64b0d1afbedfa2fd42bb43939e` | ❓ Unverified |
| UnnamedContract | unknown | moonbeam | n/a | `0x3a6e4f233e2a51d65d97633a14d1f030009c5ce1` | ❓ Unverified |
| UnnamedContract | unknown | moonbeam | n/a | `0x46ebefdb6598b2932c13509b6cff27ba78b7ec73` | ❓ Unverified |
| UnnamedContract | unknown | moonbeam | n/a | `0x634cd40c6b1f17be53d5784c059d75d2eefb3c88` | ❓ Unverified |
| UnnamedContract | unknown | moonbeam | n/a | `0x75609d8286960ddeed767c95f8c71b856e507924` | ❓ Unverified |
| UnnamedContract | unknown | moonbeam | n/a | `0x75b12ffc4a4740c246d7d553c897e52236433a52` | ❓ Unverified |
| UnnamedContract | unknown | moonbeam | n/a | `0xb2db18b1256681825209fe7ce4dd90abed2be6c1` | ❓ Unverified |
| UnnamedContract | unknown | moonbeam | n/a | `0xb83410325f8a6f9bd7bff9eff49d33ace8a024cf` | ❓ Unverified |
| UnnamedContract | unknown | moonbeam | n/a | `0xbacaaa4509ee9c9b2cf7133b970bc6db47713477` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0x04f121209adf4622ee8a908a62001d6bcaa4d0d6` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0x06ba9fb89982f88e420ffdd4e3698557e26cdd09` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0x0c98e59e8327f156ab12a042f5e1f0adb97c0931` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0x143371cde723891e3e9c30a8db84c411268653bf` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0x16cfb244a3a4e6776c1b731b565515dae32c7d54` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0x1a40a8c7d965f3929e0c56bb301ebe82f5ff0d48` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0x1fe0c23940fce7f440248e00ce2a175977ee4b16` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0x21145564b1b4dfc195bea79f2843a6299e8f630b` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0x21be489c84cfcc4ac0da06fd756db885635b482e` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0x266b63bffd05b157eada1f381ad68583c999c8ac` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0x2c2c7d2683a69bd17b73455d47535dff6bd9fb12` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0x3e0be2786431e28c0fd4b00ba09eec5a1be3cf76` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0x438587eab690b69db1bf08d44475b3eb7ca65b11` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0x4869f219bf8d0c89010154e6b8a9920c6ac99a98` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0x5662b58bd44619ea74a6b01d9c5dc89656e9d0a9` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0x59bc491986722d2bc78089cd38f9e9798ebfe339` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0x5b13cc8a120a20afcb40229846a61020e42adb63` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0x5b88a19d625e524a7c9cc7e7c8c5430400113681` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0x5d3ac98ed0ccf70493295c8136f4bf1c40e8489a` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0x67cc99a4e76a3af7df524fb3aac6d5c3970a4436` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0x686efdb6f49dc908b85a13efba8e31a5cb2fc501` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0x719be39f708506d6e31ce27193f98130a4e231d5` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0x72e54b83f64de6cf99798dbd1591cd48b62ff515` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0x75cef576cbe80cef6d6270086e8bd0a82b925088` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0x7a3772850ce76d661d841ea4af7d8240ff215a81` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0x7e8503a336aa795f5f30e8be92cc07430ad35b13` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0x7f4f008b6da59667998673563dc46524f9fa6932` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0x835460b80883ba7983bbdcc5981501b836332e41` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0x86178bd58cd2f5eb9d145762f3bac52486ea57ce` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0x864a0b7f8466247a0e44558d29cdc37d4623f213` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0x89d03a238780634db11b4c26adbc936fee8dee31` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0x8b854a029850aab7d05a0f9e3f42903d98be795d` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0x947934bb8c221338d6261facf6eb223118af2131` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0x95ef70ff0d0fcd62edb406850f69f18b42a239ca` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0x9e8d79287adb6e6e73bde777b0b7442eb0325fd2` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0x9f77ded3713c88bcc3bad07afb16e824ec2a6831` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0xab16069d3e9e352343b2040ce7d7715c585994f9` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0xacc391693de3d745047c9bf1e631d49ff5e397a6` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0xad1245b0068c9a1faecfa0c2f4c68b58b12090e0` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0xaea5f423361e799950e09d38c4dabac2db77e800` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0xaf03df49d0acf76b81674e1250611491a3d3c063` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0xb4b71fb46590ae1e4f7e3da71f23ad1a8f809da7` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0xb55b06236653a1439323a66e56c2a6c02e68e423` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0xb881712724214bc887132942e7ed47ac3bbb106f` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0xbf19c3fe078258f1d1c34bec7e624ad8a1de343a` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0xbf328d09710a8df370935f2ec3e131f037448627` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0xc9a95011bff79dece9280b19c2eba1538f39f6d4` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0xce82011c9cef9d7e6495d5514416d046cddeaa1b` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0xd20ac8b6d7ec750cd2957d6ec2a483522a1483c3` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0xd899eeee9dedd70cf4e96d39015017374d1005dd` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0xdd5f00b70762925bede6819b53ae5427e3efe423` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0xe91893ac5e91c33cb65962b4b7771ecba8b647f9` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0xe91dc80a284237155526825c6411001ef0b160bd` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0xea68c140ea18dfa14cb8781b1738b49cc0540ffa` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0xed2ce4e98cbb2c786c88f3e958040faba469a8fd` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0xf8b0d176257f9dc1ee49f038bb4f6cfd51af5762` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0xfdb5e2adb1a9b21fd9c277b1d9ecca437f58ae59` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x012297f3d1cb0d685b195a70231730f4c8c86f86` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x4dcb61fe56096daf28a9184d702d77c203ce50a1` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | 2 deployments: base `0x8afac7ba82bbd551032330cb9f3b21d9b7ba0d9d`; base `0xeac9c22e8f8f33bd40e143b4008125bbf3574988` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xc21e5553c8dddf2e4a93e5bedbae436d4291f603` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xc6ae1db6c66d909f7bfeeeb24f9adb8620bf9dbf` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xdd4b9b3ce03faaba4a3839c8b5023b7792be6e2c` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x4dee9c3c1b8718ef21758e7296dc921cf5305dfb` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x71f7f49ff81e9be77c9175611212ecb199ba0824` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xb66f96e30d6a0ae64d24e392bb2dbd25155cb3a6` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xea0c753d391761bbdb090ac93102a4d1bdcbee2b` | ❓ Unverified |
| UnnamedContract | unknown | celo | n/a | `0x1faa6f2b3c252da20820593d6de5c40ffcaf7655` | ❓ Unverified |
| UnnamedContract | unknown | celo | n/a | `0x526a2a9a76688cb395e742faafc5286d08e95913` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x0a7cdb63be5707007b155ebaf5b72336522c6aa7` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x265fc66e84939f36d90ee38734afe4a770d2c114` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x26834c5a99825d8d98d20ef8c3351eb0dbd64576` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x3a0e4388bab1bb7564bc2f76dc2f962a71339d3e` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x4cbce6e06b38b09c5d5747507eda77717d8434fe` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x52f44783bdf480e88c0ed4cf341a933cacfdbcaa` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x574d446cdf628f9a8b8b244a1483f77584940dcb` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x6473afbf80732651450f083a03f46e7b463f0a19` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x69e9fbc6a01407f194f3aa5af77e4c324f77c5cd` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x822c433922f80f905e4f6d052bda468389c8c379` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x841d8919f37ba52abc6ca36df1583917ea5183ee` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xa4726706935901fe7dd0f23cf5d4fb19867dfc88` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xb24999cf67e4eacbf164bce9138136f33589d969` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xb58078cbe44fb2cb51cdf59e02fc35072139aeef` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xc9ea89502f43162ab724eb5f7687f2c590056c9d` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xccf619a8a7a1557fbe3b61f551971309f4818e24` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xe0866edc0cc43ff07bfe126f3cb2f94a0803047f` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xf1ea78421fc28dbfe620bb79c9945a4ade110200` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xfe631743eef5418103738d41d8221423e675b249` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xfe6b1a3b9ca4b5463cafc4ddd3d996ca7a2cd15b` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0x1289f70b8a16797cccbfcca8a845f36324ac9f8b` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | 2 deployments: linea `0x72ccf64ee5e2c7629ee4eee3e6ad6990289178ae`; linea `0xe1efc9336d6ee679f1b47a01d4d0ef5ab8cbd269` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0xc6ae1db6c66d909f7bfeeeb24f9adb8620bf9dbf` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0xc95a4bc5c14cc6a23af46ba50d3785d5fd55446d` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [Wanchain 1.0.pdf](https://github.com/wanchain/Audits/blob/master/Wanchain%201.0.pdf) | unknown | Audit | 2018-07 | stale | Direct | contract_name | 2 | high |
| [Wanchain Open Storeman.pdf](https://github.com/wanchain/Audits/blob/master/Wanchain%20Open%20Storeman.pdf) | unknown | Audit | 2019-02 | stale | Direct | n/a | 0 | n/a |
| [Wanchain PoS.pdf](https://github.com/wanchain/Audits/blob/master/Wanchain%20PoS.pdf) | unknown | Audit | 2019-07 | stale | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| arbitrum | [`0x9f20de1fc9b161b34089cbeae888168b44b03461`](./contracts/arbitrum-42161/0x9f20de1fc9b161b34089cbeae888168b44b03461/) | ARBIS | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| celo | [`0xdd11b66b90402f294a017c4688509c364312303f`](./contracts/celo-42220/0xdd11b66b90402f294a017c4688509c364312303f/) | AutoFarmV2_CrossChain | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| moonriver | [`0x0e3f52157df2d2974949570b1871aecbaec8414d`](./contracts/moonriver-1285/0x0e3f52157df2d2974949570b1871aecbaec8414d/) | Bn128SchnorrVerifier | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x2055ae7250f814995ab41499ba1963f2c2f58a3a`](./contracts/polygon-137/0x2055ae7250f814995ab41499ba1963f2c2f58a3a/) | CommonProxy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0xf9f6c923866853a265cbe2f035eeb15ac970bb4a`](./contracts/bsc-56/0xf9f6c923866853a265cbe2f035eeb15ac970bb4a/) | CrossDelegate | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0x00e5330ece02a25be85cfdfc1a19d5f06c8f5e28`](./contracts/optimism-10/0x00e5330ece02a25be85cfdfc1a19d5f06c8f5e28/) | CrossDelegateV4 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x2216072a246a84f7b9ce0f1415dd239c9bf201ab`](./contracts/polygon-137/0x2216072a246a84f7b9ce0f1415dd239c9bf201ab/) | CrossDelegateV4 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| moonbeam | [`0x6372aec6263aa93eacedc994d38aa9117b6b95b5`](./contracts/moonbeam-1284/0x6372aec6263aa93eacedc994d38aa9117b6b95b5/) | CrossDelegateV4 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| moonriver | [`0xde1ae3c465354f01189150f3836c7c15a1d6671d`](./contracts/moonriver-1285/0xde1ae3c465354f01189150f3836c7c15a1d6671d/) | CrossDelegateV4 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x2715aa7156634256ae75240c2c5543814660cd04`](./contracts/base-8453/0x2715aa7156634256ae75240c2c5543814660cd04/) | CrossDelegateV4 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x011754d9a4661d914141a96a03684f147e5b2a06`](./contracts/arbitrum-42161/0x011754d9a4661d914141a96a03684f147e5b2a06/) | CrossDelegateV4 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0xf7ba155556e2cd4dfe3fe26e506a14d2f4b97613`](./contracts/arbitrum-42161/0xf7ba155556e2cd4dfe3fe26e506a14d2f4b97613/) | CrossDelegateV4 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| celo | [`0x14ca89ac9cd73b01bf71a3af3f8cf8fd224d6a1d`](./contracts/celo-42220/0x14ca89ac9cd73b01bf71a3af3f8cf8fd224d6a1d/) | CrossDelegateV4 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| linea | [`0x65b3ae390b3531cf94b8be3f735f72752c5d3bf9`](./contracts/linea-59144/0x65b3ae390b3531cf94b8be3f735f72752c5d3bf9/) | CrossDelegateV4 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| blast | [`0x00e5330ece02a25be85cfdfc1a19d5f06c8f5e28`](./contracts/blast-81457/0x00e5330ece02a25be85cfdfc1a19d5f06c8f5e28/) | CrossDelegateV4 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0xc3711bdbe7e3063bf6c22e7fed42f782ac82baee`](./contracts/bsc-56/0xc3711bdbe7e3063bf6c22e7fed42f782ac82baee/) | CrossDelegateV6 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| linea | [`0xc21e5553c8dddf2e4a93e5bedbae436d4291f603`](./contracts/linea-59144/0xc21e5553c8dddf2e4a93e5bedbae436d4291f603/) | CrossProxy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0x592de30bebff484b5a43a6e8e3ec1a814902e0b6`](./contracts/optimism-10/0x592de30bebff484b5a43a6e8e3ec1a814902e0b6/) | Fee | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| linea | [`0xb30778550a959c207601d77ff13fe38a5abb2546`](./contracts/linea-59144/0xb30778550a959c207601d77ff13fe38a5abb2546/) | FeeHelper | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| blast | [`0x131dfc3ca32d3a959012606855320cbe8e655132`](./contracts/blast-81457/0x131dfc3ca32d3a959012606855320cbe8e655132/) | GroupApprove | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0xd2d59025217d000c4bbc097e93a39baa9341206d`](./contracts/bsc-56/0xd2d59025217d000c4bbc097e93a39baa9341206d/) | HTLCDebtLib | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x329e173f320b0805984edd9fbb0fb7b649054e44`](./contracts/bsc-56/0x329e173f320b0805984edd9fbb0fb7b649054e44/) | HTLCTxLib | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x6c84a8f1c29108f47a79964b5fe888d4f4d0de40`](./contracts/arbitrum-42161/0x6c84a8f1c29108f47a79964b5fe888d4f4d0de40/) | L2TBTC | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x011754d9a4661d914141a96a03684f147e5b2a06`](./contracts/polygon-137/0x011754d9a4661d914141a96a03684f147e5b2a06/) | Layer2BridgeDelegateV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x599b4dc9f0d267ed76b9e2da9e4b3194a410c016`](./contracts/arbitrum-42161/0x599b4dc9f0d267ed76b9e2da9e4b3194a410c016/) | Layer2BridgeDelegateV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| moonriver | [`0x15b9ca9659f5dff2b7d35a98dd0790a3cbb3d445`](./contracts/moonriver-1285/0x15b9ca9659f5dff2b7d35a98dd0790a3cbb3d445/) | MappingTokenV2 | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x1922c36f3bc762ca300b4a46bb2102f84b1684ab`](./contracts/arbitrum-42161/0x1922c36f3bc762ca300b4a46bb2102f84b1684ab/) | MarinateAutoCompounder | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0x012297f3d1cb0d685b195a70231730f4c8c86f86`](./contracts/optimism-10/0x012297f3d1cb0d685b195a70231730f4c8c86f86/) | Messager | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| metis | [`0x0d10a02696cb9cfdc4de45bd5580eda85f22353b`](./contracts/metis-1088/0x0d10a02696cb9cfdc4de45bd5580eda85f22353b/) | MulticallV2 | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| blast | [`0x1289f70b8a16797cccbfcca8a845f36324ac9f8b`](./contracts/blast-81457/0x1289f70b8a16797cccbfcca8a845f36324ac9f8b/) | NFTLibV1 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x32e5594f14de658b0d577d6560fa0d9c6f1aa724`](./contracts/arbitrum-42161/0x32e5594f14de658b0d577d6560fa0d9c6f1aa724/) | NyanRewards | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| metis | [`0xc21e5553c8dddf2e4a93e5bedbae436d4291f603`](./contracts/metis-1088/0xc21e5553c8dddf2e4a93e5bedbae436d4291f603/) | OracleDelegate | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0xae110a0e6e5ddb0108f6d752f754b575d62b7534`](./contracts/avalanche-43114/0xae110a0e6e5ddb0108f6d752f754b575d62b7534/) | PooledMappingToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0x1289f70b8a16797cccbfcca8a845f36324ac9f8b`](./contracts/optimism-10/0x1289f70b8a16797cccbfcca8a845f36324ac9f8b/) | RapidityLibV4 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| metis | [`0x09cdfc56439643d151585b77899d0dc0f982bcd2`](./contracts/metis-1088/0x09cdfc56439643d151585b77899d0dc0f982bcd2/) | SignatureVerifier | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x0e57db96f34aaa743a3f77e8fc0b17641ca9f1df`](./contracts/base-8453/0x0e57db96f34aaa743a3f77e8fc0b17641ca9f1df/) | SimpleMultiSender | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0xbf00759d7e329d7a7fa1d4dcdc914c53d1d2db86`](./contracts/arbitrum-42161/0xbf00759d7e329d7a7fa1d4dcdc914c53d1d2db86/) | stARBIS | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x77ecc3b0a33b5e03e4db7e27937880ea6e4979af`](./contracts/bsc-56/0x77ecc3b0a33b5e03e4db7e27937880ea6e4979af/) | TokenManagerDelegate | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| linea | [`0x09cdfc56439643d151585b77899d0dc0f982bcd2`](./contracts/linea-59144/0x09cdfc56439643d151585b77899d0dc0f982bcd2/) | TokenManagerDelegateV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| metis | [`0x1ed3538383bbfdb80343b18f85d6c5a5fb232fb6`](./contracts/metis-1088/0x1ed3538383bbfdb80343b18f85d6c5a5fb232fb6/) | TokenManagerProxy | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0x555cf9c9d1bcdbe75e0ee6536fac65c8a69cd6a3`](./contracts/optimism-10/0x555cf9c9d1bcdbe75e0ee6536fac65c8a69cd6a3/) | WanCctpV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0xf5db314d1bb8e6166a2b54b057dca934ac3b5d43`](./contracts/optimism-10/0xf5db314d1bb8e6166a2b54b057dca934ac3b5d43/) | WanCctpV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x2ab37662ac4dc8aada595256cd57221c0c38c838`](./contracts/base-8453/0x2ab37662ac4dc8aada595256cd57221c0c38c838/) | WanCctpV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x40c1aa1a40be3cd006ae2f4784a68fc8244e890d`](./contracts/base-8453/0x40c1aa1a40be3cd006ae2f4784a68fc8244e890d/) | WanCctpV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x441bffbe26b819e51deb32aeadeb1f847f24d859`](./contracts/base-8453/0x441bffbe26b819e51deb32aeadeb1f847f24d859/) | WanCctpV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x76c51350705756030c70ccb82ef23345c2a4610e`](./contracts/base-8453/0x76c51350705756030c70ccb82ef23345c2a4610e/) | WanCctpV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0xcfad8a6ed9b7075c5a3b42557cf2b343b266c472`](./contracts/polygon-137/0xcfad8a6ed9b7075c5a3b42557cf2b343b266c472/) | WrappedERC721T1 | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x05e0302e690632b33b831c61a847f159ae010282`](./contracts/base-8453/0x05e0302e690632b33b831c61a847f159ae010282/) | WrappedToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 50 |
| upstream | 0 |
| standard_library | 3 |
| needs_review | 122 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 2
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=1
- Match method counts: extraction_exact=2

Zero-match audit list:

- [3320] Wanchain Open Storeman.pdf
- [3321] Wanchain PoS.pdf

Fork inheritance lineage and inherited audits are included when available.
