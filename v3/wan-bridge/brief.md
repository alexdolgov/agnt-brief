# Agentic Audit Brief: Wan Bridge

## Project Overview

- Project: Wan Bridge (`wan-bridge`)
- Website: [https://bridge.wanchain.org](https://bridge.wanchain.org)
- Lifecycle: unknown
- Generated: 2026-07-03T21:07:11.865Z
- Pipeline run: v2-pipeline-2026-07-01-3e33f2-f007
- Chains: arbitrum, avalanche, base, blast, bsc, celo, ethereum, fantom, linea, metis, moonbeam, moonriver, optimism, polygon, polygon-zkevm, zksync-era
- Contract surface: 339 unique implementations (466 raw deployments)
- DeFi Llama TVL: $23,452,772.39
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Bridge. Structurally: 98 project-authored contract(s) across 13 chain(s); 32 ERC20 tokens, 1 ERC721 NFT, 1 ERC1155 multi-token; role-gated via AccessControl; upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 9 functional families. Its contracts share 16 common project-authored base contract(s) (crossstoragev4, crossstoragev3, crossstoragev2). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 619; live-surface contracts included: 460 (156 live, 304 unknown).
- Excluded by liveness: 159 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 2/51 (3.9%)
- Deployed-live implementations: 51 of 339 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 2/57
- Verified + Unaudited implementations: 55
- Verified by bytecode match: 0
- Unverified implementations: 282
- Unique implementations: 339
- Raw deployments: 466
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
| unknown | Tier 2 | 2 | 3.5% | 2019-07 |

## Contract Surface

### ✅ Verified + Audited (2)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| CrossProxy | proxy | avalanche | n/a | [`0x74e121...037c3a`](./contracts/avalanche-43114/0x74e121a34a66d54c33f3291f2cdf26b1cd037c3a/) | ✅ Audited |
| OracleProxy | operational_periphery | metis | n/a | [`0xbe5187...5000d3`](./contracts/metis-1088/0xbe5187c2a7eb776c1caeed2c37e7599fb05000d3/) | ✅ Audited |

### ⚠️ Verified + Unaudited (55)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| ARBIS | unknown | arbitrum | n/a | [`0x9f20de...b03461`](./contracts/arbitrum-42161/0x9f20de1fc9b161b34089cbeae888168b44b03461/) | ⚠️ Unaudited |
| ArbitrumWormholeGatewayUpgraded | unknown | arbitrum | n/a | [`0x1293a5...a15458`](./contracts/arbitrum-42161/0x1293a54e160d1cd7075487898d65266081a15458/) | ⚠️ Unaudited |
| AutoFarmV2_CrossChain | unknown | celo | n/a | 2 deployments: moonriver `0xfada8c...d4680e`; celo [`0xdd11b6...12303f`](./contracts/celo-42220/0xdd11b66b90402f294a017c4688509c364312303f/) | ⚠️ Unaudited |
| Bn128SchnorrVerifier | unknown | moonriver | n/a | 12 deployments: optimism `0x8d42d3...3f3fe8`; bsc `0xd3a4bd...41cd53`; polygon `0x86b830...558d0e`; metis `0x8d42d3...3f3fe8`; moonbeam `0x6e228a...16354d`; moonriver [`0x0e3f52...c8414d`](./contracts/moonriver-1285/0x0e3f52157df2d2974949570b1871aecbaec8414d/); base `0x7e0195...e4dfc9`; arbitrum `0x86b830...558d0e`; celo `0x86ec03...9ea4e4`; avalanche `0xe162d7...0887b5`; linea `0x9c17ec...59b85f`; blast `0x5b0b9d...530f6b` | ⚠️ Unaudited |
| CommonProxy | unknown | polygon | n/a | [`0x2055ae...f58a3a`](./contracts/polygon-137/0x2055ae7250f814995ab41499ba1963f2c2f58a3a/) | ⚠️ Unaudited |
| CrossDelegate | unknown | bsc | n/a | [`0xf9f6c9...70bb4a`](./contracts/bsc-56/0xf9f6c923866853a265cbe2f035eeb15ac970bb4a/) | ⚠️ Unaudited |
| CrossDelegateV4 | unknown | optimism | n/a | 2 deployments: optimism [`0x00e533...8f5e28`](./contracts/optimism-10/0x00e5330ece02a25be85cfdfc1a19d5f06c8f5e28/); optimism `0xc6ae1d...bf9dbf` | ⚠️ Unaudited |
| CrossDelegateV4 | unknown | polygon | n/a | [`0x221607...f201ab`](./contracts/polygon-137/0x2216072a246a84f7b9ce0f1415dd239c9bf201ab/) | ⚠️ Unaudited |
| CrossDelegateV4 | unknown | moonbeam | n/a | [`0x6372ae...6b95b5`](./contracts/moonbeam-1284/0x6372aec6263aa93eacedc994d38aa9117b6b95b5/) | ⚠️ Unaudited |
| CrossDelegateV4 | unknown | moonriver | n/a | [`0xde1ae3...d6671d`](./contracts/moonriver-1285/0xde1ae3c465354f01189150f3836c7c15a1d6671d/) | ⚠️ Unaudited |
| CrossDelegateV4 | unknown | base | n/a | 2 deployments: base [`0x2715aa...60cd04`](./contracts/base-8453/0x2715aa7156634256ae75240c2c5543814660cd04/); base `0x2f676c...2296fb` | ⚠️ Unaudited |
| CrossDelegateV4 | unknown | arbitrum | n/a | 9 deployments: optimism `0xc95a4b...55446d`; polygon `0x6a60b5...5a72f6`; metis `0xc02642...383e41`; metis `0xc95a4b...55446d`; base `0x97e088...d3ca7b`; arbitrum [`0x011754...5b2a06`](./contracts/arbitrum-42161/0x011754d9a4661d914141a96a03684f147e5b2a06/); celo `0xee9192...96858e`; linea `0x70114d...491799`; blast `0xc6ae1d...bf9dbf` | ⚠️ Unaudited |
| CrossDelegateV4 | unknown | arbitrum | n/a | [`0xf7ba15...b97613`](./contracts/arbitrum-42161/0xf7ba155556e2cd4dfe3fe26e506a14d2f4b97613/) | ⚠️ Unaudited |
| CrossDelegateV4 | unknown | celo | n/a | [`0x14ca89...4d6a1d`](./contracts/celo-42220/0x14ca89ac9cd73b01bf71a3af3f8cf8fd224d6a1d/) | ⚠️ Unaudited |
| CrossDelegateV4 | unknown | linea | n/a | 2 deployments: linea [`0x65b3ae...5d3bf9`](./contracts/linea-59144/0x65b3ae390b3531cf94b8be3f735f72752c5d3bf9/); linea `0xffb876...5f4a65` | ⚠️ Unaudited |
| CrossDelegateV4 | unknown | blast | n/a | 2 deployments: blast [`0x00e533...8f5e28`](./contracts/blast-81457/0x00e5330ece02a25be85cfdfc1a19d5f06c8f5e28/); blast `0xc21e55...91f603` | ⚠️ Unaudited |
| CrossDelegateV6 | unknown | bsc | n/a | [`0xc3711b...82baee`](./contracts/bsc-56/0xc3711bdbe7e3063bf6c22e7fed42f782ac82baee/) | ⚠️ Unaudited |
| CrossProxy | unknown | linea | n/a | 2 deployments: metis `0xc6ae1d...bf9dbf`; linea [`0xc21e55...91f603`](./contracts/linea-59144/0xc21e5553c8dddf2e4a93e5bedbae436d4291f603/) | ⚠️ Unaudited |
| Fee | unknown | optimism | n/a | [`0x592de3...02e0b6`](./contracts/optimism-10/0x592de30bebff484b5a43a6e8e3ec1a814902e0b6/) | ⚠️ Unaudited |
| FeeHelper | unknown | linea | n/a | [`0xb30778...bb2546`](./contracts/linea-59144/0xb30778550a959c207601d77ff13fe38a5abb2546/) | ⚠️ Unaudited |
| GroupApprove | unknown | blast | n/a | 6 deployments: optimism `0x329f16...f1cf83`; metis `0x16b389...3b4c6b`; base `0xd97de6...2ca082`; celo `0x48dbcc...204d38`; linea `0x3cc979...3c1058`; blast [`0x131dfc...655132`](./contracts/blast-81457/0x131dfc3ca32d3a959012606855320cbe8e655132/) | ⚠️ Unaudited |
| HTLCDebtLib | unknown | bsc | n/a | [`0xd2d590...41206d`](./contracts/bsc-56/0xd2d59025217d000c4bbc097e93a39baa9341206d/) | ⚠️ Unaudited |
| HTLCTxLib | unknown | bsc | n/a | 3 deployments: bsc [`0x329e17...054e44`](./contracts/bsc-56/0x329e173f320b0805984edd9fbb0fb7b649054e44/); polygon `0x63c5ac...34f18f`; arbitrum `0x63c5ac...34f18f` | ⚠️ Unaudited |
| L2TBTC | unknown | arbitrum | n/a | 2 deployments: arbitrum [`0x6c84a8...d0de40`](./contracts/arbitrum-42161/0x6c84a8f1c29108f47a79964b5fe888d4f4d0de40/); arbitrum `0xda534b...681365` | ⚠️ Unaudited |
| Layer2BridgeDelegateV2 | unknown | polygon | n/a | 2 deployments: polygon [`0x011754...5b2a06`](./contracts/polygon-137/0x011754d9a4661d914141a96a03684f147e5b2a06/); polygon `0xd557cc...fe727e` | ⚠️ Unaudited |
| Layer2BridgeDelegateV2 | unknown | arbitrum | n/a | 2 deployments: arbitrum [`0x599b4d...10c016`](./contracts/arbitrum-42161/0x599b4dc9f0d267ed76b9e2da9e4b3194a410c016/); arbitrum `0x783353...00ca6c` | ⚠️ Unaudited |
| MappingTokenV2 | token | moonriver | n/a | 16 deployments: moonbeam `0x455feb...878d90`; moonbeam `0x5f0061...d52776`; moonriver [`0x15b9ca...b3d445`](./contracts/moonriver-1285/0x15b9ca9659f5dff2b7d35a98dd0790a3cbb3d445/); moonriver `0x41562a...36b09f`; moonriver `0x576fde...af1111`; moonriver `0x748134...4bdeb3`; moonriver `0x78f811...2897c3`; moonriver `0x9d5bc9...bba2fe`; moonriver `0xc005a7...304993`; moonriver `0xd924f1...6039de`; moonriver `0xe936ca...84cda7`; moonriver `0xffef26...b20613`; avalanche `0x8d9dcc...eb70b6`; avalanche `0x9e529b...1448e5`; avalanche `0xd38bfd...21fff9`; avalanche `0xea6887...5cddef` | ⚠️ Unaudited |
| MarinateAutoCompounder | adapter | arbitrum | n/a | [`0x1922c3...1684ab`](./contracts/arbitrum-42161/0x1922c36f3bc762ca300b4a46bb2102f84b1684ab/) | ⚠️ Unaudited |
| Messager | unknown | optimism | n/a | [`0x012297...c86f86`](./contracts/optimism-10/0x012297f3d1cb0d685b195a70231730f4c8c86f86/) | ⚠️ Unaudited |
| Multicall2 | unknown | base | n/a | 2 deployments: base [`0x1ed353...232fb6`](./contracts/base-8453/0x1ed3538383bbfdb80343b18f85d6c5a5fb232fb6/); base `0xbe5187...5000d3` | ⚠️ Unaudited |
| MulticallV2 | periphery | metis | n/a | [`0x0d10a0...22353b`](./contracts/metis-1088/0x0d10a02696cb9cfdc4de45bd5580eda85f22353b/) | ⚠️ Unaudited |
| NFTLibV1 | unknown | blast | n/a | 10 deployments: optimism `0x50133f...1f0cf2`; optimism `0xb30778...bb2546`; metis `0x50133f...1f0cf2`; base `0x5b0b9d...530f6b`; base `0xa63a35...7b4f27`; base `0xc95a4b...55446d`; linea `0x2715aa...60cd04`; linea `0x8968cc...a6b5f3`; blast [`0x1289f7...ac9f8b`](./contracts/blast-81457/0x1289f70b8a16797cccbfcca8a845f36324ac9f8b/); blast `0xb30778...bb2546` | ⚠️ Unaudited |
| NyanRewards | unknown | arbitrum | n/a | 2 deployments: arbitrum [`0x32e559...1aa724`](./contracts/arbitrum-42161/0x32e5594f14de658b0d577d6560fa0d9c6f1aa724/); arbitrum `0x62ff5b...d2da2c` | ⚠️ Unaudited |
| OracleDelegate | operational_periphery | metis | n/a | [`0xc21e55...91f603`](./contracts/metis-1088/0xc21e5553c8dddf2e4a93e5bedbae436d4291f603/) | ⚠️ Unaudited |
| PooledMappingToken | unknown | avalanche | n/a | [`0xae110a...2b7534`](./contracts/avalanche-43114/0xae110a0e6e5ddb0108f6d752f754b575d62b7534/) | ⚠️ Unaudited |
| ProxyAdmin | unknown | arbitrum | n/a | [`0x02612d...8a3db3`](./contracts/arbitrum-42161/0x02612d20cc087670a959bb12ca3c5fd56c8a3db3/) | ⚠️ Unaudited |
| RapidityLibV4 | unknown | optimism | n/a | 9 deployments: optimism [`0x1289f7...ac9f8b`](./contracts/optimism-10/0x1289f70b8a16797cccbfcca8a845f36324ac9f8b/); optimism `0xbe2019...5aa17d`; metis [`0x1289f7...ac9f8b`](./contracts/metis-1088/0x1289f70b8a16797cccbfcca8a845f36324ac9f8b/); base `0x4f1ab7...935bad`; base `0x555cf9...9cd6a3`; linea `0x290108...78a61b`; linea `0x3bb870...85e3ee`; blast `0xbe2019...5aa17d`; blast `0xc95a4b...55446d` | ⚠️ Unaudited |
| SignatureVerifier | periphery | metis | n/a | 2 deployments: metis [`0x09cdfc...82bcd2`](./contracts/metis-1088/0x09cdfc56439643d151585b77899d0dc0f982bcd2/); base `0xffb876...5f4a65` | ⚠️ Unaudited |
| SimpleMultiSender | unknown | base | n/a | 2 deployments: optimism `0x1e7e46...b4a625`; base [`0x0e57db...a9f1df`](./contracts/base-8453/0x0e57db96f34aaa743a3f77e8fc0b17641ca9f1df/) | ⚠️ Unaudited |
| stARBIS | unknown | arbitrum | n/a | 8 deployments: arbitrum [`0x1ec62f...9062de`](./contracts/arbitrum-42161/0x1ec62f8367ad3ff61c3f3b0ab1d0297a539062de/); arbitrum `0x4446e4...bd0c6e`; arbitrum `0x7093e0...9d3a3d`; arbitrum `0xa8a07c...b3deb8`; arbitrum `0xbf0075...d2db86`; arbitrum `0xbf3e46...4d9f89`; arbitrum `0xde905e...9c288f`; arbitrum `0xef1f3f...276f16` | ⚠️ Unaudited |
| stARBISReceiver | unknown | arbitrum | n/a | 6 deployments: arbitrum [`0x26804f...785308`](./contracts/arbitrum-42161/0x26804fdd4d4d893686233f8399174f2d2a785308/); arbitrum `0x429ede...4975bb`; arbitrum `0x8abbcf...ef5511`; arbitrum `0xa3bf87...74d93b`; arbitrum `0xb5f6f3...b1c0dc`; arbitrum `0xe0cd92...4a266d` | ⚠️ Unaudited |
| TimelockController | governance | blast | n/a | 4 deployments: optimism `0x858df5...462155`; metis `0x7f27b1...319c4b`; celo `0xf865a3...436e24`; blast [`0x6584d7...856006`](./contracts/blast-81457/0x6584d72dbc6b1a5d74f49bc9300042b586856006/) | ⚠️ Unaudited |
| TimelockController_RewardsDistributor2 | unknown | celo | n/a | 2 deployments: celo [`0x65f100...98eba6`](./contracts/celo-42220/0x65f1008a17bcb6f34f703538a22764b15b98eba6/); celo `0xbf19c3...de343a` | ⚠️ Unaudited |
| TokenManagerDelegate | unknown | bsc | n/a | [`0x77ecc3...4979af`](./contracts/bsc-56/0x77ecc3b0a33b5e03e4db7e27937880ea6e4979af/) | ⚠️ Unaudited |
| TokenManagerDelegateV2 | unknown | linea | n/a | 12 deployments: optimism `0xd4b5f1...8a1437`; polygon `0x1bc20d...08e865`; polygon `0x9b1f4c...5839e7`; metis `0xd4b5f1...8a1437`; base `0x50133f...1f0cf2`; base `0x8d42d3...3f3fe8`; arbitrum `0x5585cb...cbd415`; celo `0xd6965a...e7c694`; linea [`0x09cdfc...82bcd2`](./contracts/linea-59144/0x09cdfc56439643d151585b77899d0dc0f982bcd2/); linea `0x1ed353...232fb6`; linea `0x4f1ab7...935bad`; blast `0x1ed353...232fb6` | ⚠️ Unaudited |
| TokenManagerProxy | governance | metis | n/a | [`0x1ed353...232fb6`](./contracts/metis-1088/0x1ed3538383bbfdb80343b18f85d6c5a5fb232fb6/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | proxy | ethereum | n/a | [`0xeb986d...373674`](./contracts/ethereum-1/0xeb986da994e4a118d5956b02d8b7c3c7ce373674/) | ⚠️ Unaudited |
| WanCctpV2 | unknown | optimism | n/a | 2 deployments: optimism [`0x555cf9...9cd6a3`](./contracts/optimism-10/0x555cf9c9d1bcdbe75e0ee6536fac65c8a69cd6a3/); optimism `0xa63a35...7b4f27` | ⚠️ Unaudited |
| WanCctpV2 | unknown | optimism | n/a | [`0xf5db31...3b5d43`](./contracts/optimism-10/0xf5db314d1bb8e6166a2b54b057dca934ac3b5d43/) | ⚠️ Unaudited |
| WanCctpV2 | unknown | base | n/a | 2 deployments: optimism `0x2f676c...2296fb`; base [`0x2ab376...38c838`](./contracts/base-8453/0x2ab37662ac4dc8aada595256cd57221c0c38c838/) | ⚠️ Unaudited |
| WanCctpV2 | unknown | base | n/a | 2 deployments: base [`0x40c1aa...4e890d`](./contracts/base-8453/0x40c1aa1a40be3cd006ae2f4784a68fc8244e890d/); base `0x697986...d7ed15` | ⚠️ Unaudited |
| WanCctpV2 | unknown | base | n/a | 2 deployments: base [`0x441bff...24d859`](./contracts/base-8453/0x441bffbe26b819e51deb32aeadeb1f847f24d859/); base `0x510703...5c72f8` | ⚠️ Unaudited |
| WanCctpV2 | unknown | base | n/a | [`0x76c513...a4610e`](./contracts/base-8453/0x76c51350705756030c70ccb82ef23345c2a4610e/) | ⚠️ Unaudited |
| WrappedERC721T1 | token | polygon | n/a | [`0xcfad8a...66c472`](./contracts/polygon-137/0xcfad8a6ed9b7075c5a3b42557cf2b343b266c472/) | ⚠️ Unaudited |
| WrappedToken | unknown | base | n/a | 18 deployments: polygon `0x4d1496...c15588`; polygon `0x599b4d...10c016`; polygon `0x6dc2fc...17f3b6`; polygon `0x789acf...77d1a4`; polygon `0xa07c87...3f7113`; polygon `0xa3f9e7...1a6d89`; base [`0x05e030...010282`](./contracts/base-8453/0x05e0302e690632b33b831c61a847f159ae010282/); base `0x1e7e46...b4a625`; base `0x3bb870...85e3ee`; base `0x4b1690...0fc95e`; base `0x72ccf6...9178ae`; base `0x73d923...62728c`; base `0x7e5fe1...a35aac`; base `0xb1f19e...325b4d`; base `0xb30778...bb2546`; base `0xc5cd7e...3810c2`; base `0xd7466f...a34c69`; base `0xe0cf5a...3a5e01` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (282)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| Proxy (impl: 0xc0264277fcca5fcfabd41a8bc01c1fcaf8383e41) | unknown | optimism | n/a | 2 deployments: optimism `0x7f27b1...319c4b`; optimism `0xc02642...383e41` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0x3bb870...85e3ee` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0x8ba0fb...5656bc` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0xc5cd7e...3810c2` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0xdd4b9b...be6e2c` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0xe15698...7fb272` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x16b8ca...833c59` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x1bbc16...d1e9ab` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x3906d8...a7cbec` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x5585cb...cbd415` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xdb9728...1452b3` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xea0c75...cbee2b` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xeeaaf9...91b997` | ❓ Unverified |
| UnnamedContract | unknown | fantom | n/a | 6 deployments: fantom `0x76b8c3...34cbaa`; fantom `0x9c30e4...ed894e`; fantom `0xccffe9...d69ee3`; polygon-zkevm `0xb13afe...39a754`; polygon-zkevm `0xbe5187...5000d3`; polygon-zkevm `0xc21e55...91f603` | ❓ Unverified |
| UnnamedContract | unknown | zksync-era | n/a | `0x102f0c...8389a1` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0x691201...5640c6` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0xdd4b9b...be6e2c` | ❓ Unverified |
| UnnamedContract | unknown | moonbeam | n/a | `0x0de505...342275` | ❓ Unverified |
| UnnamedContract | unknown | moonbeam | n/a | `0x247a1b...3f0e3f` | ❓ Unverified |
| UnnamedContract | unknown | moonbeam | n/a | `0x2a8bdd...30d3f9` | ❓ Unverified |
| UnnamedContract | unknown | moonbeam | n/a | `0x398d96...43939e` | ❓ Unverified |
| UnnamedContract | unknown | moonbeam | n/a | `0x3a6e4f...9c5ce1` | ❓ Unverified |
| UnnamedContract | unknown | moonbeam | n/a | `0x46ebef...b7ec73` | ❓ Unverified |
| UnnamedContract | unknown | moonbeam | n/a | `0x634cd4...fb3c88` | ❓ Unverified |
| UnnamedContract | unknown | moonbeam | n/a | `0x75609d...507924` | ❓ Unverified |
| UnnamedContract | unknown | moonbeam | n/a | `0x75b12f...433a52` | ❓ Unverified |
| UnnamedContract | unknown | moonbeam | n/a | `0xb2db18...2be6c1` | ❓ Unverified |
| UnnamedContract | unknown | moonbeam | n/a | `0xb83410...a024cf` | ❓ Unverified |
| UnnamedContract | unknown | moonbeam | n/a | `0xbacaaa...713477` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0x04f121...a4d0d6` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0x06ba9f...6cdd09` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0x0c98e5...7c0931` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0x143371...8653bf` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0x16cfb2...2c7d54` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0x1a40a8...ff0d48` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0x1fe0c2...ee4b16` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0x211455...8f630b` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0x21be48...5b482e` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0x266b63...99c8ac` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0x2c2c7d...d9fb12` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0x3e0be2...e3cf76` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0x438587...a65b11` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0x4869f2...c99a98` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0x5662b5...e9d0a9` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0x59bc49...bfe339` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0x5b13cc...2adb63` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0x5b88a1...113681` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0x5d3ac9...e8489a` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0x67cc99...0a4436` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0x686efd...2fc501` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0x719be3...e231d5` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0x72e54b...2ff515` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0x75cef5...925088` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0x7a3772...215a81` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0x7e8503...d35b13` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0x7f4f00...fa6932` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0x835460...332e41` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0x86178b...ea57ce` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0x864a0b...23f213` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0x89d03a...8dee31` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0x8b854a...be795d` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0x947934...af2131` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0x95ef70...a239ca` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0x9e8d79...325fd2` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0x9f77de...2a6831` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0xab1606...5994f9` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0xacc391...e397a6` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0xad1245...2090e0` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0xaea5f4...77e800` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0xaf03df...d3c063` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0xb4b71f...809da7` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0xb55b06...68e423` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0xb88171...bb106f` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0xbf19c3...de343a` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0xbf328d...448627` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0xc9a950...39f6d4` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0xce8201...deaa1b` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0xd20ac8...1483c3` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0xd899ee...1005dd` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0xdd5f00...efe423` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0xe91893...b647f9` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0xe91dc8...b160bd` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0xea68c1...540ffa` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0xed2ce4...69a8fd` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0xf8b0d1...af5762` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0xfdb5e2...58ae59` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x012297...c86f86` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x4dcb61...ce50a1` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | 2 deployments: base `0x8afac7...ba0d9d`; base `0xeac9c2...574988` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xc21e55...91f603` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xc6ae1d...bf9dbf` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xdd4b9b...be6e2c` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x015ac2...3268f4` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x0167b6...72f668` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x02edb9...831606` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x062af6...db41f4` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x08e353...878e2d` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x0dc368...58ec5c` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x0e01c2...bcd8b4` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x1dd0aa...f208be` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x1e5ed8...5ce8cc` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x1fe31e...d89b97` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x207505...1a831f` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x214520...b22c6f` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x21d1cd...6be8ed` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x227dda...5d9733` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x256f25...2ac50e` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x257950...b2da83` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x26b93f...04e0fd` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x280073...024f29` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x2b878c...066c2e` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x2ccacc...1d8574` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x2fedaf...332eaf` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x30d698...44a402` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x316702...f04282` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x317f3b...8f936e` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x3294be...1ac197` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x35b555...074e65` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x35d8f3...ef0eae` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x374e9f...3af13a` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x375d70...a62914` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x3894f7...7c01f0` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x3a6ec7...de2020` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x3dd098...a6a9f1` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x42b524...f72b7a` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x437928...740db5` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x4628d8...e0847f` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x49ba5e...1176d0` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x4cd20c...554ab9` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x4d12ae...3881e0` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x4d70d7...bb42b3` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x4deb14...7e63e7` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x4dee9c...305dfb` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x4f0de3...6f1376` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x50dcb0...389dd4` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x580961...2553fd` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x581aed...088a76` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x5b4cd8...914762` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x5d0ea9...a09427` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x5f315a...12ea15` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x5fa520...bb9266` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x618794...95e09e` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x652065...526d3b` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x65ebc2...6be78e` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x676428...3c625e` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x687094...a9d748` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x68bfc0...868716` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x6b004d...ac3726` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x6c3171...100897` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x6fb5bd...8ffdc8` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x6fe46f...f558ae` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x70aa88...690889` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x71f7f4...ba0824` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x72adb5...f0e7a2` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x72c5e7...b87297` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x747ea3...3c33be` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x75e90d...2d448e` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x77b4aa...92508a` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x8016fa...02dd26` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x808e25...899c9d` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x87c171...188d3e` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x892e01...611c96` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x89c416...26f593` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x8aec9a...eca989` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x8c26c8...79bc3d` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x8c4983...ac916e` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x8d2cdc...f98b48` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x8dafe1...1e6b32` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x8ef7d0...05ca09` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x9551ba...6a33d1` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x96d15d...53acd6` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x9e343b...c1f05e` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xa2dfa5...2dd7a4` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xa4ca55...c1b999` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xa56061...75e99f` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xa5d7f1...799838` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xa85391...765e67` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xad31a9...cc8fe2` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xaeaa3d...fc4a77` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xb176e0...f6a921` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xb45f49...c4341d` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xb590e9...f018c3` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xb66f96...5cb3a6` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xb69752...ce7481` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xb6b01f...fc8883` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xb760c9...b48b8f` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xb7a103...44c393` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xb82d97...2ccd73` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xbb910e...d8f3d2` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xbef14c...b1c9a5` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xc1060d...fa5439` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xc17b78...3736be` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xce0eaf...95b9ca` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xd10051...5ff860` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xd1f5e0...d2e779` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xd20e33...634ad0` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xd7d486...5ad709` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xdc11d4...926a6c` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xdcc1d3...16cf2e` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xdef2b3...0dc044` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xdfff87...3de01e` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xe3d0d4...72abb6` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xe8e7d0...d1786c` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xea0c75...cbee2b` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xeb4891...fc1c8d` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xec15d1...a95270` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xecb083...058f69` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xed75fa...1ca123` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xef2c65...3b05cb` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xefc66a...212663` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xf26dee...325293` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xf279ad...f0621f` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xf46df4...ef17aa` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xf77752...1563e2` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xfb86ae...6a1b0d` | ❓ Unverified |
| UnnamedContract | unknown | celo | n/a | `0x089ee9...480e76` | ❓ Unverified |
| UnnamedContract | unknown | celo | n/a | `0x1009ef...7570d7` | ❓ Unverified |
| UnnamedContract | unknown | celo | n/a | `0x19795c...a01454` | ❓ Unverified |
| UnnamedContract | unknown | celo | n/a | `0x1d1779...d49977` | ❓ Unverified |
| UnnamedContract | unknown | celo | n/a | `0x1f7ceb...e85db3` | ❓ Unverified |
| UnnamedContract | unknown | celo | n/a | `0x1faa6f...af7655` | ❓ Unverified |
| UnnamedContract | unknown | celo | n/a | `0x222f69...6aee7a` | ❓ Unverified |
| UnnamedContract | unknown | celo | n/a | `0x29bc02...c25557` | ❓ Unverified |
| UnnamedContract | unknown | celo | n/a | `0x2dc13f...e2af08` | ❓ Unverified |
| UnnamedContract | unknown | celo | n/a | `0x2e29b0...49cc6b` | ❓ Unverified |
| UnnamedContract | unknown | celo | n/a | `0x2f39b9...a0f927` | ❓ Unverified |
| UnnamedContract | unknown | celo | n/a | `0x3581ae...62edb4` | ❓ Unverified |
| UnnamedContract | unknown | celo | n/a | `0x4508ab...85eccb` | ❓ Unverified |
| UnnamedContract | unknown | celo | n/a | `0x4b6ed3...b2f68f` | ❓ Unverified |
| UnnamedContract | unknown | celo | n/a | `0x4e176b...40be01` | ❓ Unverified |
| UnnamedContract | unknown | celo | n/a | `0x526a2a...e95913` | ❓ Unverified |
| UnnamedContract | unknown | celo | n/a | `0x5e0b1a...da82b6` | ❓ Unverified |
| UnnamedContract | unknown | celo | n/a | `0x61989e...a9372a` | ❓ Unverified |
| UnnamedContract | unknown | celo | n/a | `0x65ac8a...7268f3` | ❓ Unverified |
| UnnamedContract | unknown | celo | n/a | `0x67030a...1eb409` | ❓ Unverified |
| UnnamedContract | unknown | celo | n/a | `0x68def7...68e3d5` | ❓ Unverified |
| UnnamedContract | unknown | celo | n/a | `0x703730...5c58ca` | ❓ Unverified |
| UnnamedContract | unknown | celo | n/a | `0x71f3ba...12a767` | ❓ Unverified |
| UnnamedContract | unknown | celo | n/a | `0x75e41f...543f9d` | ❓ Unverified |
| UnnamedContract | unknown | celo | n/a | `0x7d29b5...558113` | ❓ Unverified |
| UnnamedContract | unknown | celo | n/a | `0x7e8503...d35b13` | ❓ Unverified |
| UnnamedContract | unknown | celo | n/a | `0x9c5765...d13eea` | ❓ Unverified |
| UnnamedContract | unknown | celo | n/a | `0x9f4bef...1687f1` | ❓ Unverified |
| UnnamedContract | unknown | celo | n/a | `0x9fbfe1...6e9a8e` | ❓ Unverified |
| UnnamedContract | unknown | celo | n/a | `0xa07b88...1bdef1` | ❓ Unverified |
| UnnamedContract | unknown | celo | n/a | `0xa0c634...7fd9e8` | ❓ Unverified |
| UnnamedContract | unknown | celo | n/a | `0xa5d057...6d3ac6` | ❓ Unverified |
| UnnamedContract | unknown | celo | n/a | `0xa92c75...04b04d` | ❓ Unverified |
| UnnamedContract | unknown | celo | n/a | `0xc0db3c...ab4e5f` | ❓ Unverified |
| UnnamedContract | unknown | celo | n/a | `0xd39e81...8bf8a0` | ❓ Unverified |
| UnnamedContract | unknown | celo | n/a | `0xd4ca9f...790dfc` | ❓ Unverified |
| UnnamedContract | unknown | celo | n/a | `0xdef8c1...9bdca8` | ❓ Unverified |
| UnnamedContract | unknown | celo | n/a | `0xe3fa2f...af879e` | ❓ Unverified |
| UnnamedContract | unknown | celo | n/a | `0xe8c9dd...8ca48c` | ❓ Unverified |
| UnnamedContract | unknown | celo | n/a | `0xed2ce4...69a8fd` | ❓ Unverified |
| UnnamedContract | unknown | celo | n/a | `0xf3a2bf...5439b9` | ❓ Unverified |
| UnnamedContract | unknown | celo | n/a | `0xf4cf09...62921c` | ❓ Unverified |
| UnnamedContract | unknown | celo | n/a | `0xfd4371...304c56` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x0a7cdb...2c6aa7` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x265fc6...d2c114` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x26834c...d64576` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x3a0e43...339d3e` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x4cbce6...8434fe` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x52f447...fdbcaa` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x574d44...940dcb` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x6473af...3f0a19` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x69e9fb...77c5cd` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x822c43...c8c379` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x841d89...5183ee` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xa47267...7dfc88` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xb24999...89d969` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xb58078...39aeef` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xc9ea89...056c9d` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xccf619...818e24` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xe0866e...03047f` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xf1ea78...110200` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xfe6317...75b249` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xfe6b1a...2cd15b` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0x1289f7...ac9f8b` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | 2 deployments: linea `0x72ccf6...9178ae`; linea `0xe1efc9...cbd269` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0xc6ae1d...bf9dbf` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0xc95a4b...55446d` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [Wanchain 1.0.pdf](https://github.com/wanchain/Audits/blob/master/Wanchain%201.0.pdf) | unknown | Audit | 2018-07 | stale | Direct | contract_name | 2 | high |
| [Wanchain Open Storeman.pdf](https://github.com/wanchain/Audits/blob/master/Wanchain%20Open%20Storeman.pdf) | unknown | Audit | 2019-02 | stale | Direct | n/a | 0 | n/a |
| [Wanchain PoS.pdf](https://github.com/wanchain/Audits/blob/master/Wanchain%20PoS.pdf) | unknown | Audit | 2019-07 | stale | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 0 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 339 |

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
