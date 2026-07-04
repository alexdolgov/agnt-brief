# Agentic Audit Brief: Sierra Protocol

## Project Overview

- Project: Sierra Protocol (`sierra-protocol`)
- Website: [https://sierra.money/](https://sierra.money/)
- Lifecycle: unknown
- Generated: 2026-07-03T21:06:54.173Z
- Pipeline run: v2-pipeline-2026-07-01-3e33f2-3e24
- Chains: avalanche, ethereum
- Contract surface: 107 unique implementations (144 raw deployments)
- DeFi Llama TVL: $40,235,043.10
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Yield. Structurally: 36 project-authored contract(s) across 2 chain(s); 3 ERC4626 vaults, 8 ERC20 tokens; role-gated via AccessControl; upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 7 functional families. Its contracts share 9 common project-authored base contract(s) (beaconimplementation, deployeruupsupgradeable, beaconproxyfactory). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 208; live-surface contracts included: 144 (37 live, 107 unknown).
- Excluded by liveness: 64 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 0/11 (0.0%)
- Deployed-live implementations: 11 of 107 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 0/15
- Verified + Unaudited implementations: 15
- Verified by bytecode match: 0
- Unverified implementations: 92
- Unique implementations: 107
- Raw deployments: 144
- Audits discovered: 1 (1 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2025-08 (fresh)
- Audit staleness (calendar age): 1 fresh, 0 aging, 0 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (15)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| DepositAddressRegistry | unknown | avalanche | n/a | 2 deployments: avalanche [`0x194951...15bec2`](./contracts/avalanche-43114/0x194951b1f48b8145d0672b0b606337fab615bec2/); avalanche `0x616c3d...07239d` | ⚠️ Unaudited |
| FiatTokenV2_2 | token | avalanche | n/a | [`0xb97ef9...c48a6e`](./contracts/avalanche-43114/0xb97ef9ef8734c71904d8002f8b6bc66dd9c48a6e/) | ⚠️ Unaudited |
| LytPoolOFT | core_logic | ethereum | n/a | [`0x6bf778...10e0fc`](./contracts/ethereum-1/0x6bf7788eaa948d9ffba7e9bb386e2d3c9810e0fc/) | ⚠️ Unaudited |
| LytPoolOFTAdapter | adapter | avalanche | n/a | [`0xc472d3...38bcaa`](./contracts/avalanche-43114/0xc472d3a47719de5f9d808ca91d7b70bd2138bcaa/) | ⚠️ Unaudited |
| PoolControllerFactory | unknown | avalanche | n/a | [`0x955771...a0ce25`](./contracts/avalanche-43114/0x95577109dd671ee73e9c867183de9f9b95a0ce25/) | ⚠️ Unaudited |
| PoolControllerFactoryFlex | registry | ethereum | n/a | 2 deployments: ethereum [`0x447239...97dbf4`](./contracts/ethereum-1/0x447239a5c9940ccafa566977c91f17f5d797dbf4/); ethereum `0x6f3cab...0b0dcc` | ⚠️ Unaudited |
| PoolControllerFlex | core_logic | ethereum | n/a | 12 deployments: ethereum [`0x0264f3...12c547`](./contracts/ethereum-1/0x0264f33c7716d93053a28efec730bb5e7412c547/); ethereum `0x266a75...98d5d7`; ethereum `0x34bf31...71596b`; ethereum `0x4d8276...402b99`; ethereum `0x6ac591...2b3d93`; ethereum `0x70b661...f1d2c3`; ethereum `0x758859...147ec8`; ethereum `0x912849...6953db`; ethereum `0xb7160e...a86529`; ethereum `0xea12f3...f33c6d`; avalanche `0x4d468f...9f3ae5`; avalanche `0x5523df...bc3f02` | ⚠️ Unaudited |
| PoolControllerFlex | unknown | avalanche | n/a | 2 deployments: avalanche [`0x67228c...4b9e02`](./contracts/avalanche-43114/0x67228cdec83c012cd4dd62c15f07e7f9f94b9e02/); avalanche `0xb7160e...a86529` | ⚠️ Unaudited |
| PoolFlex | unknown | avalanche | n/a | 4 deployments: ethereum `0xdd496f...96445e`; ethereum `0xea8ae2...6fd0d4`; ethereum `0xf6e658...b402e9`; avalanche [`0xc85d9b...41ea40`](./contracts/avalanche-43114/0xc85d9b69a3cfd606cf4564fcad85f9f04c41ea40/) | ⚠️ Unaudited |
| PoolLibFlex | unknown | ethereum | n/a | 3 deployments: ethereum [`0x78bfc8...e2e169`](./contracts/ethereum-1/0x78bfc8a7197abfb81d4774e7936a76092be2e169/); ethereum `0xeadeac...91865b`; avalanche `0xb19b8f...9ef4bf` | ⚠️ Unaudited |
| ServiceConfigurationV6 | unknown | avalanche | n/a | 16 deployments: ethereum `0x0c583a...206611`; ethereum `0x2f6d91...4853ce`; ethereum `0x51e8bb...e356f6`; ethereum `0x673897...9d226f`; ethereum `0xbca5cf...8990b2`; ethereum `0xc5524d...187380`; ethereum `0xde6bf1...f60aaa`; ethereum `0xe958bb...6e3c1b`; avalanche [`0x061e68...087605`](./contracts/avalanche-43114/0x061e680724a10c24ffb87b6f74c0805c64087605/); avalanche `0x45b5ed...d70f69`; avalanche `0x566d58...15601a`; avalanche `0x8df523...fedddf`; avalanche `0xa550b2...dd2ae0`; avalanche `0xc30163...11fa4e`; avalanche `0xccbde0...0d4a1b`; avalanche `0xd66d33...d52c41` | ⚠️ Unaudited |
| VaultFactory | unknown | avalanche | n/a | 2 deployments: avalanche [`0x72bd1f...e21e97`](./contracts/avalanche-43114/0x72bd1f7d7121327a597cca3d59b8b363b1e21e97/); avalanche `0xe5db48...83957c` | ⚠️ Unaudited |
| WithdrawControllerFactory | unknown | avalanche | n/a | [`0x8fb0a9...f22679`](./contracts/avalanche-43114/0x8fb0a9351d8d976a030dbbcf34536e8f9bf22679/) | ⚠️ Unaudited |
| WithdrawDepositControllerFactoryFlex | unknown | ethereum | n/a | [`0x616c3d...07239d`](./contracts/ethereum-1/0x616c3d07ec9780d40eaac97d2b71bbfb5c07239d/) | ⚠️ Unaudited |
| WithdrawDepositControllerFlex | unknown | ethereum | n/a | 3 deployments: ethereum [`0x0e0266...dd7400`](./contracts/ethereum-1/0x0e02665b9c537822b99a2ff07cf854fcefdd7400/); ethereum `0x4d468f...9f3ae5`; avalanche `0x624de5...9d43a9` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (92)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| DepositAddressRegistry | unknown | ethereum | n/a | `0x9bbbd0...f02789` | ❓ Unverified |
| Pool | unknown | ethereum | n/a | `0xc472d3...38bcaa` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x038275...9a5fda` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x038b5e...3136b9` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x06dc12...835002` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x0eba83...f0ac46` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x1d742d...2e84a7` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x29c978...1b95d5` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x2f9730...f1e2a8` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x312ee7...43035e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x34deae...ed4de0` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x3548ee...3a52bd` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x3d7e4a...500c57` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x436e49...ef4e60` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x450b94...1fffc6` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x483a8f...5e060a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x4bcac5...4b6dfd` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x51496c...acf74b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x518f65...d5f7ff` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x5523df...bc3f02` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x560f4c...0703e5` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x6085f4...a4cbd0` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x6320ee...731671` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x66be61...88fff8` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x67228c...4b9e02` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x6eb641...2b3432` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x746253...8a1a9c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x785b01...199a18` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x8035c1...d2b2da` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x82c5b9...c22115` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x8b0377...8388ec` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x8bbd98...699a61` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x8fb0a9...f22679` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x96b5da...7254c8` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x9a22f5...3d425d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xa26791...730559` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xa3be07...6014e1` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xabf5be...748010` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xb1046d...f624b8` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xb19b8f...9ef4bf` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xb424e2...db103f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xbe22ff...b550af` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xc02090...4c641f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xc2d68d...0bcca3` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xc2df5c...250f39` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xc641de...b09ed3` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xc6a014...57e01d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xcbc913...15567e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xdf0d36...325d1d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xe5db48...83957c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xe946a0...5c5121` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xed6171...a14cde` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xef2b7b...f444ea` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xf26b44...560d0a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xf4f3c1...a5626a` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x038b5e...3136b9` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x06dc12...835002` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x0e610a...057733` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x1d742d...2e84a7` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x1fe74c...6d20e3` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x29c978...1b95d5` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x2f9730...f1e2a8` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x34deae...ed4de0` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x3d3f8f...66c6bc` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x3f4d27...0b5e8b` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x436e49...ef4e60` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x4a2d60...cd4dae` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x4bcac5...4b6dfd` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x4c90c8...38f4cf` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x518f65...d5f7ff` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x6085f4...a4cbd0` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x6320ee...731671` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x6848a0...f584b5` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x6eb641...2b3432` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x7f2239...cd51c2` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x8035c1...d2b2da` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x82c5b9...c22115` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x8bbd98...699a61` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x9a22f5...3d425d` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xabf5be...748010` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xb1046d...f624b8` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xb2a69a...30d752` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xb5dc66...67311a` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xbe22ff...b550af` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xc2df5c...250f39` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xcbc913...15567e` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xdf0d36...325d1d` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xe28882...249247` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xec4f65...abab98` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xecc6ad...ae08d3` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xed6171...a14cde` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xef2b7b...f444ea` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [cantina.xyz/portfolio/967eeb2b-b6f6-4b17-b819-9bfb450876ca](https://cantina.xyz/portfolio/967eeb2b-b6f6-4b17-b819-9bfb450876ca) | Spearbit | Audit | 2025-08 | fresh | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 0 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 107 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Zero-match audit list:

- [3990] cantina.xyz/portfolio/967eeb2b-b6f6-4b17-b819-9bfb450876ca

Fork inheritance lineage and inherited audits are included when available.
