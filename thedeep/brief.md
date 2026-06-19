# Agentic Audit Brief: TheDeep

## Project Overview

- Project: TheDeep (`thedeep`)
- Website: [https://app.thedeep.ink/](https://app.thedeep.ink/)
- Lifecycle: active (Tier 0, 48% below peak)
- Generated: 2026-06-19T06:14:48.703Z
- Pipeline run: v2-pipeline-2026-06-19-32b207-c216
- Chains: base, celo, ink, polygon
- Contract surface: 118 unique implementations (162 raw deployments)
- DeFi Llama TVL: $7,010,487.55
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

TheDeep is a cross-chain platform for automating DeFi liquidity strategies for protocols, including liquidity management and an integrated rewards engine. The observed contract surface includes ICHI-style vault factories, guards, and rebalancer/factory deployments used to create and manage concentrated liquidity vault strategies across supported chains.

### Architecture

The ICHIVaultFactory contracts deploy and register vaults, while the RebalancerFactory contracts (often behind proxies) provide the logic to rebalance those vaults. Both share the same deployer clusters and are deployed together, indicating a tight integration where vaults rely on rebalancers for ongoing management.

## Contract Surface Quality

- Indexed contracts: 249; live-surface contracts included: 162 (87 live, 75 unknown).
- Excluded by liveness: 87 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 6/17 live.
- Detected codebases: uniswap-v3
- Unverified dependencies: 1/2.

## Audit Coverage Summary

- Verified implementations audited: 0/17 (0.0%)
- Verified + Unaudited implementations: 13
- Verified by bytecode match: 4
- Unverified implementations: 101
- Unique implementations: 118
- Raw deployments: 162
- Audits discovered: 1
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: n/a (unknown)
- Staleness: 0 fresh, 0 aging, 0 stale, 1 unknown
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (13)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| ICHIVaultDeployer | core_logic | celo | n/a | 3 deployments: polygon `0xd20feb...1f39a6`; celo [`0x544113...2756e1`](./contracts/celo-42220/0x544113cc95cc2d076065c6028ab718d8682756e1/); celo `0xb78144...c8eb68` | ⚠️ Unaudited |
| ICHIVaultDepositGuard | core_logic | celo | n/a | 9 deployments: polygon `0x2b8ca8...76d4c6`; polygon `0x7f659c...e3dc06`; polygon `0xeecb7b...d9eb3c`; polygon `0xfb6c43...bb4417`; base `0xbf38e4...599819`; base `0xe2381b...a31f26`; celo [`0x238394...4fbed8`](./contracts/celo-42220/0x238394541de407fd494e455ef17c9d991f4fbed8/); celo `0x62fd18...4774c2`; celo `0xa19595...4d5a14` | ⚠️ Unaudited |
| ICHIVaultDepositGuardExtendedForMFD | core_logic | celo | n/a | 3 deployments: celo [`0x141db8...1d9f25`](./contracts/celo-42220/0x141db85183ddb07dee22c33846aebde2101d9f25/); celo `0xb066a0...9029c3`; celo `0xdb771e...d6fccc` | ⚠️ Unaudited |
| ICHIVaultFactory | registry | celo | n/a | 6 deployments: polygon `0xf39a4c...9b0298`; base `0xbff23e...d17ad1`; base `0xf6b5ab...045fa6`; celo [`0x7df494...14e975`](./contracts/celo-42220/0x7df494ad51faeafb8c46c63d23ee40a48b14e975/); celo `0x82dca6...e33870`; celo `0xb3bf88...d3e5bf` | ⚠️ Unaudited |
| ICHIVaultMigrationGuard | operational_periphery | celo | n/a | [`0x7ba715...90bb56`](./contracts/celo-42220/0x7ba715350fa7d3120712b4ab1e3fc89f9090bb56/) | ⚠️ Unaudited |
| MultiFeeDistributionFactory | registry | celo | n/a | 3 deployments: celo [`0x772960...3790b3`](./contracts/celo-42220/0x772960d9a88004cdb2cc0fca020e04bfea3790b3/); celo `0xb005d5...0002fc`; celo `0xe734a1...e73017` | ⚠️ Unaudited |
| QuoterV1 | periphery | celo | n/a | [`0xe1962f...0f8f85`](./contracts/celo-42220/0xe1962f415feb5915962d5d3a075311e6be0f8f85/) | ⚠️ Unaudited |
| RebalancerFactory | adapter | base | unit-27673 | [`0xf8b3f6...ff765e`](./contracts/base-8453/0xf8b3f6727e44abb211c0049fc849fbb091ff765e/) | ⚠️ Unaudited |
| RebalancerFactory | adapter | celo | unit-27674 | [`0x101eb1...bfc879`](./contracts/celo-42220/0x101eb16bdba37979a771c86e1caafbadbabfc879/) | ⚠️ Unaudited |
| SymbolLib | unknown | celo | n/a | [`0xbed3ce...9de85e`](./contracts/celo-42220/0xbed3cea309c8e413f785e1b547d06f37c49de85e/) | ⚠️ Unaudited |
| UV3Math | unknown | celo | n/a | 4 deployments: celo [`0x3b5fbc...4e0d3b`](./contracts/celo-42220/0x3b5fbce2bd4587036dc1d7df44296f19094e0d3b/); celo `0xafec07...dadf69`; celo `0xf6b5ab...045fa6`; celo `0xfa0263...1b97c5` | ⚠️ Unaudited |
| VaultLocker | core_logic | celo | n/a | 8 deployments: polygon `0x39db7d...38510a`; polygon `0x460812...898738`; polygon `0x6e2bbd...d1c814`; polygon `0x827cce...543047`; celo [`0x0de3ba...31658c`](./contracts/celo-42220/0x0de3ba021a151030f344f8d05595672bbe31658c/); celo `0x2a8d03...d0e337`; celo `0x7f2eaf...ad8a65`; celo `0xd2c08d...5837b3` | ⚠️ Unaudited |
| VolatilityCheck | unknown | celo | n/a | [`0x4eecd2...11d6da`](./contracts/celo-42220/0x4eecd2cee06598c942a4c24f91b4452a1b11d6da/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (4)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| RebalancerFactory | adapter | polygon | unit-27664 | 12 deployments: polygon [`0x08992f...009691`](./contracts/polygon-137/0x08992f9f36510abb1c31785c03f36863c3009691/); polygon `0x641da3...4a4cdc`; polygon `0x67de64...c7b278`; polygon `0x6d7fc9...e0b0c2`; polygon `0x8cb886...35a23c`; polygon `0xdbbdc2...8773b9`; polygon `0xf1d63f...dbfac8`; polygon `0xffaff1...130c34`; celo `0x16eb8e...b96483`; celo `0x215d61...e3a50c`; celo `0x83ee90...edc23f`; celo `0xe04ba7...cbbef3` | ⚠️ Unaudited (bytecode match) |
| VaultSlippageCheckV2 | core_logic | celo | n/a | 2 deployments: polygon `0xa2969b...494db7`; celo [`0x69bf65...d44e2a`](./contracts/celo-42220/0x69bf658252d8fd535a28a5cb477abe42a2d44e2a/) | ⚠️ Unaudited (bytecode match) |
| VaultSlippageCheckV2_1 | core_logic | celo | n/a | 2 deployments: polygon `0xf36abd...b851b6`; celo [`0xaa650b...157158`](./contracts/celo-42220/0xaa650baa871269952b12a8ed8fa88d5c64157158/) | ⚠️ Unaudited (bytecode match) |
| VaultSlippageCheckV3 | unknown | polygon | n/a | 3 deployments: polygon [`0x16dfbb...9fde29`](./contracts/polygon-137/0x16dfbb3f6c2a7a3ed697f7233b3e83001a9fde29/); polygon `0xb1fa72...7bd171`; celo `0xcec871...4b7da8` | ⚠️ Unaudited (bytecode match) |

### ❓ Unverified (101)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | polygon | n/a | `0x097cdb...a1255c` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x0a13a8...67fb37` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x0ac9e4...fd47f7` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x0e22c7...085cbd` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x1566fe...1724d5` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x183e90...b79f91` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x1c3eb3...ee8082` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x1ff378...28c0ac` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x228e95...999808` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x27e021...fd2d48` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x2de071...bdf471` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x318603...8f7002` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x3c39f3...fded58` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x46a572...8c6b17` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x52a60f...ce2471` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x5a3da4...22f841` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x5cfe73...bea1fa` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x62a7d1...265da1` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x65cd1f...2074ac` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x6f4574...9bd199` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x6f4f76...87d97e` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x70af57...3a2190` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x760801...db9c55` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x7b7fd5...1f257f` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x7debd5...5c3c34` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x7e21f7...bf5459` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x830d3c...5df95f` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x924b26...bb596c` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x97bf8c...153037` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xafcd97...05faf5` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xb24a00...e00216` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xc0fe74...cc5cb8` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xc808cf...c8a679` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xca3e89...c3fde1` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xdb03e0...431fac` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xe35852...bd65c8` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xe4a759...63f89d` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xe7961f...170500` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xe83a69...33e8fc` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xe84f1c...177227` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xe8709a...743549` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xedf7a8...66b463` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xee22ad...d5bd30` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xee64cb...d2ad52` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xf13de8...c0e4a1` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xfbdf07...ba5e0d` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xfca3b4...867f03` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xfea6cc...211dd1` | ❓ Unverified |
| UnnamedContract | unknown | celo | n/a | `0x0c551e...9da944` | ❓ Unverified |
| UnnamedContract | unknown | celo | n/a | `0x0e9a6b...d28a9c` | ❓ Unverified |
| UnnamedContract | unknown | celo | n/a | `0x0ffba7...083b09` | ❓ Unverified |
| UnnamedContract | unknown | celo | n/a | `0x14380c...f2d796` | ❓ Unverified |
| UnnamedContract | unknown | celo | n/a | `0x1657a6...0e1a02` | ❓ Unverified |
| UnnamedContract | unknown | celo | n/a | `0x16edb1...348ef8` | ❓ Unverified |
| UnnamedContract | unknown | celo | n/a | `0x178369...3000b3` | ❓ Unverified |
| UnnamedContract | unknown | celo | n/a | `0x1919c1...dc2163` | ❓ Unverified |
| UnnamedContract | unknown | celo | n/a | `0x204f7c...25f0d2` | ❓ Unverified |
| UnnamedContract | unknown | celo | n/a | `0x22b2a7...57e875` | ❓ Unverified |
| UnnamedContract | unknown | celo | n/a | `0x3bc85a...d0e909` | ❓ Unverified |
| UnnamedContract | unknown | celo | n/a | `0x3c568f...835663` | ❓ Unverified |
| UnnamedContract | unknown | celo | n/a | `0x4238eb...1ab723` | ❓ Unverified |
| UnnamedContract | unknown | celo | n/a | `0x4f5202...1e4d79` | ❓ Unverified |
| UnnamedContract | unknown | celo | n/a | `0x5df820...fe1001` | ❓ Unverified |
| UnnamedContract | unknown | celo | n/a | `0x66854c...62eece` | ❓ Unverified |
| UnnamedContract | unknown | celo | n/a | `0x683334...f9b689` | ❓ Unverified |
| UnnamedContract | unknown | celo | n/a | `0x6b7ccf...27208a` | ❓ Unverified |
| UnnamedContract | unknown | celo | n/a | `0x6dbb1e...866fd7` | ❓ Unverified |
| UnnamedContract | unknown | celo | n/a | `0x6f6b1b...90e106` | ❓ Unverified |
| UnnamedContract | unknown | celo | n/a | `0x808baa...5dd2ea` | ❓ Unverified |
| UnnamedContract | unknown | celo | n/a | `0x838602...1c2119` | ❓ Unverified |
| UnnamedContract | unknown | celo | n/a | `0x994969...44369c` | ❓ Unverified |
| UnnamedContract | unknown | celo | n/a | `0x998f04...9ac395` | ❓ Unverified |
| UnnamedContract | unknown | celo | n/a | `0x99fb98...4a8c8d` | ❓ Unverified |
| UnnamedContract | unknown | celo | n/a | `0x9bd308...241f76` | ❓ Unverified |
| UnnamedContract | unknown | celo | n/a | `0x9ff36c...5bf847` | ❓ Unverified |
| UnnamedContract | unknown | celo | n/a | `0xa21139...ba4f42` | ❓ Unverified |
| UnnamedContract | unknown | celo | n/a | `0xa24c23...45fca6` | ❓ Unverified |
| UnnamedContract | unknown | celo | n/a | `0xa287a2...13e9d4` | ❓ Unverified |
| UnnamedContract | unknown | celo | n/a | `0xa8b1ba...4819dc` | ❓ Unverified |
| UnnamedContract | unknown | celo | n/a | `0xae7b34...f0b6c0` | ❓ Unverified |
| UnnamedContract | unknown | celo | n/a | `0xbb1385...6a6e01` | ❓ Unverified |
| UnnamedContract | unknown | celo | n/a | `0xbdd005...754dd5` | ❓ Unverified |
| UnnamedContract | unknown | celo | n/a | `0xc2ddc7...2e261e` | ❓ Unverified |
| UnnamedContract | unknown | celo | n/a | `0xc4dcae...36b4ce` | ❓ Unverified |
| UnnamedContract | unknown | celo | n/a | `0xc9dcd7...53bb42` | ❓ Unverified |
| UnnamedContract | unknown | celo | n/a | `0xca1d96...0d87b2` | ❓ Unverified |
| UnnamedContract | unknown | celo | n/a | `0xd3db08...947894` | ❓ Unverified |
| UnnamedContract | unknown | celo | n/a | `0xd4d56d...d695e3` | ❓ Unverified |
| UnnamedContract | unknown | celo | n/a | `0xd59966...8fe2aa` | ❓ Unverified |
| UnnamedContract | unknown | celo | n/a | `0xd8322b...91b08c` | ❓ Unverified |
| UnnamedContract | unknown | celo | n/a | `0xdeb87c...ccf879` | ❓ Unverified |
| UnnamedContract | unknown | celo | n/a | `0xe14209...5dbedd` | ❓ Unverified |
| UnnamedContract | unknown | celo | n/a | `0xe1c415...a998e1` | ❓ Unverified |
| UnnamedContract | unknown | celo | n/a | `0xe7948b...77ab55` | ❓ Unverified |
| UnnamedContract | unknown | celo | n/a | `0xed0819...3371df` | ❓ Unverified |
| UnnamedContract | unknown | celo | n/a | `0xfc7efd...4d5ed9` | ❓ Unverified |
| UnnamedContract | unknown | ink | n/a | `0x5541bc...788348` | ❓ Unverified |
| UnnamedContract | unknown | ink | n/a | `0x64da1a...9a06d4` | ❓ Unverified |
| UnnamedContract | unknown | ink | n/a | `0x65cd1f...2074ac` | ❓ Unverified |
| UnnamedContract | unknown | ink | n/a | `0x822b0b...093618` | ❓ Unverified |
| UnnamedContract | unknown | ink | n/a | `0x9176b8...9f19b5` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [View Security Audit Report →](https://github.com/bailsec/BailSec/blob/main/Bailsec%20-%20ICHI%20-%20Vaults%20-%20Final%20Report.pdf) | yAudit | Audit | n/a | unknown | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| celo | [`0x544113...2756e1`](./contracts/celo-42220/0x544113cc95cc2d076065c6028ab718d8682756e1/) | ICHIVaultDeployer | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| celo | [`0x238394...4fbed8`](./contracts/celo-42220/0x238394541de407fd494e455ef17c9d991f4fbed8/) | ICHIVaultDepositGuard | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| celo | [`0x141db8...1d9f25`](./contracts/celo-42220/0x141db85183ddb07dee22c33846aebde2101d9f25/) | ICHIVaultDepositGuardExtendedForMFD | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| celo | [`0x7df494...14e975`](./contracts/celo-42220/0x7df494ad51faeafb8c46c63d23ee40a48b14e975/) | ICHIVaultFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| celo | [`0x7ba715...90bb56`](./contracts/celo-42220/0x7ba715350fa7d3120712b4ab1e3fc89f9090bb56/) | ICHIVaultMigrationGuard | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| celo | [`0x772960...3790b3`](./contracts/celo-42220/0x772960d9a88004cdb2cc0fca020e04bfea3790b3/) | MultiFeeDistributionFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x08992f...009691`](./contracts/polygon-137/0x08992f9f36510abb1c31785c03f36863c3009691/) | RebalancerFactory | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| celo | [`0xbed3ce...9de85e`](./contracts/celo-42220/0xbed3cea309c8e413f785e1b547d06f37c49de85e/) | SymbolLib | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| celo | [`0x3b5fbc...4e0d3b`](./contracts/celo-42220/0x3b5fbce2bd4587036dc1d7df44296f19094e0d3b/) | UV3Math | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| celo | [`0x0de3ba...31658c`](./contracts/celo-42220/0x0de3ba021a151030f344f8d05595672bbe31658c/) | VaultLocker | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| celo | [`0x69bf65...d44e2a`](./contracts/celo-42220/0x69bf658252d8fd535a28a5cb477abe42a2d44e2a/) | VaultSlippageCheckV2 | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| celo | [`0xaa650b...157158`](./contracts/celo-42220/0xaa650baa871269952b12a8ed8fa88d5c64157158/) | VaultSlippageCheckV2_1 | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x16dfbb...9fde29`](./contracts/polygon-137/0x16dfbb3f6c2a7a3ed697f7233b3e83001a9fde29/) | VaultSlippageCheckV3 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| celo | [`0x4eecd2...11d6da`](./contracts/celo-42220/0x4eecd2cee06598c942a4c24f91b4452a1b11d6da/) | VolatilityCheck | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 93 |
| upstream | 1 |
| standard_library | 2 |
| needs_review | 22 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Zero-match audit list:

- [11711] View Security Audit Report →

Fork inheritance lineage and inherited audits are included when available.
