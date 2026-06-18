# Agentic Audit Brief: Radiant

⚠️ Lifecycle status: DEAD - TVL dropped 42.5% over 90 days

## Project Overview

- Project: Radiant (`radiant`)
- Website: [https://radiant.capital/#/markets](https://radiant.capital/#/markets)
- Lifecycle: dead (Tier 1, dead)
- Generated: 2026-06-18T15:42:31.316Z
- Pipeline run: v2-pipeline-2026-06-18-32b207-4e21
- Chains: arbitrum, base, bsc, ethereum
- Contract surface: 60 unique implementations (170 raw deployments)
- DeFi Llama TVL: $1,879,209.00
- On-chain TVL (included contracts): $462,779.87
- TVL by chain: Arbitrum $459,506.60 | Base $3,273.27

## Project Description

Radiant is a cross-chain lending protocol that allows users to deposit assets to earn interest and borrow against them. It operates across multiple chains (Ethereum, BSC, Base, Arbitrum) and includes features like leveraged yield farming, staking, and governance.

### Architecture

The Lending family is the core, with Governance controlling its parameters and distributing incentives via ChefIncentivesController and MultiFeeDistribution. Leveraged Yield Farming extends Lending by using adapters to interact with external protocols, while Radiant V2 (RIZ) introduces isolated pools that share oracle and incentive infrastructure with the main lending system.

## Contract Surface Quality

- Indexed contracts: 1956; live-surface contracts included: 170 (144 live, 26 unknown).
- Excluded by liveness: 1308 inactive, 478 singleton, 0 uninitialized.
- Deployment units: 8/202 live.
- Detected codebases: aave-v2, uniswap-v2, uniswap-v3
- Unverified dependencies: 6/80.

## Audit Coverage Summary

- Verified implementations audited: 10/47 (21.3%)
- Verified + Unaudited implementations: 37
- Verified by bytecode match: 0
- Unverified implementations: 13
- Unique implementations: 60
- Raw deployments: 170
- Audits discovered: 94
- Scoreable audits (matched contracts): 7
- ASD (verified + unaudited TVL): $41,936.32
- Latest audit: 2026-02 (fresh)
- Staleness: 18 fresh, 11 aging, 11 stale, 54 unknown
- Tier 1 coverage: 14.9% (OpenZeppelin)
- Note: This protocol is classified as [dead]. ASD of $41,936.32 represents exposure in a protocol with dead activity.

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| OpenZeppelin | Tier 1 | 7 | 14.9% | 2024-07 |
| PeckShield | Tier 2 | 4 | 8.5% | 2023-03 |
| SourceHat | Tier 2 | 4 | 8.5% | 2022-05 |
| BlockSec | Tier 2 | 3 | 6.4% | 2025-08 |

## Contract Surface

### ✅ Verified + Audited (10)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| GLPStrategy | core_logic | arbitrum | n/a | 3 deployments: arbitrum [`0x43ea3e...6c6dc1`](./contracts/arbitrum-42161/0x43ea3e4bce7b4c6be61cee8aac475596ca6c6dc1/); arbitrum `0xb0ff86...a053d7`; arbitrum `0xf6e0fa...5b26a7` | ✅ Audited |
| GLPVault | core_logic | arbitrum | n/a | 3 deployments: arbitrum [`0x76b0d9...41f4b7`](./contracts/arbitrum-42161/0x76b0d99fd5f1314f30b4f609d0841fb3b741f4b7/); arbitrum `0xc0e823...d04078`; arbitrum `0xd75cbe...778999` | ✅ Audited |
| WETHGateway | token | base | n/a | 7 deployments: ethereum `0xf25103...250527`; bsc `0xd0fc69...258ac9`; base [`0x18baa3...18900a`](./contracts/base-8453/0x18baa31ba51c63b7d4eb4cb15870dddc8918900a/); arbitrum `0x534d48...aa15c0`; arbitrum `0x8a8f65...7dbd22`; arbitrum `0xbb5ca4...a817ce`; arbitrum `0xebf974...385e9a` | ✅ Audited |
| Leverager | unknown | bsc | n/a | [`0xa99c14...83d079`](./contracts/bsc-56/0xa99c142aeb2381a29924464a066089ee7a83d079/) | ✅ Audited |
| MasterChef | unknown | arbitrum | n/a | [`0xc963ef...28d010`](./contracts/arbitrum-42161/0xc963ef7d977ecb0ab71d835c4cb1bf737f28d010/) | ✅ Audited |
| Migration | operational_periphery | arbitrum | n/a | [`0x3f1b4d...7818f9`](./contracts/arbitrum-42161/0x3f1b4dae9c5cc45fcbadb14be6b2687f387818f9/) | ✅ Audited |
| MultiFeeDistribution | unknown | arbitrum | n/a | [`0xc2054a...455c13`](./contracts/arbitrum-42161/0xc2054a8c33bfce28de8af4af548c48915c455c13/) | ✅ Audited |
| OracleRouter | operational_periphery | arbitrum | n/a | 3 deployments: arbitrum [`0x44055d...61fa69`](./contracts/arbitrum-42161/0x44055d56ea210fccbd5c5dffeb3bf4da2f61fa69/); arbitrum `0x8e9554...827118`; arbitrum `0xb0de7e...183eb7` | ✅ Audited |
| RadiantOFT | unknown | ethereum | n/a | 4 deployments: ethereum [`0x137ddb...84f893`](./contracts/ethereum-1/0x137ddb47ee24eaa998a535ab00378d6bfa84f893/); bsc `0xf7de7e...1384df`; base `0xd722e5...3dc5d4`; arbitrum `0x3082cc...50aaa0` | ✅ Audited |
| RizLendingPoolAddressesProvider | core_logic | base | n/a | 15 deployments: bsc `0xbe7c10...4c0482`; bsc `0xe986b0...0eeaef`; bsc `0xf2e9dd...0e36c2`; base [`0x0496f4...e454ef`](./contracts/base-8453/0x0496f4c03e810b7f640437bc767f9b2209e454ef/); base `0x61cbce...139feb`; base `0x88d875...4cef5b`; base `0x902a27...5ec2fe`; base `0xfa5841...36204f`; arbitrum `0x35dcfe...6402c8`; arbitrum `0x368633...a4ad7f`; arbitrum `0x43c7f9...1441fe`; arbitrum `0x58a2d3...213a35`; arbitrum `0xc4da16...62b689`; arbitrum `0xd2dfe8...a822ba`; arbitrum `0xf4664e...3a104e` | ✅ Audited |

### ⚠️ Verified + Unaudited (37)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| RadiantToken | token | arbitrum | n/a | [`0x0c4681...d96017`](./contracts/arbitrum-42161/0x0c4681e6c0235179ec3d4f4fc4df3d14fdd96017/) | ⚠️ Unaudited |
| PullTokenWrapperAllowImmutable | token | base | n/a | 3 deployments: base [`0x3df35f...c03f3e`](./contracts/base-8453/0x3df35f98256104de38b7de3e21c41b386cc03f3e/); base `0x6ff492...f744e2`; base `0xa1a67b...4ad7aa` | ⚠️ Unaudited |
| RadiantLendingMarket | core_logic | arbitrum | n/a | 7 deployments: ethereum `0x636563...f973aa`; bsc `0xcdc0e0...8e645d`; base `0x5d6492...93dd66`; base `0xdffe96...d974eb`; base `0xfdfca0...8b1f54`; arbitrum [`0x41e558...67ae38`](./contracts/arbitrum-42161/0x41e5585496c6e43d9fd548b5f88fc2d90d67ae38/); arbitrum `0x7d19e0...4f86b8` | ⚠️ Unaudited |
| Yearn V3 Vault | core_logic | base | n/a | [`0x7bb8b0...8d6570`](./contracts/base-8453/0x7bb8b0b176199b3313642dde3421e38e548d6570/) | ⚠️ Unaudited |
| AdaptiveCurveIrm | unknown | bsc | n/a | 4 deployments: ethereum `0x63c5d4...daccc1`; bsc [`0x172e1f...c11b3f`](./contracts/bsc-56/0x172e1f86277c9e7e2ec175c6b3d1d47576c11b3f/); base `0xcd4b35...811b3a`; arbitrum `0xbf6120...33c703` | ⚠️ Unaudited |
| aeWETH | token | arbitrum | unit-38319 | [`0x82af49...3fbab1`](./contracts/arbitrum-42161/0x82af49447d8a07e3bd95bd0d56f35241523fbab1/) | ⚠️ Unaudited |
| Bridge | operational_periphery | ethereum | n/a | 2 deployments: ethereum [`0x296f55...cb3f97`](./contracts/ethereum-1/0x296f55f8fb28e498b858d0bcda06d955b2cb3f97/); arbitrum `0x352d82...beb3dd` | ⚠️ Unaudited |
| ChainlinkOracleV2Factory | operational_periphery | ethereum | n/a | 4 deployments: ethereum [`0x043fff...5d6d39`](./contracts/ethereum-1/0x043fff1bda86602652d3e3148d7ee0ef4e5d6d39/); bsc `0x735326...53816f`; base `0xfa59e2...30747e`; arbitrum `0x54ac95...1fb778` | ⚠️ Unaudited |
| Compounder | adapter | base | unit-38287 | [`0xb905f3...eabfb7`](./contracts/base-8453/0xb905f3c95576baa125c56e477d119db9f9eabfb7/) | ⚠️ Unaudited |
| Compounder | adapter | arbitrum | unit-38332 | [`0xb2c2c7...8f9610`](./contracts/arbitrum-42161/0xb2c2c72f57864baca7bda6bcb5965ab8f58f9610/) | ⚠️ Unaudited |
| DefaultReserveInterestRateStrategy | operational_periphery | ethereum | n/a | 11 deployments: ethereum [`0x2fca33...ce6b42`](./contracts/ethereum-1/0x2fca33f711cdc09e9ae016e625074b569ace6b42/); ethereum `0x56d01b...1c158d`; ethereum `0xa2178b...82c27c`; ethereum `0xc3720c...dd1403`; arbitrum `0x7c0c36...1e28c7`; arbitrum `0x7f34ba...2e782b`; arbitrum `0x884956...5738a5`; arbitrum `0x93a69d...b3ccde`; arbitrum `0xa47d30...f6627c`; arbitrum `0xd82108...d845d7`; arbitrum `0xfaee84...99080f` | ⚠️ Unaudited |
| DistributionCreator | unknown | base | n/a | 2 deployments: base [`0x7f9154...1d0725`](./contracts/base-8453/0x7f9154a1c81cf0739bc2ce402ee444da341d0725/); base `0xa6055d...2e2918` | ⚠️ Unaudited |
| Factory | registry | base | n/a | [`0xaf5191...ba2cd6`](./contracts/base-8453/0xaf5191b0de278c7286d6c7cc6ab6bb8a73ba2cd6/) | ⚠️ Unaudited |
| FixedRateIrm | unknown | ethereum | n/a | 7 deployments: ethereum [`0x533597...043b39`](./contracts/ethereum-1/0x533597ae474ccc102a5bc5a291b50874f7043b39/); bsc `0x784333...495174`; base `0xa3349c...1a0cb2`; base `0xfb4c97...215fe3`; base `0xfd239e...53b800`; arbitrum `0xad26ff...d13ca0`; arbitrum `0xcd34bf...836a3e` | ⚠️ Unaudited |
| GnosisSafe | governance | ethereum | unit-38202 | [`0xcd264f...47a8fb`](./contracts/ethereum-1/0xcd264f5d45e407770dec2975337716779e47a8fb/) | ⚠️ Unaudited |
| GnosisSafeL2 | governance | arbitrum | unit-38316 | [`0x750129...658497`](./contracts/arbitrum-42161/0x750129c21c7846cfe0ce2c966d84c0bca5658497/) | ⚠️ Unaudited |
| HypernativeModule | unknown | arbitrum | n/a | [`0x4405f3...f91036`](./contracts/arbitrum-42161/0x4405f3b660eb53c4d1ac04546ef30a7a6bf91036/) | ⚠️ Unaudited |
| InitializableImmutableAdminUpgradeabilityProxy | unknown | arbitrum | n/a | 28 deployments: ethereum `0x85f974...a9c9c7`; ethereum `0x8715d5...34cc3f`; ethereum `0x8bec00...7a8385`; ethereum `0xa9f391...719177`; ethereum `0xac1bbb...26ce98`; ethereum `0xb146da...00570e`; ethereum `0xb41bd9...8b657c`; ethereum `0xc8cbb4...b644a7`; ethereum `0xe491c1...730e5c`; ethereum `0xec8218...e052d9`; bsc `0x5cc832...aecf22`; bsc `0x7473d4...e3980f`; bsc `0x75ccd6...6b5c55`; bsc `0x94b6f7...496300`; base `0x7a2d83...5ba28a`; base `0xdd8ff0...42c4be`; arbitrum [`0x04f2a8...72fb95`](./contracts/arbitrum-42161/0x04f2a8f7fcc86cddcca89e1ea98f333cc072fb95/); arbitrum `0x1b103f...f4f416`; arbitrum `0x29adee...e64f01`; arbitrum `0x2b2b3d...35268f`; arbitrum `0x469be5...89e5f8`; arbitrum `0x60a60e...c7450d`; arbitrum `0x78587e...fb6eba`; arbitrum `0x7f9322...257b64`; arbitrum `0x7fa17f...37bce7`; arbitrum `0x97a786...ea285e`; arbitrum `0x9d4179...4ae87b`; arbitrum `0xcbb44d...02f183` | ⚠️ Unaudited |
| InverseWETHChainlinkAdapter | adapter | arbitrum | n/a | [`0x04bfea...686681`](./contracts/arbitrum-42161/0x04bfea605e8615ae42cb8d8fffad78f113686681/) | ⚠️ Unaudited |
| LPStaking | unknown | bsc | n/a | 5 deployments: ethereum `0xb0d502...31d62b`; bsc [`0x3052a0...6dab47`](./contracts/bsc-56/0x3052a0f6ab15b4ae1df39962d5ddefaca86dab47/); bsc `0x8731d5...e01e98`; arbitrum `0x8731d5...e01e98`; arbitrum `0xea8dfe...4c2176` | ⚠️ Unaudited |
| LPStakingTime | unknown | base | n/a | 5 deployments: ethereum `0x1c3000...3122fc`; bsc `0x18e087...3671f4`; bsc `0x447f20...d41f70`; base [`0x06eb48...92739c`](./contracts/base-8453/0x06eb48763f117c7be887296cdcdfad2e4092739c/); arbitrum `0x977455...0594b1` | ⚠️ Unaudited |
| Multicall3 | periphery | base | n/a | [`0xca11bd...76ca11`](./contracts/base-8453/0xca11bde05977b3631167028862be2a173976ca11/) | ⚠️ Unaudited |
| PancakePair | unknown | bsc | n/a | [`0x346575...5322e1`](./contracts/bsc-56/0x346575fc7f07e6994d76199e41d13dc1575322e1/) | ⚠️ Unaudited |
| PointToken | token | base | n/a | 5 deployments: base [`0x52ad00...5c447c`](./contracts/base-8453/0x52ad00bd0f6f52229478bf504e4939ba745c447c/); base `0x56ae0d...3f3847`; base `0x57e70a...9f761b`; base `0x5e0db2...df6e9e`; base `0x641582...240287` | ⚠️ Unaudited |
| Router | adapter | bsc | n/a | 5 deployments: ethereum `0x8731d5...e01e98`; bsc [`0x45a01e...2033cd`](./contracts/bsc-56/0x45a01e4e04f14f7a4a6702c74187c5f6222033cd/); bsc `0x4a364f...cf18d8`; base `0x45f1a9...4d263b`; arbitrum `0x53bf83...a41614` | ⚠️ Unaudited |
| RouterETH | adapter | ethereum | n/a | 3 deployments: ethereum [`0x150f94...cc2376`](./contracts/ethereum-1/0x150f94b44927f078737562f0fcf3c95c01cc2376/); base `0x50b6eb...0d7ae4`; arbitrum `0xbf22f0...d23e40` | ⚠️ Unaudited |
| StargateBorrowV2 | core_logic | ethereum | unit-38149 | [`0x07bac9...673712`](./contracts/ethereum-1/0x07bac9a0db5233794d3c3d9a6291288c28673712/) | ⚠️ Unaudited |
| StargateBorrowV2 | core_logic | bsc | unit-38238 | [`0xbf7d85...3e9ce9`](./contracts/bsc-56/0xbf7d856f51350847617fbb91bb987f7cac3e9ce9/) | ⚠️ Unaudited |
| StargateBorrowV2 | core_logic | base | unit-38271 | [`0x68a703...69c03c`](./contracts/base-8453/0x68a703683916e98133dfdd646e3f249a8169c03c/) | ⚠️ Unaudited |
| StargateBorrowV2 | core_logic | arbitrum | unit-38311 | [`0x326f40...59afad`](./contracts/arbitrum-42161/0x326f4071935308123725f91282af44473659afad/) | ⚠️ Unaudited |
| TimelockController | governance | arbitrum | n/a | [`0x27fc8f...2aff92`](./contracts/arbitrum-42161/0x27fc8f3be99e9799fa1b720d471647e6662aff92/) | ⚠️ Unaudited |
| UniswapV2Pair | unknown | arbitrum | n/a | [`0x24704a...46dafc`](./contracts/arbitrum-42161/0x24704aff49645d32655a76df6d407e02d146dafc/) | ⚠️ Unaudited |
| VotingEscrow | operational_periphery | ethereum | n/a | 3 deployments: ethereum [`0x0e42ac...fbd58e`](./contracts/ethereum-1/0x0e42acbd23faee03249daff896b78d7e79fbd58e/); bsc `0xd48888...bda26d`; arbitrum `0xfbd849...660268` | ⚠️ Unaudited |
| WBNB | unknown | bsc | n/a | [`0xbb4cdb...bc095c`](./contracts/bsc-56/0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c/) | ⚠️ Unaudited |
| WeightedPool | core_logic | arbitrum | n/a | 2 deployments: ethereum `0xcf7b51...a1d52a`; arbitrum [`0x32df62...165841`](./contracts/arbitrum-42161/0x32df62dc3aed2cd6224193052ce665dc18165841/) | ⚠️ Unaudited |
| WETH9 | token | base | n/a | 2 deployments: ethereum `0xc02aaa...756cc2`; base [`0x420000...000006`](./contracts/base-8453/0x4200000000000000000000000000000000000006/) | ⚠️ Unaudited |
| WhitelistAuction | unknown | ethereum | n/a | [`0x4dfcad...65e55e`](./contracts/ethereum-1/0x4dfcad285ef39fed84e77edf1b7dbc442565e55e/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (13)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | bsc | n/a | `0xaf5191...ba2cd6` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x224d8f...277f03` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x459fc5...eaf91b` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x8731d5...e01e98` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xb0d502...31d62b` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x294baa...71c3a0` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x31b8fd...845ff5` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x6561ee...727264` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x84fb77...02bc91` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x85f21c...5abeb0` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xaf5191...ba2cd6` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xcde9fd...552e6d` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xed1678...914072` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [DL audit link](https://sourcehat.com/audits/RadiantProtocol) | SourceHat | Audit | 2022-05 | stale | Direct | contract_name | 10 | high |
| [here](https://www.openzeppelin.com/news/radiant-riz-audit) | OpenZeppelin | Audit | 2024-07 | aging | Direct | contract_name | 18 | high |
| [Zokyo](https://github.com/zokyo-sec/audit-reports/blob/main/Radiant/Radiant%20Capital%20audit%20report_06_March.pdf) | OpenZeppelin | Audit | n/a | unknown | Direct | contract_name | 7 | high |
| [BlockSec](https://github.com/blocksecteam/audit-reports/blob/main/solidity/blocksec_radiant_v2.0.pdf) | OpenZeppelin | Audit | 2023-03 | stale | Direct | contract_name | 10 | high |
| [{% embed url="<>" %}](https://github.com/peckshield/publications/blob/master/audit_reports/PeckShield-Audit-Report-Radiant-v1.0.pdf) | PeckShield | Audit | 2022-07 | stale | Direct | contract_name | 9 | medium |
| [PeckShield-Audit-Report-RadiantV2-v1.0.pdf](https://github.com/peckshield/publications/blob/master/audit_reports/PeckShield-Audit-Report-RadiantV2-v1.0.pdf) | PeckShield | Audit | 2023-03 | stale | Direct | contract_name | 5 | high |
| [blocksec_radiant_glp_v1.0-signed.pdf](https://github.com/blocksecteam/audit-reports/blob/main/solidity/blocksec_radiant_glp_v1.0-signed.pdf) | BlockSec | Audit | 2025-08 | fresh | Direct | contract_name | 9 | high |
| [DVN-OtterSec-12SEPT2023.pdf (also discovered via alternate URL)](https://github.com/LayerZero-Labs/Audits/blob/main/audits/DVN/DVN-OtterSec-12SEPT2023.pdf) | OtterSec | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [DVN-Paladin-26AUG2023.pdf (also discovered via alternate URL)](https://github.com/LayerZero-Labs/Audits/blob/main/audits/DVN/DVN-Paladin-26AUG2023.pdf) | Paladin | Audit | 2023-08 | stale | Direct | n/a | 0 | n/a |
| [DVN-Zellic-25AUG2023.pdf (also discovered via alternate URL)](https://github.com/LayerZero-Labs/Audits/blob/main/audits/DVN/DVN-Zellic-25AUG2023.pdf) | Zellic | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [DVN1.0-Zellic-14MAR2024.pdf (also discovered via alternate URL)](https://github.com/LayerZero-Labs/Audits/blob/main/audits/DVN/DVN1.0-Zellic-14MAR2024.pdf) | Zellic | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [Gasolina-OtterSec-10DEC2025.pdf](https://github.com/LayerZero-Labs/Audits/blob/main/audits/DVN/Gasolina/Gasolina-OtterSec-10DEC2025.pdf) | OtterSec | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [LZ_EigenLayer DVN_Ottersec_Sep-18-25.pdf](https://github.com/LayerZero-Labs/Audits/blob/main/audits/DVN/LZ%20EigenLayer%20DVN/LZ_EigenLayer%20DVN_Ottersec_Sep-18-25.pdf) | Ottersec | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [LZ_EigenLayer DVN_Zellic_Sep-25-25.pdf](https://github.com/LayerZero-Labs/Audits/blob/main/audits/DVN/LZ%20EigenLayer%20DVN/LZ_EigenLayer%20DVN_Zellic_Sep-25-25.pdf) | Zellic | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [EndpointV1-Ackee-15MAR2022.pdf](https://github.com/LayerZero-Labs/Audits/blob/main/audits/Endpoint%20V1%20-%20EVM/EndpointV1/EndpointV1-Ackee-15MAR2022.pdf) | Ackee Blockchain | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [EndpointV1-Certora-28JUL2022.pdf](https://github.com/LayerZero-Labs/Audits/blob/main/audits/Endpoint%20V1%20-%20EVM/EndpointV1/EndpointV1-Certora-28JUL2022.pdf) | Certora | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [EndpointV1-SlowMist-15MAR2022Audit.pdf](https://github.com/LayerZero-Labs/Audits/blob/main/audits/Endpoint%20V1%20-%20EVM/EndpointV1/EndpointV1-SlowMist-15MAR2022Audit.pdf) | SlowMist | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [EndpointV1-Zellic-03JUN2022.pdf](https://github.com/LayerZero-Labs/Audits/blob/main/audits/Endpoint%20V1%20-%20EVM/EndpointV1/EndpointV1-Zellic-03JUN2022.pdf) | Zellic | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [EndpointV1-Zokyo-22OCT2021.pdf](https://github.com/LayerZero-Labs/Audits/blob/main/audits/Endpoint%20V1%20-%20EVM/EndpointV1/EndpointV1-Zokyo-22OCT2021.pdf) | Zokyo | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [EndpointV1-proof-lib-Ackee-11MAR2022.pdf](https://github.com/LayerZero-Labs/Audits/blob/main/audits/Endpoint%20V1%20-%20EVM/EndpointV1/EndpointV1-proof-lib-Ackee-11MAR2022.pdf) | Ackee Blockchain | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [UltraLightNodeV2Radar-Zellic-22NOV2022.pdf](https://github.com/LayerZero-Labs/Audits/blob/main/audits/Endpoint%20V1%20-%20EVM/EndpointV1/UltraLightNodeV2Radar-Zellic-22NOV2022.pdf) | Zellic | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [OmnichainGovernanceExecutor-Paladin-30MAR2023.pdf](https://github.com/LayerZero-Labs/Audits/blob/main/audits/Endpoint%20V1%20-%20EVM/V1%20Omnichain%20Governance/OmnichainGovernanceExecutor-Paladin-30MAR2023.pdf) | Paladin | Audit | 2023-03 | stale | Direct | n/a | 0 | n/a |
| [OmnichainGovernanceExecutor-Zellic-20MAR2023.pdf](https://github.com/LayerZero-Labs/Audits/blob/main/audits/Endpoint%20V1%20-%20EVM/V1%20Omnichain%20Governance/OmnichainGovernanceExecutor-Zellic-20MAR2023.pdf) | Zellic | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [LzApp&Token-Ackee-03MAY2022.pdf](https://github.com/LayerZero-Labs/Audits/blob/main/audits/Endpoint%20V1%20-%20EVM/V1%20Solidity%20Examples/LzApp%26Token-Ackee-03MAY2022.pdf) | Ackee Blockchain | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [NativeOFTV2-Zellic-16JUN2023.pdf](https://github.com/LayerZero-Labs/Audits/blob/main/audits/Endpoint%20V1%20-%20EVM/V1%20Solidity%20Examples/NativeOFTV2-Zellic-16JUN2023.pdf) | Zellic | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [NativeOFTWithFee-Zellic-30JUN2023.pdf](https://github.com/LayerZero-Labs/Audits/blob/main/audits/Endpoint%20V1%20-%20EVM/V1%20Solidity%20Examples/NativeOFTWithFee-Zellic-30JUN2023.pdf) | Zellic | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [SolidityExample-Ackee-27JUL2022.pdf](https://github.com/LayerZero-Labs/Audits/blob/main/audits/Endpoint%20V1%20-%20EVM/V1%20Solidity%20Examples/SolidityExample-Ackee-27JUL2022.pdf) | Ackee Blockchain | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [SolidityExamples-Ackee-10OCT2022.pdf](https://github.com/LayerZero-Labs/Audits/blob/main/audits/Endpoint%20V1%20-%20EVM/V1%20Solidity%20Examples/SolidityExamples-Ackee-10OCT2022.pdf) | Ackee Blockchain | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [SolidityExamples-Ackee-14NOV2022.pdf](https://github.com/LayerZero-Labs/Audits/blob/main/audits/Endpoint%20V1%20-%20EVM/V1%20Solidity%20Examples/SolidityExamples-Ackee-14NOV2022.pdf) | Ackee Blockchain | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [SolidityExamples-Ottersec-21MAR2023.pdf](https://github.com/LayerZero-Labs/Audits/blob/main/audits/Endpoint%20V1%20-%20EVM/V1%20Solidity%20Examples/SolidityExamples-Ottersec-21MAR2023.pdf) | Ottersec | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [SolidityExamples-Ottersec-24JAN2023.pdf](https://github.com/LayerZero-Labs/Audits/blob/main/audits/Endpoint%20V1%20-%20EVM/V1%20Solidity%20Examples/SolidityExamples-Ottersec-24JAN2023.pdf) | Ottersec | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [SolidityExamples-Ottersec-27APR2023.pdf](https://github.com/LayerZero-Labs/Audits/blob/main/audits/Endpoint%20V1%20-%20EVM/V1%20Solidity%20Examples/SolidityExamples-Ottersec-27APR2023.pdf) | Ottersec | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [SolidityExamples-Zellic-21MAY2022.pdf](https://github.com/LayerZero-Labs/Audits/blob/main/audits/Endpoint%20V1%20-%20EVM/V1%20Solidity%20Examples/SolidityExamples-Zellic-21MAY2022.pdf) | Zellic | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [SolidityExamplesNativeProxy-Ackee-08AUG2022.pdf](https://github.com/LayerZero-Labs/Audits/blob/main/audits/Endpoint%20V1%20-%20EVM/V1%20Solidity%20Examples/SolidityExamplesNativeProxy-Ackee-08AUG2022.pdf) | Ackee Blockchain | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [SolidityExamplesONFT-Zellic-19JAN2023.pdf](https://github.com/LayerZero-Labs/Audits/blob/main/audits/Endpoint%20V1%20-%20EVM/V1%20Solidity%20Examples/SolidityExamplesONFT-Zellic-19JAN2023.pdf) | Zellic | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [AptosBridge-Ottersec-30SEPT2022.pdf](https://github.com/LayerZero-Labs/Audits/blob/main/audits/Endpoint%20V1%20-%20EVM/V1%20Wrapped%20Asset%20Bridge/AptosBridge-Ottersec-30SEPT2022.pdf) | Ottersec | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [WrappedAssetBridge-Zellic-28FEB2023.pdf](https://github.com/LayerZero-Labs/Audits/blob/main/audits/Endpoint%20V1%20-%20EVM/V1%20Wrapped%20Asset%20Bridge/WrappedAssetBridge-Zellic-28FEB2023.pdf) | Zellic | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [WrappedAssetBridgeV2-Hexens-AUG2024.pdf](https://github.com/LayerZero-Labs/Audits/blob/main/audits/Endpoint%20V1%20-%20EVM/V1%20Wrapped%20Asset%20Bridge/WrappedAssetBridgeV2-Hexens-AUG2024.pdf) | Hexens | Audit | 2024-08 | aging | Direct | n/a | 0 | n/a |
| [WrappedAssetBridgeV2-Ottersec-09SEPT2024.pdf](https://github.com/LayerZero-Labs/Audits/blob/main/audits/Endpoint%20V1%20-%20EVM/V1%20Wrapped%20Asset%20Bridge/WrappedAssetBridgeV2-Ottersec-09SEPT2024.pdf) | Ottersec | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [LZ-Aptos-EP-V2_OtterSec_29-Jan-2025.pdf](https://github.com/LayerZero-Labs/Audits/blob/main/audits/Endpoint%20V2%20-%20Aptos/LZ-Aptos-EP-V2_OtterSec_29-Jan-2025.pdf) | OtterSec | Audit | 2025-01 | aging | Direct | n/a | 0 | n/a |
| [LZ-Aptos-EP-V2_Paladin_14-Jan-2025.pdf](https://github.com/LayerZero-Labs/Audits/blob/main/audits/Endpoint%20V2%20-%20Aptos/LZ-Aptos-EP-V2_Paladin_14-Jan-2025.pdf) | Paladin | Audit | 2025-01 | aging | Direct | n/a | 0 | n/a |
| [EndpointV2-Blockian-13DEC2023.pdf](https://github.com/LayerZero-Labs/Audits/blob/main/audits/Endpoint%20V2%20-%20EVM/EndpointV2/EndpointV2-Blockian-13DEC2023.pdf) | Blockian | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [EndpointV2-CMichel-13DEC2023.pdf](https://github.com/LayerZero-Labs/Audits/blob/main/audits/Endpoint%20V2%20-%20EVM/EndpointV2/EndpointV2-CMichel-13DEC2023.pdf) | CMichel | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [EndpointV2-Certora-DEDC2023.pdf](https://github.com/LayerZero-Labs/Audits/blob/main/audits/Endpoint%20V2%20-%20EVM/EndpointV2/EndpointV2-Certora-DEDC2023.pdf) | Certora | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [EndpointV2-Ottersec 14DEC2023.pdf](https://github.com/LayerZero-Labs/Audits/blob/main/audits/Endpoint%20V2%20-%20EVM/EndpointV2/EndpointV2-Ottersec%2014DEC2023.pdf) | Ottersec | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [EndpointV2-Paladin-15DEC2023.pdf](https://github.com/LayerZero-Labs/Audits/blob/main/audits/Endpoint%20V2%20-%20EVM/EndpointV2/EndpointV2-Paladin-15DEC2023.pdf) | Paladin | Audit | 2023-12 | stale | Direct | n/a | 0 | n/a |
| [EndpointV2-Windhustler-15DEC2023.pdf](https://github.com/LayerZero-Labs/Audits/blob/main/audits/Endpoint%20V2%20-%20EVM/EndpointV2/EndpointV2-Windhustler-15DEC2023.pdf) | Windhustler | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [EndpointV2-Zellic-13DEC2023.pdf](https://github.com/LayerZero-Labs/Audits/blob/main/audits/Endpoint%20V2%20-%20EVM/EndpointV2/EndpointV2-Zellic-13DEC2023.pdf) | Zellic | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [EndpointV2Alt-Support_OtterSec_Feb-6-2026.pdf (also discovered via alternate URL)](https://github.com/LayerZero-Labs/Audits/blob/main/audits/Endpoint%20V2%20-%20EVM/EndpointV2Alt/EndpointV2Alt-Support_OtterSec_Feb-6-2026.pdf) | OtterSec | Audit | 2026 | fresh | Direct | n/a | 0 | n/a |
| [EndpointV2Alt-Support_Paladin_Feb-6-2026.pdf (also discovered via alternate URL)](https://github.com/LayerZero-Labs/Audits/blob/main/audits/Endpoint%20V2%20-%20EVM/EndpointV2Alt/EndpointV2Alt-Support_Paladin_Feb-6-2026.pdf) | Paladin | Audit | 2026 | fresh | Direct | n/a | 0 | n/a |
| [LZ-IOTA-EP-V2_OtterSec_28-Oct-2025.pdf](https://github.com/LayerZero-Labs/Audits/blob/main/audits/Endpoint%20V2%20-%20IOTA%20L1/LZ-IOTA-EP-V2_OtterSec_28-Oct-2025.pdf) | OtterSec | Audit | 2025-10 | fresh | Direct | n/a | 0 | n/a |
| [LZ-Receive-Types_OtterSec_July-12-2025.pdf](https://github.com/LayerZero-Labs/Audits/blob/main/audits/Endpoint%20V2%20-%20Solana/LZ-Receive-Types_OtterSec_July-12-2025.pdf) | OtterSec | Audit | 2025 | aging | Direct | n/a | 0 | n/a |
| [SolanaEndPoint-Pashov-28MAY2024.pdf](https://github.com/LayerZero-Labs/Audits/blob/main/audits/Endpoint%20V2%20-%20Solana/SolanaEndPoint-Pashov-28MAY2024.pdf) | Pashov Audit Group | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [SolanaEndpoint-Halborn-24MAY2024.pdf](https://github.com/LayerZero-Labs/Audits/blob/main/audits/Endpoint%20V2%20-%20Solana/SolanaEndpoint-Halborn-24MAY2024.pdf) | Halborn | Audit | 2024 | stale | Direct | n/a | 0 | n/a |
| [SolanaEndpoint-OAPP-Zellic-23JUL2024.pdf](https://github.com/LayerZero-Labs/Audits/blob/main/audits/Endpoint%20V2%20-%20Solana/SolanaEndpoint-OAPP-Zellic-23JUL2024.pdf) | Zellic | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [SolanaEndpoint-Ottersec-07JUN2024.pdf](https://github.com/LayerZero-Labs/Audits/blob/main/audits/Endpoint%20V2%20-%20Solana/SolanaEndpoint-Ottersec-07JUN2024.pdf) | Ottersec | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [LZ-V2_Starknet_OtterSec_22_Dec_2025.pdf](https://github.com/LayerZero-Labs/Audits/blob/main/audits/Endpoint%20V2%20-%20Starknet/LZ-V2_Starknet_OtterSec_22_Dec_2025.pdf) | OtterSec | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [LZ-V2_Starknet_Zellic_30_Sept_2025.pdf](https://github.com/LayerZero-Labs/Audits/blob/main/audits/Endpoint%20V2%20-%20Starknet/LZ-V2_Starknet_Zellic_30_Sept_2025.pdf) | Zellic | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [LZ-SUI-EP-V2_OtterSec_01-Sept-2025.pdf](https://github.com/LayerZero-Labs/Audits/blob/main/audits/Endpoint%20V2%20-%20Sui/LZ-SUI-EP-V2_OtterSec_01-Sept-2025.pdf) | OtterSec | Audit | 2025-09 | fresh | Direct | n/a | 0 | n/a |
| [LZ-SUI-EP-V2_Paladin_07-Oct-2025.pdf](https://github.com/LayerZero-Labs/Audits/blob/main/audits/Endpoint%20V2%20-%20Sui/LZ-SUI-EP-V2_Paladin_07-Oct-2025.pdf) | Paladin | Audit | 2025-10 | fresh | Direct | n/a | 0 | n/a |
| [LZ-Endpoint-Dollar-UNH-IOL_Feb-6-2026.pdf](https://github.com/LayerZero-Labs/Audits/blob/main/audits/EndpointV2Alt%20Supports/LZ%20Endpoint%20Dollar/LZ-Endpoint-Dollar-UNH-IOL_Feb-6-2026.pdf) | UNH-IOL | Audit | 2026 | fresh | Direct | n/a | 0 | n/a |
| [LZ-Endpoint-Dollar_OtterSec_Feb-1-2026.pdf](https://github.com/LayerZero-Labs/Audits/blob/main/audits/EndpointV2Alt%20Supports/LZ%20Endpoint%20Dollar/LZ-Endpoint-Dollar_OtterSec_Feb-1-2026.pdf) | OtterSec | Audit | 2026 | fresh | Direct | n/a | 0 | n/a |
| [TempoOFTWrapper-OtterSec-16Feb2026.pdf](https://github.com/LayerZero-Labs/Audits/blob/main/audits/EndpointV2Alt%20Supports/TempoOFTWrapper/TempoOFTWrapper-OtterSec-16Feb2026.pdf) | OtterSec | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [TempoOFTWrapper-Paladin-10Feb2026.pdf](https://github.com/LayerZero-Labs/Audits/blob/main/audits/EndpointV2Alt%20Supports/TempoOFTWrapper/TempoOFTWrapper-Paladin-10Feb2026.pdf) | Paladin | Audit | 2026-02 | fresh | Direct | n/a | 0 | n/a |
| [HyperLiquid_Composer-Paladin-9MAY2025.pdf](https://github.com/LayerZero-Labs/Audits/blob/main/audits/HyperLiquid%20Composer/HyperLiquid_Composer-Paladin-9MAY2025.pdf) | Paladin | Audit | 2025-04 | aging | Direct | n/a | 0 | n/a |
| [LZ-HyperLiquid-Composer_OtterSec_04-Aug-2025.pdf](https://github.com/LayerZero-Labs/Audits/blob/main/audits/HyperLiquid%20Composer/LZ-HyperLiquid-Composer_OtterSec_04-Aug-2025.pdf) | OtterSec | Audit | 2025-08 | fresh | Direct | n/a | 0 | n/a |
| [LZ-HyperLiquid-Fee-Activation_Paladin_13-Nov-2025.pdf](https://github.com/LayerZero-Labs/Audits/blob/main/audits/HyperLiquid%20Composer/LZ-HyperLiquid-Fee-Activation_Paladin_13-Nov-2025.pdf) | Paladin | Audit | 2025-11 | fresh | Direct | n/a | 0 | n/a |
| [LZ-Multicall_OtterSec_Dec-30th-2025.pdf](https://github.com/LayerZero-Labs/Audits/blob/main/audits/LZ%20Multicall/LZ-Multicall_OtterSec_Dec-30th-2025.pdf) | OtterSec | Audit | 2025 | aging | Direct | n/a | 0 | n/a |
| [LZ-Multicall_Paladin_Jan-16th-2026.pdf](https://github.com/LayerZero-Labs/Audits/blob/main/audits/LZ%20Multicall/LZ-Multicall_Paladin_Jan-16th-2026.pdf) | Paladin | Audit | 2026 | fresh | Direct | n/a | 0 | n/a |
| [LZ-Multicall_UNH-IOL_Jan-13th-2026.pdf](https://github.com/LayerZero-Labs/Audits/blob/main/audits/LZ%20Multicall/LZ-Multicall_UNH-IOL_Jan-13th-2026.pdf) | UNH-IOL | Audit | 2026 | fresh | Direct | n/a | 0 | n/a |
| [LZ-OApp&OFT_Zellic_Sep-23-2025.pdf](https://github.com/LayerZero-Labs/Audits/blob/main/audits/OApp/OApp%20EVM/LZ-OApp%26OFT_Zellic_Sep-23-2025.pdf) | Zellic | Audit | 2025 | aging | Direct | n/a | 0 | n/a |
| [OApp&OFT-Zellic-12JUN2024.pdf](https://github.com/LayerZero-Labs/Audits/blob/main/audits/OApp/OApp%20EVM/OApp%26OFT-Zellic-12JUN2024.pdf) | Zellic | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [OFT-OAPP-ChainSecurity-30JAN2024.pdf](https://github.com/LayerZero-Labs/Audits/blob/main/audits/OApp/OApp%20EVM/OFT-OAPP-ChainSecurity-30JAN2024.pdf) | ChainSecurity | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [UpgradeableOapp&OFT-Hexens-01NOV2024.pdf](https://github.com/LayerZero-Labs/Audits/blob/main/audits/OApp/OApp%20EVM/UpgradeableOapp%26OFT-Hexens-01NOV2024.pdf) | Hexens | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [Solana-Example-Review_Zellic_Dec-17-2025.pdf](https://github.com/LayerZero-Labs/Audits/blob/main/audits/OApp/OApp%20Solana/Solana-Example-Review_Zellic_Dec-17-2025.pdf) | Zellic | Audit | 2025 | aging | Direct | n/a | 0 | n/a |
| [Solana-OApp-ExampleString-Passing-_Zellic_Jun-06-2025.pdf](https://github.com/LayerZero-Labs/Audits/blob/main/audits/OApp/OApp%20Solana/Solana-OApp-ExampleString-Passing-_Zellic_Jun-06-2025.pdf) | Zellic | Audit | 2025 | aging | Direct | n/a | 0 | n/a |
| [TON_OFT-Ottersec-23May2025.pdf](https://github.com/LayerZero-Labs/Audits/blob/main/audits/OFT/OFT%20TON/TON_OFT-Ottersec-23May2025.pdf) | Ottersec | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [TON_OFT-Zellic-19May2025.pdf](https://github.com/LayerZero-Labs/Audits/blob/main/audits/OFT/OFT%20TON/TON_OFT-Zellic-19May2025.pdf) | Zellic | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [RateLimiter-Hexens-MAY2024.pdf](https://github.com/LayerZero-Labs/Audits/blob/main/audits/OFT/RateLimiter/RateLimiter-Hexens-MAY2024.pdf) | Hexens | Audit | 2024-05 | stale | Direct | n/a | 0 | n/a |
| [RateLimiterFlows-Hexens-OCT2024oct24 (1).pdf](https://github.com/LayerZero-Labs/Audits/blob/main/audits/OFT/RateLimiter/RateLimiterFlows-Hexens-OCT2024oct24%20(1).pdf) | Hexens | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [RateLimiterFlows-Pashov-20SEPT2024.pdf](https://github.com/LayerZero-Labs/Audits/blob/main/audits/OFT/RateLimiter/RateLimiterFlows-Pashov-20SEPT2024.pdf) | Pashov Audit Group | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [ONFT721_Paladin_10AUG2024.pdf](https://github.com/LayerZero-Labs/Audits/blob/main/audits/ONFT/ONFT721_Paladin_10AUG2024.pdf) | Paladin | Audit | 2024-08 | aging | Direct | n/a | 0 | n/a |
| [LZ_OVault-Composer_Paladin_Oct-23-25.pdf](https://github.com/LayerZero-Labs/Audits/blob/main/audits/Ovault/LZ_OVault-Composer_Paladin_Oct-23-25.pdf) | Paladin | Audit | 2025-10 | fresh | Direct | n/a | 0 | n/a |
| [LZ_OVault-Yield.xyz_19-Nov-25.pdf](https://github.com/LayerZero-Labs/Audits/blob/main/audits/Ovault/LZ_OVault-Yield.xyz_19-Nov-25.pdf) | Yield.xyz | Audit | 2025-11 | fresh | Direct | n/a | 0 | n/a |
| [LZ_OVault_Ottersec_Jul-16-25.pdf](https://github.com/LayerZero-Labs/Audits/blob/main/audits/Ovault/LZ_OVault_Ottersec_Jul-16-25.pdf) | Ottersec | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [LZ_OVault_Paladin_Aug-06-25.pdf](https://github.com/LayerZero-Labs/Audits/blob/main/audits/Ovault/LZ_OVault_Paladin_Aug-06-25.pdf) | Paladin | Audit | 2025-08 | fresh | Direct | n/a | 0 | n/a |
| [AptosZROAirdrop-Paladin-17JUN2024.pdf](https://github.com/LayerZero-Labs/Audits/blob/main/audits/ZRO/Aptos%20ZRO%20Airdrop/AptosZROAirdrop-Paladin-17JUN2024.pdf) | Paladin | Audit | 2024-06 | stale | Direct | n/a | 0 | n/a |
| [ZROClaim-Paladin-18JUN2024.pdf](https://github.com/LayerZero-Labs/Audits/blob/main/audits/ZRO/ZRO%20Claim/ZROClaim-Paladin-18JUN2024.pdf) | Paladin | Audit | 2024-06 | stale | Direct | n/a | 0 | n/a |
| [ZROClaim-Pashov-17JUN2024.pdf](https://github.com/LayerZero-Labs/Audits/blob/main/audits/ZRO/ZRO%20Claim/ZROClaim-Pashov-17JUN2024.pdf) | Pashov Audit Group | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [ZROclaim-hexens-23JUN2024.pdf](https://github.com/LayerZero-Labs/Audits/blob/main/audits/ZRO/ZRO%20Claim/ZROclaim-hexens-23JUN2024.pdf) | Hexens | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [VeDistributor_Paladin_09-Sep-2025.pdf](https://github.com/LayerZero-Labs/Audits/blob/main/audits/ZRO/veDistributor/VeDistributor_Paladin_09-Sep-2025.pdf) | Paladin | Audit | 2025-09 | fresh | Direct | n/a | 0 | n/a |
| [VeDistributor_Zellic_08-Sep-2025.pdf](https://github.com/LayerZero-Labs/Audits/blob/main/audits/ZRO/veDistributor/VeDistributor_Zellic_08-Sep-2025.pdf) | Zellic | Audit | 2025-09 | fresh | Direct | n/a | 0 | n/a |
| [lzRead-Paladin-25OCT2024.pdf](https://github.com/LayerZero-Labs/Audits/blob/main/audits/lzRead/lzRead-Paladin-25OCT2024.pdf) | Paladin | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [lzRead-Sec3-12NOV2024.pdf](https://github.com/LayerZero-Labs/Audits/blob/main/audits/lzRead/lzRead-Sec3-12NOV2024.pdf) | Sec3 | Audit | n/a | unknown | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| arbitrum | [`0x0c4681...d96017`](./contracts/arbitrum-42161/0x0c4681e6c0235179ec3d4f4fc4df3d14fdd96017/) | RadiantToken | token | $37,225.75 | Verified native implementation with $37,225.75 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x3df35f...c03f3e`](./contracts/base-8453/0x3df35f98256104de38b7de3e21c41b386cc03f3e/) | PullTokenWrapperAllowImmutable | token | $2,789.19 | Verified native implementation with $2,789.19 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x41e558...67ae38`](./contracts/arbitrum-42161/0x41e5585496c6e43d9fd548b5f88fc2d90d67ae38/) | RadiantLendingMarket | core_logic | $1,734.29 | Verified native implementation with $1,734.29 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x172e1f...c11b3f`](./contracts/bsc-56/0x172e1f86277c9e7e2ec175c6b3d1d47576c11b3f/) | AdaptiveCurveIrm | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x296f55...cb3f97`](./contracts/ethereum-1/0x296f55f8fb28e498b858d0bcda06d955b2cb3f97/) | Bridge | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x2fca33...ce6b42`](./contracts/ethereum-1/0x2fca33f711cdc09e9ae016e625074b569ace6b42/) | DefaultReserveInterestRateStrategy | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x7f9154...1d0725`](./contracts/base-8453/0x7f9154a1c81cf0739bc2ce402ee444da341d0725/) | DistributionCreator | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0xaf5191...ba2cd6`](./contracts/base-8453/0xaf5191b0de278c7286d6c7cc6ab6bb8a73ba2cd6/) | Factory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x533597...043b39`](./contracts/ethereum-1/0x533597ae474ccc102a5bc5a291b50874f7043b39/) | FixedRateIrm | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x04f2a8...72fb95`](./contracts/arbitrum-42161/0x04f2a8f7fcc86cddcca89e1ea98f333cc072fb95/) | InitializableImmutableAdminUpgradeabilityProxy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x3052a0...6dab47`](./contracts/bsc-56/0x3052a0f6ab15b4ae1df39962d5ddefaca86dab47/) | LPStaking | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x06eb48...92739c`](./contracts/base-8453/0x06eb48763f117c7be887296cdcdfad2e4092739c/) | LPStakingTime | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x52ad00...5c447c`](./contracts/base-8453/0x52ad00bd0f6f52229478bf504e4939ba745c447c/) | PointToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x45a01e...2033cd`](./contracts/bsc-56/0x45a01e4e04f14f7a4a6702c74187c5f6222033cd/) | Router | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x150f94...cc2376`](./contracts/ethereum-1/0x150f94b44927f078737562f0fcf3c95c01cc2376/) | RouterETH | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0e42ac...fbd58e`](./contracts/ethereum-1/0x0e42acbd23faee03249daff896b78d7e79fbd58e/) | VotingEscrow | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x4dfcad...65e55e`](./contracts/ethereum-1/0x4dfcad285ef39fed84e77edf1b7dbc442565e55e/) | WhitelistAuction | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 29 |
| upstream | 7 |
| standard_library | 8 |
| needs_review | 16 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 87
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=6, medium=1
- Match method counts: extraction_exact=1991

Zero-match audit list:

- [3734] DVN-OtterSec-12SEPT2023.pdf
- [3735] DVN-Paladin-26AUG2023.pdf
- [3736] DVN-Zellic-25AUG2023.pdf
- [3737] DVN1.0-Zellic-14MAR2024.pdf
- [3738] Gasolina-OtterSec-10DEC2025.pdf
- [3739] LZ_EigenLayer DVN_Ottersec_Sep-18-25.pdf
- [3740] LZ_EigenLayer DVN_Zellic_Sep-25-25.pdf
- [3741] EndpointV1-Ackee-15MAR2022.pdf
- [3742] EndpointV1-Certora-28JUL2022.pdf
- [3743] EndpointV1-SlowMist-15MAR2022Audit.pdf
- [3744] EndpointV1-Zellic-03JUN2022.pdf
- [3745] EndpointV1-Zokyo-22OCT2021.pdf
- [3746] EndpointV1-proof-lib-Ackee-11MAR2022.pdf
- [3747] UltraLightNodeV2Radar-Zellic-22NOV2022.pdf
- [3748] OmnichainGovernanceExecutor-Paladin-30MAR2023.pdf
- [3749] OmnichainGovernanceExecutor-Zellic-20MAR2023.pdf
- [3750] LzApp&Token-Ackee-03MAY2022.pdf
- [3751] NativeOFTV2-Zellic-16JUN2023.pdf
- [3752] NativeOFTWithFee-Zellic-30JUN2023.pdf
- [3753] SolidityExample-Ackee-27JUL2022.pdf
- [3754] SolidityExamples-Ackee-10OCT2022.pdf
- [3755] SolidityExamples-Ackee-14NOV2022.pdf
- [3756] SolidityExamples-Ottersec-21MAR2023.pdf
- [3757] SolidityExamples-Ottersec-24JAN2023.pdf
- [3758] SolidityExamples-Ottersec-27APR2023.pdf
- [3759] SolidityExamples-Zellic-21MAY2022.pdf
- [3760] SolidityExamplesNativeProxy-Ackee-08AUG2022.pdf
- [3761] SolidityExamplesONFT-Zellic-19JAN2023.pdf
- [3762] AptosBridge-Ottersec-30SEPT2022.pdf
- [3763] WrappedAssetBridge-Zellic-28FEB2023.pdf
- [3764] WrappedAssetBridgeV2-Hexens-AUG2024.pdf
- [3765] WrappedAssetBridgeV2-Ottersec-09SEPT2024.pdf
- [3766] LZ-Aptos-EP-V2_OtterSec_29-Jan-2025.pdf
- [3767] LZ-Aptos-EP-V2_Paladin_14-Jan-2025.pdf
- [3772] EndpointV2-Blockian-13DEC2023.pdf
- [3773] EndpointV2-CMichel-13DEC2023.pdf
- [3774] EndpointV2-Certora-DEDC2023.pdf
- [3775] EndpointV2-Ottersec 14DEC2023.pdf
- [3776] EndpointV2-Paladin-15DEC2023.pdf
- [3777] EndpointV2-Windhustler-15DEC2023.pdf
- [3778] EndpointV2-Zellic-13DEC2023.pdf
- [3779] EndpointV2Alt-Support_OtterSec_Feb-6-2026.pdf
- [3780] EndpointV2Alt-Support_Paladin_Feb-6-2026.pdf
- [3781] LZ-IOTA-EP-V2_OtterSec_28-Oct-2025.pdf
- [3782] LZ-Receive-Types_OtterSec_July-12-2025.pdf
- [3783] SolanaEndPoint-Pashov-28MAY2024.pdf
- [3784] SolanaEndpoint-Halborn-24MAY2024.pdf
- [3785] SolanaEndpoint-OAPP-Zellic-23JUL2024.pdf
- [3786] SolanaEndpoint-Ottersec-07JUN2024.pdf
- [3787] LZ-V2_Starknet_OtterSec_22_Dec_2025.pdf
- [3788] LZ-V2_Starknet_Zellic_30_Sept_2025.pdf
- [3789] LZ-SUI-EP-V2_OtterSec_01-Sept-2025.pdf
- [3790] LZ-SUI-EP-V2_Paladin_07-Oct-2025.pdf
- [3791] LZ-Endpoint-Dollar-UNH-IOL_Feb-6-2026.pdf
- [3792] LZ-Endpoint-Dollar_OtterSec_Feb-1-2026.pdf
- [3795] TempoOFTWrapper-OtterSec-16Feb2026.pdf
- [3796] TempoOFTWrapper-Paladin-10Feb2026.pdf
- [3797] HyperLiquid_Composer-Paladin-9MAY2025.pdf
- [3798] LZ-HyperLiquid-Composer_OtterSec_04-Aug-2025.pdf
- [3799] LZ-HyperLiquid-Fee-Activation_Paladin_13-Nov-2025.pdf
- [3800] LZ-Multicall_OtterSec_Dec-30th-2025.pdf
- [3801] LZ-Multicall_Paladin_Jan-16th-2026.pdf
- [3802] LZ-Multicall_UNH-IOL_Jan-13th-2026.pdf
- [3803] LZ-OApp&OFT_Zellic_Sep-23-2025.pdf
- [3804] OApp&OFT-Zellic-12JUN2024.pdf
- [3805] OFT-OAPP-ChainSecurity-30JAN2024.pdf
- [3806] UpgradeableOapp&OFT-Hexens-01NOV2024.pdf
- [3807] Solana-Example-Review_Zellic_Dec-17-2025.pdf
- [3808] Solana-OApp-ExampleString-Passing-_Zellic_Jun-06-2025.pdf
- [3809] TON_OFT-Ottersec-23May2025.pdf
- [3810] TON_OFT-Zellic-19May2025.pdf
- [3811] RateLimiter-Hexens-MAY2024.pdf
- [3812] RateLimiterFlows-Hexens-OCT2024oct24 (1).pdf
- [3813] RateLimiterFlows-Pashov-20SEPT2024.pdf
- [3814] ONFT721_Paladin_10AUG2024.pdf
- [3815] LZ_OVault-Composer_Paladin_Oct-23-25.pdf
- [3816] LZ_OVault-Yield.xyz_19-Nov-25.pdf
- [3817] LZ_OVault_Ottersec_Jul-16-25.pdf
- [3818] LZ_OVault_Paladin_Aug-06-25.pdf
- [3819] AptosZROAirdrop-Paladin-17JUN2024.pdf
- [3820] ZROClaim-Paladin-18JUN2024.pdf
- [3821] ZROClaim-Pashov-17JUN2024.pdf
- [3822] ZROclaim-hexens-23JUN2024.pdf
- [3823] VeDistributor_Paladin_09-Sep-2025.pdf
- [3824] VeDistributor_Zellic_08-Sep-2025.pdf
- [3825] lzRead-Paladin-25OCT2024.pdf
- [3826] lzRead-Sec3-12NOV2024.pdf

Fork inheritance lineage and inherited audits are included when available.
