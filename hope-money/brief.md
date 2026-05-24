# Agentic Audit Brief: HOPE Money

## Project Overview

- Project: HOPE Money (`hope-money`)
- Lifecycle: active (Tier 0, 81.1% below peak)
- Generated: 2026-05-24T18:31:08.550Z
- Pipeline run: v2-pipeline-2026-05-22-eff36e-2ebb
- Chains: ethereum
- Contract surface: 29 unique implementations (88 raw deployments)
- DeFi Llama TVL: $1,689,759.00
- On-chain TVL (included contracts): $22,046,448.85
- TVL by chain: Ethereum $22,046,448.85

## Project Description

HOPE Money is a DeFi protocol offering liquid staking, restaking, and BTC-backed tokens. It enables users to stake ETH for liquid tokens, restake for additional yield, and mint BTC-pegged assets for use in lending and trading.

### Architecture

The liquid staking family provides RockXETH, which can be restaked for rewards. BTC-backed tokens rely on vaults and rate oracles, and cross-chain infrastructure enables movement of these assets across networks.

## Audit Coverage Summary

- Verified implementations audited: 0/27 (0.0%)
- Verified + Unaudited implementations: 27
- Verified by bytecode match: 0
- Unverified implementations: 2
- Unique implementations: 29
- Raw deployments: 88
- Audits discovered: 4
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): $22,046,448.85
- Latest audit: 2023-04 (stale)
- Staleness: 0 fresh, 0 aging, 4 stale, 0 unknown
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (27)

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| RockXETH | token | ethereum | 6 deployments: ethereum [`0x3376eb...61514a`](./contracts/ethereum-1/0x3376ebca0a85fc8d791b1001a571c41fdd61514a/); ethereum `0x58cb26...9d187d`; ethereum `0x79f2c3...449597`; ethereum `0x8a9486...98e590`; ethereum `0xd48d3e...905e11`; ethereum `0xf1376b...df51f4` | ⚠️ Unaudited |
| brVault | core_logic | ethereum | [`0x1419b4...0e3386`](./contracts/ethereum-1/0x1419b48e5c1f5ce413cf02d6dcbe1314170e3386/) | ⚠️ Unaudited |
| VaultWithoutNative | core_logic | ethereum | 2 deployments: ethereum [`0x047d41...10d6da`](./contracts/ethereum-1/0x047d41f2544b7f63a8e991af2068a363d210d6da/); ethereum `0xcb674f...36ba8c` | ⚠️ Unaudited |
| RewardPool | core_logic | ethereum | 3 deployments: ethereum [`0x29b06c...50a415`](./contracts/ethereum-1/0x29b06ce31449a9f89719137a705cff395450a415/); ethereum `0xb7019c...732064`; ethereum `0xfc9268...9d4c36` | ⚠️ Unaudited |
| brBTC | unknown | ethereum | [`0x2ec37d...8f6646`](./contracts/ethereum-1/0x2ec37d45fcae65d9787ecf71dc85a444968f6646/) | ⚠️ Unaudited |
| CCIPPeer | unknown | ethereum | 2 deployments: ethereum [`0x17ea3d...908ee1`](./contracts/ethereum-1/0x17ea3dcd055a72b137e6f09cd5f2a1c187908ee1/); ethereum `0x55a67c...b60edc` | ⚠️ Unaudited |
| CelerMinterReceiver | unknown | ethereum | [`0x7c3f1f...465c95`](./contracts/ethereum-1/0x7c3f1fe22959b4f6ac2bf2474b3bdf9969465c95/) | ⚠️ Unaudited |
| DelayRedeemRouter | adapter | ethereum | 2 deployments: ethereum [`0x720081...eb859d`](./contracts/ethereum-1/0x720081e3ee2b1542e341afc793de20b08beb859d/); ethereum `0xaa732c...f89246` | ⚠️ Unaudited |
| directBTC | unknown | ethereum | [`0xa70099...c0b090`](./contracts/ethereum-1/0xa700992a9815d3bfecedfe51b030fd294bc0b090/) | ⚠️ Unaudited |
| DirectBTCMinter | unknown | ethereum | [`0x91fd8c...d64500`](./contracts/ethereum-1/0x91fd8c7a5fda7d52ab41bbe423eedd3a65d64500/) | ⚠️ Unaudited |
| DirectStaking | unknown | ethereum | 8 deployments: ethereum [`0x07a5d3...0eef57`](./contracts/ethereum-1/0x07a5d37823c5c7963042fab79ed4747ab60eef57/); ethereum `0x204d10...08d17d`; ethereum `0x285418...363446`; ethereum `0x47b091...cc9ebb`; ethereum `0x655bc4...63d5ae`; ethereum `0x8ee512...6779ca`; ethereum `0xbed9c1...7e8259`; ethereum `0xe8239b...5c4572` | ⚠️ Unaudited |
| GnosisSafe | governance | ethereum | [`0x088117...5ca866`](./contracts/ethereum-1/0x088117ed2b7ac7ae1801fac4f359e1aed95ca866/) | ⚠️ Unaudited |
| Payment | unknown | ethereum | 2 deployments: ethereum [`0x552b0c...42fa05`](./contracts/ethereum-1/0x552b0c6688fcae5cf0164f27fd129b882a42fa05/); ethereum `0x9203ce...718031` | ⚠️ Unaudited |
| PodOwner | unknown | ethereum | 2 deployments: ethereum [`0x0ac774...e76f52`](./contracts/ethereum-1/0x0ac774014e2306dbddac4af7cb0f80087de76f52/); ethereum `0x7e8e03...288f20` | ⚠️ Unaudited |
| ProxyAdmin | governance | ethereum | [`0x9f6326...e7f002`](./contracts/ethereum-1/0x9f63269196a8828f05f2e49d1078ea7c44e7f002/) | ⚠️ Unaudited |
| Redeem | unknown | ethereum | 3 deployments: ethereum [`0x6882ae...57497d`](./contracts/ethereum-1/0x6882ae88956f676a15efe3e9f920aabaaa57497d/); ethereum `0x981692...1d3b8d`; ethereum `0x9ca778...3c5f8c` | ⚠️ Unaudited |
| Restaking | unknown | ethereum | 8 deployments: ethereum [`0x04f744...b7b5c0`](./contracts/ethereum-1/0x04f744f99ea5c588a8a31906d5b5c91cabb7b5c0/); ethereum `0x1e4d0a...c4e518`; ethereum `0x3f4eac...6e9850`; ethereum `0x4d6c23...7a9f04`; ethereum `0x595994...a0fa96`; ethereum `0x9c8725...a5f412`; ethereum `0x9cfbf2...d665d6`; ethereum `0xad8bd6...62b96a` | ⚠️ Unaudited |
| RockXRedeem | unknown | ethereum | 6 deployments: ethereum [`0x3774af...4ba818`](./contracts/ethereum-1/0x3774af7bb6e792963167588ae85b5ab8664ba818/); ethereum `0x5e3787...58d2f9`; ethereum `0x876868...7de595`; ethereum `0x89b2c7...740aeb`; ethereum `0xbc48e8...33d03d`; ethereum `0xdfc7d2...2b511e` | ⚠️ Unaudited |
| RockXRestaking | unknown | ethereum | 2 deployments: ethereum [`0x351eea...69a098`](./contracts/ethereum-1/0x351eea2c8de2f7f1fb4cf08aa9423cec4269a098/); ethereum `0xbb879a...241ab5` | ⚠️ Unaudited |
| RockXStaking | unknown | ethereum | 22 deployments: ethereum [`0x02e3e2...af25ea`](./contracts/ethereum-1/0x02e3e2c644601b18ad67a6f09155fe5581af25ea/); ethereum `0x0bd74c...2d97bd`; ethereum `0x10f91a...7723dc`; ethereum `0x11b380...66be7b`; ethereum `0x1df46e...90ad93`; ethereum `0x3e904a...33eab5`; ethereum `0x3f924b...e5791b`; ethereum `0x413c36...4d1247`; ethereum `0x56adf8...c334db`; ethereum `0x5c9b33...02cfd7`; ethereum `0x5e8fd0...618ae0`; ethereum `0x62cea4...f1ca61`; ethereum `0x680d9f...40f565`; ethereum `0x774c97...f2070d`; ethereum `0x90687a...2fc487`; ethereum `0x9a74f7...630560`; ethereum `0x9ba573...f7c757`; ethereum `0x9c3749...88d6b2`; ethereum `0xc2cba4...221923`; ethereum `0xc92a22...cd0bde`; ethereum `0xd4408c...c779e8`; ethereum `0xf35df2...28a09d` | ⚠️ Unaudited |
| Sigma | unknown | ethereum | [`0x18d0d9...d021b5`](./contracts/ethereum-1/0x18d0d914913ac720a6421cc809f3f44697d021b5/) | ⚠️ Unaudited |
| Staking | unknown | ethereum | 3 deployments: ethereum [`0x4befa2...269e9d`](./contracts/ethereum-1/0x4befa2aa9c305238aa3e0b5d17eb20c045269e9d/); ethereum `0xa20caf...d9a8de`; ethereum `0xd96849...ff31b1` | ⚠️ Unaudited |
| TimelockController | governance | ethereum | [`0xf4954a...755024`](./contracts/ethereum-1/0xf4954ae0f18b236b643a4bf126e743f23f755024/) | ⚠️ Unaudited |
| TransferProxy | unknown | ethereum | [`0xf0ab75...bc342b`](./contracts/ethereum-1/0xf0ab759d3a1a4956e8c3c52c71ccb50f20bc342b/) | ⚠️ Unaudited |
| uniBTC | unknown | ethereum | [`0x004e9c...350568`](./contracts/ethereum-1/0x004e9c3ef86bc1ca1f0bb5c7662861ee93350568/) | ⚠️ Unaudited |
| uniBTCRate | unknown | ethereum | [`0xe54291...abc716`](./contracts/ethereum-1/0xe542919e4b281f10b437f947c8ba224ddfabc716/) | ⚠️ Unaudited |
| Vault | core_logic | ethereum | 3 deployments: ethereum [`0x078452...98880e`](./contracts/ethereum-1/0x078452351df0bd418ade7328bb693a2eb698880e/); ethereum `0x317b8e...876ef6`; ethereum `0x472372...108e45` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (2)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| UnnamedContract | unknown | ethereum | `0x0fe418...dc12f8` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x69fd3e...21bbdb` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [CertiK-Audit-for-LightDAO-II-v1.pdf](https://github.com/Light-Ecosystem/light-dao/blob/main/audit/CertiK-Audit-for-LightDAO-II-v1.pdf) | CertiK | Audit | 2023-04 | stale | Direct | n/a | 0 | n/a |
| [PeckShield-Audit-Report-HOPE-v1.2.pdf](https://github.com/Light-Ecosystem/light-dao/blob/main/audit/PeckShield-Audit-Report-HOPE-v1.2.pdf) | PeckShield | Audit | 2023-04 | stale | Direct | n/a | 0 | n/a |
| [SlowMist Audit Report - LightDAO Phase1_en-us.pdf](https://github.com/Light-Ecosystem/light-dao/blob/main/audit/SlowMist%20Audit%20Report%20-%20LightDAO%20Phase1_en-us.pdf) | SlowMist | Audit | 2023-02 | stale | Direct | n/a | 0 | n/a |
| [SlowMist Audit Report - LightDAO Phase2_en-us.pdf](https://github.com/Light-Ecosystem/light-dao/blob/main/audit/SlowMist%20Audit%20Report%20-%20LightDAO%20Phase2_en-us.pdf) | SlowMist | Audit | 2023-03 | stale | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | [`0x3376eb...61514a`](./contracts/ethereum-1/0x3376ebca0a85fc8d791b1001a571c41fdd61514a/) | RockXETH | token | $21,983,584.15 | Verified native implementation with $21,983,584.15 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x29b06c...50a415`](./contracts/ethereum-1/0x29b06ce31449a9f89719137a705cff395450a415/) | RewardPool | core_logic | $0.00 | Verified native implementation with $0.00 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x720081...eb859d`](./contracts/ethereum-1/0x720081e3ee2b1542e341afc793de20b08beb859d/) | DelayRedeemRouter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x07a5d3...0eef57`](./contracts/ethereum-1/0x07a5d37823c5c7963042fab79ed4747ab60eef57/) | DirectStaking | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0ac774...e76f52`](./contracts/ethereum-1/0x0ac774014e2306dbddac4af7cb0f80087de76f52/) | PodOwner | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x6882ae...57497d`](./contracts/ethereum-1/0x6882ae88956f676a15efe3e9f920aabaaa57497d/) | Redeem | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x04f744...b7b5c0`](./contracts/ethereum-1/0x04f744f99ea5c588a8a31906d5b5c91cabb7b5c0/) | Restaking | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x3774af...4ba818`](./contracts/ethereum-1/0x3774af7bb6e792963167588ae85b5ab8664ba818/) | RockXRedeem | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x351eea...69a098`](./contracts/ethereum-1/0x351eea2c8de2f7f1fb4cf08aa9423cec4269a098/) | RockXRestaking | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x18d0d9...d021b5`](./contracts/ethereum-1/0x18d0d914913ac720a6421cc809f3f44697d021b5/) | Sigma | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xf0ab75...bc342b`](./contracts/ethereum-1/0xf0ab759d3a1a4956e8c3c52c71ccb50f20bc342b/) | TransferProxy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x078452...98880e`](./contracts/ethereum-1/0x078452351df0bd418ade7328bb693a2eb698880e/) | Vault | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 12 |
| upstream | 1 |
| standard_library | 13 |
| needs_review | 3 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 4
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Zero-match audit list:

- [2991] CertiK-Audit-for-LightDAO-II-v1.pdf
- [2992] PeckShield-Audit-Report-HOPE-v1.2.pdf
- [2993] SlowMist Audit Report - LightDAO Phase1_en-us.pdf
- [2994] SlowMist Audit Report - LightDAO Phase2_en-us.pdf

Fork inheritance lineage and inherited audits are included when available.
