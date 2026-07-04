# Agentic Audit Brief: Atlantis Loans

⚠️ Lifecycle status: DEAD - TVL changed 0.0% over 90 days

## Project Overview

- Project: Atlantis Loans (`atlantis-loans`)
- Lifecycle: dead (Tier 0, 100% below peak)
- Generated: 2026-07-03T21:05:31.814Z
- Pipeline run: v2-pipeline-2026-07-01-2b719a-f2f0
- Chains: avalanche, bsc
- Contract surface: 242 unique implementations (264 raw deployments)
- DeFi Llama TVL: $42,003.57
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Lending. Structurally: 32 project-authored contract(s) across 2 chain(s); 5 ERC20 tokens; built on openzeppelin.

### Architecture

The protocol comprises 7 functional families. Its contracts share 14 common project-authored base contract(s) (atokeninterface, atokenstorage, abep20interface). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 436; live-surface contracts included: 263 (37 live, 226 unknown).
- Excluded by liveness: 173 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 5/16 (31.3%)
- Deployed-live implementations: 16 of 242 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 5/16
- Verified + Unaudited implementations: 11
- Verified by bytecode match: 0
- Unverified implementations: 226
- Unique implementations: 242
- Raw deployments: 264
- Audits discovered: 1 (1 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 1
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2021-11 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 1 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 5 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage
- Note: This protocol is classified as [dead]. ASD of n/a represents exposure in a protocol with dead activity.

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| PeckShield | Tier 2 | 5 | 31.3% | 2021-11 |

## Contract Surface

### ✅ Verified + Audited (5)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| ABNB | unknown | bsc | n/a | 2 deployments: bsc [`0x032dd2...995c29`](./contracts/bsc-56/0x032dd2cd4e64d8c30fed171d0d0b6cf4a7995c29/); bsc `0x5a9a90...1caf63` | ✅ Audited |
| Comptroller | unknown | bsc | n/a | 2 deployments: bsc [`0x31169b...6b7c79`](./contracts/bsc-56/0x31169b127e34fe6ff93fe9810a6165c6fd6b7c79/); bsc `0xe7e304...e242f3` | ✅ Audited |
| Comptroller | unknown | bsc | n/a | 2 deployments: bsc [`0x3533e4...9b3c9c`](./contracts/bsc-56/0x3533e4617b4a6734fc6a9513f521ce5f4e9b3c9c/); bsc `0xcee214...bde2a1` | ✅ Audited |
| Comptroller | unknown | bsc | n/a | 3 deployments: bsc [`0x671120...5f1cc0`](./contracts/bsc-56/0x6711207fa4fa18aa919ce776d650ef28ed5f1cc0/); bsc `0xe56c4d...cce22e`; avalanche `0x7a14cf...5548cd` | ✅ Audited |
| Comptroller | unknown | avalanche | n/a | 2 deployments: avalanche [`0x8f85ee...6de09a`](./contracts/avalanche-43114/0x8f85ee1c0a96734cb76870106dd9c016db6de09a/); avalanche `0xb3e91b...aaa759` | ✅ Audited |

### ⚠️ Verified + Unaudited (11)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| ABep20Delegate | unknown | avalanche | n/a | 2 deployments: avalanche [`0x4fa153...1f0b78`](./contracts/avalanche-43114/0x4fa1530ef565833840f59a53e70fb3d9021f0b78/); avalanche `0x6bd215...ccd065` | ⚠️ Unaudited |
| ABep20Delegate | unknown | avalanche | n/a | [`0xa65722...6e8adc`](./contracts/avalanche-43114/0xa65722af4957cef481edb4cb255f804dd36e8adc/) | ⚠️ Unaudited |
| Atlantis | unknown | bsc | n/a | 4 deployments: bsc [`0x1fd991...c10271`](./contracts/bsc-56/0x1fd991fb6c3102873ba68a4e6e6a87b3a5c10271/); bsc `0x6e0b56...0a6af0`; bsc `0xab4a4f...ded581`; bsc `0xb6e193...87b05b` | ⚠️ Unaudited |
| AtlantisLens | periphery | bsc | n/a | 4 deployments: bsc [`0x0e8c9f...a02a23`](./contracts/bsc-56/0x0e8c9fc7cd455faf22d13fcafd5c6f4eeca02a23/); bsc `0xa23a21...39a2c4`; avalanche `0x4088af...994775`; avalanche `0xccf9a9...be92d7` | ⚠️ Unaudited |
| GovernorAlpha | governance | bsc | n/a | 2 deployments: bsc [`0x0ed46f...771e11`](./contracts/bsc-56/0x0ed46f84ebf8af56eb29644f6a49d184ad771e11/); bsc `0x5a31d6...1074ff` | ⚠️ Unaudited |
| PancakePair | unknown | bsc | n/a | [`0xaa40dc...fe6bdb`](./contracts/bsc-56/0xaa40dc3ec6ad76db3254b54443c4531e3dfe6bdb/) | ⚠️ Unaudited |
| Unitroller | unknown | avalanche | n/a | 3 deployments: avalanche [`0x3533e4...9b3c9c`](./contracts/avalanche-43114/0x3533e4617b4a6734fc6a9513f521ce5f4e9b3c9c/); avalanche `0x7f0201...85f5ce`; avalanche `0xcee214...bde2a1` | ⚠️ Unaudited |
| Vault | core_logic | bsc | n/a | 3 deployments: bsc [`0x6589ca...501344`](./contracts/bsc-56/0x6589ca52d193d26cccae2c0e6244315c61501344/); bsc `0xa2ae06...28c8b8`; bsc `0xf1b52e...7bdfe7` | ⚠️ Unaudited |
| Vault | core_logic | bsc | n/a | 2 deployments: bsc [`0x6eceb1...a10042`](./contracts/bsc-56/0x6eceb19392b5afd9706382144bf296f9d2a10042/); bsc `0x9afc98...be03de` | ⚠️ Unaudited |
| Vault | core_logic | bsc | n/a | 2 deployments: bsc [`0xc7a5bb...d45b58`](./contracts/bsc-56/0xc7a5bb6fcd603309d7a010de44dcbde26fd45b58/); bsc `0xccf570...74b5bb` | ⚠️ Unaudited |
| VaultProxy | core_logic | bsc | n/a | 3 deployments: bsc [`0x69a169...925f43`](./contracts/bsc-56/0x69a1692fbb645bda8137e59da7f2d6104d925f43/); bsc `0xadf4c5...0a566a`; bsc `0xd7862a...03ff59` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (226)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | bsc | n/a | `0x01bd42...bf1884` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x029658...a44d33` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x02e492...946f4c` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x055e09...d2fd0f` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x0664c6...204cd6` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x072345...969383` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x09fef7...3bfcf4` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x0a4d8f...df2c1a` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x0abff9...33485a` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x0ba4cf...73e5d0` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x0e37a7...bc1be7` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x12d0f5...8afd42` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x14dfeb...a4b2bd` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x15dab5...405018` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x16030b...5688fd` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x180bf7...cdadac` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x1885b6...83c32f` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x191d14...e23f10` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x1abf9b...faa066` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x1ac615...dec0ae` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x1d9e7b...9048ca` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x1f428a...56d63e` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x211b80...631cfe` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x21b1c6...83bb4a` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x21ced0...6e4ce8` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x2306f9...524bb2` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x234f6f...5e3880` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x24cee0...c4cadb` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x24ec73...495d00` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x2558f5...0d3f9d` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x259bf4...1acce9` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x28b0de...bbdd6b` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x29700b...9bf6ba` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x2a1f90...87642e` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x2aae2c...25be76` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x2dddef...92a2e5` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x2f0994...103e6c` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x2f226a...a7a7df` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x30be2d...2d0fc2` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x312739...ea68db` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x313b04...248486` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x31aaf9...99c50f` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x31ed8b...c86070` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x331840...43cc73` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x34b405...4cb5bb` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x36724c...9e450f` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x39082f...2db464` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x39e29e...9ec002` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x3ca930...2ff7ec` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x3d21ff...99d6c5` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x3d8a71...ef47f9` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x3e5a7b...68a97b` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x418039...6a597a` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x420411...4c6955` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x42f10d...f460c6` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x43f1b0...18daf3` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x44f878...263589` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x45542c...a237df` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x45fde0...8f1066` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x46da0c...dc9b09` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x488223...2b5b01` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x492e08...5b8fb4` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x4b3e03...141ecc` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x4b6d6a...4a399b` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x4da62b...8d0c91` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x4db9cc...daa823` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x4dbf39...9c6ee7` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x4f02fd...efc565` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x5002c0...dbb87c` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x53549f...81cd0f` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x551f1b...b815cf` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x55603f...030617` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x565a18...420712` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x580191...4f4b01` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x59f04a...ed2a2d` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x5bb98d...0d245a` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x5cff38...f51d23` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x60456f...5b5497` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x61a3b2...65e10d` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x6226c6...cac0d7` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x63e988...cfd8e8` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x652c4c...7e1b40` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x67747f...af8ac6` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x691863...f17c8c` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x693c88...9a3f95` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x6bae9f...fa0249` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x6c2adf...bb3af6` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x6c391e...ca0ac2` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x6c9225...fcc870` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x6d7202...d5d4e7` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x6ffba3...a62128` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x6ffd15...d5c752` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x70ca56...6df2f9` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x753d0b...f9ecf5` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x76fa75...ec4a4d` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x787fad...79cf21` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x78a6ff...2efcdb` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x7aa708...6f6879` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x7aae56...cd4e97` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x7aed12...3c8489` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x7af908...58707f` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x7b0e91...37c67e` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x7b832a...d27318` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x7b8b86...93d648` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x7bcc58...f092f9` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x7de813...e8c0d7` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x7f8c02...a41c39` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x80333e...064fbc` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x80a9bd...814efd` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x864112...296403` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x865b50...5f9c3a` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x8b2e8f...7dd426` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x8c1b13...a5f82d` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x8cf2e4...3d5bd3` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x902279...4245e7` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x90ba6d...39b22d` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x9256c3...bc3027` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x9500e4...fe9d40` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x95b337...d846a5` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x95d4f9...08644c` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x968ca9...c2781f` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x9a5ad9...27693b` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x9acd75...92e6d3` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x9bb973...b8d534` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x9e0ba7...62b0b5` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x9e17f7...6c7b9f` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x9e60c5...9f9e85` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x9e8873...2529ff` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xa02c23...110082` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xa3c562...8d7749` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xa40321...a3752f` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xa57020...94836b` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xa5e0f3...ad5d77` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xa7952d...0f3d09` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xaa1380...1bcb57` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xaa864c...126d00` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xaac53b...22fa42` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xac1a79...476d4d` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xad3032...6a689c` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xad39a4...315123` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xad9128...c29d6e` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xadf2be...35fbab` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xaf1eb4...aa4ab1` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xb09f46...ea13c5` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xb12aee...e99c77` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xb30d81...4635b0` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xb3ed4e...8a4512` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xb8b044...b31445` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xba2bbe...059455` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xbad367...588e00` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xbb9b57...c4b66f` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xbe7c68...44dba2` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xc11304...948ff4` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xc1ce15...6d48e1` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xc2163d...9994d9` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xc21a8e...94368c` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xc44563...6ed123` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xc4706a...939807` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xc59a41...b3f999` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xc5c410...58a7d5` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xc67e63...6f211b` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xc7d8c1...0b7a84` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xc7de75...b269b1` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xc7eecd...20f000` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xc9c70f...b2d4b8` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xca7571...642e20` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xcc9d3c...90f031` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xccaa7b...29f6ed` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xcd23e7...bd767b` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xce9289...97408a` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xce994f...90d67a` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xd14a49...bb6f1d` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xd1eeca...e3f663` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xd20524...9c9288` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xd3a261...dd2ee5` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xd586d3...8e78c3` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xd6bd46...bb5a86` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xd6e4d6...a047ba` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xd70988...8d0ce6` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xdb7e4a...aede7a` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xdde87d...a29a70` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xde3036...56c2ce` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xdeae74...cb2ed9` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xdf0ba7...2ffc4a` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xe2c12c...f1091d` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xe5b879...32e0db` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xe84ca8...650324` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xe853b7...81a1be` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xe85890...63e793` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xebc80a...57cffc` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xec293e...8ea3d0` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xec4568...3acc5a` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xf04226...833c8e` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xf05548...12956a` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xf0dd82...a29771` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xf16e2c...bc695d` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xf3cd71...a7f482` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xf4899f...cdf313` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xf78a62...bb2aa1` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xfb2cc6...433bf3` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xfc8de5...0d48f4` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xfca835...045e8f` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xfcfa03...2b5a7d` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xfd03fd...5473a4` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xfda86e...600992` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xff6e18...1aeb82` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xffcac9...c195c3` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x0503fe...b9df7f` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x12d244...8718cc` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x253be8...3401ca` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x32ad47...ceb433` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x45a9ce...a1043b` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x45fa35...e53e3e` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x4f9908...51b3ee` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x5e7554...a41887` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x7c0697...7089cf` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x9f070a...767489` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xa49790...8e6173` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xa4ccc2...7194d0` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xad0246...1b2b64` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xb6e193...87b05b` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xbc46dc...c2fdfe` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xc0ed5e...d28bfe` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xcded19...cc5ed6` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xf53692...47f481` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xf59aa1...d63149` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [PeckShield-Audit-Report-Atlantis-v1.0.pdf](https://github.com/peckshield/publications/blob/master/audit_reports/PeckShield-Audit-Report-Atlantis-v1.0.pdf) | PeckShield | Audit | 2021-11 | stale | Direct | contract_name | 11 | high |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| avalanche | [`0x4fa153...1f0b78`](./contracts/avalanche-43114/0x4fa1530ef565833840f59a53e70fb3d9021f0b78/) | ABep20Delegate | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0xa65722...6e8adc`](./contracts/avalanche-43114/0xa65722af4957cef481edb4cb255f804dd36e8adc/) | ABep20Delegate | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x0e8c9f...a02a23`](./contracts/bsc-56/0x0e8c9fc7cd455faf22d13fcafd5c6f4eeca02a23/) | AtlantisLens | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x0ed46f...771e11`](./contracts/bsc-56/0x0ed46f84ebf8af56eb29644f6a49d184ad771e11/) | GovernorAlpha | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x3533e4...9b3c9c`](./contracts/avalanche-43114/0x3533e4617b4a6734fc6a9513f521ce5f4e9b3c9c/) | Unitroller | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x6589ca...501344`](./contracts/bsc-56/0x6589ca52d193d26cccae2c0e6244315c61501344/) | Vault | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x6eceb1...a10042`](./contracts/bsc-56/0x6eceb19392b5afd9706382144bf296f9d2a10042/) | Vault | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0xc7a5bb...d45b58`](./contracts/bsc-56/0xc7a5bb6fcd603309d7a010de44dcbde26fd45b58/) | Vault | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x69a169...925f43`](./contracts/bsc-56/0x69a1692fbb645bda8137e59da7f2d6104d925f43/) | VaultProxy | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 14 |
| upstream | 1 |
| standard_library | 0 |
| needs_review | 227 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=1
- Match method counts: extraction_exact=11

Fork inheritance lineage and inherited audits are included when available.
