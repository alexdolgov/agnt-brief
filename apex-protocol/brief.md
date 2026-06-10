# Agentic Audit Brief: ApeX Protocol

## Project Overview

- Project: ApeX Protocol (`apex-protocol`)
- Website: [https://omni.apex.exchange/referral?referralCode=T0S8V482](https://omni.apex.exchange/referral?referralCode=T0S8V482)
- Lifecycle: active (Tier 0, 63.4% below peak)
- Generated: 2026-06-10T20:38:55.288Z
- Pipeline run: v2-pipeline-2026-06-10-b79301-df6b
- Chains: arbitrum, avalanche, base, ethereum, mantle, optimism, polygon
- Contract surface: 206 unique implementations (763 raw deployments)
- DeFi Llama TVL: $36,243,675.00
- On-chain TVL (included contracts): $436,409.36
- TVL by chain: Ethereum $436,401.85 | Polygon $5.75 | Arbitrum $1.76

## Project Description

ApeX Protocol is a decentralized derivatives trading platform offering perpetual contracts. Its product family includes ApeX Pro, a StarkWare-based order book exchange, and ApeX Omni, which is associated with ZkLink-based cross-chain trading/liquidity infrastructure. Any shared gateway or bridge infrastructure between ApeX Pro and ApeX Omni should be treated as unverified unless supported by explicit project documentation or contract linkage.

### Architecture

ApeX Pro and Apex Omni share infrastructure through cross-chain bridges and gateways, with Apex Omni's ZkLink contracts relying on L1/L2 gateways also used by ApeX Pro's StarkWare components. Both families utilize common proxy patterns and deployer clusters, indicating a unified development framework.

## Audit Coverage Summary

- Verified implementations audited: 0/88 (0.0%)
- Verified + Unaudited implementations: 87
- Verified by bytecode match: 1
- Unverified implementations: 118
- Unique implementations: 206
- Raw deployments: 763
- Audits discovered: 1
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): $436,409.36
- Latest audit: 2022-01 (stale)
- Staleness: 0 fresh, 0 aging, 1 stale, 0 unknown
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (87)

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| ZkLinkToken | token | ethereum | [`0xfc385a...0fcede`](./contracts/ethereum-1/0xfc385a1df85660a7e041423db512f779070fcede/) | ⚠️ Unaudited |
| MultiSigPoolV5 | core_logic | arbitrum | 7 deployments: ethereum `0x7856b3...f7d74e`; ethereum `0x968665...726150`; polygon `0xddfd32...f0355f`; arbitrum [`0x0206d2...034a37`](./contracts/arbitrum-42161/0x0206d250f233c124c2dd5fa7d275c560cb034a37/); arbitrum `0x51190a...3be209`; arbitrum `0x604f87...cdf5fa`; arbitrum `0x9cd469...1a1a1a` | ⚠️ Unaudited |
| MultiSigPool | core_logic | polygon | 14 deployments: ethereum `0x166118...bb4bd4`; ethereum `0x2fd7d4...eb0a22`; ethereum `0x379c15...6046b8`; ethereum `0x3a4d74...988c50`; ethereum `0x7b5580...053f6a`; ethereum `0x83be1a...e5b22f`; ethereum `0xe29304...ba4497`; ethereum `0xe95b3d...91e9de`; ethereum `0xefbfe6...01db52`; polygon [`0x104347...d44aa7`](./contracts/polygon-137/0x10434755cfdcd34539db91c81ab0e07f96d44aa7/); polygon `0x2fd7d4...eb0a22`; polygon `0x7b5580...053f6a`; polygon `0xe29304...ba4497`; arbitrum `0x7b5580...053f6a` | ⚠️ Unaudited |
| AllVerifiers | periphery | ethereum | 3 deployments: ethereum [`0x533a7f...161dce`](./contracts/ethereum-1/0x533a7f4be5453513049eb94a2b115f2cce161dce/); ethereum `0x540ad8...5854a8`; ethereum `0x5a50e2...d17d8e` | ⚠️ Unaudited |
| ApeXPool3 | core_logic | mantle | 2 deployments: ethereum `0xaf7d1a...8b907b`; mantle [`0x661ea2...cfedbb`](./contracts/mantle-5000/0x661ea23a54dcb7dcbb533be0f50dc6ea2ecfedbb/) | ⚠️ Unaudited |
| Arbitrator | unknown | ethereum | 8 deployments: ethereum [`0x1ee09a...4c6002`](./contracts/ethereum-1/0x1ee09a2caa0813a5183f90f5a6d0e4871f4c6002/); ethereum `0x683669...2216f5`; ethereum `0x7a0bb4...761e34`; ethereum `0xaedfed...bf0809`; ethereum `0xb3ee39...4b529a`; ethereum `0xc7b2a2...e90a57`; ethereum `0xd2b679...0fc675`; ethereum `0xef7007...e80cc7` | ⚠️ Unaudited |
| ArbitrumL1Gateway | unknown | ethereum | 3 deployments: ethereum [`0x273d59...7583c0`](./contracts/ethereum-1/0x273d59aed2d793167c162e64b9162154b07583c0/); ethereum `0xa00509...36fb60`; ethereum `0xf69302...292875` | ⚠️ Unaudited |
| ArbitrumL2Gateway | unknown | arbitrum | 3 deployments: arbitrum [`0x413552...374b1d`](./contracts/arbitrum-42161/0x413552461b0b2c13f117d885b52aaa2f23374b1d/); arbitrum `0x7bd79d...18483a`; arbitrum `0xa194fb...dd3a2e` | ⚠️ Unaudited |
| BatchWithdraw | operational_periphery | ethereum | [`0x613d08...7a8964`](./contracts/ethereum-1/0x613d088f2e5a2ed91635016483dafa3cd47a8964/) | ⚠️ Unaudited |
| BlockPrice | operational_periphery | ethereum | [`0x596e3f...363410`](./contracts/ethereum-1/0x596e3f6241cf1435f91363cb023def2329363410/) | ⚠️ Unaudited |
| BrokerAccepter | unknown | ethereum | [`0xe473ce...7264dd`](./contracts/ethereum-1/0xe473ce141b1416fe526eb63cf7433b7b8d7264dd/) | ⚠️ Unaudited |
| CairoBootloaderProgram | adapter | ethereum | 8 deployments: ethereum [`0x192292...8a8636`](./contracts/ethereum-1/0x192292817680196a0215a50b07d1c5e7ab8a8636/); ethereum `0x24105e...a24a47`; ethereum `0x476839...a1c773`; ethereum `0x58600a...6cc515`; ethereum `0x5d07af...6a9ddf`; ethereum `0xb4c61d...a26a40`; ethereum `0xdf0b63...d1d917`; ethereum `0xfa93ca...3b4a20` | ⚠️ Unaudited |
| CallProxy | unknown | ethereum | 4 deployments: ethereum [`0x3597c5...2f9feb`](./contracts/ethereum-1/0x3597c5cbcbcb30079a0bd2a68cde5f98272f9feb/); ethereum `0x93379c...e6e7ff`; ethereum `0xb8fde0...253142`; ethereum `0xcae5c1...4e4306` | ⚠️ Unaudited |
| ChangeVerifiersExternalInitializer | periphery | ethereum | [`0x09e429...4d5627`](./contracts/ethereum-1/0x09e429b3a3281e689d5468be2dbca3905b4d5627/) | ⚠️ Unaudited |
| Committee | unknown | ethereum | 2 deployments: ethereum [`0x23cab3...9494e4`](./contracts/ethereum-1/0x23cab3cf1aa7b929df5e9f3712aca3a6fb9494e4/); ethereum `0x724908...0cf800` | ⚠️ Unaudited |
| CpuConstraintPoly | unknown | ethereum | 47 deployments: ethereum [`0x04be0e...efa8eb`](./contracts/ethereum-1/0x04be0e2d5eccc744be21bfb28d91d4a3cbefa8eb/); ethereum `0x05c985...798035`; ethereum `0x0c099c...9bb434`; ethereum `0x17de59...566090`; ethereum `0x1bde14...7d4420`; ethereum `0x1f038c...6de676`; ethereum `0x217c1d...124089`; ethereum `0x218ec2...21ffe1`; ethereum `0x297951...d9c962`; ethereum `0x2c9726...ab01a1`; ethereum `0x307982...3eecea`; ethereum `0x32ddfd...353ffb`; ethereum `0x351666...9563f1`; ethereum `0x3e727f...b16eba`; ethereum `0x450909...1811c9`; ethereum `0x4cf5c1...1d2950`; ethereum `0x4fefa7...33abe5`; ethereum `0x547eec...ce0717`; ethereum `0x55653a...8c509c`; ethereum `0x68e598...c4a092`; ethereum `0x691ca5...34e55e`; ethereum `0x6bdac5...05f1da`; ethereum `0x6f67a8...779d9e`; ethereum `0x70fbec...817ee5`; ethereum `0x76815d...71c7dc`; ethereum `0x86abf7...8cda46`; ethereum `0x89b7a7...3edf20`; ethereum `0x943248...1378eb`; ethereum `0x9a62fa...2d31a9`; ethereum `0x9ddb8a...10ae6f`; ethereum `0xa9bac6...dc2dae`; ethereum `0xb195c6...d36b67`; ethereum `0xb62dc4...2fb15a`; ethereum `0xbe8bd7...2bc447`; ethereum `0xc39380...287f7b`; ethereum `0xc716c4...39dbd8`; ethereum `0xcd96f4...17cf02`; ethereum `0xcf8278...5235a1`; ethereum `0xd0aade...0d7418`; ethereum `0xd48801...afc064`; ethereum `0xd8c397...658aad`; ethereum `0xd8e473...cc81e5`; ethereum `0xdd4cbe...5b5253`; ethereum `0xe1a0b8...a8f79d`; ethereum `0xe4937a...a9b103`; ethereum `0xe5313f...920cac`; ethereum `0xf9b6a4...fb7ed8` | ⚠️ Unaudited |
| CpuFrilessVerifier | periphery | ethereum | 47 deployments: ethereum [`0x015381...442cd6`](./contracts/ethereum-1/0x015381651f240ed6c44122dcba6cf807c9442cd6/); ethereum `0x032f73...3ec1d5`; ethereum `0x03fa91...f912e8`; ethereum `0x094bd6...6e0ae3`; ethereum `0x0cd0cd...ca5cdc`; ethereum `0x18d3f4...65138e`; ethereum `0x205e0d...7bb5d7`; ethereum `0x217750...acc214`; ethereum `0x243682...e25791`; ethereum `0x2867a4...109b6b`; ethereum `0x28e3ad...2be32a`; ethereum `0x30f3ab...70419b`; ethereum `0x3ba1b0...85e562`; ethereum `0x3c5d87...65afa2`; ethereum `0x3d5752...166c8e`; ethereum `0x42af94...cb7771`; ethereum `0x4a7e4f...2031a4`; ethereum `0x4e59fc...86c20f`; ethereum `0x5f1aba...4cd65d`; ethereum `0x6097fc...6cc460`; ethereum `0x61bf6c...d398d1`; ethereum `0x630a97...caf239`; ethereum `0x66f234...21a970`; ethereum `0x6a6779...803f11`; ethereum `0x715740...53a26d`; ethereum `0x78af2b...78c590`; ethereum `0x7c8643...961cd3`; ethereum `0x7e7a7b...84bf29`; ethereum `0x805594...e3d22b`; ethereum `0x8488e8...cbe57b`; ethereum `0x8e2009...1ef188`; ethereum `0x8fe004...7ce85f`; ethereum `0x9e614a...f2bd21`; ethereum `0xaa2c9c...ef11b9`; ethereum `0xaaae0e...179f8a`; ethereum `0xab8c1a...c31934`; ethereum `0xbb06a8...a78c0d`; ethereum `0xbe0f8f...8caef3`; ethereum `0xbf8d12...7d26cc`; ethereum `0xc879af...7f31e3`; ethereum `0xd0fc19...9d88b4`; ethereum `0xd2fb1b...67f56b`; ethereum `0xe15515...1303ff`; ethereum `0xe5efcd...97b549`; ethereum `0xe9664d...8d0e24`; ethereum `0xec7195...48098d`; ethereum `0xffc797...476b44` | ⚠️ Unaudited |
| CpuOods | unknown | ethereum | 47 deployments: ethereum [`0x0acc32...9ec5cb`](./contracts/ethereum-1/0x0acc3292202b05175f86c7bf4bd6011eb79ec5cb/); ethereum `0x1fb8ea...5d281c`; ethereum `0x3405f6...af3280`; ethereum `0x35e9f6...83e7cb`; ethereum `0x367b33...7dfbb6`; ethereum `0x39621b...8e3d6b`; ethereum `0x43a1c0...d0b9e0`; ethereum `0x473e7b...10f367`; ethereum `0x4742f8...3621c9`; ethereum `0x4a3635...e48c17`; ethereum `0x4bf82e...bd2ff7`; ethereum `0x4d654c...3b2ffb`; ethereum `0x4d776c...32006a`; ethereum `0x52314e...d6aa4a`; ethereum `0x57a4b2...ff620a`; ethereum `0x6454b5...fd4a6e`; ethereum `0x682932...44e090`; ethereum `0x697ce8...d14a0a`; ethereum `0x704dff...53607f`; ethereum `0x73bab6...ac9d90`; ethereum `0x7902d5...e5fe9a`; ethereum `0x7ca020...af135e`; ethereum `0x7f1b43...a5f823`; ethereum `0x8518f4...5b17fe`; ethereum `0x88ba01...f715c1`; ethereum `0x89cadc...2eac4d`; ethereum `0x8f3af1...dc4775`; ethereum `0x97d4df...221449`; ethereum `0x99480b...dc3595`; ethereum `0xa40115...7bb766`; ethereum `0xa4d0bb...e15dd4`; ethereum `0xa9db7b...080f23`; ethereum `0xac6250...fe3ac0`; ethereum `0xae325c...ac2707`; ethereum `0xb2e7bc...3ca19f`; ethereum `0xb64093...5cd4dc`; ethereum `0xc47097...347288`; ethereum `0xc9e067...5ceed3`; ethereum `0xcc80e9...4bf2a4`; ethereum `0xd566ae...1d162f`; ethereum `0xd5700c...8d2a40`; ethereum `0xd67c67...014faa`; ethereum `0xdc2c54...aeae84`; ethereum `0xe709eb...7e7b6f`; ethereum `0xe72ebf...235af7`; ethereum `0xed2199...32ee8e`; ethereum `0xf9ee3f...e639b1` | ⚠️ Unaudited |
| DelayedExecutor | unknown | ethereum | [`0xff50d1...c2cc70`](./contracts/ethereum-1/0xff50d164e42da7bb558c1e88afe0bd66e8c2cc70/) | ⚠️ Unaudited |
| EcdsaPointsXColumn | unknown | ethereum | 6 deployments: ethereum [`0x01228f...283bf1`](./contracts/ethereum-1/0x01228f83c6664a14fc3bb4ea28b7d1a2fc283bf1/); ethereum `0x4c0de5...70fb1f`; ethereum `0x593a71...b329b1`; ethereum `0x87945d...eeca21`; ethereum `0xa3da16...74b9ce`; ethereum `0xcb799c...a0286b` | ⚠️ Unaudited |
| EcdsaPointsYColumn | unknown | ethereum | 6 deployments: ethereum [`0x498b55...5fe9f3`](./contracts/ethereum-1/0x498b5546f1ee017227eb1db438d25ad1205fe9f3/); ethereum `0x9e4fdd...37ecc1`; ethereum `0xc354c1...098333`; ethereum `0xca59f6...3abf29`; ethereum `0xcaea50...62c771`; ethereum `0xe3929e...46b716` | ⚠️ Unaudited |
| EmptyVerifier | periphery | arbitrum | 19 deployments: ethereum `0x7f9de3...8a4c0d`; ethereum `0xbc28d1...94c4bd`; ethereum `0xd6c54b...829a08`; ethereum `0xe38f8b...686dba`; mantle `0x527f61...53dd5d`; mantle `0xd8428a...f1bce7`; base `0x4c5629...27c563`; base `0x624658...c283ab`; base `0x87743f...9a43fb`; base `0xb6b969...c3d78b`; base `0xbb205c...275adc`; base `0xef7007...e80cc7`; base `0xf63e81...e0c3ea`; base `0xfa7fb7...21a89c`; arbitrum [`0x273d59...7583c0`](./contracts/arbitrum-42161/0x273d59aed2d793167c162e64b9162154b07583c0/); arbitrum `0x3fc412...0f92ec`; arbitrum `0xa84860...256cd6`; arbitrum `0xe54cac...34324f`; arbitrum `0xf9c947...8eee64` | ⚠️ Unaudited |
| ERC1967Proxy | proxy | ethereum | [`0xd9108f...a69cec`](./contracts/ethereum-1/0xd9108f49e56ee3b0765c8a52c1c9b35abba69cec/) | ⚠️ Unaudited |
| EthereumGateway | unknown | ethereum | 4 deployments: ethereum [`0x240cfb...d3051b`](./contracts/ethereum-1/0x240cfbdb89ebc09b678b24ba5d640a27b7d3051b/); ethereum `0x65c7b3...7ef332`; ethereum `0x83bc73...c0055c`; ethereum `0x87743f...9a43fb` | ⚠️ Unaudited |
| FastSettlementMiddleware | unknown | ethereum | 2 deployments: ethereum [`0x16397b...a8dd1c`](./contracts/ethereum-1/0x16397b59fa555cd75861127523918a185da8dd1c/); ethereum `0x3e9856...0c2fa1` | ⚠️ Unaudited |
| FastSettlementNetwork | unknown | ethereum | 2 deployments: ethereum [`0x213f44...44d00f`](./contracts/ethereum-1/0x213f448e7a1c8daede41cf94883cc6149244d00f/); ethereum `0x42b43b...569e42` | ⚠️ Unaudited |
| FastSettlementOperator | unknown | ethereum | 2 deployments: ethereum [`0xe5da2b...591d78`](./contracts/ethereum-1/0xe5da2bc7658ca9d160d0352e5cb2df1339591d78/); ethereum `0xf28aca...156288` | ⚠️ Unaudited |
| FinalizableCommittee | unknown | ethereum | 7 deployments: ethereum [`0x2deea2...387150`](./contracts/ethereum-1/0x2deea207069fc760703a4abc233b503585387150/); ethereum `0x3cc6b6...362dbb`; ethereum `0x4b2bf1...8b6669`; ethereum `0x4cae5f...86740e`; ethereum `0x4e0e46...7de611`; ethereum `0x8b3a66...7ca818`; ethereum `0xbe360d...67594f` | ⚠️ Unaudited |
| FinalizableGpsFactAdapter | adapter | ethereum | 7 deployments: ethereum [`0x16b484...14c4c2`](./contracts/ethereum-1/0x16b484ca53424f1e09fa124687fc63e4cc14c4c2/); ethereum `0x40e1e5...098b22`; ethereum `0x44dfd4...d6ffd9`; ethereum `0x690697...a24989`; ethereum `0x86b939...c7bb56`; ethereum `0xe741e2...7fb953`; ethereum `0xf23754...46053c` | ⚠️ Unaudited |
| ForcedActions | unknown | ethereum | 2 deployments: ethereum [`0x613ee5...48f376`](./contracts/ethereum-1/0x613ee54c54d5548627064b4d648942bf3648f376/); ethereum `0x9f862b...ae2bde` | ⚠️ Unaudited |
| FriStatementContract | unknown | ethereum | 5 deployments: ethereum [`0x30efaa...93d400`](./contracts/ethereum-1/0x30efaaa99f8efe310d9fdc83072e2a04c093d400/); ethereum `0x3e6118...7dd2dd`; ethereum `0x98871e...19f0cf`; ethereum `0xcdf95e...0a8806`; ethereum `0xdef8a3...df44fb` | ⚠️ Unaudited |
| Governance | unknown | ethereum | [`0xeb35e7...576790`](./contracts/ethereum-1/0xeb35e7424a0a506d914f49039b5ec9969a576790/) | ⚠️ Unaudited |
| GpsFactRegistryAdapter | adapter | ethereum | 4 deployments: ethereum [`0x6a8376...c5581a`](./contracts/ethereum-1/0x6a8376aea89d8255e2ad8b0f00362672bcc5581a/); ethereum `0xacf6a4...e93f94`; ethereum `0xbcc174...7cedb1`; ethereum `0xe8a480...32f414` | ⚠️ Unaudited |
| GpsStatementVerifier | periphery | ethereum | 10 deployments: ethereum [`0x13e120...b0d934`](./contracts/ethereum-1/0x13e120f6c8e747983f7aaf0f7731796bfcb0d934/); ethereum `0x4124e1...b09346`; ethereum `0x5c1ce4...e3a9fe`; ethereum `0x6cb3ee...361bf6`; ethereum `0x7da122...2e3ff7`; ethereum `0x9069a5...e369ff`; ethereum `0x9fb7f4...751942`; ethereum `0xac09e9...8e1408`; ethereum `0xd51a3d...4dd8df`; ethereum `0xfe5e5b...2b0066` | ⚠️ Unaudited |
| L1ERC20Bridge | operational_periphery | arbitrum | 11 deployments: ethereum `0x3203e8...307352`; ethereum `0xad16ed...44b6b6`; ethereum `0xc271a8...669d2e`; mantle `0x62351b...a5f2b2`; mantle `0x7769c1...3ea458`; base `0x413552...374b1d`; base `0x80d12a...1674d5`; base `0xa89aa7...9ce715`; arbitrum [`0x1202e0...685ffb`](./contracts/arbitrum-42161/0x1202e0557a23531d09015c802e993d6423685ffb/); arbitrum `0x5f58bc...fef28c`; arbitrum `0xfb0ad0...8f5585` | ⚠️ Unaudited |
| LineaL1Gateway | unknown | ethereum | 17 deployments: ethereum [`0x0594d9...4b13b9`](./contracts/ethereum-1/0x0594d9fa7de1bea967bf45a625c5f52bb94b13b9/); ethereum `0x119b94...4fd1a2`; ethereum `0x238715...e7053c`; ethereum `0x3c3f4b...9aa98e`; ethereum `0x504bea...64585e`; ethereum `0x5b884c...63f190`; ethereum `0x67ebb0...accb3e`; ethereum `0x803460...f2809b`; ethereum `0x80d12a...1674d5`; ethereum `0x9e761d...d2c7a1`; ethereum `0xac3941...64657b`; ethereum `0xad5d72...25b51c`; ethereum `0xd2ed3f...c18c29`; ethereum `0xdae123...f88c91`; ethereum `0xe469c1...6d344f`; ethereum `0xf2801f...6e35c9`; ethereum `0xfe3e63...96709f` | ⚠️ Unaudited |
| LockedTokenCommon | token | ethereum | 3 deployments: ethereum [`0x373eb6...0868e6`](./contracts/ethereum-1/0x373eb6a735cc9bc12baa88a9b438759e750868e6/); ethereum `0x70755a...62cb8a`; ethereum `0xbe194e...cfbab3` | ⚠️ Unaudited |
| LockedTokenGrant | token | ethereum | [`0x0746e3...8fafee`](./contracts/ethereum-1/0x0746e3c84bdfe4bc2504b4c84f93f5baa38fafee/) | ⚠️ Unaudited |
| MantleL2Gateway | unknown | mantle | [`0xe946ab...ea39d0`](./contracts/mantle-5000/0xe946abb40928326ce5bff303e7b8f0f253ea39d0/) | ⚠️ Unaudited |
| MemoryPageBatcher | periphery | ethereum | [`0xa0f50d...30eab3`](./contracts/ethereum-1/0xa0f50deff3aba037dd182eb594bdb637a130eab3/) | ⚠️ Unaudited |
| MemoryPageFactRegistry | registry | ethereum | 5 deployments: ethereum [`0x28a074...74be52`](./contracts/ethereum-1/0x28a074b965f506a8adf6e28c9b29a5e0de74be52/); ethereum `0x408645...0770fa`; ethereum `0x43f421...9c86e2`; ethereum `0xe583bc...2ec460`; ethereum `0xfd1456...7fd1b4` | ⚠️ Unaudited |
| MerkleStatementContract | operational_periphery | ethereum | 5 deployments: ethereum [`0x097c4f...90700e`](./contracts/ethereum-1/0x097c4ff19cc326d0430151bdc3fd597e8290700e/); ethereum `0x228a27...8d9ce2`; ethereum `0x32a91f...58fdad`; ethereum `0x5899ef...f65fa4`; ethereum `0x634dcf...45804c` | ⚠️ Unaudited |
| MintManager | governance | ethereum | [`0xa4d28d...ed7f20`](./contracts/ethereum-1/0xa4d28d9fff539d6e1972ce3cf9c4577856ed7f20/) | ⚠️ Unaudited |
| OnchainVaults | core_logic | ethereum | [`0xfcee62...7d99d5`](./contracts/ethereum-1/0xfcee62af74a63906c8adb9b3364ca290d47d99d5/) | ⚠️ Unaudited |
| OptimismL1Gateway | unknown | ethereum | 15 deployments: ethereum [`0x01334d...37fd80`](./contracts/ethereum-1/0x01334df58fee28db184ae9d11467f38f7437fd80/); ethereum `0x0c25f3...dad518`; ethereum `0x161f4b...0477f0`; ethereum `0x1dff9a...cf4c9e`; ethereum `0x2e8ad1...f4a190`; ethereum `0x41faf4...bb1158`; ethereum `0x4eea93...1d2b7e`; ethereum `0x649dfa...7cd82d`; ethereum `0x668e8f...af3026`; ethereum `0x6d6ce5...927962`; ethereum `0xa86ef3...ce9637`; ethereum `0xc284c3...c338e4`; ethereum `0xde1ce7...3be269`; ethereum `0xe98edd...dc2951`; ethereum `0xfc5c2b...5f2b7d` | ⚠️ Unaudited |
| OptimismL2Gateway | unknown | base | 3 deployments: base [`0x1054ff...c69011`](./contracts/base-8453/0x1054ff8b3b7b9f68d2e55c4a42e8952332c69011/); base `0x12abac...5a5cb4`; base `0x7f0013...36e356` | ⚠️ Unaudited |
| OrderRegistry | registry | ethereum | [`0x5ec343...3a4bb6`](./contracts/ethereum-1/0x5ec34376205e99f5314cd71436afda100f3a4bb6/) | ⚠️ Unaudited |
| PedersenHashPointsXColumn | unknown | ethereum | 6 deployments: ethereum [`0x047dd4...7e86d1`](./contracts/ethereum-1/0x047dd4275bbdc1ee6b8bf026239e203c617e86d1/); ethereum `0x3d571a...9682bb`; ethereum `0x41c432...da3989`; ethereum `0xa62f35...1f0f86`; ethereum `0xc4f213...d18940`; ethereum `0xdc596b...1d9e70` | ⚠️ Unaudited |
| PedersenHashPointsYColumn | unknown | ethereum | 6 deployments: ethereum [`0x1a6f3b...5899ed`](./contracts/ethereum-1/0x1a6f3bd4e4b80f85a0b1974b73d981f3295899ed/); ethereum `0x519da5...096002`; ethereum `0x7f81ad...d899e1`; ethereum `0xa55c0f...f4b6c2`; ethereum `0xa87710...21f37f`; ethereum `0xfd12a1...bbe7fd` | ⚠️ Unaudited |
| PerpetualEscapeVerifier | periphery | ethereum | [`0xaadfdb...37f7bd`](./contracts/ethereum-1/0xaadfdb9cac145c65f2284fbe24600d07fb37f7bd/) | ⚠️ Unaudited |
| PerpetualForcedActions | unknown | ethereum | 4 deployments: ethereum [`0x229bbd...a4fe21`](./contracts/ethereum-1/0x229bbdf97ebc4993efe1433c0ae4a0be79a4fe21/); ethereum `0x31e2d9...423f64`; ethereum `0x34e7cf...b55035`; ethereum `0xf1f087...e203ca` | ⚠️ Unaudited |
| PerpetualState | token | ethereum | 4 deployments: ethereum [`0x45de24...ba0175`](./contracts/ethereum-1/0x45de249eea8f9cdb70943b17ccedeb42f5ba0175/); ethereum `0x5bfbe8...bb93da`; ethereum `0xbdc6c9...2b3c41`; ethereum `0xdd5f42...48a859` | ⚠️ Unaudited |
| PerpetualTokensAndRamping | token | ethereum | 4 deployments: ethereum [`0x1bc9c6...8b9310`](./contracts/ethereum-1/0x1bc9c618b7fa6b5efaad31dc801eb55c608b9310/); ethereum `0x3f3a13...0f2809`; ethereum `0x564ea7...5ad058`; ethereum `0x8f62a4...6ff8da` | ⚠️ Unaudited |
| PoolRebalanceHelper | core_logic | ethereum | 2 deployments: ethereum [`0x1ab4da...825647`](./contracts/ethereum-1/0x1ab4da4c2d64eb04f02ca7160a7e038bc9825647/); ethereum `0xba629e...e75bef` | ⚠️ Unaudited |
| PoseidonPoseidonFullRoundKey0Column | unknown | ethereum | 8 deployments: ethereum [`0x21578b...31ea8f`](./contracts/ethereum-1/0x21578b24f86adf6f59c406f641f693745c31ea8f/); ethereum `0x37070f...db1abe`; ethereum `0x8004e8...3e16a6`; ethereum `0xc9a02d...44a540`; ethereum `0xdf1075...bab090`; ethereum `0xe7b835...573293`; ethereum `0xe8b13f...d75859`; ethereum `0xedffea...dbc573` | ⚠️ Unaudited |
| PoseidonPoseidonFullRoundKey1Column | unknown | ethereum | 8 deployments: ethereum [`0x1e8e41...3d5a94`](./contracts/ethereum-1/0x1e8e41141347e01f33d84718b7f4cefb433d5a94/); ethereum `0x9d820b...cf95fc`; ethereum `0xb4711a...28e267`; ethereum `0xc2969a...01ac5f`; ethereum `0xd7a713...6d1ee6`; ethereum `0xe58327...1f810d`; ethereum `0xe5ac93...f68fd0`; ethereum `0xf0b58e...9e05fc` | ⚠️ Unaudited |
| PoseidonPoseidonFullRoundKey2Column | unknown | ethereum | 8 deployments: ethereum [`0x2b1590...c46045`](./contracts/ethereum-1/0x2b159027d7f0e23d5c15b0517e33dda838c46045/); ethereum `0x4576ba...50ba0b`; ethereum `0x487175...d5d2c8`; ethereum `0x4fb05b...a1f835`; ethereum `0x655a91...ac09c1`; ethereum `0x698339...dc7755`; ethereum `0xb5a575...55660d`; ethereum `0xde8d55...6d41fd` | ⚠️ Unaudited |
| PoseidonPoseidonPartialRoundKey0Column | unknown | ethereum | 8 deployments: ethereum [`0x1db84e...01e975`](./contracts/ethereum-1/0x1db84e79e8daec762d6adaa5bf358a4ba001e975/); ethereum `0x5318ed...83953e`; ethereum `0x53dac4...a14451`; ethereum `0x75d887...bbca0a`; ethereum `0x812c2a...b449cd`; ethereum `0xb45b87...5ea7a0`; ethereum `0xbaec49...d717ef`; ethereum `0xbbacbd...351575` | ⚠️ Unaudited |
| PoseidonPoseidonPartialRoundKey1Column | unknown | ethereum | 8 deployments: ethereum [`0x032e5c...b43046`](./contracts/ethereum-1/0x032e5cdb729ce94638aca9e82a22688109b43046/); ethereum `0x09807c...c6b191`; ethereum `0x14106a...7ce0c2`; ethereum `0x20f109...ec868e`; ethereum `0x4d0e80...d874b8`; ethereum `0x62960c...2eda12`; ethereum `0xc1cd71...433ccc`; ethereum `0xecc282...790e20` | ⚠️ Unaudited |
| Proxy | proxy | base | 27 deployments: ethereum `0x0ff801...c3ce9d`; ethereum `0x381b76...0770c9`; ethereum `0x5fa444...8ab5b4`; ethereum `0x935bf7...fe8a89`; ethereum `0xb9c81a...487a0d`; ethereum `0xcd7a4f...4948bd`; ethereum `0xef0e19...543529`; mantle `0x0c0f72...4190b0`; mantle `0x437a10...2bbcac`; mantle `0xc6d124...918184`; base [`0x09cb6c...ee1c72`](./contracts/base-8453/0x09cb6c5a235939258e3f6ae2989cf6f26eee1c72/); base `0x161f4b...0477f0`; base `0x683669...2216f5`; base `0x7769c1...3ea458`; base `0x83bc73...c0055c`; base `0xa84860...256cd6`; base `0xaa46d9...81865a`; base `0xe4589e...a1be0d`; arbitrum `0x0c0404...f1e821`; arbitrum `0x2b73ab...e33fe6`; arbitrum `0x43bcb7...b7a7a6`; arbitrum `0x46c8d0...a3fa1b`; arbitrum `0x69bdfb...00688c`; arbitrum `0x95fb80...e85f3c`; arbitrum `0x996bae...6ea506`; arbitrum `0xe469c1...6d344f`; arbitrum `0xed5d1e...082ac3` | ⚠️ Unaudited |
| ProxyUtils | unknown | ethereum | [`0x46fa00...5d7167`](./contracts/ethereum-1/0x46fa005e07e51732778a3745145b0d29ad5d7167/) | ⚠️ Unaudited |
| ProxyV5 | unknown | ethereum | 7 deployments: ethereum [`0x038968...b0ae78`](./contracts/ethereum-1/0x03896849091ad2905eb46971117fd89beab0ae78/); ethereum `0x3641bf...c16b10`; ethereum `0x3cde3e...0519a8`; ethereum `0x5e2cf7...df67a9`; ethereum `0x75c881...493f7d`; ethereum `0xa3f44b...2c929e`; ethereum `0xd20f04...bcdff4` | ⚠️ Unaudited |
| RolesExternalInitializer | unknown | ethereum | [`0x7eb822...1becce`](./contracts/ethereum-1/0x7eb8220714e9f08073177dcb3a4a57d2f91becce/) | ⚠️ Unaudited |
| ScrollL1Gateway | unknown | ethereum | [`0x986c90...388e92`](./contracts/ethereum-1/0x986c905087a663db3c81ad319b94c1e9dd388e92/) | ⚠️ Unaudited |
| StarkExchange | unknown | ethereum | 7 deployments: ethereum [`0x29db02...8a1191`](./contracts/ethereum-1/0x29db022dbc824b78a0da699a77e3d177f08a1191/); ethereum `0x7a7f9c...987f9d`; ethereum `0xa64c6c...e68479`; ethereum `0xaab13f...ae1f16`; ethereum `0xb62bcd...f1945c`; ethereum `0xc3b2ec...00ddc0`; ethereum `0xdf2f24...b0f583` | ⚠️ Unaudited |
| StarkExState | unknown | ethereum | 2 deployments: ethereum [`0x28f234...42e91f`](./contracts/ethereum-1/0x28f2349b28c1bc30a2ab52fc1e04027f7d42e91f/); ethereum `0x67e198...1e1f1d` | ⚠️ Unaudited |
| StarkgateManager | governance | ethereum | 6 deployments: ethereum [`0x0a9558...4d9359`](./contracts/ethereum-1/0x0a9558ce70daa574c715616d68978808504d9359/); ethereum `0x0c5ae9...7d5b60`; ethereum `0x3a546c...cb31cf`; ethereum `0x64608b...7bbb33`; ethereum `0x953bd8...896e67`; ethereum `0xd39be4...5fcb01` | ⚠️ Unaudited |
| StarkgateRegistry | registry | ethereum | 7 deployments: ethereum [`0x1268cc...c96812`](./contracts/ethereum-1/0x1268cc171c54f2000402dff20e93e60df4c96812/); ethereum `0x39c3b4...4c8cec`; ethereum `0x564be3...04b5c8`; ethereum `0x642f04...b07dd7`; ethereum `0x7a5256...299e07`; ethereum `0x7baa11...0eda10`; ethereum `0xf710fd...699d40` | ⚠️ Unaudited |
| Starknet | unknown | ethereum | 8 deployments: ethereum [`0x16938e...4177e8`](./contracts/ethereum-1/0x16938e4b59297060484fa56a12594d8d6f4177e8/); ethereum `0x279301...b71e04`; ethereum `0x47103a...8eb5bc`; ethereum `0x6e0acf...464e24`; ethereum `0x739a65...1ffe42`; ethereum `0x9961d3...0f172a`; ethereum `0xa964d6...f5ed08`; ethereum `0xf338ca...c23640` | ⚠️ Unaudited |
| StarknetERC20Bridge | operational_periphery | ethereum | 8 deployments: ethereum [`0x179fa5...3656a0`](./contracts/ethereum-1/0x179fa59e4d19ac7c7b4e3daa0cd6557a553656a0/); ethereum `0x6ad74d...1fdc85`; ethereum `0x6fa346...f15feb`; ethereum `0x7f2a18...777a71`; ethereum `0x825960...ea8d6c`; ethereum `0xcf5853...a876c2`; ethereum `0xf0b3ee...7225fb`; ethereum `0xf3f62f...7e3df5` | ⚠️ Unaudited |
| StarknetEthBridge | operational_periphery | ethereum | 4 deployments: ethereum [`0x455603...603581`](./contracts/ethereum-1/0x455603ad9ae671f6c1f0f746f24d7904ca603581/); ethereum `0x6efca9...1ff51e`; ethereum `0x95ff25...c7fd95`; ethereum `0xd94f29...23a0e2` | ⚠️ Unaudited |
| StarknetTokenBridge | operational_periphery | ethereum | 22 deployments: ethereum [`0x00b046...dd082b`](./contracts/ethereum-1/0x00b0466f8dc04b0782dbf1a1dfdce333f0dd082b/); ethereum `0x1febb8...1633bb`; ethereum `0x205fef...4762b7`; ethereum `0x2111a4...9866b9`; ethereum `0x264c70...4df778`; ethereum `0x30a155...dbf483`; ethereum `0x3236da...a50124`; ethereum `0x4ea91e...5744d5`; ethereum `0x52c65b...c9b9d7`; ethereum `0x594cca...135d7a`; ethereum `0x5cd684...42379c`; ethereum `0x6095f6...67175a`; ethereum `0x6f3229...9eefd5`; ethereum `0x70a368...59a356`; ethereum `0x9aaa37...96860e`; ethereum `0x9bb621...5af2ed`; ethereum `0x9fada9...b7ea7e`; ethereum `0xa86b9b...32ab10`; ethereum `0xe0d1fa...ba3f18`; ethereum `0xea90d8...6f244e`; ethereum `0xf39d31...563aff`; ethereum `0xf5b6ee...3f69eb` | ⚠️ Unaudited |
| StarkPerpetual | unknown | ethereum | 9 deployments: ethereum [`0x1ce5d7...353c65`](./contracts/ethereum-1/0x1ce5d7f52a8abd23551e91248151ca5a13353c65/); ethereum `0x316761...03eae4`; ethereum `0x32771a...5311fc`; ethereum `0x67bc24...dec5f0`; ethereum `0x8c43c9...abd35d`; ethereum `0xa1d544...52dcbb`; ethereum `0xc4a7c5...34fc74`; ethereum `0xdd8133...528396`; ethereum `0xe53a6e...482e6b` | ⚠️ Unaudited |
| SyncL2TxHashRelayer | unknown | ethereum | [`0x0fdc28...dea2c6`](./contracts/ethereum-1/0x0fdc28e64772a70109d10fd068f859cfa7dea2c6/) | ⚠️ Unaudited |
| TestToken | token | ethereum | [`0xcf0ecb...468746`](./contracts/ethereum-1/0xcf0ecbe2174ef46af58906afb217af0767468746/) | ⚠️ Unaudited |
| TokensAndRamping | token | ethereum | 2 deployments: ethereum [`0x5524cb...cb6298`](./contracts/ethereum-1/0x5524cb52490e01cba4eb64f230cc661780cb6298/); ethereum `0x8b736b...7df087` | ⚠️ Unaudited |
| TransientProxy | unknown | ethereum | 14 deployments: ethereum [`0x03bd59...eb4409`](./contracts/ethereum-1/0x03bd5915b56015773210ab8c8c101849daeb4409/); ethereum `0x108717...c36e02`; ethereum `0x300d75...adc795`; ethereum `0x526ed6...8299d9`; ethereum `0x6a984f...107487`; ethereum `0x995f6c...e4094e`; ethereum `0xaa3f7a...750fae`; ethereum `0xcb5e55...76e8b8`; ethereum `0xce4857...e76dac`; ethereum `0xdb0221...3d6bc2`; ethereum `0xe303a0...717a18`; ethereum `0xe916b5...f48dd0`; ethereum `0xf80fb8...eac9cc`; ethereum `0xff6206...4f9449` | ⚠️ Unaudited |
| UpdatePerpetualConfigExternalInitializer | governance | ethereum | [`0x39bff2...408b8e`](./contracts/ethereum-1/0x39bff2c9f7e377d8466d3180be7dd0ae7d408b8e/) | ⚠️ Unaudited |
| UpgradeGatekeeper | operational_periphery | mantle | 10 deployments: ethereum `0x457ce8...ba47b4`; ethereum `0xfbd686...072753`; mantle [`0x2b9ba2...744059`](./contracts/mantle-5000/0x2b9ba259f24965a81fa0c4e477e3791673744059/); base `0x53d9d2...c6db6a`; base `0x649dfa...7cd82d`; base `0x72343e...f2fcad`; arbitrum `0x2e8ad1...f4a190`; arbitrum `0x89f273...24f0cc`; arbitrum `0xd6bbb0...a2e86c`; arbitrum `0xf9f8a1...341a70` | ⚠️ Unaudited |
| V3toV45ChangesExternalInitializer | unknown | ethereum | 2 deployments: ethereum [`0x175359...f92ed8`](./contracts/ethereum-1/0x1753593fb64c7338e945e3dac16df92ab1f92ed8/); ethereum `0xd88100...cf5910` | ⚠️ Unaudited |
| Verifier | periphery | arbitrum | 7 deployments: ethereum `0x437a10...2bbcac`; ethereum `0x5715de...b8ce05`; base `0x5715de...b8ce05`; arbitrum [`0x235118...b6b68f`](./contracts/arbitrum-42161/0x235118afb54b6d6c7b48f1b5434c25cd6eb6b68f/); arbitrum `0x5715de...b8ce05`; arbitrum `0x6d6ce5...927962`; arbitrum `0x6e21b3...69274a` | ⚠️ Unaudited |
| WithBatcher | periphery | ethereum | [`0xf17a2f...926268`](./contracts/ethereum-1/0xf17a2fa46f86b6dfc41cbbbd1a51379d98926268/) | ⚠️ Unaudited |
| ZKLCRelease | unknown | ethereum | 2 deployments: ethereum [`0x120d79...444038`](./contracts/ethereum-1/0x120d79adea9693786be90d5ffe8af32269444038/); ethereum `0xe4dcf1...b6f58e` | ⚠️ Unaudited |
| ZkLink | unknown | arbitrum | 33 deployments: ethereum `0x35d173...2c7b82`; ethereum `0x5fd9f7...e015cf`; ethereum `0xa21e13...96f4ba`; ethereum `0xa84860...256cd6`; ethereum `0xa89aa7...9ce715`; ethereum `0xa9b4ab...3bee3c`; ethereum `0xcc8256...c1f5dd`; ethereum `0xdd5097...7a3545`; ethereum `0xeac8e6...177ab7`; ethereum `0xfb0ad0...8f5585`; mantle `0x067c71...ea47ca`; mantle `0x0c0404...f1e821`; mantle `0x3c7c0e...db976c`; mantle `0xa84860...256cd6`; mantle `0xd784d7...455657`; base `0x08ca91...85e388`; base `0x314bf0...51de47`; base `0x55fa52...52235e`; base `0x664e1c...a83e10`; base `0xd5941f...d35bd2`; base `0xd923b6...f5ff66`; base `0xe473ce...7264dd`; base `0xee7981...fd59d7`; arbitrum [`0x04c6a5...325d1e`](./contracts/arbitrum-42161/0x04c6a52f3bf9f73618cd70f234adb95a73325d1e/); arbitrum `0x238715...e7053c`; arbitrum `0x316984...c8466a`; arbitrum `0x31f0c8...7f3611`; arbitrum `0x50efc7...726211`; arbitrum `0x55fa52...52235e`; arbitrum `0x79926e...410db0`; arbitrum `0xaa46d9...81865a`; arbitrum `0xe2cd60...19a305`; arbitrum `0xff73a1...d5420a` | ⚠️ Unaudited |
| ZKLinkAcross | unknown | base | [`0x7ae056...a74040`](./contracts/base-8453/0x7ae0563553008a45d91555f66b2ab34800a74040/) | ⚠️ Unaudited |
| ZkLinkPeriphery | periphery | ethereum | 23 deployments: ethereum [`0x070fc0...67284f`](./contracts/ethereum-1/0x070fc04f6ce2cd1ffbc2ae1d6a381e46f467284f/); ethereum `0x446fca...3c8007`; ethereum `0x4ac2cc...bee425`; ethereum `0x5bc75b...a73e61`; ethereum `0x5f58bc...fef28c`; ethereum `0xa107b6...a689d7`; ethereum `0xd784d7...455657`; mantle `0xf04af2...9c84f2`; base `0x21fe89...86c3b8`; base `0x31f0c8...7f3611`; base `0x502c84...34af12`; base `0x703651...2a62a2`; base `0xd784d7...455657`; arbitrum `0x09cb6c...ee1c72`; arbitrum `0x0ed6e9...63b3e5`; arbitrum `0x1ba934...1b4172`; arbitrum `0x30b2c7...e81ad9`; arbitrum `0x3203e8...307352`; arbitrum `0x4563c3...cfc027`; arbitrum `0x803460...f2809b`; arbitrum `0x928732...88bc8d`; arbitrum `0xd784d7...455657`; arbitrum `0xe89635...99cc13` | ⚠️ Unaudited |
| ZkSyncL1Gateway | unknown | ethereum | 18 deployments: ethereum [`0x0163a4...d88a72`](./contracts/ethereum-1/0x0163a4ce18a566730c390b0e0fb5c78bcdd88a72/); ethereum `0x04bf7c...14d716`; ethereum `0x087fc8...b7d1e9`; ethereum `0x263e21...8af25f`; ethereum `0x30b2c7...e81ad9`; ethereum `0x413552...374b1d`; ethereum `0x4516a3...b17f2a`; ethereum `0x59ad35...3e4a22`; ethereum `0x6d2f5f...7541fb`; ethereum `0x6e21b3...69274a`; ethereum `0x76fa44...b77ae6`; ethereum `0x8915b1...3b497e`; ethereum `0x975a87...6ef628`; ethereum `0x98ceda...00673b`; ethereum `0x9de74e...1de1dc`; ethereum `0xb98ffd...30c9cc`; ethereum `0xecd189...c942ab`; ethereum `0xff2568...27d79e` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (1)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| MultiCall | periphery | ethereum | 8 deployments: ethereum [`0x0c0404...f1e821`](./contracts/ethereum-1/0x0c04046546c46652969aa9eb4bfb758cfdf1e821/); ethereum `0x0dad20...90bac2`; ethereum `0x4be8a6...f75200`; mantle `0x0d53ce...731470`; base `0x85079c...8b1f4e`; base `0x98ceda...00673b`; arbitrum `0x7769c1...3ea458`; arbitrum `0xa00509...36fb60` | ⚠️ Unaudited (bytecode match) |

### ❓ Unverified (118)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| UnnamedContract | unknown | ethereum | `0x052c81...7b50c1` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x0880a6...841610` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x0bf8e8...f83f1b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x0d1d56...8e2767` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x0da684...359ff5` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x0f21d9...5eaf44` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x139abb...5c22e1` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x18bf13...d075d7` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x1f302d...b4120f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x259211...afc9df` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x27a883...114d0f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x2b7a09...bc05d1` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x35cbaf...5bf253` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x3782f9...25c7e8` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x3e6baa...5640b2` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x3f5d59...c9970c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x3f7240...a394e2` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x3fa0a9...b61671` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x47767b...d783c8` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x55fa52...52235e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x57ed69...9f2ec5` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x5870f2...81e5fd` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x599f5d...dc22ee` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x59b1dd...ffafb1` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x59b288...543143` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x691b0d...832dcb` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x698192...928658` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x73ddae...be948d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x78396a...0a081d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x7ab577...20da10` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x7c56da...bc88b3` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x7d142e...f40654` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x7ee124...8d2f38` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x85906d...79c9d2` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x928899...afc1d8` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xb1958c...ed4d2c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xb8224c...9535a3` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xc78aac...674c28` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xc94567...4a9576` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xccfeb9...e0bb4f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xcdcdf6...80613d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xd3e418...909888` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xdeb49f...d7b8fe` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xe946ab...ea39d0` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xf52a28...e93a57` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xf88496...417c31` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xf8fe43...e843f5` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xfacc22...065b96` | ❓ Unverified |
| UnnamedContract | unknown | optimism | `0x104347...d44aa7` | ❓ Unverified |
| UnnamedContract | unknown | optimism | `0x1084de...7f160a` | ❓ Unverified |
| UnnamedContract | unknown | optimism | `0x166118...bb4bd4` | ❓ Unverified |
| UnnamedContract | unknown | optimism | `0x1a5331...e3e016` | ❓ Unverified |
| UnnamedContract | unknown | optimism | `0x3a4d74...988c50` | ❓ Unverified |
| UnnamedContract | unknown | optimism | `0x792bff...7899dc` | ❓ Unverified |
| UnnamedContract | unknown | optimism | `0x89cbcc...33cb6b` | ❓ Unverified |
| UnnamedContract | unknown | optimism | `0x8abc27...1da61c` | ❓ Unverified |
| UnnamedContract | unknown | optimism | `0xe29304...ba4497` | ❓ Unverified |
| UnnamedContract | unknown | optimism | `0xe95b3d...91e9de` | ❓ Unverified |
| UnnamedContract | unknown | mantle | `0x09cb6c...ee1c72` | ❓ Unverified |
| UnnamedContract | unknown | mantle | `0x104347...d44aa7` | ❓ Unverified |
| UnnamedContract | unknown | mantle | `0x2fd7d4...eb0a22` | ❓ Unverified |
| UnnamedContract | unknown | mantle | `0x3782f9...25c7e8` | ❓ Unverified |
| UnnamedContract | unknown | mantle | `0x3a4d74...988c50` | ❓ Unverified |
| UnnamedContract | unknown | mantle | `0x55fa52...52235e` | ❓ Unverified |
| UnnamedContract | unknown | mantle | `0x5715de...b8ce05` | ❓ Unverified |
| UnnamedContract | unknown | mantle | `0x5bc75b...a73e61` | ❓ Unverified |
| UnnamedContract | unknown | mantle | `0x7b5580...053f6a` | ❓ Unverified |
| UnnamedContract | unknown | mantle | `0x85079c...8b1f4e` | ❓ Unverified |
| UnnamedContract | unknown | mantle | `0x9f0828...bf8b07` | ❓ Unverified |
| UnnamedContract | unknown | mantle | `0xbfa352...63283f` | ❓ Unverified |
| UnnamedContract | unknown | mantle | `0xd5941f...d35bd2` | ❓ Unverified |
| UnnamedContract | unknown | mantle | `0xdc0771...d2208b` | ❓ Unverified |
| UnnamedContract | unknown | mantle | `0xe29304...ba4497` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x067c71...ea47ca` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x0c0404...f1e821` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x0c89bc...2907aa` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x46c8d0...a3fa1b` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x4ac2cc...bee425` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x50efc7...726211` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x5bd512...326eaa` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x67ebb0...accb3e` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x70df54...c2ed88` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x79926e...410db0` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x7c56da...bc88b3` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x803460...f2809b` | ❓ Unverified |
| UnnamedContract | unknown | base | `0xa9f1f8...680027` | ❓ Unverified |
| UnnamedContract | unknown | base | `0xad7e3e...878581` | ❓ Unverified |
| UnnamedContract | unknown | base | `0xdd5097...7a3545` | ❓ Unverified |
| UnnamedContract | unknown | base | `0xe89635...99cc13` | ❓ Unverified |
| UnnamedContract | unknown | base | `0xe946ab...ea39d0` | ❓ Unverified |
| UnnamedContract | unknown | base | `0xebda7f...068105` | ❓ Unverified |
| UnnamedContract | unknown | base | `0xfb0ad0...8f5585` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x028781...7fa131` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x08ca91...85e388` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x119b94...4fd1a2` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x161f4b...0477f0` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x192db9...c68165` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x367a1c...5263cf` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x3c3f4b...9aa98e` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x6c2256...c20bc7` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x72343e...f2fcad` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x7b71ff...c7a9bf` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x7f0013...36e356` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x81dee5...f81f8c` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xb8d9f0...a3a2d9` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xc8b602...3e427c` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xcdcdf6...80613d` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xd5941f...d35bd2` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xd7425f...843b26` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xd8428a...f1bce7` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xdc0771...d2208b` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xe2510e...25ddb4` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xe946ab...ea39d0` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xebda7f...068105` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xf4fe03...2dd32a` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x2fd7d4...eb0a22` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x7b5580...053f6a` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xe33bb8...32d5a1` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [audit_report.pdf](https://github.com/ApeX-Protocol/core/blob/master/docs/audit_report.pdf) | unknown | Audit | 2022-01 | stale | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| arbitrum | [`0x0206d2...034a37`](./contracts/arbitrum-42161/0x0206d250f233c124c2dd5fa7d275c560cb034a37/) | MultiSigPoolV5 | core_logic | $42.95 | Verified native implementation with $42.95 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x104347...d44aa7`](./contracts/polygon-137/0x10434755cfdcd34539db91c81ab0e07f96d44aa7/) | MultiSigPool | core_logic | $20.15 | Verified native implementation with $20.15 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x533a7f...161dce`](./contracts/ethereum-1/0x533a7f4be5453513049eb94a2b115f2cce161dce/) | AllVerifiers | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| mantle | [`0x661ea2...cfedbb`](./contracts/mantle-5000/0x661ea23a54dcb7dcbb533be0f50dc6ea2ecfedbb/) | ApeXPool3 | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x613d08...7a8964`](./contracts/ethereum-1/0x613d088f2e5a2ed91635016483dafa3cd47a8964/) | BatchWithdraw | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x596e3f...363410`](./contracts/ethereum-1/0x596e3f6241cf1435f91363cb023def2329363410/) | BlockPrice | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xe473ce...7264dd`](./contracts/ethereum-1/0xe473ce141b1416fe526eb63cf7433b7b8d7264dd/) | BrokerAccepter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x192292...8a8636`](./contracts/ethereum-1/0x192292817680196a0215a50b07d1c5e7ab8a8636/) | CairoBootloaderProgram | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x09e429...4d5627`](./contracts/ethereum-1/0x09e429b3a3281e689d5468be2dbca3905b4d5627/) | ChangeVerifiersExternalInitializer | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x23cab3...9494e4`](./contracts/ethereum-1/0x23cab3cf1aa7b929df5e9f3712aca3a6fb9494e4/) | Committee | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x04be0e...efa8eb`](./contracts/ethereum-1/0x04be0e2d5eccc744be21bfb28d91d4a3cbefa8eb/) | CpuConstraintPoly | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x015381...442cd6`](./contracts/ethereum-1/0x015381651f240ed6c44122dcba6cf807c9442cd6/) | CpuFrilessVerifier | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xff50d1...c2cc70`](./contracts/ethereum-1/0xff50d164e42da7bb558c1e88afe0bd66e8c2cc70/) | DelayedExecutor | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x01228f...283bf1`](./contracts/ethereum-1/0x01228f83c6664a14fc3bb4ea28b7d1a2fc283bf1/) | EcdsaPointsXColumn | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x498b55...5fe9f3`](./contracts/ethereum-1/0x498b5546f1ee017227eb1db438d25ad1205fe9f3/) | EcdsaPointsYColumn | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x273d59...7583c0`](./contracts/arbitrum-42161/0x273d59aed2d793167c162e64b9162154b07583c0/) | EmptyVerifier | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x16397b...a8dd1c`](./contracts/ethereum-1/0x16397b59fa555cd75861127523918a185da8dd1c/) | FastSettlementMiddleware | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xe5da2b...591d78`](./contracts/ethereum-1/0xe5da2bc7658ca9d160d0352e5cb2df1339591d78/) | FastSettlementOperator | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x2deea2...387150`](./contracts/ethereum-1/0x2deea207069fc760703a4abc233b503585387150/) | FinalizableCommittee | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x16b484...14c4c2`](./contracts/ethereum-1/0x16b484ca53424f1e09fa124687fc63e4cc14c4c2/) | FinalizableGpsFactAdapter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x613ee5...48f376`](./contracts/ethereum-1/0x613ee54c54d5548627064b4d648942bf3648f376/) | ForcedActions | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x30efaa...93d400`](./contracts/ethereum-1/0x30efaaa99f8efe310d9fdc83072e2a04c093d400/) | FriStatementContract | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xeb35e7...576790`](./contracts/ethereum-1/0xeb35e7424a0a506d914f49039b5ec9969a576790/) | Governance | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x6a8376...c5581a`](./contracts/ethereum-1/0x6a8376aea89d8255e2ad8b0f00362672bcc5581a/) | GpsFactRegistryAdapter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x13e120...b0d934`](./contracts/ethereum-1/0x13e120f6c8e747983f7aaf0f7731796bfcb0d934/) | GpsStatementVerifier | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x1202e0...685ffb`](./contracts/arbitrum-42161/0x1202e0557a23531d09015c802e993d6423685ffb/) | L1ERC20Bridge | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x373eb6...0868e6`](./contracts/ethereum-1/0x373eb6a735cc9bc12baa88a9b438759e750868e6/) | LockedTokenCommon | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0746e3...8fafee`](./contracts/ethereum-1/0x0746e3c84bdfe4bc2504b4c84f93f5baa38fafee/) | LockedTokenGrant | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x28a074...74be52`](./contracts/ethereum-1/0x28a074b965f506a8adf6e28c9b29a5e0de74be52/) | MemoryPageFactRegistry | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x097c4f...90700e`](./contracts/ethereum-1/0x097c4ff19cc326d0430151bdc3fd597e8290700e/) | MerkleStatementContract | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xa4d28d...ed7f20`](./contracts/ethereum-1/0xa4d28d9fff539d6e1972ce3cf9c4577856ed7f20/) | MintManager | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xfcee62...7d99d5`](./contracts/ethereum-1/0xfcee62af74a63906c8adb9b3364ca290d47d99d5/) | OnchainVaults | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x5ec343...3a4bb6`](./contracts/ethereum-1/0x5ec34376205e99f5314cd71436afda100f3a4bb6/) | OrderRegistry | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xaadfdb...37f7bd`](./contracts/ethereum-1/0xaadfdb9cac145c65f2284fbe24600d07fb37f7bd/) | PerpetualEscapeVerifier | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x229bbd...a4fe21`](./contracts/ethereum-1/0x229bbdf97ebc4993efe1433c0ae4a0be79a4fe21/) | PerpetualForcedActions | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x45de24...ba0175`](./contracts/ethereum-1/0x45de249eea8f9cdb70943b17ccedeb42f5ba0175/) | PerpetualState | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1bc9c6...8b9310`](./contracts/ethereum-1/0x1bc9c618b7fa6b5efaad31dc801eb55c608b9310/) | PerpetualTokensAndRamping | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1ab4da...825647`](./contracts/ethereum-1/0x1ab4da4c2d64eb04f02ca7160a7e038bc9825647/) | PoolRebalanceHelper | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x46fa00...5d7167`](./contracts/ethereum-1/0x46fa005e07e51732778a3745145b0d29ad5d7167/) | ProxyUtils | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x038968...b0ae78`](./contracts/ethereum-1/0x03896849091ad2905eb46971117fd89beab0ae78/) | ProxyV5 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x7eb822...1becce`](./contracts/ethereum-1/0x7eb8220714e9f08073177dcb3a4a57d2f91becce/) | RolesExternalInitializer | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x28f234...42e91f`](./contracts/ethereum-1/0x28f2349b28c1bc30a2ab52fc1e04027f7d42e91f/) | StarkExState | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0a9558...4d9359`](./contracts/ethereum-1/0x0a9558ce70daa574c715616d68978808504d9359/) | StarkgateManager | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x16938e...4177e8`](./contracts/ethereum-1/0x16938e4b59297060484fa56a12594d8d6f4177e8/) | Starknet | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x179fa5...3656a0`](./contracts/ethereum-1/0x179fa59e4d19ac7c7b4e3daa0cd6557a553656a0/) | StarknetERC20Bridge | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x455603...603581`](./contracts/ethereum-1/0x455603ad9ae671f6c1f0f746f24d7904ca603581/) | StarknetEthBridge | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0fdc28...dea2c6`](./contracts/ethereum-1/0x0fdc28e64772a70109d10fd068f859cfa7dea2c6/) | SyncL2TxHashRelayer | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xcf0ecb...468746`](./contracts/ethereum-1/0xcf0ecbe2174ef46af58906afb217af0767468746/) | TestToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x5524cb...cb6298`](./contracts/ethereum-1/0x5524cb52490e01cba4eb64f230cc661780cb6298/) | TokensAndRamping | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x03bd59...eb4409`](./contracts/ethereum-1/0x03bd5915b56015773210ab8c8c101849daeb4409/) | TransientProxy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x39bff2...408b8e`](./contracts/ethereum-1/0x39bff2c9f7e377d8466d3180be7dd0ae7d408b8e/) | UpdatePerpetualConfigExternalInitializer | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| mantle | [`0x2b9ba2...744059`](./contracts/mantle-5000/0x2b9ba259f24965a81fa0c4e477e3791673744059/) | UpgradeGatekeeper | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x175359...f92ed8`](./contracts/ethereum-1/0x1753593fb64c7338e945e3dac16df92ab1f92ed8/) | V3toV45ChangesExternalInitializer | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xf17a2f...926268`](./contracts/ethereum-1/0xf17a2fa46f86b6dfc41cbbbd1a51379d98926268/) | WithBatcher | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x120d79...444038`](./contracts/ethereum-1/0x120d79adea9693786be90d5ffe8af32269444038/) | ZKLCRelease | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x04c6a5...325d1e`](./contracts/arbitrum-42161/0x04c6a52f3bf9f73618cd70f234adb95a73325d1e/) | ZkLink | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x070fc0...67284f`](./contracts/ethereum-1/0x070fc04f6ce2cd1ffbc2ae1d6a381e46f467284f/) | ZkLinkPeriphery | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 133 |
| upstream | 8 |
| standard_library | 12 |
| needs_review | 53 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Zero-match audit list:

- [5909] audit_report.pdf

Fork inheritance lineage and inherited audits are included when available.
