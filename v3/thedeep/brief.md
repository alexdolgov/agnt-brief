# Agentic Audit Brief: TheDeep

## Project Overview

- Project: TheDeep (`thedeep`)
- Website: [https://app.thedeep.ink/](https://app.thedeep.ink/)
- Lifecycle: unknown
- Generated: 2026-07-03T21:07:00.841Z
- Pipeline run: v2-pipeline-2026-07-01-3e33f2-b097
- Chains: base, celo, ink, polygon
- Contract surface: 184 unique implementations (256 raw deployments)
- DeFi Llama TVL: $6,543,580.05
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Liquidity Manager. Structurally: 24 project-authored contract(s) across 2 chain(s); 4 ERC20 tokens; role-gated via AccessControl; upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 7 functional families. Its contracts share 2 common project-authored base contract(s) (ichivaultdepositguard, aegisvaultcore). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 261; live-surface contracts included: 256 (91 live, 165 unknown).
- Excluded by liveness: 5 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 6/23 (26.1%)
- Deployed-live implementations: 23 of 184 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 6/23
- Verified + Unaudited implementations: 17
- Verified by bytecode match: 0
- Unverified implementations: 161
- Unique implementations: 184
- Raw deployments: 256
- Audits discovered: 1 (1 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 1
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2024-12 (aging)
- Audit staleness (calendar age): 0 fresh, 1 aging, 0 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 6 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| yAudit | Tier 2 | 6 | 26.1% | 2024-12 |

## Contract Surface

### ✅ Verified + Audited (6)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| ICHIVaultDeployer | unknown | base | n/a | 9 deployments: polygon `0xd20feb...1f39a6`; base [`0x065cb8...6ea031`](./contracts/base-8453/0x065cb8139e9fed6c97f8b0851e599c56286ea031/); base `0x5507b5...98d8b7`; celo `0x544113...2756e1`; celo `0x561200...9fbd20`; celo `0xb78144...c8eb68`; celo `0xe3f26d...900dd4`; celo `0xfab743...7c068b`; celo `0xfbf389...607065` | ✅ Audited |
| ICHIVaultDepositGuard | core_logic | celo | n/a | 10 deployments: polygon `0x2b8ca8...76d4c6`; polygon `0x7f659c...e3dc06`; polygon `0xeecb7b...d9eb3c`; polygon `0xfb6c43...bb4417`; base `0xbf38e4...599819`; base `0xe2381b...a31f26`; celo [`0x238394...4fbed8`](./contracts/celo-42220/0x238394541de407fd494e455ef17c9d991f4fbed8/); celo `0x4fa116...75a529`; celo `0x62fd18...4774c2`; celo `0xa19595...4d5a14` | ✅ Audited |
| ICHIVaultFactory | unknown | celo | n/a | 12 deployments: polygon `0xf39a4c...9b0298`; base `0xabe5b5...8ab3b3`; base `0xbff23e...d17ad1`; base `0xf6b5ab...045fa6`; base `0xfbf389...607065`; celo [`0x1f9563...0838e6`](./contracts/celo-42220/0x1f9563a0a99d1c1893fbe0cacda7577b4a0838e6/); celo `0x2f4b48...36d085`; celo `0x7df494...14e975`; celo `0x82dca6...e33870`; celo `0x8d05f6...3eb92a`; celo `0x9fab4b...d7418f`; celo `0xb3bf88...d3e5bf` | ✅ Audited |
| UV3Math | unknown | celo | n/a | 14 deployments: polygon `0x8d6cdb...a9fc0d`; base `0xb177cf...5a04e2`; base `0xbf60a8...e057a1`; celo [`0x065cb8...6ea031`](./contracts/celo-42220/0x065cb8139e9fed6c97f8b0851e599c56286ea031/); celo `0x3b5fbc...4e0d3b`; celo `0x460812...898738`; celo `0x7a4ae8...8ede18`; celo `0x7f659c...e3dc06`; celo `0xa45a0a...3d883d`; celo `0xacdeab...35a3a6`; celo `0xafec07...dadf69`; celo `0xb9b42b...626dcc`; celo `0xf6b5ab...045fa6`; celo `0xfa0263...1b97c5` | ✅ Audited |
| VaultSlippageCheckV2 | core_logic | celo | n/a | [`0x69bf65...d44e2a`](./contracts/celo-42220/0x69bf658252d8fd535a28a5cb477abe42a2d44e2a/) | ✅ Audited |
| VaultSlippageCheckV2_1 | core_logic | celo | n/a | [`0xaa650b...157158`](./contracts/celo-42220/0xaa650baa871269952b12a8ed8fa88d5c64157158/) | ✅ Audited |

### ⚠️ Verified + Unaudited (17)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| AegisVault | unknown | celo | n/a | 4 deployments: celo [`0x289dc4...9df1cd`](./contracts/celo-42220/0x289dc4313997f78f04c2959a9a50aec4739df1cd/); celo `0x3586c6...ffa98f`; celo `0x8d6cdb...a9fc0d`; celo `0xf36abd...b851b6` | ⚠️ Unaudited |
| AegisVaultERC20 | unknown | celo | n/a | 4 deployments: celo [`0x16dfbb...9fde29`](./contracts/celo-42220/0x16dfbb3f6c2a7a3ed697f7233b3e83001a9fde29/); celo `0xd20feb...1f39a6`; celo `0xeecb7b...d9eb3c`; celo `0xf92ac7...dd3cdb` | ⚠️ Unaudited |
| AegisVaultFactory | unknown | celo | n/a | 4 deployments: celo [`0x51a0d7...e57959`](./contracts/celo-42220/0x51a0d74e1791399ce02aafd9a21dc4637fe57959/); celo `0xbeff79...34f6dd`; celo `0xe83a69...33e8fc`; celo `0xf39a4c...9b0298` | ⚠️ Unaudited |
| ICHIVaultDepositGuardExtendedForMFD | core_logic | celo | n/a | 3 deployments: celo [`0x141db8...1d9f25`](./contracts/celo-42220/0x141db85183ddb07dee22c33846aebde2101d9f25/); celo `0xb066a0...9029c3`; celo `0xdb771e...d6fccc` | ⚠️ Unaudited |
| ICHIVaultMigrationGuard | operational_periphery | celo | n/a | [`0x7ba715...90bb56`](./contracts/celo-42220/0x7ba715350fa7d3120712b4ab1e3fc89f9090bb56/) | ⚠️ Unaudited |
| MultiFeeDistributionFactory | registry | celo | n/a | 3 deployments: celo [`0x772960...3790b3`](./contracts/celo-42220/0x772960d9a88004cdb2cc0fca020e04bfea3790b3/); celo `0xb005d5...0002fc`; celo `0xe734a1...e73017` | ⚠️ Unaudited |
| ProxyAdmin | unknown | base | n/a | 4 deployments: base [`0x1b0ef0...a4cd63`](./contracts/base-8453/0x1b0ef045830466171d617dd0f1142ad699a4cd63/); base `0xbbb97d...f46ad3`; celo `0x2fb241...d7a931`; celo `0xb978c5...f1a415` | ⚠️ Unaudited |
| QuoterV1 | periphery | celo | n/a | [`0xe1962f...0f8f85`](./contracts/celo-42220/0xe1962f415feb5915962d5d3a075311e6be0f8f85/) | ⚠️ Unaudited |
| RebalancerFactory | unknown | base | n/a | [`0x2d2c72...a73fc0`](./contracts/base-8453/0x2d2c72c4dc71aa32d64e5142e336741131a73fc0/) | ⚠️ Unaudited |
| RebalancerFactory | adapter | base | n/a | [`0xf8b3f6...ff765e`](./contracts/base-8453/0xf8b3f6727e44abb211c0049fc849fbb091ff765e/) | ⚠️ Unaudited |
| RebalancerFactory | adapter | celo | n/a | [`0x101eb1...bfc879`](./contracts/celo-42220/0x101eb16bdba37979a771c86e1caafbadbabfc879/) | ⚠️ Unaudited |
| RebalancerFactory | adapter | celo | n/a | [`0x215d61...e3a50c`](./contracts/celo-42220/0x215d61c7a658847c9595cdf8d145fd69c2e3a50c/) | ⚠️ Unaudited |
| RebalancerFactory | unknown | celo | n/a | [`0xfa196a...e5c234`](./contracts/celo-42220/0xfa196a6c9137b320e8801252e3020f25aee5c234/) | ⚠️ Unaudited |
| SymbolLib | unknown | celo | n/a | 4 deployments: celo [`0x52a60f...ce2471`](./contracts/celo-42220/0x52a60fa5092f92b96d1a007eedfcd349d6ce2471/); celo `0xa2969b...494db7`; celo `0xad8408...40b780`; celo `0xbed3ce...9de85e` | ⚠️ Unaudited |
| VaultLocker | core_logic | celo | n/a | 8 deployments: polygon `0x39db7d...38510a`; polygon `0x460812...898738`; polygon `0x6e2bbd...d1c814`; polygon `0x827cce...543047`; celo [`0x0de3ba...31658c`](./contracts/celo-42220/0x0de3ba021a151030f344f8d05595672bbe31658c/); celo `0x2a8d03...d0e337`; celo `0x7f2eaf...ad8a65`; celo `0xd2c08d...5837b3` | ⚠️ Unaudited |
| VaultSlippageCheckV3 | core_logic | celo | n/a | [`0xcec871...4b7da8`](./contracts/celo-42220/0xcec8716cdd60856eacaa74d499abd14ae34b7da8/) | ⚠️ Unaudited |
| VolatilityCheck | unknown | celo | n/a | 2 deployments: celo [`0x4eecd2...11d6da`](./contracts/celo-42220/0x4eecd2cee06598c942a4c24f91b4452a1b11d6da/); celo `0x6c2e26...74e72e` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (161)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| RebalancerFactory | adapter | polygon | n/a | `0x08992f...009691` | ❓ Unverified |
| RebalancerFactory | adapter | polygon | n/a | `0x641da3...4a4cdc` | ❓ Unverified |
| RebalancerFactory | adapter | polygon | n/a | `0x67de64...c7b278` | ❓ Unverified |
| RebalancerFactory | adapter | polygon | n/a | `0x6d7fc9...e0b0c2` | ❓ Unverified |
| RebalancerFactory | adapter | polygon | n/a | `0x8cb886...35a23c` | ❓ Unverified |
| RebalancerFactory | adapter | polygon | n/a | `0xdbbdc2...8773b9` | ❓ Unverified |
| RebalancerFactory | adapter | polygon | n/a | `0xf1d63f...dbfac8` | ❓ Unverified |
| RebalancerFactory | adapter | polygon | n/a | `0xffaff1...130c34` | ❓ Unverified |
| RebalancerFactory | adapter | celo | n/a | `0x16eb8e...b96483` | ❓ Unverified |
| RebalancerFactory | unknown | celo | n/a | `0x606332...016d05` | ❓ Unverified |
| RebalancerFactory | adapter | celo | n/a | `0x83ee90...edc23f` | ❓ Unverified |
| RebalancerFactory | adapter | celo | n/a | `0xe04ba7...cbbef3` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x097cdb...a1255c` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x0a13a8...67fb37` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x0ac9e4...fd47f7` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x0e22c7...085cbd` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x1566fe...1724d5` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x16dfbb...9fde29` | ❓ Unverified |
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
| UnnamedContract | unknown | polygon | n/a | `0xa2969b...494db7` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xafcd97...05faf5` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xb1fa72...7bd171` | ❓ Unverified |
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
| UnnamedContract | unknown | polygon | n/a | `0xf36abd...b851b6` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xfbdf07...ba5e0d` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xfca3b4...867f03` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xfea6cc...211dd1` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x0248b9...9cfe4b` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x02f4a9...ccfcf5` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x101eb1...bfc879` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x2e76a8...7fedd6` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x6f85eb...31fd8b` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x921acc...cbb2aa` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xdd2346...9dc72d` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xf3145e...380e5b` | ❓ Unverified |
| UnnamedContract | unknown | celo | n/a | `0x05043e...87947b` | ❓ Unverified |
| UnnamedContract | unknown | celo | n/a | `0x0c551e...9da944` | ❓ Unverified |
| UnnamedContract | unknown | celo | n/a | `0x0e9a6b...d28a9c` | ❓ Unverified |
| UnnamedContract | unknown | celo | n/a | `0x0ffba7...083b09` | ❓ Unverified |
| UnnamedContract | unknown | celo | n/a | `0x130666...ab6788` | ❓ Unverified |
| UnnamedContract | unknown | celo | n/a | `0x14380c...f2d796` | ❓ Unverified |
| UnnamedContract | unknown | celo | n/a | `0x1657a6...0e1a02` | ❓ Unverified |
| UnnamedContract | unknown | celo | n/a | `0x16edb1...348ef8` | ❓ Unverified |
| UnnamedContract | unknown | celo | n/a | `0x178369...3000b3` | ❓ Unverified |
| UnnamedContract | unknown | celo | n/a | `0x17f1a5...6fad11` | ❓ Unverified |
| UnnamedContract | unknown | celo | n/a | `0x1919c1...dc2163` | ❓ Unverified |
| UnnamedContract | unknown | celo | n/a | `0x204f7c...25f0d2` | ❓ Unverified |
| UnnamedContract | unknown | celo | n/a | `0x22b2a7...57e875` | ❓ Unverified |
| UnnamedContract | unknown | celo | n/a | `0x242cd1...ab65de` | ❓ Unverified |
| UnnamedContract | unknown | celo | n/a | `0x278719...ffe90c` | ❓ Unverified |
| UnnamedContract | unknown | celo | n/a | `0x288f5b...5313ac` | ❓ Unverified |
| UnnamedContract | unknown | celo | n/a | `0x34513e...2d8b5f` | ❓ Unverified |
| UnnamedContract | unknown | celo | n/a | `0x36a3f7...537b76` | ❓ Unverified |
| UnnamedContract | unknown | celo | n/a | `0x3bc85a...d0e909` | ❓ Unverified |
| UnnamedContract | unknown | celo | n/a | `0x3c568f...835663` | ❓ Unverified |
| UnnamedContract | unknown | celo | n/a | `0x3e5685...ce1aec` | ❓ Unverified |
| UnnamedContract | unknown | celo | n/a | `0x4238eb...1ab723` | ❓ Unverified |
| UnnamedContract | unknown | celo | n/a | `0x48e263...54693f` | ❓ Unverified |
| UnnamedContract | unknown | celo | n/a | `0x4dc520...086497` | ❓ Unverified |
| UnnamedContract | unknown | celo | n/a | `0x4f5202...1e4d79` | ❓ Unverified |
| UnnamedContract | unknown | celo | n/a | `0x500c17...a5ded8` | ❓ Unverified |
| UnnamedContract | unknown | celo | n/a | `0x513844...e27987` | ❓ Unverified |
| UnnamedContract | unknown | celo | n/a | `0x535117...fab0f8` | ❓ Unverified |
| UnnamedContract | unknown | celo | n/a | `0x56326f...d3eaf2` | ❓ Unverified |
| UnnamedContract | unknown | celo | n/a | `0x5df820...fe1001` | ❓ Unverified |
| UnnamedContract | unknown | celo | n/a | `0x66854c...62eece` | ❓ Unverified |
| UnnamedContract | unknown | celo | n/a | `0x683334...f9b689` | ❓ Unverified |
| UnnamedContract | unknown | celo | n/a | `0x6aad66...53524e` | ❓ Unverified |
| UnnamedContract | unknown | celo | n/a | `0x6b7ccf...27208a` | ❓ Unverified |
| UnnamedContract | unknown | celo | n/a | `0x6dbb1e...866fd7` | ❓ Unverified |
| UnnamedContract | unknown | celo | n/a | `0x6dc696...ad61e2` | ❓ Unverified |
| UnnamedContract | unknown | celo | n/a | `0x6f6b1b...90e106` | ❓ Unverified |
| UnnamedContract | unknown | celo | n/a | `0x7582ce...26809a` | ❓ Unverified |
| UnnamedContract | unknown | celo | n/a | `0x7a3bf3...10d04c` | ❓ Unverified |
| UnnamedContract | unknown | celo | n/a | `0x808baa...5dd2ea` | ❓ Unverified |
| UnnamedContract | unknown | celo | n/a | `0x822b0b...093618` | ❓ Unverified |
| UnnamedContract | unknown | celo | n/a | `0x8244fd...8d11ad` | ❓ Unverified |
| UnnamedContract | unknown | celo | n/a | `0x838602...1c2119` | ❓ Unverified |
| UnnamedContract | unknown | celo | n/a | `0x858405...0c78ae` | ❓ Unverified |
| UnnamedContract | unknown | celo | n/a | `0x8e8aa5...2ad7e6` | ❓ Unverified |
| UnnamedContract | unknown | celo | n/a | `0x92b1ba...63629c` | ❓ Unverified |
| UnnamedContract | unknown | celo | n/a | `0x945193...1d640a` | ❓ Unverified |
| UnnamedContract | unknown | celo | n/a | `0x974ea7...7fc0ad` | ❓ Unverified |
| UnnamedContract | unknown | celo | n/a | `0x994969...44369c` | ❓ Unverified |
| UnnamedContract | unknown | celo | n/a | `0x998f04...9ac395` | ❓ Unverified |
| UnnamedContract | unknown | celo | n/a | `0x99fb98...4a8c8d` | ❓ Unverified |
| UnnamedContract | unknown | celo | n/a | `0x9a0ebe...4dc8d8` | ❓ Unverified |
| UnnamedContract | unknown | celo | n/a | `0x9bd308...241f76` | ❓ Unverified |
| UnnamedContract | unknown | celo | n/a | `0x9ff36c...5bf847` | ❓ Unverified |
| UnnamedContract | unknown | celo | n/a | `0xa21139...ba4f42` | ❓ Unverified |
| UnnamedContract | unknown | celo | n/a | `0xa24c23...45fca6` | ❓ Unverified |
| UnnamedContract | unknown | celo | n/a | `0xa287a2...13e9d4` | ❓ Unverified |
| UnnamedContract | unknown | celo | n/a | `0xa8b1ba...4819dc` | ❓ Unverified |
| UnnamedContract | unknown | celo | n/a | `0xae7b34...f0b6c0` | ❓ Unverified |
| UnnamedContract | unknown | celo | n/a | `0xb108b4...db86ef` | ❓ Unverified |
| UnnamedContract | unknown | celo | n/a | `0xb5fb13...a8b025` | ❓ Unverified |
| UnnamedContract | unknown | celo | n/a | `0xb838c2...4d07ce` | ❓ Unverified |
| UnnamedContract | unknown | celo | n/a | `0xbb1385...6a6e01` | ❓ Unverified |
| UnnamedContract | unknown | celo | n/a | `0xbdd005...754dd5` | ❓ Unverified |
| UnnamedContract | unknown | celo | n/a | `0xc1de90...f475f4` | ❓ Unverified |
| UnnamedContract | unknown | celo | n/a | `0xc2ddc7...2e261e` | ❓ Unverified |
| UnnamedContract | unknown | celo | n/a | `0xc4dcae...36b4ce` | ❓ Unverified |
| UnnamedContract | unknown | celo | n/a | `0xc9dcd7...53bb42` | ❓ Unverified |
| UnnamedContract | unknown | celo | n/a | `0xca1d96...0d87b2` | ❓ Unverified |
| UnnamedContract | unknown | celo | n/a | `0xd39809...bedd4a` | ❓ Unverified |
| UnnamedContract | unknown | celo | n/a | `0xd3db08...947894` | ❓ Unverified |
| UnnamedContract | unknown | celo | n/a | `0xd4d56d...d695e3` | ❓ Unverified |
| UnnamedContract | unknown | celo | n/a | `0xd59966...8fe2aa` | ❓ Unverified |
| UnnamedContract | unknown | celo | n/a | `0xd8322b...91b08c` | ❓ Unverified |
| UnnamedContract | unknown | celo | n/a | `0xdeb87c...ccf879` | ❓ Unverified |
| UnnamedContract | unknown | celo | n/a | `0xdf5fea...766529` | ❓ Unverified |
| UnnamedContract | unknown | celo | n/a | `0xe02768...0ce869` | ❓ Unverified |
| UnnamedContract | unknown | celo | n/a | `0xe14209...5dbedd` | ❓ Unverified |
| UnnamedContract | unknown | celo | n/a | `0xe1c415...a998e1` | ❓ Unverified |
| UnnamedContract | unknown | celo | n/a | `0xe5fa9c...09a8da` | ❓ Unverified |
| UnnamedContract | unknown | celo | n/a | `0xe7948b...77ab55` | ❓ Unverified |
| UnnamedContract | unknown | celo | n/a | `0xe7cb9d...2e9e6d` | ❓ Unverified |
| UnnamedContract | unknown | celo | n/a | `0xed0819...3371df` | ❓ Unverified |
| UnnamedContract | unknown | celo | n/a | `0xf2bf7b...d32d5c` | ❓ Unverified |
| UnnamedContract | unknown | celo | n/a | `0xf4113f...46c90a` | ❓ Unverified |
| UnnamedContract | unknown | celo | n/a | `0xf891c4...6db75d` | ❓ Unverified |
| UnnamedContract | unknown | celo | n/a | `0xfaa2e7...a07f30` | ❓ Unverified |
| UnnamedContract | unknown | celo | n/a | `0xfc7efd...4d5ed9` | ❓ Unverified |
| UnnamedContract | unknown | ink | n/a | 5 deployments: ink `0x5541bc...788348`; ink `0x64da1a...9a06d4`; ink `0x65cd1f...2074ac`; ink `0x822b0b...093618`; ink `0x9176b8...9f19b5` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [Bailsec - ICHI - Vaults - Final Report.pdf](https://github.com/bailsec/BailSec/blob/main/Bailsec%20-%20ICHI%20-%20Vaults%20-%20Final%20Report.pdf) | yAudit | Audit | 2024-12 | aging | Direct | contract_name | 47 | high |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 0 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 184 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=1
- Match method counts: extraction_exact=47

Fork inheritance lineage and inherited audits are included when available.
