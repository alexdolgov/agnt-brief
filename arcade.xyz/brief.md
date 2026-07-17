# Agentic Audit Brief: Arcade.xyz

⚠️ Lifecycle status: DEAD - TVL dropped 59.5% over 90 days

## Project Overview

- Project: Arcade.xyz (`arcade.xyz`)
- Website: [https://www.arcade.xyz](https://www.arcade.xyz)
- Lifecycle: dead (Tier 1, dead)
- Generated: 2026-07-04T14:53:04.074Z
- Pipeline run: v2-pipeline-2026-07-01-2b719a-f2f0
- Chains: ethereum
- Contract surface: 42 unique implementations (71 raw deployments)
- DeFi Llama TVL: $4,748,668.10
- On-chain TVL (included contracts): $159,160.14
- TVL by chain: Ethereum $159,160.14

## Project Description

NFT Lending. Structurally: 51 project-authored contract(s) across 1 chain(s); 2 ERC20 tokens, 6 ERC721 NFTs, 1 ERC1155 multi-token; role-gated via AccessControl; upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 8 functional families. Its contracts share 13 common project-authored base contract(s) (v2tov3rolloverbase, feelookups, erc721permit). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 148; live-surface contracts included: 66 (49 live, 17 unknown).
- Excluded by liveness: 82 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 12/22 (54.5%)
- Deployed-live implementations: 25 of 42 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 12/25
- Verified + Unaudited implementations: 13
- Verified by bytecode match: 0
- Unverified implementations: 17
- Unique implementations: 42
- Raw deployments: 71
- Audits discovered: 10 (10 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 10
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2024-03 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 10 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 2 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 10 match-unverified
- Tier 1 coverage: 22.7% (Trail of Bits)
- Note: This protocol is classified as [dead]. ASD of n/a represents exposure in a protocol with dead activity.

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| unknown | Tier 2 | 12 | 48.0% | 2024-03 |
| Quantstamp | Tier 2 | 5 | 20.0% | 2022-06 |
| Trail of Bits | Tier 1 | 5 | 20.0% | 2023-07 |

## Contract Surface

### ✅ Verified + Audited (12)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| ArcadeToken | token | ethereum | n/a | [`0xe020b01b6fbd83066aa2e8ee0ccd1eb8d9cc70bf`](./contracts/ethereum-1/0xe020b01b6fbd83066aa2e8ee0ccd1eb8d9cc70bf/) | ✅ Audited |
| ArcadeAirdrop | operational_periphery | ethereum | n/a | [`0x2b49c3b0340df9eca71d9f130084821c63c9ae38`](./contracts/ethereum-1/0x2b49c3b0340df9eca71d9f130084821c63c9ae38/) | ✅ Audited |
| ArcadeStakingRewards | unknown | ethereum | n/a | [`0x80bddd56b947c547ab8964d80e98e42ff77a5793`](./contracts/ethereum-1/0x80bddd56b947c547ab8964d80e98e42ff77a5793/) | ✅ Audited |
| ARCDVestingVault | operational_periphery | ethereum | n/a | [`0xae40af135c060e10b218c617c2d74a370b09c40f`](./contracts/ethereum-1/0xae40af135c060e10b218c617c2d74a370b09c40f/) | ✅ Audited |
| ImmutableVestingVault | operational_periphery | ethereum | n/a | [`0xdd7a92062d1939357fb17a66288cde30b3711e53`](./contracts/ethereum-1/0xdd7a92062d1939357fb17a66288cde30b3711e53/) | ✅ Audited |
| LoanCore | unknown | ethereum | n/a | 6 deployments: ethereum [`0x3bbd0b701755130f14ebb81c8581e1be55eb6b15`](./contracts/ethereum-1/0x3bbd0b701755130f14ebb81c8581e1be55eb6b15/); ethereum `0x606e4a441290314aeaf494194467fd2bb844064a`; ethereum `0x7691ee8febd406968d46f9de96cb8cc18fc8b325`; ethereum `0x89bc08ba00f135d608bc335f6b33d7a9abcc98af`; ethereum `0xcb98358dcecbd4aa884b4453a0734a9980654047`; ethereum `0xecbaac1ad75d9444b621d309b0f9c045455d78f5` | ✅ Audited |
| OriginationController | governance | ethereum | n/a | [`0xb7bfcca7d7ff0f371867b770856fac184b185878`](./contracts/ethereum-1/0xb7bfcca7d7ff0f371867b770856fac184b185878/) | ✅ Audited |
| PromissoryNote | unknown | ethereum | n/a | 13 deployments: ethereum [`0x1123710f81cb573ab22dd6de90de17692f8ee8b0`](./contracts/ethereum-1/0x1123710f81cb573ab22dd6de90de17692f8ee8b0/); ethereum `0x337104a4f06260ff327d6734c555a0f5d8f863aa`; ethereum `0x349a026a43ffa8e2ab4c4e59fcaa93f87bd8ddee`; ethereum `0x430d820fe598e2ab872d4e95bb971cbc761ed280`; ethereum `0x562803b258cc1b5ecc1398443940e6ff15f649d2`; ethereum `0x5783d0698a053762bcc9ee0b403b26448dbb0414`; ethereum `0x6397141fad44502bad00e0ccbe80a910ec9bbc87`; ethereum `0x8d366662b3dae8037cb50d099986d699f1ab8e15`; ethereum `0x92ed78b41537c902ad287608d8535bb6780a7618`; ethereum `0xa5f4b242bb44ba742f08dbaf3b154cda7e172ac0`; ethereum `0xa75b02c9b55d7854a727e67fc662e932d50ee4c4`; ethereum `0xd45ce8173262655c1acba3b376b1a77e4d7cdc7f`; ethereum `0xe5b12befaf3a91065da7fdd461ded2d8f8ecb7be` | ✅ Audited |
| RepaymentController | governance | ethereum | n/a | [`0x74241e1a9c021643289476426b9b70229ab40d53`](./contracts/ethereum-1/0x74241e1a9c021643289476426b9b70229ab40d53/) | ✅ Audited |
| V2ToV3Rollover | unknown | ethereum | n/a | 3 deployments: ethereum [`0x0bc05fc8ebfb362592f9703a33fc8c3953ea0ed4`](./contracts/ethereum-1/0x0bc05fc8ebfb362592f9703a33fc8c3953ea0ed4/); ethereum `0x1f59f83c3962481e8d490c9d65484202e4a3f9db`; ethereum `0xdb0655752a3cd23b8fd360af596e71ee924c5253` | ✅ Audited |
| V2ToV3RolloverWithItems | unknown | ethereum | n/a | 2 deployments: ethereum [`0x3c77269ca7f4ac42b6f0bfc10d9f44406351d396`](./contracts/ethereum-1/0x3c77269ca7f4ac42b6f0bfc10d9f44406351d396/); ethereum `0xac33e4abf40293452422283730ed54a6af139e7b` | ✅ Audited |
| VaultFactory | registry | ethereum | n/a | [`0x269363665dbb1582b143099a3cb467e98a476d55`](./contracts/ethereum-1/0x269363665dbb1582b143099a3cb467e98a476d55/) | ✅ Audited |

### ⚠️ Verified + Unaudited (13)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| AirdropSingleSidedStaking | operational_periphery | ethereum | n/a | [`0x72854fbb44d3dd87109d46a9298aeb0d018740f0`](./contracts/ethereum-1/0x72854fbb44d3dd87109d46a9298aeb0d018740f0/) | ⚠️ Unaudited |
| ArcadeCoreVoting | unknown | ethereum | n/a | [`0x54b7235db74103395dd48a2c3dd993e3b7d39856`](./contracts/ethereum-1/0x54b7235db74103395dd48a2c3dd993e3b7d39856/) | ⚠️ Unaudited |
| ArcadeItemsVerifier | periphery | ethereum | n/a | 2 deployments: ethereum [`0xabfd9d9e4157695db5812eee279d923a4f948df0`](./contracts/ethereum-1/0xabfd9d9e4157695db5812eee279d923a4f948df0/); ethereum `0xc39c5d2fc523f26b5a83ab6c0c802c6e80a4df1d` | ⚠️ Unaudited |
| LoanCore | unknown | ethereum | n/a | 2 deployments: ethereum [`0x3a50c25f11cb96a30bfcba4dc0c44da1907dd935`](./contracts/ethereum-1/0x3a50c25f11cb96a30bfcba4dc0c44da1907dd935/); ethereum `0x4845b43b8f84653dab594fe7a12e9697b9408a9a` | ⚠️ Unaudited |
| LoanCore | unknown | ethereum | n/a | 2 deployments: ethereum [`0x3f80d1a3fdfadc4eec9cd7f7ab2039d544032d43`](./contracts/ethereum-1/0x3f80d1a3fdfadc4eec9cd7f7ab2039d544032d43/); ethereum `0xf7950d9e686247916c319bc175fffaf4fe6df89d` | ⚠️ Unaudited |
| LoanCore | unknown | ethereum | n/a | [`0x81b2f8fc75bab64a6b144aa6d2faa127b4fa7fd9`](./contracts/ethereum-1/0x81b2f8fc75bab64a6b144aa6d2faa127b4fa7fd9/) | ⚠️ Unaudited |
| OriginationController | governance | ethereum | n/a | [`0x4c52ca29388a8a854095fd2beb83191d68dc840b`](./contracts/ethereum-1/0x4c52ca29388a8a854095fd2beb83191d68dc840b/) | ⚠️ Unaudited |
| OriginationController | governance | ethereum | n/a | 2 deployments: ethereum [`0x567ccb050e793235574f1261c24ea2304436c117`](./contracts/ethereum-1/0x567ccb050e793235574f1261c24ea2304436c117/); ethereum `0x5fa8e713a058b2eef293ef0317e629ba88e9b88c` | ⚠️ Unaudited |
| UniswapV2Pair | unknown | ethereum | n/a | [`0x06af8c358c0787640588734e4733a779961a2bca`](./contracts/ethereum-1/0x06af8c358c0787640588734e4733a779961a2bca/) | ⚠️ Unaudited |
| VaultFactory | registry | ethereum | n/a | 3 deployments: ethereum [`0x21b346622e607fcc936a320d3ab8224fb36b3c0c`](./contracts/ethereum-1/0x21b346622e607fcc936a320d3ab8224fb36b3c0c/); ethereum `0x6e9b4c2f6bd57b7b924d29b5dcfca1273ecc94a2`; ethereum `0x7594916540e60fc8d6e9ba5c3c83632f7001cf53` | ⚠️ Unaudited |
| VaultFactory | registry | ethereum | n/a | 2 deployments: ethereum [`0x371e4f7698760caac721989e5f1af72b7d6c596f`](./contracts/ethereum-1/0x371e4f7698760caac721989e5f1af72b7d6c596f/); ethereum `0x666faa632e5f7ba20a7fce36596a6736f87133be` | ⚠️ Unaudited |
| VaultFactory | registry | ethereum | n/a | 2 deployments: ethereum [`0x4cf03ba5332bbfee54db0701f15b480c39bc54b1`](./contracts/ethereum-1/0x4cf03ba5332bbfee54db0701f15b480c39bc54b1/); ethereum `0x8334812a584b5f7cb7f794484e07692e1748de7c` | ⚠️ Unaudited |
| VaultFactory | registry | ethereum | n/a | 2 deployments: ethereum [`0x4e6a527c7ffcfbe2fa16d14bf9c96d8fcec4ab7c`](./contracts/ethereum-1/0x4e6a527c7ffcfbe2fa16d14bf9c96d8fcec4ab7c/); ethereum `0x86eb882404bfee5847b5067f70da498ec8efdb03` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (17)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | ethereum | n/a | `0x01f8ce6d77691807831abf88be8e525141350aee` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x0ac4742c05a8f61a382e428a0adbcf378bd0d5e8` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x199150b87ca83f8672e092baacb6fecba7e7dd0a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x24c55ec2b20b72f30bcde3e24aaedb8af24b030b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x27ed938ff4d532332c2701866d7869edcb39d7e4` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x2ea7e9d91bdc7dc1ca0135d6f485bd731799bf56` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x35eb4dbc2436ddc6bc3ed94a397ac32bba99968a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x384582c4d2f4ee74a5bad88d1ab699160ba3ceaf` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x39375ef4d5a9a5df5562f82eedcf9b7ae8dcb4d1` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x541ebfd631ceee05c11ff2f348c53d1adbb5dbbe` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x6d8a475ca76626168d9e0e59360ad74d2313a958` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x7c866452ef99f82e900dd3d35f0ad1f1e3e10b11` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xb61517330cc03210e83bc2e98bc648eeb15ddc6d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xc06f3ec8601dc3e8116edd05d5a1721dc2d7250e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xc3b2705a875305bc6b67ef000fc08183e48f7eb1` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xe1a6dadfafa203a8e086428d91c302568dda5dd5` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xf72516d0d038ec8c0ef0fe8f7f4eead8ee1c31e2` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [V1_Lending_LeastAuthority_2021-08.pdf](https://github.com/arcadexyz/arcade-protocol/blob/main/audits/V1_Lending_LeastAuthority_2021-08.pdf) | unknown | Audit | 2021-08 | stale | Direct | contract_name | 2 | n/a |
| [V1_Lending_Macro_2022-04.pdf](https://github.com/arcadexyz/arcade-protocol/blob/main/audits/V1_Lending_Macro_2022-04.pdf) | unknown | Audit | 2022-04 | stale | Direct | contract_name | 4 | n/a |
| [V2_Lending_Quantstamp_2022_06.pdf](https://github.com/arcadexyz/arcade-protocol/blob/main/audits/V2_Lending_Quantstamp_2022_06.pdf) | Quantstamp | Audit | 2022-06 | stale | Direct | contract_name | 5 | n/a |
| [V2_Lending_Roku_2022_06.pdf](https://github.com/arcadexyz/arcade-protocol/blob/main/audits/V2_Lending_Roku_2022_06.pdf) | unknown | Audit | 2022-06 | stale | Direct | contract_name | 4 | n/a |
| [V3_Lending_Omniscia_2023-08.pdf](https://github.com/arcadexyz/arcade-protocol/blob/main/audits/V3_Lending_Omniscia_2023-08.pdf) | unknown | Audit | 2023-08 | stale | Direct | contract_name | 5 | n/a |
| [V3_Lending_TrailOfBits_2023-07.pdf](https://github.com/arcadexyz/arcade-protocol/blob/main/audits/V3_Lending_TrailOfBits_2023-07.pdf) | Trail of Bits | Audit | 2023-07 | stale | Direct | contract_name | 5 | n/a |
| [V3_Rollovers_Omniscia_2023-08.pdf](https://github.com/arcadexyz/arcade-protocol/blob/main/audits/V3_Rollovers_Omniscia_2023-08.pdf) | unknown | Audit | 2023-08 | stale | Direct | contract_name | 5 | high |
| [V4_Lending_Renascence_2024_02.pdf](https://github.com/arcadexyz/arcade-protocol/blob/main/audits/V4_Lending_Renascence_2024_02.pdf) | unknown | Audit | 2024-02 | stale | Direct | contract_name | 3 | n/a |
| [arcade-staking-report-final.pdf](https://github.com/arcadexyz/dao-contracts/blob/main/audits/arcade-staking-report-final.pdf) | unknown | Audit | 2024-03 | stale | Direct | contract_name | 1 | n/a |
| [07152023_Omniscia_Audit_Arcade_Governance.pdf](https://github.com/arcadexyz/governance/blob/main/audits/07152023_Omniscia_Audit_Arcade_Governance.pdf) | unknown | Audit | 2023-07 | stale | Direct | contract_name | 4 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | [`0x72854fbb44d3dd87109d46a9298aeb0d018740f0`](./contracts/ethereum-1/0x72854fbb44d3dd87109d46a9298aeb0d018740f0/) | AirdropSingleSidedStaking | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x54b7235db74103395dd48a2c3dd993e3b7d39856`](./contracts/ethereum-1/0x54b7235db74103395dd48a2c3dd993e3b7d39856/) | ArcadeCoreVoting | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xabfd9d9e4157695db5812eee279d923a4f948df0`](./contracts/ethereum-1/0xabfd9d9e4157695db5812eee279d923a4f948df0/) | ArcadeItemsVerifier | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x3a50c25f11cb96a30bfcba4dc0c44da1907dd935`](./contracts/ethereum-1/0x3a50c25f11cb96a30bfcba4dc0c44da1907dd935/) | LoanCore | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x21b346622e607fcc936a320d3ab8224fb36b3c0c`](./contracts/ethereum-1/0x21b346622e607fcc936a320d3ab8224fb36b3c0c/) | VaultFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x371e4f7698760caac721989e5f1af72b7d6c596f`](./contracts/ethereum-1/0x371e4f7698760caac721989e5f1af72b7d6c596f/) | VaultFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x4cf03ba5332bbfee54db0701f15b480c39bc54b1`](./contracts/ethereum-1/0x4cf03ba5332bbfee54db0701f15b480c39bc54b1/) | VaultFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x4e6a527c7ffcfbe2fa16d14bf9c96d8fcec4ab7c`](./contracts/ethereum-1/0x4e6a527c7ffcfbe2fa16d14bf9c96d8fcec4ab7c/) | VaultFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 36 |
| upstream | 1 |
| standard_library | 4 |
| needs_review | 1 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=1
- Match method counts: contract_name=33, extraction_exact=5

Fork inheritance lineage and inherited audits are included when available.
