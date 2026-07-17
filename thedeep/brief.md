# Agentic Audit Brief: TheDeep

## Project Overview

- Project: TheDeep (`thedeep`)
- Website: [https://app.thedeep.ink/](https://app.thedeep.ink/)
- Lifecycle: unknown
- Generated: 2026-07-04T14:54:01.407Z
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

- Coverage of deployed-live implementations: 6/22 (27.3%)
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
| ICHIVaultDeployer | unknown | base | n/a | 9 deployments: polygon `0xd20feb1df00171aa2f59c9f53c4dd230dc1f39a6`; base [`0x065cb8139e9fed6c97f8b0851e599c56286ea031`](./contracts/base-8453/0x065cb8139e9fed6c97f8b0851e599c56286ea031/); base `0x5507b537650897493aed459457255996bf98d8b7`; celo `0x544113cc95cc2d076065c6028ab718d8682756e1`; celo `0x56120079d3ed948223c746e07199cb388f9fbd20`; celo `0xb78144a950ed367f8fb94322bfa079f30bc8eb68`; celo `0xe3f26d6fad0613c9d7f6b8e6e644f7fa09900dd4`; celo `0xfab743b967ea5b8268e4d8f11159ad9e8e7c068b`; celo `0xfbf38920ccbcff7268ad714ae5f9fad6df607065` | ✅ Audited |
| ICHIVaultDepositGuard | core_logic | celo | n/a | 10 deployments: polygon `0x2b8ca8e6768e49f1256f91bf5b0d8f30a776d4c6`; polygon `0x7f659c9010e5566a2628d1eaf0cebf149be3dc06`; polygon `0xeecb7ba52f1a689574e2f64242743f0a0ad9eb3c`; polygon `0xfb6c432e2fd193d3fc59519aa8a676f5d6bb4417`; base `0xbf38e4ffb0b0aa075531b38d71d3b18a5f599819`; base `0xe2381b5afae99b899596bc550184a080daa31f26`; celo [`0x238394541de407fd494e455ef17c9d991f4fbed8`](./contracts/celo-42220/0x238394541de407fd494e455ef17c9d991f4fbed8/); celo `0x4fa116f8864ee7d7cee1f5fbb58d41b70d75a529`; celo `0x62fd1824c810906f449227f1f453528bb54774c2`; celo `0xa19595c6ca6186621ddde0dba0ad24c5e84d5a14` | ✅ Audited |
| ICHIVaultFactory | unknown | celo | n/a | 12 deployments: polygon `0xf39a4c7c87310116ad915833769d301c599b0298`; base `0xabe5b5ac472ead17b4b4cac7faf42430748ab3b3`; base `0xbff23e60f41a11cf131b7180cbd2bd3d47d17ad1`; base `0xf6b5ab192f2696921f60a1ff00b99596c4045fa6`; base `0xfbf38920ccbcff7268ad714ae5f9fad6df607065`; celo [`0x1f9563a0a99d1c1893fbe0cacda7577b4a0838e6`](./contracts/celo-42220/0x1f9563a0a99d1c1893fbe0cacda7577b4a0838e6/); celo `0x2f4b480a83b4e0bc1a8203ed039539fb2c36d085`; celo `0x7df494ad51faeafb8c46c63d23ee40a48b14e975`; celo `0x82dca62c4b5dd28cc85ce8ae3b170ce020e33870`; celo `0x8d05f6870106707baecfcf5c0570db7a583eb92a`; celo `0x9fab4bdd4e05f5c023ccc85d2071b49791d7418f`; celo `0xb3bf88cb919a222a6f9c90ca8a9ac261cbd3e5bf` | ✅ Audited |
| UV3Math | unknown | celo | n/a | 14 deployments: polygon `0x8d6cdb3d442dd1e6842f44ff3004e9be79a9fc0d`; base `0xb177cf10f4382f671e5923c6c06f7b601d5a04e2`; base `0xbf60a8e623d4e776f6ffa94d8bb7ef7c22e057a1`; celo [`0x065cb8139e9fed6c97f8b0851e599c56286ea031`](./contracts/celo-42220/0x065cb8139e9fed6c97f8b0851e599c56286ea031/); celo `0x3b5fbce2bd4587036dc1d7df44296f19094e0d3b`; celo `0x4608121a8d9a5f54664649e95e40829286898738`; celo `0x7a4ae815d561d267a0695b0fe8fe7f01728ede18`; celo `0x7f659c9010e5566a2628d1eaf0cebf149be3dc06`; celo `0xa45a0a9517700b747d61ab3e7f1bf673e43d883d`; celo `0xacdeab6e5baf2c9cffeb37d79271a5bd6635a3a6`; celo `0xafec075e37e7743593aeb2b67cfdd2907bdadf69`; celo `0xb9b42bf1478334df3557cf7a3793f6a3ff626dcc`; celo `0xf6b5ab192f2696921f60a1ff00b99596c4045fa6`; celo `0xfa02638efa7d79717b071a4e4fc5062d0d1b97c5` | ✅ Audited |
| VaultSlippageCheckV2 | core_logic | celo | n/a | [`0x69bf658252d8fd535a28a5cb477abe42a2d44e2a`](./contracts/celo-42220/0x69bf658252d8fd535a28a5cb477abe42a2d44e2a/) | ✅ Audited |
| VaultSlippageCheckV2_1 | core_logic | celo | n/a | [`0xaa650baa871269952b12a8ed8fa88d5c64157158`](./contracts/celo-42220/0xaa650baa871269952b12a8ed8fa88d5c64157158/) | ✅ Audited |

### ⚠️ Verified + Unaudited (17)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| AegisVault | unknown | celo | n/a | 4 deployments: celo [`0x289dc4313997f78f04c2959a9a50aec4739df1cd`](./contracts/celo-42220/0x289dc4313997f78f04c2959a9a50aec4739df1cd/); celo `0x3586c614486ee965275f7e33a17295fdfeffa98f`; celo `0x8d6cdb3d442dd1e6842f44ff3004e9be79a9fc0d`; celo `0xf36abda56b4a07800ec7cd52bf3bea3014b851b6` | ⚠️ Unaudited |
| AegisVaultERC20 | unknown | celo | n/a | 4 deployments: celo [`0x16dfbb3f6c2a7a3ed697f7233b3e83001a9fde29`](./contracts/celo-42220/0x16dfbb3f6c2a7a3ed697f7233b3e83001a9fde29/); celo `0xd20feb1df00171aa2f59c9f53c4dd230dc1f39a6`; celo `0xeecb7ba52f1a689574e2f64242743f0a0ad9eb3c`; celo `0xf92ac78dac667bae6b55c53b4da93c5c6ddd3cdb` | ⚠️ Unaudited |
| AegisVaultFactory | unknown | celo | n/a | 4 deployments: celo [`0x51a0d74e1791399ce02aafd9a21dc4637fe57959`](./contracts/celo-42220/0x51a0d74e1791399ce02aafd9a21dc4637fe57959/); celo `0xbeff7973ff3dfca2aa86e1da41abc8321334f6dd`; celo `0xe83a69e48a5715afe11ae39f6837035c1833e8fc`; celo `0xf39a4c7c87310116ad915833769d301c599b0298` | ⚠️ Unaudited |
| ICHIVaultDepositGuardExtendedForMFD | core_logic | celo | n/a | 3 deployments: celo [`0x141db85183ddb07dee22c33846aebde2101d9f25`](./contracts/celo-42220/0x141db85183ddb07dee22c33846aebde2101d9f25/); celo `0xb066a06c730e9930e28c6f511198abcca49029c3`; celo `0xdb771ed1930b1a5993ca878e8c4f9a3e0dd6fccc` | ⚠️ Unaudited |
| ICHIVaultMigrationGuard | operational_periphery | celo | n/a | [`0x7ba715350fa7d3120712b4ab1e3fc89f9090bb56`](./contracts/celo-42220/0x7ba715350fa7d3120712b4ab1e3fc89f9090bb56/) | ⚠️ Unaudited |
| MultiFeeDistributionFactory | registry | celo | n/a | 3 deployments: celo [`0x772960d9a88004cdb2cc0fca020e04bfea3790b3`](./contracts/celo-42220/0x772960d9a88004cdb2cc0fca020e04bfea3790b3/); celo `0xb005d5b820acc4b6b86fb67cd14013b3c50002fc`; celo `0xe734a15e60d2ec14225cd3e2da56c11608e73017` | ⚠️ Unaudited |
| ProxyAdmin | unknown | base | n/a | 4 deployments: base [`0x1b0ef045830466171d617dd0f1142ad699a4cd63`](./contracts/base-8453/0x1b0ef045830466171d617dd0f1142ad699a4cd63/); base `0xbbb97d634460dacca0d41e249510bb741ef46ad3`; celo `0x2fb24195c965b4a0cdfc27dd5c85ec1a46d7a931`; celo `0xb978c58fa57bbd3951d053edea493e5c3ff1a415` | ⚠️ Unaudited |
| QuoterV1 | periphery | celo | n/a | [`0xe1962f415feb5915962d5d3a075311e6be0f8f85`](./contracts/celo-42220/0xe1962f415feb5915962d5d3a075311e6be0f8f85/) | ⚠️ Unaudited |
| RebalancerFactory | unknown | base | n/a | [`0x2d2c72c4dc71aa32d64e5142e336741131a73fc0`](./contracts/base-8453/0x2d2c72c4dc71aa32d64e5142e336741131a73fc0/) | ⚠️ Unaudited |
| RebalancerFactory | adapter | base | n/a | [`0xf8b3f6727e44abb211c0049fc849fbb091ff765e`](./contracts/base-8453/0xf8b3f6727e44abb211c0049fc849fbb091ff765e/) | ⚠️ Unaudited |
| RebalancerFactory | adapter | celo | n/a | [`0x101eb16bdba37979a771c86e1caafbadbabfc879`](./contracts/celo-42220/0x101eb16bdba37979a771c86e1caafbadbabfc879/) | ⚠️ Unaudited |
| RebalancerFactory | adapter | celo | n/a | [`0x215d61c7a658847c9595cdf8d145fd69c2e3a50c`](./contracts/celo-42220/0x215d61c7a658847c9595cdf8d145fd69c2e3a50c/) | ⚠️ Unaudited |
| RebalancerFactory | unknown | celo | n/a | [`0xfa196a6c9137b320e8801252e3020f25aee5c234`](./contracts/celo-42220/0xfa196a6c9137b320e8801252e3020f25aee5c234/) | ⚠️ Unaudited |
| SymbolLib | unknown | celo | n/a | 4 deployments: celo [`0x52a60fa5092f92b96d1a007eedfcd349d6ce2471`](./contracts/celo-42220/0x52a60fa5092f92b96d1a007eedfcd349d6ce2471/); celo `0xa2969b83fd4e5decf46f037a26f8e5048b494db7`; celo `0xad8408d13381815fdb1b598bf162e7be8740b780`; celo `0xbed3cea309c8e413f785e1b547d06f37c49de85e` | ⚠️ Unaudited |
| VaultLocker | core_logic | celo | n/a | 8 deployments: polygon `0x39db7da035752c969265ef0cc5ab8481ba38510a`; polygon `0x4608121a8d9a5f54664649e95e40829286898738`; polygon `0x6e2bbd6035cb8d2b97be8e0c1e06c6b61fd1c814`; polygon `0x827cce45e8d39088e21cef2642f43100d0543047`; celo [`0x0de3ba021a151030f344f8d05595672bbe31658c`](./contracts/celo-42220/0x0de3ba021a151030f344f8d05595672bbe31658c/); celo `0x2a8d0321cdac91be9da82d069c6116106ed0e337`; celo `0x7f2eaf858c5ebac086eabf3a3afeb0742fad8a65`; celo `0xd2c08d7a919b86f939cd4788caaa136de85837b3` | ⚠️ Unaudited |
| VaultSlippageCheckV3 | core_logic | celo | n/a | [`0xcec8716cdd60856eacaa74d499abd14ae34b7da8`](./contracts/celo-42220/0xcec8716cdd60856eacaa74d499abd14ae34b7da8/) | ⚠️ Unaudited |
| VolatilityCheck | unknown | celo | n/a | 2 deployments: celo [`0x4eecd2cee06598c942a4c24f91b4452a1b11d6da`](./contracts/celo-42220/0x4eecd2cee06598c942a4c24f91b4452a1b11d6da/); celo `0x6c2e26005a0c1b5f610aacd9895d58f10f74e72e` | ⚠️ Unaudited |

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
| RebalancerFactory | adapter | polygon | n/a | `0x08992f9f36510abb1c31785c03f36863c3009691` | ❓ Unverified |
| RebalancerFactory | adapter | polygon | n/a | `0x641da39d1f5582f05341d8e836520bf1744a4cdc` | ❓ Unverified |
| RebalancerFactory | adapter | polygon | n/a | `0x67de648799d29f5b70fcf42d8c9d3de0b0c7b278` | ❓ Unverified |
| RebalancerFactory | adapter | polygon | n/a | `0x6d7fc94c5106a64a43b80fe8e4b3704d6ce0b0c2` | ❓ Unverified |
| RebalancerFactory | adapter | polygon | n/a | `0x8cb886a9f7e86d0429bb79af468258e54735a23c` | ❓ Unverified |
| RebalancerFactory | adapter | polygon | n/a | `0xdbbdc296edfcc06815b7d8fadae4be53d78773b9` | ❓ Unverified |
| RebalancerFactory | adapter | polygon | n/a | `0xf1d63f9ed15368ebd4810b2e9a5ea5e2bfdbfac8` | ❓ Unverified |
| RebalancerFactory | adapter | polygon | n/a | `0xffaff16ab9543dd2a3d24f5ea6f1de6391130c34` | ❓ Unverified |
| RebalancerFactory | adapter | celo | n/a | `0x16eb8e3b7d23b9eddc82ba0e034860e722b96483` | ❓ Unverified |
| RebalancerFactory | unknown | celo | n/a | `0x606332d543ba56be41bfa412e038612f34016d05` | ❓ Unverified |
| RebalancerFactory | adapter | celo | n/a | `0x83ee9021c1c51dd2601f87f20230db6b3fedc23f` | ❓ Unverified |
| RebalancerFactory | adapter | celo | n/a | `0xe04ba74a7da7807427c345dc235164ef2ccbbef3` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x097cdb86deda87bc038eb13ef4488fff30a1255c` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x0a13a862d7b9da69f6b4057b4b9f6cea1367fb37` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x0ac9e4a0423eec93357e2b0f83ef8c6469fd47f7` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x0e22c78b0f85ce52b83d2ffb9624ec86e6085cbd` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x1566fe51d83f4c387c5fa2b0e1c47bfefc1724d5` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x16dfbb3f6c2a7a3ed697f7233b3e83001a9fde29` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x183e90bab73d254082800d8c43e3bb19ecb79f91` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x1c3eb3c090607b6b1e598b1722b4c91847ee8082` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x1ff3781a5a1e4818db4e5533f08c30f78c28c0ac` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x228e956d8bf3e33b796b024a664933755a999808` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x27e02127ad8e8087ce1d6ba708daeb89dafd2d48` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x2de071aca211c3af7a54dd7f5b4c4f1b1bbdf471` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x31860300e4daf46c6b1503c9061d70cc298f7002` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x3c39f3233dc0ba505978995ac46b52fde2fded58` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x46a572c5a7c143a9ce6d3108a60da900c78c6b17` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x52a60fa5092f92b96d1a007eedfcd349d6ce2471` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x5a3da426389529a2aebe2528603e789e7822f841` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x5cfe73b0238bb3e636dc4e68a31bee5d7fbea1fa` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x62a7d1fa1e67000e70e2a7ed59a99e39d8265da1` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x65cd1f0ac298519be4891b5812053e00bd2074ac` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x6f45740ec47cacba196d6f922e8c2132ec9bd199` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x6f4f7665fd287897227443b48a273d553a87d97e` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x70af57b75b99268a322473c59876c28bba3a2190` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x760801d08d37389f5996c7e0edc1b301badb9c55` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x7b7fd55e8d11aad27b178c681ebc46c0c11f257f` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x7debd5f6d6d2d43f0faa8d7fa7098759255c3c34` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x7e21f725c8865e72f9d9819d7273d32682bf5459` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x830d3cf511534eb2593387393b9657784e5df95f` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x924b26ed04f7ef1d20254412faa5efba87bb596c` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x97bf8cb6be6757ab46d44853eabefd0d4c153037` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xa2969b83fd4e5decf46f037a26f8e5048b494db7` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xafcd976baf9d547720c20ae14081f30b3305faf5` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xb1fa728d712bf35ea1adf0f949410f820e7bd171` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xb24a00f2437528b2c73aa744796af513b2e00216` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xc0fe74fd2530516bc47b35a44a24719a2dcc5cb8` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xc808cf645060af2d2338f015d65c8f4ae5c8a679` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xca3e892555bf1ed9be87d72c27d75fed68c3fde1` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xdb03e05b90bed1147df18a1997fac8e045431fac` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xe358529e139e373d4be0a5cf5e5de49744bd65c8` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xe4a759ef116d42da9515428fdff87bbe6d63f89d` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xe7961f9c4b5e7cec647c559d75ab5a1e6c170500` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xe83a69e48a5715afe11ae39f6837035c1833e8fc` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xe84f1cca606b306039b1f5bb2de4bec3c9177227` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xe8709a09d029f3c73e1f10fedb6b370074743549` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xedf7a8ac90c326062a047e0e879168be3566b463` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xee22adab82eed77f6601c1083841f4dac1d5bd30` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xee64cb87521a0b6bf589e04c6edcce148bd2ad52` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xf13de814761c91a6eddaa749e6464e8d10c0e4a1` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xf36abda56b4a07800ec7cd52bf3bea3014b851b6` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xfbdf07a9c3fd0bb0d78d78a0bddb30709dba5e0d` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xfca3b4e8a10a0f3fbaf845bbd65fa88a6c867f03` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xfea6ccabae26edef48e9cc05a599608198211dd1` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x0248b992ac2a75294b05286e9dd3a2bd3c9cfe4b` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x02f4a98a4e59e8c7ba3269cbcd1f1e9f3eccfcf5` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x101eb16bdba37979a771c86e1caafbadbabfc879` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x2e76a8d053f839a04235341df1f25235437fedd6` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x6f85eb17955257a39fd78692f6884ebe6531fd8b` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x921acca39e8d3519a503ee4a11b56d6eeacbb2aa` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xdd2346e0da9540792c2f2e86016bc44ba39dc72d` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xf3145e8cd87e94b65cf5ba336292d557ad380e5b` | ❓ Unverified |
| UnnamedContract | unknown | celo | n/a | `0x05043ee22e5e64677d42a632d42a5cb15187947b` | ❓ Unverified |
| UnnamedContract | unknown | celo | n/a | `0x0c551e82888ad524125b1160c31f87a7809da944` | ❓ Unverified |
| UnnamedContract | unknown | celo | n/a | `0x0e9a6bf68d91a22fd0d564ae33a4a46451d28a9c` | ❓ Unverified |
| UnnamedContract | unknown | celo | n/a | `0x0ffba729d5f8f05a6c663bf723a0958f1a083b09` | ❓ Unverified |
| UnnamedContract | unknown | celo | n/a | `0x130666908899327cd93ecf9abf8e3c0db2ab6788` | ❓ Unverified |
| UnnamedContract | unknown | celo | n/a | `0x14380cbff50df25372c9cb98763732e56af2d796` | ❓ Unverified |
| UnnamedContract | unknown | celo | n/a | `0x1657a62455939aaeea9741d95c79973e550e1a02` | ❓ Unverified |
| UnnamedContract | unknown | celo | n/a | `0x16edb18643a49e11a253ac05e7b870827e348ef8` | ❓ Unverified |
| UnnamedContract | unknown | celo | n/a | `0x17836940f24fdd0052a3ff06f12232def03000b3` | ❓ Unverified |
| UnnamedContract | unknown | celo | n/a | `0x17f1a5f3f3fe3aa021b75dbade990d25d56fad11` | ❓ Unverified |
| UnnamedContract | unknown | celo | n/a | `0x1919c150d0f000aa7a199cdd2a444350cbdc2163` | ❓ Unverified |
| UnnamedContract | unknown | celo | n/a | `0x204f7c93da15ac68a6665c64d36e5511e425f0d2` | ❓ Unverified |
| UnnamedContract | unknown | celo | n/a | `0x22b2a7e976f0f8060b3c74567c9d0f851c57e875` | ❓ Unverified |
| UnnamedContract | unknown | celo | n/a | `0x242cd12579467983dc521d8ac46eb13936ab65de` | ❓ Unverified |
| UnnamedContract | unknown | celo | n/a | `0x278719fc40d288f40dfd56a31a1354277effe90c` | ❓ Unverified |
| UnnamedContract | unknown | celo | n/a | `0x288f5b15650c4fb58dd51788ec0e4546cb5313ac` | ❓ Unverified |
| UnnamedContract | unknown | celo | n/a | `0x34513e8a327987bb44acf5a925a7f3b4092d8b5f` | ❓ Unverified |
| UnnamedContract | unknown | celo | n/a | `0x36a3f7859d3cc60f8586812712e11eefb7537b76` | ❓ Unverified |
| UnnamedContract | unknown | celo | n/a | `0x3bc85a1d0b99cc295acd41b26c92cdd56bd0e909` | ❓ Unverified |
| UnnamedContract | unknown | celo | n/a | `0x3c568f2e4b165ebdc036d79b5924635ffb835663` | ❓ Unverified |
| UnnamedContract | unknown | celo | n/a | `0x3e5685f27e0727846234e2ac8d966b0d7ece1aec` | ❓ Unverified |
| UnnamedContract | unknown | celo | n/a | `0x4238eb0205f6085b07b347265ce6cc6c261ab723` | ❓ Unverified |
| UnnamedContract | unknown | celo | n/a | `0x48e2633a55e3b007fa2c3fd9fcc8120c4b54693f` | ❓ Unverified |
| UnnamedContract | unknown | celo | n/a | `0x4dc520c6839c628ed4a01308e2b7ab131b086497` | ❓ Unverified |
| UnnamedContract | unknown | celo | n/a | `0x4f5202b129a83d4f0101fe8b65b10c30dc1e4d79` | ❓ Unverified |
| UnnamedContract | unknown | celo | n/a | `0x500c17803359a418a7c7685e00c1a3d5d8a5ded8` | ❓ Unverified |
| UnnamedContract | unknown | celo | n/a | `0x513844eb4841984b768531add4244f0149e27987` | ❓ Unverified |
| UnnamedContract | unknown | celo | n/a | `0x53511764de94cda43cbbadffcca3f29d2efab0f8` | ❓ Unverified |
| UnnamedContract | unknown | celo | n/a | `0x56326f8a86ed6e77ab5e5d1bc77202670fd3eaf2` | ❓ Unverified |
| UnnamedContract | unknown | celo | n/a | `0x5df820eef576986aecc0fe4900f6e11492fe1001` | ❓ Unverified |
| UnnamedContract | unknown | celo | n/a | `0x66854c8856731364a92e834a8ac2dff7c862eece` | ❓ Unverified |
| UnnamedContract | unknown | celo | n/a | `0x683334e042141f0fa15ce78e831bd128a3f9b689` | ❓ Unverified |
| UnnamedContract | unknown | celo | n/a | `0x6aad667f0f897f9f9a3e2a82618483f7fe53524e` | ❓ Unverified |
| UnnamedContract | unknown | celo | n/a | `0x6b7ccf67211f45b7cb308e5dcad5d0397227208a` | ❓ Unverified |
| UnnamedContract | unknown | celo | n/a | `0x6dbb1eb98ebe56456a2d5b7b04ae30a7d5866fd7` | ❓ Unverified |
| UnnamedContract | unknown | celo | n/a | `0x6dc6968e11b1100ed01994f693150f731ead61e2` | ❓ Unverified |
| UnnamedContract | unknown | celo | n/a | `0x6f6b1be0c50519c4c3a3b562ed382f9f9790e106` | ❓ Unverified |
| UnnamedContract | unknown | celo | n/a | `0x7582ce7690df96c375c1893c581c47361226809a` | ❓ Unverified |
| UnnamedContract | unknown | celo | n/a | `0x7a3bf3ee39af554555f3c15d69cf253e6910d04c` | ❓ Unverified |
| UnnamedContract | unknown | celo | n/a | `0x808baad715ce1e3283ce1a237e08eb2e175dd2ea` | ❓ Unverified |
| UnnamedContract | unknown | celo | n/a | `0x822b0be4958ab5b4a48da3c5f68fc54846093618` | ❓ Unverified |
| UnnamedContract | unknown | celo | n/a | `0x8244fd5b5c06f20e0f948be4dda480212e8d11ad` | ❓ Unverified |
| UnnamedContract | unknown | celo | n/a | `0x8386029a2fe3eaafd09b455f48bdec65441c2119` | ❓ Unverified |
| UnnamedContract | unknown | celo | n/a | `0x85840534d8e9afdeae6beb9d2f3d13e2ae0c78ae` | ❓ Unverified |
| UnnamedContract | unknown | celo | n/a | `0x8e8aa5e4932cd2d92a0f2e4f40c7d0f0142ad7e6` | ❓ Unverified |
| UnnamedContract | unknown | celo | n/a | `0x92b1ba6acb1b94899838a25ff59ae295e063629c` | ❓ Unverified |
| UnnamedContract | unknown | celo | n/a | `0x945193b15ea48f1c0f51051ce16bafc7601d640a` | ❓ Unverified |
| UnnamedContract | unknown | celo | n/a | `0x974ea7ab6a01bcf86cdd21362656e3942c7fc0ad` | ❓ Unverified |
| UnnamedContract | unknown | celo | n/a | `0x994969f2d3af0f49589880869cd435c6fa44369c` | ❓ Unverified |
| UnnamedContract | unknown | celo | n/a | `0x998f04847830945e7d30bf80a5da18e31c9ac395` | ❓ Unverified |
| UnnamedContract | unknown | celo | n/a | `0x99fb98dd8e856ac717c92b042803b8b11e4a8c8d` | ❓ Unverified |
| UnnamedContract | unknown | celo | n/a | `0x9a0ebec47c85fd30f1fdc90f57d2b178e84dc8d8` | ❓ Unverified |
| UnnamedContract | unknown | celo | n/a | `0x9bd3084a9485daf0174c79d10190ac00c1241f76` | ❓ Unverified |
| UnnamedContract | unknown | celo | n/a | `0x9ff36c9e11eb0fb9956054b60bd563c1645bf847` | ❓ Unverified |
| UnnamedContract | unknown | celo | n/a | `0xa211394eab9aa2691c7e78ec3ff21ff07dba4f42` | ❓ Unverified |
| UnnamedContract | unknown | celo | n/a | `0xa24c2392eeb31568d5a21e060f86b3606745fca6` | ❓ Unverified |
| UnnamedContract | unknown | celo | n/a | `0xa287a20737946cddd05bbd77cae701d4c613e9d4` | ❓ Unverified |
| UnnamedContract | unknown | celo | n/a | `0xa8b1ba27085ff8ee49c8c5a43e262fc4304819dc` | ❓ Unverified |
| UnnamedContract | unknown | celo | n/a | `0xae7b342a94a6f528c30d75bc9edc9aa6def0b6c0` | ❓ Unverified |
| UnnamedContract | unknown | celo | n/a | `0xb108b485d4948681a70cec55d060e4e40fdb86ef` | ❓ Unverified |
| UnnamedContract | unknown | celo | n/a | `0xb5fb134ac008388e9e0ffacc7fcc64176fa8b025` | ❓ Unverified |
| UnnamedContract | unknown | celo | n/a | `0xb838c26ec076a06602e0ea5da34f2482744d07ce` | ❓ Unverified |
| UnnamedContract | unknown | celo | n/a | `0xbb1385152dbb10c281a16f86b15c7dcae36a6e01` | ❓ Unverified |
| UnnamedContract | unknown | celo | n/a | `0xbdd0056e10445cc48f4a28f9710676d39f754dd5` | ❓ Unverified |
| UnnamedContract | unknown | celo | n/a | `0xc1de90bd807c230f2d616d02f329952f80f475f4` | ❓ Unverified |
| UnnamedContract | unknown | celo | n/a | `0xc2ddc723ef3b073e478cdaa2c2b2243f552e261e` | ❓ Unverified |
| UnnamedContract | unknown | celo | n/a | `0xc4dcae24f740aec23388302af598538f8836b4ce` | ❓ Unverified |
| UnnamedContract | unknown | celo | n/a | `0xc9dcd76854823a1c7b322f4c265d9d1a7653bb42` | ❓ Unverified |
| UnnamedContract | unknown | celo | n/a | `0xca1d96adb70aa14acd86ce2538b2d445040d87b2` | ❓ Unverified |
| UnnamedContract | unknown | celo | n/a | `0xd398090ba2fc528c3d6aeb17ea49038bfcbedd4a` | ❓ Unverified |
| UnnamedContract | unknown | celo | n/a | `0xd3db0880f7bfca386d37a9f28f6548110e947894` | ❓ Unverified |
| UnnamedContract | unknown | celo | n/a | `0xd4d56d64355b524cea5ed59e01c8edcf74d695e3` | ❓ Unverified |
| UnnamedContract | unknown | celo | n/a | `0xd5996604f5d841bbd1eda10cc44cedc7fe8fe2aa` | ❓ Unverified |
| UnnamedContract | unknown | celo | n/a | `0xd8322bff17d4b27b09d5ca64fee530304191b08c` | ❓ Unverified |
| UnnamedContract | unknown | celo | n/a | `0xdeb87c4242860467eccefee0fcad15f64bccf879` | ❓ Unverified |
| UnnamedContract | unknown | celo | n/a | `0xdf5fea819b003fc9ca1d588907bcc1ffc1766529` | ❓ Unverified |
| UnnamedContract | unknown | celo | n/a | `0xe02768682010984450a36f24eccdb4a1eb0ce869` | ❓ Unverified |
| UnnamedContract | unknown | celo | n/a | `0xe142091351e8b2b53c1d67c73f8868c13d5dbedd` | ❓ Unverified |
| UnnamedContract | unknown | celo | n/a | `0xe1c41558598e4f9f35db768b25fb3d06b0a998e1` | ❓ Unverified |
| UnnamedContract | unknown | celo | n/a | `0xe5fa9c01c36f666e858a4dd64cd555d54709a8da` | ❓ Unverified |
| UnnamedContract | unknown | celo | n/a | `0xe7948b93414783e41eedade7c7591ce80277ab55` | ❓ Unverified |
| UnnamedContract | unknown | celo | n/a | `0xe7cb9d7e77f973e5341de62255be4bc06e2e9e6d` | ❓ Unverified |
| UnnamedContract | unknown | celo | n/a | `0xed0819bdc69cfb5f4684cb8b5b7ce70d173371df` | ❓ Unverified |
| UnnamedContract | unknown | celo | n/a | `0xf2bf7b6f874248f3531ba67af0395257b9d32d5c` | ❓ Unverified |
| UnnamedContract | unknown | celo | n/a | `0xf4113fda5b0446b0ea6ab02f965bcf59c046c90a` | ❓ Unverified |
| UnnamedContract | unknown | celo | n/a | `0xf891c4377039aa98e5cd42a3d716ec12ff6db75d` | ❓ Unverified |
| UnnamedContract | unknown | celo | n/a | `0xfaa2e7c69f7f34195d3ef6cf98b6b009a6a07f30` | ❓ Unverified |
| UnnamedContract | unknown | celo | n/a | `0xfc7efdea7dd68160859b795d57309ee1114d5ed9` | ❓ Unverified |
| UnnamedContract | unknown | ink | n/a | 5 deployments: ink `0x5541bcd3d163326cf12267d1cf6207dbde788348`; ink `0x64da1ab5b42c71e8faf1664745af911b859a06d4`; ink `0x65cd1f0ac298519be4891b5812053e00bd2074ac`; ink `0x822b0be4958ab5b4a48da3c5f68fc54846093618`; ink `0x9176b8eb7fdff309be258f2f2edb32a8b79f19b5` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [Bailsec - ICHI - Vaults - Final Report.pdf](https://github.com/bailsec/BailSec/blob/main/Bailsec%20-%20ICHI%20-%20Vaults%20-%20Final%20Report.pdf) | yAudit | Audit | 2024-12 | aging | Direct | contract_name | 47 | high |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| celo | [`0x289dc4313997f78f04c2959a9a50aec4739df1cd`](./contracts/celo-42220/0x289dc4313997f78f04c2959a9a50aec4739df1cd/) | AegisVault | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| celo | [`0x16dfbb3f6c2a7a3ed697f7233b3e83001a9fde29`](./contracts/celo-42220/0x16dfbb3f6c2a7a3ed697f7233b3e83001a9fde29/) | AegisVaultERC20 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| celo | [`0x51a0d74e1791399ce02aafd9a21dc4637fe57959`](./contracts/celo-42220/0x51a0d74e1791399ce02aafd9a21dc4637fe57959/) | AegisVaultFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| celo | [`0x141db85183ddb07dee22c33846aebde2101d9f25`](./contracts/celo-42220/0x141db85183ddb07dee22c33846aebde2101d9f25/) | ICHIVaultDepositGuardExtendedForMFD | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| celo | [`0x7ba715350fa7d3120712b4ab1e3fc89f9090bb56`](./contracts/celo-42220/0x7ba715350fa7d3120712b4ab1e3fc89f9090bb56/) | ICHIVaultMigrationGuard | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| celo | [`0x772960d9a88004cdb2cc0fca020e04bfea3790b3`](./contracts/celo-42220/0x772960d9a88004cdb2cc0fca020e04bfea3790b3/) | MultiFeeDistributionFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| celo | [`0xe1962f415feb5915962d5d3a075311e6be0f8f85`](./contracts/celo-42220/0xe1962f415feb5915962d5d3a075311e6be0f8f85/) | QuoterV1 | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x2d2c72c4dc71aa32d64e5142e336741131a73fc0`](./contracts/base-8453/0x2d2c72c4dc71aa32d64e5142e336741131a73fc0/) | RebalancerFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0xf8b3f6727e44abb211c0049fc849fbb091ff765e`](./contracts/base-8453/0xf8b3f6727e44abb211c0049fc849fbb091ff765e/) | RebalancerFactory | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| celo | [`0x101eb16bdba37979a771c86e1caafbadbabfc879`](./contracts/celo-42220/0x101eb16bdba37979a771c86e1caafbadbabfc879/) | RebalancerFactory | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| celo | [`0x215d61c7a658847c9595cdf8d145fd69c2e3a50c`](./contracts/celo-42220/0x215d61c7a658847c9595cdf8d145fd69c2e3a50c/) | RebalancerFactory | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| celo | [`0xfa196a6c9137b320e8801252e3020f25aee5c234`](./contracts/celo-42220/0xfa196a6c9137b320e8801252e3020f25aee5c234/) | RebalancerFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| celo | [`0x52a60fa5092f92b96d1a007eedfcd349d6ce2471`](./contracts/celo-42220/0x52a60fa5092f92b96d1a007eedfcd349d6ce2471/) | SymbolLib | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| celo | [`0x0de3ba021a151030f344f8d05595672bbe31658c`](./contracts/celo-42220/0x0de3ba021a151030f344f8d05595672bbe31658c/) | VaultLocker | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| celo | [`0xcec8716cdd60856eacaa74d499abd14ae34b7da8`](./contracts/celo-42220/0xcec8716cdd60856eacaa74d499abd14ae34b7da8/) | VaultSlippageCheckV3 | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| celo | [`0x4eecd2cee06598c942a4c24f91b4452a1b11d6da`](./contracts/celo-42220/0x4eecd2cee06598c942a4c24f91b4452a1b11d6da/) | VolatilityCheck | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 22 |
| upstream | 0 |
| standard_library | 1 |
| needs_review | 161 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=1
- Match method counts: extraction_exact=47

Fork inheritance lineage and inherited audits are included when available.
