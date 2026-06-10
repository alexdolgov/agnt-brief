# Agentic Audit Brief: Arcade.xyz

⚠️ Lifecycle status: DECLINING - TVL dropped 47.4% over 90 days

## Project Overview

- Project: Arcade.xyz (`arcade.xyz`)
- Website: [https://www.arcade.xyz](https://www.arcade.xyz)
- Lifecycle: declining (Tier 1, dead)
- Generated: 2026-06-10T20:42:10.362Z
- Pipeline run: v2-pipeline-2026-06-10-b79301-df6b
- Chains: ethereum
- Contract surface: 60 unique implementations (147 raw deployments)
- DeFi Llama TVL: $5,122,465.83
- On-chain TVL (included contracts): $240,139.20
- TVL by chain: Ethereum $240,139.20

## Project Description

Arcade.xyz historically operated as an NFT-collateral lending protocol on Ethereum, enabling users to borrow against NFTs through loan origination, vault, and staking-related contracts. Current project messaging describes a broader lending marketplace for memecoins, NFTs, RWAs, and other tokens, with Ethereum and Base advertised; any Base contract surface should be treated as unverified until live deployments are confirmed.

### Architecture

The VaultFactory creates vaults that hold NFT collateral, while LoanCore manages loan origination and repayment, with PromissoryNote representing loan obligations. Staking contracts interact with the ArcadeToken to distribute rewards, and UniswapV2Pair provides liquidity for the token.

## Audit Coverage Summary

- Verified implementations audited: 29/43 (67.4%)
- Verified + Unaudited implementations: 14
- Verified by bytecode match: 0
- Unverified implementations: 17
- Unique implementations: 60
- Raw deployments: 147
- Audits discovered: 10
- Scoreable audits (matched contracts): 10
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2024-03 (stale)
- Staleness: 0 fresh, 0 aging, 10 stale, 0 unknown
- Tier 1 coverage: 30.2% (Trail of Bits)
- Note: This protocol is classified as [declining]. ASD of n/a represents exposure in a protocol with declining activity.

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| unknown | Tier 2 | 29 | 67.4% | 2024-03 |
| Trail of Bits | Tier 1 | 13 | 30.2% | 2023-07 |
| Quantstamp | Tier 2 | 8 | 18.6% | 2022-06 |

## Contract Surface

### ✅ Verified + Audited (29)

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| ArcadeToken | token | ethereum | [`0xe020b0...cc70bf`](./contracts/ethereum-1/0xe020b01b6fbd83066aa2e8ee0ccd1eb8d9cc70bf/) | ✅ Audited |
| NFTBoostVault | core_logic | ethereum | [`0xbe951d...d59e68`](./contracts/ethereum-1/0xbe951d1b791c6878eec5d9129adeb72a28d59e68/) | ✅ Audited |
| ArcadeAirdrop | operational_periphery | ethereum | 3 deployments: ethereum [`0x21fc22...d75fd1`](./contracts/ethereum-1/0x21fc22c02a298488e7d60a3b4fb974bc4ed75fd1/); ethereum `0x2b49c3...c9ae38`; ethereum `0x910a1a...d9892b` | ✅ Audited |
| ArcadeGSCVault | core_logic | ethereum | [`0xfd2d1c...149f62`](./contracts/ethereum-1/0xfd2d1c8809a271e892046a23185423a52a149f62/) | ✅ Audited |
| ArcadeItemsVerifier | periphery | ethereum | 2 deployments: ethereum [`0xabfd9d...948df0`](./contracts/ethereum-1/0xabfd9d9e4157695db5812eee279d923a4f948df0/); ethereum `0xc39c5d...a4df1d` | ✅ Audited |
| ArcadeStakingRewards | unknown | ethereum | [`0x80bddd...7a5793`](./contracts/ethereum-1/0x80bddd56b947c547ab8964d80e98e42ff77a5793/) | ✅ Audited |
| ArcadeTokenDistributor | operational_periphery | ethereum | [`0xd99121...70d187`](./contracts/ethereum-1/0xd99121bd49c333be024ab28f7792d6e81170d187/) | ✅ Audited |
| ArcadeTreasury | operational_periphery | ethereum | [`0xac2b57...1c12c5`](./contracts/ethereum-1/0xac2b57b372e198f09d4bf5f445ca1228771c12c5/) | ✅ Audited |
| ARCDVestingVault | operational_periphery | ethereum | [`0xae40af...09c40f`](./contracts/ethereum-1/0xae40af135c060e10b218c617c2d74a370b09c40f/) | ✅ Audited |
| ArtBlocksVerifier | periphery | ethereum | 2 deployments: ethereum [`0x4501c3...fb809d`](./contracts/ethereum-1/0x4501c338203ad2510c7c71a6ce26d70a70fb809d/); ethereum `0x6eeeed...f3ae1a` | ✅ Audited |
| AssetVault | core_logic | ethereum | 7 deployments: ethereum [`0x584503...44f027`](./contracts/ethereum-1/0x584503250fc246ce459e117195a64cf96544f027/); ethereum `0x6079f3...88de5d`; ethereum `0x796c48...89f4bd`; ethereum `0x833835...10bcb5`; ethereum `0x9988d4...992fd9`; ethereum `0xb56a5c...d1424a`; ethereum `0xd89845...38acb6` | ✅ Audited |
| AssetWrapper | unknown | ethereum | [`0x5cb803...3e9dc2`](./contracts/ethereum-1/0x5cb803c31e8f4f895a3ab19d8218646dc63e9dc2/) | ✅ Audited |
| BadgeDescriptor | periphery | ethereum | [`0xfdac5c...ad13cc`](./contracts/ethereum-1/0xfdac5cd4b03aacbb8b24ba54c6a95f244fad13cc/) | ✅ Audited |
| CallWhitelist | unknown | ethereum | 6 deployments: ethereum [`0x0e8ea5...74805f`](./contracts/ethereum-1/0x0e8ea5e5415b30dc1873df03ae9f7beecf74805f/); ethereum `0x1f2dfc...dd8eaa`; ethereum `0x2a6200...2c690f`; ethereum `0x5e87d2...9f0597`; ethereum `0xb4496f...178c82`; ethereum `0xf5399c...f9df5b` | ✅ Audited |
| CallWhitelistAllExtensions | adapter | ethereum | 4 deployments: ethereum [`0x133570...1707a1`](./contracts/ethereum-1/0x133570b0fd9e39611e29d3e47201ff8fe21707a1/); ethereum `0x28992c...bf51ca`; ethereum `0xc185af...1c62a3`; ethereum `0xc58ed1...3f17c4` | ✅ Audited |
| CallWhitelistApprovals | unknown | ethereum | [`0xb4515a...9fdb95`](./contracts/ethereum-1/0xb4515a8e5616005f7138d9eb25b581362d9fdb95/) | ✅ Audited |
| CollectionWideOfferVerifier | periphery | ethereum | [`0x1b6e58...dda544`](./contracts/ethereum-1/0x1b6e58aae43bfd2a435aa348f3328f3137dda544/) | ✅ Audited |
| FeeController | governance | ethereum | 6 deployments: ethereum [`0x0facdc...80d133`](./contracts/ethereum-1/0x0facdc440d496798e095f87e50a8ed3a5680d133/); ethereum `0x41e538...8cff9f`; ethereum `0x4cccc5...e42e75`; ethereum `0x78ff43...2eda7b`; ethereum `0xe6e233...67b753`; ethereum `0xf76444...e800fa` | ✅ Audited |
| FlashRollover | unknown | ethereum | [`0x24611f...09da12`](./contracts/ethereum-1/0x24611fad669350ca869fbed4b62877d1a409da12/) | ✅ Audited |
| ImmutableVestingVault | operational_periphery | ethereum | [`0xdd7a92...711e53`](./contracts/ethereum-1/0xdd7a92062d1939357fb17a66288cde30b3711e53/) | ✅ Audited |
| LoanCore | unknown | ethereum | 11 deployments: ethereum [`0x3a50c2...7dd935`](./contracts/ethereum-1/0x3a50c25f11cb96a30bfcba4dc0c44da1907dd935/); ethereum `0x3bbd0b...eb6b15`; ethereum `0x3f80d1...032d43`; ethereum `0x4845b4...408a9a`; ethereum `0x606e4a...44064a`; ethereum `0x7691ee...c8b325`; ethereum `0x81b2f8...fa7fd9`; ethereum `0x89bc08...cc98af`; ethereum `0xcb9835...654047`; ethereum `0xecbaac...5d78f5`; ethereum `0xf7950d...6df89d` | ✅ Audited |
| OriginationController | governance | ethereum | 7 deployments: ethereum [`0x2df5c8...ba2620`](./contracts/ethereum-1/0x2df5c801f2f082287241c8cb7f3d517c3cba2620/); ethereum `0x4c52ca...dc840b`; ethereum `0x567ccb...36c117`; ethereum `0x5fa8e7...e9b88c`; ethereum `0x7c2a27...5161f6`; ethereum `0xb7bfcc...185878`; ethereum `0xb80f88...6ecc51` | ✅ Audited |
| PromissoryNote | unknown | ethereum | 13 deployments: ethereum [`0x112371...8ee8b0`](./contracts/ethereum-1/0x1123710f81cb573ab22dd6de90de17692f8ee8b0/); ethereum `0x337104...f863aa`; ethereum `0x349a02...d8ddee`; ethereum `0x430d82...1ed280`; ethereum `0x562803...f649d2`; ethereum `0x5783d0...bb0414`; ethereum `0x639714...9bbc87`; ethereum `0x8d3666...ab8e15`; ethereum `0x92ed78...0a7618`; ethereum `0xa5f4b2...172ac0`; ethereum `0xa75b02...0ee4c4`; ethereum `0xd45ce8...7cdc7f`; ethereum `0xe5b12b...ecb7be` | ✅ Audited |
| PunksVerifier | periphery | ethereum | [`0x16d99e...08b8e2`](./contracts/ethereum-1/0x16d99ec34aa91162d71c84bcbe7a7ead5908b8e2/) | ✅ Audited |
| RepaymentController | governance | ethereum | 7 deployments: ethereum [`0x251440...cfcbc9`](./contracts/ethereum-1/0x251440b8cbcc973a8e7f0b7814ec3ecc6bcfcbc9/); ethereum `0x74241e...b40d53`; ethereum `0x921748...df43a0`; ethereum `0x9ece63...f6f38d`; ethereum `0xb39dab...9993d4`; ethereum `0xd7b458...b1b1db`; ethereum `0xf6c8ee...5ad7fb` | ✅ Audited |
| ReputationBadge | unknown | ethereum | [`0x3a5a55...15612a`](./contracts/ethereum-1/0x3a5a551b41bbe3d3a61ffd8280f6569f6715612a/) | ✅ Audited |
| V2ToV3Rollover | unknown | ethereum | 3 deployments: ethereum [`0x0bc05f...ea0ed4`](./contracts/ethereum-1/0x0bc05fc8ebfb362592f9703a33fc8c3953ea0ed4/); ethereum `0x1f59f8...a3f9db`; ethereum `0xdb0655...4c5253` | ✅ Audited |
| V2ToV3RolloverWithItems | unknown | ethereum | 2 deployments: ethereum [`0x3c7726...51d396`](./contracts/ethereum-1/0x3c77269ca7f4ac42b6f0bfc10d9f44406351d396/); ethereum `0xac33e4...139e7b` | ✅ Audited |
| VaultFactory | registry | ethereum | 12 deployments: ethereum [`0x21b346...6b3c0c`](./contracts/ethereum-1/0x21b346622e607fcc936a320d3ab8224fb36b3c0c/); ethereum `0x269363...476d55`; ethereum `0x371e4f...6c596f`; ethereum `0x38e01b...dacdf6`; ethereum `0x4cf03b...bc54b1`; ethereum `0x4e6a52...c4ab7c`; ethereum `0x666faa...7133be`; ethereum `0x6e9b4c...cc94a2`; ethereum `0x759491...01cf53`; ethereum `0x7d43e6...d767b5`; ethereum `0x833481...48de7c`; ethereum `0x86eb88...efdb03` | ✅ Audited |

### ⚠️ Verified + Unaudited (14)

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| AirdropSeason1 | operational_periphery | ethereum | [`0x7de71b...c0b54d`](./contracts/ethereum-1/0x7de71bc6694ca827e043b18102caf01518c0b54d/) | ⚠️ Unaudited |
| AirdropSingleSidedStaking | operational_periphery | ethereum | [`0x72854f...8740f0`](./contracts/ethereum-1/0x72854fbb44d3dd87109d46a9298aeb0d018740f0/) | ⚠️ Unaudited |
| ArcadeCoreVoting | unknown | ethereum | 2 deployments: ethereum [`0x2b6f11...94a279`](./contracts/ethereum-1/0x2b6f11b2a783c928799c4e561da89cd06894a279/); ethereum `0x54b723...d39856` | ⚠️ Unaudited |
| ArcadeParadice | unknown | ethereum | [`0x4bad23...c52244`](./contracts/ethereum-1/0x4bad2399f43a827ba3434cdd9b3ad1b5bac52244/) | ⚠️ Unaudited |
| BalanceQuery | unknown | ethereum | [`0xc7730a...e419c9`](./contracts/ethereum-1/0xc7730a89b50779e28b9f06f805874bf28ae419c9/) | ⚠️ Unaudited |
| FlashRolloverStakingVaultUpgrade | core_logic | ethereum | [`0x094db3...01a8c6`](./contracts/ethereum-1/0x094db3031258d6204a4cfc99415eb66f9a01a8c6/) | ⚠️ Unaudited |
| FlashRolloverV1toV2 | unknown | ethereum | 2 deployments: ethereum [`0x07352e...533dc9`](./contracts/ethereum-1/0x07352ed030c6fd8d12f8258d2df6f99cba533dc9/); ethereum `0x677eae...e69c1b` | ⚠️ Unaudited |
| LP1Migration | operational_periphery | ethereum | 2 deployments: ethereum [`0xa78f3e...4e657b`](./contracts/ethereum-1/0xa78f3ec4a858341fc9cae5672f7381e4e74e657b/); ethereum `0xd4bd62...0ec5b9` | ⚠️ Unaudited |
| LP1MigrationWithItems | operational_periphery | ethereum | 2 deployments: ethereum [`0x466e3e...359759`](./contracts/ethereum-1/0x466e3e08deb46f7ba9ce269d2e0858347b359759/); ethereum `0xad8e69...a0adad` | ⚠️ Unaudited |
| ReflectiveURIDescriptor | periphery | ethereum | [`0x7fa888...621fd5`](./contracts/ethereum-1/0x7fa888a801fc7b7e5e847239e58dd4e2dc621fd5/) | ⚠️ Unaudited |
| StaticURIDescriptor | periphery | ethereum | 10 deployments: ethereum [`0x2055f7...dafc75`](./contracts/ethereum-1/0x2055f71ef369d26db683da0b8f8c62469bdafc75/); ethereum `0x5a49a3...5727e8`; ethereum `0x81a86c...2c065e`; ethereum `0x957896...b998c3`; ethereum `0x9a07c4...c2e77e`; ethereum `0xa3e495...3cc5e9`; ethereum `0xad8a07...a79f22`; ethereum `0xe237f0...372dfb`; ethereum `0xe3ce55...d81a94`; ethereum `0xfde563...84cfcc` | ⚠️ Unaudited |
| Timelock | governance | ethereum | 2 deployments: ethereum [`0x475114...41ff01`](./contracts/ethereum-1/0x47511465c397875deab7cf8f008d7922d041ff01/); ethereum `0xf3e9cd...c5a973` | ⚠️ Unaudited |
| VaultDepositRouter | adapter | ethereum | 2 deployments: ethereum [`0x4b9564...52bed2`](./contracts/ethereum-1/0x4b95640d56f81fc851f952793f4e5485e352bed2/); ethereum `0xfdda20...1483f6` | ⚠️ Unaudited |
| VaultInventoryReporter | core_logic | ethereum | 2 deployments: ethereum [`0x144b15...db8e1d`](./contracts/ethereum-1/0x144b1535a3ff4007aad8921419ee2e02cfdb8e1d/); ethereum `0x3a0f9a...8c2e8a` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (17)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| UnnamedContract | unknown | ethereum | `0x01f8ce...350aee` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x0ac474...d0d5e8` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x199150...e7dd0a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x24c55e...4b030b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x27ed93...39d7e4` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x2ea7e9...99bf56` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x35eb4d...99968a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x384582...a3ceaf` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x39375e...dcb4d1` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x541ebf...b5dbbe` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x6d8a47...13a958` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x7c8664...e10b11` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xb61517...5ddc6d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xc06f3e...d7250e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xc3b270...8f7eb1` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xe1a6da...da5dd5` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xf72516...1c31e2` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [V1_Lending_LeastAuthority_2021-08.pdf](https://github.com/arcadexyz/arcade-protocol/blob/main/audits/V1_Lending_LeastAuthority_2021-08.pdf) | unknown | Audit | 2021-08 | stale | Direct | contract_name | 18 | high |
| [V1_Lending_Macro_2022-04.pdf](https://github.com/arcadexyz/arcade-protocol/blob/main/audits/V1_Lending_Macro_2022-04.pdf) | unknown | Audit | 2022-04 | stale | Direct | contract_name | 46 | high |
| [V2_Lending_Quantstamp_2022_06.pdf](https://github.com/arcadexyz/arcade-protocol/blob/main/audits/V2_Lending_Quantstamp_2022_06.pdf) | Quantstamp | Audit | 2022-06 | stale | Direct | contract_name | 69 | high |
| [V2_Lending_Roku_2022_06.pdf](https://github.com/arcadexyz/arcade-protocol/blob/main/audits/V2_Lending_Roku_2022_06.pdf) | unknown | Audit | 2022-06 | stale | Direct | contract_name | 50 | high |
| [V3_Lending_Omniscia_2023-08.pdf](https://github.com/arcadexyz/arcade-protocol/blob/main/audits/V3_Lending_Omniscia_2023-08.pdf) | unknown | Audit | 2023-08 | stale | Direct | contract_name | 80 | high |
| [V3_Lending_TrailOfBits_2023-07.pdf](https://github.com/arcadexyz/arcade-protocol/blob/main/audits/V3_Lending_TrailOfBits_2023-07.pdf) | Trail of Bits | Audit | 2023-07 | stale | Direct | contract_name | 78 | high |
| [V3_Rollovers_Omniscia_2023-08.pdf](https://github.com/arcadexyz/arcade-protocol/blob/main/audits/V3_Rollovers_Omniscia_2023-08.pdf) | unknown | Audit | 2023-08 | stale | Direct | contract_name | 5 | high |
| [V4_Lending_Renascence_2024_02.pdf](https://github.com/arcadexyz/arcade-protocol/blob/main/audits/V4_Lending_Renascence_2024_02.pdf) | unknown | Audit | 2024-02 | stale | Direct | contract_name | 31 | high |
| [arcade-staking-report-final.pdf](https://github.com/arcadexyz/dao-contracts/blob/main/audits/arcade-staking-report-final.pdf) | unknown | Audit | 2024-03 | stale | Direct | contract_name | 1 | high |
| [07152023_Omniscia_Audit_Arcade_Governance.pdf](https://github.com/arcadexyz/governance/blob/main/audits/07152023_Omniscia_Audit_Arcade_Governance.pdf) | unknown | Audit | 2023-07 | stale | Direct | contract_name | 12 | high |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | [`0x7de71b...c0b54d`](./contracts/ethereum-1/0x7de71bc6694ca827e043b18102caf01518c0b54d/) | AirdropSeason1 | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x72854f...8740f0`](./contracts/ethereum-1/0x72854fbb44d3dd87109d46a9298aeb0d018740f0/) | AirdropSingleSidedStaking | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x2b6f11...94a279`](./contracts/ethereum-1/0x2b6f11b2a783c928799c4e561da89cd06894a279/) | ArcadeCoreVoting | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x4bad23...c52244`](./contracts/ethereum-1/0x4bad2399f43a827ba3434cdd9b3ad1b5bac52244/) | ArcadeParadice | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xc7730a...e419c9`](./contracts/ethereum-1/0xc7730a89b50779e28b9f06f805874bf28ae419c9/) | BalanceQuery | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x094db3...01a8c6`](./contracts/ethereum-1/0x094db3031258d6204a4cfc99415eb66f9a01a8c6/) | FlashRolloverStakingVaultUpgrade | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x07352e...533dc9`](./contracts/ethereum-1/0x07352ed030c6fd8d12f8258d2df6f99cba533dc9/) | FlashRolloverV1toV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xa78f3e...4e657b`](./contracts/ethereum-1/0xa78f3ec4a858341fc9cae5672f7381e4e74e657b/) | LP1Migration | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x466e3e...359759`](./contracts/ethereum-1/0x466e3e08deb46f7ba9ce269d2e0858347b359759/) | LP1MigrationWithItems | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x7fa888...621fd5`](./contracts/ethereum-1/0x7fa888a801fc7b7e5e847239e58dd4e2dc621fd5/) | ReflectiveURIDescriptor | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x2055f7...dafc75`](./contracts/ethereum-1/0x2055f71ef369d26db683da0b8f8c62469bdafc75/) | StaticURIDescriptor | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x475114...41ff01`](./contracts/ethereum-1/0x47511465c397875deab7cf8f008d7922d041ff01/) | Timelock | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x4b9564...52bed2`](./contracts/ethereum-1/0x4b95640d56f81fc851f952793f4e5485e352bed2/) | VaultDepositRouter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x144b15...db8e1d`](./contracts/ethereum-1/0x144b1535a3ff4007aad8921419ee2e02cfdb8e1d/) | VaultInventoryReporter | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 58 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 2 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=10
- Match method counts: extraction_exact=390

Fork inheritance lineage and inherited audits are included when available.
