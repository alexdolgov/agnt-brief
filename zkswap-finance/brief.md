# Agentic Audit Brief: zkSwap Finance

## Project Overview

- Project: zkSwap Finance (`zkswap-finance`)
- Website: [https://zkswap.finance](https://zkswap.finance)
- Lifecycle: active (Tier 0, 92.4% below peak)
- Generated: 2026-05-25T02:51:49.768Z
- Pipeline run: v2-pipeline-2026-05-22-eff36e-2ebb
- Chains: sonic, zksync-era
- Contract surface: 98 unique implementations (131 raw deployments)
- DeFi Llama TVL: $1,254,813.00
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

zkSwap Finance is a decentralized exchange (DEX) protocol on zkSync Era and Sonic, offering token swaps, liquidity provision, and yield farming. It includes multiple AMM versions (V2, V3, StableSwap), an aggregator, staking, and a swap-to-earn mechanism.

### Architecture

The AMM families (V2, V3, StableSwap) form the core trading infrastructure, while the Aggregator routes trades across them. Farming and Staking contracts distribute rewards to liquidity providers and stakers, often interacting with the AMMs and the ZF token vesting contracts.

## Audit Coverage Summary

- Verified implementations audited: 3/27 (11.1%)
- Verified + Unaudited implementations: 24
- Verified by bytecode match: 0
- Unverified implementations: 71
- Unique implementations: 98
- Raw deployments: 131
- Audits discovered: 8
- Scoreable audits (matched contracts): 5
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2024-04 (stale)
- Staleness: 0 fresh, 0 aging, 8 stale, 0 unknown
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| unknown | Tier 2 | 3 | 11.1% | 2024-01 |
| CertiK | Tier 2 | 2 | 7.4% | 2023-12 |
| Bailsec | Tier 2 | 1 | 3.7% | 2024-04 |

## Contract Surface

### ✅ Verified + Audited (3)

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| ZFFactory | registry | zksync-era | 2 deployments: sonic `0xce98a0...2de529`; zksync-era [`0x3a76e3...744ce3`](./contracts/zksync-era-324/0x3a76e377ed58c8731f9df3a36155942438744ce3/) | ✅ Audited |
| ZFGovernanceStaking | unknown | sonic | 5 deployments: sonic [`0x0cc7d6...a171d5`](./contracts/sonic-146/0x0cc7d6da666529841bad1f9d4199f9773aa171d5/); sonic `0x476151...1a9d3f`; sonic `0x54de11...0e106d`; sonic `0xb255ec...e1e876`; sonic `0xcb3d62...c35087` | ✅ Audited |
| ZFRouter | adapter | zksync-era | 3 deployments: sonic `0xcd219a...5d1822`; sonic `0xf5cf2b...392285`; zksync-era [`0x18381c...040fa4`](./contracts/zksync-era-324/0x18381c0f738146fb694de18d1106bde2be040fa4/) | ✅ Audited |

### ⚠️ Verified + Unaudited (24)

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| AggregatorSmart | unknown | sonic | 4 deployments: sonic [`0x0edd6e...f6f5b3`](./contracts/sonic-146/0x0edd6eced51b0f0ee830d891ba230ac39ff6f5b3/); sonic `0x55dfa5...679d2a`; sonic `0xbd1c10...59ca60`; sonic `0xc9c497...c85849` | ⚠️ Unaudited |
| AggregatorSmartV2 | unknown | sonic | [`0x7f2038...2aac65`](./contracts/sonic-146/0x7f2038b9a6d80b34dc5ec66208bccfd9332aac65/) | ⚠️ Unaudited |
| BulkSender | unknown | sonic | [`0xaf02a2...d5533e`](./contracts/sonic-146/0xaf02a22ea072d8a7fc573935aea7152345d5533e/) | ⚠️ Unaudited |
| GnosisSafeProxy | governance | sonic | 2 deployments: sonic [`0x4780ea...7c2262`](./contracts/sonic-146/0x4780ea7fc1fc4c51732ab31d797d4e24757c2262/); sonic `0x825e62...ff1e13` | ⚠️ Unaudited |
| LongOFT | unknown | sonic | 2 deployments: sonic [`0xbdd352...f6146f`](./contracts/sonic-146/0xbdd352f339e27e07089039ba80029f9135f6146f/); sonic `0xfe5714...1ecd49` | ⚠️ Unaudited |
| Multicall3 | periphery | sonic | [`0x3be99d...a84917`](./contracts/sonic-146/0x3be99db246c81df2bd8dc0d708e03f64e1a84917/) | ⚠️ Unaudited |
| NonfungiblePositionManager | governance | sonic | 2 deployments: sonic [`0x2e1164...0094f5`](./contracts/sonic-146/0x2e11640ee1368f2cd90c36607760a274a30094f5/); zksync-era `0xe8a9c6...683860` | ⚠️ Unaudited |
| NonfungibleTokenPositionDescriptor | token | sonic | [`0xf5fb98...2ae0d5`](./contracts/sonic-146/0xf5fb98fce5ee81b4e2c5ac1829b12259f32ae0d5/) | ⚠️ Unaudited |
| ProxyAdmin | governance | sonic | [`0x486d7c...def71b`](./contracts/sonic-146/0x486d7c009b78310528aca11574ec816d2fdef71b/) | ⚠️ Unaudited |
| QuoterV2 | periphery | sonic | [`0x3a59bf...ca1caa`](./contracts/sonic-146/0x3a59bfe426f81726c31280aaeae1125f50ca1caa/) | ⚠️ Unaudited |
| TickLens | periphery | sonic | [`0x783438...7ca5ac`](./contracts/sonic-146/0x7834387b0f48c0a2bf9c8fab696e2ab2587ca5ac/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | proxy | sonic | [`0x646a26...45b377`](./contracts/sonic-146/0x646a2679d293c338b31483fddb2eff3c3745b377/) | ⚠️ Unaudited |
| UniversalRouter | adapter | sonic | [`0x957dbe...8f18ec`](./contracts/sonic-146/0x957dbef5673822b3db074f6cee6dcd0fa68f18ec/) | ⚠️ Unaudited |
| ZFOFT | unknown | sonic | 9 deployments: sonic [`0x3ebf33...00997f`](./contracts/sonic-146/0x3ebf331e045128d05ec374e90dd6448d4400997f/); sonic `0x513ac0...ffddd2`; sonic `0x606606...108e1c`; sonic `0x61e09b...2e84ec`; sonic `0x7a2f54...0f42d7`; sonic `0xaeff85...c78838`; sonic `0xb62690...197cbf`; sonic `0xd25b7a...ac3891`; sonic `0xf8850e...ccf360` | ⚠️ Unaudited |
| ZFRewardDistributor | operational_periphery | sonic | 6 deployments: sonic [`0x66349d...2344fe`](./contracts/sonic-146/0x66349deb1eb7d855894bfde287ac68d0eb2344fe/); sonic `0x78caac...dbc5d5`; sonic `0x807fa0...3e795f`; sonic `0xb2d779...b74de5`; sonic `0xda85e0...d23e8d`; sonic `0xfcc8d3...5d3164` | ⚠️ Unaudited |
| ZFStableSwapFactory | registry | sonic | [`0x447fd2...b90c50`](./contracts/sonic-146/0x447fd2fab1985bb80b477cf186f216fc72b90c50/) | ⚠️ Unaudited |
| ZFStableSwapLPFactory | registry | sonic | [`0x5271d6...a1d04c`](./contracts/sonic-146/0x5271d6f66d4d881421fc2b1c48d4f99a9ba1d04c/) | ⚠️ Unaudited |
| ZFStableSwapThreePoolDeployer | core_logic | sonic | [`0xc19a30...b06e37`](./contracts/sonic-146/0xc19a303f856847e60aeddfc5b773017110b06e37/) | ⚠️ Unaudited |
| ZFStableSwapThreePoolInfo | core_logic | sonic | [`0x734711...3b94aa`](./contracts/sonic-146/0x734711633ef2c9a2386be0ea1c010b06fb3b94aa/) | ⚠️ Unaudited |
| ZFStableSwapTwoPoolDeployer | core_logic | sonic | [`0xf43fc4...c28189`](./contracts/sonic-146/0xf43fc445204174ea98cf45b21504463d32c28189/) | ⚠️ Unaudited |
| ZFStableSwapTwoPoolInfo | core_logic | sonic | [`0x9829e4...0a7f6c`](./contracts/sonic-146/0x9829e43951319848e0a78540ff1de77ac20a7f6c/) | ⚠️ Unaudited |
| ZFSwap2EarnRewarder | unknown | sonic | 6 deployments: sonic [`0x3e5239...0cb362`](./contracts/sonic-146/0x3e5239b8b19f2610769a7bcb5e9c876bf90cb362/); sonic `0x43589b...b15843`; sonic `0x4784a5...3a96b7`; sonic `0x750591...93155b`; sonic `0xc98628...1e453c`; sonic `0xf5df07...f47113` | ⚠️ Unaudited |
| ZFV3Factory | registry | sonic | 2 deployments: sonic [`0x6d977f...8032a4`](./contracts/sonic-146/0x6d977fcc945261b80d128a5a91cbf9a9148032a4/); zksync-era `0x88add6...cd7850` | ⚠️ Unaudited |
| ZFV3PoolDeployer | core_logic | sonic | 2 deployments: sonic [`0x0ff168...89eea2`](./contracts/sonic-146/0x0ff16867bcac3c5fdc2dc73558e3f8e2ed89eea2/); zksync-era `0x57d28a...ad4cfb` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (71)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| UnnamedContract | unknown | sonic | `0x1ad6bc...35168a` | ❓ Unverified |
| UnnamedContract | unknown | sonic | `0x1e9ebc...fc6e88` | ❓ Unverified |
| UnnamedContract | unknown | sonic | `0x273fff...eb88cc` | ❓ Unverified |
| UnnamedContract | unknown | sonic | `0x3ec487...0cf971` | ❓ Unverified |
| UnnamedContract | unknown | sonic | `0x45728a...4f877a` | ❓ Unverified |
| UnnamedContract | unknown | sonic | `0x5ebdc3...a45644` | ❓ Unverified |
| UnnamedContract | unknown | sonic | `0x8328ea...ef1434` | ❓ Unverified |
| UnnamedContract | unknown | sonic | `0xced359...ceda27` | ❓ Unverified |
| UnnamedContract | unknown | sonic | `0xead549...c83bb2` | ❓ Unverified |
| UnnamedContract | unknown | zksync-era | `0x010012...39e069` | ❓ Unverified |
| UnnamedContract | unknown | zksync-era | `0x056f19...dc0c8e` | ❓ Unverified |
| UnnamedContract | unknown | zksync-era | `0x0d64c4...2238c0` | ❓ Unverified |
| UnnamedContract | unknown | zksync-era | `0x1191bf...7a0df6` | ❓ Unverified |
| UnnamedContract | unknown | zksync-era | `0x12c944...9adf4f` | ❓ Unverified |
| UnnamedContract | unknown | zksync-era | `0x13bd7a...854042` | ❓ Unverified |
| UnnamedContract | unknown | zksync-era | `0x142096...98c08c` | ❓ Unverified |
| UnnamedContract | unknown | zksync-era | `0x15309a...5b1dd7` | ❓ Unverified |
| UnnamedContract | unknown | zksync-era | `0x1a5fb6...a4a0c9` | ❓ Unverified |
| UnnamedContract | unknown | zksync-era | `0x31c330...f479e4` | ❓ Unverified |
| UnnamedContract | unknown | zksync-era | `0x386bef...63c54c` | ❓ Unverified |
| UnnamedContract | unknown | zksync-era | `0x3b3393...da415b` | ❓ Unverified |
| UnnamedContract | unknown | zksync-era | `0x40ad8e...52ed65` | ❓ Unverified |
| UnnamedContract | unknown | zksync-era | `0x4305cf...97917a` | ❓ Unverified |
| UnnamedContract | unknown | zksync-era | `0x470034...c473d5` | ❓ Unverified |
| UnnamedContract | unknown | zksync-era | `0x4780ea...7c2262` | ❓ Unverified |
| UnnamedContract | unknown | zksync-era | `0x484a72...7990a4` | ❓ Unverified |
| UnnamedContract | unknown | zksync-era | `0x4ca2ac...5f1987` | ❓ Unverified |
| UnnamedContract | unknown | zksync-era | `0x525990...e4983d` | ❓ Unverified |
| UnnamedContract | unknown | zksync-era | `0x571407...c5ddab` | ❓ Unverified |
| UnnamedContract | unknown | zksync-era | `0x58d8dd...3f3c11` | ❓ Unverified |
| UnnamedContract | unknown | zksync-era | `0x5ae21a...1f6eb7` | ❓ Unverified |
| UnnamedContract | unknown | zksync-era | `0x5ca90e...a72c20` | ❓ Unverified |
| UnnamedContract | unknown | zksync-era | `0x61278a...48ea9b` | ❓ Unverified |
| UnnamedContract | unknown | zksync-era | `0x63d8e7...8f19fc` | ❓ Unverified |
| UnnamedContract | unknown | zksync-era | `0x652138...736a75` | ❓ Unverified |
| UnnamedContract | unknown | zksync-era | `0x65300d...586a0f` | ❓ Unverified |
| UnnamedContract | unknown | zksync-era | `0x65ea05...63987b` | ❓ Unverified |
| UnnamedContract | unknown | zksync-era | `0x6f4fc7...e4c215` | ❓ Unverified |
| UnnamedContract | unknown | zksync-era | `0x743944...745228` | ❓ Unverified |
| UnnamedContract | unknown | zksync-era | `0x79354d...f1eaf4` | ❓ Unverified |
| UnnamedContract | unknown | zksync-era | `0x7ab617...b6bbc7` | ❓ Unverified |
| UnnamedContract | unknown | zksync-era | `0x801903...0d8c75` | ❓ Unverified |
| UnnamedContract | unknown | zksync-era | `0x825e62...ff1e13` | ❓ Unverified |
| UnnamedContract | unknown | zksync-era | `0x82e07a...d6bf11` | ❓ Unverified |
| UnnamedContract | unknown | zksync-era | `0x876cfc...5aabca` | ❓ Unverified |
| UnnamedContract | unknown | zksync-era | `0x8770ad...3c17be` | ❓ Unverified |
| UnnamedContract | unknown | zksync-era | `0x97f03b...f74e59` | ❓ Unverified |
| UnnamedContract | unknown | zksync-era | `0x9f20a1...64ea28` | ❓ Unverified |
| UnnamedContract | unknown | zksync-era | `0x9f9d04...979d67` | ❓ Unverified |
| UnnamedContract | unknown | zksync-era | `0xa478bf...2803ab` | ❓ Unverified |
| UnnamedContract | unknown | zksync-era | `0xa9e411...a8e100` | ❓ Unverified |
| UnnamedContract | unknown | zksync-era | `0xaab6e2...be50d3` | ❓ Unverified |
| UnnamedContract | unknown | zksync-era | `0xabca8c...21762f` | ❓ Unverified |
| UnnamedContract | unknown | zksync-era | `0xae3af5...a34783` | ❓ Unverified |
| UnnamedContract | unknown | zksync-era | `0xb392e1...097f50` | ❓ Unverified |
| UnnamedContract | unknown | zksync-era | `0xb71dca...f961e6` | ❓ Unverified |
| UnnamedContract | unknown | zksync-era | `0xb76f08...f66b0b` | ❓ Unverified |
| UnnamedContract | unknown | zksync-era | `0xc008dc...9c0269` | ❓ Unverified |
| UnnamedContract | unknown | zksync-era | `0xc824f2...103907` | ❓ Unverified |
| UnnamedContract | unknown | zksync-era | `0xc93397...1d5a59` | ❓ Unverified |
| UnnamedContract | unknown | zksync-era | `0xc9e2c1...756900` | ❓ Unverified |
| UnnamedContract | unknown | zksync-era | `0xcd6121...33946f` | ❓ Unverified |
| UnnamedContract | unknown | zksync-era | `0xce043a...a38fe5` | ❓ Unverified |
| UnnamedContract | unknown | zksync-era | `0xcf7c16...e5ff35` | ❓ Unverified |
| UnnamedContract | unknown | zksync-era | `0xdbe9b7...e5ba52` | ❓ Unverified |
| UnnamedContract | unknown | zksync-era | `0xf1802d...e6a821` | ❓ Unverified |
| UnnamedContract | unknown | zksync-era | `0xf560df...01e53e` | ❓ Unverified |
| UnnamedContract | unknown | zksync-era | `0xfe6b01...6a41b5` | ❓ Unverified |
| UnnamedContract | unknown | zksync-era | `0xff16ea...f5cf22` | ❓ Unverified |
| UnnamedContract | unknown | zksync-era | `0xffd6f2...2d38f7` | ❓ Unverified |
| UnnamedContract | unknown | zksync-era | `0xffdef4...3f069f` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [skynet.certik.com/projects/zkswap-finance](https://skynet.certik.com/projects/zkswap-finance) | CertiK | Audit | 2023-12 | stale | Direct | contract_name | 5 | high |
| [Farm.pdf](https://github.com/cyberscope-io/audits/blob/main/zkswap-finance/Farm.pdf) | unknown | Audit | 2024-01 | stale | Direct | n/a | 0 | n/a |
| [GovernanceStaking.pdf](https://github.com/cyberscope-io/audits/blob/main/zkswap-finance/GovernanceStaking.pdf) | unknown | Audit | 2024-01 | stale | Direct | contract_name | 5 | high |
| [audit.pdf](https://github.com/cyberscope-io/audits/blob/main/zkswap-finance/audit.pdf) | unknown | Audit | 2024-01 | stale | Direct | n/a | 0 | n/a |
| [ZKSWAP FINANCE AUDIT REPORT.pdf](https://github.com/Vital-block/Smart-Contract-Audit/blob/main/ZKSWAP%20FINANCE%20AUDIT%20REPORT.pdf) | unknown | Audit | 2023-06 | stale | Direct | contract_name | 5 | high |
| [**For more details:** [**Certik Audit Report**]()\](https://github.com/ZkSwapFinance/Audit-Reports/blob/main/0_%5BCertik%5D_zkSwap_Finance_Audit_Report.pdf) | CertiK | Audit | 2023-12 | stale | Direct | contract_name | 5 | high |
| [Bailsec Audit Report](https://github.com/bailsec/BailSec/blob/main/Bailsec%20-%20zkSwap%20Final%20Report%20Github%20(%2BResolution).pdf) | Bailsec | Audit | 2024-04 | stale | Direct | contract_name | 5 | high |
| [SmartContract_Audit_Solidproof_ZkSwapFinance.pdf](https://github.com/solidproof/projects/blob/main/2024/Zkswap%20Finance/SmartContract_Audit_Solidproof_ZkSwapFinance.pdf) | Solidproof | Audit | 2024-03 | stale | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| sonic | [`0x0edd6e...f6f5b3`](./contracts/sonic-146/0x0edd6eced51b0f0ee830d891ba230ac39ff6f5b3/) | AggregatorSmart | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x7f2038...2aac65`](./contracts/sonic-146/0x7f2038b9a6d80b34dc5ec66208bccfd9332aac65/) | AggregatorSmartV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0xaf02a2...d5533e`](./contracts/sonic-146/0xaf02a22ea072d8a7fc573935aea7152345d5533e/) | BulkSender | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0xbdd352...f6146f`](./contracts/sonic-146/0xbdd352f339e27e07089039ba80029f9135f6146f/) | LongOFT | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x2e1164...0094f5`](./contracts/sonic-146/0x2e11640ee1368f2cd90c36607760a274a30094f5/) | NonfungiblePositionManager | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x3a59bf...ca1caa`](./contracts/sonic-146/0x3a59bfe426f81726c31280aaeae1125f50ca1caa/) | QuoterV2 | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x783438...7ca5ac`](./contracts/sonic-146/0x7834387b0f48c0a2bf9c8fab696e2ab2587ca5ac/) | TickLens | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x3ebf33...00997f`](./contracts/sonic-146/0x3ebf331e045128d05ec374e90dd6448d4400997f/) | ZFOFT | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x66349d...2344fe`](./contracts/sonic-146/0x66349deb1eb7d855894bfde287ac68d0eb2344fe/) | ZFRewardDistributor | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x447fd2...b90c50`](./contracts/sonic-146/0x447fd2fab1985bb80b477cf186f216fc72b90c50/) | ZFStableSwapFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x5271d6...a1d04c`](./contracts/sonic-146/0x5271d6f66d4d881421fc2b1c48d4f99a9ba1d04c/) | ZFStableSwapLPFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0xc19a30...b06e37`](./contracts/sonic-146/0xc19a303f856847e60aeddfc5b773017110b06e37/) | ZFStableSwapThreePoolDeployer | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x734711...3b94aa`](./contracts/sonic-146/0x734711633ef2c9a2386be0ea1c010b06fb3b94aa/) | ZFStableSwapThreePoolInfo | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0xf43fc4...c28189`](./contracts/sonic-146/0xf43fc445204174ea98cf45b21504463d32c28189/) | ZFStableSwapTwoPoolDeployer | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x9829e4...0a7f6c`](./contracts/sonic-146/0x9829e43951319848e0a78540ff1de77ac20a7f6c/) | ZFStableSwapTwoPoolInfo | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x3e5239...0cb362`](./contracts/sonic-146/0x3e5239b8b19f2610769a7bcb5e9c876bf90cb362/) | ZFSwap2EarnRewarder | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x6d977f...8032a4`](./contracts/sonic-146/0x6d977fcc945261b80d128a5a91cbf9a9148032a4/) | ZFV3Factory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x0ff168...89eea2`](./contracts/sonic-146/0x0ff16867bcac3c5fdc2dc73558e3f8e2ed89eea2/) | ZFV3PoolDeployer | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 58 |
| upstream | 1 |
| standard_library | 6 |
| needs_review | 33 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 3
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=5
- Match method counts: extraction_exact=25

Zero-match audit list:

- [3153] Farm.pdf
- [3155] audit.pdf
- [3159] SmartContract_Audit_Solidproof_ZkSwapFinance.pdf

Fork inheritance lineage and inherited audits are included when available.
