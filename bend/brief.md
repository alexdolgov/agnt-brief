# Agentic Audit Brief: BEND

⚠️ Lifecycle status: UNKNOWN - TVL dropped 30.4% over 90 days

## Project Overview

- Project: BEND (`bend`)
- Website: [https://bend.berachain.com](https://bend.berachain.com)
- Lifecycle: unknown (Tier 0, 62.6% below peak)
- Generated: 2026-05-23T00:40:52.184Z
- Pipeline run: v2-pipeline-2026-05-22-eff36e-2ebb
- Chains: berachain, ethereum
- Contract surface: 105 unique implementations (105 raw deployments)
- DeFi Llama TVL: $12,385,288.52
- On-chain TVL (included contracts): $15,462,171.69
- TVL by chain: Berachain $15,462,171.69

## Project Description

BEND is a decentralized lending protocol that enables users to supply and borrow assets using isolated markets and adaptive interest rate curves. It integrates with Morpho Blue for efficient lending markets and includes governance, staking, and NFT components.

### Architecture

The BEND lending family relies on Morpho Blue and its own adaptive curve IRM, while governance controls parameters across lending and proof-of-liquidity. Proof-of-liquidity contracts distribute incentives in BGT and Honey tokens, which are also used in staking and Balancer pools for liquidity.

## Audit Coverage Summary

- Verified implementations audited: 12/59 (20.3%)
- Verified + Unaudited implementations: 47
- Verified by bytecode match: 0
- Unverified implementations: 46
- Unique implementations: 105
- Raw deployments: 105
- Audits discovered: 2
- Scoreable audits (matched contracts): 2
- ASD (verified + unaudited TVL): $896,828.84
- Latest audit: 2026-05 (fresh)
- Staleness: 2 fresh, 0 aging, 0 stale, 0 unknown
- Tier 1 coverage: 20.3% (Spearbit)
- Note: This protocol is classified as [unknown]. ASD of $896,828.84 represents exposure in a protocol with unknown activity.

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| Spearbit | Tier 1 | 12 | 20.3% | 2026-05 |

## Contract Surface

### ✅ Verified + Audited (12)

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| WBERAStakerVault | core_logic | berachain | [`0x118d2c...3eec9a`](./contracts/berachain-80094/0x118d2ceee9785eaf70c15cd74cd84c9f8c3eec9a/) | ✅ Audited |
| BeaconDeposit | registry | berachain | [`0x424242...424242`](./contracts/berachain-80094/0x4242424242424242424242424242424242424242/) | ✅ Audited |
| BeraChef | unknown | berachain | [`0xdf960e...63426a`](./contracts/berachain-80094/0xdf960e8f3f19c481dde769ededd439ea1a63426a/) | ✅ Audited |
| BGT | unknown | berachain | [`0x656b95...eb1dba`](./contracts/berachain-80094/0x656b95e550c07a9ffe548bd4085c72418ceb1dba/) | ✅ Audited |
| BGTIncentiveFeeCollector | unknown | berachain | [`0x1984ba...80190b`](./contracts/berachain-80094/0x1984baf659607cc5f206c55bb3b00eb3e180190b/) | ✅ Audited |
| BlockRewardController | governance | berachain | [`0x1ae7dd...bccd8e`](./contracts/berachain-80094/0x1ae7dd7ae06f6c58b4524d9c1f816094b1bccd8e/) | ✅ Audited |
| DedicatedEmissionStreamManager | operational_periphery | berachain | [`0x813dcd...ca821a`](./contracts/berachain-80094/0x813dcdba9197947792985c866ce98d6739ca821a/) | ✅ Audited |
| Distributor | operational_periphery | berachain | [`0xd2f19a...940761`](./contracts/berachain-80094/0xd2f19a79b026fb636a7c300bf5947df113940761/) | ✅ Audited |
| FeeCollector | unknown | berachain | [`0x7bb8dd...f82650`](./contracts/berachain-80094/0x7bb8ddac7fbe3ffc0f4b3c73c4f158b06cf82650/) | ✅ Audited |
| LSTStakerVaultFactory | registry | berachain | [`0xc41bbd...2e2500`](./contracts/berachain-80094/0xc41bbd6695ab6bdc6d04701b15f4ce5eba2e2500/) | ✅ Audited |
| RewardVaultFactory | registry | berachain | [`0x94ad6a...ef52a8`](./contracts/berachain-80094/0x94ad6ac84f6c6fba8b8ccbd71d9f4f101def52a8/) | ✅ Audited |
| RewardVaultHelper | core_logic | berachain | [`0xee233a...dce6e2`](./contracts/berachain-80094/0xee233a69a36db7fc10e03e921d90dec52cdce6e2/) | ✅ Audited |

### ⚠️ Verified + Unaudited (47)

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| Vault | core_logic | berachain | [`0x4be03f...b9e80b`](./contracts/berachain-80094/0x4be03f781c497a489e3cb0287833452ca9b9e80b/) | ⚠️ Unaudited |
| AdaptiveCurveIrm | unknown | berachain | [`0xcf247d...7a6f62`](./contracts/berachain-80094/0xcf247df3a2322dea0d408f011c194906e77a6f62/) | ⚠️ Unaudited |
| Authorizer | unknown | berachain | [`0x71047a...644ef2`](./contracts/berachain-80094/0x71047ae39a7aa4f7d923542f459e50b974644ef2/) | ⚠️ Unaudited |
| BabyBearsONFT | token | berachain | [`0xddeaf3...ef078c`](./contracts/berachain-80094/0xddeaf391c4be2d01ca52abb8c159a06820ef078c/) | ⚠️ Unaudited |
| BabyBearsONFTAdapter | adapter | ethereum | [`0xc48c54...38968b`](./contracts/ethereum-1/0xc48c54e92d135b356dd0cbf50f803a8c8d38968b/) | ⚠️ Unaudited |
| BalancerHelpers | periphery | berachain | [`0x508373...2c5951`](./contracts/berachain-80094/0x5083737ec75a728c265be578c9d0d5333a2c5951/) | ⚠️ Unaudited |
| BalancerQueries | unknown | berachain | [`0x3c612e...cc9b59`](./contracts/berachain-80094/0x3c612e132624f4bd500ee1495f54565f0bcc9b59/) | ⚠️ Unaudited |
| BalancerRelayer | unknown | berachain | [`0x6044f1...492ee7`](./contracts/berachain-80094/0x6044f181ab5e9c05a4ed9ce295f3b178d2492ee7/) | ⚠️ Unaudited |
| BandBearsONFT | token | berachain | [`0x7711b2...b79a19`](./contracts/berachain-80094/0x7711b2eb2451259dbf211e30157ceb7cfeb79a19/) | ⚠️ Unaudited |
| BandBearsONFTAdapter | adapter | ethereum | [`0x392faa...9fc09e`](./contracts/ethereum-1/0x392faa1b0ef108ded69897ba5382e909c39fc09e/) | ⚠️ Unaudited |
| BatchRelayerLibrary | periphery | berachain | [`0xcb4ae3...9525cf`](./contracts/berachain-80094/0xcb4ae3030ba06f7eee54a7b96afca7457f9525cf/) | ⚠️ Unaudited |
| BatchRelayerQueryLibrary | periphery | berachain | [`0x415108...3fd08d`](./contracts/berachain-80094/0x4151083172b2cefb83a33fd7fc9f6cbabb3fd08d/) | ⚠️ Unaudited |
| BerachainGovernance | unknown | berachain | [`0x4f4a5c...b6f6d5`](./contracts/berachain-80094/0x4f4a5c2194b8e856b7a05b348f6ba3978fb6f6d5/) | ⚠️ Unaudited |
| BitBearsONFT | token | berachain | [`0x72d876...a2eebb`](./contracts/berachain-80094/0x72d876d9cdf4001b836f8e47254d0551eda2eebb/) | ⚠️ Unaudited |
| BitBearsONFTAdapter | adapter | ethereum | [`0x3eb123...8e2e94`](./contracts/ethereum-1/0x3eb12398753eed7e8747321c37c85de30d8e2e94/) | ⚠️ Unaudited |
| BondBearsONFT | token | berachain | [`0xa0cf47...c7c375`](./contracts/berachain-80094/0xa0cf472e6132f6b822a944f6f31aa7b261c7c375/) | ⚠️ Unaudited |
| BondBearsONFTAdapter | adapter | ethereum | [`0x6b1c37...c8a89c`](./contracts/ethereum-1/0x6b1c374105467d1fc1090c989bcbbcc172c8a89c/) | ⚠️ Unaudited |
| BongBearsONFT | token | berachain | [`0x141de0...1f66cd`](./contracts/berachain-80094/0x141de07e5d4c4759ec9301da106115d4841f66cd/) | ⚠️ Unaudited |
| BongBearsONFT1155Wrapper | token | ethereum | [`0x1897c0...06bf48`](./contracts/ethereum-1/0x1897c001341f81ca72154b75b882ae708e06bf48/) | ⚠️ Unaudited |
| BooBearsONFT | token | berachain | [`0xf49ec5...afc7cf`](./contracts/berachain-80094/0xf49ec5db255854c4a567de5ab3826c9aabafc7cf/) | ⚠️ Unaudited |
| BooBearsONFTAdapter | adapter | ethereum | [`0x759199...83d9be`](./contracts/ethereum-1/0x7591992f1a98636c6b7207f30382ca4bec83d9be/) | ⚠️ Unaudited |
| Bundler3 | unknown | berachain | [`0xf92014...0657ae`](./contracts/berachain-80094/0xf920140a65d0f412f2ab3e76c4feab5eef0657ae/) | ⚠️ Unaudited |
| ComposableStablePoolFactory | registry | berachain | [`0xdfa30b...cc87e1`](./contracts/berachain-80094/0xdfa30bda0375d4763711ab0cc8d91b20bfcc87e1/) | ⚠️ Unaudited |
| DelegationHandlerFactory | registry | berachain | [`0xad1793...76e0d0`](./contracts/berachain-80094/0xad17932a5b1aaeea73d277a6ae670623f176e0d0/) | ⚠️ Unaudited |
| GeneralAdapter1 | adapter | berachain | [`0xd2b966...901df7`](./contracts/berachain-80094/0xd2b9667f5214115e27937c410caee83e3a901df7/) | ⚠️ Unaudited |
| Honey | unknown | berachain | [`0xfcbd14...6d0dce`](./contracts/berachain-80094/0xfcbd14dc51f0a4d49d5e53c2e0950e0bc26d0dce/) | ⚠️ Unaudited |
| HoneyFactory | registry | berachain | [`0xa4afef...216401`](./contracts/berachain-80094/0xa4afef880f5ce1f63c9fb48f661e27f8b4216401/) | ⚠️ Unaudited |
| MetaFeePartitioner | unknown | berachain | [`0x80108e...88f461`](./contracts/berachain-80094/0x80108ee81a92091db6b8b2326b1875ce9388f461/) | ⚠️ Unaudited |
| MetaMorphoV1_1 | unknown | berachain | [`0x30bba9...545bc1`](./contracts/berachain-80094/0x30bba9cd9eb8c95824aa42faa1bb397b07545bc1/) | ⚠️ Unaudited |
| MetaMorphoV1_1Factory | registry | berachain | [`0x5edd48...fbe616`](./contracts/berachain-80094/0x5edd48c6acbd565eeb31702fd9fa9cbc86fbe616/) | ⚠️ Unaudited |
| Morpho | unknown | berachain | [`0x241472...0517d0`](./contracts/berachain-80094/0x24147243f9c08d835c218cda1e135f8dfd0517d0/) | ⚠️ Unaudited |
| MorphoChainlinkOracleV2Factory | operational_periphery | berachain | [`0xaf2fdc...b04d9e`](./contracts/berachain-80094/0xaf2fdc54f7bc9d6e8c2d2760e908f4e1beb04d9e/) | ⚠️ Unaudited |
| Multicall3 | periphery | berachain | [`0xca11bd...76ca11`](./contracts/berachain-80094/0xca11bde05977b3631167028862be2a173976ca11/) | ⚠️ Unaudited |
| Permit2 | unknown | berachain | [`0x000000...c78ba3`](./contracts/berachain-80094/0x000000000022d473030f116ddee9f6b43ac78ba3/) | ⚠️ Unaudited |
| PoolCreationHelper | core_logic | berachain | [`0x55dcce...657dd2`](./contracts/berachain-80094/0x55dcce8165c88aad4403a15a9ce3a8e244657dd2/) | ⚠️ Unaudited |
| ProtocolFeePercentagesProvider | unknown | berachain | [`0x33c88f...aabbbf`](./contracts/berachain-80094/0x33c88ffdee710ed3908c791137bd1d4421aabbbf/) | ⚠️ Unaudited |
| ProtocolFeesCollector | unknown | berachain | [`0xb8cf46...6f1707`](./contracts/berachain-80094/0xb8cf46cf1b1476e707619913a70b2085d26f1707/) | ⚠️ Unaudited |
| ProtocolFeesWithdrawer | operational_periphery | berachain | [`0x1635f0...3240c7`](./contracts/berachain-80094/0x1635f0e1b3e8a6713d03ae155ba79458ba3240c7/) | ⚠️ Unaudited |
| ProxyAdmin | governance | ethereum | [`0x9c1bd3...aaa600`](./contracts/ethereum-1/0x9c1bd3247a3aaac05b2b2882c95710d3b3aaa600/) | ⚠️ Unaudited |
| PublicAllocator | operational_periphery | berachain | [`0xb62f34...51bfe7`](./contracts/berachain-80094/0xb62f34ab315eadeac698e8eaeb6fc2650951bfe7/) | ⚠️ Unaudited |
| StakingPoolContractsFactory | registry | berachain | [`0xb79b43...45fb99`](./contracts/berachain-80094/0xb79b43dba821cb67751276ce050ff4111445fb99/) | ⚠️ Unaudited |
| SwellOFTAdapter | adapter | ethereum | [`0xfd5c3e...9c1b14`](./contracts/ethereum-1/0xfd5c3ef2621241285ebbc31cc61f4820dd9c1b14/) | ⚠️ Unaudited |
| TimeLock | governance | berachain | [`0xb5f200...b6862a`](./contracts/berachain-80094/0xb5f2000b5744f207c931526cae2134caa8b6862a/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | proxy | ethereum | [`0x9e802d...c205d9`](./contracts/ethereum-1/0x9e802dfddf951b701324332c688817b4bbc205d9/) | ⚠️ Unaudited |
| WBERA | unknown | berachain | [`0x696969...696969`](./contracts/berachain-80094/0x6969696969696969696969696969696969696969/) | ⚠️ Unaudited |
| WeightedPoolFactory | registry | berachain | [`0xa966fa...1af409`](./contracts/berachain-80094/0xa966fa8f2d5b087fffa499c0c1240589371af409/) | ⚠️ Unaudited |
| WithdrawalVault | operational_periphery | berachain | [`0xe85880...cb52b4`](./contracts/berachain-80094/0xe858802ed532c6dad2d196ab5b1f2c15f9cb52b4/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (46)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| Proxy (impl: 0x132c5ce35aee253690515797607d6f4f365e81c8) | proxy | ethereum | `0x6c9612...b5cde7` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x12bf98...d5c13f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x132c5c...5e81c8` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x30e83a...a6f5c4` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x4f1048...584f83` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x50b0de...d9c2a4` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x66b09f...e8f4a4` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x8322b9...4305bc` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xb3b67e...6aec48` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xc045ce...818213` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xef607b...2a05e8` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xf72801...14e436` | ❓ Unverified |
| UnnamedContract | unknown | berachain | `0x0ccc3e...e52df8` | ❓ Unverified |
| UnnamedContract | unknown | berachain | `0x15b6b4...b600ac` | ❓ Unverified |
| UnnamedContract | unknown | berachain | `0x1aa1cf...997792` | ❓ Unverified |
| UnnamedContract | unknown | berachain | `0x1db6d0...bcd0f0` | ❓ Unverified |
| UnnamedContract | unknown | berachain | `0x29e0cb...530574` | ❓ Unverified |
| UnnamedContract | unknown | berachain | `0x2b81e7...304fc2` | ❓ Unverified |
| UnnamedContract | unknown | berachain | `0x2e846f...9c893f` | ❓ Unverified |
| UnnamedContract | unknown | berachain | `0x30e83a...a6f5c4` | ❓ Unverified |
| UnnamedContract | unknown | berachain | `0x41fdbc...6b510d` | ❓ Unverified |
| UnnamedContract | unknown | berachain | `0x44405d...7190c2` | ❓ Unverified |
| UnnamedContract | unknown | berachain | `0x46fe2b...82d802` | ❓ Unverified |
| UnnamedContract | unknown | berachain | `0x4e59b4...b4956c` | ❓ Unverified |
| UnnamedContract | unknown | berachain | `0x5cec22...70512b` | ❓ Unverified |
| UnnamedContract | unknown | berachain | `0x6719cb...9e891f` | ❓ Unverified |
| UnnamedContract | unknown | berachain | `0x69d68f...29a029` | ❓ Unverified |
| UnnamedContract | unknown | berachain | `0x6c9612...b5cde7` | ❓ Unverified |
| UnnamedContract | unknown | berachain | `0x739591...382d5a` | ❓ Unverified |
| UnnamedContract | unknown | berachain | `0x8928f3...3960cb` | ❓ Unverified |
| UnnamedContract | unknown | berachain | `0x9143fa...d8dee3` | ❓ Unverified |
| UnnamedContract | unknown | berachain | `0x917a69...517179` | ❓ Unverified |
| UnnamedContract | unknown | berachain | `0x982332...e7bffa` | ❓ Unverified |
| UnnamedContract | unknown | berachain | `0x98977b...a2e5a1` | ❓ Unverified |
| UnnamedContract | unknown | berachain | `0xa5875e...395ac4` | ❓ Unverified |
| UnnamedContract | unknown | berachain | `0xa61187...dec82f` | ❓ Unverified |
| UnnamedContract | unknown | berachain | `0xafa45c...1ac9ae` | ❓ Unverified |
| UnnamedContract | unknown | berachain | `0xcbc5bb...d9d20e` | ❓ Unverified |
| UnnamedContract | unknown | berachain | `0xe305dd...76fb2b` | ❓ Unverified |
| UnnamedContract | unknown | berachain | `0xe678a8...a8d135` | ❓ Unverified |
| UnnamedContract | unknown | berachain | `0xeb6671...0f4c78` | ❓ Unverified |
| UnnamedContract | unknown | berachain | `0xedc17f...337981` | ❓ Unverified |
| UnnamedContract | unknown | berachain | `0xedf651...69358d` | ❓ Unverified |
| UnnamedContract | unknown | berachain | `0xf12a81...43a297` | ❓ Unverified |
| UnnamedContract | unknown | berachain | `0xf64a17...c84678` | ❓ Unverified |
| UnnamedContract | unknown | berachain | `0xfb047f...9ad2b8` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [* [**PoL Next Audit by Zenith**]()](https://github.com/berachain/security-audits/blob/main/20260508-PoLNext-Zenith.pdf) | Spearbit | Audit | 2026-05 | fresh | Direct | contract_name | 1 | high |
| [* [**PoL Next Audit by Cantina**]()](https://github.com/berachain/security-audits/blob/main/20260425-PoLNext-Spearbit.pdf) | Spearbit | Audit | 2026-04 | fresh | Direct | contract_name | 12 | high |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| berachain | [`0x4be03f...b9e80b`](./contracts/berachain-80094/0x4be03f781c497a489e3cb0287833452ca9b9e80b/) | Vault | core_logic | $896,828.84 | Verified native implementation with $896,828.84 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| berachain | [`0xcf247d...7a6f62`](./contracts/berachain-80094/0xcf247df3a2322dea0d408f011c194906e77a6f62/) | AdaptiveCurveIrm | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| berachain | [`0x71047a...644ef2`](./contracts/berachain-80094/0x71047ae39a7aa4f7d923542f459e50b974644ef2/) | Authorizer | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| berachain | [`0xddeaf3...ef078c`](./contracts/berachain-80094/0xddeaf391c4be2d01ca52abb8c159a06820ef078c/) | BabyBearsONFT | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xc48c54...38968b`](./contracts/ethereum-1/0xc48c54e92d135b356dd0cbf50f803a8c8d38968b/) | BabyBearsONFTAdapter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| berachain | [`0x7711b2...b79a19`](./contracts/berachain-80094/0x7711b2eb2451259dbf211e30157ceb7cfeb79a19/) | BandBearsONFT | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x392faa...9fc09e`](./contracts/ethereum-1/0x392faa1b0ef108ded69897ba5382e909c39fc09e/) | BandBearsONFTAdapter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| berachain | [`0x72d876...a2eebb`](./contracts/berachain-80094/0x72d876d9cdf4001b836f8e47254d0551eda2eebb/) | BitBearsONFT | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x3eb123...8e2e94`](./contracts/ethereum-1/0x3eb12398753eed7e8747321c37c85de30d8e2e94/) | BitBearsONFTAdapter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| berachain | [`0xa0cf47...c7c375`](./contracts/berachain-80094/0xa0cf472e6132f6b822a944f6f31aa7b261c7c375/) | BondBearsONFT | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x6b1c37...c8a89c`](./contracts/ethereum-1/0x6b1c374105467d1fc1090c989bcbbcc172c8a89c/) | BondBearsONFTAdapter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| berachain | [`0x141de0...1f66cd`](./contracts/berachain-80094/0x141de07e5d4c4759ec9301da106115d4841f66cd/) | BongBearsONFT | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1897c0...06bf48`](./contracts/ethereum-1/0x1897c001341f81ca72154b75b882ae708e06bf48/) | BongBearsONFT1155Wrapper | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| berachain | [`0xf49ec5...afc7cf`](./contracts/berachain-80094/0xf49ec5db255854c4a567de5ab3826c9aabafc7cf/) | BooBearsONFT | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x759199...83d9be`](./contracts/ethereum-1/0x7591992f1a98636c6b7207f30382ca4bec83d9be/) | BooBearsONFTAdapter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| berachain | [`0xf92014...0657ae`](./contracts/berachain-80094/0xf920140a65d0f412f2ab3e76c4feab5eef0657ae/) | Bundler3 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| berachain | [`0xd2b966...901df7`](./contracts/berachain-80094/0xd2b9667f5214115e27937c410caee83e3a901df7/) | GeneralAdapter1 | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| berachain | [`0x30bba9...545bc1`](./contracts/berachain-80094/0x30bba9cd9eb8c95824aa42faa1bb397b07545bc1/) | MetaMorphoV1_1 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| berachain | [`0x5edd48...fbe616`](./contracts/berachain-80094/0x5edd48c6acbd565eeb31702fd9fa9cbc86fbe616/) | MetaMorphoV1_1Factory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| berachain | [`0x55dcce...657dd2`](./contracts/berachain-80094/0x55dcce8165c88aad4403a15a9ce3a8e244657dd2/) | PoolCreationHelper | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| berachain | [`0x33c88f...aabbbf`](./contracts/berachain-80094/0x33c88ffdee710ed3908c791137bd1d4421aabbbf/) | ProtocolFeePercentagesProvider | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| berachain | [`0xb8cf46...6f1707`](./contracts/berachain-80094/0xb8cf46cf1b1476e707619913a70b2085d26f1707/) | ProtocolFeesCollector | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| berachain | [`0x1635f0...3240c7`](./contracts/berachain-80094/0x1635f0e1b3e8a6713d03ae155ba79458ba3240c7/) | ProtocolFeesWithdrawer | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| berachain | [`0xb62f34...51bfe7`](./contracts/berachain-80094/0xb62f34ab315eadeac698e8eaeb6fc2650951bfe7/) | PublicAllocator | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| berachain | [`0xa966fa...1af409`](./contracts/berachain-80094/0xa966fa8f2d5b087fffa499c0c1240589371af409/) | WeightedPoolFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 25 |
| upstream | 9 |
| standard_library | 24 |
| needs_review | 47 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=2
- Match method counts: extraction_exact=13

Fork inheritance lineage and inherited audits are included when available.
