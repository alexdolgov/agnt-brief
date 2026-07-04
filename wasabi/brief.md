# Agentic Audit Brief: Wasabi

## Project Overview

- Project: Wasabi (`wasabi`)
- Website: [https://app.wasabi.xyz/p/LKHR9](https://app.wasabi.xyz/p/LKHR9)
- Lifecycle: unknown
- Generated: 2026-07-04T14:54:10.133Z
- Pipeline run: v2-pipeline-2026-07-01-3e33f2-f007
- Chains: base, berachain, blast, ethereum
- Contract surface: 122 unique implementations (426 raw deployments)
- DeFi Llama TVL: $866,442.00
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Derivatives. Structurally: 66 project-authored contract(s) across 4 chain(s); 5 ERC4626 vaults, 7 ERC20 tokens, 1 ERC721 NFT; upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 9 functional families. Its contracts share 4 common project-authored base contract(s) (basewasabipool, abstractwasabipool, wasabivault). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 459; live-surface contracts included: 423 (394 live, 29 unknown).
- Excluded by liveness: 36 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 26/87 (29.9%)
- Deployed-live implementations: 98 of 122 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 29/98
- Verified + Unaudited implementations: 69
- Verified by bytecode match: 0
- Unverified implementations: 24
- Unique implementations: 122
- Raw deployments: 426
- Audits discovered: 8 (8 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 8
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2024-11 (aging)
- Audit staleness (calendar age): 0 fresh, 3 aging, 5 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 9 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 20 match-unverified
- Tier 1 coverage: 13.8% (Sherlock)

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| Zellic | Tier 2 | 20 | 20.4% | 2024-10 |
| Sherlock | Tier 1 | 13 | 13.3% | 2024-11 |
| Foobar | Tier 2 | 11 | 11.2% | 2023-12 |
| unknown | Tier 2 | 1 | 1.0% | 2023-04 |

## Contract Surface

### ✅ Verified + Audited (29)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| AddressProvider | registry | ethereum | n/a | 2 deployments: ethereum [`0x409fb5...d075c4`](./contracts/ethereum-1/0x409fb57c5512f303759a5febbc7f2f61f8d075c4/); base `0xfc55ab...f9252f` | ✅ Audited |
| BlastLongPool | core_logic | blast | n/a | [`0x046299...1ed355`](./contracts/blast-81457/0x046299143a880c4d01a318bc6c9f2c0a5c1ed355/) | ✅ Audited |
| BlastShortPool | core_logic | blast | n/a | [`0x030107...c10c3a`](./contracts/blast-81457/0x0301079dabdc9a2c70b856b2c51aca02bac10c3a/) | ✅ Audited |
| BlastVault | core_logic | blast | n/a | 25 deployments: blast [`0x09c885...33082a`](./contracts/blast-81457/0x09c885de423eab752bfead9de203c9fe8c33082a/); blast `0x14f86c...f0d13a`; blast `0x18412f...a876b7`; blast `0x1e046b...daf0c8`; blast `0x237e60...f80144`; blast `0x2cb60a...0acce2`; blast `0x3336f1...ae1558`; blast `0x3563b4...8f9e9a`; blast `0x3ccdbd...e768ad`; blast `0x4f01f2...b6b551`; blast `0x5c0f73...89b5a7`; blast `0x616afd...103558`; blast `0x6b4d37...19303c`; blast `0x7274aa...e7fe81`; blast `0x73ec6a...ed9d74`; blast `0x7eda4a...cacccf`; blast `0x9db922...a64cba`; blast `0x9e31ef...c57209`; blast `0x9eea5b...48be22`; blast `0xba74ab...d46c1a`; blast `0xc80615...e93014`; blast `0xcc082c...0d7ab5`; blast `0xcc3eed...56d34a`; blast `0xce979f...d4de4d`; blast `0xf2abb5...a6af53` | ✅ Audited |
| DebtController | unknown | base | n/a | 6 deployments: ethereum `0xfbc94e...1246d1`; ethereum `0xfe7b8f...ee60c2`; base [`0x2182b5...b84684`](./contracts/base-8453/0x2182b5532d8eb4b614031ac68924975100b84684/); berachain `0x93f287...9350f9`; berachain `0xfae69f...d8558f`; blast `0xe3f3dc...cce0ac` | ✅ Audited |
| ERC20WasabiPool | unknown | ethereum | n/a | [`0x3fbf4f...d93eed`](./contracts/ethereum-1/0x3fbf4fd788b276b47e121eb58a5e6f6b8ad93eed/) | ✅ Audited |
| ETHWasabiPool | unknown | ethereum | n/a | [`0x046299...1ed355`](./contracts/ethereum-1/0x046299143a880c4d01a318bc6c9f2c0a5c1ed355/) | ✅ Audited |
| PerpManager | governance | ethereum | n/a | [`0xc0b01a...010e7d`](./contracts/ethereum-1/0xc0b01a4f4a4459d5a7e13c2e8566cde93a010e7d/) | ✅ Audited |
| PerpManager | unknown | base | n/a | 10 deployments: ethereum `0x2eb99d...55910b`; ethereum `0x3461ae...56eee2`; ethereum `0x7973cb...a96952`; ethereum `0x7c4783...7c740a`; ethereum `0xba5c58...8d2683`; ethereum `0xba8724...d69375`; ethereum `0xff9f87...4d39dc`; base [`0x295d89...273815`](./contracts/base-8453/0x295d89220399e7cd0a59bcaef54356b47f273815/); berachain `0xb73daa...cbf220`; blast `0x5c4a1f...1e41a2` | ✅ Audited |
| PerpManager | governance | base | n/a | [`0xec3e4e...f7d70e`](./contracts/base-8453/0xec3e4e0fdb50411f4c5ee9f75436d8b20cf7d70e/) | ✅ Audited |
| PerpManager | governance | berachain | n/a | [`0x5c285d...b6dd81`](./contracts/berachain-80094/0x5c285dd01440fb1175ae31934a5d1b3b90b6dd81/) | ✅ Audited |
| PerpManager | governance | blast | n/a | [`0xff2cdb...7cc268`](./contracts/blast-81457/0xff2cdb9cdb79a60a31188fe37bdc6774107cc268/) | ✅ Audited |
| PoolAskVerifier | unknown | ethereum | n/a | [`0xe3f3dc...cce0ac`](./contracts/ethereum-1/0xe3f3dca2bd68cbd34b58cfc3bcd109998fcce0ac/) | ✅ Audited |
| PoolBidVerifier | unknown | ethereum | n/a | [`0x668736...933cca`](./contracts/ethereum-1/0x66873693e8b125dbea46274173b0d6dcd1933cca/) | ✅ Audited |
| Signing | unknown | ethereum | n/a | [`0xd3bb84...6e6094`](./contracts/ethereum-1/0xd3bb8475c30fd70675f6250fb725e30b3a6e6094/) | ✅ Audited |
| WasabiConduit | unknown | ethereum | n/a | 2 deployments: ethereum [`0x9e31ef...c57209`](./contracts/ethereum-1/0x9e31ef400c74630ab50066dd64c29c1f4fc57209/); ethereum `0xf29a66...fff856` | ✅ Audited |
| WasabiLongPool | core_logic | ethereum | n/a | 20 deployments: ethereum [`0x023afc...6a6078`](./contracts/ethereum-1/0x023afc8b575ef583ef5596d3834d82b7116a6078/); ethereum `0x095c34...5599d3`; ethereum `0x17d163...db5c3d`; ethereum `0x3a2774...e4fd97`; ethereum `0x45a933...aac7cd`; ethereum `0x7041ce...7f3e95`; ethereum `0x7f5451...e6cbc8`; ethereum `0x8d9040...b41b59`; ethereum `0x8e19c0...2ddc04`; ethereum `0x94cf96...b10c51`; ethereum `0x97eea3...ab40f7`; ethereum `0x995c0a...b8518b`; ethereum `0xab1644...5df9cb`; ethereum `0xc24f58...656b51`; ethereum `0xcda7ce...c8c0ca`; ethereum `0xcf41e5...b075dd`; ethereum `0xd2439d...165ffe`; ethereum `0xd4a321...ae430d`; base `0xffdf46...616543`; berachain `0x1c75bd...64801d` | ✅ Audited |
| WasabiOption | unknown | ethereum | n/a | [`0xfc68f2...2e18a0`](./contracts/ethereum-1/0xfc68f2130e094c95b6c4f5494158cbeb172e18a0/) | ✅ Audited |
| WasabiPoolFactory | unknown | ethereum | n/a | [`0x8e2b50...961e40`](./contracts/ethereum-1/0x8e2b50413a53f50e2a059142a9be060294961e40/) | ✅ Audited |
| WasabiRouter | adapter | ethereum | n/a | 10 deployments: ethereum [`0x08aad5...72ae33`](./contracts/ethereum-1/0x08aad56f494d705eaee20185e02996d5be72ae33/); ethereum `0x0b38cb...5f437e`; ethereum `0x1b362e...e046b7`; ethereum `0x33d2ac...77ee9a`; ethereum `0x77abb6...63dbf4`; ethereum `0x96b10b...a63f23`; ethereum `0xe5312d...a564f9`; base `0x892927...9aa03c`; berachain `0x3e1b86...a014d9`; berachain `0x760d9c...b52d64` | ✅ Audited |
| WasabiRouter | adapter | ethereum | n/a | [`0xee5c45...aac03b`](./contracts/ethereum-1/0xee5c45dcb0064f9b097edbc5d8adfce23baac03b/) | ✅ Audited |
| WasabiRouter | adapter | base | n/a | [`0xfae69f...d8558f`](./contracts/base-8453/0xfae69f2c82747f878f74c1e57a1aed945ed8558f/) | ✅ Audited |
| WasabiRouter | adapter | berachain | n/a | [`0x7864d8...a4b237`](./contracts/berachain-80094/0x7864d8c34bfcdbd83fda2da917aa6175a4a4b237/) | ✅ Audited |
| WasabiShortPool | unknown | berachain | n/a | 21 deployments: ethereum `0x1536f7...a3662b`; ethereum `0x1888f9...d46176`; ethereum `0x41247b...f78fad`; ethereum `0x44ba62...96559e`; ethereum `0x5bb9e0...088c60`; ethereum `0x62d254...9bf842`; ethereum `0x774835...bf8b32`; ethereum `0x8826d2...3cbc96`; ethereum `0x8ea384...b13277`; ethereum `0x96ce21...137f78`; ethereum `0xbc07db...69cbbe`; ethereum `0xc905de...b7dca5`; ethereum `0xcb8d3c...e8a2bb`; ethereum `0xcc2a29...e26bee`; ethereum `0xd5a09a...33ae95`; ethereum `0xea9a83...ca647c`; ethereum `0xf22b8d...64aafa`; ethereum `0xfb71f0...490c4a`; ethereum `0xfc55a2...28006b`; base `0x8bdec8...c624a6`; berachain [`0x00b6c4...98e7af`](./contracts/berachain-80094/0x00b6c4e0d058d726316ae1666e353ec72598e7af/) | ✅ Audited |
| WasabiShortPool | core_logic | berachain | n/a | [`0x3ee6c6...0df1ee`](./contracts/berachain-80094/0x3ee6c6cdaa0073de6da00091329de4390b0df1ee/) | ✅ Audited |
| WasabiVault | unknown | ethereum | n/a | 18 deployments: ethereum [`0x0db381...747e12`](./contracts/ethereum-1/0x0db381cfcafee909e66e5244ec5d7d933a747e12/); ethereum `0x3f631b...5caa8d`; ethereum `0x65aa8f...59991e`; ethereum `0x7d8c76...67ac53`; ethereum `0x7f1cec...d1681a`; ethereum `0x9720f7...a84fa4`; ethereum `0xa6354e...55dadf`; ethereum `0xa9d119...9771d7`; ethereum `0xb6463f...39f113`; ethereum `0xc883de...141c1a`; ethereum `0xcd1953...5f7d53`; ethereum `0xd46c77...563a1d`; ethereum `0xf7855f...ae8153`; base `0x19c804...c01e08`; base `0xac4550...fb3b8a`; base `0xe6ebfb...a3aab8`; base `0xf2e381...ed1786`; berachain `0xec0c23...806ad5` | ✅ Audited |
| WasabiVault | core_logic | ethereum | n/a | 54 deployments: ethereum [`0x1831f6...a61ae2`](./contracts/ethereum-1/0x1831f6b2573e756bfafdcb121880a80894a61ae2/); ethereum `0x1becea...22e3db`; ethereum `0x1ca1fc...8a7aba`; ethereum `0x263729...eb8c03`; ethereum `0x2a7693...62d63b`; ethereum `0x2f49de...17d301`; ethereum `0x34f0a8...edf77d`; ethereum `0x364cb3...03a1ed`; ethereum `0x36b9bc...c5759a`; ethereum `0x39eed0...a16ee2`; ethereum `0x491caf...b62669`; ethereum `0x4df48f...44c8e2`; ethereum `0x519db1...c026af`; ethereum `0x5609ef...10d585`; ethereum `0x5bac8a...2a8a64`; ethereum `0x608889...34468e`; ethereum `0x63628b...7a84b8`; ethereum `0x64b021...99c197`; ethereum `0x6a4600...f54bfa`; ethereum `0x6b4192...ce9736`; ethereum `0x6e9e3b...3b076e`; ethereum `0x73ebff...05b8e9`; ethereum `0x75f327...e63d4f`; ethereum `0x79356b...929162`; ethereum `0x7dd8f2...248319`; ethereum `0x800187...9bd34a`; ethereum `0x80f035...93ee9b`; ethereum `0x832038...d07c18`; ethereum `0x8c71ba...e3ee10`; ethereum `0x8e26da...0de32d`; ethereum `0x8e3fdd...ebcf2f`; ethereum `0x94df93...5311a2`; ethereum `0x96c243...de2020`; ethereum `0x9a8604...221cfd`; ethereum `0x9b6eee...2d8bea`; ethereum `0xa2a9d2...3873b9`; ethereum `0xa4d274...a8ebf6`; ethereum `0xa4d853...19f7a7`; ethereum `0xa54151...dd527e`; ethereum `0xad99d6...179c8d`; ethereum `0xb3324d...e56fb7`; ethereum `0xb586b3...62abd8`; ethereum `0xbaaa2a...ec5c7d`; ethereum `0xc7995a...dece5b`; ethereum `0xd4f062...7ef118`; ethereum `0xd7738f...fe2530`; ethereum `0xd8bdfe...80021e`; ethereum `0xdd5c60...fe058e`; ethereum `0xe29e74...8f6f4b`; ethereum `0xe6238f...b21b76`; ethereum `0xe8c96f...513de9`; ethereum `0xed5179...f1895b`; ethereum `0xed6f77...4ab80a`; ethereum `0xf6040c...da07e9` | ✅ Audited |
| WasabiVault | core_logic | base | n/a | 80 deployments: base [`0x00d7c8...990ea1`](./contracts/base-8453/0x00d7c86c29f11206cae7f30951047bd278990ea1/); base `0x04acd5...0f5d30`; base `0x091a22...862eda`; base `0x0da575...6bb12b`; base `0x0e54d3...8f0939`; base `0x114073...da64dd`; base `0x11a030...8fc212`; base `0x12c9de...f9cf49`; base `0x181dc3...cbeb13`; base `0x197934...181313`; base `0x1e5f25...aa3915`; base `0x215c8d...f584ba`; base `0x228dca...6d192f`; base `0x277c83...ce3ddd`; base `0x2a3c70...f9b442`; base `0x2d638c...c54f16`; base `0x2eef82...52ceaa`; base `0x313409...0b8b2d`; base `0x3733b6...dad959`; base `0x38ba55...0d9865`; base `0x38dc85...384939`; base `0x3b5587...1cd8ce`; base `0x3bc860...7f9792`; base `0x3edc1f...f3863f`; base `0x3f47af...d089af`; base `0x42011d...2e695e`; base `0x4bd3c9...e3765b`; base `0x4e8fb8...eb2a2f`; base `0x4eeaed...df99f6`; base `0x50afcb...874687`; base `0x52c88e...7b2a40`; base `0x542b5d...93b191`; base `0x55dcda...1af8c2`; base `0x5955cf...a8cb60`; base `0x5c9258...9806b0`; base `0x5caa33...6c1c2e`; base `0x5f164b...1922da`; base `0x6378a7...142afd`; base `0x65d8f6...7e94d2`; base `0x6655cf...160f66`; base `0x699cbf...2dba2c`; base `0x70b808...4f979c`; base `0x74b1e4...39780d`; base `0x76106b...364a95`; base `0x7daa6c...880d3b`; base `0x7e7d9a...869c94`; base `0x82ff77...61dfbe`; base `0x837277...ec208c`; base `0x8379dc...285374`; base `0x87b416...ac459e`; base `0x893f93...de2c89`; base `0x8d1f90...601009`; base `0x9a9298...16ea10`; base `0xa10f4d...06070f`; base `0xa34800...464f80`; base `0xa3a575...470fb2`; base `0xa3ae97...c2a188`; base `0xabb566...c3a9d8`; base `0xadac74...b86a98`; base `0xaec98b...bd9dd3`; base `0xb1a597...0bd0c4`; base `0xbcc889...058117`; base `0xbf6668...629cc4`; base `0xc62697...c8970f`; base `0xc84879...1df3e3`; base `0xc857bc...fb4240`; base `0xc8bd38...16b5bb`; base `0xcc3974...cdbcf3`; base `0xcc8d0c...4e6a14`; base `0xcddb2f...58cc8d`; base `0xcfd04f...a8eb6c`; base `0xd7438e...71d1ac`; base `0xd76dcb...1af9a1`; base `0xe33cc6...5372c5`; base `0xe36530...288ca4`; base `0xe8f53b...8a61bb`; base `0xeb55a1...3fd4d0`; base `0xeffe2b...3cea2f`; base `0xf50c66...db1059`; base `0xfb39f4...9cbf8e` | ✅ Audited |
| WasabiVault | core_logic | berachain | n/a | 3 deployments: berachain [`0x0ebddd...be4e9c`](./contracts/berachain-80094/0x0ebddd4cc9758fbadd49263dc57c8ac610be4e9c/); berachain `0x433d1f...e88e82`; berachain `0xa31342...7100d1` | ✅ Audited |

### ⚠️ Verified + Unaudited (69)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| AaveStrategy | operational_periphery | ethereum | n/a | 3 deployments: ethereum [`0x1c1efa...fcd548`](./contracts/ethereum-1/0x1c1efa17081cde0c8ee816075369741d89fcd548/); ethereum `0x997904...448f67`; ethereum `0xc3f7e6...1543d2` | ⚠️ Unaudited |
| AaveStrategy | operational_periphery | base | n/a | [`0x023d35...537fcf`](./contracts/base-8453/0x023d357d04f2d024993f6c002837ed3195537fcf/) | ⚠️ Unaudited |
| BalancerTokenInfo | unknown | berachain | n/a | [`0xc84879...1df3e3`](./contracts/berachain-80094/0xc84879ac01794fc3bab26b5167e3c287bd1df3e3/) | ⚠️ Unaudited |
| BeraLongPool | core_logic | berachain | n/a | [`0x0da575...6bb12b`](./contracts/berachain-80094/0x0da575d3edd4e3ee1d904936f94ec043c06bb12b/) | ⚠️ Unaudited |
| BeraVault | unknown | berachain | n/a | 3 deployments: berachain [`0x215c8d...f584ba`](./contracts/berachain-80094/0x215c8d1ab5bcaf172feb7f4b4cf618973af584ba/); berachain `0x4ed9e4...d6a413`; berachain `0xeac928...d46398` | ⚠️ Unaudited |
| BeraVault | unknown | berachain | n/a | 2 deployments: berachain [`0x4c2142...bb1450`](./contracts/berachain-80094/0x4c2142f7ee765de6f9d13b7a9d28b01eb9bb1450/); berachain `0x8c6506...d8cf76` | ⚠️ Unaudited |
| BeraVault | unknown | berachain | n/a | [`0xb93219...a3237d`](./contracts/berachain-80094/0xb93219f8ec414684166e7479c16ba62e14a3237d/) | ⚠️ Unaudited |
| BT404NFTWrapped | unknown | blast | n/a | 2 deployments: blast [`0xb0a19f...57870c`](./contracts/blast-81457/0xb0a19fa556ab92e51ea7969ef5fefef5a357870c/); blast `0xfafd61...1a031f` | ⚠️ Unaudited |
| BT404Token | unknown | blast | n/a | 2 deployments: blast [`0x3c1694...faa2ce`](./contracts/blast-81457/0x3c169484cfac44ebd491a31abcd767ff2afaa2ce/); blast `0xc8d8d8...73c699` | ⚠️ Unaudited |
| CappedVaultCompetitionDepositor | unknown | berachain | n/a | [`0x97090d...2a9e84`](./contracts/berachain-80094/0x97090d4ac726d6105e0c4b522e9234c0392a9e84/) | ⚠️ Unaudited |
| CappedVaultCompetitionDepositor | unknown | berachain | n/a | [`0xdee9f9...b55f18`](./contracts/berachain-80094/0xdee9f998293bbaee7214f91e45701a317bb55f18/) | ⚠️ Unaudited |
| Disperse | unknown | berachain | n/a | [`0x2bf4e5...fbc8bb`](./contracts/berachain-80094/0x2bf4e5deea48d66226fc25191a01e18378fbc8bb/) | ⚠️ Unaudited |
| ERC1155CreatorImplementation | token | ethereum | n/a | [`0x2d850f...54d165`](./contracts/ethereum-1/0x2d850f76c671aa2e1c1892a0644c115eb254d165/) | ⚠️ Unaudited |
| ERC1967Proxy | proxy | ethereum | n/a | [`0x8e0edf...d5afc0`](./contracts/ethereum-1/0x8e0edfd6d15f858adbb41677b82ab64797d5afc0/) | ⚠️ Unaudited |
| ERC1967Proxy | unknown | base | n/a | 2 deployments: base [`0x1e2c31...ce04fc`](./contracts/base-8453/0x1e2c316703f1d3b38c81556e5c853cf30fce04fc/); base `0x851fc7...1b1bf2` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | base | n/a | 2 deployments: base [`0x495077...f52554`](./contracts/base-8453/0x49507722ad672901e2f80f591dc94ff482f52554/); base `0xc69ada...54aa1b` | ⚠️ Unaudited |
| ERC1967Proxy | proxy | base | n/a | [`0xa456c7...7da37c`](./contracts/base-8453/0xa456c77d358c9c89f4dfb294fa2a47470b7da37c/) | ⚠️ Unaudited |
| ERC1967Proxy | proxy | base | n/a | [`0xbdae5d...b248aa`](./contracts/base-8453/0xbdae5df498a45c5f058e3a09afe9ba4da7b248aa/) | ⚠️ Unaudited |
| ERC1967Proxy | unknown | base | n/a | 2 deployments: base [`0xbfea82...505188`](./contracts/base-8453/0xbfea8285e43437c9ea91e62f7677654339505188/); base `0xc60b95...288a03` | ⚠️ Unaudited |
| ERC1967Proxy | proxy | base | n/a | [`0xfc81df...3369fe`](./contracts/base-8453/0xfc81dfde25083a286723b7c9dd7213f8723369fe/) | ⚠️ Unaudited |
| ERC1967Proxy | unknown | berachain | n/a | 2 deployments: berachain [`0x1e39cf...d095c2`](./contracts/berachain-80094/0x1e39cf440f2872d4b23165275e3f79e90dd095c2/); berachain `0x51abc0...86fb61` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | berachain | n/a | 2 deployments: berachain [`0x8c118e...1a68c4`](./contracts/berachain-80094/0x8c118eb3ad22598cfa4156241d9497317d1a68c4/); berachain `0xa4bbed...abcab2` | ⚠️ Unaudited |
| ExactOutSwapper | unknown | ethereum | n/a | 2 deployments: ethereum [`0x972e33...e8dd2c`](./contracts/ethereum-1/0x972e33c3e75afbfce40963289e72bcd9c7e8dd2c/); ethereum `0x9f2781...f3e1ac` | ⚠️ Unaudited |
| ExactOutSwapper | unknown | base | n/a | 2 deployments: base [`0x3d1c97...4de11b`](./contracts/base-8453/0x3d1c97fa08a23a15f56fcca7599b0b2a3a4de11b/); base `0x5998fa...632539` | ⚠️ Unaudited |
| ExactOutSwapper | unknown | base | n/a | 2 deployments: base [`0x457c7b...4f9773`](./contracts/base-8453/0x457c7b95243b2798a41d1ec9d48c77db3a4f9773/); base `0xa5ba9e...c58dd9` | ⚠️ Unaudited |
| ExactOutSwapper | unknown | berachain | n/a | 2 deployments: berachain [`0x6a9887...d8dbf6`](./contracts/berachain-80094/0x6a98876701c8b86a0e8fbe8a28a33b3cd2d8dbf6/); berachain `0xa3ae97...c2a188` | ⚠️ Unaudited |
| ExactOutSwapper | unknown | berachain | n/a | 2 deployments: berachain [`0x8399ec...02b811`](./contracts/berachain-80094/0x8399ec27c14f2a25e1a82a63080373ffd102b811/); berachain `0xaec98b...bd9dd3` | ⚠️ Unaudited |
| ExactOutSwapperV2 | adapter | base | n/a | [`0x2ad991...6b6a7a`](./contracts/base-8453/0x2ad9914cb303c4797ac513e6b736c9ed286b6a7a/) | ⚠️ Unaudited |
| ExactOutSwapperV2 | adapter | base | n/a | [`0xf016fe...e38ad9`](./contracts/base-8453/0xf016fe66103c2a9f3d156fef32d2da8db8e38ad9/) | ⚠️ Unaudited |
| Flashloan | unknown | ethereum | n/a | [`0x001a05...6e6f3d`](./contracts/ethereum-1/0x001a05856e823efdb78ddcf0cf209f69dd6e6f3d/) | ⚠️ Unaudited |
| FractionalNFTRouter | unknown | blast | n/a | 2 deployments: blast [`0xc5e2aa...cffa3c`](./contracts/blast-81457/0xc5e2aa6186795440d5ec6ce8d29c74055bcffa3c/); blast `0xdf2fc7...10d984` | ⚠️ Unaudited |
| MOG | unknown | ethereum | n/a | [`0xaaee1a...c21c7a`](./contracts/ethereum-1/0xaaee1a9723aadb7afa2810263653a34ba2c21c7a/) | ⚠️ Unaudited |
| MultiProtocolSwapRouter | unknown | base | n/a | 2 deployments: base [`0x0d28bc...14610f`](./contracts/base-8453/0x0d28bcb1ebac497a6ef6d0f980ad4bf74c14610f/); base `0x186ef3...044a86` | ⚠️ Unaudited |
| MultiProtocolSwapRouter | unknown | base | n/a | 2 deployments: base [`0x1a3b8a...2f1dc2`](./contracts/base-8453/0x1a3b8ae6fe5b9adaa5fb7df49d832c5ff12f1dc2/); base `0xc2e9ce...4ed5ac` | ⚠️ Unaudited |
| MultiProtocolSwapRouter | unknown | base | n/a | 2 deployments: base [`0x560b56...1e8d74`](./contracts/base-8453/0x560b5665293ab61b6f7116a0a3a81cdac21e8d74/); base `0x6188d4...8f4cef` | ⚠️ Unaudited |
| MultiProtocolSwapRouter | unknown | base | n/a | 2 deployments: base [`0x696d0d...2045a7`](./contracts/base-8453/0x696d0d73bd8d3820e9c1d697ebadcf2b372045a7/); base `0xb42520...e20c08` | ⚠️ Unaudited |
| PartnerFeeManager | governance | ethereum | n/a | [`0xcac101...934d33`](./contracts/ethereum-1/0xcac10196ae000184107916898f10a9045c934d33/) | ⚠️ Unaudited |
| PartnerFeeManager | governance | base | n/a | [`0xf0714a...bfe1be`](./contracts/base-8453/0xf0714a3e2f4d78ffc1b400bfdacb7b8869bfe1be/) | ⚠️ Unaudited |
| PartnerFeeManager | governance | berachain | n/a | 3 deployments: ethereum `0xc902f6...566af2`; base `0x25f32b...0bb4a5`; berachain [`0x11487a...71575e`](./contracts/berachain-80094/0x11487aab86a2e1a9346d1e4313fd6fb2dd71575e/) | ⚠️ Unaudited |
| PerpManager | unknown | berachain | n/a | 2 deployments: berachain [`0x19c804...c01e08`](./contracts/berachain-80094/0x19c804aa2782561ff03ee3b18f3ca50975c01e08/); berachain `0x1c4a80...048b24` | ⚠️ Unaudited |
| RecoveryStrategy | core_logic | berachain | n/a | 2 deployments: berachain [`0x4b4a53...0833c9`](./contracts/berachain-80094/0x4b4a53c722d54a21fa848fe72e638ee2550833c9/); berachain `0x7ca07d...9ff889` | ⚠️ Unaudited |
| StakingAccountFactory | registry | berachain | n/a | [`0xd44f4d...adffda`](./contracts/berachain-80094/0xd44f4d5779911f8d5c24681418d22e6374adffda/) | ⚠️ Unaudited |
| SwapRouter02 | adapter | base | n/a | [`0x08292d...74503d`](./contracts/base-8453/0x08292dff21e8f5ed5510a82cfca5ee141274503d/) | ⚠️ Unaudited |
| TimelockWasabiVault | core_logic | ethereum | n/a | 5 deployments: ethereum [`0x19fdac...49e250`](./contracts/ethereum-1/0x19fdac68854702b70a8916eef19dce5c8349e250/); ethereum `0x92e561...f56626`; ethereum `0xacc3cb...0be6b9`; ethereum `0xda402f...c9683f`; ethereum `0xe0a709...e14fe0` | ⚠️ Unaudited |
| TimelockWasabiVault | unknown | base | n/a | 2 deployments: base [`0x72ecf7...f1255e`](./contracts/base-8453/0x72ecf7cf074557984417eabcf3f128ffebf1255e/); base `0x7df60d...a3e1a2` | ⚠️ Unaudited |
| UniversalSwapRouter | unknown | base | n/a | 2 deployments: base [`0x18145b...73a442`](./contracts/base-8453/0x18145b7b7df58528ca6733cb2fe920677273a442/); base `0x9c9376...1e0312` | ⚠️ Unaudited |
| UniversalSwapRouter | unknown | base | n/a | 2 deployments: base [`0x2ea6b2...61d7bf`](./contracts/base-8453/0x2ea6b2a1cdcb622320b6345d9473cd2b6161d7bf/); base `0x63b2f9...bd0036` | ⚠️ Unaudited |
| UniversalSwapRouter | unknown | base | n/a | 2 deployments: base [`0x4f20b6...7b0978`](./contracts/base-8453/0x4f20b6665ab2dfd00e73987a0ffe8f3f517b0978/); base `0xb6544b...9ef813` | ⚠️ Unaudited |
| UniversalSwapRouter | unknown | base | n/a | 2 deployments: base [`0x534605...31ac04`](./contracts/base-8453/0x5346052d8b49cab75ad80f99e7738fc6c631ac04/); base `0xb772e1...bbd772` | ⚠️ Unaudited |
| VaultBoostManager | unknown | ethereum | n/a | 4 deployments: ethereum [`0x028edb...9c4d3c`](./contracts/ethereum-1/0x028edb97b11b58bfa6e6da64d1cbeea6529c4d3c/); ethereum `0x0424c6...7728b3`; ethereum `0xb33c89...1e7524`; ethereum `0xcc174f...e36abb` | ⚠️ Unaudited |
| VaultBoostManager | core_logic | ethereum | n/a | [`0x382a45...cbfbd0`](./contracts/ethereum-1/0x382a45ab979b69f94346f3c004033ef7c9cbfbd0/) | ⚠️ Unaudited |
| VaultBoostManager | core_logic | berachain | n/a | [`0x1de4c8...8e5f4e`](./contracts/berachain-80094/0x1de4c8251d25e7541fafee4587a8434eca8e5f4e/) | ⚠️ Unaudited |
| WasabiACPAccount | core_logic | base | n/a | [`0xd78f41...9847d2`](./contracts/base-8453/0xd78f41c714c662406691055dce4b1c261d9847d2/) | ⚠️ Unaudited |
| WasabiACPAccountFactory | unknown | base | n/a | 2 deployments: base [`0x0137cf...3f48e8`](./contracts/base-8453/0x0137cff5a7ed63c5fc3aa98dcb0c91940c3f48e8/); base `0x54ca91...1f3e5e` | ⚠️ Unaudited |
| WasabiACPAccountFactory | unknown | base | n/a | 2 deployments: base [`0x21bc69...eeb6ff`](./contracts/base-8453/0x21bc6937d96a4011a0106ac5ee7b1899b9eeb6ff/); base `0x5ef03e...064655` | ⚠️ Unaudited |
| WasabiACPAccountFactory | unknown | base | n/a | 2 deployments: base [`0x5557f3...255109`](./contracts/base-8453/0x5557f35607ded91812762aca7754bdb2de255109/); base `0x71d035...eaaf0d` | ⚠️ Unaudited |
| WasabiACPAccountFactory | unknown | base | n/a | 2 deployments: base [`0x6a12e6...33b71c`](./contracts/base-8453/0x6a12e6ab226032f66f1b87ee3565cd1a7033b71c/); base `0xc7f4e7...cbeb9b` | ⚠️ Unaudited |
| WasabiACPAccountFactory | unknown | base | n/a | 2 deployments: base [`0x710ab5...3d9e74`](./contracts/base-8453/0x710ab53bd48835d6d7588d893d9d8315c63d9e74/); base `0xa79c3a...e04552` | ⚠️ Unaudited |
| WasabiACPAccountFactory | unknown | base | n/a | 2 deployments: base [`0x93ce08...77c487`](./contracts/base-8453/0x93ce08bfd63e89849f8e6b88e589b61ea277c487/); base `0xf32992...d1e4f8` | ⚠️ Unaudited |
| WasabiACPAccountFactory | unknown | base | n/a | 2 deployments: base [`0xfc8d74...bedcad`](./contracts/base-8453/0xfc8d74d7f5d59d18a4271fe4d70fd3b796bedcad/); base `0xfce891...fcd05d` | ⚠️ Unaudited |
| WasabiShortPool | unknown | ethereum | n/a | 2 deployments: ethereum [`0x0fdc7b...30d8ff`](./contracts/ethereum-1/0x0fdc7b5ce282763d5372a44b01db65e14830d8ff/); ethereum `0x61d0df...5ebe12` | ⚠️ Unaudited |
| WasabiVault | unknown | ethereum | n/a | 2 deployments: ethereum [`0x551618...5b23ca`](./contracts/ethereum-1/0x55161896bf9e5867851de6d063b7284a195b23ca/); ethereum `0xc7d3fa...23652b` | ⚠️ Unaudited |
| WasabiVault | unknown | base | n/a | 2 deployments: base [`0x21aaaa...09189e`](./contracts/base-8453/0x21aaaa45411f6b5ad9b27ac25bd8c6c41509189e/); base `0x9c4a49...265057` | ⚠️ Unaudited |
| WasabiVault | unknown | base | n/a | 2 deployments: base [`0x88e23d...2012a3`](./contracts/base-8453/0x88e23db7e2974133cef7aefb470bcc716c2012a3/); base `0xea3952...50cdab` | ⚠️ Unaudited |
| WasabiVaultRecoveryV1 | core_logic | ethereum | n/a | 8 deployments: ethereum [`0x10432b...7bfe71`](./contracts/ethereum-1/0x10432bc30396e70f792b538d7e810c83dd7bfe71/); ethereum `0x127d36...74820a`; ethereum `0x630ed8...d61397`; ethereum `0x7d7bb4...389e8f`; ethereum `0x8d48b8...61e153`; ethereum `0xb533c6...0289f0`; ethereum `0xb86510...ceaba8`; ethereum `0xd2502e...f1c1b4` | ⚠️ Unaudited |
| WasabiVaultRecoveryV1 | core_logic | base | n/a | 8 deployments: base [`0x078b93...ac94fc`](./contracts/base-8453/0x078b931f7759ec09d74dd31316c610e09aac94fc/); base `0x197d5c...7e4a18`; base `0x1c4a80...048b24`; base `0x833fd9...2766b6`; base `0x95c81f...97fe95`; base `0xb152e9...1ad8c9`; base `0xb8da93...7239a0`; base `0xe6c109...9962a2` | ⚠️ Unaudited |
| WasabiVaultRecoveryV1 | core_logic | berachain | n/a | [`0x42b604...a7a81f`](./contracts/berachain-80094/0x42b6044d8fdcc1aebd65c93054bf04caefa7a81f/) | ⚠️ Unaudited |
| WasabiVaultRecoveryV1 | core_logic | berachain | n/a | 2 deployments: berachain [`0xc95ab9...8afa1b`](./contracts/berachain-80094/0xc95ab9eff8fb48760703c74416764b8f898afa1b/); berachain `0xd94821...9c40fe` | ⚠️ Unaudited |
| WasabiVaultRecoveryV1 | core_logic | blast | n/a | 2 deployments: blast [`0x4bed2a...f24855`](./contracts/blast-81457/0x4bed2a922654cacc2be974689619768fabf24855/); blast `0x8e2b50...961e40` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (24)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | ethereum | n/a | `0x082481...1b595f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x4c4b8c...c83b36` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x60e74e...8cdd96` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xabe435...566efb` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xbc0bf0...c7c1f0` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xc2664a...e7734f` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x126e13...637a03` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x1e39cf...d095c2` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x2a1842...65a408` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x323b88...f568cf` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x3ddf12...c109cf` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x4cccdd...d3e03c` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x51abc0...86fb61` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x6da57c...2027e7` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x785363...f99af6` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x7e881d...1f76ea` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x885296...c3615f` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x88c38a...6f4358` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xe98f47...5a211e` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xf60304...d0d1da` | ❓ Unverified |
| UnnamedContract | unknown | berachain | n/a | `0x313409...0b8b2d` | ❓ Unverified |
| UnnamedContract | unknown | berachain | n/a | `0x323b88...f568cf` | ❓ Unverified |
| UnnamedContract | unknown | berachain | n/a | `0xb1a597...0bd0c4` | ❓ Unverified |
| UnnamedContract | unknown | berachain | n/a | `0xeaa6b6...01dcf6` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [Narya.ai_Wasabi_Smart_Contract_Audit.pdf](https://dkoda-public.s3.amazonaws.com/Narya.ai_Wasabi_Smart_Contract_Audit.pdf) | unknown | Audit | 2023-04 | stale | Direct | contract_name | 1 | high |
| [Zellic_Wasabi_Smart_Contract_Audit.pdf](https://dkoda-public.s3.amazonaws.com/Zellic_Wasabi_Smart_Contract_Audit.pdf) | Zellic | Audit | 2023-04 | stale | Direct | contract_name | 4 | high |
| [0xfoobar_Wasabi_Smart_Contract_Audit.pdf](https://wasabi-public.s3.amazonaws.com/audits/v1/0xfoobar_Wasabi_Smart_Contract_Audit.pdf) | Foobar | Audit | 2023-05 | stale | Direct | contract_name | 9 | high |
| [WasabiPerps+Security+Assessment-1+(2).pdf](https://wasabi-public.s3.amazonaws.com/audits/v1/WasabiPerps+Security+Assessment-1+(2).pdf) | Foobar | Audit | 2023-12 | stale | Direct | contract_name | 3 | n/a |
| [Wasabi+Perps+-+Zellic+Audit+Report.pdf](https://wasabi-public.s3.amazonaws.com/audits/v1/Wasabi+Perps+-+Zellic+Audit+Report.pdf) | Zellic | Audit | 2024-01 | stale | Direct | contract_name | 8 | n/a |
| [Wasabi+Perps+-+Zellic+Audit+Report+2.pdf](https://wasabi-public.s3.us-east-1.amazonaws.com/audits/v1/Wasabi+Perps+-+Zellic+Audit+Report+2.pdf) | Zellic | Audit | 2024-10 | aging | Direct | contract_name | 16 | n/a |
| [Wasabi_Perps_EVM_Audit_Sherlock.pdf](https://wasabi-public.s3.us-east-1.amazonaws.com/audits/v1/Wasabi_Perps_EVM_Audit_Sherlock.pdf) | Sherlock | Contest | 2024-11 | aging | Direct | contract_name | 12 | n/a |
| [Wasabi_Perps_Solana_Audit_Sherlock.pdf](https://wasabi-public.s3.us-east-1.amazonaws.com/audits/v1/Wasabi_Perps_Solana_Audit_Sherlock.pdf) | Sherlock | Contest | 2024-11 | aging | Direct | contract_name | 6 | high |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| berachain | [`0x0da575...6bb12b`](./contracts/berachain-80094/0x0da575d3edd4e3ee1d904936f94ec043c06bb12b/) | BeraLongPool | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| berachain | [`0x215c8d...f584ba`](./contracts/berachain-80094/0x215c8d1ab5bcaf172feb7f4b4cf618973af584ba/) | BeraVault | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| berachain | [`0x4c2142...bb1450`](./contracts/berachain-80094/0x4c2142f7ee765de6f9d13b7a9d28b01eb9bb1450/) | BeraVault | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| berachain | [`0xb93219...a3237d`](./contracts/berachain-80094/0xb93219f8ec414684166e7479c16ba62e14a3237d/) | BeraVault | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| blast | [`0xb0a19f...57870c`](./contracts/blast-81457/0xb0a19fa556ab92e51ea7969ef5fefef5a357870c/) | BT404NFTWrapped | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| blast | [`0x3c1694...faa2ce`](./contracts/blast-81457/0x3c169484cfac44ebd491a31abcd767ff2afaa2ce/) | BT404Token | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| berachain | [`0x97090d...2a9e84`](./contracts/berachain-80094/0x97090d4ac726d6105e0c4b522e9234c0392a9e84/) | CappedVaultCompetitionDepositor | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| berachain | [`0xdee9f9...b55f18`](./contracts/berachain-80094/0xdee9f998293bbaee7214f91e45701a317bb55f18/) | CappedVaultCompetitionDepositor | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x2d850f...54d165`](./contracts/ethereum-1/0x2d850f76c671aa2e1c1892a0644c115eb254d165/) | ERC1155CreatorImplementation | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x972e33...e8dd2c`](./contracts/ethereum-1/0x972e33c3e75afbfce40963289e72bcd9c7e8dd2c/) | ExactOutSwapper | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x3d1c97...4de11b`](./contracts/base-8453/0x3d1c97fa08a23a15f56fcca7599b0b2a3a4de11b/) | ExactOutSwapper | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x457c7b...4f9773`](./contracts/base-8453/0x457c7b95243b2798a41d1ec9d48c77db3a4f9773/) | ExactOutSwapper | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| berachain | [`0x6a9887...d8dbf6`](./contracts/berachain-80094/0x6a98876701c8b86a0e8fbe8a28a33b3cd2d8dbf6/) | ExactOutSwapper | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| berachain | [`0x8399ec...02b811`](./contracts/berachain-80094/0x8399ec27c14f2a25e1a82a63080373ffd102b811/) | ExactOutSwapper | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x2ad991...6b6a7a`](./contracts/base-8453/0x2ad9914cb303c4797ac513e6b736c9ed286b6a7a/) | ExactOutSwapperV2 | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0xf016fe...e38ad9`](./contracts/base-8453/0xf016fe66103c2a9f3d156fef32d2da8db8e38ad9/) | ExactOutSwapperV2 | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x001a05...6e6f3d`](./contracts/ethereum-1/0x001a05856e823efdb78ddcf0cf209f69dd6e6f3d/) | Flashloan | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| blast | [`0xc5e2aa...cffa3c`](./contracts/blast-81457/0xc5e2aa6186795440d5ec6ce8d29c74055bcffa3c/) | FractionalNFTRouter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xaaee1a...c21c7a`](./contracts/ethereum-1/0xaaee1a9723aadb7afa2810263653a34ba2c21c7a/) | MOG | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x0d28bc...14610f`](./contracts/base-8453/0x0d28bcb1ebac497a6ef6d0f980ad4bf74c14610f/) | MultiProtocolSwapRouter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x1a3b8a...2f1dc2`](./contracts/base-8453/0x1a3b8ae6fe5b9adaa5fb7df49d832c5ff12f1dc2/) | MultiProtocolSwapRouter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x560b56...1e8d74`](./contracts/base-8453/0x560b5665293ab61b6f7116a0a3a81cdac21e8d74/) | MultiProtocolSwapRouter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x696d0d...2045a7`](./contracts/base-8453/0x696d0d73bd8d3820e9c1d697ebadcf2b372045a7/) | MultiProtocolSwapRouter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xcac101...934d33`](./contracts/ethereum-1/0xcac10196ae000184107916898f10a9045c934d33/) | PartnerFeeManager | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0xf0714a...bfe1be`](./contracts/base-8453/0xf0714a3e2f4d78ffc1b400bfdacb7b8869bfe1be/) | PartnerFeeManager | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| berachain | [`0x11487a...71575e`](./contracts/berachain-80094/0x11487aab86a2e1a9346d1e4313fd6fb2dd71575e/) | PartnerFeeManager | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| berachain | [`0x19c804...c01e08`](./contracts/berachain-80094/0x19c804aa2782561ff03ee3b18f3ca50975c01e08/) | PerpManager | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| berachain | [`0x4b4a53...0833c9`](./contracts/berachain-80094/0x4b4a53c722d54a21fa848fe72e638ee2550833c9/) | RecoveryStrategy | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| berachain | [`0xd44f4d...adffda`](./contracts/berachain-80094/0xd44f4d5779911f8d5c24681418d22e6374adffda/) | StakingAccountFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x08292d...74503d`](./contracts/base-8453/0x08292dff21e8f5ed5510a82cfca5ee141274503d/) | SwapRouter02 | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x19fdac...49e250`](./contracts/ethereum-1/0x19fdac68854702b70a8916eef19dce5c8349e250/) | TimelockWasabiVault | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x72ecf7...f1255e`](./contracts/base-8453/0x72ecf7cf074557984417eabcf3f128ffebf1255e/) | TimelockWasabiVault | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x18145b...73a442`](./contracts/base-8453/0x18145b7b7df58528ca6733cb2fe920677273a442/) | UniversalSwapRouter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x2ea6b2...61d7bf`](./contracts/base-8453/0x2ea6b2a1cdcb622320b6345d9473cd2b6161d7bf/) | UniversalSwapRouter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x4f20b6...7b0978`](./contracts/base-8453/0x4f20b6665ab2dfd00e73987a0ffe8f3f517b0978/) | UniversalSwapRouter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x534605...31ac04`](./contracts/base-8453/0x5346052d8b49cab75ad80f99e7738fc6c631ac04/) | UniversalSwapRouter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x028edb...9c4d3c`](./contracts/ethereum-1/0x028edb97b11b58bfa6e6da64d1cbeea6529c4d3c/) | VaultBoostManager | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x382a45...cbfbd0`](./contracts/ethereum-1/0x382a45ab979b69f94346f3c004033ef7c9cbfbd0/) | VaultBoostManager | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| berachain | [`0x1de4c8...8e5f4e`](./contracts/berachain-80094/0x1de4c8251d25e7541fafee4587a8434eca8e5f4e/) | VaultBoostManager | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0xd78f41...9847d2`](./contracts/base-8453/0xd78f41c714c662406691055dce4b1c261d9847d2/) | WasabiACPAccount | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x0137cf...3f48e8`](./contracts/base-8453/0x0137cff5a7ed63c5fc3aa98dcb0c91940c3f48e8/) | WasabiACPAccountFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x21bc69...eeb6ff`](./contracts/base-8453/0x21bc6937d96a4011a0106ac5ee7b1899b9eeb6ff/) | WasabiACPAccountFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x5557f3...255109`](./contracts/base-8453/0x5557f35607ded91812762aca7754bdb2de255109/) | WasabiACPAccountFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x6a12e6...33b71c`](./contracts/base-8453/0x6a12e6ab226032f66f1b87ee3565cd1a7033b71c/) | WasabiACPAccountFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x710ab5...3d9e74`](./contracts/base-8453/0x710ab53bd48835d6d7588d893d9d8315c63d9e74/) | WasabiACPAccountFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x93ce08...77c487`](./contracts/base-8453/0x93ce08bfd63e89849f8e6b88e589b61ea277c487/) | WasabiACPAccountFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0xfc8d74...bedcad`](./contracts/base-8453/0xfc8d74d7f5d59d18a4271fe4d70fd3b796bedcad/) | WasabiACPAccountFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0fdc7b...30d8ff`](./contracts/ethereum-1/0x0fdc7b5ce282763d5372a44b01db65e14830d8ff/) | WasabiShortPool | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x551618...5b23ca`](./contracts/ethereum-1/0x55161896bf9e5867851de6d063b7284a195b23ca/) | WasabiVault | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x21aaaa...09189e`](./contracts/base-8453/0x21aaaa45411f6b5ad9b27ac25bd8c6c41509189e/) | WasabiVault | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x88e23d...2012a3`](./contracts/base-8453/0x88e23db7e2974133cef7aefb470bcc716c2012a3/) | WasabiVault | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x10432b...7bfe71`](./contracts/ethereum-1/0x10432bc30396e70f792b538d7e810c83dd7bfe71/) | WasabiVaultRecoveryV1 | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x078b93...ac94fc`](./contracts/base-8453/0x078b931f7759ec09d74dd31316c610e09aac94fc/) | WasabiVaultRecoveryV1 | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| berachain | [`0x42b604...a7a81f`](./contracts/berachain-80094/0x42b6044d8fdcc1aebd65c93054bf04caefa7a81f/) | WasabiVaultRecoveryV1 | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| berachain | [`0xc95ab9...8afa1b`](./contracts/berachain-80094/0xc95ab9eff8fb48760703c74416764b8f898afa1b/) | WasabiVaultRecoveryV1 | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| blast | [`0x4bed2a...f24855`](./contracts/blast-81457/0x4bed2a922654cacc2be974689619768fabf24855/) | WasabiVaultRecoveryV1 | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 82 |
| upstream | 7 |
| standard_library | 6 |
| needs_review | 27 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=4
- Match method counts: contract_name=39, extraction_exact=20

Fork inheritance lineage and inherited audits are included when available.
