# Agentic Audit Brief: Neo Tokyo

⚠️ Lifecycle status: UNKNOWN - TVL trajectory indicates non-active lifecycle.

## Project Overview

- Project: Neo Tokyo (`neo-tokyo`)
- Website: [https://neotokyo.codes/](https://neotokyo.codes/)
- Lifecycle: unknown (Tier 0, TVL trajectory)
- Generated: 2026-05-25T06:03:10.652Z
- Pipeline run: v2-pipeline-2026-05-22-eff36e-2ebb
- Chains: ethereum
- Contract surface: 86 unique implementations (105 raw deployments)
- DeFi Llama TVL: $1,105,966.20
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Neo Tokyo is a gaming ecosystem on Ethereum that combines staking, identity, and NFT-based assets. Users stake tokens to earn rewards and access a suite of NFTs representing citizens, items, land, and identities, which are used within the gaming metaverse.

### Architecture

The NeoTokyoStaker contract is the central hub, interacting with BYTES2 for staking and distributing rewards. It references NTConfig for protocol parameters and uses the various NFT contracts (citizens, items, land, identities) to manage in-game assets, while NTS1Vault_V2 likely holds or manages funds.

## Audit Coverage Summary

- Verified implementations audited: 0/38 (0.0%)
- Verified + Unaudited implementations: 38
- Verified by bytecode match: 0
- Unverified implementations: 48
- Unique implementations: 86
- Raw deployments: 105
- Audits discovered: 0
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: n/a (unknown)
- Staleness: 0 fresh, 0 aging, 0 stale, 0 unknown
- Tier 1 coverage: No Tier 1 coverage
- Note: This protocol is classified as [unknown]. ASD of n/a represents exposure in a protocol with unknown activity.

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (38)

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| beckLoot | unknown | ethereum | [`0x86357a...3a66c0`](./contracts/ethereum-1/0x86357a19e5537a8fba9a004e555713bc943a66c0/) | ⚠️ Unaudited |
| boughtIdentity | unknown | ethereum | [`0x835a60...3a892e`](./contracts/ethereum-1/0x835a60cc60b808e47825daa79a9da6c9ff3a892e/) | ⚠️ Unaudited |
| BYTES2 | unknown | ethereum | [`0xa19f52...0bea86`](./contracts/ethereum-1/0xa19f5264f7d7be11c451c093d8f92592820bea86/) | ⚠️ Unaudited |
| BYTESContract | unknown | ethereum | [`0x7d647b...4f8c95`](./contracts/ethereum-1/0x7d647b1a0dcd5525e9c6b3d14be58f27674f8c95/) | ⚠️ Unaudited |
| ERC1967Proxy | proxy | ethereum | [`0xc0aa01...746789`](./contracts/ethereum-1/0xc0aa011fb8bf8e2cdba5c4f059bcd6e699746789/) | ⚠️ Unaudited |
| NeoTokyoStaker | core_logic | ethereum | [`0x67e1ec...ca9e16`](./contracts/ethereum-1/0x67e1ecfa9232e27eaf3133b968a33a9a0dca9e16/) | ⚠️ Unaudited |
| NTBytesBridge | operational_periphery | ethereum | [`0xcc958e...32edf3`](./contracts/ethereum-1/0xcc958ec86d62a479c8490538abf4333aa632edf3/) | ⚠️ Unaudited |
| NTBytesBurner | unknown | ethereum | [`0xf53eb6...329e9c`](./contracts/ethereum-1/0xf53eb638f279baa3994cd7ac2846deb31b329e9c/) | ⚠️ Unaudited |
| NTBytesStopGap | unknown | ethereum | [`0x6868e4...58bfef`](./contracts/ethereum-1/0x6868e48e624668c45945b1bdae8b90de8558bfef/) | ⚠️ Unaudited |
| NTChampionChips | unknown | ethereum | 3 deployments: ethereum [`0x7fdf7b...3705f4`](./contracts/ethereum-1/0x7fdf7b47b095c15e108e42d096d20a74c03705f4/); ethereum `0xa91a93...dac3cd`; ethereum `0xf5205c...8428f5` | ⚠️ Unaudited |
| NTCitizenDeploy | unknown | ethereum | [`0xb668be...3bdd65`](./contracts/ethereum-1/0xb668beb1fa440f6cf2da0399f8c28cab993bdd65/) | ⚠️ Unaudited |
| NTCitizenHandMint | unknown | ethereum | [`0xfd167e...fcaa60`](./contracts/ethereum-1/0xfd167e22ebe42b69aa6ddb74b17be34588fcaa60/) | ⚠️ Unaudited |
| NTConfig | governance | ethereum | 3 deployments: ethereum [`0x51b1b6...9e4b09`](./contracts/ethereum-1/0x51b1b64c33d2c4ae52ca40dcaa186e725e9e4b09/); ethereum `0xa10934...28cb48`; ethereum `0xfce9ab...01745a` | ⚠️ Unaudited |
| NTHandIdentityMint | unknown | ethereum | 2 deployments: ethereum [`0xc54e36...2e06d7`](./contracts/ethereum-1/0xc54e36257978b13c94f5e7930db2d2fcdc2e06d7/); ethereum `0xe5bb82...998747` | ⚠️ Unaudited |
| NTItems | unknown | ethereum | [`0x0938e3...da3af9`](./contracts/ethereum-1/0x0938e3f7ac6d7f674fed551c93f363109bda3af9/) | ⚠️ Unaudited |
| NTLandDeploy | unknown | ethereum | [`0x3c54b7...3019bb`](./contracts/ethereum-1/0x3c54b798b3aad4f6089533af3bdbd6ce233019bb/) | ⚠️ Unaudited |
| NTMigrator | periphery | ethereum | [`0x91a341...fd9e57`](./contracts/ethereum-1/0x91a341e5617070de70f4df6a83cceceea7fd9e57/) | ⚠️ Unaudited |
| NTOuterCitizenDeploy | unknown | ethereum | 2 deployments: ethereum [`0x9b091d...932ec4`](./contracts/ethereum-1/0x9b091d2e0bb88ace4fe8f0fab87b93d8ba932ec4/); ethereum `0xa4a4c4...5b5ec2` | ⚠️ Unaudited |
| NTOuterIdentity | unknown | ethereum | [`0x698fba...62cf54`](./contracts/ethereum-1/0x698fbaaca64944376e2cdc4cad86eaa91362cf54/) | ⚠️ Unaudited |
| NTS1Citizen | unknown | ethereum | 2 deployments: ethereum [`0x3b6b64...339457`](./contracts/ethereum-1/0x3b6b64fc7179f72b7ef656d61737d67bf2339457/); ethereum `0xb9951b...ed1c0f` | ⚠️ Unaudited |
| NTS1Identity | unknown | ethereum | [`0x4e8ae6...4dd93a`](./contracts/ethereum-1/0x4e8ae6529a7a178a8a3a5eecabb90f9e544dd93a/) | ⚠️ Unaudited |
| NTS1Identity_V2 | unknown | ethereum | 2 deployments: ethereum [`0x059174...8f2f99`](./contracts/ethereum-1/0x059174c2fef43f06178d23572fe5556f078f2f99/); ethereum `0xcdaf3b...55bb65` | ⚠️ Unaudited |
| NTS1Item | unknown | ethereum | 2 deployments: ethereum [`0x1bf9a8...40596b`](./contracts/ethereum-1/0x1bf9a8dea26b372af7eb8c9e1086934fcd40596b/); ethereum `0xe7489e...13d249` | ⚠️ Unaudited |
| NTS1Land | unknown | ethereum | 2 deployments: ethereum [`0x847eed...de7d1b`](./contracts/ethereum-1/0x847eed7a43817a490b042dbffda10bcf56de7d1b/); ethereum `0xcfc6a1...62e21a` | ⚠️ Unaudited |
| NTS1Vault | core_logic | ethereum | [`0x30d274...97fe30`](./contracts/ethereum-1/0x30d27415181ae5f42be1f1f2a5f335497697fe30/) | ⚠️ Unaudited |
| NTS1Vault_V2 | core_logic | ethereum | 2 deployments: ethereum [`0x17b2f2...8e69c7`](./contracts/ethereum-1/0x17b2f2b8927a8f11edfd7a27e153be17d68e69c7/); ethereum `0xfe0eab...3d2924` | ⚠️ Unaudited |
| NTS2Citizen | unknown | ethereum | [`0x6254ba...2c8a07`](./contracts/ethereum-1/0x6254bab9ee850590e6e7a56982672231d02c8a07/) | ⚠️ Unaudited |
| NTS2Citizen_V2 | unknown | ethereum | 2 deployments: ethereum [`0x448150...f7912e`](./contracts/ethereum-1/0x4481507cc228fa19d203bd42110d679571f7912e/); ethereum `0x5c291f...3c7fff` | ⚠️ Unaudited |
| NTS2Identity | unknown | ethereum | 2 deployments: ethereum [`0x317d14...f7206e`](./contracts/ethereum-1/0x317d1470d6b3a549983702d66f1b952a21f7206e/); ethereum `0x8e9f3c...0ad6d3` | ⚠️ Unaudited |
| NTS2Item | unknown | ethereum | 2 deployments: ethereum [`0x0b8f04...9efad9`](./contracts/ethereum-1/0x0b8f04f2ca4f15d33274a27439412ab7639efad9/); ethereum `0x9df4c5...da384d` | ⚠️ Unaudited |
| NTS2Items | unknown | ethereum | [`0x7ac66d...d69354`](./contracts/ethereum-1/0x7ac66d40d80d2d8d1e45d6b5b10a1c9d1fd69354/) | ⚠️ Unaudited |
| NTS2Land | unknown | ethereum | 2 deployments: ethereum [`0x6caafb...d25778`](./contracts/ethereum-1/0x6caafb4028558f77dabb8d167aa7a40bccd25778/); ethereum `0xb58ae9...bf4b4e` | ⚠️ Unaudited |
| NTS2LandDeploy | unknown | ethereum | [`0xf90980...1df639`](./contracts/ethereum-1/0xf90980ae7a44e2d18b9615396ff5e9252f1df639/) | ⚠️ Unaudited |
| NTStakedToken | token | ethereum | [`0x049c68...153fa4`](./contracts/ethereum-1/0x049c68ef2791488fb94e888d1350f1e78c153fa4/) | ⚠️ Unaudited |
| NTStakedTokenV2 | token | ethereum | 2 deployments: ethereum [`0xb92053...908627`](./contracts/ethereum-1/0xb920531f7eb6d73a15809893d72a2caebb908627/); ethereum `0xd37ea7...9e7ed9` | ⚠️ Unaudited |
| PublicBytesBurn | unknown | ethereum | [`0x1d59cb...879bf3`](./contracts/ethereum-1/0x1d59cbf95add1237b6449ddea0d0c64952879bf3/) | ⚠️ Unaudited |
| royaltySplitter | operational_periphery | ethereum | 4 deployments: ethereum [`0x88165a...39bcae`](./contracts/ethereum-1/0x88165a735cf313e111088370637ccde23c39bcae/); ethereum `0xb61694...06854c`; ethereum `0xdf9a7c...2fafaa`; ethereum `0xf824b2...971ed6` | ⚠️ Unaudited |
| vaultBox | core_logic | ethereum | [`0xab0b0d...e80879`](./contracts/ethereum-1/0xab0b0dd7e4eab0f9e31a539074a03f1c1be80879/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (48)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| UnnamedContract | unknown | ethereum | `0x04b6fb...58de1e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x064327...2d983d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x0658b1...082a59` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x094d82...84068b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x09a079...ab0c18` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x0a35e3...ba57e6` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x124037...ebf29b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x169e92...763d1d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x16e856...3f839b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x19815e...a8f130` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x1dbd2f...1db5e4` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x254e2d...05f116` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x2d87a6...973bf6` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x3248d8...254851` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x443230...1dcda7` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x451d69...92f494` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x4abf96...555535` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x4c0a9a...6f8f68` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x4c9cfe...3e2054` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x4d4c75...9b2d84` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x5804ae...2f3023` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x5ecf76...592c67` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x64967d...e072b9` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x6685d8...4d445c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x6c7695...4d5d41` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x6ddcf7...039674` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x79995d...cce1f7` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x95c07e...9cf13e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x9b776e...b3fd17` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xae3abf...74d2ec` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xb06050...dcbc3c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xb50722...82b577` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xb7c5ed...269bee` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xbbb6a3...735310` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xc0a6b3...513c0b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xc1da87...75742d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xc47ae0...19a864` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xda5187...812b81` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xe1b58e...d2f287` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xeb8e99...7b2b21` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xeeb06c...a5f857` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xf1f199...af507b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xf333e6...5d08c2` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xf5327f...e088df` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xf76c56...c3862b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xf82706...86c902` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xf9b392...5616d3` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xfb730d...06631e` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | [`0x86357a...3a66c0`](./contracts/ethereum-1/0x86357a19e5537a8fba9a004e555713bc943a66c0/) | beckLoot | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x835a60...3a892e`](./contracts/ethereum-1/0x835a60cc60b808e47825daa79a9da6c9ff3a892e/) | boughtIdentity | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xa19f52...0bea86`](./contracts/ethereum-1/0xa19f5264f7d7be11c451c093d8f92592820bea86/) | BYTES2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x7d647b...4f8c95`](./contracts/ethereum-1/0x7d647b1a0dcd5525e9c6b3d14be58f27674f8c95/) | BYTESContract | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x67e1ec...ca9e16`](./contracts/ethereum-1/0x67e1ecfa9232e27eaf3133b968a33a9a0dca9e16/) | NeoTokyoStaker | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xcc958e...32edf3`](./contracts/ethereum-1/0xcc958ec86d62a479c8490538abf4333aa632edf3/) | NTBytesBridge | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xf53eb6...329e9c`](./contracts/ethereum-1/0xf53eb638f279baa3994cd7ac2846deb31b329e9c/) | NTBytesBurner | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x6868e4...58bfef`](./contracts/ethereum-1/0x6868e48e624668c45945b1bdae8b90de8558bfef/) | NTBytesStopGap | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x7fdf7b...3705f4`](./contracts/ethereum-1/0x7fdf7b47b095c15e108e42d096d20a74c03705f4/) | NTChampionChips | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xb668be...3bdd65`](./contracts/ethereum-1/0xb668beb1fa440f6cf2da0399f8c28cab993bdd65/) | NTCitizenDeploy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xfd167e...fcaa60`](./contracts/ethereum-1/0xfd167e22ebe42b69aa6ddb74b17be34588fcaa60/) | NTCitizenHandMint | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x51b1b6...9e4b09`](./contracts/ethereum-1/0x51b1b64c33d2c4ae52ca40dcaa186e725e9e4b09/) | NTConfig | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xc54e36...2e06d7`](./contracts/ethereum-1/0xc54e36257978b13c94f5e7930db2d2fcdc2e06d7/) | NTHandIdentityMint | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0938e3...da3af9`](./contracts/ethereum-1/0x0938e3f7ac6d7f674fed551c93f363109bda3af9/) | NTItems | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x3c54b7...3019bb`](./contracts/ethereum-1/0x3c54b798b3aad4f6089533af3bdbd6ce233019bb/) | NTLandDeploy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x91a341...fd9e57`](./contracts/ethereum-1/0x91a341e5617070de70f4df6a83cceceea7fd9e57/) | NTMigrator | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x9b091d...932ec4`](./contracts/ethereum-1/0x9b091d2e0bb88ace4fe8f0fab87b93d8ba932ec4/) | NTOuterCitizenDeploy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x698fba...62cf54`](./contracts/ethereum-1/0x698fbaaca64944376e2cdc4cad86eaa91362cf54/) | NTOuterIdentity | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x3b6b64...339457`](./contracts/ethereum-1/0x3b6b64fc7179f72b7ef656d61737d67bf2339457/) | NTS1Citizen | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x4e8ae6...4dd93a`](./contracts/ethereum-1/0x4e8ae6529a7a178a8a3a5eecabb90f9e544dd93a/) | NTS1Identity | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1bf9a8...40596b`](./contracts/ethereum-1/0x1bf9a8dea26b372af7eb8c9e1086934fcd40596b/) | NTS1Item | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x847eed...de7d1b`](./contracts/ethereum-1/0x847eed7a43817a490b042dbffda10bcf56de7d1b/) | NTS1Land | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x30d274...97fe30`](./contracts/ethereum-1/0x30d27415181ae5f42be1f1f2a5f335497697fe30/) | NTS1Vault | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x6254ba...2c8a07`](./contracts/ethereum-1/0x6254bab9ee850590e6e7a56982672231d02c8a07/) | NTS2Citizen | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x317d14...f7206e`](./contracts/ethereum-1/0x317d1470d6b3a549983702d66f1b952a21f7206e/) | NTS2Identity | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x7ac66d...d69354`](./contracts/ethereum-1/0x7ac66d40d80d2d8d1e45d6b5b10a1c9d1fd69354/) | NTS2Items | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x6caafb...d25778`](./contracts/ethereum-1/0x6caafb4028558f77dabb8d167aa7a40bccd25778/) | NTS2Land | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xf90980...1df639`](./contracts/ethereum-1/0xf90980ae7a44e2d18b9615396ff5e9252f1df639/) | NTS2LandDeploy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x049c68...153fa4`](./contracts/ethereum-1/0x049c68ef2791488fb94e888d1350f1e78c153fa4/) | NTStakedToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xb92053...908627`](./contracts/ethereum-1/0xb920531f7eb6d73a15809893d72a2caebb908627/) | NTStakedTokenV2 | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1d59cb...879bf3`](./contracts/ethereum-1/0x1d59cbf95add1237b6449ddea0d0c64952879bf3/) | PublicBytesBurn | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x88165a...39bcae`](./contracts/ethereum-1/0x88165a735cf313e111088370637ccde23c39bcae/) | royaltySplitter | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xab0b0d...e80879`](./contracts/ethereum-1/0xab0b0dd7e4eab0f9e31a539074a03f1c1be80879/) | vaultBox | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 55 |
| upstream | 0 |
| standard_library | 5 |
| needs_review | 26 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Fork inheritance lineage and inherited audits are included when available.
