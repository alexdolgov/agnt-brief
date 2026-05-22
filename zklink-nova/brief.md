# Agentic Audit Brief: zkLink Nova

⚠️ Lifecycle status: DECLINING - TVL dropped 4.7% over 90 days

## Project Overview

- Project: zkLink Nova (`zklink-nova`)
- Website: [https://zklink.io](https://zklink.io)
- Lifecycle: declining (Tier 1, declining)
- Generated: 2026-05-22T22:01:26.595Z
- Pipeline run: v2-pipeline-2026-05-22-eff36e-2ebb
- Chains: arbitrum, base, blast, ethereum, linea, manta, mantle, merlin, optimism, scroll, zksync-era
- Contract surface: 443 unique implementations (948 raw deployments)
- DeFi Llama TVL: $13,411,976.32
- On-chain TVL (included contracts): $33,892,444.44
- TVL by chain: Ethereum $33,887,953.11 | Mantle $4,491.32

## Project Description

zkLink Nova is a multi-chain Layer 2 network that aggregates liquidity and assets across Ethereum, its L2s, and other chains. It enables fast, low-cost cross-chain transfers and trading through a unified rollup architecture, using zero-knowledge proofs for security.

### Architecture

The ZKL token is used across the zkLink Nova ecosystem for fees and governance. The zkLink Nova family relies on gateway contracts and verifiers to enable cross-chain transfers, while the Contract Addresses family provides additional proxy and bridge instances that extend the protocol's multi-chain reach.

## Audit Coverage Summary

- Verified implementations audited: 17/141 (12.1%)
- Verified + Unaudited implementations: 120
- Verified by bytecode match: 5
- Unverified implementations: 302
- Unique implementations: 443
- Raw deployments: 948
- Audits discovered: 11
- Scoreable audits (matched contracts): 10
- ASD (verified + unaudited TVL): $33,892,444.44
- Latest audit: 2024-07 (aging)
- Staleness: 0 fresh, 2 aging, 9 stale, 0 unknown
- Tier 1 coverage: 2.8% (OpenZeppelin)
- Note: This protocol is classified as [declining]. ASD of $33,892,444.44 represents exposure in a protocol with declining activity.

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| ABDK | Tier 2 | 16 | 11.3% | 2024-07 |
| Secure3 | Tier 2 | 13 | 9.2% | 2024-04 |
| OpenZeppelin | Tier 1 | 4 | 2.8% | 2024-01 |

## Contract Surface

### ✅ Verified + Audited (16)

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| AdminFacet | unknown | linea | 2 deployments: linea [`0x5cb18b...c5df05`](./contracts/linea-59144/0x5cb18b6e4e6f3b46ce646b0f4704d53724c5df05/); linea `0xce8e69...f35503` | ✅ Audited |
| Arbitrator | unknown | ethereum | 8 deployments: ethereum [`0x1ee09a...4c6002`](./contracts/ethereum-1/0x1ee09a2caa0813a5183f90f5a6d0e4871f4c6002/); ethereum `0x683669...2216f5`; ethereum `0x7a0bb4...761e34`; ethereum `0xaedfed...bf0809`; ethereum `0xb3ee39...4b529a`; ethereum `0xc7b2a2...e90a57`; ethereum `0xd2b679...0fc675`; ethereum `0xef7007...e80cc7` | ✅ Audited |
| ArbitrumL1Gateway | unknown | ethereum | 3 deployments: ethereum [`0x273d59...7583c0`](./contracts/ethereum-1/0x273d59aed2d793167c162e64b9162154b07583c0/); ethereum `0xa00509...36fb60`; ethereum `0xf69302...292875` | ✅ Audited |
| ArbitrumL2Gateway | unknown | arbitrum | 3 deployments: arbitrum [`0x413552...374b1d`](./contracts/arbitrum-42161/0x413552461b0b2c13f117d885b52aaa2f23374b1d/); arbitrum `0x7bd79d...18483a`; arbitrum `0xa194fb...dd3a2e` | ✅ Audited |
| EthereumGateway | unknown | ethereum | 4 deployments: ethereum [`0x240cfb...d3051b`](./contracts/ethereum-1/0x240cfbdb89ebc09b678b24ba5d640a27b7d3051b/); ethereum `0x65c7b3...7ef332`; ethereum `0x83bc73...c0055c`; ethereum `0x87743f...9a43fb` | ✅ Audited |
| Governance | unknown | ethereum | 2 deployments: ethereum [`0xeb35e7...576790`](./contracts/ethereum-1/0xeb35e7424a0a506d914f49039b5ec9969a576790/); linea `0xef528a...7454ec` | ✅ Audited |
| L1ERC20Bridge | operational_periphery | manta | 20 deployments: ethereum `0x3203e8...307352`; ethereum `0xad16ed...44b6b6`; ethereum `0xc271a8...669d2e`; optimism `0x21fe89...86c3b8`; optimism `0x5bd512...326eaa`; optimism `0x683669...2216f5`; manta [`0x0d53ce...731470`](./contracts/manta-169/0x0d53ce63f3a72879d543ed6272a081308a731470/); manta `0x5f58bc...fef28c`; mantle `0x62351b...a5f2b2`; mantle `0x7769c1...3ea458`; base `0x413552...374b1d`; base `0x80d12a...1674d5`; base `0xa89aa7...9ce715`; arbitrum `0x1202e0...685ffb`; arbitrum `0x5f58bc...fef28c`; arbitrum `0xfb0ad0...8f5585`; linea `0x62ce24...e630f8`; blast `0x4d7012...fd3dec`; blast `0x8df0c2...9f500b`; blast `0xc24864...5503f5` | ✅ Audited |
| LineaL1Gateway | unknown | ethereum | 17 deployments: ethereum [`0x0594d9...4b13b9`](./contracts/ethereum-1/0x0594d9fa7de1bea967bf45a625c5f52bb94b13b9/); ethereum `0x119b94...4fd1a2`; ethereum `0x238715...e7053c`; ethereum `0x3c3f4b...9aa98e`; ethereum `0x504bea...64585e`; ethereum `0x5b884c...63f190`; ethereum `0x67ebb0...accb3e`; ethereum `0x803460...f2809b`; ethereum `0x80d12a...1674d5`; ethereum `0x9e761d...d2c7a1`; ethereum `0xac3941...64657b`; ethereum `0xad5d72...25b51c`; ethereum `0xd2ed3f...c18c29`; ethereum `0xdae123...f88c91`; ethereum `0xe469c1...6d344f`; ethereum `0xf2801f...6e35c9`; ethereum `0xfe3e63...96709f` | ✅ Audited |
| LineaL2Gateway | unknown | linea | 12 deployments: linea [`0x0c25f3...dad518`](./contracts/linea-59144/0x0c25f3accb17a9d60408d1c79bd7218073dad518/); linea `0x1ee09a...4c6002`; linea `0x216319...d70c8d`; linea `0x2e8ad1...f4a190`; linea `0x316984...c8466a`; linea `0x3c3f4b...9aa98e`; linea `0x7b5780...e937db`; linea `0x7f9de3...8a4c0d`; linea `0xa89aa7...9ce715`; linea `0xad5d72...25b51c`; linea `0xafc54e...89df0a`; linea `0xb6b969...c3d78b` | ✅ Audited |
| OptimismL1Gateway | unknown | ethereum | 15 deployments: ethereum [`0x01334d...37fd80`](./contracts/ethereum-1/0x01334df58fee28db184ae9d11467f38f7437fd80/); ethereum `0x0c25f3...dad518`; ethereum `0x161f4b...0477f0`; ethereum `0x1dff9a...cf4c9e`; ethereum `0x2e8ad1...f4a190`; ethereum `0x41faf4...bb1158`; ethereum `0x4eea93...1d2b7e`; ethereum `0x649dfa...7cd82d`; ethereum `0x668e8f...af3026`; ethereum `0x6d6ce5...927962`; ethereum `0xa86ef3...ce9637`; ethereum `0xc284c3...c338e4`; ethereum `0xde1ce7...3be269`; ethereum `0xe98edd...dc2951`; ethereum `0xfc5c2b...5f2b7d` | ✅ Audited |
| OptimismL2Gateway | unknown | base | 10 deployments: optimism `0x3c3f4b...9aa98e`; optimism `0xad5d72...25b51c`; manta `0x50efc7...726211`; manta `0x55fa52...52235e`; manta `0xbfa352...63283f`; base [`0x1054ff...c69011`](./contracts/base-8453/0x1054ff8b3b7b9f68d2e55c4a42e8952332c69011/); base `0x12abac...5a5cb4`; base `0x7f0013...36e356`; blast `0x3f64e2...e66af1`; blast `0xd1dcd0...4eccad` | ✅ Audited |
| ScrollL1Gateway | unknown | ethereum | [`0x986c90...388e92`](./contracts/ethereum-1/0x986c905087a663db3c81ad319b94c1e9dd388e92/) | ✅ Audited |
| ValidatorTimelock | governance | linea | [`0x509ff5...507e01`](./contracts/linea-59144/0x509ff56c152315edee91a2e0f059195519507e01/) | ✅ Audited |
| ZkLink | unknown | arbitrum | 56 deployments: ethereum `0x35d173...2c7b82`; ethereum `0x5fd9f7...e015cf`; ethereum `0xa21e13...96f4ba`; ethereum `0xa84860...256cd6`; ethereum `0xa89aa7...9ce715`; ethereum `0xa9b4ab...3bee3c`; ethereum `0xcc8256...c1f5dd`; ethereum `0xdd5097...7a3545`; ethereum `0xeac8e6...177ab7`; ethereum `0xfb0ad0...8f5585`; optimism `0x09cb6c...ee1c72`; optimism `0x46c8d0...a3fa1b`; optimism `0x55fa52...52235e`; optimism `0x85079c...8b1f4e`; optimism `0xe71a6c...e3b86e`; optimism `0xebda7f...068105`; manta `0x5715de...b8ce05`; manta `0x7c56da...bc88b3`; manta `0xe89635...99cc13`; manta `0xfb0ad0...8f5585`; mantle `0x067c71...ea47ca`; mantle `0x0c0404...f1e821`; mantle `0x3c7c0e...db976c`; mantle `0xa84860...256cd6`; mantle `0xd784d7...455657`; base `0x08ca91...85e388`; base `0x314bf0...51de47`; base `0x55fa52...52235e`; base `0x664e1c...a83e10`; base `0xd5941f...d35bd2`; base `0xd923b6...f5ff66`; base `0xe473ce...7264dd`; base `0xee7981...fd59d7`; arbitrum [`0x04c6a5...325d1e`](./contracts/arbitrum-42161/0x04c6a52f3bf9f73618cd70f234adb95a73325d1e/); arbitrum `0x238715...e7053c`; arbitrum `0x316984...c8466a`; arbitrum `0x31f0c8...7f3611`; arbitrum `0x50efc7...726211`; arbitrum `0x55fa52...52235e`; arbitrum `0x79926e...410db0`; arbitrum `0xaa46d9...81865a`; arbitrum `0xe2cd60...19a305`; arbitrum `0xff73a1...d5420a`; linea `0x510ca2...35af68`; linea `0x66eafe...dc96c0`; linea `0xa86ef3...ce9637`; linea `0xa9f1f8...680027`; linea `0xc5dc25...b3fa0a`; linea `0xde1ce7...3be269`; linea `0xe4589e...a1be0d`; linea `0xe469c1...6d344f`; linea `0xfa3b67...4489cd`; linea `0xff6a78...227966`; blast `0x29ba92...5078fd`; blast `0x35e808...7f1d64`; blast `0xde4be5...f73c66` | ✅ Audited |
| ZkLinkPeriphery | periphery | ethereum | 39 deployments: ethereum [`0x070fc0...67284f`](./contracts/ethereum-1/0x070fc04f6ce2cd1ffbc2ae1d6a381e46f467284f/); ethereum `0x446fca...3c8007`; ethereum `0x4ac2cc...bee425`; ethereum `0x5bc75b...a73e61`; ethereum `0x5f58bc...fef28c`; ethereum `0xa107b6...a689d7`; ethereum `0xd784d7...455657`; optimism `0x664e1c...a83e10`; optimism `0x80d12a...1674d5`; optimism `0xd784d7...455657`; optimism `0xe2510e...25ddb4`; optimism `0xe469c1...6d344f`; optimism `0xf63e81...e0c3ea`; manta `0xdd5097...7a3545`; mantle `0xf04af2...9c84f2`; base `0x21fe89...86c3b8`; base `0x31f0c8...7f3611`; base `0x502c84...34af12`; base `0x703651...2a62a2`; base `0xd784d7...455657`; arbitrum `0x09cb6c...ee1c72`; arbitrum `0x0ed6e9...63b3e5`; arbitrum `0x1ba934...1b4172`; arbitrum `0x30b2c7...e81ad9`; arbitrum `0x3203e8...307352`; arbitrum `0x4563c3...cfc027`; arbitrum `0x803460...f2809b`; arbitrum `0x928732...88bc8d`; arbitrum `0xd784d7...455657`; arbitrum `0xe89635...99cc13`; linea `0x119b94...4fd1a2`; linea `0x47767b...d783c8`; linea `0x5bd512...326eaa`; linea `0x649dfa...7cd82d`; linea `0x975a87...6ef628`; linea `0xa6df49...55d1f6`; linea `0xba6163...9d7f66`; linea `0xe38f8b...686dba`; linea `0xe75ef0...5b8afb` | ✅ Audited |
| ZkSyncL1Gateway | unknown | ethereum | 18 deployments: ethereum [`0x0163a4...d88a72`](./contracts/ethereum-1/0x0163a4ce18a566730c390b0e0fb5c78bcdd88a72/); ethereum `0x04bf7c...14d716`; ethereum `0x087fc8...b7d1e9`; ethereum `0x263e21...8af25f`; ethereum `0x30b2c7...e81ad9`; ethereum `0x413552...374b1d`; ethereum `0x4516a3...b17f2a`; ethereum `0x59ad35...3e4a22`; ethereum `0x6d2f5f...7541fb`; ethereum `0x6e21b3...69274a`; ethereum `0x76fa44...b77ae6`; ethereum `0x8915b1...3b497e`; ethereum `0x975a87...6ef628`; ethereum `0x98ceda...00673b`; ethereum `0x9de74e...1de1dc`; ethereum `0xb98ffd...30c9cc`; ethereum `0xecd189...c942ab`; ethereum `0xff2568...27d79e` | ✅ Audited |

### ⚠️ Verified + Unaudited (120)

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| RestakingPool | core_logic | ethereum | 3 deployments: ethereum [`0x0d6f76...a725bc`](./contracts/ethereum-1/0x0d6f764452ca43eb8bd22788c9db43e4b5a725bc/); ethereum `0x512d8b...90285b`; ethereum `0x80c1ef...6bd0fc` | ⚠️ Unaudited |
| NethPool | core_logic | ethereum | 3 deployments: ethereum [`0x9c6f15...6503fa`](./contracts/ethereum-1/0x9c6f151ff54b9820d4c54335369b76729e6503fa/); ethereum `0xa1ed35...82629a`; ethereum `0xf3c794...c07c18` | ⚠️ Unaudited |
| ZkLinkToken | token | ethereum | 4 deployments: ethereum [`0x0b703a...3707c5`](./contracts/ethereum-1/0x0b703aecf1ad4c053c15c49b08c94767f73707c5/); ethereum `0xa30602...933218`; ethereum `0xe1eb64...53bc9d`; ethereum `0xfc385a...0fcede` | ⚠️ Unaudited |
| Vault | core_logic | mantle | 5 deployments: mantle [`0x08231b...af27b3`](./contracts/mantle-5000/0x08231bcd66c5e4d2d1d4ad2bc24bfb4477af27b3/); mantle `0x2e488d...50dae1`; mantle `0x88ceb7...533fd8`; mantle `0xac5b26...253daf`; mantle `0xf627c5...263d87` | ⚠️ Unaudited |
| LUSDStablecoin | token | mantle | [`0xf93a85...af9f32`](./contracts/mantle-5000/0xf93a85d53e4af0d62bdf3a83ccfc1ecf3eaf9f32/) | ⚠️ Unaudited |
| TokenMintERC20Token | token | mantle | [`0x49397a...f20099`](./contracts/mantle-5000/0x49397ac9cb061152b770b1d274a5682155f20099/) | ⚠️ Unaudited |
| FLOKI | token | mantle | [`0x6efff7...ec673b`](./contracts/mantle-5000/0x6efff76acf1698a6a215eca7d632991678ec673b/) | ⚠️ Unaudited |
| CoinToken | token | mantle | [`0x3e65ac...deb474`](./contracts/mantle-5000/0x3e65ac1dd4938e02301c4869d3043903f5deb474/) | ⚠️ Unaudited |
| ELVault | core_logic | ethereum | 6 deployments: ethereum [`0x2b763f...680863`](./contracts/ethereum-1/0x2b763f4f1053980ca71266dd55dafdbbd0680863/); ethereum `0x3dd8d9...afac23`; ethereum `0x96714c...c3f04e`; ethereum `0xa9d213...dee8f3`; ethereum `0xae5b6c...e60c1b`; ethereum `0xbdfe7f...def3d8` | ⚠️ Unaudited |
| AggregatorV2 | unknown | ethereum | [`0x2dad78...523449`](./contracts/ethereum-1/0x2dad78e21bb2315d77a4ca07cb000fd8e4523449/) | ⚠️ Unaudited |
| Airdrop | operational_periphery | mantle | [`0x8551d2...00fdb2`](./contracts/mantle-5000/0x8551d2141a755ed8ca3a9e4bd9977dadf300fdb2/) | ⚠️ Unaudited |
| Array | unknown | ethereum | [`0x926cf8...4bedf1`](./contracts/ethereum-1/0x926cf8c6c07beaba0ecf55c9c41443614c4bedf1/) | ⚠️ Unaudited |
| Baja | unknown | blast | [`0x5fe853...ab3204`](./contracts/blast-81457/0x5fe8534a6f96cb01261bd96e98c17c2c1cab3204/) | ⚠️ Unaudited |
| BaseRegistrarImplementation | unknown | linea | [`0x6e8439...b95704`](./contracts/linea-59144/0x6e84390dcc5195414ec91a8c56a5c91021b95704/) | ⚠️ Unaudited |
| BeaconOracle | operational_periphery | ethereum | [`0x236962...740bd6`](./contracts/ethereum-1/0x2369624dba451447d629687ab660b6dfd3740bd6/) | ⚠️ Unaudited |
| BridgedToken | operational_periphery | linea | 11 deployments: linea [`0x05f519...e8aef7`](./contracts/linea-59144/0x05f5198b1d4a37e07ac510fc7a207e1499e8aef7/); linea `0x166868...c75bf9`; linea `0x17db45...f9e3ad`; linea `0x23fd0c...4ff796`; linea `0x435c9b...72a7fb`; linea `0x84f3b3...511208`; linea `0xbe641f...c76d04`; linea `0xc0729f...72a9d4`; linea `0xc55c05...6226c3`; linea `0xda8aef...2d49df`; linea `0xe840c5...ae197b` | ⚠️ Unaudited |
| ComplexOrderRouter | adapter | mantle | [`0x6154dc...8ed3d8`](./contracts/mantle-5000/0x6154dce92267af35c733dba5d20e36ee3f8ed3d8/) | ⚠️ Unaudited |
| ConsensusVault | core_logic | ethereum | 3 deployments: ethereum [`0x19e488...8f9e57`](./contracts/ethereum-1/0x19e488138311f382c3d3802a2a1deee6a28f9e57/); ethereum `0x1befba...566ce3`; ethereum `0x5b065b...3cf147` | ⚠️ Unaudited |
| CumulativeMerkleDrop | operational_periphery | ethereum | 2 deployments: ethereum [`0x1349a8...7b6610`](./contracts/ethereum-1/0x1349a8d352b1971cbebeacf55fb75526f47b6610/); ethereum `0x4d68f9...a1bfd6` | ⚠️ Unaudited |
| CustomBridgedToken | operational_periphery | linea | 9 deployments: linea [`0x0ece76...2203f0`](./contracts/linea-59144/0x0ece76334fb560f2b1a49a60e38cf726b02203f0/); linea `0x37cc52...ead306`; linea `0x3aab22...05a9b4`; linea `0x4af15e...6b00d5`; linea `0x5b1622...dcfa2d`; linea `0x6baa31...017acb`; linea `0xa21943...e12b93`; linea `0xb5bedd...68fc8f`; linea `0xc0583e...30b010` | ⚠️ Unaudited |
| DefiStrategy | core_logic | ethereum | 6 deployments: ethereum [`0x174799...bfc410`](./contracts/ethereum-1/0x174799af838f3883e88161f04011e2a316bfc410/); ethereum `0x59c384...73382d`; ethereum `0x5b14af...a7f503`; ethereum `0x75b2e4...775bae`; ethereum `0x8446c9...ddf8f5`; ethereum `0xfc2891...14c4a7` | ⚠️ Unaudited |
| DeployProxy | unknown | ethereum | [`0x178b74...f4e78a`](./contracts/ethereum-1/0x178b7401c32a4aab5ef128458888779eaaf4e78a/) | ⚠️ Unaudited |
| ELReward | unknown | ethereum | [`0x38260c...28e70b`](./contracts/ethereum-1/0x38260cbdd0adceab714335a0e3937ac35e28e70b/) | ⚠️ Unaudited |
| ELRewardFactory | registry | ethereum | [`0x7699fb...eeec7b`](./contracts/ethereum-1/0x7699fb48e19bc72e80a3b40d7e88c42256eeec7b/) | ⚠️ Unaudited |
| ELVaultFactory | registry | ethereum | 2 deployments: ethereum [`0x6e8104...766fca`](./contracts/ethereum-1/0x6e8104bc3e58296934984e15df1879537c766fca/); ethereum `0xf5c560...442145` | ⚠️ Unaudited |
| ENSRegistry | registry | linea | [`0x50130b...121267`](./contracts/linea-59144/0x50130b669b28c339991d8676fa73cf122a121267/) | ⚠️ Unaudited |
| ERC1967Proxy | proxy | linea | 10 deployments: ethereum `0xd9108f...a69cec`; manta `0xd784d7...455657`; manta `0xe946ab...ea39d0`; arbitrum `0x5610d4...070a99`; arbitrum `0x9dc842...1c66ff`; linea [`0x0c0404...f1e821`](./contracts/linea-59144/0x0c04046546c46652969aa9eb4bfb758cfdf1e821/); linea `0x578f38...6ef55a`; linea `0x62646d...b2d7c1`; scroll `0x119b94...4fd1a2`; scroll `0xd8428a...f1bce7` | ⚠️ Unaudited |
| ETHRegistrarController | governance | linea | [`0xdb75db...d18295`](./contracts/linea-59144/0xdb75db974b1f2bd3b5916d503036208064d18295/) | ⚠️ Unaudited |
| ExecutorFacet | unknown | linea | [`0x1b1928...7d1206`](./contracts/linea-59144/0x1b19287ce898217d937571eaba97ec50f27d1206/) | ⚠️ Unaudited |
| FastPriceFeed | operational_periphery | mantle | 2 deployments: mantle [`0x391536...a377ca`](./contracts/mantle-5000/0x391536d06480e554cfa60f9e2be0f3bbe5a377ca/); mantle `0x70c3de...18f979` | ⚠️ Unaudited |
| FastSettlementMiddleware | unknown | ethereum | 2 deployments: ethereum [`0x16397b...a8dd1c`](./contracts/ethereum-1/0x16397b59fa555cd75861127523918a185da8dd1c/); ethereum `0x3e9856...0c2fa1` | ⚠️ Unaudited |
| FastSettlementNetwork | unknown | ethereum | 2 deployments: ethereum [`0x213f44...44d00f`](./contracts/ethereum-1/0x213f448e7a1c8daede41cf94883cc6149244d00f/); ethereum `0x42b43b...569e42` | ⚠️ Unaudited |
| FastSettlementOperator | unknown | ethereum | 2 deployments: ethereum [`0xe5da2b...591d78`](./contracts/ethereum-1/0xe5da2bc7658ca9d160d0352e5cb2df1339591d78/); ethereum `0xf28aca...156288` | ⚠️ Unaudited |
| FiatTokenV1 | token | linea | 3 deployments: linea [`0x0e57c8...5c2dc8`](./contracts/linea-59144/0x0e57c8d26671e267c3c971824b93343bb75c2dc8/); linea `0x3e3ef7...d27982`; linea `0xd13ea2...33a605` | ⚠️ Unaudited |
| FiatTokenV2_1 | token | linea | 3 deployments: linea [`0x176211...1ee1ff`](./contracts/linea-59144/0x176211869ca2b568f2a7d4ee941e073a821ee1ff/); linea `0x6cda5d...f8dc9a`; linea `0xab838f...a2e0d3` | ⚠️ Unaudited |
| FrogRichToken | token | blast | [`0x038f1c...27efce`](./contracts/blast-81457/0x038f1c6ed5fccf690a920a27b39366eeef27efce/) | ⚠️ Unaudited |
| GettersFacet | unknown | linea | [`0xb1d035...12e3cb`](./contracts/linea-59144/0xb1d0354063527e4426c4becbdb75fe0fb112e3cb/) | ⚠️ Unaudited |
| HashConsensus | unknown | ethereum | [`0x301365...6da6a5`](./contracts/ethereum-1/0x301365f7334be7e4e32ef4a1d3040c9a476da6a5/) | ⚠️ Unaudited |
| KlpManager | governance | mantle | 4 deployments: mantle [`0x3c4de8...27090e`](./contracts/mantle-5000/0x3c4de8fb37055500bb3d18eae8dd0dfff527090e/); mantle `0x7ea781...7bd7a1`; mantle `0xcf5e1c...ef24f0`; mantle `0xf91e7d...e73f10` | ⚠️ Unaudited |
| KTX | unknown | mantle | 5 deployments: mantle [`0x57c90d...258c1e`](./contracts/mantle-5000/0x57c90dff593d045f00d56afd2ef00cf7b4258c1e/); mantle `0x779f4e...61159a`; mantle `0x8231e7...63a3fd`; mantle `0x98e34d...6d0ee1`; mantle `0xfe8470...631f30` | ⚠️ Unaudited |
| L2MessageService | unknown | linea | 6 deployments: linea [`0x05d437...b960fd`](./contracts/linea-59144/0x05d43713b7e333d2d54be65ce3b5f3698ab960fd/); linea `0x2c4f0e...3589af`; linea `0x508ca8...d644ec`; linea `0x89e70e...25147d`; linea `0x9899f2...c3b54d`; linea `0xdc36f3...fe8d3d` | ⚠️ Unaudited |
| L2USDCBridge | operational_periphery | linea | 6 deployments: linea [`0x199810...5a5521`](./contracts/linea-59144/0x1998108fa7993ea67a8b1a99d392a3288c5a5521/); linea `0x3c5cac...d924ca`; linea `0x6990d3...0b418c`; linea `0x6d967f...d7a43c`; linea `0x71e4db...220b81`; linea `0xa2ee6f...62504a` | ⚠️ Unaudited |
| LargeStakeOracle | operational_periphery | ethereum | 2 deployments: ethereum [`0x116d63...3d5f6d`](./contracts/ethereum-1/0x116d631583026799d61a284518762cf3923d5f6d/); ethereum `0x5f1725...6b8495` | ⚠️ Unaudited |
| LargeStaking | unknown | ethereum | 2 deployments: ethereum [`0x87fdec...4d9a7b`](./contracts/ethereum-1/0x87fdece127aa31f4708975b49a3450d7544d9a7b/); ethereum `0xa20353...93dfe6` | ⚠️ Unaudited |
| LineaL2Governance | unknown | linea | [`0x28b931...0fdb73`](./contracts/linea-59144/0x28b93154111e769178bc90b97f34e0b3210fdb73/) | ⚠️ Unaudited |
| LineaSurgeXP | unknown | linea | [`0x96b3a1...124b82`](./contracts/linea-59144/0x96b3a15257c4983a6fe9073d8c91763433124b82/) | ⚠️ Unaudited |
| LineaVoyageXP | unknown | linea | [`0xd83af4...cf599a`](./contracts/linea-59144/0xd83af4fbd77f3ab65c3b1dc4b38d7e67aecf599a/) | ⚠️ Unaudited |
| LineaXP | unknown | linea | [`0xc24e7b...9cfc13`](./contracts/linea-59144/0xc24e7b826b3c1e8918843baf7abd2e51399cfc13/) | ⚠️ Unaudited |
| LiquidStaking | core_logic | ethereum | 2 deployments: ethereum [`0x4bf7aa...5173bb`](./contracts/ethereum-1/0x4bf7aab60d30d17bdebc4b22ca008fe3bb5173bb/); ethereum `0x823562...594d8a` | ⚠️ Unaudited |
| LsdETH | unknown | ethereum | [`0x9dc7e1...b97c5b`](./contracts/ethereum-1/0x9dc7e196092dac94f0c76cfb020b60fa75b97c5b/) | ⚠️ Unaudited |
| MailboxFacet | unknown | linea | [`0x11bf5b...5780ba`](./contracts/linea-59144/0x11bf5bc6327f7becb0ae753932a181c8fb5780ba/) | ⚠️ Unaudited |
| Manta | unknown | manta | [`0x95cef1...c544e5`](./contracts/manta-169/0x95cef13441be50d20ca4558cc0a27b601ac544e5/) | ⚠️ Unaudited |
| MantaMintableERC20WithBridgeFlag | operational_periphery | manta | 6 deployments: manta [`0x34c7ad...201ce0`](./contracts/manta-169/0x34c7ad65e4163306f8745996688b476914201ce0/); manta `0x77b6f9...1c2300`; manta `0x9bf486...7a2c6c`; manta `0xa53e00...b6527e`; manta `0xbdad40...61fb07`; manta `0xc8d4bc...45b986` | ⚠️ Unaudited |
| MantaTokenManager | governance | manta | [`0x55f9d1...a49b2f`](./contracts/manta-169/0x55f9d1007922f3c47ab67a31ce3e503ba6a49b2f/) | ⚠️ Unaudited |
| MantleL2Gateway | unknown | mantle | [`0xe946ab...ea39d0`](./contracts/mantle-5000/0xe946abb40928326ce5bff303e7b8f0f253ea39d0/) | ⚠️ Unaudited |
| METHL2 | token | mantle | [`0xeb0c39...7956ce`](./contracts/mantle-5000/0xeb0c390b1fb2b63d5ed257b822a1cbbff87956ce/) | ⚠️ Unaudited |
| MintableBaseToken | token | mantle | 5 deployments: mantle [`0x0ce206...0a5b2d`](./contracts/mantle-5000/0x0ce206b1d2aecb40d3abb667c5f92f197a0a5b2d/); mantle `0x245ad6...629245`; mantle `0x5d11b9...6fce31`; mantle `0x9d0162...589177`; mantle `0xb44cba...d296b7` | ⚠️ Unaudited |
| MintSecurity | unknown | ethereum | 2 deployments: ethereum [`0xa57dc7...f9d25f`](./contracts/ethereum-1/0xa57dc79b2852415448b66100bf59753318f9d25f/); ethereum `0xd297dc...befb57` | ⚠️ Unaudited |
| MintStrategy | core_logic | ethereum | 2 deployments: ethereum [`0xb97ab3...1f67a0`](./contracts/ethereum-1/0xb97ab3198f6117d2d093807faa670eb1c11f67a0/); ethereum `0xdd2d80...43e6fe` | ⚠️ Unaudited |
| MJAirdrop | operational_periphery | mantle | [`0x532e52...94163f`](./contracts/mantle-5000/0x532e522964cba02be18f767e4c0e39188894163f/) | ⚠️ Unaudited |
| MultiHashConsensus | unknown | ethereum | [`0x2eb710...9820f9`](./contracts/ethereum-1/0x2eb71040c0a24fe10194aec2f0a8b264ae9820f9/) | ⚠️ Unaudited |
| NameWrapper | unknown | linea | [`0xa53cca...13c223`](./contracts/linea-59144/0xa53cca02f98d590819141aa85c891e2af713c223/) | ⚠️ Unaudited |
| NETH | unknown | ethereum | [`0xc65720...c7789a`](./contracts/ethereum-1/0xc6572019548dfeba782ba5a2093c836626c7789a/) | ⚠️ Unaudited |
| NethOFTAdapter | adapter | ethereum | [`0x3343f9...3283ce`](./contracts/ethereum-1/0x3343f9de5612b6f8a433abc3eaae245cfa3283ce/) | ⚠️ Unaudited |
| NodeDaoTreasury | operational_periphery | ethereum | 3 deployments: ethereum [`0x520b82...6dabd1`](./contracts/ethereum-1/0x520b826e8d0fdfd8e0cdb1b2243f6648cc6dabd1/); ethereum `0x79285f...567afc`; ethereum `0x876ef3...24b019` | ⚠️ Unaudited |
| NodeDAOView | unknown | ethereum | 2 deployments: ethereum [`0x857bf0...14d948`](./contracts/ethereum-1/0x857bf02b1f5fd85e064e6726658ea1864a14d948/); ethereum `0xd7c049...812121` | ⚠️ Unaudited |
| NodeOperatorRegistry | registry | ethereum | 5 deployments: ethereum [`0x37d815...c38cf1`](./contracts/ethereum-1/0x37d815d5c96d4d9807b5b6e8294343dbb4c38cf1/); ethereum `0xc65e0a...e9d88e`; ethereum `0xe2964b...f8963f`; ethereum `0xe7cdb8...8cea46`; ethereum `0xf64555...c02ede` | ⚠️ Unaudited |
| ObeliskCustody | unknown | ethereum | 2 deployments: ethereum [`0x385d89...93b4e3`](./contracts/ethereum-1/0x385d894a946be929cc1ba1a26331fd4ccd93b4e3/); ethereum `0x9f836f...8b1a2c` | ⚠️ Unaudited |
| ObeliskNetwork | unknown | ethereum | 3 deployments: ethereum [`0x934cbd...ebad42`](./contracts/ethereum-1/0x934cbd2af86c074478a1fe1d10d2c5d4adebad42/); ethereum `0xe423b9...1cd999`; ethereum `0xef2df4...43e80b` | ⚠️ Unaudited |
| OBTC | unknown | ethereum | [`0xb1e128...de0e3c`](./contracts/ethereum-1/0xb1e12802831da99d2d47b6a55049d69bf7de0e3c/) | ⚠️ Unaudited |
| OBTCOFTAdapter | adapter | ethereum | [`0x5be163...3be65f`](./contracts/ethereum-1/0x5be1630b4241ebb479b2dd3a1917e3c4253be65f/) | ⚠️ Unaudited |
| OperatorSlash | unknown | ethereum | 2 deployments: ethereum [`0x39b5dd...64ecb4`](./contracts/ethereum-1/0x39b5dd701d1ddc729a7a7a9d6e3941aa5264ecb4/); ethereum `0xf23756...777972` | ⚠️ Unaudited |
| OptimismBridgeExecutor | operational_periphery | mantle | [`0x3a7b05...5819dd`](./contracts/mantle-5000/0x3a7b055bf88cdc59d20d0245809c6e6b3c5819dd/) | ⚠️ Unaudited |
| OrderBook | unknown | mantle | 4 deployments: mantle [`0x548f29...7fd6f9`](./contracts/mantle-5000/0x548f29394c98e92789e5f9528cbcead0d87fd6f9/); mantle `0x661d88...471e7c`; mantle `0x87a1c0...24a1a0`; mantle `0x983a26...cc27f7` | ⚠️ Unaudited |
| OwnedResolver | unknown | linea | [`0x9453dc...f4c06f`](./contracts/linea-59144/0x9453dc2dddf2a19951e708b4ff8d5f5e38f4c06f/) | ⚠️ Unaudited |
| OYBTCB2 | unknown | ethereum | [`0x7f58f8...3d24b6`](./contracts/ethereum-1/0x7f58f8d540324a7a895794bb819f2d635c3d24b6/) | ⚠️ Unaudited |
| OYBTCBBN | unknown | ethereum | [`0x587fa5...c0f887`](./contracts/ethereum-1/0x587fa54a1682ae73ecc709e1439d096ff0c0f887/) | ⚠️ Unaudited |
| OYBTCFBTC | unknown | ethereum | [`0xc47a9d...2ce338`](./contracts/ethereum-1/0xc47a9dce0192e0d82c0b6f8f75c1881df32ce338/) | ⚠️ Unaudited |
| PoolConfig | core_logic | ethereum | 2 deployments: ethereum [`0x54f661...d1ea62`](./contracts/ethereum-1/0x54f661260dd47b6178cf4f6f3e90cc30d8d1ea62/); ethereum `0xea66a6...ad497a` | ⚠️ Unaudited |
| PositionManager | governance | mantle | 4 deployments: mantle [`0x4b1dbc...03e347`](./contracts/mantle-5000/0x4b1dbc2d67980996e7e10bc1a55c2be0e703e347/); mantle `0x4d59ea...9b4d69`; mantle `0x9831aa...f677a0`; mantle `0xaf6f7d...46431f` | ⚠️ Unaudited |
| PositionRouter | adapter | mantle | 4 deployments: mantle [`0x019473...8807d4`](./contracts/mantle-5000/0x0194738dda5a3bf5d488cf3724db25961c8807d4/); mantle `0x49ac32...0ff397`; mantle `0x71f67c...0ceb7f`; mantle `0x8a7f1c...d1bd7c` | ⚠️ Unaudited |
| Proxy | proxy | manta | 37 deployments: ethereum `0x381b76...0770c9`; optimism `0x0c0f72...4190b0`; optimism `0x4c5629...27c563`; optimism `0x649dfa...7cd82d`; optimism `0x67ebb0...accb3e`; optimism `0xa194fb...dd3a2e`; optimism `0xaa46d9...81865a`; optimism `0xee7981...fd59d7`; manta [`0x028781...7fa131`](./contracts/manta-169/0x028781ceed4a2264466ef5ab73c91603087fa131/); manta `0x5bc75b...a73e61`; mantle `0x0c0f72...4190b0`; mantle `0x437a10...2bbcac`; mantle `0xc6d124...918184`; base `0x09cb6c...ee1c72`; base `0x161f4b...0477f0`; base `0x683669...2216f5`; base `0x7769c1...3ea458`; base `0x83bc73...c0055c`; base `0xa84860...256cd6`; base `0xaa46d9...81865a`; base `0xe4589e...a1be0d`; arbitrum `0x0c0404...f1e821`; arbitrum `0x2b73ab...e33fe6`; arbitrum `0x43bcb7...b7a7a6`; arbitrum `0x46c8d0...a3fa1b`; arbitrum `0x69bdfb...00688c`; arbitrum `0x95fb80...e85f3c`; arbitrum `0x996bae...6ea506`; arbitrum `0xe469c1...6d344f`; arbitrum `0xed5d1e...082ac3`; linea `0x08884b...6b7600`; linea `0x2fad6c...7fa6fd`; linea `0x3e9856...0c2fa1`; linea `0x42b43b...569e42`; linea `0x986c90...388e92`; linea `0xaedfed...bf0809`; linea `0xb98ffd...30c9cc` | ⚠️ Unaudited |
| ProxyAdmin | governance | linea | 5 deployments: arbitrum `0xbcf5eb...da237d`; linea [`0x1e1f6f...39774e`](./contracts/linea-59144/0x1e1f6f22f97b4a7522d8b62e983953639239774e/); linea `0x34bc8b...338fa2`; linea `0xa11ba9...b370d6`; linea `0xcb04d0...7ea30c` | ⚠️ Unaudited |
| PublicResolver | unknown | linea | [`0x86c5ae...733126`](./contracts/linea-59144/0x86c5aed9f27837074612288610fb98ccc1733126/) | ⚠️ Unaudited |
| RadiantOFT | unknown | arbitrum | [`0x3082cc...50aaa0`](./contracts/arbitrum-42161/0x3082cc23568ea640225c2467653db90e9250aaa0/) | ⚠️ Unaudited |
| Reader | unknown | mantle | [`0x650e88...1d9e87`](./contracts/mantle-5000/0x650e8847aa247f189de852da1c821a13c51d9e87/) | ⚠️ Unaudited |
| ReferralStorage | token | mantle | 4 deployments: mantle [`0x0c4c75...11c676`](./contracts/mantle-5000/0x0c4c754df42cef3aaaff414dbdd321313d11c676/); mantle `0xbf0d05...2d4937`; mantle `0xcc15ad...69b988`; mantle `0xe38824...6f03be` | ⚠️ Unaudited |
| RestakingPod | unknown | ethereum | 3 deployments: ethereum [`0x9efdeb...a3b75c`](./contracts/ethereum-1/0x9efdeb695f1e3f0ad3bcfb1e07d2749b50a3b75c/); ethereum `0xd58c55...9a0932`; ethereum `0xe2a700...be7be5` | ⚠️ Unaudited |
| ReverseRegistrar | unknown | linea | [`0x08d3ff...2b67d5`](./contracts/linea-59144/0x08d3ff6e65f680844fd2465393ff6f0d742b67d5/) | ⚠️ Unaudited |
| RewardDistributor | operational_periphery | mantle | 12 deployments: mantle [`0x02170f...2e0a5f`](./contracts/mantle-5000/0x02170fea1fd31a26aaf6dd06adf01b36db2e0a5f/); mantle `0x05e423...4876af`; mantle `0x08dcc0...0b447c`; mantle `0x37bb75...a309f1`; mantle `0x39bc24...2c2729`; mantle `0x487f6b...3ded27`; mantle `0x592f29...ac3a6e`; mantle `0x86056f...49648f`; mantle `0x9c5582...32733c`; mantle `0xb9c70c...af2961`; mantle `0xe2bef3...5d87e3`; mantle `0xebeea5...fe4b0c` | ⚠️ Unaudited |
| RewardRouter | adapter | mantle | 3 deployments: mantle [`0x207d39...d688ca`](./contracts/mantle-5000/0x207d39314707001ae36f12335dd8b1f65cd688ca/); mantle `0x2ac030...6926d7`; mantle `0x61dd26...332316` | ⚠️ Unaudited |
| RewardTracker | unknown | mantle | 15 deployments: mantle [`0x1d2941...ae7146`](./contracts/mantle-5000/0x1d29411f42bed70d1567b4b6b4638ee46bae7146/); mantle `0x2e564d...cae6c9`; mantle `0x315f1f...84470c`; mantle `0x4368fc...f6b6b2`; mantle `0x57acdf...81f7ab`; mantle `0x699d08...c8ade9`; mantle `0x7524b7...692d43`; mantle `0x756f1d...60609c`; mantle `0x846e58...11a189`; mantle `0x9484f8...7bd201`; mantle `0xb3a5ee...d5c0b3`; mantle `0xc18e29...562861`; mantle `0xee4d71...a8fdd7`; mantle `0xf04b22...eec632`; mantle `0xfe4169...6e73f9` | ⚠️ Unaudited |
| RNethOFTAdapter | adapter | ethereum | [`0xcea368...8ded56`](./contracts/ethereum-1/0xcea3681131dd151ee72a5c8dbba555cb8b8ded56/) | ⚠️ Unaudited |
| Root | unknown | linea | [`0xfbf795...151e7d`](./contracts/linea-59144/0xfbf795ead640e261868eb200ed2850eb9c151e7d/) | ⚠️ Unaudited |
| Router | adapter | mantle | 5 deployments: mantle [`0x8970c2...0d2b44`](./contracts/mantle-5000/0x8970c235a4e4d8e0ae5c340549efda5db20d2b44/); mantle `0x9355c7...23bf1b`; mantle `0x9c2407...08950d`; mantle `0xb230db...75bf38`; mantle `0xea02de...dc4583` | ⚠️ Unaudited |
| StakedKlp | token | mantle | [`0x949cb5...1eca7c`](./contracts/mantle-5000/0x949cb557982859fe36adf84eeac535dde11eca7c/) | ⚠️ Unaudited |
| StaticMetadataService | unknown | linea | [`0x18703d...866e4c`](./contracts/linea-59144/0x18703d0117121f6a7476221e2afc57faf9866e4c/) | ⚠️ Unaudited |
| StrategyManager | core_logic | ethereum | 2 deployments: ethereum [`0x36f57f...a16e16`](./contracts/ethereum-1/0x36f57f0379cb36e54248d219954274ee86a16e16/); ethereum `0x995f4e...8d5e38` | ⚠️ Unaudited |
| SyncL2TxHashRelayer | unknown | ethereum | [`0x0fdc28...dea2c6`](./contracts/ethereum-1/0x0fdc28e64772a70109d10fd068f859cfa7dea2c6/) | ⚠️ Unaudited |
| Timelock | governance | mantle | 4 deployments: mantle [`0x63a14c...47574e`](./contracts/mantle-5000/0x63a14cc9baa8fd9da49c42ff2f8a3da4b147574e/); mantle `0xc9ef72...c99bad`; mantle `0xe7a108...403aa1`; mantle `0xf399f6...535e05` | ⚠️ Unaudited |
| TimelockController | governance | ethereum | 2 deployments: ethereum [`0x16f692...b5735b`](./contracts/ethereum-1/0x16f692525f3b8c8a96f8c945d365da958fb5735b/); ethereum `0xe4c555...312f20` | ⚠️ Unaudited |
| TinyTigerCatToken | token | blast | [`0xf782e1...957028`](./contracts/blast-81457/0xf782e172a14ee1c85cd980c15375ba0e87957028/) | ⚠️ Unaudited |
| TokenAuthority | governance | ethereum | [`0x6fdfd0...6d74a7`](./contracts/ethereum-1/0x6fdfd096687a2d7b83e4afdc05c43519166d74a7/) | ⚠️ Unaudited |
| TokenBridge | operational_periphery | linea | 4 deployments: linea [`0x0ffcbe...03444e`](./contracts/linea-59144/0x0ffcbe98041b77bd87c38e2d0a6b473e7703444e/); linea `0x2bfdf4...ee97a9`; linea `0x353012...a8ceb9`; linea `0xd90ed3...777137` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | proxy | arbitrum | 4 deployments: manta `0x44a65d...7168ff`; arbitrum [`0x030456...33c8c2`](./contracts/arbitrum-42161/0x0304565ad321bb5613af5956a95eff205333c8c2/); arbitrum `0x733af6...32294f`; scroll `0x3c7c0e...db976c` | ⚠️ Unaudited |
| UniversalResolver | unknown | linea | [`0x3aa974...3a6965`](./contracts/linea-59144/0x3aa974fb3f8c1e02796048bdcded79e9d53a6965/) | ⚠️ Unaudited |
| UpgradeableBeacon | registry | linea | [`0xe79869...4c02c0`](./contracts/linea-59144/0xe798695d2e78f7caeb5bbf3385433959324c02c0/) | ⚠️ Unaudited |
| USDT | token | mantle | [`0x201eba...e956ae`](./contracts/mantle-5000/0x201eba5cc46d216ce6dc03f6a759e8e766e956ae/) | ⚠️ Unaudited |
| VaultManager | core_logic | ethereum | 3 deployments: ethereum [`0x3ad85a...99f700`](./contracts/ethereum-1/0x3ad85a55904b8ef62f30b5811717d6982a99f700/); ethereum `0xdb4209...a40913`; ethereum `0xdbbad2...04057a` | ⚠️ Unaudited |
| VaultPriceFeed | operational_periphery | mantle | 5 deployments: mantle [`0x3a1c8d...1d9687`](./contracts/mantle-5000/0x3a1c8d18cddfefd4499684e670c99f4cfc1d9687/); mantle `0x973623...1f8826`; mantle `0xbaa9f1...6cdb26`; mantle `0xcabdd7...3e14fe`; mantle `0xedd1e8...3fe4b7` | ⚠️ Unaudited |
| Vester | operational_periphery | mantle | 6 deployments: mantle [`0x2e4f63...132f0c`](./contracts/mantle-5000/0x2e4f63c3ffdf457ff210a29ef10ce3b12c132f0c/); mantle `0xb1fd68...a7771a`; mantle `0xb6f417...6d227c`; mantle `0xb98de1...79d9be`; mantle `0xc4c67c...aad74f`; mantle `0xcc0246...4e249d` | ⚠️ Unaudited |
| VNFT | token | ethereum | 3 deployments: ethereum [`0x13bc53...698a69`](./contracts/ethereum-1/0x13bc536722779508ef5d9994e2fa616553698a69/); ethereum `0xa6911b...de6359`; ethereum `0xb4f3e1...193cbf` | ⚠️ Unaudited |
| WBTC | token | mantle | [`0xcabae6...aebfa2`](./contracts/mantle-5000/0xcabae6f6ea1ecab08ad02fe02ce9a44f09aebfa2/) | ⚠️ Unaudited |
| WETH9 | token | linea | 2 deployments: linea [`0x72343e...f2fcad`](./contracts/linea-59144/0x72343e8e448fa539a1f118f870a1de1132f2fcad/); linea `0xee7981...fd59d7` | ⚠️ Unaudited |
| WithdrawalFinalizer | operational_periphery | linea | 2 deployments: linea [`0x2132ff...fd9542`](./contracts/linea-59144/0x2132ff9b5dac4a114e02112c20ca81b0d2fd9542/); linea `0x6fe38b...f414a2` | ⚠️ Unaudited |
| WithdrawalRequest | operational_periphery | ethereum | [`0x50cd55...23fddd`](./contracts/ethereum-1/0x50cd55e21d0621d4096c71d73e785346dd23fddd/) | ⚠️ Unaudited |
| WithdrawOracle | operational_periphery | ethereum | 3 deployments: ethereum [`0x7f431a...67041b`](./contracts/ethereum-1/0x7f431acc894b2bae481efe7ce1e88bc7f167041b/); ethereum `0xb7e0b4...4ab00a`; ethereum `0xb836f0...bef53d` | ⚠️ Unaudited |
| wUSDM | unknown | ethereum | [`0x57f5e0...af7812`](./contracts/ethereum-1/0x57f5e098cad7a3d1eed53991d4d66c45c9af7812/) | ⚠️ Unaudited |
| ZKLCRelease | unknown | ethereum | 2 deployments: ethereum [`0x120d79...444038`](./contracts/ethereum-1/0x120d79adea9693786be90d5ffe8af32269444038/); ethereum `0xe4dcf1...b6f58e` | ⚠️ Unaudited |
| ZKLinkAcross | unknown | base | 2 deployments: base [`0x7ae056...a74040`](./contracts/base-8453/0x7ae0563553008a45d91555f66b2ab34800a74040/); base `0xec30c5...6e3417` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (1)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| EmptyVerifier | periphery | optimism | 27 deployments: ethereum `0x7f9de3...8a4c0d`; ethereum `0xbc28d1...94c4bd`; ethereum `0xd6c54b...829a08`; ethereum `0xe38f8b...686dba`; optimism [`0x119b94...4fd1a2`](./contracts/optimism-10/0x119b9459d9119d07c23ad06778aeabec804fd1a2/); optimism `0x83bc73...c0055c`; optimism `0xbb205c...275adc`; optimism `0xcdcdf6...80613d`; optimism `0xe89635...99cc13`; manta `0x437a10...2bbcac`; mantle `0x527f61...53dd5d`; mantle `0xd8428a...f1bce7`; base `0x4c5629...27c563`; base `0x624658...c283ab`; base `0x87743f...9a43fb`; base `0xb6b969...c3d78b`; base `0xbb205c...275adc`; base `0xef7007...e80cc7`; base `0xf63e81...e0c3ea`; base `0xfa7fb7...21a89c`; arbitrum `0x273d59...7583c0`; arbitrum `0x3fc412...0f92ec`; arbitrum `0xa84860...256cd6`; arbitrum `0xe54cac...34324f`; arbitrum `0xf9c947...8eee64`; linea `0x3d70dc...3a441e`; linea `0xf7f67b...d8cb8c` | ✅ Audited (bytecode match) |

### ⚠️ Verified by Bytecode + Unaudited (4)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| BrokerAccepter | unknown | linea | 6 deployments: ethereum `0xe473ce...7264dd`; ethereum `0xf8fe43...e843f5`; optimism `0x9dc756...bbc88c`; base `0x7c56da...bc88b3`; arbitrum `0xd5941f...d35bd2`; linea [`0x139abb...5c22e1`](./contracts/linea-59144/0x139abb67a33f6ddcf00fbab5e321184f4e5c22e1/) | ⚠️ Unaudited (bytecode match) |
| MultiCall | unknown | linea | 14 deployments: ethereum `0x0c0404...f1e821`; ethereum `0x0dad20...90bac2`; ethereum `0x4be8a6...f75200`; optimism `0x79926e...410db0`; optimism `0x87743f...9a43fb`; manta `0xdc0771...d2208b`; mantle `0x0d53ce...731470`; base `0x85079c...8b1f4e`; base `0x98ceda...00673b`; arbitrum `0x7769c1...3ea458`; arbitrum `0xa00509...36fb60`; linea [`0x04bf7c...14d716`](./contracts/linea-59144/0x04bf7cf48a68dfc744fc22662b90e2ecaf14d716/); linea `0x0c89bc...2907aa`; linea `0xeb79fe...39f4ad` | ⚠️ Unaudited (bytecode match) |
| UpgradeGatekeeper | unknown | base | 28 deployments: ethereum `0x457ce8...ba47b4`; ethereum `0xfbd686...072753`; optimism `0x72343e...f2fcad`; optimism `0x7bd79d...18483a`; optimism `0xa86ef3...ce9637`; optimism `0xf04af2...9c84f2`; manta `0x9dc756...bbc88c`; mantle `0x2b9ba2...744059`; mantle `0x5bc75b...a73e61`; base [`0x0c0404...f1e821`](./contracts/base-8453/0x0c04046546c46652969aa9eb4bfb758cfdf1e821/); base `0x50efc7...726211`; base `0x53d9d2...c6db6a`; base `0x649dfa...7cd82d`; base `0x72343e...f2fcad`; arbitrum `0x2e8ad1...f4a190`; arbitrum `0x3c3f4b...9aa98e`; arbitrum `0x89f273...24f0cc`; arbitrum `0xd6bbb0...a2e86c`; arbitrum `0xd8428a...f1bce7`; arbitrum `0xf9f8a1...341a70`; linea `0x3203e8...307352`; linea `0x4d4b1b...8b0d59`; linea `0x53d9d2...c6db6a`; linea `0x67ebb0...accb3e`; linea `0xba2be3...42602c`; linea `0xcc8256...c1f5dd`; linea `0xe5da2b...591d78`; linea `0xff2568...27d79e` | ⚠️ Unaudited (bytecode match) |
| Verifier | periphery | linea | 22 deployments: ethereum `0x437a10...2bbcac`; ethereum `0x5715de...b8ce05`; optimism `0x5715de...b8ce05`; base `0x5715de...b8ce05`; arbitrum `0x235118...b6b68f`; arbitrum `0x5715de...b8ce05`; arbitrum `0x6d6ce5...927962`; arbitrum `0x6e21b3...69274a`; linea [`0x0163a4...d88a72`](./contracts/linea-59144/0x0163a4ce18a566730c390b0e0fb5c78bcdd88a72/); linea `0x161f4b...0477f0`; linea `0x413552...374b1d`; linea `0x437a10...2bbcac`; linea `0x683669...2216f5`; linea `0x803460...f2809b`; linea `0x80d12a...1674d5`; linea `0x902c38...400458`; linea `0xbfa352...63283f`; linea `0xcdcdf6...80613d`; linea `0xd784d7...455657`; linea `0xe946ab...ea39d0`; linea `0xef7007...e80cc7`; linea `0xfe3e63...96709f` | ⚠️ Unaudited (bytecode match) |

### ❓ Unverified (302)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| UnnamedContract | unknown | ethereum | `0x139abb...5c22e1` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x3782f9...25c7e8` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x47767b...d783c8` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x55fa52...52235e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x73ddae...be948d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x7c56da...bc88b3` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xcdcdf6...80613d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xe946ab...ea39d0` | ❓ Unverified |
| UnnamedContract | unknown | optimism | `0x028781...7fa131` | ❓ Unverified |
| UnnamedContract | unknown | optimism | `0x0c89bc...2907aa` | ❓ Unverified |
| UnnamedContract | unknown | optimism | `0x161f4b...0477f0` | ❓ Unverified |
| UnnamedContract | unknown | optimism | `0x454e4f...7de40a` | ❓ Unverified |
| UnnamedContract | unknown | optimism | `0x502c84...34af12` | ❓ Unverified |
| UnnamedContract | unknown | optimism | `0x50efc7...726211` | ❓ Unverified |
| UnnamedContract | unknown | optimism | `0x5b884c...63f190` | ❓ Unverified |
| UnnamedContract | unknown | optimism | `0x6d2f5f...7541fb` | ❓ Unverified |
| UnnamedContract | unknown | optimism | `0x803460...f2809b` | ❓ Unverified |
| UnnamedContract | unknown | optimism | `0xd8428a...f1bce7` | ❓ Unverified |
| UnnamedContract | unknown | optimism | `0xd923b6...f5ff66` | ❓ Unverified |
| UnnamedContract | unknown | optimism | `0xe946ab...ea39d0` | ❓ Unverified |
| UnnamedContract | unknown | optimism | `0xf9f8a1...341a70` | ❓ Unverified |
| UnnamedContract | unknown | optimism | `0xff73a1...d5420a` | ❓ Unverified |
| UnnamedContract | unknown | manta | `0x1f282e...d83ce2` | ❓ Unverified |
| UnnamedContract | unknown | manta | `0x649dfa...7cd82d` | ❓ Unverified |
| UnnamedContract | unknown | manta | `0xa898e1...ee5b09` | ❓ Unverified |
| UnnamedContract | unknown | manta | `0xc8a31a...250e67` | ❓ Unverified |
| UnnamedContract | unknown | zksync-era | `0x67ba43...77bf2f` | ❓ Unverified |
| UnnamedContract | unknown | zksync-era | `0x7187db...68c44a` | ❓ Unverified |
| UnnamedContract | unknown | zksync-era | `0xab3ddb...bf2d08` | ❓ Unverified |
| UnnamedContract | unknown | zksync-era | `0xafe8c7...83273a` | ❓ Unverified |
| UnnamedContract | unknown | zksync-era | `0xc203a2...182535` | ❓ Unverified |
| UnnamedContract | unknown | zksync-era | `0xebeaf6...34ade0` | ❓ Unverified |
| UnnamedContract | unknown | zksync-era | `0xecd189...c942ab` | ❓ Unverified |
| UnnamedContract | unknown | merlin | `0x41d903...fb0f71` | ❓ Unverified |
| UnnamedContract | unknown | merlin | `0xad16ed...44b6b6` | ❓ Unverified |
| UnnamedContract | unknown | merlin | `0xf5b90f...661d73` | ❓ Unverified |
| UnnamedContract | unknown | merlin | `0xfc385a...0fcede` | ❓ Unverified |
| UnnamedContract | unknown | mantle | `0x029661...52d912` | ❓ Unverified |
| UnnamedContract | unknown | mantle | `0x064b5d...967ada` | ❓ Unverified |
| UnnamedContract | unknown | mantle | `0x081762...6b92cd` | ❓ Unverified |
| UnnamedContract | unknown | mantle | `0x09cb6c...ee1c72` | ❓ Unverified |
| UnnamedContract | unknown | mantle | `0x0c251f...46b9ad` | ❓ Unverified |
| UnnamedContract | unknown | mantle | `0x0e27ed...ff1a55` | ❓ Unverified |
| UnnamedContract | unknown | mantle | `0x12a39c...ddeb52` | ❓ Unverified |
| UnnamedContract | unknown | mantle | `0x13bb7c...8719b0` | ❓ Unverified |
| UnnamedContract | unknown | mantle | `0x16690b...392e4a` | ❓ Unverified |
| UnnamedContract | unknown | mantle | `0x168e39...4ee76b` | ❓ Unverified |
| UnnamedContract | unknown | mantle | `0x16d8bf...8e0801` | ❓ Unverified |
| UnnamedContract | unknown | mantle | `0x1872e8...7b63a8` | ❓ Unverified |
| UnnamedContract | unknown | mantle | `0x198fba...ee6c20` | ❓ Unverified |
| UnnamedContract | unknown | mantle | `0x1bf0c8...f17d63` | ❓ Unverified |
| UnnamedContract | unknown | mantle | `0x1ca858...d6b694` | ❓ Unverified |
| UnnamedContract | unknown | mantle | `0x1cc57d...0c76b9` | ❓ Unverified |
| UnnamedContract | unknown | mantle | `0x1f10e4...1ea481` | ❓ Unverified |
| UnnamedContract | unknown | mantle | `0x1f8866...c0ba24` | ❓ Unverified |
| UnnamedContract | unknown | mantle | `0x2108e7...de9c9f` | ❓ Unverified |
| UnnamedContract | unknown | mantle | `0x216b02...290519` | ❓ Unverified |
| UnnamedContract | unknown | mantle | `0x229034...5f3efb` | ❓ Unverified |
| UnnamedContract | unknown | mantle | `0x25e71a...9d9e34` | ❓ Unverified |
| UnnamedContract | unknown | mantle | `0x26d5a7...68b09b` | ❓ Unverified |
| UnnamedContract | unknown | mantle | `0x2a2721...dc75f0` | ❓ Unverified |
| UnnamedContract | unknown | mantle | `0x2a4891...974167` | ❓ Unverified |
| UnnamedContract | unknown | mantle | `0x2cbc8b...989855` | ❓ Unverified |
| UnnamedContract | unknown | mantle | `0x2d1d69...7e2193` | ❓ Unverified |
| UnnamedContract | unknown | mantle | `0x2ed161...e6b373` | ❓ Unverified |
| UnnamedContract | unknown | mantle | `0x2fd5fe...7fcd54` | ❓ Unverified |
| UnnamedContract | unknown | mantle | `0x3023cc...d3715f` | ❓ Unverified |
| UnnamedContract | unknown | mantle | `0x357c8e...f15f8f` | ❓ Unverified |
| UnnamedContract | unknown | mantle | `0x36e067...362726` | ❓ Unverified |
| UnnamedContract | unknown | mantle | `0x3782f9...25c7e8` | ❓ Unverified |
| UnnamedContract | unknown | mantle | `0x3bb03b...c480ae` | ❓ Unverified |
| UnnamedContract | unknown | mantle | `0x3c9d34...8037e8` | ❓ Unverified |
| UnnamedContract | unknown | mantle | `0x3dbe7c...f1f3ef` | ❓ Unverified |
| UnnamedContract | unknown | mantle | `0x41736c...4c7cf9` | ❓ Unverified |
| UnnamedContract | unknown | mantle | `0x42a0ea...4c2a38` | ❓ Unverified |
| UnnamedContract | unknown | mantle | `0x461064...ab8277` | ❓ Unverified |
| UnnamedContract | unknown | mantle | `0x505294...e29cba` | ❓ Unverified |
| UnnamedContract | unknown | mantle | `0x542fd0...d825cb` | ❓ Unverified |
| UnnamedContract | unknown | mantle | `0x545356...8751ca` | ❓ Unverified |
| UnnamedContract | unknown | mantle | `0x55fa52...52235e` | ❓ Unverified |
| UnnamedContract | unknown | mantle | `0x5715de...b8ce05` | ❓ Unverified |
| UnnamedContract | unknown | mantle | `0x574f55...1d2b61` | ❓ Unverified |
| UnnamedContract | unknown | mantle | `0x588354...a8cc6f` | ❓ Unverified |
| UnnamedContract | unknown | mantle | `0x5d2445...c9b2f0` | ❓ Unverified |
| UnnamedContract | unknown | mantle | `0x5e9012...4dd2d8` | ❓ Unverified |
| UnnamedContract | unknown | mantle | `0x636d40...eb87be` | ❓ Unverified |
| UnnamedContract | unknown | mantle | `0x654e7d...199212` | ❓ Unverified |
| UnnamedContract | unknown | mantle | `0x664d6b...4290a5` | ❓ Unverified |
| UnnamedContract | unknown | mantle | `0x679505...84fa63` | ❓ Unverified |
| UnnamedContract | unknown | mantle | `0x6ef8d8...b33bbb` | ❓ Unverified |
| UnnamedContract | unknown | mantle | `0x70364e...43300a` | ❓ Unverified |
| UnnamedContract | unknown | mantle | `0x708af8...f632d2` | ❓ Unverified |
| UnnamedContract | unknown | mantle | `0x727df3...4fbb90` | ❓ Unverified |
| UnnamedContract | unknown | mantle | `0x746817...1e2e6e` | ❓ Unverified |
| UnnamedContract | unknown | mantle | `0x77446f...dc9085` | ❓ Unverified |
| UnnamedContract | unknown | mantle | `0x779fc2...766403` | ❓ Unverified |
| UnnamedContract | unknown | mantle | `0x780855...e6ddde` | ❓ Unverified |
| UnnamedContract | unknown | mantle | `0x7b8eb5...9c9f52` | ❓ Unverified |
| UnnamedContract | unknown | mantle | `0x7b9770...3a78e3` | ❓ Unverified |
| UnnamedContract | unknown | mantle | `0x7ca59a...2dabbb` | ❓ Unverified |
| UnnamedContract | unknown | mantle | `0x7db93f...39e7c2` | ❓ Unverified |
| UnnamedContract | unknown | mantle | `0x7eb047...81a9ae` | ❓ Unverified |
| UnnamedContract | unknown | mantle | `0x85079c...8b1f4e` | ❓ Unverified |
| UnnamedContract | unknown | mantle | `0x87dfa4...ed2aea` | ❓ Unverified |
| UnnamedContract | unknown | mantle | `0x89f74f...289abb` | ❓ Unverified |
| UnnamedContract | unknown | mantle | `0x8cc118...cd1e24` | ❓ Unverified |
| UnnamedContract | unknown | mantle | `0x8deab8...545df5` | ❓ Unverified |
| UnnamedContract | unknown | mantle | `0x8f145f...84de67` | ❓ Unverified |
| UnnamedContract | unknown | mantle | `0x90108d...da77ca` | ❓ Unverified |
| UnnamedContract | unknown | mantle | `0x901865...9d2809` | ❓ Unverified |
| UnnamedContract | unknown | mantle | `0x92351c...53e550` | ❓ Unverified |
| UnnamedContract | unknown | mantle | `0x9270a9...b0670b` | ❓ Unverified |
| UnnamedContract | unknown | mantle | `0x94b180...5a290b` | ❓ Unverified |
| UnnamedContract | unknown | mantle | `0x983820...8e081a` | ❓ Unverified |
| UnnamedContract | unknown | mantle | `0x98b799...bd4193` | ❓ Unverified |
| UnnamedContract | unknown | mantle | `0x99875e...143564` | ❓ Unverified |
| UnnamedContract | unknown | mantle | `0x9c338e...bb0ef8` | ❓ Unverified |
| UnnamedContract | unknown | mantle | `0x9ce150...f07084` | ❓ Unverified |
| UnnamedContract | unknown | mantle | `0x9d42f4...478fe8` | ❓ Unverified |
| UnnamedContract | unknown | mantle | `0x9f0239...03c8bf` | ❓ Unverified |
| UnnamedContract | unknown | mantle | `0xa01c3f...4a1242` | ❓ Unverified |
| UnnamedContract | unknown | mantle | `0xa1819b...ae61a1` | ❓ Unverified |
| UnnamedContract | unknown | mantle | `0xa1fde7...b3f7ef` | ❓ Unverified |
| UnnamedContract | unknown | mantle | `0xa236b7...895b4d` | ❓ Unverified |
| UnnamedContract | unknown | mantle | `0xa2a795...ef58eb` | ❓ Unverified |
| UnnamedContract | unknown | mantle | `0xa59ae6...41a326` | ❓ Unverified |
| UnnamedContract | unknown | mantle | `0xaae698...a88fbe` | ❓ Unverified |
| UnnamedContract | unknown | mantle | `0xab1f2b...a03459` | ❓ Unverified |
| UnnamedContract | unknown | mantle | `0xb3328a...ea2ac7` | ❓ Unverified |
| UnnamedContract | unknown | mantle | `0xb45610...549a68` | ❓ Unverified |
| UnnamedContract | unknown | mantle | `0xb9097b...8a08f0` | ❓ Unverified |
| UnnamedContract | unknown | mantle | `0xba68bd...2de063` | ❓ Unverified |
| UnnamedContract | unknown | mantle | `0xbb75fa...7ea6be` | ❓ Unverified |
| UnnamedContract | unknown | mantle | `0xbc3407...eb488a` | ❓ Unverified |
| UnnamedContract | unknown | mantle | `0xbe3835...549538` | ❓ Unverified |
| UnnamedContract | unknown | mantle | `0xbfa352...63283f` | ❓ Unverified |
| UnnamedContract | unknown | mantle | `0xc10d8a...cb9492` | ❓ Unverified |
| UnnamedContract | unknown | mantle | `0xc1cddf...6406fc` | ❓ Unverified |
| UnnamedContract | unknown | mantle | `0xc343b9...c99aaa` | ❓ Unverified |
| UnnamedContract | unknown | mantle | `0xc35e2e...1bf571` | ❓ Unverified |
| UnnamedContract | unknown | mantle | `0xc943ce...8c39bf` | ❓ Unverified |
| UnnamedContract | unknown | mantle | `0xcad889...2c2fc3` | ❓ Unverified |
| UnnamedContract | unknown | mantle | `0xcdece5...606ca7` | ❓ Unverified |
| UnnamedContract | unknown | mantle | `0xcee7b8...33c40f` | ❓ Unverified |
| UnnamedContract | unknown | mantle | `0xd173b4...c0838c` | ❓ Unverified |
| UnnamedContract | unknown | mantle | `0xd28c91...908634` | ❓ Unverified |
| UnnamedContract | unknown | mantle | `0xd40bac...e3ada7` | ❓ Unverified |
| UnnamedContract | unknown | mantle | `0xd5941f...d35bd2` | ❓ Unverified |
| UnnamedContract | unknown | mantle | `0xd7ceb9...fc081a` | ❓ Unverified |
| UnnamedContract | unknown | mantle | `0xd84a32...1f811a` | ❓ Unverified |
| UnnamedContract | unknown | mantle | `0xd9d455...56035e` | ❓ Unverified |
| UnnamedContract | unknown | mantle | `0xdad689...a647f4` | ❓ Unverified |
| UnnamedContract | unknown | mantle | `0xdc0771...d2208b` | ❓ Unverified |
| UnnamedContract | unknown | mantle | `0xdcb6d1...3efaee` | ❓ Unverified |
| UnnamedContract | unknown | mantle | `0xe064c5...0afa8e` | ❓ Unverified |
| UnnamedContract | unknown | mantle | `0xe2c2db...917986` | ❓ Unverified |
| UnnamedContract | unknown | mantle | `0xe34901...8be844` | ❓ Unverified |
| UnnamedContract | unknown | mantle | `0xe4779b...00c62b` | ❓ Unverified |
| UnnamedContract | unknown | mantle | `0xe4e53d...89ddd0` | ❓ Unverified |
| UnnamedContract | unknown | mantle | `0xe62619...02b597` | ❓ Unverified |
| UnnamedContract | unknown | mantle | `0xea0aad...93405c` | ❓ Unverified |
| UnnamedContract | unknown | mantle | `0xf1b4a1...e4cf6e` | ❓ Unverified |
| UnnamedContract | unknown | mantle | `0xf1eefa...76a4a3` | ❓ Unverified |
| UnnamedContract | unknown | mantle | `0xf259e6...0a54e8` | ❓ Unverified |
| UnnamedContract | unknown | mantle | `0xf30c8c...222024` | ❓ Unverified |
| UnnamedContract | unknown | mantle | `0xf50d60...00d49d` | ❓ Unverified |
| UnnamedContract | unknown | mantle | `0xf54f65...3616a4` | ❓ Unverified |
| UnnamedContract | unknown | mantle | `0xf9b603...91c0c4` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x067c71...ea47ca` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x0c89bc...2907aa` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x46c8d0...a3fa1b` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x4ac2cc...bee425` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x5bd512...326eaa` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x67ebb0...accb3e` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x70df54...c2ed88` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x79926e...410db0` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x803460...f2809b` | ❓ Unverified |
| UnnamedContract | unknown | base | `0xa9f1f8...680027` | ❓ Unverified |
| UnnamedContract | unknown | base | `0xad7e3e...878581` | ❓ Unverified |
| UnnamedContract | unknown | base | `0xdd5097...7a3545` | ❓ Unverified |
| UnnamedContract | unknown | base | `0xe89635...99cc13` | ❓ Unverified |
| UnnamedContract | unknown | base | `0xe946ab...ea39d0` | ❓ Unverified |
| UnnamedContract | unknown | base | `0xebda7f...068105` | ❓ Unverified |
| UnnamedContract | unknown | base | `0xfb0ad0...8f5585` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x028781...7fa131` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x03b485...227ff3` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x08ca91...85e388` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x119b94...4fd1a2` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x144a96...19a491` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x161f4b...0477f0` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x1b8605...9d0d42` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x20039e...51df38` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x24b9f1...4efe95` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x2d28ff...ac6c2f` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x33ab2c...b72b10` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x34d517...ecbf93` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x3717aa...3a611b` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x57da86...34a9c8` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x603d3f...8dead2` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x6a8324...cba1f1` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x6c2256...c20bc7` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x72343e...f2fcad` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x786980...d47c63` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x7e2395...aa2f55` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x7f0013...36e356` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x7f3bc4...185c5c` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x81dee5...f81f8c` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x941ec8...0a190c` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x9a0bb8...33ef1c` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x9b199f...49e0c0` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x9f74c1...41c0d1` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xacb89c...818730` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xb08af9...78abd8` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xb8d9f0...a3a2d9` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xc3392b...0686bb` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xc8b602...3e427c` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xcc97be...5c7bd7` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xcdcdf6...80613d` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xd3aaa3...d79e41` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xd7425f...843b26` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xd9e5c4...03134f` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xdc0771...d2208b` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xdcaa28...49cab6` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xdcf21e...6dc5e5` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xe2510e...25ddb4` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xe3469d...430ff2` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xe946ab...ea39d0` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xebda7f...068105` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xf3727a...6a0e94` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xf4fe03...2dd32a` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xfa0e19...a3afe2` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xfb8836...31ff78` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xfcf873...969110` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xfeaec8...2ae1c0` | ❓ Unverified |
| UnnamedContract | unknown | linea | `0x0b703a...3707c5` | ❓ Unverified |
| UnnamedContract | unknown | linea | `0x103bd3...578511` | ❓ Unverified |
| UnnamedContract | unknown | linea | `0x1434e4...8bcfd4` | ❓ Unverified |
| UnnamedContract | unknown | linea | `0x16397b...a8dd1c` | ❓ Unverified |
| UnnamedContract | unknown | linea | `0x213f44...44d00f` | ❓ Unverified |
| UnnamedContract | unknown | linea | `0x236eaa...ac79dc` | ❓ Unverified |
| UnnamedContract | unknown | linea | `0x337636...6c5212` | ❓ Unverified |
| UnnamedContract | unknown | linea | `0x369db6...a7d126` | ❓ Unverified |
| UnnamedContract | unknown | linea | `0x3782f9...25c7e8` | ❓ Unverified |
| UnnamedContract | unknown | linea | `0x381b76...0770c9` | ❓ Unverified |
| UnnamedContract | unknown | linea | `0x440ca0...f34020` | ❓ Unverified |
| UnnamedContract | unknown | linea | `0x4516a3...b17f2a` | ❓ Unverified |
| UnnamedContract | unknown | linea | `0x479c25...9e4beb` | ❓ Unverified |
| UnnamedContract | unknown | linea | `0x47b1bd...470ae8` | ❓ Unverified |
| UnnamedContract | unknown | linea | `0x47d141...637ae5` | ❓ Unverified |
| UnnamedContract | unknown | linea | `0x49b620...c79e8c` | ❓ Unverified |
| UnnamedContract | unknown | linea | `0x4ac2cc...bee425` | ❓ Unverified |
| UnnamedContract | unknown | linea | `0x50764c...dbf2a3` | ❓ Unverified |
| UnnamedContract | unknown | linea | `0x50efc7...726211` | ❓ Unverified |
| UnnamedContract | unknown | linea | `0x51ed2d...207723` | ❓ Unverified |
| UnnamedContract | unknown | linea | `0x55c7ac...6f2e48` | ❓ Unverified |
| UnnamedContract | unknown | linea | `0x55fa52...52235e` | ❓ Unverified |
| UnnamedContract | unknown | linea | `0x582b2e...fc2f8a` | ❓ Unverified |
| UnnamedContract | unknown | linea | `0x5b884c...63f190` | ❓ Unverified |
| UnnamedContract | unknown | linea | `0x5bc75b...a73e61` | ❓ Unverified |
| UnnamedContract | unknown | linea | `0x5cbe12...666d9a` | ❓ Unverified |
| UnnamedContract | unknown | linea | `0x62351b...a5f2b2` | ❓ Unverified |
| UnnamedContract | unknown | linea | `0x624658...c283ab` | ❓ Unverified |
| UnnamedContract | unknown | linea | `0x64cd4a...9e2fe2` | ❓ Unverified |
| UnnamedContract | unknown | linea | `0x66c02a...971872` | ❓ Unverified |
| UnnamedContract | unknown | linea | `0x6ff5e1...43f7f7` | ❓ Unverified |
| UnnamedContract | unknown | linea | `0x7769c1...3ea458` | ❓ Unverified |
| UnnamedContract | unknown | linea | `0x7bd79d...18483a` | ❓ Unverified |
| UnnamedContract | unknown | linea | `0x7c56da...bc88b3` | ❓ Unverified |
| UnnamedContract | unknown | linea | `0x848710...05a1bd` | ❓ Unverified |
| UnnamedContract | unknown | linea | `0x86a760...1ea7ed` | ❓ Unverified |
| UnnamedContract | unknown | linea | `0x875896...be5ef3` | ❓ Unverified |
| UnnamedContract | unknown | linea | `0x928732...88bc8d` | ❓ Unverified |
| UnnamedContract | unknown | linea | `0x94f2eb...acac07` | ❓ Unverified |
| UnnamedContract | unknown | linea | `0xa107b6...a689d7` | ❓ Unverified |
| UnnamedContract | unknown | linea | `0xa194fb...dd3a2e` | ❓ Unverified |
| UnnamedContract | unknown | linea | `0xa84860...256cd6` | ❓ Unverified |
| UnnamedContract | unknown | linea | `0xa86936...c17754` | ❓ Unverified |
| UnnamedContract | unknown | linea | `0xb92ada...8d6a92` | ❓ Unverified |
| UnnamedContract | unknown | linea | `0xba7b8a...00128a` | ❓ Unverified |
| UnnamedContract | unknown | linea | `0xbe4c2c...678204` | ❓ Unverified |
| UnnamedContract | unknown | linea | `0xbeec2b...a2241c` | ❓ Unverified |
| UnnamedContract | unknown | linea | `0xc7b2a2...e90a57` | ❓ Unverified |
| UnnamedContract | unknown | linea | `0xca57c2...5e24ce` | ❓ Unverified |
| UnnamedContract | unknown | linea | `0xcf2579...d4cdbb` | ❓ Unverified |
| UnnamedContract | unknown | linea | `0xcf7e00...2ba30e` | ❓ Unverified |
| UnnamedContract | unknown | linea | `0xd8428a...f1bce7` | ❓ Unverified |
| UnnamedContract | unknown | linea | `0xd90bbc...82e378` | ❓ Unverified |
| UnnamedContract | unknown | linea | `0xdaca52...e332d6` | ❓ Unverified |
| UnnamedContract | unknown | linea | `0xdb97db...7ecdfb` | ❓ Unverified |
| UnnamedContract | unknown | linea | `0xdc0771...d2208b` | ❓ Unverified |
| UnnamedContract | unknown | linea | `0xdd5097...7a3545` | ❓ Unverified |
| UnnamedContract | unknown | linea | `0xe3488f...a56246` | ❓ Unverified |
| UnnamedContract | unknown | linea | `0xe37f90...43a31d` | ❓ Unverified |
| UnnamedContract | unknown | linea | `0xe53fcc...42a19b` | ❓ Unverified |
| UnnamedContract | unknown | linea | `0xe6e947...785809` | ❓ Unverified |
| UnnamedContract | unknown | linea | `0xeba3f0...2dd278` | ❓ Unverified |
| UnnamedContract | unknown | linea | `0xef95f4...9d408d` | ❓ Unverified |
| UnnamedContract | unknown | linea | `0xf2801f...6e35c9` | ❓ Unverified |
| UnnamedContract | unknown | linea | `0xf8fe43...e843f5` | ❓ Unverified |
| UnnamedContract | unknown | linea | `0xff73a1...d5420a` | ❓ Unverified |
| UnnamedContract | unknown | scroll | `0x986c90...388e92` | ❓ Unverified |
| UnnamedContract | unknown | scroll | `0xc97c5e...a331b3` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [Secure3_zklink_Nova_2024.3.pdf](https://github.com/zkLinkProtocol/zklink-audit-report/blob/master/zkLink%20Nova/Secure3_zklink_Nova_2024.3.pdf) | Secure3 | Audit | 2024-03 | stale | Direct | contract_name | 148 | high |
| [ABDK_zkLink_Nova_2024.3.pdf](https://github.com/zkLinkProtocol/zklink-audit-report/blob/master/zkLink%20Nova/ABDK_zkLink_Nova_2024.3.pdf) | ABDK | Audit | 2024-03 | stale | Direct | contract_name | 149 | high |
| [Secure3_zkLink_Nova_mergeToken & bridgeUpdate_2024.4](https://github.com/zkLinkProtocol/zklink-audit-report/blob/master/zkLink%20Nova/Secure3_zkLink_Nova_mergeToken_2024.4.pdf) | Secure3 | Audit | 2024-04 | stale | Direct | contract_name | 20 | high |
| [ABDK_zkLink_Mergetoken_2024.7.pdf](https://github.com/zkLinkProtocol/zklink-audit-report/blob/master/zkLink%20Nova/ABDK_zkLink_Mergetoken_2024.7.pdf) | ABDK | Audit | 2024-07 | aging | Direct | contract_name | 22 | high |
| [Secure3_zkLink Nova Arbitrator Upgrade_2024.4](https://github.com/zkLinkProtocol/zklink-audit-report/blob/master/zkLink%20Nova/Secure3_zkLink%20Nova%20Arbitrator%20Upgrade_2024.4.pdf) | Secure3 | Audit | 2024-04 | stale | Direct | contract_name | 65 | high |
| [ABDK_zkLink_CostOptimisation_2024.6.pdf](https://github.com/zkLinkProtocol/zklink-audit-report/blob/master/zkLink%20Nova/ABDK_zkLink_CostOptimisation_2024.6.pdf) | ABDK | Audit | 2024-06 | aging | Direct | contract_name | 69 | high |
| [zkSync Era Governance Audit Report](https://www.openzeppelin.com/news/december-diff-and-governance-audit) | OpenZeppelin | Audit | 2024-01 | stale | Direct | contract_name | 24 | high |
| [ABDK_zkLink_CircuitsSmartContracts_2023.7.pdf](https://github.com/zkLinkProtocol/zklink-audit-report/blob/master/zkLink%20X/ABDK_zkLink_CircuitsSmartContracts_2023.7.pdf) | ABDK | Audit | 2023-07 | stale | Direct | contract_name | 120 | high |
| [ABDK_zkLink_CircuitsSmartContracts_2023.8.pdf](https://github.com/zkLinkProtocol/zklink-audit-report/blob/master/zkLink%20X/ABDK_zkLink_CircuitsSmartContracts_2023.8.pdf) | ABDK | Audit | 2023-08 | stale | Direct | contract_name | 120 | high |
| [ABDK_zkLink_Circuits_2023.2.pdf](https://github.com/zkLinkProtocol/zklink-audit-report/blob/master/zkLink%20X/ABDK_zkLink_Circuits_2023.2.pdf) | ABDK | Audit | 2023-02 | stale | Direct | n/a | 0 | n/a |
| [ABDK_zkLink_Solidity_2023.2.pdf](https://github.com/zkLinkProtocol/zklink-audit-report/blob/master/zkLink%20X/ABDK_zkLink_Solidity_2023.2.pdf) | ABDK | Audit | 2023-02 | stale | Direct | contract_name | 95 | high |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | [`0x9c6f15...6503fa`](./contracts/ethereum-1/0x9c6f151ff54b9820d4c54335369b76729e6503fa/) | NethPool | core_logic | $11,537,654.59 | Verified native implementation with $11,537,654.59 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0b703a...3707c5`](./contracts/ethereum-1/0x0b703aecf1ad4c053c15c49b08c94767f73707c5/) | ZkLinkToken | token | $513,860.70 | Verified native implementation with $513,860.70 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| mantle | [`0xf93a85...af9f32`](./contracts/mantle-5000/0xf93a85d53e4af0d62bdf3a83ccfc1ecf3eaf9f32/) | LUSDStablecoin | token | $471.88 | Verified native implementation with $471.88 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| mantle | [`0x49397a...f20099`](./contracts/mantle-5000/0x49397ac9cb061152b770b1d274a5682155f20099/) | TokenMintERC20Token | token | $417.89 | Verified native implementation with $417.89 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| mantle | [`0x3e65ac...deb474`](./contracts/mantle-5000/0x3e65ac1dd4938e02301c4869d3043903f5deb474/) | CoinToken | token | $4.11 | Verified native implementation with $4.11 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x2b763f...680863`](./contracts/ethereum-1/0x2b763f4f1053980ca71266dd55dafdbbd0680863/) | ELVault | core_logic | $0.00 | Verified native implementation with $0.00 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x2dad78...523449`](./contracts/ethereum-1/0x2dad78e21bb2315d77a4ca07cb000fd8e4523449/) | AggregatorV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| mantle | [`0x8551d2...00fdb2`](./contracts/mantle-5000/0x8551d2141a755ed8ca3a9e4bd9977dadf300fdb2/) | Airdrop | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x926cf8...4bedf1`](./contracts/ethereum-1/0x926cf8c6c07beaba0ecf55c9c41443614c4bedf1/) | Array | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x236962...740bd6`](./contracts/ethereum-1/0x2369624dba451447d629687ab660b6dfd3740bd6/) | BeaconOracle | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| linea | [`0x139abb...5c22e1`](./contracts/linea-59144/0x139abb67a33f6ddcf00fbab5e321184f4e5c22e1/) | BrokerAccepter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| mantle | [`0x6154dc...8ed3d8`](./contracts/mantle-5000/0x6154dce92267af35c733dba5d20e36ee3f8ed3d8/) | ComplexOrderRouter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x19e488...8f9e57`](./contracts/ethereum-1/0x19e488138311f382c3d3802a2a1deee6a28f9e57/) | ConsensusVault | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1349a8...7b6610`](./contracts/ethereum-1/0x1349a8d352b1971cbebeacf55fb75526f47b6610/) | CumulativeMerkleDrop | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x178b74...f4e78a`](./contracts/ethereum-1/0x178b7401c32a4aab5ef128458888779eaaf4e78a/) | DeployProxy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x38260c...28e70b`](./contracts/ethereum-1/0x38260cbdd0adceab714335a0e3937ac35e28e70b/) | ELReward | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x7699fb...eeec7b`](./contracts/ethereum-1/0x7699fb48e19bc72e80a3b40d7e88c42256eeec7b/) | ELRewardFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x6e8104...766fca`](./contracts/ethereum-1/0x6e8104bc3e58296934984e15df1879537c766fca/) | ELVaultFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| linea | [`0x1b1928...7d1206`](./contracts/linea-59144/0x1b19287ce898217d937571eaba97ec50f27d1206/) | ExecutorFacet | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| mantle | [`0x391536...a377ca`](./contracts/mantle-5000/0x391536d06480e554cfa60f9e2be0f3bbe5a377ca/) | FastPriceFeed | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x16397b...a8dd1c`](./contracts/ethereum-1/0x16397b59fa555cd75861127523918a185da8dd1c/) | FastSettlementMiddleware | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xe5da2b...591d78`](./contracts/ethereum-1/0xe5da2bc7658ca9d160d0352e5cb2df1339591d78/) | FastSettlementOperator | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| linea | [`0x176211...1ee1ff`](./contracts/linea-59144/0x176211869ca2b568f2a7d4ee941e073a821ee1ff/) | FiatTokenV2_1 | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| linea | [`0xb1d035...12e3cb`](./contracts/linea-59144/0xb1d0354063527e4426c4becbdb75fe0fb112e3cb/) | GettersFacet | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x301365...6da6a5`](./contracts/ethereum-1/0x301365f7334be7e4e32ef4a1d3040c9a476da6a5/) | HashConsensus | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| mantle | [`0x3c4de8...27090e`](./contracts/mantle-5000/0x3c4de8fb37055500bb3d18eae8dd0dfff527090e/) | KlpManager | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| mantle | [`0x57c90d...258c1e`](./contracts/mantle-5000/0x57c90dff593d045f00d56afd2ef00cf7b4258c1e/) | KTX | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| linea | [`0x05d437...b960fd`](./contracts/linea-59144/0x05d43713b7e333d2d54be65ce3b5f3698ab960fd/) | L2MessageService | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| linea | [`0x199810...5a5521`](./contracts/linea-59144/0x1998108fa7993ea67a8b1a99d392a3288c5a5521/) | L2USDCBridge | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x116d63...3d5f6d`](./contracts/ethereum-1/0x116d631583026799d61a284518762cf3923d5f6d/) | LargeStakeOracle | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x87fdec...4d9a7b`](./contracts/ethereum-1/0x87fdece127aa31f4708975b49a3450d7544d9a7b/) | LargeStaking | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x4bf7aa...5173bb`](./contracts/ethereum-1/0x4bf7aab60d30d17bdebc4b22ca008fe3bb5173bb/) | LiquidStaking | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x9dc7e1...b97c5b`](./contracts/ethereum-1/0x9dc7e196092dac94f0c76cfb020b60fa75b97c5b/) | LsdETH | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| mantle | [`0xeb0c39...7956ce`](./contracts/mantle-5000/0xeb0c390b1fb2b63d5ed257b822a1cbbff87956ce/) | METHL2 | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| mantle | [`0x0ce206...0a5b2d`](./contracts/mantle-5000/0x0ce206b1d2aecb40d3abb667c5f92f197a0a5b2d/) | MintableBaseToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| mantle | [`0x532e52...94163f`](./contracts/mantle-5000/0x532e522964cba02be18f767e4c0e39188894163f/) | MJAirdrop | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| linea | [`0x04bf7c...14d716`](./contracts/linea-59144/0x04bf7cf48a68dfc744fc22662b90e2ecaf14d716/) | MultiCall | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x2eb710...9820f9`](./contracts/ethereum-1/0x2eb71040c0a24fe10194aec2f0a8b264ae9820f9/) | MultiHashConsensus | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xc65720...c7789a`](./contracts/ethereum-1/0xc6572019548dfeba782ba5a2093c836626c7789a/) | NETH | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x520b82...6dabd1`](./contracts/ethereum-1/0x520b826e8d0fdfd8e0cdb1b2243f6648cc6dabd1/) | NodeDaoTreasury | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x857bf0...14d948`](./contracts/ethereum-1/0x857bf02b1f5fd85e064e6726658ea1864a14d948/) | NodeDAOView | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x37d815...c38cf1`](./contracts/ethereum-1/0x37d815d5c96d4d9807b5b6e8294343dbb4c38cf1/) | NodeOperatorRegistry | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x385d89...93b4e3`](./contracts/ethereum-1/0x385d894a946be929cc1ba1a26331fd4ccd93b4e3/) | ObeliskCustody | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x934cbd...ebad42`](./contracts/ethereum-1/0x934cbd2af86c074478a1fe1d10d2c5d4adebad42/) | ObeliskNetwork | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xb1e128...de0e3c`](./contracts/ethereum-1/0xb1e12802831da99d2d47b6a55049d69bf7de0e3c/) | OBTC | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x5be163...3be65f`](./contracts/ethereum-1/0x5be1630b4241ebb479b2dd3a1917e3c4253be65f/) | OBTCOFTAdapter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x39b5dd...64ecb4`](./contracts/ethereum-1/0x39b5dd701d1ddc729a7a7a9d6e3941aa5264ecb4/) | OperatorSlash | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| mantle | [`0x548f29...7fd6f9`](./contracts/mantle-5000/0x548f29394c98e92789e5f9528cbcead0d87fd6f9/) | OrderBook | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x7f58f8...3d24b6`](./contracts/ethereum-1/0x7f58f8d540324a7a895794bb819f2d635c3d24b6/) | OYBTCB2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x587fa5...c0f887`](./contracts/ethereum-1/0x587fa54a1682ae73ecc709e1439d096ff0c0f887/) | OYBTCBBN | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xc47a9d...2ce338`](./contracts/ethereum-1/0xc47a9dce0192e0d82c0b6f8f75c1881df32ce338/) | OYBTCFBTC | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| mantle | [`0x4b1dbc...03e347`](./contracts/mantle-5000/0x4b1dbc2d67980996e7e10bc1a55c2be0e703e347/) | PositionManager | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| manta | [`0x028781...7fa131`](./contracts/manta-169/0x028781ceed4a2264466ef5ab73c91603087fa131/) | Proxy | proxy | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| mantle | [`0x650e88...1d9e87`](./contracts/mantle-5000/0x650e8847aa247f189de852da1c821a13c51d9e87/) | Reader | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| mantle | [`0x0c4c75...11c676`](./contracts/mantle-5000/0x0c4c754df42cef3aaaff414dbdd321313d11c676/) | ReferralStorage | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| mantle | [`0x207d39...d688ca`](./contracts/mantle-5000/0x207d39314707001ae36f12335dd8b1f65cd688ca/) | RewardRouter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| mantle | [`0x1d2941...ae7146`](./contracts/mantle-5000/0x1d29411f42bed70d1567b4b6b4638ee46bae7146/) | RewardTracker | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xcea368...8ded56`](./contracts/ethereum-1/0xcea3681131dd151ee72a5c8dbba555cb8b8ded56/) | RNethOFTAdapter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| linea | [`0xfbf795...151e7d`](./contracts/linea-59144/0xfbf795ead640e261868eb200ed2850eb9c151e7d/) | Root | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| mantle | [`0x8970c2...0d2b44`](./contracts/mantle-5000/0x8970c235a4e4d8e0ae5c340549efda5db20d2b44/) | Router | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| mantle | [`0x949cb5...1eca7c`](./contracts/mantle-5000/0x949cb557982859fe36adf84eeac535dde11eca7c/) | StakedKlp | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| linea | [`0x18703d...866e4c`](./contracts/linea-59144/0x18703d0117121f6a7476221e2afc57faf9866e4c/) | StaticMetadataService | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x36f57f...a16e16`](./contracts/ethereum-1/0x36f57f0379cb36e54248d219954274ee86a16e16/) | StrategyManager | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0fdc28...dea2c6`](./contracts/ethereum-1/0x0fdc28e64772a70109d10fd068f859cfa7dea2c6/) | SyncL2TxHashRelayer | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| mantle | [`0x63a14c...47574e`](./contracts/mantle-5000/0x63a14cc9baa8fd9da49c42ff2f8a3da4b147574e/) | Timelock | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x6fdfd0...6d74a7`](./contracts/ethereum-1/0x6fdfd096687a2d7b83e4afdc05c43519166d74a7/) | TokenAuthority | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| linea | [`0x0ffcbe...03444e`](./contracts/linea-59144/0x0ffcbe98041b77bd87c38e2d0a6b473e7703444e/) | TokenBridge | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x0c0404...f1e821`](./contracts/base-8453/0x0c04046546c46652969aa9eb4bfb758cfdf1e821/) | UpgradeGatekeeper | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x3ad85a...99f700`](./contracts/ethereum-1/0x3ad85a55904b8ef62f30b5811717d6982a99f700/) | VaultManager | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x13bc53...698a69`](./contracts/ethereum-1/0x13bc536722779508ef5d9994e2fa616553698a69/) | VNFT | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| linea | [`0x2132ff...fd9542`](./contracts/linea-59144/0x2132ff9b5dac4a114e02112c20ca81b0d2fd9542/) | WithdrawalFinalizer | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x50cd55...23fddd`](./contracts/ethereum-1/0x50cd55e21d0621d4096c71d73e785346dd23fddd/) | WithdrawalRequest | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x7f431a...67041b`](./contracts/ethereum-1/0x7f431acc894b2bae481efe7ce1e88bc7f167041b/) | WithdrawOracle | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x120d79...444038`](./contracts/ethereum-1/0x120d79adea9693786be90d5ffe8af32269444038/) | ZKLCRelease | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 183 |
| upstream | 16 |
| standard_library | 23 |
| needs_review | 221 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=10
- Match method counts: extraction_exact=832

Zero-match audit list:

- [2010] ABDK_zkLink_Circuits_2023.2.pdf

Fork inheritance lineage and inherited audits are included when available.
