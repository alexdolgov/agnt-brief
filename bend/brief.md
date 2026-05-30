# Agentic Audit Brief: BEND

⚠️ Lifecycle status: UNKNOWN - TVL dropped 33.5% over 90 days

## Project Overview

- Project: BEND (`bend`)
- Website: [https://bend.berachain.com](https://bend.berachain.com)
- Lifecycle: unknown (Tier 0, 63.6% below peak)
- Generated: 2026-05-30T10:13:23.951Z
- Pipeline run: v2-pipeline-2026-05-30-255779-d7f7
- Chains: berachain, ethereum
- Contract surface: 105 unique implementations (105 raw deployments)
- DeFi Llama TVL: $12,591,438.21
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
- Audits discovered: 182
- Scoreable audits (matched contracts): 2
- ASD (verified + unaudited TVL): $896,828.84
- Latest audit: 2026-05 (fresh)
- Staleness: 2 fresh, 0 aging, 10 stale, 170 unknown
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
| [0001-dataset-cache-manifest-and-runtime-adapters.md](https://github.com/DefiLlama/defillama-app/blob/main/docs/adr/0001-dataset-cache-manifest-and-runtime-adapters.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [0002-metadata-manifest-and-pull-command.md](https://github.com/DefiLlama/defillama-app/blob/main/docs/adr/0002-metadata-manifest-and-pull-command.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [0003-bun-package-manager-node-runtime.md](https://github.com/DefiLlama/defillama-app/blob/main/docs/adr/0003-bun-package-manager-node-runtime.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [setup.md](https://github.com/berachain/polaris-geth/blob/master/cmd/clef/docs/setup.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [2017-04-25_Geth-audit_Truesec.pdf](https://github.com/berachain/polaris-geth/blob/master/docs/audits/2017-04-25_Geth-audit_Truesec.pdf) | unknown | Audit | 2017-04 | stale | Direct | n/a | 0 | n/a |
| [2018-09-14_Clef-audit_NCC.pdf](https://github.com/berachain/polaris-geth/blob/master/docs/audits/2018-09-14_Clef-audit_NCC.pdf) | unknown | Audit | 2018-09 | stale | Direct | n/a | 0 | n/a |
| [2019-10-15_Discv5_audit_LeastAuthority.pdf](https://github.com/berachain/polaris-geth/blob/master/docs/audits/2019-10-15_Discv5_audit_LeastAuthority.pdf) | unknown | Audit | 2019-10 | stale | Direct | n/a | 0 | n/a |
| [2020-01-24_DiscV5_audit_Cure53.pdf](https://github.com/berachain/polaris-geth/blob/master/docs/audits/2020-01-24_DiscV5_audit_Cure53.pdf) | unknown | Audit | 2020-01 | stale | Direct | n/a | 0 | n/a |
| [2021-08-22-split-postmortem.md](https://github.com/berachain/polaris-geth/blob/master/docs/postmortems/2021-08-22-split-postmortem.md) | unknown | Audit | 2021-08 | stale | Direct | n/a | 0 | n/a |
| [2017-03.md (also discovered via alternate URL)](https://github.com/berachain/offchain-sdk/blob/main/contracts/lib/openzeppelin-contracts/audits/2017-03.md) | OpenZeppelin | Audit | 2017-03 | stale | Direct | n/a | 0 | n/a |
| [2018-10.pdf (also discovered via alternate URL)](https://github.com/berachain/offchain-sdk/blob/main/contracts/lib/openzeppelin-contracts/audits/2018-10.pdf) | OpenZeppelin | Audit | 2018-10 | stale | Direct | n/a | 0 | n/a |
| [2022-10-Checkpoints.pdf](https://github.com/berachain/offchain-sdk/blob/main/contracts/lib/openzeppelin-contracts/audits/2022-10-Checkpoints.pdf) | OpenZeppelin | Audit | 2022-10 | stale | Direct | n/a | 0 | n/a |
| [2022-10-ERC4626.pdf](https://github.com/berachain/offchain-sdk/blob/main/contracts/lib/openzeppelin-contracts/audits/2022-10-ERC4626.pdf) | Code4rena | Contest | 2022-10 | stale | Direct | n/a | 0 | n/a |
| [2023-05-v4.9.pdf](https://github.com/berachain/offchain-sdk/blob/main/contracts/lib/openzeppelin-contracts/audits/2023-05-v4.9.pdf) | OpenZeppelin | Audit | 2023-05 | stale | Direct | n/a | 0 | n/a |
| [README.md (also discovered via alternate URL)](https://github.com/berachain/offchain-sdk/blob/main/contracts/lib/openzeppelin-contracts/audits/README.md) | OpenZeppelin | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [certik-07-03.pdf](https://github.com/berachain/offchain-sdk/blob/main/contracts/lib/reference/audits/certik-07-03.pdf) | CertiK | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [DOC_WRITING_GUIDELINES.md](https://github.com/berachain/cosmos-sdk/blob/main/docs/DOC_WRITING_GUIDELINES.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [Introduction.md](https://github.com/berachain/cosmos-sdk/blob/main/docs/Introduction.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [PROCESS.md (also discovered via alternate URL)](https://github.com/berachain/cosmos-sdk/blob/main/docs/architecture/PROCESS.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [adr-002-docs-structure.md](https://github.com/berachain/cosmos-sdk/blob/main/docs/architecture/adr-002-docs-structure.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [adr-003-dynamic-capability-store.md](https://github.com/berachain/cosmos-sdk/blob/main/docs/architecture/adr-003-dynamic-capability-store.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [adr-004-split-denomination-keys.md](https://github.com/berachain/cosmos-sdk/blob/main/docs/architecture/adr-004-split-denomination-keys.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [adr-006-secret-store-replacement.md](https://github.com/berachain/cosmos-sdk/blob/main/docs/architecture/adr-006-secret-store-replacement.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [adr-007-specialization-groups.md](https://github.com/berachain/cosmos-sdk/blob/main/docs/architecture/adr-007-specialization-groups.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [adr-008-dCERT-group.md](https://github.com/berachain/cosmos-sdk/blob/main/docs/architecture/adr-008-dCERT-group.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [adr-009-evidence-module.md](https://github.com/berachain/cosmos-sdk/blob/main/docs/architecture/adr-009-evidence-module.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [adr-010-modular-antehandler.md](https://github.com/berachain/cosmos-sdk/blob/main/docs/architecture/adr-010-modular-antehandler.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [adr-011-generalize-genesis-accounts.md](https://github.com/berachain/cosmos-sdk/blob/main/docs/architecture/adr-011-generalize-genesis-accounts.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [adr-012-state-accessors.md](https://github.com/berachain/cosmos-sdk/blob/main/docs/architecture/adr-012-state-accessors.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [adr-013-metrics.md](https://github.com/berachain/cosmos-sdk/blob/main/docs/architecture/adr-013-metrics.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [adr-014-proportional-slashing.md](https://github.com/berachain/cosmos-sdk/blob/main/docs/architecture/adr-014-proportional-slashing.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [adr-016-validator-consensus-key-rotation.md](https://github.com/berachain/cosmos-sdk/blob/main/docs/architecture/adr-016-validator-consensus-key-rotation.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [adr-017-historical-header-module.md](https://github.com/berachain/cosmos-sdk/blob/main/docs/architecture/adr-017-historical-header-module.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [adr-018-extendable-voting-period.md](https://github.com/berachain/cosmos-sdk/blob/main/docs/architecture/adr-018-extendable-voting-period.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [adr-019-protobuf-state-encoding.md](https://github.com/berachain/cosmos-sdk/blob/main/docs/architecture/adr-019-protobuf-state-encoding.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [adr-020-protobuf-transaction-encoding.md](https://github.com/berachain/cosmos-sdk/blob/main/docs/architecture/adr-020-protobuf-transaction-encoding.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [adr-021-protobuf-query-encoding.md](https://github.com/berachain/cosmos-sdk/blob/main/docs/architecture/adr-021-protobuf-query-encoding.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [adr-022-custom-panic-handling.md](https://github.com/berachain/cosmos-sdk/blob/main/docs/architecture/adr-022-custom-panic-handling.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [adr-023-protobuf-naming.md](https://github.com/berachain/cosmos-sdk/blob/main/docs/architecture/adr-023-protobuf-naming.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [adr-024-coin-metadata.md](https://github.com/berachain/cosmos-sdk/blob/main/docs/architecture/adr-024-coin-metadata.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [adr-027-deterministic-protobuf-serialization.md](https://github.com/berachain/cosmos-sdk/blob/main/docs/architecture/adr-027-deterministic-protobuf-serialization.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [adr-028-public-key-addresses.md](https://github.com/berachain/cosmos-sdk/blob/main/docs/architecture/adr-028-public-key-addresses.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [adr-029-fee-grant-module.md](https://github.com/berachain/cosmos-sdk/blob/main/docs/architecture/adr-029-fee-grant-module.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [adr-030-authz-module.md](https://github.com/berachain/cosmos-sdk/blob/main/docs/architecture/adr-030-authz-module.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [adr-031-msg-service.md](https://github.com/berachain/cosmos-sdk/blob/main/docs/architecture/adr-031-msg-service.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [adr-032-typed-events.md](https://github.com/berachain/cosmos-sdk/blob/main/docs/architecture/adr-032-typed-events.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [adr-033-protobuf-inter-module-comm.md](https://github.com/berachain/cosmos-sdk/blob/main/docs/architecture/adr-033-protobuf-inter-module-comm.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [adr-034-account-rekeying.md](https://github.com/berachain/cosmos-sdk/blob/main/docs/architecture/adr-034-account-rekeying.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [adr-035-rosetta-api-support.md](https://github.com/berachain/cosmos-sdk/blob/main/docs/architecture/adr-035-rosetta-api-support.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [adr-036-arbitrary-signature.md](https://github.com/berachain/cosmos-sdk/blob/main/docs/architecture/adr-036-arbitrary-signature.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [adr-037-gov-split-vote.md](https://github.com/berachain/cosmos-sdk/blob/main/docs/architecture/adr-037-gov-split-vote.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [adr-038-state-listening.md](https://github.com/berachain/cosmos-sdk/blob/main/docs/architecture/adr-038-state-listening.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [adr-039-epoched-staking.md](https://github.com/berachain/cosmos-sdk/blob/main/docs/architecture/adr-039-epoched-staking.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [adr-040-storage-and-smt-state-commitments.md](https://github.com/berachain/cosmos-sdk/blob/main/docs/architecture/adr-040-storage-and-smt-state-commitments.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [adr-041-in-place-store-migrations.md](https://github.com/berachain/cosmos-sdk/blob/main/docs/architecture/adr-041-in-place-store-migrations.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [adr-042-group-module.md](https://github.com/berachain/cosmos-sdk/blob/main/docs/architecture/adr-042-group-module.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [adr-043-nft-module.md](https://github.com/berachain/cosmos-sdk/blob/main/docs/architecture/adr-043-nft-module.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [adr-044-protobuf-updates-guidelines.md](https://github.com/berachain/cosmos-sdk/blob/main/docs/architecture/adr-044-protobuf-updates-guidelines.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [adr-045-check-delivertx-middlewares.md](https://github.com/berachain/cosmos-sdk/blob/main/docs/architecture/adr-045-check-delivertx-middlewares.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [adr-046-module-params.md](https://github.com/berachain/cosmos-sdk/blob/main/docs/architecture/adr-046-module-params.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [adr-047-extend-upgrade-plan.md](https://github.com/berachain/cosmos-sdk/blob/main/docs/architecture/adr-047-extend-upgrade-plan.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [adr-048-consensus-fees.md](https://github.com/berachain/cosmos-sdk/blob/main/docs/architecture/adr-048-consensus-fees.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [adr-049-state-sync-hooks.md](https://github.com/berachain/cosmos-sdk/blob/main/docs/architecture/adr-049-state-sync-hooks.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [adr-050-sign-mode-textual-annex1.md](https://github.com/berachain/cosmos-sdk/blob/main/docs/architecture/adr-050-sign-mode-textual-annex1.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [adr-050-sign-mode-textual-annex2.md](https://github.com/berachain/cosmos-sdk/blob/main/docs/architecture/adr-050-sign-mode-textual-annex2.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [adr-050-sign-mode-textual.md](https://github.com/berachain/cosmos-sdk/blob/main/docs/architecture/adr-050-sign-mode-textual.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [adr-053-go-module-refactoring.md](https://github.com/berachain/cosmos-sdk/blob/main/docs/architecture/adr-053-go-module-refactoring.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [adr-054-semver-compatible-modules.md](https://github.com/berachain/cosmos-sdk/blob/main/docs/architecture/adr-054-semver-compatible-modules.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [adr-055-orm.md](https://github.com/berachain/cosmos-sdk/blob/main/docs/architecture/adr-055-orm.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [adr-057-app-wiring.md](https://github.com/berachain/cosmos-sdk/blob/main/docs/architecture/adr-057-app-wiring.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [adr-058-auto-generated-cli.md](https://github.com/berachain/cosmos-sdk/blob/main/docs/architecture/adr-058-auto-generated-cli.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [adr-059-test-scopes.md](https://github.com/berachain/cosmos-sdk/blob/main/docs/architecture/adr-059-test-scopes.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [adr-060-abci-1.0.md](https://github.com/berachain/cosmos-sdk/blob/main/docs/architecture/adr-060-abci-1.0.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [adr-061-liquid-staking.md](https://github.com/berachain/cosmos-sdk/blob/main/docs/architecture/adr-061-liquid-staking.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [adr-062-collections-state-layer.md](https://github.com/berachain/cosmos-sdk/blob/main/docs/architecture/adr-062-collections-state-layer.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [adr-063-core-module-api.md](https://github.com/berachain/cosmos-sdk/blob/main/docs/architecture/adr-063-core-module-api.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [adr-064-abci-2.0.md](https://github.com/berachain/cosmos-sdk/blob/main/docs/architecture/adr-064-abci-2.0.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [adr-065-store-v2.md](https://github.com/berachain/cosmos-sdk/blob/main/docs/architecture/adr-065-store-v2.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [adr-067-simulator-v2.md](https://github.com/berachain/cosmos-sdk/blob/main/docs/architecture/adr-067-simulator-v2.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [adr-068-preblock.md](https://github.com/berachain/cosmos-sdk/blob/main/docs/architecture/adr-068-preblock.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [adr-069-gov-improvements.md](https://github.com/berachain/cosmos-sdk/blob/main/docs/architecture/adr-069-gov-improvements.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [adr-070-unordered-transactions.md](https://github.com/berachain/cosmos-sdk/blob/main/docs/architecture/adr-070-unordered-transactions.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [adr-071-bank-v2.md](https://github.com/berachain/cosmos-sdk/blob/main/docs/architecture/adr-071-bank-v2.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [adr-071-crypto-v2-multi-curve.md](https://github.com/berachain/cosmos-sdk/blob/main/docs/architecture/adr-071-crypto-v2-multi-curve.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [adr-073-indexer.md](https://github.com/berachain/cosmos-sdk/blob/main/docs/architecture/adr-073-indexer.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [adr-074-implicit-msg-signers.md](https://github.com/berachain/cosmos-sdk/blob/main/docs/architecture/adr-074-implicit-msg-signers.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [adr-75-v2.md](https://github.com/berachain/cosmos-sdk/blob/main/docs/architecture/adr-75-v2.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [adr-template.md](https://github.com/berachain/cosmos-sdk/blob/main/docs/architecture/adr-template.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [00-introduction.md](https://github.com/berachain/cosmos-sdk/blob/main/docs/build/abci/00-introduction.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [01-prepare-proposal.md](https://github.com/berachain/cosmos-sdk/blob/main/docs/build/abci/01-prepare-proposal.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [02-process-proposal.md](https://github.com/berachain/cosmos-sdk/blob/main/docs/build/abci/02-process-proposal.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [03-vote-extensions.md](https://github.com/berachain/cosmos-sdk/blob/main/docs/build/abci/03-vote-extensions.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [04-checktx.md](https://github.com/berachain/cosmos-sdk/blob/main/docs/build/abci/04-checktx.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [build.md](https://github.com/berachain/cosmos-sdk/blob/main/docs/build/build.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [00-runtime.md](https://github.com/berachain/cosmos-sdk/blob/main/docs/build/building-apps/00-runtime.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [01-app-go-di.md](https://github.com/berachain/cosmos-sdk/blob/main/docs/build/building-apps/01-app-go-di.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [02-app-mempool.md](https://github.com/berachain/cosmos-sdk/blob/main/docs/build/building-apps/02-app-mempool.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [03-app-upgrade.md](https://github.com/berachain/cosmos-sdk/blob/main/docs/build/building-apps/03-app-upgrade.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [04-security-part-1.md](https://github.com/berachain/cosmos-sdk/blob/main/docs/build/building-apps/04-security-part-1.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [05-app-testnet.md](https://github.com/berachain/cosmos-sdk/blob/main/docs/build/building-apps/05-app-testnet.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [06-app-go-genesis.md](https://github.com/berachain/cosmos-sdk/blob/main/docs/build/building-apps/06-app-go-genesis.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [06-system-tests.md](https://github.com/berachain/cosmos-sdk/blob/main/docs/build/building-apps/06-system-tests.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [00-intro.md](https://github.com/berachain/cosmos-sdk/blob/main/docs/build/building-modules/00-intro.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [01-module-manager.md](https://github.com/berachain/cosmos-sdk/blob/main/docs/build/building-modules/01-module-manager.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [02-messages-and-queries.md](https://github.com/berachain/cosmos-sdk/blob/main/docs/build/building-modules/02-messages-and-queries.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [03-msg-services.md](https://github.com/berachain/cosmos-sdk/blob/main/docs/build/building-modules/03-msg-services.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [04-query-services.md](https://github.com/berachain/cosmos-sdk/blob/main/docs/build/building-modules/04-query-services.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [05-protobuf-annotations.md](https://github.com/berachain/cosmos-sdk/blob/main/docs/build/building-modules/05-protobuf-annotations.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [06-keeper.md](https://github.com/berachain/cosmos-sdk/blob/main/docs/build/building-modules/06-keeper.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [06-preblock-beginblock-endblock.md](https://github.com/berachain/cosmos-sdk/blob/main/docs/build/building-modules/06-preblock-beginblock-endblock.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [08-genesis.md](https://github.com/berachain/cosmos-sdk/blob/main/docs/build/building-modules/08-genesis.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [09-module-interfaces.md](https://github.com/berachain/cosmos-sdk/blob/main/docs/build/building-modules/09-module-interfaces.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [11-structure.md](https://github.com/berachain/cosmos-sdk/blob/main/docs/build/building-modules/11-structure.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [12-errors.md](https://github.com/berachain/cosmos-sdk/blob/main/docs/build/building-modules/12-errors.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [13-upgrade.md](https://github.com/berachain/cosmos-sdk/blob/main/docs/build/building-modules/13-upgrade.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [14-simulator.md](https://github.com/berachain/cosmos-sdk/blob/main/docs/build/building-modules/14-simulator.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [15-depinject.md](https://github.com/berachain/cosmos-sdk/blob/main/docs/build/building-modules/15-depinject.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [16-testing.md](https://github.com/berachain/cosmos-sdk/blob/main/docs/build/building-modules/16-testing.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [18-decimal-handling.md](https://github.com/berachain/cosmos-sdk/blob/main/docs/build/building-modules/18-decimal-handling.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [18-define-hooks.md](https://github.com/berachain/cosmos-sdk/blob/main/docs/build/building-modules/18-define-hooks.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [01-intro.md](https://github.com/berachain/cosmos-sdk/blob/main/docs/build/migrations/01-intro.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [00-protobuf.md](https://github.com/berachain/cosmos-sdk/blob/main/docs/build/tooling/00-protobuf.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [00-baseapp.md](https://github.com/berachain/cosmos-sdk/blob/main/docs/learn/advanced/00-baseapp.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [01-transactions.md](https://github.com/berachain/cosmos-sdk/blob/main/docs/learn/advanced/01-transactions.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [02-core.md](https://github.com/berachain/cosmos-sdk/blob/main/docs/learn/advanced/02-core.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [03-node.md](https://github.com/berachain/cosmos-sdk/blob/main/docs/learn/advanced/03-node.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [04-store.md](https://github.com/berachain/cosmos-sdk/blob/main/docs/learn/advanced/04-store.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [05-encoding.md](https://github.com/berachain/cosmos-sdk/blob/main/docs/learn/advanced/05-encoding.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [06-grpc_rest.md](https://github.com/berachain/cosmos-sdk/blob/main/docs/learn/advanced/06-grpc_rest.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [07-cli.md](https://github.com/berachain/cosmos-sdk/blob/main/docs/learn/advanced/07-cli.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [08-events.md](https://github.com/berachain/cosmos-sdk/blob/main/docs/learn/advanced/08-events.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [09-telemetry.md](https://github.com/berachain/cosmos-sdk/blob/main/docs/learn/advanced/09-telemetry.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [10-ocap.md](https://github.com/berachain/cosmos-sdk/blob/main/docs/learn/advanced/10-ocap.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [11-runtx_middleware.md](https://github.com/berachain/cosmos-sdk/blob/main/docs/learn/advanced/11-runtx_middleware.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [12-simulation.md](https://github.com/berachain/cosmos-sdk/blob/main/docs/learn/advanced/12-simulation.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [13-proto-docs.md](https://github.com/berachain/cosmos-sdk/blob/main/docs/learn/advanced/13-proto-docs.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [15-upgrade.md](https://github.com/berachain/cosmos-sdk/blob/main/docs/learn/advanced/15-upgrade.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [16-config.md](https://github.com/berachain/cosmos-sdk/blob/main/docs/learn/advanced/16-config.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [17-context.md](https://github.com/berachain/cosmos-sdk/blob/main/docs/learn/advanced/17-context.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [00-app-anatomy.md](https://github.com/berachain/cosmos-sdk/blob/main/docs/learn/beginner/00-app-anatomy.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [01-tx-lifecycle.md](https://github.com/berachain/cosmos-sdk/blob/main/docs/learn/beginner/01-tx-lifecycle.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [02-query-lifecycle.md](https://github.com/berachain/cosmos-sdk/blob/main/docs/learn/beginner/02-query-lifecycle.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [03-accounts.md](https://github.com/berachain/cosmos-sdk/blob/main/docs/learn/beginner/03-accounts.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [04-gas-fees.md](https://github.com/berachain/cosmos-sdk/blob/main/docs/learn/beginner/04-gas-fees.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [00-overview.md](https://github.com/berachain/cosmos-sdk/blob/main/docs/learn/intro/00-overview.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [01-why-app-specific.md](https://github.com/berachain/cosmos-sdk/blob/main/docs/learn/intro/01-why-app-specific.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [02-sdk-app-architecture.md](https://github.com/berachain/cosmos-sdk/blob/main/docs/learn/intro/02-sdk-app-architecture.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [03-sdk-design.md](https://github.com/berachain/cosmos-sdk/blob/main/docs/learn/intro/03-sdk-design.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [learn.md](https://github.com/berachain/cosmos-sdk/blob/main/docs/learn/learn.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [rfc-001-tx-validation.md](https://github.com/berachain/cosmos-sdk/blob/main/docs/rfc/rfc-001-tx-validation.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [rfc-002-zero-copy-encoding.md](https://github.com/berachain/cosmos-sdk/blob/main/docs/rfc/rfc-002-zero-copy-encoding.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [rfc-003-crosslang.md](https://github.com/berachain/cosmos-sdk/blob/main/docs/rfc/rfc-003-crosslang.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [rfc-004-accounts.md](https://github.com/berachain/cosmos-sdk/blob/main/docs/rfc/rfc-004-accounts.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [rfc-005-optimistic-execution.md](https://github.com/berachain/cosmos-sdk/blob/main/docs/rfc/rfc-005-optimistic-execution.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [rfc-006-handlers.md](https://github.com/berachain/cosmos-sdk/blob/main/docs/rfc/rfc-006-handlers.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [rfc-template.md](https://github.com/berachain/cosmos-sdk/blob/main/docs/rfc/rfc-template.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [SPEC_MODULE.md](https://github.com/berachain/cosmos-sdk/blob/main/docs/spec/SPEC_MODULE.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [SPEC_STANDARD.md](https://github.com/berachain/cosmos-sdk/blob/main/docs/spec/SPEC_STANDARD.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [ics-030-signed-messages.md](https://github.com/berachain/cosmos-sdk/blob/main/docs/spec/_ics/ics-030-signed-messages.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [bech32.md](https://github.com/berachain/cosmos-sdk/blob/main/docs/spec/addresses/bech32.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [f1_fee_distr.pdf](https://github.com/berachain/cosmos-sdk/blob/main/docs/spec/fee_distribution/f1_fee_distr.pdf) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [interblock-cache.md](https://github.com/berachain/cosmos-sdk/blob/main/docs/spec/store/interblock-cache.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [00-keyring.md](https://github.com/berachain/cosmos-sdk/blob/main/docs/user/run-node/00-keyring.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [01-run-node.md](https://github.com/berachain/cosmos-sdk/blob/main/docs/user/run-node/01-run-node.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [02-interact-node.md](https://github.com/berachain/cosmos-sdk/blob/main/docs/user/run-node/02-interact-node.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [03-txs.md](https://github.com/berachain/cosmos-sdk/blob/main/docs/user/run-node/03-txs.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [04-rosetta.md](https://github.com/berachain/cosmos-sdk/blob/main/docs/user/run-node/04-rosetta.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [05-run-testnet.md](https://github.com/berachain/cosmos-sdk/blob/main/docs/user/run-node/05-run-testnet.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [06-run-production.md](https://github.com/berachain/cosmos-sdk/blob/main/docs/user/run-node/06-run-production.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [07-multisig-guide.md](https://github.com/berachain/cosmos-sdk/blob/main/docs/user/run-node/07-multisig-guide.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [08-onchain-multisig.md](https://github.com/berachain/cosmos-sdk/blob/main/docs/user/run-node/08-onchain-multisig.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [user.md](https://github.com/berachain/cosmos-sdk/blob/main/docs/user/user.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [rules.md](https://github.com/berachain/docs/blob/main/.cursor/rules.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [documentation.md](https://github.com/berachain/docs/blob/main/.github/ISSUE_TEMPLATE/documentation.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [pull_request_template.md](https://github.com/berachain/docs/blob/main/.github/pull_request_template.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [AGENTS.md](https://github.com/berachain/docs/blob/main/AGENTS.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [CODE_OF_CONDUCT.md](https://github.com/berachain/docs/blob/main/CODE_OF_CONDUCT.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [CONTRIBUTING.md](https://github.com/berachain/docs/blob/main/CONTRIBUTING.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [STRUCTURE.md](https://github.com/berachain/docs/blob/main/STRUCTURE.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [UBIQUITOUS_LANGUAGE.md](https://github.com/berachain/docs/blob/main/UBIQUITOUS_LANGUAGE.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |

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
- Audits with zero matched contracts: 180
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=2
- Match method counts: extraction_exact=13

Zero-match audit list:

- [9797] 0001-dataset-cache-manifest-and-runtime-adapters.md
- [9798] 0002-metadata-manifest-and-pull-command.md
- [9799] 0003-bun-package-manager-node-runtime.md
- [9800] setup.md
- [9801] 2017-04-25_Geth-audit_Truesec.pdf
- [9802] 2018-09-14_Clef-audit_NCC.pdf
- [9803] 2019-10-15_Discv5_audit_LeastAuthority.pdf
- [9804] 2020-01-24_DiscV5_audit_Cure53.pdf
- [9805] 2021-08-22-split-postmortem.md
- [9806] 2017-03.md
- [9807] 2018-10.pdf
- [9808] 2022-10-Checkpoints.pdf
- [9809] 2022-10-ERC4626.pdf
- [9810] 2023-05-v4.9.pdf
- [9811] README.md
- [9813] certik-07-03.pdf
- [9816] DOC_WRITING_GUIDELINES.md
- [9817] Introduction.md
- [9819] PROCESS.md
- [9821] adr-002-docs-structure.md
- [9822] adr-003-dynamic-capability-store.md
- [9823] adr-004-split-denomination-keys.md
- [9824] adr-006-secret-store-replacement.md
- [9825] adr-007-specialization-groups.md
- [9826] adr-008-dCERT-group.md
- [9827] adr-009-evidence-module.md
- [9828] adr-010-modular-antehandler.md
- [9829] adr-011-generalize-genesis-accounts.md
- [9830] adr-012-state-accessors.md
- [9831] adr-013-metrics.md
- [9832] adr-014-proportional-slashing.md
- [9833] adr-016-validator-consensus-key-rotation.md
- [9834] adr-017-historical-header-module.md
- [9835] adr-018-extendable-voting-period.md
- [9836] adr-019-protobuf-state-encoding.md
- [9837] adr-020-protobuf-transaction-encoding.md
- [9838] adr-021-protobuf-query-encoding.md
- [9839] adr-022-custom-panic-handling.md
- [9840] adr-023-protobuf-naming.md
- [9841] adr-024-coin-metadata.md
- [9842] adr-027-deterministic-protobuf-serialization.md
- [9843] adr-028-public-key-addresses.md
- [9844] adr-029-fee-grant-module.md
- [9845] adr-030-authz-module.md
- [9846] adr-031-msg-service.md
- [9847] adr-032-typed-events.md
- [9848] adr-033-protobuf-inter-module-comm.md
- [9849] adr-034-account-rekeying.md
- [9850] adr-035-rosetta-api-support.md
- [9851] adr-036-arbitrary-signature.md
- [9852] adr-037-gov-split-vote.md
- [9853] adr-038-state-listening.md
- [9854] adr-039-epoched-staking.md
- [9855] adr-040-storage-and-smt-state-commitments.md
- [9856] adr-041-in-place-store-migrations.md
- [9857] adr-042-group-module.md
- [9858] adr-043-nft-module.md
- [9859] adr-044-protobuf-updates-guidelines.md
- [9860] adr-045-check-delivertx-middlewares.md
- [9861] adr-046-module-params.md
- [9862] adr-047-extend-upgrade-plan.md
- [9863] adr-048-consensus-fees.md
- [9864] adr-049-state-sync-hooks.md
- [9865] adr-050-sign-mode-textual-annex1.md
- [9866] adr-050-sign-mode-textual-annex2.md
- [9867] adr-050-sign-mode-textual.md
- [9868] adr-053-go-module-refactoring.md
- [9869] adr-054-semver-compatible-modules.md
- [9870] adr-055-orm.md
- [9871] adr-057-app-wiring.md
- [9872] adr-058-auto-generated-cli.md
- [9873] adr-059-test-scopes.md
- [9874] adr-060-abci-1.0.md
- [9875] adr-061-liquid-staking.md
- [9876] adr-062-collections-state-layer.md
- [9877] adr-063-core-module-api.md
- [9878] adr-064-abci-2.0.md
- [9879] adr-065-store-v2.md
- [9880] adr-067-simulator-v2.md
- [9881] adr-068-preblock.md
- [9882] adr-069-gov-improvements.md
- [9883] adr-070-unordered-transactions.md
- [9884] adr-071-bank-v2.md
- [9885] adr-071-crypto-v2-multi-curve.md
- [9886] adr-073-indexer.md
- [9887] adr-074-implicit-msg-signers.md
- [9888] adr-75-v2.md
- [9889] adr-template.md
- [9890] 00-introduction.md
- [9891] 01-prepare-proposal.md
- [9892] 02-process-proposal.md
- [9893] 03-vote-extensions.md
- [9894] 04-checktx.md
- [9895] build.md
- [9896] 00-runtime.md
- [9897] 01-app-go-di.md
- [9898] 02-app-mempool.md
- [9899] 03-app-upgrade.md
- [9900] 04-security-part-1.md
- [9901] 05-app-testnet.md
- [9902] 06-app-go-genesis.md
- [9903] 06-system-tests.md
- [9904] 00-intro.md
- [9905] 01-module-manager.md
- [9906] 02-messages-and-queries.md
- [9907] 03-msg-services.md
- [9908] 04-query-services.md
- [9909] 05-protobuf-annotations.md
- [9910] 06-keeper.md
- [9911] 06-preblock-beginblock-endblock.md
- [9912] 08-genesis.md
- [9913] 09-module-interfaces.md
- [9914] 11-structure.md
- [9915] 12-errors.md
- [9916] 13-upgrade.md
- [9917] 14-simulator.md
- [9918] 15-depinject.md
- [9919] 16-testing.md
- [9920] 18-decimal-handling.md
- [9921] 18-define-hooks.md
- [9922] 01-intro.md
- [9924] 00-protobuf.md
- [9926] 00-baseapp.md
- [9927] 01-transactions.md
- [9928] 02-core.md
- [9929] 03-node.md
- [9930] 04-store.md
- [9931] 05-encoding.md
- [9932] 06-grpc_rest.md
- [9933] 07-cli.md
- [9934] 08-events.md
- [9935] 09-telemetry.md
- [9936] 10-ocap.md
- [9937] 11-runtx_middleware.md
- [9938] 12-simulation.md
- [9939] 13-proto-docs.md
- [9940] 15-upgrade.md
- [9941] 16-config.md
- [9942] 17-context.md
- [9943] 00-app-anatomy.md
- [9944] 01-tx-lifecycle.md
- [9945] 02-query-lifecycle.md
- [9946] 03-accounts.md
- [9947] 04-gas-fees.md
- [9948] 00-overview.md
- [9949] 01-why-app-specific.md
- [9950] 02-sdk-app-architecture.md
- [9951] 03-sdk-design.md
- [9952] learn.md
- [9955] rfc-001-tx-validation.md
- [9956] rfc-002-zero-copy-encoding.md
- [9957] rfc-003-crosslang.md
- [9958] rfc-004-accounts.md
- [9959] rfc-005-optimistic-execution.md
- [9960] rfc-006-handlers.md
- [9961] rfc-template.md
- [9963] SPEC_MODULE.md
- [9964] SPEC_STANDARD.md
- [9966] ics-030-signed-messages.md
- [9968] bech32.md
- [9969] f1_fee_distr.pdf
- [9971] interblock-cache.md
- [9972] 00-keyring.md
- [9973] 01-run-node.md
- [9974] 02-interact-node.md
- [9975] 03-txs.md
- [9976] 04-rosetta.md
- [9977] 05-run-testnet.md
- [9978] 06-run-production.md
- [9979] 07-multisig-guide.md
- [9980] 08-onchain-multisig.md
- [9981] user.md
- [9982] rules.md
- [9983] documentation.md
- [9984] pull_request_template.md
- [9985] AGENTS.md
- [9986] CODE_OF_CONDUCT.md
- [9987] CONTRIBUTING.md
- [9989] STRUCTURE.md
- [9990] UBIQUITOUS_LANGUAGE.md

Fork inheritance lineage and inherited audits are included when available.
