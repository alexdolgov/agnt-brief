# Agentic Audit Brief: Zharta

⚠️ Lifecycle status: DECLINING - TVL dropped 33.3% over 90 days

## Project Overview

- Project: Zharta (`zharta`)
- Website: [https://www.zharta.io](https://www.zharta.io)
- Lifecycle: declining (Tier 1, declining)
- Generated: 2026-06-19T11:52:05.380Z
- Pipeline run: v2-pipeline-2026-06-19-727228-cc10
- Chains: ethereum
- Contract surface: 43 unique implementations (75 raw deployments)
- DeFi Llama TVL: $2.75
- On-chain TVL (included contracts): $0.01
- TVL by chain: Ethereum $0.01

## Project Description

Zharta is an NFT lending protocol that allows users to borrow against their NFTs as collateral. It provides instant liquidity without requiring users to sell their assets.

### Architecture

The protocol consists of a single product family with one core contract, indicating a monolithic architecture where all lending logic is contained within a single contract.

## Contract Surface Quality

- Indexed contracts: 216; live-surface contracts included: 75 (75 live, 0 unknown).
- Excluded by liveness: 141 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Verified implementations audited: 2/11 (18.2%)
- Verified + Unaudited implementations: 9
- Verified by bytecode match: 0
- Unverified implementations: 32
- Unique implementations: 43
- Raw deployments: 75
- Audits discovered: 3
- Scoreable audits (matched contracts): 2
- ASD (verified + unaudited TVL): $0.01
- Latest audit: 2025-10 (fresh)
- Staleness: 1 fresh, 0 aging, 2 stale, 0 unknown
- Tier 1 coverage: No Tier 1 coverage
- Note: This protocol is classified as [declining]. ASD of $0.01 represents exposure in a protocol with declining activity.

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| yAudit | Tier 2 | 2 | 18.2% | 2023-01 |

## Contract Surface

### ✅ Verified + Audited (2)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| LendingPoolPeripheral | core_logic | ethereum | n/a | [`0x8d0f9c...94badb`](./contracts/ethereum-1/0x8d0f9c9fa4c1b265cd5032fe6ba4fefc9d94badb/) | ✅ Audited |
| Loans | unknown | ethereum | n/a | [`0x3f8ac2...b00f6c`](./contracts/ethereum-1/0x3f8ac2349463c6bd759a18648e67c82c77b00f6c/) | ✅ Audited |

### ⚠️ Verified + Unaudited (9)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| P2PLendingNfts | core_logic | ethereum | n/a | 2 deployments: ethereum [`0x5f1943...9deda7`](./contracts/ethereum-1/0x5f19431bc8a3eb21222771c6c867a63a119deda7/); ethereum `0xa5bc43...73e496` | ⚠️ Unaudited |
| P2PLendingVaultedErc20 | core_logic | ethereum | n/a | 23 deployments: ethereum [`0x051c32...7722aa`](./contracts/ethereum-1/0x051c3253b791abd27fb1c7a9a247c531ae7722aa/); ethereum `0x122722...b6508e`; ethereum `0x132515...ada3e2`; ethereum `0x179fd2...0d0da8`; ethereum `0x196543...4dc2c9`; ethereum `0x1a5b96...c0d961`; ethereum `0x1a7113...5562c4`; ethereum `0x235e4c...cb6719`; ethereum `0x25d504...ada35c`; ethereum `0x2a2fec...9f6d5d`; ethereum `0x34eb34...c04bbc`; ethereum `0x4e33a4...b6ff35`; ethereum `0x5a403e...757598`; ethereum `0x5dc4f0...7687ff`; ethereum `0x5e1f36...e20718`; ethereum `0x644cb6...09ff52`; ethereum `0x72ed89...c21514`; ethereum `0x735775...f190d9`; ethereum `0x8107f6...7345b6`; ethereum `0x84cf87...705d2f`; ethereum `0x8963df...6376d1`; ethereum `0x8f5e0e...50d74f`; ethereum `0xa48459...9ed969` | ⚠️ Unaudited |
| P2PLendingErc20 | core_logic | ethereum | n/a | 3 deployments: ethereum [`0x12c1c1...d7b23d`](./contracts/ethereum-1/0x12c1c1aeca59d19230e7e86f8455c4ae97d7b23d/); ethereum `0x3257cd...116705`; ethereum `0x3f9eee...1e9a3a` | ⚠️ Unaudited |
| P2PLendingControl | core_logic | ethereum | n/a | [`0xa11704...a5c062`](./contracts/ethereum-1/0xa11704b3dd545dc0771d9a9c5572064db2a5c062/) | ⚠️ Unaudited |
| P2PLendingVault | core_logic | ethereum | n/a | 3 deployments: ethereum [`0x08ae35...df5d22`](./contracts/ethereum-1/0x08ae358060c6af60710eafda7b9f06c375df5d22/); ethereum `0x532341...d7636d`; ethereum `0x9b8ea6...f6d05b` | ⚠️ Unaudited |
| P2PLendingVaultedLiquidation | core_logic | ethereum | n/a | 2 deployments: ethereum [`0x4cdc09...cbdb75`](./contracts/ethereum-1/0x4cdc097c838fa7bc8ec6917d9d5f07f52bcbdb75/); ethereum `0xa311a5...36eb61` | ⚠️ Unaudited |
| P2PLendingVaultedRefinance | core_logic | ethereum | n/a | 2 deployments: ethereum [`0x8850de...9c7519`](./contracts/ethereum-1/0x8850dea069963fafdd7723e7d4a5854d639c7519/); ethereum `0xafcc36...56d0f9` | ⚠️ Unaudited |
| Vyper_contract | unknown | ethereum | n/a | 2 deployments: ethereum [`0x8445b9...9a2cf5`](./contracts/ethereum-1/0x8445b94d840f370ac32c36aa3996a24b029a2cf5/); ethereum `0xb5f755...f5da46` | ⚠️ Unaudited |
| Zharta Renting Contract | unknown | ethereum | n/a | 3 deployments: ethereum [`0x2ef699...284d94`](./contracts/ethereum-1/0x2ef699b51ca996c224bbe51cdbfcc2a1a7284d94/); ethereum `0x53ea44...ae0079`; ethereum `0x5a9168...60c01c` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (32)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | ethereum | n/a | `0x017d4f...0cba7e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x0c0726...663690` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x10d62e...cc36b3` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x1814b0...0de070` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x2689f1...51d78a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x279fc5...1bde32` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x34c35c...ed00cc` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x655c60...b41b80` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x872562...4ed2f1` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x8dffcb...13cacd` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xbef115...6848ef` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xbfd975...fe6c32` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xc4b436...bd12f8` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xc4cb90...1290c7` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xc5fe6b...3e414e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xca1e2f...242ac2` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xca5473...191e50` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xcb47c6...2ed399` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xcf4364...b872ee` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xdaec5a...f08123` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xdef19b...8a1768` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xdf96d6...bfe704` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xe8d846...3a3875` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xee6749...794fbf` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xf06eab...691a7b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xf0c6d8...05387c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xf1aaff...5d9397` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xf6cd03...9817fe` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xf70051...a016a1` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xf7ea0e...a71419` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xf9e78b...70a079` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xfed19f...ea6841` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [Rendered PDF capture (also discovered via alternate URL)](https://raw.githubusercontent.com/Zharta/protocol-v1/97ad0167fff89b8f4f8d70ecef76869ca89b8b63/docs/audits/Zharta_SCAudit_Report_Final.pdf) | yAudit | Audit | 2023-01 | stale | Direct | contract_name | 2 | high |
| [Rendered PDF capture (also discovered via alternate URL)](https://raw.githubusercontent.com/Zharta/protocol-v1/97ad0167fff89b8f4f8d70ecef76869ca89b8b63/docs/audits/Zharta%20-%20Audit%20Report%20Final.pdf) | yAudit | Audit | 2022-05 | stale | Direct | contract_name | 2 | high |
| [zharta-oct-25(Final).pdf](https://github.com/Hexens/Smart-Contract-Review-Public-Reports/blob/main/zharta-oct-25(Final).pdf) | Hexens | Audit | 2025-10 | fresh | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | [`0x5f1943...9deda7`](./contracts/ethereum-1/0x5f19431bc8a3eb21222771c6c867a63a119deda7/) | P2PLendingNfts | core_logic | $0.00 | Verified native implementation with $0.00 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x051c32...7722aa`](./contracts/ethereum-1/0x051c3253b791abd27fb1c7a9a247c531ae7722aa/) | P2PLendingVaultedErc20 | core_logic | $0.00 | Verified native implementation with $0.00 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x12c1c1...d7b23d`](./contracts/ethereum-1/0x12c1c1aeca59d19230e7e86f8455c4ae97d7b23d/) | P2PLendingErc20 | core_logic | $0.00 | Verified native implementation with $0.00 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xa11704...a5c062`](./contracts/ethereum-1/0xa11704b3dd545dc0771d9a9c5572064db2a5c062/) | P2PLendingControl | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x08ae35...df5d22`](./contracts/ethereum-1/0x08ae358060c6af60710eafda7b9f06c375df5d22/) | P2PLendingVault | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x4cdc09...cbdb75`](./contracts/ethereum-1/0x4cdc097c838fa7bc8ec6917d9d5f07f52bcbdb75/) | P2PLendingVaultedLiquidation | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x8850de...9c7519`](./contracts/ethereum-1/0x8850dea069963fafdd7723e7d4a5854d639c7519/) | P2PLendingVaultedRefinance | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x2ef699...284d94`](./contracts/ethereum-1/0x2ef699b51ca996c224bbe51cdbfcc2a1a7284d94/) | Zharta Renting Contract | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 16 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 27 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=2
- Match method counts: extraction_exact=64

Zero-match audit list:

- [14183] zharta-oct-25(Final).pdf

Fork inheritance lineage and inherited audits are included when available.
