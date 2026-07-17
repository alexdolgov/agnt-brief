# Agentic Audit Brief: BEND

## Project Overview

- Project: BEND (`bend`)
- Website: [https://bend.berachain.com](https://bend.berachain.com)
- Lifecycle: active (Tier 0, 56.4% below peak)
- Generated: 2026-07-04T14:53:05.484Z
- Pipeline run: v2-pipeline-2026-07-01-3e33f2-d640
- Chains: berachain, ethereum
- Contract surface: 97 unique implementations (100 raw deployments)
- DeFi Llama TVL: $23,137,652.77
- On-chain TVL (included contracts): $9,131,114.70
- TVL by chain: Berachain $9,131,114.70

## Project Description

Lending. Structurally: 54 project-authored contract(s) across 2 chain(s); 1 ERC4626 vault, 4 ERC20 tokens, 8 ERC721 NFTs, 1 ERC1155 multi-token; role-gated via AccessControl; upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 9 functional families. Its contracts share 21 common project-authored base contract(s) (onft721enumerable, onft721core, oapp). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 127; live-surface contracts included: 99 (53 live, 46 unknown).
- Excluded by liveness: 28 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 0/28 (0.0%)
- Deployed-live implementations: 53 of 97 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 10/53
- Verified + Unaudited implementations: 43
- Verified by bytecode match: 0
- Unverified implementations: 44
- Unique implementations: 97
- Raw deployments: 100
- Audits discovered: 2 (2 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 1
- ASD (verified + unaudited TVL): $730,934.06
- Latest audit: 2026-05 (fresh)
- Audit staleness (calendar age): 2 fresh, 0 aging, 0 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 10 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| Spearbit | Tier 1 | 10 | 18.9% | 2026-05 |

## Contract Surface

### ✅ Verified + Audited (10)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| WBERAStakerVault | core_logic | berachain | n/a | [`0x118d2ceee9785eaf70c15cd74cd84c9f8c3eec9a`](./contracts/berachain-80094/0x118d2ceee9785eaf70c15cd74cd84c9f8c3eec9a/) | ✅ Audited |
| BeaconDeposit | registry | berachain | n/a | [`0x4242424242424242424242424242424242424242`](./contracts/berachain-80094/0x4242424242424242424242424242424242424242/) | ✅ Audited |
| BeraChef | unknown | berachain | n/a | [`0xdf960e8f3f19c481dde769ededd439ea1a63426a`](./contracts/berachain-80094/0xdf960e8f3f19c481dde769ededd439ea1a63426a/) | ✅ Audited |
| BGT | unknown | berachain | n/a | [`0x656b95e550c07a9ffe548bd4085c72418ceb1dba`](./contracts/berachain-80094/0x656b95e550c07a9ffe548bd4085c72418ceb1dba/) | ✅ Audited |
| BGTIncentiveFeeCollector | unknown | berachain | n/a | [`0x1984baf659607cc5f206c55bb3b00eb3e180190b`](./contracts/berachain-80094/0x1984baf659607cc5f206c55bb3b00eb3e180190b/) | ✅ Audited |
| DedicatedEmissionStreamManager | operational_periphery | berachain | n/a | [`0x813dcdba9197947792985c866ce98d6739ca821a`](./contracts/berachain-80094/0x813dcdba9197947792985c866ce98d6739ca821a/) | ✅ Audited |
| Distributor | operational_periphery | berachain | n/a | [`0xd2f19a79b026fb636a7c300bf5947df113940761`](./contracts/berachain-80094/0xd2f19a79b026fb636a7c300bf5947df113940761/) | ✅ Audited |
| LSTStakerVaultFactory | registry | berachain | n/a | [`0xc41bbd6695ab6bdc6d04701b15f4ce5eba2e2500`](./contracts/berachain-80094/0xc41bbd6695ab6bdc6d04701b15f4ce5eba2e2500/) | ✅ Audited |
| RewardVaultFactory | registry | berachain | n/a | [`0x94ad6ac84f6c6fba8b8ccbd71d9f4f101def52a8`](./contracts/berachain-80094/0x94ad6ac84f6c6fba8b8ccbd71d9f4f101def52a8/) | ✅ Audited |
| RewardVaultHelper | core_logic | berachain | n/a | [`0xee233a69a36db7fc10e03e921d90dec52cdce6e2`](./contracts/berachain-80094/0xee233a69a36db7fc10e03e921d90dec52cdce6e2/) | ✅ Audited |

### ⚠️ Verified + Unaudited (43)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| Vault | core_logic | berachain | n/a | [`0x4be03f781c497a489e3cb0287833452ca9b9e80b`](./contracts/berachain-80094/0x4be03f781c497a489e3cb0287833452ca9b9e80b/) | ⚠️ Unaudited |
| AdaptiveCurveIrm | unknown | berachain | n/a | [`0xcf247df3a2322dea0d408f011c194906e77a6f62`](./contracts/berachain-80094/0xcf247df3a2322dea0d408f011c194906e77a6f62/) | ⚠️ Unaudited |
| BabyBearsONFT | token | berachain | n/a | [`0xddeaf391c4be2d01ca52abb8c159a06820ef078c`](./contracts/berachain-80094/0xddeaf391c4be2d01ca52abb8c159a06820ef078c/) | ⚠️ Unaudited |
| BabyBearsONFTAdapter | adapter | ethereum | n/a | [`0xc48c54e92d135b356dd0cbf50f803a8c8d38968b`](./contracts/ethereum-1/0xc48c54e92d135b356dd0cbf50f803a8c8d38968b/) | ⚠️ Unaudited |
| BalancerRelayer | unknown | berachain | n/a | [`0x6044f181ab5e9c05a4ed9ce295f3b178d2492ee7`](./contracts/berachain-80094/0x6044f181ab5e9c05a4ed9ce295f3b178d2492ee7/) | ⚠️ Unaudited |
| BandBearsONFT | token | berachain | n/a | [`0x7711b2eb2451259dbf211e30157ceb7cfeb79a19`](./contracts/berachain-80094/0x7711b2eb2451259dbf211e30157ceb7cfeb79a19/) | ⚠️ Unaudited |
| BandBearsONFTAdapter | adapter | ethereum | n/a | [`0x392faa1b0ef108ded69897ba5382e909c39fc09e`](./contracts/ethereum-1/0x392faa1b0ef108ded69897ba5382e909c39fc09e/) | ⚠️ Unaudited |
| BatchRelayerLibrary | unknown | berachain | n/a | [`0xcb4ae3030ba06f7eee54a7b96afca7457f9525cf`](./contracts/berachain-80094/0xcb4ae3030ba06f7eee54a7b96afca7457f9525cf/) | ⚠️ Unaudited |
| BatchRelayerQueryLibrary | periphery | berachain | n/a | [`0x4151083172b2cefb83a33fd7fc9f6cbabb3fd08d`](./contracts/berachain-80094/0x4151083172b2cefb83a33fd7fc9f6cbabb3fd08d/) | ⚠️ Unaudited |
| BerachainGovernance | unknown | berachain | n/a | [`0x4f4a5c2194b8e856b7a05b348f6ba3978fb6f6d5`](./contracts/berachain-80094/0x4f4a5c2194b8e856b7a05b348f6ba3978fb6f6d5/) | ⚠️ Unaudited |
| BitBearsONFT | token | berachain | n/a | [`0x72d876d9cdf4001b836f8e47254d0551eda2eebb`](./contracts/berachain-80094/0x72d876d9cdf4001b836f8e47254d0551eda2eebb/) | ⚠️ Unaudited |
| BitBearsONFTAdapter | adapter | ethereum | n/a | [`0x3eb12398753eed7e8747321c37c85de30d8e2e94`](./contracts/ethereum-1/0x3eb12398753eed7e8747321c37c85de30d8e2e94/) | ⚠️ Unaudited |
| BondBearsONFT | token | berachain | n/a | [`0xa0cf472e6132f6b822a944f6f31aa7b261c7c375`](./contracts/berachain-80094/0xa0cf472e6132f6b822a944f6f31aa7b261c7c375/) | ⚠️ Unaudited |
| BondBearsONFTAdapter | adapter | ethereum | n/a | [`0x6b1c374105467d1fc1090c989bcbbcc172c8a89c`](./contracts/ethereum-1/0x6b1c374105467d1fc1090c989bcbbcc172c8a89c/) | ⚠️ Unaudited |
| BongBearsONFT | token | berachain | n/a | [`0x141de07e5d4c4759ec9301da106115d4841f66cd`](./contracts/berachain-80094/0x141de07e5d4c4759ec9301da106115d4841f66cd/) | ⚠️ Unaudited |
| BongBearsONFT1155Wrapper | token | ethereum | n/a | [`0x1897c001341f81ca72154b75b882ae708e06bf48`](./contracts/ethereum-1/0x1897c001341f81ca72154b75b882ae708e06bf48/) | ⚠️ Unaudited |
| BooBearsONFT | token | berachain | n/a | [`0xf49ec5db255854c4a567de5ab3826c9aabafc7cf`](./contracts/berachain-80094/0xf49ec5db255854c4a567de5ab3826c9aabafc7cf/) | ⚠️ Unaudited |
| BooBearsONFTAdapter | adapter | ethereum | n/a | [`0x7591992f1a98636c6b7207f30382ca4bec83d9be`](./contracts/ethereum-1/0x7591992f1a98636c6b7207f30382ca4bec83d9be/) | ⚠️ Unaudited |
| Bundler3 | unknown | berachain | n/a | [`0xf920140a65d0f412f2ab3e76c4feab5eef0657ae`](./contracts/berachain-80094/0xf920140a65d0f412f2ab3e76c4feab5eef0657ae/) | ⚠️ Unaudited |
| DelegationHandlerFactory | registry | berachain | n/a | [`0xad17932a5b1aaeea73d277a6ae670623f176e0d0`](./contracts/berachain-80094/0xad17932a5b1aaeea73d277a6ae670623f176e0d0/) | ⚠️ Unaudited |
| GeneralAdapter1 | adapter | berachain | n/a | [`0xd2b9667f5214115e27937c410caee83e3a901df7`](./contracts/berachain-80094/0xd2b9667f5214115e27937c410caee83e3a901df7/) | ⚠️ Unaudited |
| Honey | unknown | berachain | n/a | [`0xfcbd14dc51f0a4d49d5e53c2e0950e0bc26d0dce`](./contracts/berachain-80094/0xfcbd14dc51f0a4d49d5e53c2e0950e0bc26d0dce/) | ⚠️ Unaudited |
| HoneyFactory | registry | berachain | n/a | [`0xa4afef880f5ce1f63c9fb48f661e27f8b4216401`](./contracts/berachain-80094/0xa4afef880f5ce1f63c9fb48f661e27f8b4216401/) | ⚠️ Unaudited |
| InfraredVault | core_logic | berachain | n/a | [`0x9211aa9206dc57c3decee55539f6ca7b6845339d`](./contracts/berachain-80094/0x9211aa9206dc57c3decee55539f6ca7b6845339d/) | ⚠️ Unaudited |
| MetaFeePartitioner | unknown | berachain | n/a | [`0x80108ee81a92091db6b8b2326b1875ce9388f461`](./contracts/berachain-80094/0x80108ee81a92091db6b8b2326b1875ce9388f461/) | ⚠️ Unaudited |
| MetaMorphoV1_1 | unknown | berachain | n/a | [`0x30bba9cd9eb8c95824aa42faa1bb397b07545bc1`](./contracts/berachain-80094/0x30bba9cd9eb8c95824aa42faa1bb397b07545bc1/) | ⚠️ Unaudited |
| MetaMorphoV1_1Factory | registry | berachain | n/a | [`0x5edd48c6acbd565eeb31702fd9fa9cbc86fbe616`](./contracts/berachain-80094/0x5edd48c6acbd565eeb31702fd9fa9cbc86fbe616/) | ⚠️ Unaudited |
| Morpho | unknown | berachain | n/a | [`0x24147243f9c08d835c218cda1e135f8dfd0517d0`](./contracts/berachain-80094/0x24147243f9c08d835c218cda1e135f8dfd0517d0/) | ⚠️ Unaudited |
| MorphoChainlinkOracleV2Factory | operational_periphery | berachain | n/a | [`0xaf2fdc54f7bc9d6e8c2d2760e908f4e1beb04d9e`](./contracts/berachain-80094/0xaf2fdc54f7bc9d6e8c2d2760e908f4e1beb04d9e/) | ⚠️ Unaudited |
| Multicall3 | periphery | berachain | n/a | [`0xca11bde05977b3631167028862be2a173976ca11`](./contracts/berachain-80094/0xca11bde05977b3631167028862be2a173976ca11/) | ⚠️ Unaudited |
| Permit2 | unknown | berachain | n/a | [`0x000000000022d473030f116ddee9f6b43ac78ba3`](./contracts/berachain-80094/0x000000000022d473030f116ddee9f6b43ac78ba3/) | ⚠️ Unaudited |
| PoolCreationHelper | core_logic | berachain | n/a | [`0x55dcce8165c88aad4403a15a9ce3a8e244657dd2`](./contracts/berachain-80094/0x55dcce8165c88aad4403a15a9ce3a8e244657dd2/) | ⚠️ Unaudited |
| ProtocolFeesCollector | unknown | berachain | n/a | [`0xb8cf46cf1b1476e707619913a70b2085d26f1707`](./contracts/berachain-80094/0xb8cf46cf1b1476e707619913a70b2085d26f1707/) | ⚠️ Unaudited |
| ProtocolFeesWithdrawer | operational_periphery | berachain | n/a | [`0x1635f0e1b3e8a6713d03ae155ba79458ba3240c7`](./contracts/berachain-80094/0x1635f0e1b3e8a6713d03ae155ba79458ba3240c7/) | ⚠️ Unaudited |
| ProxyAdmin | unknown | ethereum | n/a | [`0x9c1bd3247a3aaac05b2b2882c95710d3b3aaa600`](./contracts/ethereum-1/0x9c1bd3247a3aaac05b2b2882c95710d3b3aaa600/) | ⚠️ Unaudited |
| PublicAllocator | operational_periphery | berachain | n/a | [`0xb62f34ab315eadeac698e8eaeb6fc2650951bfe7`](./contracts/berachain-80094/0xb62f34ab315eadeac698e8eaeb6fc2650951bfe7/) | ⚠️ Unaudited |
| RewardVault | core_logic | berachain | n/a | [`0xdb6e93cd7bddc45ebc411619792fc5f977316c38`](./contracts/berachain-80094/0xdb6e93cd7bddc45ebc411619792fc5f977316c38/) | ⚠️ Unaudited |
| StakingPoolContractsFactory | registry | berachain | n/a | [`0xb79b43dba821cb67751276ce050ff4111445fb99`](./contracts/berachain-80094/0xb79b43dba821cb67751276ce050ff4111445fb99/) | ⚠️ Unaudited |
| SwellOFTAdapter | unknown | ethereum | n/a | 2 deployments: ethereum [`0x89dc850caeee8136eb69ac589135e21dd7721458`](./contracts/ethereum-1/0x89dc850caeee8136eb69ac589135e21dd7721458/); ethereum `0xfd5c3ef2621241285ebbc31cc61f4820dd9c1b14` | ⚠️ Unaudited |
| TimeLock | governance | berachain | n/a | [`0xb5f2000b5744f207c931526cae2134caa8b6862a`](./contracts/berachain-80094/0xb5f2000b5744f207c931526cae2134caa8b6862a/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | ethereum | n/a | 2 deployments: ethereum [`0x9e802dfddf951b701324332c688817b4bbc205d9`](./contracts/ethereum-1/0x9e802dfddf951b701324332c688817b4bbc205d9/); ethereum `0xf72801a999a2a6ae0bd02308933804b4ff14e436` | ⚠️ Unaudited |
| WeightedPoolFactory | unknown | berachain | n/a | [`0xa966fa8f2d5b087fffa499c0c1240589371af409`](./contracts/berachain-80094/0xa966fa8f2d5b087fffa499c0c1240589371af409/) | ⚠️ Unaudited |
| WithdrawalVault | operational_periphery | berachain | n/a | [`0xe858802ed532c6dad2d196ab5b1f2c15f9cb52b4`](./contracts/berachain-80094/0xe858802ed532c6dad2d196ab5b1f2c15f9cb52b4/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (44)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | ethereum | n/a | `0x12bf984dad6b396f62e720bc51eab79a28d5c13f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | 2 deployments: ethereum `0x132c5ce35aee253690515797607d6f4f365e81c8`; ethereum `0x6c9612beb7be2c16359803898df830c8b9b5cde7` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x30e83a174e4bd15ea94b5404d3341d0c46a6f5c4` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x4f1048a388fe421ebb1d9195b10c6c0070584f83` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x50b0debd3fab14f784dedd05fe356eaad0d9c2a4` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x66b09f3776356d9f757716152f0a197261e8f4a4` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x8322b9f550437e5afe207ab919fb2b51784305bc` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xb3b67ebb72a5591a9128ef7662521eab896aec48` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xc045ce33f6659edb3d67a48c5c676078b8818213` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xef607b002e2b17b17dbaa97b26cc21de222a05e8` | ❓ Unverified |
| UnnamedContract | unknown | berachain | n/a | `0x0ccc3edecc890fef11e873502d28f3e561e52df8` | ❓ Unverified |
| UnnamedContract | unknown | berachain | n/a | `0x15b6b4668e12a2bcb34fb4fe7856e4f597b600ac` | ❓ Unverified |
| UnnamedContract | unknown | berachain | n/a | `0x1aa1cf7f799b091a02bfad5ee5b9c58794997792` | ❓ Unverified |
| UnnamedContract | unknown | berachain | n/a | `0x1db6d0ca865ee11b6edbae4b4e6ca270b2bcd0f0` | ❓ Unverified |
| UnnamedContract | unknown | berachain | n/a | `0x29e0cb5412f9153d6eb02392e3923919c5530574` | ❓ Unverified |
| UnnamedContract | unknown | berachain | n/a | `0x2b81e73c52e9b77f84b3b3c06b451ea207304fc2` | ❓ Unverified |
| UnnamedContract | unknown | berachain | n/a | `0x2e846fd4fd8772f8d9ff8a51a456f5b3049c893f` | ❓ Unverified |
| UnnamedContract | unknown | berachain | n/a | `0x30e83a174e4bd15ea94b5404d3341d0c46a6f5c4` | ❓ Unverified |
| UnnamedContract | unknown | berachain | n/a | `0x41fdbc681475b85c3d9e15b10c691c61f66b510d` | ❓ Unverified |
| UnnamedContract | unknown | berachain | n/a | `0x44405da9f346f467a05c2313628147c9237190c2` | ❓ Unverified |
| UnnamedContract | unknown | berachain | n/a | `0x46fe2bc33b661e01a8946bbc3bf43f2b8382d802` | ❓ Unverified |
| UnnamedContract | unknown | berachain | n/a | `0x4e59b44847b379578588920ca78fbf26c0b4956c` | ❓ Unverified |
| UnnamedContract | unknown | berachain | n/a | `0x5cec221de8bdbffbcee840c08b464419f670512b` | ❓ Unverified |
| UnnamedContract | unknown | berachain | n/a | `0x6719cba120668bbcf670c4361506d0aac69e891f` | ❓ Unverified |
| UnnamedContract | unknown | berachain | n/a | `0x69d68fecbb66b0115dd12e0f7d8071347029a029` | ❓ Unverified |
| UnnamedContract | unknown | berachain | n/a | `0x6c9612beb7be2c16359803898df830c8b9b5cde7` | ❓ Unverified |
| UnnamedContract | unknown | berachain | n/a | `0x7395913f13b85398a6cedc04b1410ba56b382d5a` | ❓ Unverified |
| UnnamedContract | unknown | berachain | n/a | `0x8928f3cbb0a2f4d6488bce129852c801e73960cb` | ❓ Unverified |
| UnnamedContract | unknown | berachain | n/a | `0x9143fa5f592e188929b91c5e43f59adef4d8dee3` | ❓ Unverified |
| UnnamedContract | unknown | berachain | n/a | `0x917a699a57c7ac9a8d127420c8f1f6ad3d517179` | ❓ Unverified |
| UnnamedContract | unknown | berachain | n/a | `0x98233212bfd9fae191a45ee6736088e37de7bffa` | ❓ Unverified |
| UnnamedContract | unknown | berachain | n/a | `0x98977be58c484beab3c73dae985ba184fba2e5a1` | ❓ Unverified |
| UnnamedContract | unknown | berachain | n/a | `0xa5875ee6df7b6e4a98ffe4c9e5f279b3cc395ac4` | ❓ Unverified |
| UnnamedContract | unknown | berachain | n/a | `0xa61187a24431f545867d58e41d9887da8edec82f` | ❓ Unverified |
| UnnamedContract | unknown | berachain | n/a | `0xafa45c0e9d9438f8d26d289ad7775b1b191ac9ae` | ❓ Unverified |
| UnnamedContract | unknown | berachain | n/a | `0xcbc5bb292869d7bf1bd401a27d53215279d9d20e` | ❓ Unverified |
| UnnamedContract | unknown | berachain | n/a | `0xe305dd37d84aac449c0d08c6bfde20bfff76fb2b` | ❓ Unverified |
| UnnamedContract | unknown | berachain | n/a | `0xe678a8fe16a08006bc155e7633da8f11e5a8d135` | ❓ Unverified |
| UnnamedContract | unknown | berachain | n/a | `0xeb6671c152c88e76fdaabc804bf973e3270f4c78` | ❓ Unverified |
| UnnamedContract | unknown | berachain | n/a | `0xedc17f5fb49f8cdca6c85d005ebf21d0d9337981` | ❓ Unverified |
| UnnamedContract | unknown | berachain | n/a | `0xedf65147ae4e05bed6fb4dc391e175cf5869358d` | ❓ Unverified |
| UnnamedContract | unknown | berachain | n/a | `0xf12a8168319e4bdfe05fa6cf240d48dade43a297` | ❓ Unverified |
| UnnamedContract | unknown | berachain | n/a | `0xf64a17519d538a8ae1765b381a70e34a8dc84678` | ❓ Unverified |
| UnnamedContract | unknown | berachain | n/a | `0xfb047ff2c376e22522d2a7809ad1ed38459ad2b8` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [20260508-PoLNext-Zenith.pdf](https://github.com/berachain/security-audits/blob/main/20260508-PoLNext-Zenith.pdf) | Spearbit | Audit | 2026-05 | fresh | Direct | n/a | 0 | n/a |
| [20260425-PoLNext-Spearbit.pdf](https://github.com/berachain/security-audits/blob/main/20260425-PoLNext-Spearbit.pdf) | Spearbit | Audit | 2026-04 | fresh | Direct | contract_name | 10 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| berachain | [`0x4be03f781c497a489e3cb0287833452ca9b9e80b`](./contracts/berachain-80094/0x4be03f781c497a489e3cb0287833452ca9b9e80b/) | Vault | core_logic | $730,934.06 | Verified native implementation with $730,934.06 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| berachain | [`0xcf247df3a2322dea0d408f011c194906e77a6f62`](./contracts/berachain-80094/0xcf247df3a2322dea0d408f011c194906e77a6f62/) | AdaptiveCurveIrm | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| berachain | [`0xddeaf391c4be2d01ca52abb8c159a06820ef078c`](./contracts/berachain-80094/0xddeaf391c4be2d01ca52abb8c159a06820ef078c/) | BabyBearsONFT | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xc48c54e92d135b356dd0cbf50f803a8c8d38968b`](./contracts/ethereum-1/0xc48c54e92d135b356dd0cbf50f803a8c8d38968b/) | BabyBearsONFTAdapter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x392faa1b0ef108ded69897ba5382e909c39fc09e`](./contracts/ethereum-1/0x392faa1b0ef108ded69897ba5382e909c39fc09e/) | BandBearsONFTAdapter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| berachain | [`0xcb4ae3030ba06f7eee54a7b96afca7457f9525cf`](./contracts/berachain-80094/0xcb4ae3030ba06f7eee54a7b96afca7457f9525cf/) | BatchRelayerLibrary | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x3eb12398753eed7e8747321c37c85de30d8e2e94`](./contracts/ethereum-1/0x3eb12398753eed7e8747321c37c85de30d8e2e94/) | BitBearsONFTAdapter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x6b1c374105467d1fc1090c989bcbbcc172c8a89c`](./contracts/ethereum-1/0x6b1c374105467d1fc1090c989bcbbcc172c8a89c/) | BondBearsONFTAdapter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| berachain | [`0x141de07e5d4c4759ec9301da106115d4841f66cd`](./contracts/berachain-80094/0x141de07e5d4c4759ec9301da106115d4841f66cd/) | BongBearsONFT | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1897c001341f81ca72154b75b882ae708e06bf48`](./contracts/ethereum-1/0x1897c001341f81ca72154b75b882ae708e06bf48/) | BongBearsONFT1155Wrapper | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| berachain | [`0xf49ec5db255854c4a567de5ab3826c9aabafc7cf`](./contracts/berachain-80094/0xf49ec5db255854c4a567de5ab3826c9aabafc7cf/) | BooBearsONFT | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x7591992f1a98636c6b7207f30382ca4bec83d9be`](./contracts/ethereum-1/0x7591992f1a98636c6b7207f30382ca4bec83d9be/) | BooBearsONFTAdapter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| berachain | [`0xf920140a65d0f412f2ab3e76c4feab5eef0657ae`](./contracts/berachain-80094/0xf920140a65d0f412f2ab3e76c4feab5eef0657ae/) | Bundler3 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| berachain | [`0xd2b9667f5214115e27937c410caee83e3a901df7`](./contracts/berachain-80094/0xd2b9667f5214115e27937c410caee83e3a901df7/) | GeneralAdapter1 | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| berachain | [`0x9211aa9206dc57c3decee55539f6ca7b6845339d`](./contracts/berachain-80094/0x9211aa9206dc57c3decee55539f6ca7b6845339d/) | InfraredVault | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| berachain | [`0x30bba9cd9eb8c95824aa42faa1bb397b07545bc1`](./contracts/berachain-80094/0x30bba9cd9eb8c95824aa42faa1bb397b07545bc1/) | MetaMorphoV1_1 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| berachain | [`0x5edd48c6acbd565eeb31702fd9fa9cbc86fbe616`](./contracts/berachain-80094/0x5edd48c6acbd565eeb31702fd9fa9cbc86fbe616/) | MetaMorphoV1_1Factory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| berachain | [`0x55dcce8165c88aad4403a15a9ce3a8e244657dd2`](./contracts/berachain-80094/0x55dcce8165c88aad4403a15a9ce3a8e244657dd2/) | PoolCreationHelper | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| berachain | [`0xb8cf46cf1b1476e707619913a70b2085d26f1707`](./contracts/berachain-80094/0xb8cf46cf1b1476e707619913a70b2085d26f1707/) | ProtocolFeesCollector | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| berachain | [`0x1635f0e1b3e8a6713d03ae155ba79458ba3240c7`](./contracts/berachain-80094/0x1635f0e1b3e8a6713d03ae155ba79458ba3240c7/) | ProtocolFeesWithdrawer | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| berachain | [`0xb62f34ab315eadeac698e8eaeb6fc2650951bfe7`](./contracts/berachain-80094/0xb62f34ab315eadeac698e8eaeb6fc2650951bfe7/) | PublicAllocator | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| berachain | [`0xdb6e93cd7bddc45ebc411619792fc5f977316c38`](./contracts/berachain-80094/0xdb6e93cd7bddc45ebc411619792fc5f977316c38/) | RewardVault | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x89dc850caeee8136eb69ac589135e21dd7721458`](./contracts/ethereum-1/0x89dc850caeee8136eb69ac589135e21dd7721458/) | SwellOFTAdapter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| berachain | [`0xa966fa8f2d5b087fffa499c0c1240589371af409`](./contracts/berachain-80094/0xa966fa8f2d5b087fffa499c0c1240589371af409/) | WeightedPoolFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 24 |
| upstream | 6 |
| standard_library | 20 |
| needs_review | 47 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: contract_name=10

Zero-match audit list:

- [2031] 20260508-PoLNext-Zenith.pdf

Fork inheritance lineage and inherited audits are included when available.
