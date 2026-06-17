# Agentic Audit Brief: Wasabi

⚠️ Lifecycle status: DECLINING - TVL dropped 92.0% over 90 days

## Project Overview

- Project: Wasabi (`wasabi`)
- Website: [https://app.wasabi.xyz/p/LKHR9](https://app.wasabi.xyz/p/LKHR9)
- Lifecycle: declining (Tier 1, rugged)
- Generated: 2026-06-17T07:00:41.334Z
- Pipeline run: brief-regen-topo-2026-06-17
- Chains: base, berachain, blast, ethereum
- Contract surface: 62 unique implementations (286 raw deployments)
- DeFi Llama TVL: $1,043,637.00
- On-chain TVL (included contracts): $6,129,735.09
- TVL by chain: Base $3,347,551.86 | Ethereum $2,030,226.48 | Blast $744,661.47 | Berachain $7,295.28

## Project Description

Wasabi is a decentralized leverage trading protocol for taking long and short positions on long-tail assets, using vault-based liquidity and oracle-driven pricing. The project also includes earning/native-yield functionality and should include Solana when reporting project-level chains or TVL.

### Architecture

The perpetual pools rely on vaults for liquidity, with vaults depositing into pools and earning fees. Routers and swappers facilitate asset conversions for entering/exiting positions, while account abstraction factories simplify user interactions across all families.

## Contract Surface Quality

- Indexed contracts: 445; live-surface contracts included: 286 (286 live, 0 unknown).
- Excluded by liveness: 90 inactive, 69 singleton, 0 uninitialized.
- Deployment units: 30/69 live.
- Detected codebases: uniswap-v3
- Unverified dependencies: 6/38.

## Audit Coverage Summary

- Verified implementations audited: 22/51 (43.1%)
- Verified + Unaudited implementations: 29
- Verified by bytecode match: 0
- Unverified implementations: 11
- Unique implementations: 62
- Raw deployments: 286
- Audits discovered: 8
- Scoreable audits (matched contracts): 8
- ASD (verified + unaudited TVL): $5,478,153.19
- Latest audit: 2024-11 (aging)
- Staleness: 0 fresh, 3 aging, 5 stale, 0 unknown
- Tier 1 coverage: 25.5% (Sherlock)
- Note: This protocol is classified as [declining]. ASD of $5,478,153.19 represents exposure in a protocol with declining activity.

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| Zellic | Tier 2 | 18 | 35.3% | 2024-10 |
| Sherlock | Tier 1 | 13 | 25.5% | 2024-11 |
| Foobar | Tier 2 | 5 | 9.8% | 2023-12 |
| unknown | Tier 2 | 1 | 2.0% | 2023-04 |

## Contract Surface

### ✅ Verified + Audited (22)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| WasabiVault | core_logic | base | unit-24892 (80 proxies) | 80 deployments: base [`0x00d7c8...990ea1`](./contracts/base-8453/0x00d7c86c29f11206cae7f30951047bd278990ea1/); base `0x04acd5...0f5d30`; base `0x091a22...862eda`; base `0x0da575...6bb12b`; base `0x0e54d3...8f0939`; base `0x114073...da64dd`; base `0x11a030...8fc212`; base `0x12c9de...f9cf49`; base `0x181dc3...cbeb13`; base `0x197934...181313`; base `0x1e5f25...aa3915`; base `0x215c8d...f584ba`; base `0x228dca...6d192f`; base `0x277c83...ce3ddd`; base `0x2a3c70...f9b442`; base `0x2d638c...c54f16`; base `0x2eef82...52ceaa`; base `0x313409...0b8b2d`; base `0x3733b6...dad959`; base `0x38ba55...0d9865`; base `0x38dc85...384939`; base `0x3b5587...1cd8ce`; base `0x3bc860...7f9792`; base `0x3edc1f...f3863f`; base `0x3f47af...d089af`; base `0x42011d...2e695e`; base `0x4bd3c9...e3765b`; base `0x4e8fb8...eb2a2f`; base `0x4eeaed...df99f6`; base `0x50afcb...874687`; base `0x52c88e...7b2a40`; base `0x542b5d...93b191`; base `0x55dcda...1af8c2`; base `0x5955cf...a8cb60`; base `0x5c9258...9806b0`; base `0x5caa33...6c1c2e`; base `0x5f164b...1922da`; base `0x6378a7...142afd`; base `0x65d8f6...7e94d2`; base `0x6655cf...160f66`; base `0x699cbf...2dba2c`; base `0x70b808...4f979c`; base `0x74b1e4...39780d`; base `0x76106b...364a95`; base `0x7daa6c...880d3b`; base `0x7e7d9a...869c94`; base `0x82ff77...61dfbe`; base `0x837277...ec208c`; base `0x8379dc...285374`; base `0x87b416...ac459e`; base `0x893f93...de2c89`; base `0x8d1f90...601009`; base `0x9a9298...16ea10`; base `0xa10f4d...06070f`; base `0xa34800...464f80`; base `0xa3a575...470fb2`; base `0xa3ae97...c2a188`; base `0xabb566...c3a9d8`; base `0xadac74...b86a98`; base `0xaec98b...bd9dd3`; base `0xb1a597...0bd0c4`; base `0xbcc889...058117`; base `0xbf6668...629cc4`; base `0xc62697...c8970f`; base `0xc84879...1df3e3`; base `0xc857bc...fb4240`; base `0xc8bd38...16b5bb`; base `0xcc3974...cdbcf3`; base `0xcc8d0c...4e6a14`; base `0xcddb2f...58cc8d`; base `0xcfd04f...a8eb6c`; base `0xd7438e...71d1ac`; base `0xd76dcb...1af9a1`; base `0xe33cc6...5372c5`; base `0xe36530...288ca4`; base `0xe8f53b...8a61bb`; base `0xeb55a1...3fd4d0`; base `0xeffe2b...3cea2f`; base `0xf50c66...db1059`; base `0xfb39f4...9cbf8e` | ✅ Audited |
| BlastVault | core_logic | blast | unit-24941 (25 proxies) | 25 deployments: blast [`0x09c885...33082a`](./contracts/blast-81457/0x09c885de423eab752bfead9de203c9fe8c33082a/); blast `0x14f86c...f0d13a`; blast `0x18412f...a876b7`; blast `0x1e046b...daf0c8`; blast `0x237e60...f80144`; blast `0x2cb60a...0acce2`; blast `0x3336f1...ae1558`; blast `0x3563b4...8f9e9a`; blast `0x3ccdbd...e768ad`; blast `0x4f01f2...b6b551`; blast `0x5c0f73...89b5a7`; blast `0x616afd...103558`; blast `0x6b4d37...19303c`; blast `0x7274aa...e7fe81`; blast `0x73ec6a...ed9d74`; blast `0x7eda4a...cacccf`; blast `0x9db922...a64cba`; blast `0x9e31ef...c57209`; blast `0x9eea5b...48be22`; blast `0xba74ab...d46c1a`; blast `0xc80615...e93014`; blast `0xcc082c...0d7ab5`; blast `0xcc3eed...56d34a`; blast `0xce979f...d4de4d`; blast `0xf2abb5...a6af53` | ✅ Audited |
| WasabiVault | core_logic | ethereum | unit-24882 (54 proxies) | 54 deployments: ethereum [`0x1831f6...a61ae2`](./contracts/ethereum-1/0x1831f6b2573e756bfafdcb121880a80894a61ae2/); ethereum `0x1becea...22e3db`; ethereum `0x1ca1fc...8a7aba`; ethereum `0x263729...eb8c03`; ethereum `0x2a7693...62d63b`; ethereum `0x2f49de...17d301`; ethereum `0x34f0a8...edf77d`; ethereum `0x364cb3...03a1ed`; ethereum `0x36b9bc...c5759a`; ethereum `0x39eed0...a16ee2`; ethereum `0x491caf...b62669`; ethereum `0x4df48f...44c8e2`; ethereum `0x519db1...c026af`; ethereum `0x5609ef...10d585`; ethereum `0x5bac8a...2a8a64`; ethereum `0x608889...34468e`; ethereum `0x63628b...7a84b8`; ethereum `0x64b021...99c197`; ethereum `0x6a4600...f54bfa`; ethereum `0x6b4192...ce9736`; ethereum `0x6e9e3b...3b076e`; ethereum `0x73ebff...05b8e9`; ethereum `0x75f327...e63d4f`; ethereum `0x79356b...929162`; ethereum `0x7dd8f2...248319`; ethereum `0x800187...9bd34a`; ethereum `0x80f035...93ee9b`; ethereum `0x832038...d07c18`; ethereum `0x8c71ba...e3ee10`; ethereum `0x8e26da...0de32d`; ethereum `0x8e3fdd...ebcf2f`; ethereum `0x94df93...5311a2`; ethereum `0x96c243...de2020`; ethereum `0x9a8604...221cfd`; ethereum `0x9b6eee...2d8bea`; ethereum `0xa2a9d2...3873b9`; ethereum `0xa4d274...a8ebf6`; ethereum `0xa4d853...19f7a7`; ethereum `0xa54151...dd527e`; ethereum `0xad99d6...179c8d`; ethereum `0xb3324d...e56fb7`; ethereum `0xb586b3...62abd8`; ethereum `0xbaaa2a...ec5c7d`; ethereum `0xc7995a...dece5b`; ethereum `0xd4f062...7ef118`; ethereum `0xd7738f...fe2530`; ethereum `0xd8bdfe...80021e`; ethereum `0xdd5c60...fe058e`; ethereum `0xe29e74...8f6f4b`; ethereum `0xe6238f...b21b76`; ethereum `0xe8c96f...513de9`; ethereum `0xed5179...f1895b`; ethereum `0xed6f77...4ab80a`; ethereum `0xf6040c...da07e9` | ✅ Audited |
| WasabiVault | core_logic | berachain | unit-24925 (3 proxies) | 3 deployments: berachain [`0x0ebddd...be4e9c`](./contracts/berachain-80094/0x0ebddd4cc9758fbadd49263dc57c8ac610be4e9c/); berachain `0x433d1f...e88e82`; berachain `0xa31342...7100d1` | ✅ Audited |
| WasabiShortPool | core_logic | berachain | unit-24927 | [`0x3ee6c6...0df1ee`](./contracts/berachain-80094/0x3ee6c6cdaa0073de6da00091329de4390b0df1ee/) | ✅ Audited |
| BlastShortPool | core_logic | blast | unit-24939 | [`0x030107...c10c3a`](./contracts/blast-81457/0x0301079dabdc9a2c70b856b2c51aca02bac10c3a/) | ✅ Audited |
| BlastLongPool | core_logic | blast | unit-24940 | [`0x046299...1ed355`](./contracts/blast-81457/0x046299143a880c4d01a318bc6c9f2c0a5c1ed355/) | ✅ Audited |
| AddressProvider | registry | ethereum | n/a | 3 deployments: ethereum [`0x2b0434...15ee72`](./contracts/ethereum-1/0x2b04347413918588b81782cc446524354a15ee72/); ethereum `0x409fb5...d075c4`; base `0xfc55ab...f9252f` | ✅ Audited |
| DebtController | governance | base | n/a | 4 deployments: ethereum `0xfbc94e...1246d1`; ethereum `0xfe7b8f...ee60c2`; base [`0x2182b5...b84684`](./contracts/base-8453/0x2182b5532d8eb4b614031ac68924975100b84684/); blast `0xe3f3dc...cce0ac` | ✅ Audited |
| PerpManager | governance | ethereum | n/a | 7 deployments: ethereum [`0x3461ae...56eee2`](./contracts/ethereum-1/0x3461ae4336a55952d7ce451a9dec3a0d3856eee2/); ethereum `0x7973cb...a96952`; ethereum `0x7c4783...7c740a`; ethereum `0xba5c58...8d2683`; ethereum `0xba8724...d69375`; ethereum `0xff9f87...4d39dc`; berachain `0xb73daa...cbf220` | ✅ Audited |
| PerpManager | governance | ethereum | unit-24889 | [`0xc0b01a...010e7d`](./contracts/ethereum-1/0xc0b01a4f4a4459d5a7e13c2e8566cde93a010e7d/) | ✅ Audited |
| PerpManager | governance | base | unit-24917 | [`0xec3e4e...f7d70e`](./contracts/base-8453/0xec3e4e0fdb50411f4c5ee9f75436d8b20cf7d70e/) | ✅ Audited |
| PerpManager | governance | berachain | unit-24929 | [`0x5c285d...b6dd81`](./contracts/berachain-80094/0x5c285dd01440fb1175ae31934a5d1b3b90b6dd81/) | ✅ Audited |
| PerpManager | governance | blast | unit-24946 | [`0xff2cdb...7cc268`](./contracts/blast-81457/0xff2cdb9cdb79a60a31188fe37bdc6774107cc268/) | ✅ Audited |
| WasabiLongPool | core_logic | ethereum | n/a | 11 deployments: ethereum [`0x023afc...6a6078`](./contracts/ethereum-1/0x023afc8b575ef583ef5596d3834d82b7116a6078/); ethereum `0x095c34...5599d3`; ethereum `0x17d163...db5c3d`; ethereum `0x7041ce...7f3e95`; ethereum `0x8e19c0...2ddc04`; ethereum `0x94cf96...b10c51`; ethereum `0x97eea3...ab40f7`; ethereum `0x995c0a...b8518b`; ethereum `0xab1644...5df9cb`; ethereum `0xd2439d...165ffe`; ethereum `0xd4a321...ae430d` | ✅ Audited |
| WasabiOption | unknown | ethereum | n/a | [`0xfc68f2...2e18a0`](./contracts/ethereum-1/0xfc68f2130e094c95b6c4f5494158cbeb172e18a0/) | ✅ Audited |
| WasabiRouter | adapter | ethereum | n/a | 6 deployments: ethereum [`0x08aad5...72ae33`](./contracts/ethereum-1/0x08aad56f494d705eaee20185e02996d5be72ae33/); ethereum `0x0b38cb...5f437e`; ethereum `0x77abb6...63dbf4`; ethereum `0x96b10b...a63f23`; ethereum `0xe5312d...a564f9`; berachain `0x760d9c...b52d64` | ✅ Audited |
| WasabiRouter | adapter | ethereum | unit-24891 | [`0xee5c45...aac03b`](./contracts/ethereum-1/0xee5c45dcb0064f9b097edbc5d8adfce23baac03b/) | ✅ Audited |
| WasabiRouter | adapter | base | unit-24921 | [`0xfae69f...d8558f`](./contracts/base-8453/0xfae69f2c82747f878f74c1e57a1aed945ed8558f/) | ✅ Audited |
| WasabiRouter | adapter | berachain | unit-24931 | [`0x7864d8...a4b237`](./contracts/berachain-80094/0x7864d8c34bfcdbd83fda2da917aa6175a4a4b237/) | ✅ Audited |
| WasabiShortPool | core_logic | ethereum | n/a | 12 deployments: ethereum [`0x1536f7...a3662b`](./contracts/ethereum-1/0x1536f738d1dd76a90d3667dca58e85867ea3662b/); ethereum `0x1888f9...d46176`; ethereum `0x41247b...f78fad`; ethereum `0x44ba62...96559e`; ethereum `0x62d254...9bf842`; ethereum `0x8826d2...3cbc96`; ethereum `0x96ce21...137f78`; ethereum `0xc905de...b7dca5`; ethereum `0xcb8d3c...e8a2bb`; ethereum `0xd5a09a...33ae95`; ethereum `0xf22b8d...64aafa`; ethereum `0xfc55a2...28006b` | ✅ Audited |
| WasabiVault | core_logic | ethereum | n/a | 6 deployments: ethereum [`0x7f1cec...d1681a`](./contracts/ethereum-1/0x7f1cec2328170e510f2d0375ce1ba7ac45d1681a/); ethereum `0xa9d119...9771d7`; ethereum `0xf7855f...ae8153`; base `0xac4550...fb3b8a`; base `0xf2e381...ed1786`; berachain `0xec0c23...806ad5` | ✅ Audited |

### ⚠️ Verified + Unaudited (29)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| WasabiVaultRecoveryV1 | core_logic | base | unit-24894 (8 proxies) | 8 deployments: base [`0x078b93...ac94fc`](./contracts/base-8453/0x078b931f7759ec09d74dd31316c610e09aac94fc/); base `0x197d5c...7e4a18`; base `0x1c4a80...048b24`; base `0x833fd9...2766b6`; base `0x95c81f...97fe95`; base `0xb152e9...1ad8c9`; base `0xb8da93...7239a0`; base `0xe6c109...9962a2` | ⚠️ Unaudited |
| WasabiVaultRecoveryV1 | core_logic | ethereum | unit-24881 (8 proxies) | 8 deployments: ethereum [`0x10432b...7bfe71`](./contracts/ethereum-1/0x10432bc30396e70f792b538d7e810c83dd7bfe71/); ethereum `0x127d36...74820a`; ethereum `0x630ed8...d61397`; ethereum `0x7d7bb4...389e8f`; ethereum `0x8d48b8...61e153`; ethereum `0xb533c6...0289f0`; ethereum `0xb86510...ceaba8`; ethereum `0xd2502e...f1c1b4` | ⚠️ Unaudited |
| WasabiVaultRecoveryV1 | core_logic | blast | unit-24942 (2 proxies) | 2 deployments: blast [`0x4bed2a...f24855`](./contracts/blast-81457/0x4bed2a922654cacc2be974689619768fabf24855/); blast `0x8e2b50...961e40` | ⚠️ Unaudited |
| WasabiVaultRecoveryV1 | core_logic | berachain | unit-24937 (2 proxies) | 2 deployments: berachain [`0xc95ab9...8afa1b`](./contracts/berachain-80094/0xc95ab9eff8fb48760703c74416764b8f898afa1b/); berachain `0xd94821...9c40fe` | ⚠️ Unaudited |
| BeraLongPool | core_logic | berachain | unit-24924 | [`0x0da575...6bb12b`](./contracts/berachain-80094/0x0da575d3edd4e3ee1d904936f94ec043c06bb12b/) | ⚠️ Unaudited |
| AaveStrategy | operational_periphery | ethereum | unit-24883 (3 proxies) | 3 deployments: ethereum [`0x1c1efa...fcd548`](./contracts/ethereum-1/0x1c1efa17081cde0c8ee816075369741d89fcd548/); ethereum `0x997904...448f67`; ethereum `0xc3f7e6...1543d2` | ⚠️ Unaudited |
| AaveStrategy | operational_periphery | base | unit-24893 | [`0x023d35...537fcf`](./contracts/base-8453/0x023d357d04f2d024993f6c002837ed3195537fcf/) | ⚠️ Unaudited |
| BeraVault | core_logic | berachain | n/a | [`0x4ed9e4...d6a413`](./contracts/berachain-80094/0x4ed9e49f81275d1b5c294997b5acfb73b8d6a413/) | ⚠️ Unaudited |
| Disperse | unknown | berachain | n/a | [`0x2bf4e5...fbc8bb`](./contracts/berachain-80094/0x2bf4e5deea48d66226fc25191a01e18378fbc8bb/) | ⚠️ Unaudited |
| ERC1155CreatorImplementation | token | ethereum | unit-24884 | [`0x2d850f...54d165`](./contracts/ethereum-1/0x2d850f76c671aa2e1c1892a0644c115eb254d165/) | ⚠️ Unaudited |
| ERC1967Proxy | proxy | ethereum | unit-24887 | [`0x8e0edf...d5afc0`](./contracts/ethereum-1/0x8e0edfd6d15f858adbb41677b82ab64797d5afc0/) | ⚠️ Unaudited |
| ERC1967Proxy | proxy | base | unit-24911 | [`0xa456c7...7da37c`](./contracts/base-8453/0xa456c77d358c9c89f4dfb294fa2a47470b7da37c/) | ⚠️ Unaudited |
| ERC1967Proxy | proxy | base | unit-24912 | [`0xbdae5d...b248aa`](./contracts/base-8453/0xbdae5df498a45c5f058e3a09afe9ba4da7b248aa/) | ⚠️ Unaudited |
| ERC1967Proxy | proxy | base | unit-24922 | [`0xfc81df...3369fe`](./contracts/base-8453/0xfc81dfde25083a286723b7c9dd7213f8723369fe/) | ⚠️ Unaudited |
| ExactOutSwapperV2 | adapter | base | n/a | [`0x2ad991...6b6a7a`](./contracts/base-8453/0x2ad9914cb303c4797ac513e6b736c9ed286b6a7a/) | ⚠️ Unaudited |
| ExactOutSwapperV2 | adapter | base | unit-24918 | [`0xf016fe...e38ad9`](./contracts/base-8453/0xf016fe66103c2a9f3d156fef32d2da8db8e38ad9/) | ⚠️ Unaudited |
| Flashloan | unknown | ethereum | n/a | [`0x001a05...6e6f3d`](./contracts/ethereum-1/0x001a05856e823efdb78ddcf0cf209f69dd6e6f3d/) | ⚠️ Unaudited |
| MOG | unknown | ethereum | n/a | [`0xaaee1a...c21c7a`](./contracts/ethereum-1/0xaaee1a9723aadb7afa2810263653a34ba2c21c7a/) | ⚠️ Unaudited |
| PartnerFeeManager | governance | ethereum | unit-24890 | [`0xcac101...934d33`](./contracts/ethereum-1/0xcac10196ae000184107916898f10a9045c934d33/) | ⚠️ Unaudited |
| PartnerFeeManager | governance | base | unit-24919 | [`0xf0714a...bfe1be`](./contracts/base-8453/0xf0714a3e2f4d78ffc1b400bfdacb7b8869bfe1be/) | ⚠️ Unaudited |
| PartnerFeeManager | governance | berachain | n/a | 3 deployments: ethereum `0xc902f6...566af2`; base `0x25f32b...0bb4a5`; berachain [`0x11487a...71575e`](./contracts/berachain-80094/0x11487aab86a2e1a9346d1e4313fd6fb2dd71575e/) | ⚠️ Unaudited |
| RecoveryStrategy | core_logic | berachain | n/a | 2 deployments: berachain [`0x4b4a53...0833c9`](./contracts/berachain-80094/0x4b4a53c722d54a21fa848fe72e638ee2550833c9/); berachain `0x7ca07d...9ff889` | ⚠️ Unaudited |
| StakingAccountFactory | registry | berachain | n/a | [`0xd44f4d...adffda`](./contracts/berachain-80094/0xd44f4d5779911f8d5c24681418d22e6374adffda/) | ⚠️ Unaudited |
| SwapRouter02 | adapter | base | n/a | [`0x08292d...74503d`](./contracts/base-8453/0x08292dff21e8f5ed5510a82cfca5ee141274503d/) | ⚠️ Unaudited |
| TimelockWasabiVault | core_logic | ethereum | n/a | 4 deployments: ethereum [`0x19fdac...49e250`](./contracts/ethereum-1/0x19fdac68854702b70a8916eef19dce5c8349e250/); ethereum `0x92e561...f56626`; ethereum `0xacc3cb...0be6b9`; ethereum `0xda402f...c9683f` | ⚠️ Unaudited |
| VaultBoostManager | core_logic | ethereum | unit-24885 | [`0x382a45...cbfbd0`](./contracts/ethereum-1/0x382a45ab979b69f94346f3c004033ef7c9cbfbd0/) | ⚠️ Unaudited |
| VaultBoostManager | core_logic | berachain | n/a | [`0x1de4c8...8e5f4e`](./contracts/berachain-80094/0x1de4c8251d25e7541fafee4587a8434eca8e5f4e/) | ⚠️ Unaudited |
| WasabiACPAccount | core_logic | base | n/a | [`0xd78f41...9847d2`](./contracts/base-8453/0xd78f41c714c662406691055dce4b1c261d9847d2/) | ⚠️ Unaudited |
| WasabiVaultRecoveryV1 | core_logic | berachain | n/a | [`0x42b604...a7a81f`](./contracts/berachain-80094/0x42b6044d8fdcc1aebd65c93054bf04caefa7a81f/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (11)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | ethereum | n/a | `0xbc0bf0...c7c1f0` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x126e13...637a03` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x2a1842...65a408` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x4cccdd...d3e03c` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x6da57c...2027e7` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x785363...f99af6` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x7e881d...1f76ea` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x885296...c3615f` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x88c38a...6f4358` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xe98f47...5a211e` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xf60304...d0d1da` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [DL audit link](https://dkoda-public.s3.amazonaws.com/Narya.ai_Wasabi_Smart_Contract_Audit.pdf) | unknown | Audit | 2023-04 | stale | Direct | contract_name | 1 | high |
| [DL audit link](https://dkoda-public.s3.amazonaws.com/Zellic_Wasabi_Smart_Contract_Audit.pdf) | Zellic | Audit | 2023-04 | stale | Direct | contract_name | 1 | high |
| [Foobar Report](https://wasabi-public.s3.amazonaws.com/audits/v1/0xfoobar_Wasabi_Smart_Contract_Audit.pdf) | Foobar | Audit | 2023-05 | stale | Direct | contract_name | 1 | high |
| [WasabiPerps+Security+Assessment-1+(2).pdf](https://wasabi-public.s3.amazonaws.com/audits/v1/WasabiPerps+Security+Assessment-1+(2).pdf) | Foobar | Audit | 2023-12 | stale | Direct | contract_name | 28 | high |
| [Zellic Report](https://wasabi-public.s3.amazonaws.com/audits/v1/Wasabi+Perps+-+Zellic+Audit+Report.pdf) | Zellic | Audit | 2024-01 | stale | Direct | contract_name | 174 | high |
| [Zellic Report (2)](https://wasabi-public.s3.us-east-1.amazonaws.com/audits/v1/Wasabi+Perps+-+Zellic+Audit+Report+2.pdf) | Zellic | Audit | 2024-10 | aging | Direct | contract_name | 212 | high |
| [Sherlock EVM Report](https://wasabi-public.s3.us-east-1.amazonaws.com/audits/v1/Wasabi_Perps_EVM_Audit_Sherlock.pdf) | Sherlock | Contest | 2024-11 | aging | Direct | contract_name | 205 | high |
| [Sherlock SVM Report](https://wasabi-public.s3.us-east-1.amazonaws.com/audits/v1/Wasabi_Perps_Solana_Audit_Sherlock.pdf) | Sherlock | Contest | 2024-11 | aging | Direct | contract_name | 4 | high |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| berachain | [`0x4ed9e4...d6a413`](./contracts/berachain-80094/0x4ed9e49f81275d1b5c294997b5acfb73b8d6a413/) | BeraVault | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x2d850f...54d165`](./contracts/ethereum-1/0x2d850f76c671aa2e1c1892a0644c115eb254d165/) | ERC1155CreatorImplementation | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x2ad991...6b6a7a`](./contracts/base-8453/0x2ad9914cb303c4797ac513e6b736c9ed286b6a7a/) | ExactOutSwapperV2 | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x001a05...6e6f3d`](./contracts/ethereum-1/0x001a05856e823efdb78ddcf0cf209f69dd6e6f3d/) | Flashloan | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| berachain | [`0x11487a...71575e`](./contracts/berachain-80094/0x11487aab86a2e1a9346d1e4313fd6fb2dd71575e/) | PartnerFeeManager | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| berachain | [`0x4b4a53...0833c9`](./contracts/berachain-80094/0x4b4a53c722d54a21fa848fe72e638ee2550833c9/) | RecoveryStrategy | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| berachain | [`0xd44f4d...adffda`](./contracts/berachain-80094/0xd44f4d5779911f8d5c24681418d22e6374adffda/) | StakingAccountFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x19fdac...49e250`](./contracts/ethereum-1/0x19fdac68854702b70a8916eef19dce5c8349e250/) | TimelockWasabiVault | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| berachain | [`0x1de4c8...8e5f4e`](./contracts/berachain-80094/0x1de4c8251d25e7541fafee4587a8434eca8e5f4e/) | VaultBoostManager | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0xd78f41...9847d2`](./contracts/base-8453/0xd78f41c714c662406691055dce4b1c261d9847d2/) | WasabiACPAccount | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| berachain | [`0x42b604...a7a81f`](./contracts/berachain-80094/0x42b6044d8fdcc1aebd65c93054bf04caefa7a81f/) | WasabiVaultRecoveryV1 | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 21 |
| upstream | 1 |
| standard_library | 29 |
| needs_review | 11 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=8
- Match method counts: extraction_exact=825

Fork inheritance lineage and inherited audits are included when available.
