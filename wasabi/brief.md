# Agentic Audit Brief: Wasabi

⚠️ Lifecycle status: DECLINING - TVL dropped 92.0% over 90 days

## Project Overview

- Project: Wasabi (`wasabi`)
- Website: [https://app.wasabi.xyz/p/LKHR9](https://app.wasabi.xyz/p/LKHR9)
- Lifecycle: declining (Tier 1, rugged)
- Generated: 2026-06-11T04:06:35.256Z
- Pipeline run: v2-pipeline-2026-06-11-5b3b54-026d
- Chains: base, berachain, blast, ethereum
- Contract surface: 83 unique implementations (445 raw deployments)
- DeFi Llama TVL: $1,307,017.00
- On-chain TVL (included contracts): $6,129,835.09
- TVL by chain: Base $3,347,651.86 | Ethereum $2,030,226.48 | Blast $744,661.47 | Berachain $7,295.28

## Project Description

Wasabi is a decentralized leverage trading protocol for taking long and short positions on long-tail assets, using vault-based liquidity and oracle-driven pricing. The project also includes earning/native-yield functionality and should include Solana when reporting project-level chains or TVL.

### Architecture

The perpetual pools rely on vaults for liquidity, with vaults depositing into pools and earning fees. Routers and swappers facilitate asset conversions for entering/exiting positions, while account abstraction factories simplify user interactions across all families.

## Audit Coverage Summary

- Verified implementations audited: 20/54 (37.0%)
- Verified + Unaudited implementations: 34
- Verified by bytecode match: 0
- Unverified implementations: 29
- Unique implementations: 83
- Raw deployments: 445
- Audits discovered: 8
- Scoreable audits (matched contracts): 8
- ASD (verified + unaudited TVL): $5,478,153.19
- Latest audit: 2024-11 (aging)
- Staleness: 0 fresh, 3 aging, 5 stale, 0 unknown
- Tier 1 coverage: 11.1% (Sherlock)
- Note: This protocol is classified as [declining]. ASD of $5,478,153.19 represents exposure in a protocol with declining activity.

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| Zellic | Tier 2 | 14 | 25.9% | 2024-10 |
| Foobar | Tier 2 | 11 | 20.4% | 2023-12 |
| Sherlock | Tier 1 | 6 | 11.1% | 2024-11 |
| unknown | Tier 2 | 3 | 5.6% | 2023-04 |

## Contract Surface

### ✅ Verified + Audited (20)

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| WasabiVault | core_logic | base | 161 deployments: ethereum `0x0db381...747e12`; ethereum `0x1831f6...a61ae2`; ethereum `0x1becea...22e3db`; ethereum `0x1ca1fc...8a7aba`; ethereum `0x263729...eb8c03`; ethereum `0x2a7693...62d63b`; ethereum `0x2f49de...17d301`; ethereum `0x34f0a8...edf77d`; ethereum `0x364cb3...03a1ed`; ethereum `0x36b9bc...c5759a`; ethereum `0x39eed0...a16ee2`; ethereum `0x3f631b...5caa8d`; ethereum `0x491caf...b62669`; ethereum `0x4df48f...44c8e2`; ethereum `0x519db1...c026af`; ethereum `0x551618...5b23ca`; ethereum `0x5609ef...10d585`; ethereum `0x5bac8a...2a8a64`; ethereum `0x608889...34468e`; ethereum `0x63628b...7a84b8`; ethereum `0x64b021...99c197`; ethereum `0x65aa8f...59991e`; ethereum `0x6a4600...f54bfa`; ethereum `0x6b4192...ce9736`; ethereum `0x6e9e3b...3b076e`; ethereum `0x73ebff...05b8e9`; ethereum `0x75f327...e63d4f`; ethereum `0x79356b...929162`; ethereum `0x7d8c76...67ac53`; ethereum `0x7dd8f2...248319`; ethereum `0x7f1cec...d1681a`; ethereum `0x800187...9bd34a`; ethereum `0x80f035...93ee9b`; ethereum `0x832038...d07c18`; ethereum `0x8c71ba...e3ee10`; ethereum `0x8e26da...0de32d`; ethereum `0x8e3fdd...ebcf2f`; ethereum `0x94df93...5311a2`; ethereum `0x96c243...de2020`; ethereum `0x9720f7...a84fa4`; ethereum `0x9a8604...221cfd`; ethereum `0x9b6eee...2d8bea`; ethereum `0xa2a9d2...3873b9`; ethereum `0xa4d274...a8ebf6`; ethereum `0xa4d853...19f7a7`; ethereum `0xa54151...dd527e`; ethereum `0xa6354e...55dadf`; ethereum `0xa9d119...9771d7`; ethereum `0xad99d6...179c8d`; ethereum `0xb3324d...e56fb7`; ethereum `0xb586b3...62abd8`; ethereum `0xb6463f...39f113`; ethereum `0xbaaa2a...ec5c7d`; ethereum `0xc7995a...dece5b`; ethereum `0xc7d3fa...23652b`; ethereum `0xc883de...141c1a`; ethereum `0xcd1953...5f7d53`; ethereum `0xd46c77...563a1d`; ethereum `0xd4f062...7ef118`; ethereum `0xd7738f...fe2530`; ethereum `0xd8bdfe...80021e`; ethereum `0xdd5c60...fe058e`; ethereum `0xe29e74...8f6f4b`; ethereum `0xe6238f...b21b76`; ethereum `0xe8c96f...513de9`; ethereum `0xed5179...f1895b`; ethereum `0xed6f77...4ab80a`; ethereum `0xf6040c...da07e9`; ethereum `0xf7855f...ae8153`; base [`0x00d7c8...990ea1`](./contracts/base-8453/0x00d7c86c29f11206cae7f30951047bd278990ea1/); base `0x04acd5...0f5d30`; base `0x091a22...862eda`; base `0x0da575...6bb12b`; base `0x0e54d3...8f0939`; base `0x114073...da64dd`; base `0x11a030...8fc212`; base `0x12c9de...f9cf49`; base `0x181dc3...cbeb13`; base `0x197934...181313`; base `0x19c804...c01e08`; base `0x1e5f25...aa3915`; base `0x215c8d...f584ba`; base `0x21aaaa...09189e`; base `0x228dca...6d192f`; base `0x277c83...ce3ddd`; base `0x2a3c70...f9b442`; base `0x2d638c...c54f16`; base `0x2eef82...52ceaa`; base `0x313409...0b8b2d`; base `0x3733b6...dad959`; base `0x38ba55...0d9865`; base `0x38dc85...384939`; base `0x3b5587...1cd8ce`; base `0x3bc860...7f9792`; base `0x3edc1f...f3863f`; base `0x3f47af...d089af`; base `0x42011d...2e695e`; base `0x4bd3c9...e3765b`; base `0x4e8fb8...eb2a2f`; base `0x4eeaed...df99f6`; base `0x50afcb...874687`; base `0x52c88e...7b2a40`; base `0x542b5d...93b191`; base `0x55dcda...1af8c2`; base `0x5955cf...a8cb60`; base `0x5c9258...9806b0`; base `0x5caa33...6c1c2e`; base `0x5f164b...1922da`; base `0x6378a7...142afd`; base `0x65d8f6...7e94d2`; base `0x6655cf...160f66`; base `0x699cbf...2dba2c`; base `0x70b808...4f979c`; base `0x74b1e4...39780d`; base `0x76106b...364a95`; base `0x7daa6c...880d3b`; base `0x7e7d9a...869c94`; base `0x82ff77...61dfbe`; base `0x837277...ec208c`; base `0x8379dc...285374`; base `0x87b416...ac459e`; base `0x88e23d...2012a3`; base `0x893f93...de2c89`; base `0x8d1f90...601009`; base `0x9a9298...16ea10`; base `0x9c4a49...265057`; base `0xa10f4d...06070f`; base `0xa34800...464f80`; base `0xa3a575...470fb2`; base `0xa3ae97...c2a188`; base `0xabb566...c3a9d8`; base `0xac4550...fb3b8a`; base `0xadac74...b86a98`; base `0xaec98b...bd9dd3`; base `0xb1a597...0bd0c4`; base `0xbcc889...058117`; base `0xbf6668...629cc4`; base `0xc62697...c8970f`; base `0xc84879...1df3e3`; base `0xc857bc...fb4240`; base `0xc8bd38...16b5bb`; base `0xcc3974...cdbcf3`; base `0xcc8d0c...4e6a14`; base `0xcddb2f...58cc8d`; base `0xcfd04f...a8eb6c`; base `0xd7438e...71d1ac`; base `0xd76dcb...1af9a1`; base `0xe33cc6...5372c5`; base `0xe36530...288ca4`; base `0xe6ebfb...a3aab8`; base `0xe8f53b...8a61bb`; base `0xea3952...50cdab`; base `0xeb55a1...3fd4d0`; base `0xeffe2b...3cea2f`; base `0xf2e381...ed1786`; base `0xf50c66...db1059`; base `0xfb39f4...9cbf8e`; berachain `0x0ebddd...be4e9c`; berachain `0x433d1f...e88e82`; berachain `0xa31342...7100d1`; berachain `0xec0c23...806ad5` | ✅ Audited |
| BlastVault | core_logic | blast | 25 deployments: blast [`0x09c885...33082a`](./contracts/blast-81457/0x09c885de423eab752bfead9de203c9fe8c33082a/); blast `0x14f86c...f0d13a`; blast `0x18412f...a876b7`; blast `0x1e046b...daf0c8`; blast `0x237e60...f80144`; blast `0x2cb60a...0acce2`; blast `0x3336f1...ae1558`; blast `0x3563b4...8f9e9a`; blast `0x3ccdbd...e768ad`; blast `0x4f01f2...b6b551`; blast `0x5c0f73...89b5a7`; blast `0x616afd...103558`; blast `0x6b4d37...19303c`; blast `0x7274aa...e7fe81`; blast `0x73ec6a...ed9d74`; blast `0x7eda4a...cacccf`; blast `0x9db922...a64cba`; blast `0x9e31ef...c57209`; blast `0x9eea5b...48be22`; blast `0xba74ab...d46c1a`; blast `0xc80615...e93014`; blast `0xcc082c...0d7ab5`; blast `0xcc3eed...56d34a`; blast `0xce979f...d4de4d`; blast `0xf2abb5...a6af53` | ✅ Audited |
| WasabiShortPool | core_logic | berachain | 27 deployments: ethereum `0x0b9f9e...9ada57`; ethereum `0x0fdc7b...30d8ff`; ethereum `0x1536f7...a3662b`; ethereum `0x1888f9...d46176`; ethereum `0x41247b...f78fad`; ethereum `0x44ba62...96559e`; ethereum `0x5bb9e0...088c60`; ethereum `0x61d0df...5ebe12`; ethereum `0x62d254...9bf842`; ethereum `0x76e8f3...279499`; ethereum `0x774835...bf8b32`; ethereum `0x8826d2...3cbc96`; ethereum `0x8ea384...b13277`; ethereum `0x923612...9312f2`; ethereum `0x96ce21...137f78`; ethereum `0xbc07db...69cbbe`; ethereum `0xc905de...b7dca5`; ethereum `0xcb8d3c...e8a2bb`; ethereum `0xcc2a29...e26bee`; ethereum `0xd5a09a...33ae95`; ethereum `0xea9a83...ca647c`; ethereum `0xf22b8d...64aafa`; ethereum `0xfb71f0...490c4a`; ethereum `0xfc55a2...28006b`; base `0x8bdec8...c624a6`; berachain [`0x00b6c4...98e7af`](./contracts/berachain-80094/0x00b6c4e0d058d726316ae1666e353ec72598e7af/); berachain `0x3ee6c6...0df1ee` | ✅ Audited |
| BlastShortPool | core_logic | blast | [`0x030107...c10c3a`](./contracts/blast-81457/0x0301079dabdc9a2c70b856b2c51aca02bac10c3a/) | ✅ Audited |
| BlastLongPool | core_logic | blast | [`0x046299...1ed355`](./contracts/blast-81457/0x046299143a880c4d01a318bc6c9f2c0a5c1ed355/) | ✅ Audited |
| AddressProvider | registry | ethereum | 9 deployments: ethereum [`0x2b0434...15ee72`](./contracts/ethereum-1/0x2b04347413918588b81782cc446524354a15ee72/); ethereum `0x409fb5...d075c4`; ethereum `0xdabc80...8e8c93`; ethereum `0xf74748...081828`; base `0xfc55ab...f9252f`; berachain `0x339fb3...619c0c`; berachain `0x8b03c6...75cf1f`; blast `0x668736...933cca`; blast `0x6c3194...94d48f` | ✅ Audited |
| DebtController | governance | base | 6 deployments: ethereum `0xfbc94e...1246d1`; ethereum `0xfe7b8f...ee60c2`; base [`0x2182b5...b84684`](./contracts/base-8453/0x2182b5532d8eb4b614031ac68924975100b84684/); berachain `0x93f287...9350f9`; berachain `0xfae69f...d8558f`; blast `0xe3f3dc...cce0ac` | ✅ Audited |
| ERC20WasabiPool | core_logic | ethereum | [`0x3fbf4f...d93eed`](./contracts/ethereum-1/0x3fbf4fd788b276b47e121eb58a5e6f6b8ad93eed/) | ✅ Audited |
| ETHWasabiPool | core_logic | ethereum | [`0x046299...1ed355`](./contracts/ethereum-1/0x046299143a880c4d01a318bc6c9f2c0a5c1ed355/) | ✅ Audited |
| MultiReader | unknown | blast | [`0xd4e31c...39a018`](./contracts/blast-81457/0xd4e31cea708b0125f05fb9b9d25cd1263339a018/) | ✅ Audited |
| PerpManager | governance | berachain | 16 deployments: ethereum `0x2eb99d...55910b`; ethereum `0x3461ae...56eee2`; ethereum `0x7973cb...a96952`; ethereum `0x7c4783...7c740a`; ethereum `0xba5c58...8d2683`; ethereum `0xba8724...d69375`; ethereum `0xc0b01a...010e7d`; ethereum `0xff9f87...4d39dc`; base `0x295d89...273815`; base `0xec3e4e...f7d70e`; berachain [`0x19c804...c01e08`](./contracts/berachain-80094/0x19c804aa2782561ff03ee3b18f3ca50975c01e08/); berachain `0x1c4a80...048b24`; berachain `0x5c285d...b6dd81`; berachain `0xb73daa...cbf220`; blast `0x5c4a1f...1e41a2`; blast `0xff2cdb...7cc268` | ✅ Audited |
| PoolAskVerifier | core_logic | ethereum | [`0xe3f3dc...cce0ac`](./contracts/ethereum-1/0xe3f3dca2bd68cbd34b58cfc3bcd109998fcce0ac/) | ✅ Audited |
| PoolBidVerifier | core_logic | ethereum | [`0x668736...933cca`](./contracts/ethereum-1/0x66873693e8b125dbea46274173b0d6dcd1933cca/) | ✅ Audited |
| Signing | unknown | ethereum | [`0xd3bb84...6e6094`](./contracts/ethereum-1/0xd3bb8475c30fd70675f6250fb725e30b3a6e6094/) | ✅ Audited |
| WasabiConduit | unknown | ethereum | 2 deployments: ethereum [`0x9e31ef...c57209`](./contracts/ethereum-1/0x9e31ef400c74630ab50066dd64c29c1f4fc57209/); ethereum `0xf29a66...fff856` | ✅ Audited |
| WasabiLongPool | core_logic | ethereum | 22 deployments: ethereum [`0x000728...fbf1cf`](./contracts/ethereum-1/0x000728488ae4e80b2ed7c3a06462bdeab5fbf1cf/); ethereum `0x023afc...6a6078`; ethereum `0x095c34...5599d3`; ethereum `0x17d163...db5c3d`; ethereum `0x3a2774...e4fd97`; ethereum `0x45a933...aac7cd`; ethereum `0x7041ce...7f3e95`; ethereum `0x7f5451...e6cbc8`; ethereum `0x8d9040...b41b59`; ethereum `0x8e19c0...2ddc04`; ethereum `0x94cf96...b10c51`; ethereum `0x97eea3...ab40f7`; ethereum `0x995c0a...b8518b`; ethereum `0xa5a645...ac7b96`; ethereum `0xab1644...5df9cb`; ethereum `0xc24f58...656b51`; ethereum `0xcda7ce...c8c0ca`; ethereum `0xcf41e5...b075dd`; ethereum `0xd2439d...165ffe`; ethereum `0xd4a321...ae430d`; base `0xffdf46...616543`; berachain `0x1c75bd...64801d` | ✅ Audited |
| WasabiOption | unknown | ethereum | [`0xfc68f2...2e18a0`](./contracts/ethereum-1/0xfc68f2130e094c95b6c4f5494158cbeb172e18a0/) | ✅ Audited |
| WasabiPoolFactory | registry | ethereum | [`0x8e2b50...961e40`](./contracts/ethereum-1/0x8e2b50413a53f50e2a059142a9be060294961e40/) | ✅ Audited |
| WasabiRouter | adapter | ethereum | 13 deployments: ethereum [`0x08aad5...72ae33`](./contracts/ethereum-1/0x08aad56f494d705eaee20185e02996d5be72ae33/); ethereum `0x0b38cb...5f437e`; ethereum `0x1b362e...e046b7`; ethereum `0x33d2ac...77ee9a`; ethereum `0x77abb6...63dbf4`; ethereum `0x96b10b...a63f23`; ethereum `0xe5312d...a564f9`; ethereum `0xee5c45...aac03b`; base `0x892927...9aa03c`; base `0xfae69f...d8558f`; berachain `0x3e1b86...a014d9`; berachain `0x760d9c...b52d64`; berachain `0x7864d8...a4b237` | ✅ Audited |
| WasabiStructs | unknown | ethereum | [`0x8f2885...99dcd3`](./contracts/ethereum-1/0x8f2885e85a59782197024306483cceae7b99dcd3/) | ✅ Audited |

### ⚠️ Verified + Unaudited (34)

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| WasabiVaultRecoveryV1 | core_logic | base | 21 deployments: ethereum `0x10432b...7bfe71`; ethereum `0x127d36...74820a`; ethereum `0x630ed8...d61397`; ethereum `0x7d7bb4...389e8f`; ethereum `0x8d48b8...61e153`; ethereum `0xb533c6...0289f0`; ethereum `0xb86510...ceaba8`; ethereum `0xd2502e...f1c1b4`; base [`0x078b93...ac94fc`](./contracts/base-8453/0x078b931f7759ec09d74dd31316c610e09aac94fc/); base `0x197d5c...7e4a18`; base `0x1c4a80...048b24`; base `0x833fd9...2766b6`; base `0x95c81f...97fe95`; base `0xb152e9...1ad8c9`; base `0xb8da93...7239a0`; base `0xe6c109...9962a2`; berachain `0x42b604...a7a81f`; berachain `0xc95ab9...8afa1b`; berachain `0xd94821...9c40fe`; blast `0x4bed2a...f24855`; blast `0x8e2b50...961e40` | ⚠️ Unaudited |
| BeraLongPool | core_logic | berachain | [`0x0da575...6bb12b`](./contracts/berachain-80094/0x0da575d3edd4e3ee1d904936f94ec043c06bb12b/) | ⚠️ Unaudited |
| AaveStrategy | operational_periphery | base | 4 deployments: ethereum `0x1c1efa...fcd548`; ethereum `0x997904...448f67`; ethereum `0xc3f7e6...1543d2`; base [`0x023d35...537fcf`](./contracts/base-8453/0x023d357d04f2d024993f6c002837ed3195537fcf/) | ⚠️ Unaudited |
| BalanceChecker | unknown | blast | [`0xe668de...fcb0f0`](./contracts/blast-81457/0xe668de8d7d6933c47409b2bc14d5d08daefcb0f0/) | ⚠️ Unaudited |
| BalancerTokenInfo | token | berachain | [`0xc84879...1df3e3`](./contracts/berachain-80094/0xc84879ac01794fc3bab26b5167e3c287bd1df3e3/) | ⚠️ Unaudited |
| BeraVault | core_logic | berachain | 6 deployments: berachain [`0x215c8d...f584ba`](./contracts/berachain-80094/0x215c8d1ab5bcaf172feb7f4b4cf618973af584ba/); berachain `0x4c2142...bb1450`; berachain `0x4ed9e4...d6a413`; berachain `0x8c6506...d8cf76`; berachain `0xb93219...a3237d`; berachain `0xeac928...d46398` | ⚠️ Unaudited |
| BT404NFTWrapped | token | blast | [`0xb0a19f...57870c`](./contracts/blast-81457/0xb0a19fa556ab92e51ea7969ef5fefef5a357870c/) | ⚠️ Unaudited |
| BT404Token | token | blast | [`0xc8d8d8...73c699`](./contracts/blast-81457/0xc8d8d820f88df3bd48c4f8e95bca3b994b73c699/) | ⚠️ Unaudited |
| CappedVaultCompetitionDepositor | core_logic | berachain | 2 deployments: berachain [`0x97090d...2a9e84`](./contracts/berachain-80094/0x97090d4ac726d6105e0c4b522e9234c0392a9e84/); berachain `0xdee9f9...b55f18` | ⚠️ Unaudited |
| Disperse | unknown | berachain | [`0x2bf4e5...fbc8bb`](./contracts/berachain-80094/0x2bf4e5deea48d66226fc25191a01e18378fbc8bb/) | ⚠️ Unaudited |
| ERC1155CreatorImplementation | token | ethereum | [`0x2d850f...54d165`](./contracts/ethereum-1/0x2d850f76c671aa2e1c1892a0644c115eb254d165/) | ⚠️ Unaudited |
| ERC1967Proxy | proxy | berachain | 9 deployments: ethereum `0x8e0edf...d5afc0`; base `0x851fc7...1b1bf2`; base `0xa456c7...7da37c`; base `0xbdae5d...b248aa`; base `0xbfea82...505188`; base `0xc69ada...54aa1b`; base `0xfc81df...3369fe`; berachain [`0x51abc0...86fb61`](./contracts/berachain-80094/0x51abc06f452b4ac625eb10315238b8cf7186fb61/); berachain `0x8c118e...1a68c4` | ⚠️ Unaudited |
| ERC721CreatorImplementation | token | ethereum | [`0x0cc347...142467`](./contracts/ethereum-1/0x0cc3471d024250c7661003063aa5cc3d2c142467/) | ⚠️ Unaudited |
| ExactOutSwapper | adapter | base | 10 deployments: ethereum `0x972e33...e8dd2c`; ethereum `0x9f2781...f3e1ac`; base [`0x3d1c97...4de11b`](./contracts/base-8453/0x3d1c97fa08a23a15f56fcca7599b0b2a3a4de11b/); base `0x457c7b...4f9773`; base `0x5998fa...632539`; base `0xa5ba9e...c58dd9`; berachain `0x6a9887...d8dbf6`; berachain `0x8399ec...02b811`; berachain `0xa3ae97...c2a188`; berachain `0xaec98b...bd9dd3` | ⚠️ Unaudited |
| ExactOutSwapperV2 | adapter | base | 2 deployments: base [`0x2ad991...6b6a7a`](./contracts/base-8453/0x2ad9914cb303c4797ac513e6b736c9ed286b6a7a/); base `0xf016fe...e38ad9` | ⚠️ Unaudited |
| Flashloan | unknown | ethereum | [`0x001a05...6e6f3d`](./contracts/ethereum-1/0x001a05856e823efdb78ddcf0cf209f69dd6e6f3d/) | ⚠️ Unaudited |
| FractionalNFTRouter | adapter | blast | [`0xdf2fc7...10d984`](./contracts/blast-81457/0xdf2fc74879460839b213ad2768d1592ff810d984/) | ⚠️ Unaudited |
| LendingAddressProvider | registry | ethereum | [`0xc39961...a30e79`](./contracts/ethereum-1/0xc399616937ebace9e45159a60cd77663c4a30e79/) | ⚠️ Unaudited |
| MOG | unknown | ethereum | [`0xaaee1a...c21c7a`](./contracts/ethereum-1/0xaaee1a9723aadb7afa2810263653a34ba2c21c7a/) | ⚠️ Unaudited |
| MultiProtocolSwapRouter | adapter | base | 8 deployments: base [`0x0d28bc...14610f`](./contracts/base-8453/0x0d28bcb1ebac497a6ef6d0f980ad4bf74c14610f/); base `0x186ef3...044a86`; base `0x1a3b8a...2f1dc2`; base `0x560b56...1e8d74`; base `0x6188d4...8f4cef`; base `0x696d0d...2045a7`; base `0xb42520...e20c08`; base `0xc2e9ce...4ed5ac` | ⚠️ Unaudited |
| PartnerFeeManager | governance | berachain | 5 deployments: ethereum `0xc902f6...566af2`; ethereum `0xcac101...934d33`; base `0x25f32b...0bb4a5`; base `0xf0714a...bfe1be`; berachain [`0x11487a...71575e`](./contracts/berachain-80094/0x11487aab86a2e1a9346d1e4313fd6fb2dd71575e/) | ⚠️ Unaudited |
| RecoveryStrategy | core_logic | berachain | 2 deployments: berachain [`0x4b4a53...0833c9`](./contracts/berachain-80094/0x4b4a53c722d54a21fa848fe72e638ee2550833c9/); berachain `0x7ca07d...9ff889` | ⚠️ Unaudited |
| StakingAccountFactory | registry | berachain | [`0xd44f4d...adffda`](./contracts/berachain-80094/0xd44f4d5779911f8d5c24681418d22e6374adffda/) | ⚠️ Unaudited |
| SwapRouter02 | adapter | base | [`0x08292d...74503d`](./contracts/base-8453/0x08292dff21e8f5ed5510a82cfca5ee141274503d/) | ⚠️ Unaudited |
| TimelockWasabiVault | core_logic | ethereum | 7 deployments: ethereum [`0x19fdac...49e250`](./contracts/ethereum-1/0x19fdac68854702b70a8916eef19dce5c8349e250/); ethereum `0x92e561...f56626`; ethereum `0xacc3cb...0be6b9`; ethereum `0xda402f...c9683f`; ethereum `0xe0a709...e14fe0`; base `0x72ecf7...f1255e`; base `0x7df60d...a3e1a2` | ⚠️ Unaudited |
| UniversalSwapRouter | adapter | base | 8 deployments: base [`0x18145b...73a442`](./contracts/base-8453/0x18145b7b7df58528ca6733cb2fe920677273a442/); base `0x2ea6b2...61d7bf`; base `0x4f20b6...7b0978`; base `0x534605...31ac04`; base `0x63b2f9...bd0036`; base `0x9c9376...1e0312`; base `0xb6544b...9ef813`; base `0xb772e1...bbd772` | ⚠️ Unaudited |
| VaultBoostManager | core_logic | ethereum | 6 deployments: ethereum [`0x028edb...9c4d3c`](./contracts/ethereum-1/0x028edb97b11b58bfa6e6da64d1cbeea6529c4d3c/); ethereum `0x0424c6...7728b3`; ethereum `0x382a45...cbfbd0`; ethereum `0xb33c89...1e7524`; ethereum `0xcc174f...e36abb`; berachain `0x1de4c8...8e5f4e` | ⚠️ Unaudited |
| WasabiACPAccount | core_logic | base | [`0xd78f41...9847d2`](./contracts/base-8453/0xd78f41c714c662406691055dce4b1c261d9847d2/) | ⚠️ Unaudited |
| WasabiACPAccountFactory | registry | base | 14 deployments: base [`0x0137cf...3f48e8`](./contracts/base-8453/0x0137cff5a7ed63c5fc3aa98dcb0c91940c3f48e8/); base `0x21bc69...eeb6ff`; base `0x54ca91...1f3e5e`; base `0x5557f3...255109`; base `0x5ef03e...064655`; base `0x6a12e6...33b71c`; base `0x710ab5...3d9e74`; base `0x71d035...eaaf0d`; base `0x93ce08...77c487`; base `0xa79c3a...e04552`; base `0xc7f4e7...cbeb9b`; base `0xf32992...d1e4f8`; base `0xfc8d74...bedcad`; base `0xfce891...fcd05d` | ⚠️ Unaudited |
| WasabiBNPL | unknown | ethereum | [`0xead3dd...2af12d`](./contracts/ethereum-1/0xead3dd83ed1e107e02e1d0a307d4f1ba8a2af12d/) | ⚠️ Unaudited |
| WasabiBNPL2 | unknown | ethereum | [`0xdaf28d...8aeb89`](./contracts/ethereum-1/0xdaf28ddb794373f3124ee2b0b69c2aaf478aeb89/) | ⚠️ Unaudited |
| WasabiFeeManager | governance | ethereum | [`0x030107...c10c3a`](./contracts/ethereum-1/0x0301079dabdc9a2c70b856b2c51aca02bac10c3a/) | ⚠️ Unaudited |
| WasabiFeeManager2 | governance | ethereum | [`0xc08c2d...625e34`](./contracts/ethereum-1/0xc08c2d6dbeb704efb7a68bd2bb29dfa954625e34/) | ⚠️ Unaudited |
| WasabiOptionArbitrageV2 | unknown | ethereum | [`0x8b5cd3...bbd8f3`](./contracts/ethereum-1/0x8b5cd3dda28bd2ab32ce012ebfa91af5c3bbd8f3/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (29)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| UnnamedContract | unknown | ethereum | `0x082481...1b595f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x4c4b8c...c83b36` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x60e74e...8cdd96` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xabe435...566efb` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xbc0bf0...c7c1f0` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xc2664a...e7734f` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x126e13...637a03` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x1e2c31...ce04fc` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x1e39cf...d095c2` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x2a1842...65a408` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x323b88...f568cf` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x3ddf12...c109cf` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x495077...f52554` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x4cccdd...d3e03c` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x51abc0...86fb61` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x6da57c...2027e7` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x785363...f99af6` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x7e881d...1f76ea` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x885296...c3615f` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x88c38a...6f4358` | ❓ Unverified |
| UnnamedContract | unknown | base | `0xc60b95...288a03` | ❓ Unverified |
| UnnamedContract | unknown | base | `0xe98f47...5a211e` | ❓ Unverified |
| UnnamedContract | unknown | base | `0xf60304...d0d1da` | ❓ Unverified |
| UnnamedContract | unknown | berachain | `0x1e39cf...d095c2` | ❓ Unverified |
| UnnamedContract | unknown | berachain | `0x313409...0b8b2d` | ❓ Unverified |
| UnnamedContract | unknown | berachain | `0x323b88...f568cf` | ❓ Unverified |
| UnnamedContract | unknown | berachain | `0xa4bbed...abcab2` | ❓ Unverified |
| UnnamedContract | unknown | berachain | `0xb1a597...0bd0c4` | ❓ Unverified |
| UnnamedContract | unknown | berachain | `0xeaa6b6...01dcf6` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [DL audit link](https://dkoda-public.s3.amazonaws.com/Narya.ai_Wasabi_Smart_Contract_Audit.pdf) | unknown | Audit | 2023-04 | stale | Direct | contract_name | 3 | high |
| [DL audit link](https://dkoda-public.s3.amazonaws.com/Zellic_Wasabi_Smart_Contract_Audit.pdf) | Zellic | Audit | 2023-04 | stale | Direct | contract_name | 4 | high |
| [Foobar Report](https://wasabi-public.s3.amazonaws.com/audits/v1/0xfoobar_Wasabi_Smart_Contract_Audit.pdf) | Foobar | Audit | 2023-05 | stale | Direct | contract_name | 9 | high |
| [WasabiPerps+Security+Assessment-1+(2).pdf](https://wasabi-public.s3.amazonaws.com/audits/v1/WasabiPerps+Security+Assessment-1+(2).pdf) | Foobar | Audit | 2023-12 | stale | Direct | contract_name | 55 | high |
| [Zellic Report](https://wasabi-public.s3.amazonaws.com/audits/v1/Wasabi+Perps+-+Zellic+Audit+Report.pdf) | Zellic | Audit | 2024-01 | stale | Direct | contract_name | 225 | high |
| [Zellic Report (2)](https://wasabi-public.s3.us-east-1.amazonaws.com/audits/v1/Wasabi+Perps+-+Zellic+Audit+Report+2.pdf) | Zellic | Audit | 2024-10 | aging | Direct | contract_name | 269 | high |
| [Sherlock EVM Report](https://wasabi-public.s3.us-east-1.amazonaws.com/audits/v1/Wasabi_Perps_EVM_Audit_Sherlock.pdf) | Sherlock | Contest | 2024-11 | aging | Direct | contract_name | 254 | high |
| [Sherlock SVM Report](https://wasabi-public.s3.us-east-1.amazonaws.com/audits/v1/Wasabi_Perps_Solana_Audit_Sherlock.pdf) | Sherlock | Contest | 2024-11 | aging | Direct | contract_name | 6 | high |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| blast | [`0xe668de...fcb0f0`](./contracts/blast-81457/0xe668de8d7d6933c47409b2bc14d5d08daefcb0f0/) | BalanceChecker | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| berachain | [`0x215c8d...f584ba`](./contracts/berachain-80094/0x215c8d1ab5bcaf172feb7f4b4cf618973af584ba/) | BeraVault | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| berachain | [`0x97090d...2a9e84`](./contracts/berachain-80094/0x97090d4ac726d6105e0c4b522e9234c0392a9e84/) | CappedVaultCompetitionDepositor | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x2d850f...54d165`](./contracts/ethereum-1/0x2d850f76c671aa2e1c1892a0644c115eb254d165/) | ERC1155CreatorImplementation | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0cc347...142467`](./contracts/ethereum-1/0x0cc3471d024250c7661003063aa5cc3d2c142467/) | ERC721CreatorImplementation | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x3d1c97...4de11b`](./contracts/base-8453/0x3d1c97fa08a23a15f56fcca7599b0b2a3a4de11b/) | ExactOutSwapper | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x2ad991...6b6a7a`](./contracts/base-8453/0x2ad9914cb303c4797ac513e6b736c9ed286b6a7a/) | ExactOutSwapperV2 | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x001a05...6e6f3d`](./contracts/ethereum-1/0x001a05856e823efdb78ddcf0cf209f69dd6e6f3d/) | Flashloan | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xc39961...a30e79`](./contracts/ethereum-1/0xc399616937ebace9e45159a60cd77663c4a30e79/) | LendingAddressProvider | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x0d28bc...14610f`](./contracts/base-8453/0x0d28bcb1ebac497a6ef6d0f980ad4bf74c14610f/) | MultiProtocolSwapRouter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| berachain | [`0x11487a...71575e`](./contracts/berachain-80094/0x11487aab86a2e1a9346d1e4313fd6fb2dd71575e/) | PartnerFeeManager | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| berachain | [`0x4b4a53...0833c9`](./contracts/berachain-80094/0x4b4a53c722d54a21fa848fe72e638ee2550833c9/) | RecoveryStrategy | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| berachain | [`0xd44f4d...adffda`](./contracts/berachain-80094/0xd44f4d5779911f8d5c24681418d22e6374adffda/) | StakingAccountFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x19fdac...49e250`](./contracts/ethereum-1/0x19fdac68854702b70a8916eef19dce5c8349e250/) | TimelockWasabiVault | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x028edb...9c4d3c`](./contracts/ethereum-1/0x028edb97b11b58bfa6e6da64d1cbeea6529c4d3c/) | VaultBoostManager | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0xd78f41...9847d2`](./contracts/base-8453/0xd78f41c714c662406691055dce4b1c261d9847d2/) | WasabiACPAccount | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x0137cf...3f48e8`](./contracts/base-8453/0x0137cff5a7ed63c5fc3aa98dcb0c91940c3f48e8/) | WasabiACPAccountFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xead3dd...2af12d`](./contracts/ethereum-1/0xead3dd83ed1e107e02e1d0a307d4f1ba8a2af12d/) | WasabiBNPL | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xdaf28d...8aeb89`](./contracts/ethereum-1/0xdaf28ddb794373f3124ee2b0b69c2aaf478aeb89/) | WasabiBNPL2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x030107...c10c3a`](./contracts/ethereum-1/0x0301079dabdc9a2c70b856b2c51aca02bac10c3a/) | WasabiFeeManager | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xc08c2d...625e34`](./contracts/ethereum-1/0xc08c2d6dbeb704efb7a68bd2bb29dfa954625e34/) | WasabiFeeManager2 | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x8b5cd3...bbd8f3`](./contracts/ethereum-1/0x8b5cd3dda28bd2ab32ce012ebfa91af5c3bbd8f3/) | WasabiOptionArbitrageV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 50 |
| upstream | 1 |
| standard_library | 13 |
| needs_review | 19 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=8
- Match method counts: extraction_exact=825

Fork inheritance lineage and inherited audits are included when available.
