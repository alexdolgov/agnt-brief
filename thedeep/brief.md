# Agentic Audit Brief: TheDeep

## Project Overview

- Project: TheDeep (`thedeep`)
- Website: [https://app.thedeep.ink/](https://app.thedeep.ink/)
- Lifecycle: active (Tier 0, 48% below peak)
- Generated: 2026-05-30T11:27:40.487Z
- Pipeline run: v2-pipeline-2026-05-30-255779-2e4e
- Chains: base, celo, ink, polygon
- Contract surface: 164 unique implementations (244 raw deployments)
- DeFi Llama TVL: $8,217,310.84
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

TheDeep is a liquidity management protocol that deploys and manages concentrated liquidity vaults (ICHIVaults) across multiple chains. It uses factory contracts to create vaults and rebalancer factories to optimize liquidity positions, aiming to automate and enhance yield for liquidity providers.

### Architecture

The ICHIVaultFactory contracts deploy and register vaults, while the RebalancerFactory contracts (often behind proxies) provide the logic to rebalance those vaults. Both share the same deployer clusters and are deployed together, indicating a tight integration where vaults rely on rebalancers for ongoing management.

## Audit Coverage Summary

- Verified implementations audited: 0/15 (0.0%)
- Verified + Unaudited implementations: 11
- Verified by bytecode match: 4
- Unverified implementations: 149
- Unique implementations: 164
- Raw deployments: 244
- Audits discovered: 4
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: n/a (unknown)
- Staleness: 0 fresh, 0 aging, 0 stale, 4 unknown
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (11)

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| ICHIVaultDeployer | core_logic | base | 9 deployments: polygon `0xd20feb...1f39a6`; base [`0x065cb8...6ea031`](./contracts/base-8453/0x065cb8139e9fed6c97f8b0851e599c56286ea031/); base `0x5507b5...98d8b7`; celo `0x544113...2756e1`; celo `0x561200...9fbd20`; celo `0xb78144...c8eb68`; celo `0xe3f26d...900dd4`; celo `0xfab743...7c068b`; celo `0xfbf389...607065` | ⚠️ Unaudited |
| ICHIVaultDepositGuard | core_logic | celo | 10 deployments: polygon `0x2b8ca8...76d4c6`; polygon `0x7f659c...e3dc06`; polygon `0xeecb7b...d9eb3c`; polygon `0xfb6c43...bb4417`; base `0xbf38e4...599819`; base `0xe2381b...a31f26`; celo [`0x238394...4fbed8`](./contracts/celo-42220/0x238394541de407fd494e455ef17c9d991f4fbed8/); celo `0x4fa116...75a529`; celo `0x62fd18...4774c2`; celo `0xa19595...4d5a14` | ⚠️ Unaudited |
| ICHIVaultDepositGuardExtendedForMFD | core_logic | celo | 3 deployments: celo [`0x141db8...1d9f25`](./contracts/celo-42220/0x141db85183ddb07dee22c33846aebde2101d9f25/); celo `0xb066a0...9029c3`; celo `0xdb771e...d6fccc` | ⚠️ Unaudited |
| ICHIVaultFactory | registry | celo | 12 deployments: polygon `0xf39a4c...9b0298`; base `0xabe5b5...8ab3b3`; base `0xbff23e...d17ad1`; base `0xf6b5ab...045fa6`; base `0xfbf389...607065`; celo [`0x1f9563...0838e6`](./contracts/celo-42220/0x1f9563a0a99d1c1893fbe0cacda7577b4a0838e6/); celo `0x2f4b48...36d085`; celo `0x7df494...14e975`; celo `0x82dca6...e33870`; celo `0x8d05f6...3eb92a`; celo `0x9fab4b...d7418f`; celo `0xb3bf88...d3e5bf` | ⚠️ Unaudited |
| ICHIVaultMigrationGuard | operational_periphery | celo | [`0x7ba715...90bb56`](./contracts/celo-42220/0x7ba715350fa7d3120712b4ab1e3fc89f9090bb56/) | ⚠️ Unaudited |
| ProxyAdmin | governance | base | 4 deployments: base [`0x1b0ef0...a4cd63`](./contracts/base-8453/0x1b0ef045830466171d617dd0f1142ad699a4cd63/); base `0xbbb97d...f46ad3`; celo `0x2fb241...d7a931`; celo `0xb978c5...f1a415` | ⚠️ Unaudited |
| QuoterV1 | periphery | celo | 4 deployments: celo [`0x6d7fc9...e0b0c2`](./contracts/celo-42220/0x6d7fc94c5106a64a43b80fe8e4b3704d6ce0b0c2/); celo `0xb1fa72...7bd171`; celo `0xc7ea64...02d9af`; celo `0xe1962f...0f8f85` | ⚠️ Unaudited |
| SymbolLib | unknown | celo | 4 deployments: celo [`0x52a60f...ce2471`](./contracts/celo-42220/0x52a60fa5092f92b96d1a007eedfcd349d6ce2471/); celo `0xa2969b...494db7`; celo `0xad8408...40b780`; celo `0xbed3ce...9de85e` | ⚠️ Unaudited |
| UV3Math | unknown | celo | 14 deployments: polygon `0x8d6cdb...a9fc0d`; base `0xb177cf...5a04e2`; base `0xbf60a8...e057a1`; celo [`0x065cb8...6ea031`](./contracts/celo-42220/0x065cb8139e9fed6c97f8b0851e599c56286ea031/); celo `0x3b5fbc...4e0d3b`; celo `0x460812...898738`; celo `0x7a4ae8...8ede18`; celo `0x7f659c...e3dc06`; celo `0xa45a0a...3d883d`; celo `0xacdeab...35a3a6`; celo `0xafec07...dadf69`; celo `0xb9b42b...626dcc`; celo `0xf6b5ab...045fa6`; celo `0xfa0263...1b97c5` | ⚠️ Unaudited |
| VaultLocker | core_logic | celo | 8 deployments: polygon `0x39db7d...38510a`; polygon `0x460812...898738`; polygon `0x6e2bbd...d1c814`; polygon `0x827cce...543047`; celo [`0x0de3ba...31658c`](./contracts/celo-42220/0x0de3ba021a151030f344f8d05595672bbe31658c/); celo `0x2a8d03...d0e337`; celo `0x7f2eaf...ad8a65`; celo `0xd2c08d...5837b3` | ⚠️ Unaudited |
| VolatilityCheck | unknown | celo | 2 deployments: celo [`0x4eecd2...11d6da`](./contracts/celo-42220/0x4eecd2cee06598c942a4c24f91b4452a1b11d6da/); celo `0x6c2e26...74e72e` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (4)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| RebalancerFactory | adapter | polygon | 17 deployments: polygon [`0x08992f...009691`](./contracts/polygon-137/0x08992f9f36510abb1c31785c03f36863c3009691/); polygon `0x641da3...4a4cdc`; polygon `0x67de64...c7b278`; polygon `0x6d7fc9...e0b0c2`; polygon `0x8cb886...35a23c`; polygon `0xdbbdc2...8773b9`; polygon `0xf1d63f...dbfac8`; polygon `0xffaff1...130c34`; base `0x2d2c72...a73fc0`; base `0xf8b3f6...ff765e`; celo `0x101eb1...bfc879`; celo `0x16eb8e...b96483`; celo `0x215d61...e3a50c`; celo `0x606332...016d05`; celo `0x83ee90...edc23f`; celo `0xe04ba7...cbbef3`; celo `0xfa196a...e5c234` | ⚠️ Unaudited (bytecode match) |
| VaultSlippageCheckV2 | core_logic | celo | 2 deployments: polygon `0xa2969b...494db7`; celo [`0x69bf65...d44e2a`](./contracts/celo-42220/0x69bf658252d8fd535a28a5cb477abe42a2d44e2a/) | ⚠️ Unaudited (bytecode match) |
| VaultSlippageCheckV2_1 | core_logic | celo | 2 deployments: polygon `0xf36abd...b851b6`; celo [`0xaa650b...157158`](./contracts/celo-42220/0xaa650baa871269952b12a8ed8fa88d5c64157158/) | ⚠️ Unaudited (bytecode match) |
| VaultSlippageCheckV3 | unknown | polygon | 3 deployments: polygon [`0x16dfbb...9fde29`](./contracts/polygon-137/0x16dfbb3f6c2a7a3ed697f7233b3e83001a9fde29/); polygon `0xb1fa72...7bd171`; celo `0xcec871...4b7da8` | ⚠️ Unaudited (bytecode match) |

### ❓ Unverified (149)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| UnnamedContract | unknown | polygon | `0x097cdb...a1255c` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x0a13a8...67fb37` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x0ac9e4...fd47f7` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x0e22c7...085cbd` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x1566fe...1724d5` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x183e90...b79f91` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x1c3eb3...ee8082` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x1ff378...28c0ac` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x228e95...999808` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x27e021...fd2d48` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x2de071...bdf471` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x318603...8f7002` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x3c39f3...fded58` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x46a572...8c6b17` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x52a60f...ce2471` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x5a3da4...22f841` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x5cfe73...bea1fa` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x62a7d1...265da1` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x65cd1f...2074ac` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x6f4574...9bd199` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x6f4f76...87d97e` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x70af57...3a2190` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x760801...db9c55` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x7b7fd5...1f257f` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x7debd5...5c3c34` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x7e21f7...bf5459` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x830d3c...5df95f` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x924b26...bb596c` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x97bf8c...153037` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0xafcd97...05faf5` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0xb24a00...e00216` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0xc0fe74...cc5cb8` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0xc808cf...c8a679` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0xca3e89...c3fde1` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0xdb03e0...431fac` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0xe35852...bd65c8` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0xe4a759...63f89d` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0xe7961f...170500` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0xe83a69...33e8fc` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0xe84f1c...177227` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0xe8709a...743549` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0xedf7a8...66b463` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0xee22ad...d5bd30` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0xee64cb...d2ad52` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0xf13de8...c0e4a1` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0xfbdf07...ba5e0d` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0xfca3b4...867f03` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0xfea6cc...211dd1` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x0248b9...9cfe4b` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x02f4a9...ccfcf5` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x101eb1...bfc879` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x2e76a8...7fedd6` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x6f85eb...31fd8b` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x921acc...cbb2aa` | ❓ Unverified |
| UnnamedContract | unknown | base | `0xdd2346...9dc72d` | ❓ Unverified |
| UnnamedContract | unknown | base | `0xf3145e...380e5b` | ❓ Unverified |
| UnnamedContract | unknown | celo | `0x05043e...87947b` | ❓ Unverified |
| UnnamedContract | unknown | celo | `0x0c551e...9da944` | ❓ Unverified |
| UnnamedContract | unknown | celo | `0x0e9a6b...d28a9c` | ❓ Unverified |
| UnnamedContract | unknown | celo | `0x0ffba7...083b09` | ❓ Unverified |
| UnnamedContract | unknown | celo | `0x130666...ab6788` | ❓ Unverified |
| UnnamedContract | unknown | celo | `0x14380c...f2d796` | ❓ Unverified |
| UnnamedContract | unknown | celo | `0x1657a6...0e1a02` | ❓ Unverified |
| UnnamedContract | unknown | celo | `0x16edb1...348ef8` | ❓ Unverified |
| UnnamedContract | unknown | celo | `0x178369...3000b3` | ❓ Unverified |
| UnnamedContract | unknown | celo | `0x17f1a5...6fad11` | ❓ Unverified |
| UnnamedContract | unknown | celo | `0x1919c1...dc2163` | ❓ Unverified |
| UnnamedContract | unknown | celo | `0x204f7c...25f0d2` | ❓ Unverified |
| UnnamedContract | unknown | celo | `0x22b2a7...57e875` | ❓ Unverified |
| UnnamedContract | unknown | celo | `0x242cd1...ab65de` | ❓ Unverified |
| UnnamedContract | unknown | celo | `0x278719...ffe90c` | ❓ Unverified |
| UnnamedContract | unknown | celo | `0x288f5b...5313ac` | ❓ Unverified |
| UnnamedContract | unknown | celo | `0x34513e...2d8b5f` | ❓ Unverified |
| UnnamedContract | unknown | celo | `0x36a3f7...537b76` | ❓ Unverified |
| UnnamedContract | unknown | celo | `0x3bc85a...d0e909` | ❓ Unverified |
| UnnamedContract | unknown | celo | `0x3c568f...835663` | ❓ Unverified |
| UnnamedContract | unknown | celo | `0x3e5685...ce1aec` | ❓ Unverified |
| UnnamedContract | unknown | celo | `0x4238eb...1ab723` | ❓ Unverified |
| UnnamedContract | unknown | celo | `0x48e263...54693f` | ❓ Unverified |
| UnnamedContract | unknown | celo | `0x4dc520...086497` | ❓ Unverified |
| UnnamedContract | unknown | celo | `0x4f5202...1e4d79` | ❓ Unverified |
| UnnamedContract | unknown | celo | `0x500c17...a5ded8` | ❓ Unverified |
| UnnamedContract | unknown | celo | `0x513844...e27987` | ❓ Unverified |
| UnnamedContract | unknown | celo | `0x535117...fab0f8` | ❓ Unverified |
| UnnamedContract | unknown | celo | `0x56326f...d3eaf2` | ❓ Unverified |
| UnnamedContract | unknown | celo | `0x5df820...fe1001` | ❓ Unverified |
| UnnamedContract | unknown | celo | `0x66854c...62eece` | ❓ Unverified |
| UnnamedContract | unknown | celo | `0x683334...f9b689` | ❓ Unverified |
| UnnamedContract | unknown | celo | `0x6aad66...53524e` | ❓ Unverified |
| UnnamedContract | unknown | celo | `0x6b7ccf...27208a` | ❓ Unverified |
| UnnamedContract | unknown | celo | `0x6dbb1e...866fd7` | ❓ Unverified |
| UnnamedContract | unknown | celo | `0x6dc696...ad61e2` | ❓ Unverified |
| UnnamedContract | unknown | celo | `0x6f6b1b...90e106` | ❓ Unverified |
| UnnamedContract | unknown | celo | `0x7582ce...26809a` | ❓ Unverified |
| UnnamedContract | unknown | celo | `0x7a3bf3...10d04c` | ❓ Unverified |
| UnnamedContract | unknown | celo | `0x808baa...5dd2ea` | ❓ Unverified |
| UnnamedContract | unknown | celo | `0x822b0b...093618` | ❓ Unverified |
| UnnamedContract | unknown | celo | `0x8244fd...8d11ad` | ❓ Unverified |
| UnnamedContract | unknown | celo | `0x838602...1c2119` | ❓ Unverified |
| UnnamedContract | unknown | celo | `0x858405...0c78ae` | ❓ Unverified |
| UnnamedContract | unknown | celo | `0x8e8aa5...2ad7e6` | ❓ Unverified |
| UnnamedContract | unknown | celo | `0x92b1ba...63629c` | ❓ Unverified |
| UnnamedContract | unknown | celo | `0x945193...1d640a` | ❓ Unverified |
| UnnamedContract | unknown | celo | `0x974ea7...7fc0ad` | ❓ Unverified |
| UnnamedContract | unknown | celo | `0x994969...44369c` | ❓ Unverified |
| UnnamedContract | unknown | celo | `0x998f04...9ac395` | ❓ Unverified |
| UnnamedContract | unknown | celo | `0x99fb98...4a8c8d` | ❓ Unverified |
| UnnamedContract | unknown | celo | `0x9a0ebe...4dc8d8` | ❓ Unverified |
| UnnamedContract | unknown | celo | `0x9bd308...241f76` | ❓ Unverified |
| UnnamedContract | unknown | celo | `0x9ff36c...5bf847` | ❓ Unverified |
| UnnamedContract | unknown | celo | `0xa21139...ba4f42` | ❓ Unverified |
| UnnamedContract | unknown | celo | `0xa24c23...45fca6` | ❓ Unverified |
| UnnamedContract | unknown | celo | `0xa287a2...13e9d4` | ❓ Unverified |
| UnnamedContract | unknown | celo | `0xa8b1ba...4819dc` | ❓ Unverified |
| UnnamedContract | unknown | celo | `0xae7b34...f0b6c0` | ❓ Unverified |
| UnnamedContract | unknown | celo | `0xb108b4...db86ef` | ❓ Unverified |
| UnnamedContract | unknown | celo | `0xb5fb13...a8b025` | ❓ Unverified |
| UnnamedContract | unknown | celo | `0xb838c2...4d07ce` | ❓ Unverified |
| UnnamedContract | unknown | celo | `0xbb1385...6a6e01` | ❓ Unverified |
| UnnamedContract | unknown | celo | `0xbdd005...754dd5` | ❓ Unverified |
| UnnamedContract | unknown | celo | `0xc1de90...f475f4` | ❓ Unverified |
| UnnamedContract | unknown | celo | `0xc2ddc7...2e261e` | ❓ Unverified |
| UnnamedContract | unknown | celo | `0xc4dcae...36b4ce` | ❓ Unverified |
| UnnamedContract | unknown | celo | `0xc9dcd7...53bb42` | ❓ Unverified |
| UnnamedContract | unknown | celo | `0xca1d96...0d87b2` | ❓ Unverified |
| UnnamedContract | unknown | celo | `0xd39809...bedd4a` | ❓ Unverified |
| UnnamedContract | unknown | celo | `0xd3db08...947894` | ❓ Unverified |
| UnnamedContract | unknown | celo | `0xd4d56d...d695e3` | ❓ Unverified |
| UnnamedContract | unknown | celo | `0xd59966...8fe2aa` | ❓ Unverified |
| UnnamedContract | unknown | celo | `0xd8322b...91b08c` | ❓ Unverified |
| UnnamedContract | unknown | celo | `0xdeb87c...ccf879` | ❓ Unverified |
| UnnamedContract | unknown | celo | `0xdf5fea...766529` | ❓ Unverified |
| UnnamedContract | unknown | celo | `0xe02768...0ce869` | ❓ Unverified |
| UnnamedContract | unknown | celo | `0xe14209...5dbedd` | ❓ Unverified |
| UnnamedContract | unknown | celo | `0xe1c415...a998e1` | ❓ Unverified |
| UnnamedContract | unknown | celo | `0xe5fa9c...09a8da` | ❓ Unverified |
| UnnamedContract | unknown | celo | `0xe7948b...77ab55` | ❓ Unverified |
| UnnamedContract | unknown | celo | `0xe7cb9d...2e9e6d` | ❓ Unverified |
| UnnamedContract | unknown | celo | `0xed0819...3371df` | ❓ Unverified |
| UnnamedContract | unknown | celo | `0xf2bf7b...d32d5c` | ❓ Unverified |
| UnnamedContract | unknown | celo | `0xf4113f...46c90a` | ❓ Unverified |
| UnnamedContract | unknown | celo | `0xf891c4...6db75d` | ❓ Unverified |
| UnnamedContract | unknown | celo | `0xfaa2e7...a07f30` | ❓ Unverified |
| UnnamedContract | unknown | celo | `0xfc7efd...4d5ed9` | ❓ Unverified |
| UnnamedContract | unknown | ink | `0x5541bc...788348` | ❓ Unverified |
| UnnamedContract | unknown | ink | `0x64da1a...9a06d4` | ❓ Unverified |
| UnnamedContract | unknown | ink | `0x65cd1f...2074ac` | ❓ Unverified |
| UnnamedContract | unknown | ink | `0x822b0b...093618` | ❓ Unverified |
| UnnamedContract | unknown | ink | `0x9176b8...9f19b5` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [View Security Audit Report →](https://github.com/bailsec/BailSec/blob/main/Bailsec%20-%20ICHI%20-%20Vaults%20-%20Final%20Report.pdf) | yAudit | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [0001-dataset-cache-manifest-and-runtime-adapters.md](https://github.com/DefiLlama/defillama-app/blob/main/docs/adr/0001-dataset-cache-manifest-and-runtime-adapters.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [0002-metadata-manifest-and-pull-command.md](https://github.com/DefiLlama/defillama-app/blob/main/docs/adr/0002-metadata-manifest-and-pull-command.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [0003-bun-package-manager-node-runtime.md](https://github.com/DefiLlama/defillama-app/blob/main/docs/adr/0003-bun-package-manager-node-runtime.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| base | [`0x065cb8...6ea031`](./contracts/base-8453/0x065cb8139e9fed6c97f8b0851e599c56286ea031/) | ICHIVaultDeployer | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| celo | [`0x238394...4fbed8`](./contracts/celo-42220/0x238394541de407fd494e455ef17c9d991f4fbed8/) | ICHIVaultDepositGuard | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| celo | [`0x141db8...1d9f25`](./contracts/celo-42220/0x141db85183ddb07dee22c33846aebde2101d9f25/) | ICHIVaultDepositGuardExtendedForMFD | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| celo | [`0x1f9563...0838e6`](./contracts/celo-42220/0x1f9563a0a99d1c1893fbe0cacda7577b4a0838e6/) | ICHIVaultFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| celo | [`0x6d7fc9...e0b0c2`](./contracts/celo-42220/0x6d7fc94c5106a64a43b80fe8e4b3704d6ce0b0c2/) | QuoterV1 | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x08992f...009691`](./contracts/polygon-137/0x08992f9f36510abb1c31785c03f36863c3009691/) | RebalancerFactory | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| celo | [`0x52a60f...ce2471`](./contracts/celo-42220/0x52a60fa5092f92b96d1a007eedfcd349d6ce2471/) | SymbolLib | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| celo | [`0x065cb8...6ea031`](./contracts/celo-42220/0x065cb8139e9fed6c97f8b0851e599c56286ea031/) | UV3Math | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| celo | [`0x0de3ba...31658c`](./contracts/celo-42220/0x0de3ba021a151030f344f8d05595672bbe31658c/) | VaultLocker | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| celo | [`0x69bf65...d44e2a`](./contracts/celo-42220/0x69bf658252d8fd535a28a5cb477abe42a2d44e2a/) | VaultSlippageCheckV2 | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| celo | [`0xaa650b...157158`](./contracts/celo-42220/0xaa650baa871269952b12a8ed8fa88d5c64157158/) | VaultSlippageCheckV2_1 | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x16dfbb...9fde29`](./contracts/polygon-137/0x16dfbb3f6c2a7a3ed697f7233b3e83001a9fde29/) | VaultSlippageCheckV3 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| celo | [`0x4eecd2...11d6da`](./contracts/celo-42220/0x4eecd2cee06598c942a4c24f91b4452a1b11d6da/) | VolatilityCheck | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 121 |
| upstream | 0 |
| standard_library | 1 |
| needs_review | 42 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 4
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Zero-match audit list:

- [2135] View Security Audit Report →
- [11312] 0001-dataset-cache-manifest-and-runtime-adapters.md
- [11313] 0002-metadata-manifest-and-pull-command.md
- [11314] 0003-bun-package-manager-node-runtime.md

Fork inheritance lineage and inherited audits are included when available.
