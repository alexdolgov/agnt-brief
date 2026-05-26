# Agentic Audit Brief: Sierra Protocol

## Project Overview

- Project: Sierra Protocol (`sierra-protocol`)
- Website: [https://sierra.money/](https://sierra.money/)
- Lifecycle: active (Tier 0, TVL trajectory)
- Generated: 2026-05-26T19:01:56.471Z
- Pipeline run: v2-pipeline-2026-05-26-695c23-aaf8
- Chains: avalanche, ethereum
- Contract surface: 78 unique implementations (127 raw deployments)
- DeFi Llama TVL: $32,675,268.71
- On-chain TVL (included contracts): $39,617,168.33
- TVL by chain: Avalanche $39,617,168.33

## Project Description

Sierra Protocol is a yield-bearing DeFi protocol that enables users to deposit assets into dynamic pools to earn yield. It operates across Ethereum and Avalanche, using a registry-based architecture to manage pools and track user deposits.

### Architecture

The Sierra Protocol family relies on shared infrastructure contracts like PoolRegistry and DepositAddressRegistry to manage pool deployments and user deposit addresses. The Blockchain Addresses family appears to be a subset focused on deposit address management, reusing the LYTPool contract and DepositAddressRegistry.

## Audit Coverage Summary

- Verified implementations audited: 1/25 (4.0%)
- Verified + Unaudited implementations: 24
- Verified by bytecode match: 0
- Unverified implementations: 53
- Unique implementations: 78
- Raw deployments: 127
- Audits discovered: 1
- Scoreable audits (matched contracts): 1
- ASD (verified + unaudited TVL): $5,328,457.75
- Latest audit: 2025-08 (fresh)
- Staleness: 1 fresh, 0 aging, 0 stale, 0 unknown
- Tier 1 coverage: 4.0% (Spearbit)

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| Spearbit | Tier 1 | 1 | 4.0% | 2025-08 |

## Contract Surface

### ✅ Verified + Audited (1)

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| LYTPool | core_logic | avalanche | [`0x6e6080...db78f7`](./contracts/avalanche-43114/0x6e6080e15f8c0010d333d8caeead29292adb78f7/) | ✅ Audited |

### ⚠️ Verified + Unaudited (24)

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| PoolDynamic | core_logic | ethereum | 4 deployments: ethereum [`0x08c682...ae7257`](./contracts/ethereum-1/0x08c6824fae6dcc966399739bf999b44c5aae7257/); ethereum `0x11fff7...a9622c`; avalanche `0x09ca60...b5e5d2`; avalanche `0x4a8094...0d5df6` | ⚠️ Unaudited |
| DepositAddressRegistry | registry | ethereum | 2 deployments: ethereum [`0x9bbbd0...f02789`](./contracts/ethereum-1/0x9bbbd0f71365aee2b7165d59d2ff373647f02789/); ethereum `0xcca3cc...9f5367` | ⚠️ Unaudited |
| ERC1967Proxy | proxy | ethereum | 5 deployments: ethereum [`0x3eeacc...71a49a`](./contracts/ethereum-1/0x3eeacc4309435ba1672d8d9265bc717a2c71a49a/); ethereum `0x4b5bf9...4227a8`; ethereum `0x6c59ca...447831`; ethereum `0xb2a69a...30d752`; ethereum `0xe8490a...66d421` | ⚠️ Unaudited |
| LytPoolOFT | core_logic | ethereum | [`0x6bf778...10e0fc`](./contracts/ethereum-1/0x6bf7788eaa948d9ffba7e9bb386e2d3c9810e0fc/) | ⚠️ Unaudited |
| Pool | core_logic | ethereum | 6 deployments: ethereum [`0x007b58...75923c`](./contracts/ethereum-1/0x007b58a41566aa4075fd078d4147a1eaff75923c/); ethereum `0x253ccc...610070`; ethereum `0x66f6ea...cc2792`; ethereum `0x941f7b...4ec54f`; ethereum `0xc472d3...38bcaa`; ethereum `0xe28882...249247` | ⚠️ Unaudited |
| PoolAccessControl | core_logic | ethereum | [`0xb95a86...1b2454`](./contracts/ethereum-1/0xb95a860b546933305618d7b8bd515e29a61b2454/) | ⚠️ Unaudited |
| PoolController | core_logic | ethereum | 3 deployments: ethereum [`0x4b356b...b92e97`](./contracts/ethereum-1/0x4b356be5b818509ece59385c6ed46da460b92e97/); ethereum `0x653bd1...c4ef39`; ethereum `0xc7883c...080ea3` | ⚠️ Unaudited |
| PoolControllerDynamic | core_logic | ethereum | 2 deployments: ethereum [`0x330320...afb3ba`](./contracts/ethereum-1/0x3303202b4b4b5155885ed529f3df704997afb3ba/); ethereum `0x580a0f...b2b85c` | ⚠️ Unaudited |
| PoolControllerFactoryDynamic | registry | ethereum | [`0x93076f...cd2a71`](./contracts/ethereum-1/0x93076fe579156bec96408332d21d360cd8cd2a71/) | ⚠️ Unaudited |
| PoolControllerFactoryFlex | registry | ethereum | 2 deployments: ethereum [`0x447239...97dbf4`](./contracts/ethereum-1/0x447239a5c9940ccafa566977c91f17f5d797dbf4/); ethereum `0x6f3cab...0b0dcc` | ⚠️ Unaudited |
| PoolControllerFlex | core_logic | ethereum | 10 deployments: ethereum [`0x0264f3...12c547`](./contracts/ethereum-1/0x0264f33c7716d93053a28efec730bb5e7412c547/); ethereum `0x266a75...98d5d7`; ethereum `0x34bf31...71596b`; ethereum `0x4d8276...402b99`; ethereum `0x6ac591...2b3d93`; ethereum `0x70b661...f1d2c3`; ethereum `0x758859...147ec8`; ethereum `0x912849...6953db`; ethereum `0xb7160e...a86529`; ethereum `0xea12f3...f33c6d` | ⚠️ Unaudited |
| PoolFactory | registry | ethereum | [`0x9e70b6...ba740b`](./contracts/ethereum-1/0x9e70b675ab0f296cee11de25b8368e8d30ba740b/) | ⚠️ Unaudited |
| PoolFlex | core_logic | ethereum | 3 deployments: ethereum [`0xdd496f...96445e`](./contracts/ethereum-1/0xdd496f2b977057e56a06eb3ac9f6552fbe96445e/); ethereum `0xea8ae2...6fd0d4`; ethereum `0xf6e658...b402e9` | ⚠️ Unaudited |
| PoolLib | core_logic | ethereum | 2 deployments: ethereum [`0x33b139...25a507`](./contracts/ethereum-1/0x33b13987d69f3f117579bef4b235ae909225a507/); ethereum `0x5e3830...d95561` | ⚠️ Unaudited |
| PoolLibFlex | core_logic | ethereum | 2 deployments: ethereum [`0x78bfc8...e2e169`](./contracts/ethereum-1/0x78bfc8a7197abfb81d4774e7936a76092be2e169/); ethereum `0xeadeac...91865b` | ⚠️ Unaudited |
| PoolRegistry | registry | ethereum | 5 deployments: ethereum [`0x0c6e11...61f692`](./contracts/ethereum-1/0x0c6e11a37a7313c282621821455ad826fb61f692/); ethereum `0x303200...835233`; ethereum `0x9d5e36...1689b7`; ethereum `0xd05353...db92d9`; ethereum `0xe234cd...9dc7bc` | ⚠️ Unaudited |
| QueryLib | unknown | ethereum | 2 deployments: ethereum [`0xa5677f...f1b33f`](./contracts/ethereum-1/0xa5677fd1d1caf56cd8924edc589045978cf1b33f/); ethereum `0xea7de0...20435e` | ⚠️ Unaudited |
| ServiceConfigurationV6 | governance | ethereum | 10 deployments: ethereum [`0x0c583a...206611`](./contracts/ethereum-1/0x0c583a7926635301ddbc3cc9fd613df156206611/); ethereum `0x1048f2...bdb6d8`; ethereum `0x2f6d91...4853ce`; ethereum `0x51e8bb...e356f6`; ethereum `0x673897...9d226f`; ethereum `0xbca5cf...8990b2`; ethereum `0xc5524d...187380`; ethereum `0xde6bf1...f60aaa`; ethereum `0xe958bb...6e3c1b`; ethereum `0xec4f65...abab98` | ⚠️ Unaudited |
| ToSAcceptanceRegistry | registry | ethereum | 2 deployments: ethereum [`0x0e610a...057733`](./contracts/ethereum-1/0x0e610a503f541ff58a170a647426c89bba057733/); ethereum `0x6848a0...f584b5` | ⚠️ Unaudited |
| Vault | core_logic | ethereum | [`0xfb7799...63ae44`](./contracts/ethereum-1/0xfb7799c33ea95345839f64544c8a3f32d263ae44/) | ⚠️ Unaudited |
| VaultFactory | registry | ethereum | 2 deployments: ethereum [`0x324667...aedb33`](./contracts/ethereum-1/0x3246677dad49bf6bcbe206741a408cd4c2aedb33/); ethereum `0x5dd671...641abc` | ⚠️ Unaudited |
| WithdrawController | operational_periphery | ethereum | 3 deployments: ethereum [`0x0f41b4...9c6548`](./contracts/ethereum-1/0x0f41b4898bdd22bb92e78bc2c31247306f9c6548/); ethereum `0xb46e0e...6430bc`; ethereum `0xef675e...2d7060` | ⚠️ Unaudited |
| WithdrawDepositControllerFactoryFlex | operational_periphery | ethereum | [`0x616c3d...07239d`](./contracts/ethereum-1/0x616c3d07ec9780d40eaac97d2b71bbfb5c07239d/) | ⚠️ Unaudited |
| WithdrawDepositControllerFlex | operational_periphery | ethereum | 2 deployments: ethereum [`0x0e0266...dd7400`](./contracts/ethereum-1/0x0e02665b9c537822b99a2ff07cf854fcefdd7400/); ethereum `0x4d468f...9f3ae5` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (53)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| UnnamedContract | unknown | ethereum | `0x038275...9a5fda` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x038b5e...3136b9` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x06dc12...835002` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x0eba83...f0ac46` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x1d742d...2e84a7` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x29c978...1b95d5` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x2f9730...f1e2a8` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x312ee7...43035e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x34deae...ed4de0` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x3548ee...3a52bd` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x3d7e4a...500c57` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x436e49...ef4e60` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x450b94...1fffc6` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x483a8f...5e060a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x4bcac5...4b6dfd` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x51496c...acf74b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x518f65...d5f7ff` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x5523df...bc3f02` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x560f4c...0703e5` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x6085f4...a4cbd0` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x6320ee...731671` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x66be61...88fff8` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x67228c...4b9e02` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x6eb641...2b3432` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x746253...8a1a9c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x785b01...199a18` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x8035c1...d2b2da` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x82c5b9...c22115` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x8b0377...8388ec` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x8bbd98...699a61` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x8fb0a9...f22679` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x96b5da...7254c8` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x9a22f5...3d425d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xa26791...730559` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xa3be07...6014e1` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xabf5be...748010` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xb1046d...f624b8` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xb19b8f...9ef4bf` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xb424e2...db103f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xbe22ff...b550af` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xc02090...4c641f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xc2d68d...0bcca3` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xc2df5c...250f39` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xc641de...b09ed3` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xc6a014...57e01d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xcbc913...15567e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xdf0d36...325d1d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xe5db48...83957c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xe946a0...5c5121` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xed6171...a14cde` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xef2b7b...f444ea` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xf26b44...560d0a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xf4f3c1...a5626a` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [The Sierra Protocol was built using [OpenTrade](https://www.opentrade.io/)'s Liquid Yield Token (LYT) protocol, which was audited by Spearbit's Cantina in August 2025 and the report is available here: <>. There were no High Risk or Critical findings.](https://cantina.xyz/portfolio/967eeb2b-b6f6-4b17-b819-9bfb450876ca) | Spearbit | Audit | 2025-08 | fresh | Direct | contract_name | 1 | high |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | [`0x08c682...ae7257`](./contracts/ethereum-1/0x08c6824fae6dcc966399739bf999b44c5aae7257/) | PoolDynamic | core_logic | $5,328,457.75 | Verified native implementation with $5,328,457.75 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x9bbbd0...f02789`](./contracts/ethereum-1/0x9bbbd0f71365aee2b7165d59d2ff373647f02789/) | DepositAddressRegistry | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x6bf778...10e0fc`](./contracts/ethereum-1/0x6bf7788eaa948d9ffba7e9bb386e2d3c9810e0fc/) | LytPoolOFT | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x007b58...75923c`](./contracts/ethereum-1/0x007b58a41566aa4075fd078d4147a1eaff75923c/) | Pool | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xb95a86...1b2454`](./contracts/ethereum-1/0xb95a860b546933305618d7b8bd515e29a61b2454/) | PoolAccessControl | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x4b356b...b92e97`](./contracts/ethereum-1/0x4b356be5b818509ece59385c6ed46da460b92e97/) | PoolController | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x330320...afb3ba`](./contracts/ethereum-1/0x3303202b4b4b5155885ed529f3df704997afb3ba/) | PoolControllerDynamic | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x93076f...cd2a71`](./contracts/ethereum-1/0x93076fe579156bec96408332d21d360cd8cd2a71/) | PoolControllerFactoryDynamic | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x447239...97dbf4`](./contracts/ethereum-1/0x447239a5c9940ccafa566977c91f17f5d797dbf4/) | PoolControllerFactoryFlex | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0264f3...12c547`](./contracts/ethereum-1/0x0264f33c7716d93053a28efec730bb5e7412c547/) | PoolControllerFlex | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x9e70b6...ba740b`](./contracts/ethereum-1/0x9e70b675ab0f296cee11de25b8368e8d30ba740b/) | PoolFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xdd496f...96445e`](./contracts/ethereum-1/0xdd496f2b977057e56a06eb3ac9f6552fbe96445e/) | PoolFlex | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x33b139...25a507`](./contracts/ethereum-1/0x33b13987d69f3f117579bef4b235ae909225a507/) | PoolLib | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x78bfc8...e2e169`](./contracts/ethereum-1/0x78bfc8a7197abfb81d4774e7936a76092be2e169/) | PoolLibFlex | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xa5677f...f1b33f`](./contracts/ethereum-1/0xa5677fd1d1caf56cd8924edc589045978cf1b33f/) | QueryLib | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0c583a...206611`](./contracts/ethereum-1/0x0c583a7926635301ddbc3cc9fd613df156206611/) | ServiceConfigurationV6 | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0e610a...057733`](./contracts/ethereum-1/0x0e610a503f541ff58a170a647426c89bba057733/) | ToSAcceptanceRegistry | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xfb7799...63ae44`](./contracts/ethereum-1/0xfb7799c33ea95345839f64544c8a3f32d263ae44/) | Vault | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x324667...aedb33`](./contracts/ethereum-1/0x3246677dad49bf6bcbe206741a408cd4c2aedb33/) | VaultFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0f41b4...9c6548`](./contracts/ethereum-1/0x0f41b4898bdd22bb92e78bc2c31247306f9c6548/) | WithdrawController | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x616c3d...07239d`](./contracts/ethereum-1/0x616c3d07ec9780d40eaac97d2b71bbfb5c07239d/) | WithdrawDepositControllerFactoryFlex | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0e0266...dd7400`](./contracts/ethereum-1/0x0e02665b9c537822b99a2ff07cf854fcefdd7400/) | WithdrawDepositControllerFlex | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 56 |
| upstream | 0 |
| standard_library | 3 |
| needs_review | 19 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=1
- Match method counts: extraction_exact=1

Fork inheritance lineage and inherited audits are included when available.
