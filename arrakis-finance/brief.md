# Agentic Audit Brief: Arrakis Finance

## Project Overview

- Project: Arrakis Finance (`arrakis-finance`)
- Website: [https://www.arrakis.finance](https://www.arrakis.finance)
- Lifecycle: active (Tier 0, 95.9% below peak)
- Generated: 2026-05-31T07:26:19.749Z
- Pipeline run: v2-pipeline-2026-05-31-ab6275-1b32
- Chains: arbitrum, base, bsc, ethereum, ink, optimism, plasma, polygon, unichain
- Contract surface: 124 unique implementations (709 raw deployments)
- DeFi Llama TVL: $77,236,496.00
- On-chain TVL (included contracts): $128,173.99
- TVL by chain: Ethereum $128,173.99

## Project Description

Arrakis Finance is a liquidity management protocol that automates concentrated liquidity provision across multiple decentralized exchanges. It offers modular vaults and strategies to optimize yields for liquidity providers.

### Architecture

Arrakis V1 and V2 are legacy vault systems, while Arrakis Modular is the current core infrastructure that uses DEX-specific modules to manage liquidity across various AMMs. All families share governance and proxy patterns, with Modular relying on registries and beacons to deploy and upgrade vaults and modules.

## Audit Coverage Summary

- Verified implementations audited: 30/103 (29.1%)
- Verified + Unaudited implementations: 72
- Verified by bytecode match: 2
- Unverified implementations: 21
- Unique implementations: 124
- Raw deployments: 709
- Audits discovered: 12
- Scoreable audits (matched contracts): 10
- ASD (verified + unaudited TVL): $3,070.77
- Latest audit: 2023-08 (stale)
- Staleness: 0 fresh, 0 aging, 12 stale, 0 unknown
- Tier 1 coverage: 3.9% (Sherlock)

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| unknown | Tier 2 | 30 | 29.1% | 2023-08 |
| WatchPug | Tier 2 | 9 | 8.7% | 2023-01 |
| Sherlock | Tier 1 | 4 | 3.9% | 2023-08 |

## Contract Surface

### ✅ Verified + Audited (29)

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| GUniPoolStatic | core_logic | ethereum | 9 deployments: ethereum [`0x0a64a9...e7c2a7`](./contracts/ethereum-1/0x0a64a916390f328bc4d7ce4429cb4c5b4ce7c2a7/); ethereum `0x288a17...3da13a`; ethereum `0x5780bb...9e04a0`; ethereum `0x584bd5...d95382`; ethereum `0x67092a...87b691`; ethereum `0x9db7be...a590d5`; ethereum `0xa64269...6b1bcc`; ethereum `0xe98c7c...074a3d`; ethereum `0xefe047...263b25` | ✅ Audited |
| ArrakisFactoryV1 | registry | optimism | 3 deployments: ethereum `0xea1aff...2db7d9`; optimism [`0x2845c6...616f09`](./contracts/optimism-10/0x2845c6929d621e32b7596520c8a1e5a37e616f09/); polygon `0x37265a...dc342a` | ✅ Audited |
| ArrakisV1RouterStaking | adapter | optimism | 6 deployments: ethereum `0xdd9206...424a74`; ethereum `0xe9bf34...66b472`; optimism [`0x9ce88a...0094d5`](./contracts/optimism-10/0x9ce88a56d120300061593ef7ad074a1b710094d5/); optimism `0xc248d6...5b05c2`; polygon `0xc73fb1...06df66`; polygon `0xe92501...0b7472` | ✅ Audited |
| ArrakisV2 | unknown | arbitrum | 20 deployments: ethereum `0x1d91f6...8759b6`; ethereum `0x2f389e...d5cf00`; ethereum `0x7f346f...e6df38`; ethereum `0xaf0f96...7b134d`; ethereum `0xb5c3b2...6b09ba`; optimism `0x1d91f6...8759b6`; optimism `0x7f346f...e6df38`; optimism `0xaf0f96...7b134d`; optimism `0xb5c3b2...6b09ba`; polygon `0x399e3b...cbbd5e`; polygon `0x7f346f...e6df38`; polygon `0xade4e7...348b2a`; polygon `0xaf0f96...7b134d`; polygon `0xb5c3b2...6b09ba`; polygon `0xcc8989...6006e3`; arbitrum [`0x0e4697...b37ab6`](./contracts/arbitrum-42161/0x0e4697d331b0f4fb74c6c9ffb8f931bc16b37ab6/); arbitrum `0x1d91f6...8759b6`; arbitrum `0x7f346f...e6df38`; arbitrum `0xaf0f96...7b134d`; arbitrum `0xb5c3b2...6b09ba` | ✅ Audited |
| ArrakisV2Beacon | registry | polygon | 8 deployments: ethereum `0x891e7e...63b8b3`; optimism `0x891e7e...63b8b3`; polygon [`0x1d91f6...8759b6`](./contracts/polygon-137/0x1d91f6d917ec51de53a5789c34fff777a58759b6/); polygon `0x30c552...634a98`; polygon `0x4294bb...093cc3`; polygon `0x891e7e...63b8b3`; arbitrum `0x4ab3e1...318e42`; arbitrum `0x891e7e...63b8b3` | ✅ Audited |
| ArrakisV2GaugeBeacon | operational_periphery | polygon | [`0x79fc92...c52168`](./contracts/polygon-137/0x79fc92afa1ce5476010644380156790d2fc52168/) | ✅ Audited |
| ArrakisV2GaugeFactory | operational_periphery | polygon | 2 deployments: polygon [`0x6dddb4...8a7c8c`](./contracts/polygon-137/0x6dddb4653410c038701961c268a3e1ed988a7c8c/); polygon `0xac31a4...e29681` | ✅ Audited |
| ArrakisV2Helper | periphery | ethereum | 18 deployments: ethereum [`0x07d2ce...64449f`](./contracts/ethereum-1/0x07d2ceb4869dfe17e8d48c92a71edc3ae564449f/); ethereum `0x89e4be...7f07d6`; ethereum `0xbaffbf...bba929`; ethereum `0xccee73...5c8d9c`; optimism [`0x07d2ce...64449f`](./contracts/optimism-10/0x07d2ceb4869dfe17e8d48c92a71edc3ae564449f/); optimism `0x89e4be...7f07d6`; optimism `0xccee73...5c8d9c`; polygon [`0x07d2ce...64449f`](./contracts/polygon-137/0x07d2ceb4869dfe17e8d48c92a71edc3ae564449f/); polygon `0x1dddec...be0da4`; polygon `0x7843ea...0749d6`; polygon `0x81d442...e16bb8`; polygon `0x89e4be...7f07d6`; polygon `0xb0e897...7baef8`; polygon `0xccee73...5c8d9c`; arbitrum [`0x07d2ce...64449f`](./contracts/arbitrum-42161/0x07d2ceb4869dfe17e8d48c92a71edc3ae564449f/); arbitrum `0x4b4b51...9b7af1`; arbitrum `0x89e4be...7f07d6`; arbitrum `0xccee73...5c8d9c` | ✅ Audited |
| ArrakisV2Resolver | unknown | polygon | 17 deployments: ethereum `0x4bc385...f905f5`; ethereum `0x535c5f...1cc7b8`; ethereum `0x767902...8339c7`; ethereum `0xb11bb8...c1f193`; optimism `0x4bc385...f905f5`; optimism `0x535c5f...1cc7b8`; optimism `0xb11bb8...c1f193`; polygon [`0x0c7e30...d3a650`](./contracts/polygon-137/0x0c7e30e3019d1c598c82316c086cd5a2f9d3a650/); polygon `0x4b6fee...6e6f73`; polygon `0x4bc385...f905f5`; polygon `0x535c5f...1cc7b8`; polygon `0x7c43c9...63481b`; polygon `0xb11bb8...c1f193`; arbitrum `0x4bc385...f905f5`; arbitrum `0x535c5f...1cc7b8`; arbitrum `0x9b9563...621e8e`; arbitrum `0xb11bb8...c1f193` | ✅ Audited |
| ArrakisV2Router | adapter | polygon | 14 deployments: ethereum `0x6ac8ba...f61b94`; ethereum `0xfe3d83...f15e3d`; optimism `0x6ac8ba...f61b94`; optimism `0xfe3d83...f15e3d`; polygon [`0x413fc8...ed01ab`](./contracts/polygon-137/0x413fc8e6f0b95d1f45de01b17e9441ec41ed01ab/); polygon `0x6ac8ba...f61b94`; polygon `0x6c277e...523fc0`; polygon `0x8352be...37e4a2`; polygon `0xf4e067...9e3340`; polygon `0xfe3d83...f15e3d`; arbitrum `0x4b6fee...6e6f73`; arbitrum `0x6ac8ba...f61b94`; arbitrum `0xd668a6...410637`; arbitrum `0xfe3d83...f15e3d` | ✅ Audited |
| ArrakisV2StaticDeployer | unknown | polygon | [`0x7bf134...6d7503`](./contracts/polygon-137/0x7bf13492d11ee0f129201247cc3acd59206d7503/) | ✅ Audited |
| ArrakisV2StaticManager | governance | polygon | 2 deployments: polygon [`0x2b63a0...732382`](./contracts/polygon-137/0x2b63a0251d7e5ae0407fb8c8ddf4037958732382/); polygon `0xd5f602...0d5ae8` | ✅ Audited |
| EIP173Proxy | unknown | polygon | [`0x75830b...116540`](./contracts/polygon-137/0x75830bca247c671a338526f01f47e29384116540/) | ✅ Audited |
| GelatoUniV3Pool | core_logic | ethereum | 4 deployments: ethereum [`0x810f9c...c33c69`](./contracts/ethereum-1/0x810f9c4613f466f02cc7da671a3ba9a7e8c33c69/); ethereum `0xaf0c7d...bd928c`; ethereum `0xc2d819...129057`; ethereum `0xdcdccb...3f7b56` | ✅ Audited |
| GUniFactory | registry | ethereum | 7 deployments: ethereum [`0x034a66...158f9c`](./contracts/ethereum-1/0x034a6626eec82e14ac5b0130f04f85a2ea158f9c/); ethereum `0x075d37...de7051`; ethereum `0x9a999c...c58f40`; ethereum `0xc97476...065eaf`; ethereum `0xf51726...5772ce`; optimism `0xb9bfd9...195b5d`; polygon `0x33f054...c15e86` | ✅ Audited |
| GUniPool | core_logic | ethereum | 7 deployments: ethereum [`0x454bb7...49665b`](./contracts/ethereum-1/0x454bb75c7dbca9092981a7d4f641fac02e49665b/); ethereum `0x68c68f...9f94cf`; ethereum `0x6dfc8b...e1b48b`; ethereum `0xb542d5...797369`; ethereum `0xb54613...597d82`; optimism `0x8582bf...d7c216`; polygon `0xd2bb19...672f40` | ✅ Audited |
| GUniRouter | adapter | polygon | 7 deployments: ethereum `0x513e0a...a2a03d`; ethereum `0x8ca6fa...5007a7`; ethereum `0x9de3f4...927f6a`; optimism `0x97551a...110fc1`; optimism `0xc56f04...5142ba`; polygon [`0x477e50...3efca0`](./contracts/polygon-137/0x477e509b9d08862baeb8ab69e901ae72b13efca0/); polygon `0xb42de7...fa7811` | ✅ Audited |
| GUniRouterStaking | adapter | polygon | 2 deployments: polygon [`0x6be877...7fac63`](./contracts/polygon-137/0x6be877dd7136d8864a56a87a577fcfb3ca7fac63/); polygon `0x9c3c16...87ca7f` | ✅ Audited |
| Liquidity Gauge v4 | operational_periphery | ethereum | 8 deployments: ethereum [`0x18d1bc...3c7994`](./contracts/ethereum-1/0x18d1bc899a8e9baaadab80f401cb3a6c2b3c7994/); ethereum `0xb378c8...91a2f1`; ethereum `0xc2b92c...9a7174`; ethereum `0xddda52...4dfed0`; optimism `0x232ea1...9aea2e`; optimism `0x6aaee1...285b37`; optimism `0x8c99b6...afc501`; optimism `0xd9723f...6e281c` | ✅ Audited |
| PALMManager | governance | ethereum | 34 deployments: ethereum [`0x0a7d53...b3013e`](./contracts/ethereum-1/0x0a7d53ff9c56a3bd6a4a369f14ba3ba523b3013e/); ethereum `0x5b5157...2c8449`; ethereum `0x880d0a...b1c4e8`; ethereum `0x8e0cfa...b3d511`; ethereum `0x8eebba...92856e`; ethereum `0xa39b17...41aeab`; ethereum `0xecf6a0...69c38f`; ethereum `0xf13be5...f1f74c`; ethereum `0xf4dc9d...0405dd`; ethereum `0xf82069...862a89`; ethereum `0xf90ec8...b8877e`; optimism [`0x0a7d53...b3013e`](./contracts/optimism-10/0x0a7d53ff9c56a3bd6a4a369f14ba3ba523b3013e/); optimism `0x8e0cfa...b3d511`; optimism `0x8eebba...92856e`; optimism `0xecf6a0...69c38f`; optimism `0xf90ec8...b8877e`; polygon [`0x0a7d53...b3013e`](./contracts/polygon-137/0x0a7d53ff9c56a3bd6a4a369f14ba3ba523b3013e/); polygon `0x10ca44...a4c471`; polygon `0x3025b4...2c3abb`; polygon `0x4409d8...889041`; polygon `0x654b32...f482c1`; polygon `0x8e0cfa...b3d511`; polygon `0x8eebba...92856e`; polygon `0xb9eb6d...643a39`; polygon `0xecf6a0...69c38f`; polygon `0xf4c590...a4f14e`; polygon `0xf90ec8...b8877e`; arbitrum [`0x0a7d53...b3013e`](./contracts/arbitrum-42161/0x0a7d53ff9c56a3bd6a4a369f14ba3ba523b3013e/); arbitrum `0x450489...54c6e4`; arbitrum `0x8b4f2f...cf74c2`; arbitrum `0x8e0cfa...b3d511`; arbitrum `0x8eebba...92856e`; arbitrum `0xecf6a0...69c38f`; arbitrum `0xf90ec8...b8877e` | ✅ Audited |
| PALMTerms | unknown | polygon | 28 deployments: ethereum `0x38e6d8...c9f005`; ethereum `0x50763a...2d2890`; ethereum `0x536efd...d14716`; ethereum `0x65b87a...95c515`; ethereum `0xb041f6...fad3ee`; ethereum `0xb78b61...1c4585`; ethereum `0xbd39e8...7ce78e`; ethereum `0xc73fb1...06df66`; optimism `0x50763a...2d2890`; optimism `0x65b87a...95c515`; optimism `0xb041f6...fad3ee`; optimism `0xbd39e8...7ce78e`; polygon [`0x2e7c05...30cefc`](./contracts/polygon-137/0x2e7c05e24e96c3f34c5693ba8dedcdcf3530cefc/); polygon `0x304962...c588ab`; polygon `0x50763a...2d2890`; polygon `0x65b87a...95c515`; polygon `0xb041f6...fad3ee`; polygon `0xb1cdc6...28fa07`; polygon `0xb82c4d...fee83e`; polygon `0xbd39e8...7ce78e`; polygon `0xbee2b7...2c071e`; polygon `0xc16489...a740cc`; arbitrum `0x4294bb...093cc3`; arbitrum `0x50763a...2d2890`; arbitrum `0x65b87a...95c515`; arbitrum `0xb041f6...fad3ee`; arbitrum `0xbd39e8...7ce78e`; arbitrum `0xcc8989...6006e3` | ✅ Audited |
| Pool | core_logic | ethereum | 11 deployments: ethereum [`0x4cd412...cfab84`](./contracts/ethereum-1/0x4cd41204aa4c7438374256bd7be850ef9fcfab84/); ethereum `0xca0e1b...e96a25`; optimism [`0x4cd412...cfab84`](./contracts/optimism-10/0x4cd41204aa4c7438374256bd7be850ef9fcfab84/); optimism `0xca0e1b...e96a25`; polygon [`0x4cd412...cfab84`](./contracts/polygon-137/0x4cd41204aa4c7438374256bd7be850ef9fcfab84/); polygon `0x9a4935...293345`; polygon `0xbd9423...86b249`; polygon `0xca0e1b...e96a25`; arbitrum [`0x4cd412...cfab84`](./contracts/arbitrum-42161/0x4cd41204aa4c7438374256bd7be850ef9fcfab84/); arbitrum `0xca0e1b...e96a25`; arbitrum `0xe19ae7...ce72ba` | ✅ Audited |
| Position | unknown | arbitrum | 11 deployments: ethereum `0x8638fb...e49642`; ethereum `0xf7cb77...1faf44`; optimism `0x8638fb...e49642`; optimism `0xf7cb77...1faf44`; polygon `0x8638fb...e49642`; polygon `0xb259bc...19c565`; polygon `0xf72900...2f03a9`; polygon `0xf7cb77...1faf44`; arbitrum [`0x649055...532842`](./contracts/arbitrum-42161/0x64905533304b0ec6d7675d6c783c2865c3532842/); arbitrum `0x8638fb...e49642`; arbitrum `0xf7cb77...1faf44` | ✅ Audited |
| RouterSwapExecutor | adapter | ethereum | 11 deployments: ethereum [`0x194886...ceb1b6`](./contracts/ethereum-1/0x19488620cdf3ff1b0784ac4529fb5c5abaceb1b6/); ethereum `0x25e9b0...dd7b96`; ethereum `0x8ef4d0...2dd04d`; ethereum `0xa552df...473398`; optimism `0x25e9b0...dd7b96`; polygon `0x25e9b0...dd7b96`; polygon `0x97e2f0...328d7b`; polygon `0xcd3b68...cdd14e`; arbitrum `0x25e9b0...dd7b96`; arbitrum `0x902912...8d2c75`; arbitrum `0x9a4935...293345` | ✅ Audited |
| RouterSwapResolver | adapter | ethereum | 9 deployments: ethereum [`0x2ce9e8...9fda51`](./contracts/ethereum-1/0x2ce9e840b69a86c965f4d732e39e389fe69fda51/); ethereum `0xc6c533...9fb265`; optimism [`0x2ce9e8...9fda51`](./contracts/optimism-10/0x2ce9e840b69a86c965f4d732e39e389fe69fda51/); polygon [`0x2ce9e8...9fda51`](./contracts/polygon-137/0x2ce9e840b69a86c965f4d732e39e389fe69fda51/); polygon `0x391d00...136729`; polygon `0xe137ae...68ce58`; arbitrum [`0x2ce9e8...9fda51`](./contracts/arbitrum-42161/0x2ce9e840b69a86c965f4d732e39e389fe69fda51/); arbitrum `0x89255b...9825dd`; arbitrum `0xb259bc...19c565` | ✅ Audited |
| SimpleManager | governance | ethereum | 10 deployments: ethereum [`0x3522df...c811e1`](./contracts/ethereum-1/0x3522df5c13a40dfaa9cec17e12f5fbd29dc811e1/); ethereum `0x64ab6c...d9a9fa`; optimism [`0x3522df...c811e1`](./contracts/optimism-10/0x3522df5c13a40dfaa9cec17e12f5fbd29dc811e1/); optimism `0x64ab6c...d9a9fa`; polygon [`0x3522df...c811e1`](./contracts/polygon-137/0x3522df5c13a40dfaa9cec17e12f5fbd29dc811e1/); polygon `0x58d882...5e584d`; polygon `0x64ab6c...d9a9fa`; arbitrum [`0x3522df...c811e1`](./contracts/arbitrum-42161/0x3522df5c13a40dfaa9cec17e12f5fbd29dc811e1/); arbitrum `0x379db4...ab2390`; arbitrum `0x64ab6c...d9a9fa` | ✅ Audited |
| SimpleTimelock | governance | ethereum | 6 deployments: ethereum [`0x026012...fc6a40`](./contracts/ethereum-1/0x0260125e9951fcc800d17aaed9a9ab5b4bfc6a40/); ethereum `0x579e01...5d1806`; polygon `0x1d512b...e53d74`; polygon `0xa6e769...0c013c`; polygon `0xd39977...24bb01`; polygon `0xe81e18...e12181` | ✅ Audited |
| Underlying | unknown | polygon | 17 deployments: ethereum `0x39b989...3b780a`; ethereum `0x3b8d59...bc0988`; ethereum `0x4f3f69...563021`; ethereum `0x92cb4f...7c2bd2`; optimism `0x39b989...3b780a`; optimism `0x3b8d59...bc0988`; optimism `0x92cb4f...7c2bd2`; polygon [`0x04ef5d...5f4efb`](./contracts/polygon-137/0x04ef5da5f7837bd9b6480b3c5d3c56dc135f4efb/); polygon `0x39b989...3b780a`; polygon `0x3b8d59...bc0988`; polygon `0x92cb4f...7c2bd2`; polygon `0xbeb59f...5add2d`; polygon `0xfa8726...9bc5cd`; arbitrum `0x39b989...3b780a`; arbitrum `0x3b8d59...bc0988`; arbitrum `0x92cb4f...7c2bd2`; arbitrum `0xe891b9...3aff82` | ✅ Audited |
| Vyper_contract | unknown | optimism | 43 deployments: ethereum `0x4974a4...92824f`; ethereum `0x83c1ae...f93608`; optimism [`0x1535ec...846479`](./contracts/optimism-10/0x1535ec8c7477d38066326189f5b1c695c2846479/); optimism `0x15a065...94fe3f`; optimism `0x1b6a53...e0a8e6`; optimism `0x212f71...a48741`; optimism `0x24c95f...6e9d0d`; optimism `0x2b65ed...d84dfb`; optimism `0x310b18...06b4c3`; optimism `0x367f2d...dea853`; optimism `0x436675...05a210`; optimism `0x48a151...5189b0`; optimism `0x499b7c...500ab3`; optimism `0x57a2b0...535b48`; optimism `0x62bdb9...36c2a6`; optimism `0x68f51d...a4c58b`; optimism `0x7e232a...65df00`; optimism `0x7f3013...1b76be`; optimism `0x8044de...b1569f`; optimism `0x87c7c8...86f0f5`; optimism `0x8b24d4...bbb0f1`; optimism `0x8d1c48...c513f1`; optimism `0xaf9707...14b847`; optimism `0xb556f4...feb971`; optimism `0xb8888e...12a00d`; optimism `0xbee2b7...2c071e`; optimism `0xc36681...4b6292`; optimism `0xccd64b...93c7d2`; optimism `0xcd0923...095c91`; optimism `0xd3a3fb...9b2402`; optimism `0xdedd02...e80aa5`; optimism `0xdf50c6...7ce65d`; optimism `0xe140e5...c25196`; optimism `0xe49d19...979c34`; optimism `0xf78daf...43ee6c`; optimism `0xff949c...8b698a`; polygon `0x56c5b0...c40275`; polygon `0x5780bb...9e04a0`; polygon `0x5aabe8...a64e98`; polygon `0x67092a...87b691`; polygon `0x969681...d4813f`; polygon `0xb76359...f604ba`; polygon `0xe54e04...a5d270` | ✅ Audited |

### ⚠️ Verified + Unaudited (72)

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| SovereignPool | core_logic | ethereum | [`0xd9a406...e68202`](./contracts/ethereum-1/0xd9a406dbc1a301b0d2ed5ba0d9398c4debe68202/) | ⚠️ Unaudited |
| ArrakisMetaVaultPublic | core_logic | ethereum | [`0xf79087...a6ad83`](./contracts/ethereum-1/0xf790870ccf6ae66ddc69f68e6d05d446f1a6ad83/) | ⚠️ Unaudited |
| AerodromeStandardModulePrivate | unknown | base | 4 deployments: base [`0x0e4afb...7d417e`](./contracts/base-8453/0x0e4afbdab305206465ee48f7766da185157d417e/); base `0x8dd906...d4ea6e`; base `0xa8098d...150785`; base `0xd9e51f...adefd1` | ⚠️ Unaudited |
| AerodromeStandardModulePrivateFees | unknown | base | 3 deployments: base [`0x06baae...7434ee`](./contracts/base-8453/0x06baae482698c8995f7b59f51e3ba021bf7434ee/); base `0x1a5273...0c33aa`; base `0xe7d57e...2b2f43` | ⚠️ Unaudited |
| ArrakisMetaVaultFactory | registry | ethereum | 6 deployments: ethereum [`0x2482db...3cc924`](./contracts/ethereum-1/0x2482dbd16061b0cd4f44e807d44b32534b3cc924/); ethereum `0x820fb8...123982`; base `0x820fb8...123982`; plasma `0x820fb8...123982`; arbitrum `0x248d28...3dbe11`; arbitrum `0x820fb8...123982` | ⚠️ Unaudited |
| ArrakisPublicVaultRouter | adapter | ethereum | 4 deployments: ethereum [`0x72aa2c...a66041`](./contracts/ethereum-1/0x72aa2c8e6b14f30131081401fa999fc964a66041/); ethereum `0x9e890d...a073b0`; ethereum `0xdfe90e...bea1ff`; arbitrum `0xd3db92...6df9fc` | ⚠️ Unaudited |
| ArrakisStandardManager | governance | arbitrum | 7 deployments: ethereum `0x196e74...fd1c6a`; ethereum `0x2e6e87...733bda`; ethereum `0xb789c1...409de0`; ethereum `0xd4ae05...a8f3eb`; ethereum `0xf093f5...496ae5`; arbitrum [`0x04da2c...301355`](./contracts/arbitrum-42161/0x04da2c24552f7a4c395950e47c78b40dc7301355/); arbitrum `0xc5a947...d10183` | ⚠️ Unaudited |
| AssetListingGUni | unknown | ethereum | [`0x67e4ed...507d2d`](./contracts/ethereum-1/0x67e4ede946b3d76c4c505566eb821a1470507d2d/) | ⚠️ Unaudited |
| CErc20Delegate | token | ethereum | 3 deployments: ethereum [`0x41346d...eee23b`](./contracts/ethereum-1/0x41346d3dd4b4688a388b24dac4014d75faeee23b/); ethereum `0x7e232a...65df00`; ethereum `0xc36681...4b6292` | ⚠️ Unaudited |
| CErc20Delegator | token | ethereum | 5 deployments: ethereum [`0x0f2ab0...ded9b0`](./contracts/ethereum-1/0x0f2ab07b9de2b784664f01cceb6ee4705bded9b0/); ethereum `0x60c4a1...109014`; ethereum `0xc50811...957358`; ethereum `0xccd64b...93c7d2`; ethereum `0xea3112...483044` | ⚠️ Unaudited |
| CLFactory | registry | base | 9 deployments: base [`0x342576...38a617`](./contracts/base-8453/0x342576bb62afe26c547bfcbd9e94e76d1538a617/); base `0x5e7bb1...06809a`; base `0x795ebb...51a01e`; base `0x9592cd...a6d51b`; base `0xade65c...89716a`; base `0xc6403d...1cd165`; base `0xcb4d5d...c535ac`; base `0xec2ffc...9cd4d1`; base `0xf8f2eb...c061ef` | ⚠️ Unaudited |
| CLGauge | operational_periphery | base | 10 deployments: base [`0x11909e...7daf22`](./contracts/base-8453/0x11909efd754f01da354f8219391b40b2df7daf22/); base `0x1296a1...6025b5`; base `0x434bcc...790f7b`; base `0x62d499...4f1d8a`; base `0x7dccb0...204b3e`; base `0x955320...e1b5d9`; base `0xb4318c...136f48`; base `0xc0d208...cfa0c8`; base `0xd30677...05fb08`; base `0xf5601f...442d2d` | ⚠️ Unaudited |
| CLGaugeFactory | operational_periphery | base | 8 deployments: base [`0x385293...f56abb`](./contracts/base-8453/0x385293cae378c813f16f0c1334d774adddf56abb/); base `0x3be76d...998529`; base `0x3e703f...9b6fbc`; base `0xa70db2...0ac08d`; base `0xb63022...dfcbb3`; base `0xd63e85...948adc`; base `0xef0efe...17e363`; base `0xff8f90...8898c2` | ⚠️ Unaudited |
| CLPool | core_logic | base | 9 deployments: base [`0x88e336...a0471f`](./contracts/base-8453/0x88e336956de7b74627fdfd548656b55501a0471f/); base `0x941b5f...514306`; base `0x942e97...8e5a16`; base `0xad95bd...894b48`; base `0xc77089...05b665`; base `0xd51500...bac106`; base `0xe39ef5...cc74ff`; base `0xec8e53...315831`; base `0xf926b5...f5da8e` | ⚠️ Unaudited |
| CLQuoter | periphery | bsc | [`0x0a46cc...7d59e5`](./contracts/bsc-56/0x0a46ccb50859bf6b7477d52db8b21fdc187d59e5/) | ⚠️ Unaudited |
| Counter | unknown | base | 3 deployments: base [`0x430d45...d75fb8`](./contracts/base-8453/0x430d459700add442a501f4b3c70de7f9c3d75fb8/); base `0x5f4ef7...e4987a`; base `0x9cdab0...3368a8` | ⚠️ Unaudited |
| CreationCodePrivateVault | core_logic | arbitrum | 2 deployments: ethereum `0xdd10ee...27923f`; arbitrum [`0xdce48a...00819f`](./contracts/arbitrum-42161/0xdce48a729f379ed69f7399cdce8d53f9d500819f/) | ⚠️ Unaudited |
| CreationCodePublicVault | core_logic | arbitrum | 2 deployments: ethereum `0xd9fbe9...419ef1`; arbitrum [`0x60d5d3...c24f71`](./contracts/arbitrum-42161/0x60d5d34fdc5c0348e68689e21f9303798ac24f71/) | ⚠️ Unaudited |
| CustomSwapFeeModule | unknown | base | 6 deployments: base [`0x2dd416...1ca9d1`](./contracts/base-8453/0x2dd4162d4685657c06cd8f027cca3208311ca9d1/); base `0x4ebe40...db4114`; base `0x5264ee...2a2223`; base `0xe945ab...2a5684`; base `0xf4171b...69af00`; base `0xfddfa1...c5af6c` | ⚠️ Unaudited |
| CustomUnstakedFeeModule | unknown | base | 7 deployments: base [`0x0ad083...38ee68`](./contracts/base-8453/0x0ad08370c76ff426f534bb2affd9b5555338ee68/); base `0x3a0a75...88862c`; base `0x57bffd...b1b058`; base `0xc2cc32...0a1a0b`; base `0xccc21f...2ccd35`; base `0xe3cb2e...657939`; base `0xe4324a...826be7` | ⚠️ Unaudited |
| DynamicSwapFeeModule | unknown | base | [`0x87d8f9...38e8cb`](./contracts/base-8453/0x87d8f999bba9343e8099552426775b51c338e8cb/) | ⚠️ Unaudited |
| GelatoUniV3Router | adapter | ethereum | [`0x5dacf7...a1e82b`](./contracts/ethereum-1/0x5dacf7b13bea52df7ba5222983b1ffe146a1e82b/) | ⚠️ Unaudited |
| Guardian | governance | ethereum | 4 deployments: ethereum [`0x13fcef...f54662`](./contracts/ethereum-1/0x13fcef4b532ff776d9f80d1fc2673b41cef54662/); ethereum `0x6f4411...7ab981`; ethereum `0xfb4e25...97f408`; arbitrum `0x8ef4d0...2dd04d` | ⚠️ Unaudited |
| GUniOracle | operational_periphery | ethereum | 4 deployments: ethereum [`0x0719b2...90cc96`](./contracts/ethereum-1/0x0719b21ffc5d7fb46b9f74301149ed035790cc96/); ethereum `0x399e3b...cbbd5e`; ethereum `0x50f614...069f6b`; ethereum `0x7843ea...0749d6` | ⚠️ Unaudited |
| GUniResolver | unknown | polygon | 4 deployments: ethereum `0x3b01f3...ede976`; ethereum `0xc8b920...b3dc89`; optimism `0xd2bb19...672f40`; polygon [`0x3638fc...04c7b2`](./contracts/polygon-137/0x3638fc820c22b9ecd631943bc7d5591c0004c7b2/) | ⚠️ Unaudited |
| GUniResolver02 | unknown | ethereum | 2 deployments: ethereum [`0x031765...db214a`](./contracts/ethereum-1/0x0317650af6f184344d7368ac8bb0beba5edb214a/); ethereum `0x72c321...e39ee5` | ⚠️ Unaudited |
| HOT | unknown | ethereum | 2 deployments: ethereum [`0x326999...62132a`](./contracts/ethereum-1/0x3269994964dfe4aa5f8dd0c99ed40e881562132a/); ethereum `0xf23785...c20cde` | ⚠️ Unaudited |
| HOTExecutor | unknown | arbitrum | 2 deployments: ethereum `0xc5a947...d10183`; arbitrum [`0x01e595...e104cc`](./contracts/arbitrum-42161/0x01e595a0c23432340013d4c7dd4507cbd8e104cc/) | ⚠️ Unaudited |
| HOTOracleWrapper | operational_periphery | ethereum | 6 deployments: ethereum [`0x1cf456...6f4406`](./contracts/ethereum-1/0x1cf45654e28e8012cbc6c1a0e1011efaab6f4406/); ethereum `0xf12679...9356dd`; ethereum `0xf23d83...c4ee80`; base `0x1dddec...be0da4`; arbitrum `0x38b413...9101f8`; arbitrum `0xe4db6e...d507f0` | ⚠️ Unaudited |
| MetaPoolFactory | registry | ethereum | [`0x8582bf...d7c216`](./contracts/ethereum-1/0x8582bf142be76fef830d23f590a2587f2ad7c216/) | ⚠️ Unaudited |
| MigrationHelper | operational_periphery | base | 2 deployments: ethereum `0xd61407...f9b962`; base [`0x6aba59...8501b7`](./contracts/base-8453/0x6aba59e0dc9ad51645b23cc1013fc03a908501b7/) | ⚠️ Unaudited |
| MixedRouteQuoterV1 | periphery | base | 7 deployments: base [`0x0a5aa5...07d5c6`](./contracts/base-8453/0x0a5aa5d3a4d28014f967bf0f29eaa3ff9807d5c6/); base `0x393550...5d81ad`; base `0x68ec55...234755`; base `0x9574e3...3ada30`; base `0x98fec6...8c5eb7`; base `0x9951ff...1f0b5a`; base `0xe2af5f...b406e2` | ⚠️ Unaudited |
| MixedRouteQuoterV2 | periphery | base | 2 deployments: base [`0x495406...5b4f4f`](./contracts/base-8453/0x49540630a4d2ce67d54450d007d634f4c45b4f4f/); base `0xb4a9e5...cf09eb` | ⚠️ Unaudited |
| MixedRouteQuoterV3 | periphery | base | [`0xcd2a7d...65b555`](./contracts/base-8453/0xcd2a7d98e82d6107eac1828ce8deaa6acb65b555/) | ⚠️ Unaudited |
| MockCRV | unknown | polygon | [`0x1ca8bc...14534f`](./contracts/polygon-137/0x1ca8bc12faccde52d3d4ee21020d63e15714534f/) | ⚠️ Unaudited |
| MockWMATIC | unknown | polygon | [`0xe292ef...97ebd4`](./contracts/polygon-137/0xe292ef6332474f6568b7a8e9b6ece8576e97ebd4/) | ⚠️ Unaudited |
| ModulePrivateRegistry | registry | arbitrum | 3 deployments: ethereum `0xe278c1...27a265`; ethereum `0xf95e09...b2bb0c`; arbitrum [`0xc0b7fa...b987f0`](./contracts/arbitrum-42161/0xc0b7fac163566a768b4f30d06fd4b08bb6b987f0/) | ⚠️ Unaudited |
| ModulePublicRegistry | registry | arbitrum | 4 deployments: ethereum `0x791d75...779603`; ethereum `0x87d101...461f6b`; ethereum `0xd2307b...a89317`; arbitrum [`0x21e7bd...2b70b3`](./contracts/arbitrum-42161/0x21e7bde4245679016d567d6cd301c3d6dd2b70b3/) | ⚠️ Unaudited |
| NFTDescriptor | token | base | 2 deployments: base [`0x0681d1...4ec818`](./contracts/base-8453/0x0681d141da398e567a677f0eaf13c8815c4ec818/); base `0x49631c...365707` | ⚠️ Unaudited |
| NFTSVG | token | base | 2 deployments: base [`0x212665...f4dc52`](./contracts/base-8453/0x212665aaea8da0a3b71a47a53b3100ef4cf4dc52/); base `0xe1c8e0...f92c04` | ⚠️ Unaudited |
| NonfungiblePositionManager | governance | base | 8 deployments: base [`0x0c3141...5bbde3`](./contracts/base-8453/0x0c314190b0b78513fd908c3bfe3c83ef5f5bbde3/); base `0x7dd33b...6238d8`; base `0x827922...485b72`; base `0xa990c6...b9d55f`; base `0xbcb131...7ca71e`; base `0xc741be...6a1178`; base `0xe702fc...928ad0`; base `0xf67016...77c45a` | ⚠️ Unaudited |
| NonfungibleTokenPositionDescriptor | token | base | 7 deployments: base [`0x01b0ca...d53c55`](./contracts/base-8453/0x01b0cacb9a8004e08d075c919b5df3b59fd53c55/); base `0x11b5f9...953814`; base `0x3b1ebc...a579f8`; base `0x48fa02...642f34`; base `0xc85c12...c8e3fe`; base `0xf1503a...a040ed`; base `0xf63203...41337f` | ⚠️ Unaudited |
| PALMfeeCollector | unknown | optimism | 4 deployments: optimism [`0x187dbd...0dede5`](./contracts/optimism-10/0x187dbd46e895dc06dda1840eda6d9b01990dede5/); optimism `0x89cfc2...b51a4c`; polygon `0x46736d...3ae104`; polygon `0x72a6b6...2edbd2` | ⚠️ Unaudited |
| PancakeSwapV3MulticallHelper | periphery | base | [`0xf02961...dbd2ea`](./contracts/base-8453/0xf029611a16e1a8ca6aad83c08d2b017511dbd2ea/) | ⚠️ Unaudited |
| PancakeSwapV3StandardModulePrivate | unknown | ethereum | 2 deployments: ethereum [`0x49083c...3d4b11`](./contracts/ethereum-1/0x49083cb8204c5bf830c75fd65d8eb3be1c3d4b11/); bsc [`0x49083c...3d4b11`](./contracts/bsc-56/0x49083cb8204c5bf830c75fd65d8eb3be1c3d4b11/) | ⚠️ Unaudited |
| PancakeSwapV4Oracle | operational_periphery | bsc | 2 deployments: bsc [`0x586eb5...9d8a4a`](./contracts/bsc-56/0x586eb5528e518a7eeb571f1d2149360c249d8a4a/); bsc `0xbe2881...0f2a1b` | ⚠️ Unaudited |
| PancakeSwapV4StandardModulePrivate | unknown | bsc | [`0x3da003...c53c39`](./contracts/bsc-56/0x3da00380b4d56101685d058785fde25fe9c53c39/) | ⚠️ Unaudited |
| PancakeV4Oracle | operational_periphery | bsc | 7 deployments: bsc [`0x04ef5d...5f4efb`](./contracts/bsc-56/0x04ef5da5f7837bd9b6480b3c5d3c56dc135f4efb/); bsc `0x0748dd...7ebb35`; bsc `0x30c552...634a98`; bsc `0x31d00e...cd360d`; bsc `0x81d442...e16bb8`; bsc `0xda26e9...958abf`; bsc `0xf4e067...9e3340` | ⚠️ Unaudited |
| Pauser | unknown | ethereum | [`0x700a1c...aac03a`](./contracts/ethereum-1/0x700a1cda1495c1b34c4962e9742a8a8832aac03a/) | ⚠️ Unaudited |
| PriceFeedAverage | operational_periphery | arbitrum | [`0xf4e067...9e3340`](./contracts/arbitrum-42161/0xf4e0671a76b1715744a259a0fa0c561eb89e3340/) | ⚠️ Unaudited |
| PrivateVaultNFT | core_logic | ethereum | [`0x44a801...56b762`](./contracts/ethereum-1/0x44a801e7e2e073bd8bce4bccf653239fa156b762/) | ⚠️ Unaudited |
| ProtocolFactory | registry | ethereum | 2 deployments: ethereum [`0x29939b...c4a603`](./contracts/ethereum-1/0x29939b3b2ad83882174a50dfd80a3b6329c4a603/); ethereum `0xf09171...4cd72f` | ⚠️ Unaudited |
| ProxyAdmin | governance | polygon | 39 deployments: ethereum `0x7d996d...a01daf`; ethereum `0x89dc63...2c9ca0`; ethereum `0xc00e8a...9b7b19`; ethereum `0xd0db41...9c0d8a`; ethereum `0xdd8f35...1518e7`; ethereum `0xdf4433...d8d8dd`; ethereum `0xe1de7b...5b4baf`; ethereum `0xe92501...0b7472`; ethereum `0xec0634...8a6fa7`; optimism `0x89dc63...2c9ca0`; optimism `0xc00e8a...9b7b19`; optimism `0xd0db41...9c0d8a`; optimism `0xdf4433...d8d8dd`; optimism `0xe1de7b...5b4baf`; optimism `0xec0634...8a6fa7`; optimism `0xf48362...2b47b8`; polygon [`0x021077...2d2b36`](./contracts/polygon-137/0x0210771fe1d7adc2a4f747e3553a5710132d2b36/); polygon `0x450489...54c6e4`; polygon `0x89dc63...2c9ca0`; polygon `0x8ce752...670720`; polygon `0xb7b131...b4b7af`; polygon `0xc00e8a...9b7b19`; polygon `0xc7d07f...d3ce48`; polygon `0xd0db41...9c0d8a`; polygon `0xda26e9...958abf`; polygon `0xdf4433...d8d8dd`; polygon `0xe1de7b...5b4baf`; polygon `0xeb18dd...6c63f2`; polygon `0xec0634...8a6fa7`; arbitrum `0x89dc63...2c9ca0`; arbitrum `0xb0e897...7baef8`; arbitrum `0xbeb59f...5add2d`; arbitrum `0xc00e8a...9b7b19`; arbitrum `0xd0db41...9c0d8a`; arbitrum `0xddfdfd...dae0e5`; arbitrum `0xdf4433...d8d8dd`; arbitrum `0xe1de7b...5b4baf`; arbitrum `0xec0634...8a6fa7`; arbitrum `0xfb8c9a...36b8d9` | ⚠️ Unaudited |
| QuoterV2 | periphery | base | 7 deployments: base [`0x254cf9...ae15b0`](./contracts/base-8453/0x254cf9e1e6e233aa1ac962cb9b05b2cfeaae15b0/); base `0x3d4c22...271c6c`; base `0x514c8b...089259`; base `0x919e53...4601fc`; base `0x9b8731...dca185`; base `0xbb6ad0...c9fa84`; base `0xbe0ec7...9762d7` | ⚠️ Unaudited |
| RangeOrderResolver | unknown | ethereum | 2 deployments: ethereum [`0x0b057c...1af51f`](./contracts/ethereum-1/0x0b057c237fdcc6f480ed0c7ed00866c7f41af51f/); polygon `0xffb6a1...dc0bcd` | ⚠️ Unaudited |
| Redistributor | operational_periphery | base | 3 deployments: base [`0x9e494d...c87329`](./contracts/base-8453/0x9e494d8b172531a2e2aba90d5b66addee3c87329/); base `0xd61368...9a9e80`; base `0xee5b3c...e55e15` | ⚠️ Unaudited |
| RenderController | governance | ethereum | [`0x1cc0ad...84149d`](./contracts/ethereum-1/0x1cc0adff599f244f036a5c2425f646aef884149d/) | ⚠️ Unaudited |
| ReserveMath | unknown | ethereum | [`0xcc5e67...4e057e`](./contracts/ethereum-1/0xcc5e67887272b039670c14b39c4959d8c74e057e/) | ⚠️ Unaudited |
| SovereignPoolFactory | registry | ethereum | 3 deployments: ethereum [`0x56f0e2...5c17b6`](./contracts/ethereum-1/0x56f0e2c503b32dafbf3bd6482e73c36e7e5c17b6/); ethereum `0xa68d6c...6f9617`; ethereum `0xf57b45...cdaf2f` | ⚠️ Unaudited |
| SugarHelper | periphery | base | 3 deployments: base [`0x6d2d73...32f8e1`](./contracts/base-8453/0x6d2d739bf37dfd93d804523c2dfa948eaf32f8e1/); base `0x93f3fd...49e0c4`; base `0xa555e5...7cb275` | ⚠️ Unaudited |
| Swapper | adapter | base | [`0x91616a...bcb916`](./contracts/base-8453/0x91616a7b9cf6d23f8c17845581051ebdc4bcb916/) | ⚠️ Unaudited |
| SwapRouter | adapter | base | 3 deployments: base [`0x698cb2...63a92f`](./contracts/base-8453/0x698cb2b6dd822994581fea6ea4fc755d1363a92f/); base `0xbe6d8f...6d18a5`; base `0xcbbb80...15ce0d` | ⚠️ Unaudited |
| TempProxyAdmin | governance | polygon | [`0x880d0a...b1c4e8`](./contracts/polygon-137/0x880d0a82dba76b4802f76a509d3aab1d22b1c4e8/) | ⚠️ Unaudited |
| TimelockController | governance | arbitrum | 4 deployments: ethereum `0x741d42...87e639`; ethereum `0xaf6f96...c40b7f`; ethereum `0xd3e822...23a60c`; arbitrum [`0x7285b2...6d27fd`](./contracts/arbitrum-42161/0x7285b2fe1248212a64afbb3b75c67988a76d27fd/) | ⚠️ Unaudited |
| UniswapV3StandardModulePrivate | unknown | ethereum | [`0x8c0283...ace35e`](./contracts/ethereum-1/0x8c02839babf7788d9d7043614b2f85cdd8ace35e/) | ⚠️ Unaudited |
| UniV4Oracle | operational_periphery | base | 19 deployments: ethereum `0x0432cd...66f4d8`; ethereum `0xe1ef0c...434f32`; base [`0x022a0c...62f556`](./contracts/base-8453/0x022a0c7dc85fc3ff81f9f8ef65ae2813a062f556/); base `0x122c7c...f25fa7`; base `0x2b1ff6...b9e3dd`; base `0x32c75a...02d4d5`; base `0x741d42...87e639`; base `0x7ca74d...70dd5e`; base `0x836553...d7091a`; base `0x8fdbe9...1f539d`; base `0xa2ecda...b99f26`; base `0xb789c1...409de0`; base `0xc13a67...25bb59`; base `0xdd8f35...1518e7`; base `0xe4db6e...d507f0`; base `0xf23d83...c4ee80`; arbitrum `0x0f62fc...657e09`; arbitrum `0x173229...c19ff9`; arbitrum `0x6fea64...600030` | ⚠️ Unaudited |
| UniV4StandardModulePrivate | unknown | ethereum | [`0x04ead2...b337dc`](./contracts/ethereum-1/0x04ead25447f9371c5c1e2c33645f32aafeb337dc/) | ⚠️ Unaudited |
| UniversalRouter | adapter | base | 3 deployments: base [`0x6cb442...00be3e`](./contracts/base-8453/0x6cb442acf35158d5eda88fe602221b67b400be3e/); base `0x72d22d...e454f6`; base `0xf07835...a4da2a` | ⚠️ Unaudited |
| ValantisModulePrivate | unknown | ethereum | [`0x7e2fc9...9e55bc`](./contracts/ethereum-1/0x7e2fc9b2d37ea3e771b6f2375915b87cca9e55bc/) | ⚠️ Unaudited |
| ValantisModulePublic | unknown | arbitrum | 4 deployments: ethereum `0x505f0c...0ad1e5`; ethereum `0x9ac124...6adde3`; ethereum `0xdef855...0252f1`; arbitrum [`0x010e08...c7dde9`](./contracts/arbitrum-42161/0x010e088ccde7b73ddcb12771b2100db5a2c7dde9/) | ⚠️ Unaudited |
| WithdrawHelper | operational_periphery | ethereum | [`0x3a2e9c...6f46d3`](./contracts/ethereum-1/0x3a2e9c26fbb53990bafaec0342e38bd2a06f46d3/) | ⚠️ Unaudited |
| WrappedFeed | unknown | ethereum | 3 deployments: ethereum [`0x304962...c588ab`](./contracts/ethereum-1/0x30496218ad394c677092dabf9ab1cf8406c588ab/); ethereum `0x8b4f2f...cf74c2`; ethereum `0x99997f...93d662` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (1)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| ArrakisV2Factory | registry | ethereum | 32 deployments: ethereum [`0x055b6d...273a88`](./contracts/ethereum-1/0x055b6d3919042be29c5f044a55529933e1273a88/); ethereum `0x0ffa13...2465e0`; ethereum `0x26673a...b3b775`; ethereum `0x453f7d...53857c`; ethereum `0xecb8ff...6c8288`; ethereum `0xf90aaf...be865d`; optimism [`0x055b6d...273a88`](./contracts/optimism-10/0x055b6d3919042be29c5f044a55529933e1273a88/); optimism `0x26673a...b3b775`; optimism `0x453f7d...53857c`; optimism `0xecb8ff...6c8288`; optimism `0xf90aaf...be865d`; polygon [`0x055b6d...273a88`](./contracts/polygon-137/0x055b6d3919042be29c5f044a55529933e1273a88/); polygon `0x0748dd...7ebb35`; polygon `0x234dc7...0e97da`; polygon `0x26673a...b3b775`; polygon `0x453f7d...53857c`; polygon `0x4b4b51...9b7af1`; polygon `0x68f51d...a4c58b`; polygon `0x8b4f2f...cf74c2`; polygon `0x8d1c48...c513f1`; polygon `0x99997f...93d662`; polygon `0xb9e521...ce8aaf`; polygon `0xecb8ff...6c8288`; polygon `0xf6b2a7...c83dd7`; polygon `0xf90aaf...be865d`; arbitrum [`0x055b6d...273a88`](./contracts/arbitrum-42161/0x055b6d3919042be29c5f044a55529933e1273a88/); arbitrum `0x26673a...b3b775`; arbitrum `0x312c5b...5106a9`; arbitrum `0x453f7d...53857c`; arbitrum `0xecb8ff...6c8288`; arbitrum `0xf54882...4e1151`; arbitrum `0xf90aaf...be865d` | ✅ Audited (bytecode match) |

### ⚠️ Verified by Bytecode + Unaudited (1)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| UpgradeableBeacon | registry | bsc | 57 deployments: ethereum `0x022a0c...62f556`; ethereum `0x143687...627255`; ethereum `0x4cc1bb...5b9468`; ethereum `0x98e373...687bc5`; ethereum `0xdf4975...4b6a38`; ethereum `0xe42a4b...909b72`; ethereum `0xe973cf...b0351b`; ethereum `0xff0474...f47bd9`; optimism `0x413fc8...ed01ab`; optimism `0x79fc92...c52168`; optimism `0xf6b2a7...c83dd7`; bsc [`0x00057d...cf6c04`](./contracts/bsc-56/0x00057dbd24e1264e9bf2d63dbe428234ebcf6c04/); bsc `0x205e64...796199`; bsc `0x6028dc...7090c7`; bsc `0x68c0d8...20f07a`; bsc `0x6aba59...8501b7`; bsc `0x741d42...87e639`; bsc `0x902912...8d2c75`; bsc `0xb4da34...05bb5f`; bsc `0xb6f7f6...4fb3ca`; bsc `0xc0b7fa...b987f0`; bsc `0xc16489...a740cc`; bsc `0xcc8989...6006e3`; bsc `0xe137ae...68ce58`; bsc `0xef770d...c2037f`; unichain `0x4b6fee...6e6f73`; unichain `0xc16489...a740cc`; unichain `0xcc8989...6006e3`; polygon `0xd4ae05...a8f3eb`; polygon `0xfb4e25...97f408`; base `0x06419f...66f7e2`; base `0x1d0c44...5c6916`; base `0x243727...fa6f9b`; base `0x3025b4...2c3abb`; base `0x568336...25ac6f`; base `0x618e7d...e59778`; base `0x6b81f1...78df08`; base `0x82c0a1...75067f`; base `0x8b5c39...1cb82f`; base `0x97d42d...f6e5fb`; base `0x998a52...6a0a55`; base `0xa8c0b4...45342f`; base `0xcc8989...6006e3`; base `0xd7b402...d6b283`; base `0xdf4975...4b6a38`; base `0xe2641d...733bb2`; plasma `0x9a4935...293345`; arbitrum `0x1ec500...bd7327`; arbitrum `0x28a9a4...3cf6cb`; arbitrum `0x52637f...e4ca9e`; arbitrum `0x6028dc...7090c7`; arbitrum `0x64865e...1479ac`; arbitrum `0x75dd57...8534e6`; arbitrum `0x9fe203...78ab6f`; arbitrum `0xe1a764...3deef4`; arbitrum `0xe25f76...17e885`; arbitrum `0xf8bf2c...b22a7e` | ⚠️ Unaudited (bytecode match) |

### ❓ Unverified (21)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| UnnamedContract | unknown | ethereum | `0x14e6d6...94e4bd` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x15ef18...acb4e9` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x4d6827...5d54a7` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x72155b...36a6f7` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x7d4a02...688107` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x800c00...6740a2` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x8b24d4...bbb0f1` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0xce3be9...4a7296` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0xe9c810...979f83` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x538a3f...2607f5` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x920308...6ed6bd` | ❓ Unverified |
| UnnamedContract | unknown | base | `0xa76e09...090b24` | ❓ Unverified |
| UnnamedContract | unknown | base | `0xb2c653...317005` | ❓ Unverified |
| UnnamedContract | unknown | base | `0xd262af...f00392` | ❓ Unverified |
| UnnamedContract | unknown | base | `0xd5ed46...c3f8b2` | ❓ Unverified |
| UnnamedContract | unknown | base | `0xe09669...ecb24c` | ❓ Unverified |
| UnnamedContract | unknown | plasma | `0x9b9563...621e8e` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x154878...04ec38` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xda4d62...261459` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xde6b49...66766c` | ❓ Unverified |
| UnnamedContract | unknown | ink | `0xcc8989...6006e3` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [Arrakis_Audit_Report_Sherlock.pdf (also discovered via alternate URL)](https://github.com/ArrakisFinance/v2-core/blob/main/audit/Arrakis_Audit_Report_Sherlock.pdf) | Sherlock | Contest | 2023-08 | stale | Direct | contract_name | 61 | high |
| [Arrakis_v2_Core_Report_Audit_Report_by_WatchPug.pdf](https://github.com/ArrakisFinance/v2-core/blob/main/audit/Arrakis_v2_Core_Report_Audit_Report_by_WatchPug.pdf) | WatchPug | Audit | 2023-01 | stale | Direct | contract_name | 79 | high |
| [arrakis-v2-core-and-palm-statemind-audit.pdf](https://github.com/ArrakisFinance/v2-core/blob/main/audit/arrakis-v2-core-and-palm-statemind-audit.pdf) | unknown | Audit | 2022-11 | stale | Direct | contract_name | 195 | high |
| [arrakis-v2-core-update-statemind-audit.pdf](https://github.com/ArrakisFinance/v2-core/blob/main/audit/arrakis-v2-core-update-statemind-audit.pdf) | unknown | Audit | 2023-08 | stale | Direct | contract_name | 103 | high |
| [Arrakis_Finance_Audit_Report_by_WatchPug.pdf](https://github.com/ArrakisFinance/vault-v1-core/blob/main/audit/Arrakis_Finance_Audit_Report_by_WatchPug.pdf) | WatchPug | Audit | 2022-03 | stale | Direct | n/a | 0 | n/a |
| [REP-Gelato-UNI-2021-07-22.pdf](https://github.com/ArrakisFinance/vault-v1-core/blob/main/audit/REP-Gelato-UNI-2021-07-22.pdf) | unknown | Audit | 2021-07 | stale | Direct | contract_name | 77 | high |
| [WatchPug Audit Report for Gelato G-UNI.pdf](https://github.com/ArrakisFinance/vault-v1-core/blob/main/audit/WatchPug%20Audit%20Report%20for%20Gelato%20G-UNI.pdf) | WatchPug | Audit | 2021-07 | stale | Direct | contract_name | 14 | high |
| [Arrakis_v2_PALM_Audit_Report_by_WatchPug.pdf](https://github.com/ArrakisFinance/v2-palm/blob/main/audit/Arrakis_v2_PALM_Audit_Report_by_WatchPug.pdf) | WatchPug | Audit | 2023-01 | stale | Direct | contract_name | 62 | high |
| [arrakis-v2-core-and-palm-statemind-audit-rev2.pdf](https://github.com/ArrakisFinance/v2-palm/blob/main/audit/arrakis-v2-core-and-palm-statemind-audit-rev2.pdf) | unknown | Audit | 2022-11 | stale | Direct | contract_name | 195 | high |
| [Arrakis_Audit_Report.pdf](https://github.com/ArrakisFinance/v2-manager-templates/blob/main/audit/Arrakis_Audit_Report.pdf) | unknown | Audit | 2023-08 | stale | Direct | contract_name | 61 | high |
| [Arrakis_V2_Periphery_Audit_Statemind.pdf](https://github.com/ArrakisFinance/v2-periphery/blob/main/audit/Arrakis_V2_Periphery_Audit_Statemind.pdf) | unknown | Audit | 2023-08 | stale | Direct | contract_name | 40 | high |
| [Chainsecurity Audit Report December 21.pdf](https://github.com/ArrakisFinance/staking-contracts/blob/main/audits/Chainsecurity%20Audit%20Report%20December%2021.pdf) | yAudit | Audit | 2022-01 | stale | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | [`0xf79087...a6ad83`](./contracts/ethereum-1/0xf790870ccf6ae66ddc69f68e6d05d446f1a6ad83/) | ArrakisMetaVaultPublic | core_logic | $0.68 | Verified native implementation with $0.68 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x0e4afb...7d417e`](./contracts/base-8453/0x0e4afbdab305206465ee48f7766da185157d417e/) | AerodromeStandardModulePrivate | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x06baae...7434ee`](./contracts/base-8453/0x06baae482698c8995f7b59f51e3ba021bf7434ee/) | AerodromeStandardModulePrivateFees | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x2482db...3cc924`](./contracts/ethereum-1/0x2482dbd16061b0cd4f44e807d44b32534b3cc924/) | ArrakisMetaVaultFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x72aa2c...a66041`](./contracts/ethereum-1/0x72aa2c8e6b14f30131081401fa999fc964a66041/) | ArrakisPublicVaultRouter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x67e4ed...507d2d`](./contracts/ethereum-1/0x67e4ede946b3d76c4c505566eb821a1470507d2d/) | AssetListingGUni | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x342576...38a617`](./contracts/base-8453/0x342576bb62afe26c547bfcbd9e94e76d1538a617/) | CLFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x88e336...a0471f`](./contracts/base-8453/0x88e336956de7b74627fdfd548656b55501a0471f/) | CLPool | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x0a46cc...7d59e5`](./contracts/bsc-56/0x0a46ccb50859bf6b7477d52db8b21fdc187d59e5/) | CLQuoter | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0xdce48a...00819f`](./contracts/arbitrum-42161/0xdce48a729f379ed69f7399cdce8d53f9d500819f/) | CreationCodePrivateVault | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x60d5d3...c24f71`](./contracts/arbitrum-42161/0x60d5d34fdc5c0348e68689e21f9303798ac24f71/) | CreationCodePublicVault | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x2dd416...1ca9d1`](./contracts/base-8453/0x2dd4162d4685657c06cd8f027cca3208311ca9d1/) | CustomSwapFeeModule | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x0ad083...38ee68`](./contracts/base-8453/0x0ad08370c76ff426f534bb2affd9b5555338ee68/) | CustomUnstakedFeeModule | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x87d8f9...38e8cb`](./contracts/base-8453/0x87d8f999bba9343e8099552426775b51c338e8cb/) | DynamicSwapFeeModule | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x13fcef...f54662`](./contracts/ethereum-1/0x13fcef4b532ff776d9f80d1fc2673b41cef54662/) | Guardian | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0719b2...90cc96`](./contracts/ethereum-1/0x0719b21ffc5d7fb46b9f74301149ed035790cc96/) | GUniOracle | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x031765...db214a`](./contracts/ethereum-1/0x0317650af6f184344d7368ac8bb0beba5edb214a/) | GUniResolver02 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x326999...62132a`](./contracts/ethereum-1/0x3269994964dfe4aa5f8dd0c99ed40e881562132a/) | HOT | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x01e595...e104cc`](./contracts/arbitrum-42161/0x01e595a0c23432340013d4c7dd4507cbd8e104cc/) | HOTExecutor | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1cf456...6f4406`](./contracts/ethereum-1/0x1cf45654e28e8012cbc6c1a0e1011efaab6f4406/) | HOTOracleWrapper | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x6aba59...8501b7`](./contracts/base-8453/0x6aba59e0dc9ad51645b23cc1013fc03a908501b7/) | MigrationHelper | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0xe292ef...97ebd4`](./contracts/polygon-137/0xe292ef6332474f6568b7a8e9b6ece8576e97ebd4/) | MockWMATIC | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0xc0b7fa...b987f0`](./contracts/arbitrum-42161/0xc0b7fac163566a768b4f30d06fd4b08bb6b987f0/) | ModulePrivateRegistry | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x21e7bd...2b70b3`](./contracts/arbitrum-42161/0x21e7bde4245679016d567d6cd301c3d6dd2b70b3/) | ModulePublicRegistry | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x0681d1...4ec818`](./contracts/base-8453/0x0681d141da398e567a677f0eaf13c8815c4ec818/) | NFTDescriptor | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x212665...f4dc52`](./contracts/base-8453/0x212665aaea8da0a3b71a47a53b3100ef4cf4dc52/) | NFTSVG | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x01b0ca...d53c55`](./contracts/base-8453/0x01b0cacb9a8004e08d075c919b5df3b59fd53c55/) | NonfungibleTokenPositionDescriptor | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0x187dbd...0dede5`](./contracts/optimism-10/0x187dbd46e895dc06dda1840eda6d9b01990dede5/) | PALMfeeCollector | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x49083c...3d4b11`](./contracts/ethereum-1/0x49083cb8204c5bf830c75fd65d8eb3be1c3d4b11/) | PancakeSwapV3StandardModulePrivate | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x586eb5...9d8a4a`](./contracts/bsc-56/0x586eb5528e518a7eeb571f1d2149360c249d8a4a/) | PancakeSwapV4Oracle | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x3da003...c53c39`](./contracts/bsc-56/0x3da00380b4d56101685d058785fde25fe9c53c39/) | PancakeSwapV4StandardModulePrivate | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x04ef5d...5f4efb`](./contracts/bsc-56/0x04ef5da5f7837bd9b6480b3c5d3c56dc135f4efb/) | PancakeV4Oracle | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x700a1c...aac03a`](./contracts/ethereum-1/0x700a1cda1495c1b34c4962e9742a8a8832aac03a/) | Pauser | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0xf4e067...9e3340`](./contracts/arbitrum-42161/0xf4e0671a76b1715744a259a0fa0c561eb89e3340/) | PriceFeedAverage | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x44a801...56b762`](./contracts/ethereum-1/0x44a801e7e2e073bd8bce4bccf653239fa156b762/) | PrivateVaultNFT | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x29939b...c4a603`](./contracts/ethereum-1/0x29939b3b2ad83882174a50dfd80a3b6329c4a603/) | ProtocolFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0b057c...1af51f`](./contracts/ethereum-1/0x0b057c237fdcc6f480ed0c7ed00866c7f41af51f/) | RangeOrderResolver | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x9e494d...c87329`](./contracts/base-8453/0x9e494d8b172531a2e2aba90d5b66addee3c87329/) | Redistributor | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1cc0ad...84149d`](./contracts/ethereum-1/0x1cc0adff599f244f036a5c2425f646aef884149d/) | RenderController | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xcc5e67...4e057e`](./contracts/ethereum-1/0xcc5e67887272b039670c14b39c4959d8c74e057e/) | ReserveMath | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x6d2d73...32f8e1`](./contracts/base-8453/0x6d2d739bf37dfd93d804523c2dfa948eaf32f8e1/) | SugarHelper | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x91616a...bcb916`](./contracts/base-8453/0x91616a7b9cf6d23f8c17845581051ebdc4bcb916/) | Swapper | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x022a0c...62f556`](./contracts/base-8453/0x022a0c7dc85fc3ff81f9f8ef65ae2813a062f556/) | UniV4Oracle | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x04ead2...b337dc`](./contracts/ethereum-1/0x04ead25447f9371c5c1e2c33645f32aafeb337dc/) | UniV4StandardModulePrivate | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x3a2e9c...6f46d3`](./contracts/ethereum-1/0x3a2e9c26fbb53990bafaec0342e38bd2a06f46d3/) | WithdrawHelper | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x304962...c588ab`](./contracts/ethereum-1/0x30496218ad394c677092dabf9ab1cf8406c588ab/) | WrappedFeed | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 68 |
| upstream | 17 |
| standard_library | 10 |
| needs_review | 29 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 2
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=10
- Match method counts: extraction_exact=948

Zero-match audit list:

- [5492] Arrakis_Finance_Audit_Report_by_WatchPug.pdf
- [5500] Chainsecurity Audit Report December 21.pdf

Fork inheritance lineage and inherited audits are included when available.
