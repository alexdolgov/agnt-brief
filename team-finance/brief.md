# Agentic Audit Brief: Team Finance

## Project Overview

- Project: Team Finance (`team-finance`)
- Website: [https://www.team.finance](https://www.team.finance)
- Lifecycle: unknown
- Generated: 2026-07-04T14:54:00.819Z
- Pipeline run: v2-pipeline-2026-07-01-3e33f2-d640
- Chains: arbitrum, avalanche, base, blast, bsc, cronos, ethereum, fantom, kava, klaytn, mantle, polygon
- Contract surface: 69 unique implementations (102 raw deployments)
- DeFi Llama TVL: $45,710,188.51
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Token Locker. Structurally: 12 project-authored contract(s) across 5 chain(s); 2 ERC20 tokens; upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 3 functional families. Its contracts share 4 common project-authored base contract(s) (baseadminupgradeabilityproxy, baseupgradeabilityproxy, proxy). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 125; live-surface contracts included: 102 (29 live, 73 unknown).
- Excluded by liveness: 23 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 3/18 (16.7%)
- Deployed-live implementations: 21 of 69 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 3/20
- Verified + Unaudited implementations: 17
- Verified by bytecode match: 0
- Unverified implementations: 49
- Unique implementations: 69
- Raw deployments: 102
- Audits discovered: 2 (2 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 1
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2024-07 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 2 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 4 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: 16.7% (Code4rena)

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| Code4rena | Tier 1 | 3 | 15.0% | 2024-07 |

## Contract Surface

### ✅ Verified + Audited (3)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| StakingPool | core_logic | base | n/a | [`0x9e9ce71871ac9c4fa96df5b9a474e7a52e4040e6`](./contracts/base-8453/0x9e9ce71871ac9c4fa96df5b9a474e7a52e4040e6/) | ✅ Audited |
| StakingPool | unknown | arbitrum | n/a | [`0x53a8e3966794e1cdb16593b0a5f987a09f019e95`](./contracts/arbitrum-42161/0x53a8e3966794e1cdb16593b0a5f987a09f019e95/) | ✅ Audited |
| StakingPool | unknown | blast | n/a | [`0xbf8471d1edc4c2ae05fce4aba211c5125ae98ebd`](./contracts/blast-81457/0xbf8471d1edc4c2ae05fce4aba211c5125ae98ebd/) | ✅ Audited |

### ⚠️ Verified + Unaudited (17)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| LockToken | token | bsc | n/a | [`0x0c89c0407775dd89b12918b9c0aa42bf96518820`](./contracts/bsc-56/0x0c89c0407775dd89b12918b9c0aa42bf96518820/) | ⚠️ Unaudited |
| LockToken | token | polygon | n/a | [`0x3ef7442df454ba6b7c1deec8ddf29cfb2d6e56c7`](./contracts/polygon-137/0x3ef7442df454ba6b7c1deec8ddf29cfb2d6e56c7/) | ⚠️ Unaudited |
| LockToken | token | polygon | n/a | 4 deployments: ethereum `0xc77aab3c6d7dab46248f3cc3033c856171878bd5`; ethereum `0xdbf72370021babafbceb05ab10f99ad275c6220a`; bsc `0x7536592bb74b5d62eb82e8b93b17eed4eed9a85c`; polygon [`0x586c21a779c24efd2a8af33c9f7df2a2ea9af55c`](./contracts/polygon-137/0x586c21a779c24efd2a8af33c9f7df2a2ea9af55c/) | ⚠️ Unaudited |
| LockToken | token | mantle | n/a | [`0xd03450a71b81d408fc3d4f4bf928ca4da5328b14`](./contracts/mantle-5000/0xd03450a71b81d408fc3d4f4bf928ca4da5328b14/) | ⚠️ Unaudited |
| LockToken | token | base | n/a | [`0x4f0fd563be89ec8c3e7d595bf3639128c0a7c33a`](./contracts/base-8453/0x4f0fd563be89ec8c3e7d595bf3639128c0a7c33a/) | ⚠️ Unaudited |
| LockToken | unknown | arbitrum | n/a | [`0xe0b0d2021293bee9715e1db3be31b55c00f72a75`](./contracts/arbitrum-42161/0xe0b0d2021293bee9715e1db3be31b55c00f72a75/) | ⚠️ Unaudited |
| ProxyAdmin | unknown | mantle | n/a | 2 deployments: mantle [`0x7592e7156b5d3a5df9bd3fa9d626cf003dc54e1a`](./contracts/mantle-5000/0x7592e7156b5d3a5df9bd3fa9d626cf003dc54e1a/); mantle `0xb2240bed66776611576d34eb8c03c037fb2ca908` | ⚠️ Unaudited |
| TeamToken | token | arbitrum | n/a | 5 deployments: polygon `0x900eec9c39fbb0eca41b5cf2239e9c16ae08f3ba`; base `0x9500773146dac55db4e13a723a3f988f4f175eb8`; base `0xd1de1810abbd4032a32c0b50018284c5e328bb59`; base `0xe37ef03ea7f2a6be781f5bc36b98c8c630692c73`; arbitrum [`0x446eb0f112dec3e84e29ce9bedab89060b8c40b9`](./contracts/arbitrum-42161/0x446eb0f112dec3e84e29ce9bedab89060b8c40b9/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | mantle | n/a | 2 deployments: mantle [`0x28f47db96e9781a50d9fe6ba6f1ede3e31b3c11c`](./contracts/mantle-5000/0x28f47db96e9781a50d9fe6ba6f1ede3e31b3c11c/); mantle `0xe0b0d2021293bee9715e1db3be31b55c00f72a75` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | mantle | n/a | [`0x39b9eb9b2be5d721d28eb40443f48cb0ad0c3340`](./contracts/mantle-5000/0x39b9eb9b2be5d721d28eb40443f48cb0ad0c3340/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | mantle | n/a | 2 deployments: mantle [`0x458fe9fcfbfe17b38a417565d262da929e3ee345`](./contracts/mantle-5000/0x458fe9fcfbfe17b38a417565d262da929e3ee345/); mantle `0xf076a6cabed31475b7364d284aa76f8dd28a64cc` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | base | n/a | 2 deployments: base [`0x256c6f9823c9107900a0f35d041247882cb88efd`](./contracts/base-8453/0x256c6f9823c9107900a0f35d041247882cb88efd/); base `0x80825c93a9e7c9fbf05ee32d629636e4bfb2c9fe` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | base | n/a | 2 deployments: base [`0x37e7a4d0d21b2a779d9b715c26a1015de5a3541f`](./contracts/base-8453/0x37e7a4d0d21b2a779d9b715c26a1015de5a3541f/); base `0x950818800140317e937ccfa7c3427744d57a22fb` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | base | n/a | 2 deployments: base [`0x962f07445ed033f7a8815ec349d9eceb77f5c3c2`](./contracts/base-8453/0x962f07445ed033f7a8815ec349d9eceb77f5c3c2/); base `0x9bad40c58204929b8e20cedadf53469530bb559b` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | arbitrum | n/a | 2 deployments: arbitrum [`0x458fe9fcfbfe17b38a417565d262da929e3ee345`](./contracts/arbitrum-42161/0x458fe9fcfbfe17b38a417565d262da929e3ee345/); arbitrum `0xf076a6cabed31475b7364d284aa76f8dd28a64cc` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | arbitrum | n/a | 2 deployments: arbitrum [`0x64b4c8d5af1857a823890170484b58b4e425cf4f`](./contracts/arbitrum-42161/0x64b4c8d5af1857a823890170484b58b4e425cf4f/); arbitrum `0xde002f436f9639a01986621af12c6e64fa811cdc` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | avalanche | n/a | 2 deployments: avalanche [`0x594dbb941de006c25b457ca49eeb3085cfe02b0d`](./contracts/avalanche-43114/0x594dbb941de006c25b457ca49eeb3085cfe02b0d/); avalanche `0xf8282d89d65c3ef79003fcacfb03b11f63d8e0e5` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (49)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| LockToken | token | blast | n/a | `0x624a4cb48a52a29d97eb1127bd0585ea1e02143c` | ❓ Unverified |
| Proxy (impl: 0x6dd27f2b82f78dd8a802a9228f340518280359f1) | proxy | avalanche | n/a | `0xe2fe530c047f2d85298b07d9333c05737f1435fb` | ❓ Unverified |
| Proxy (impl: 0x7e9e76b7e373028c2cfd22169f82bcd49d649f99) | unknown | blast | n/a | 2 deployments: blast `0x327f6f8868dc046f4050b0eedbcbfafd9e61af36`; blast `0x7e9e76b7e373028c2cfd22169f82bcd49d649f99` | ❓ Unverified |
| Proxy (impl: 0xf5cf29567350ebad9854ea22f3281d508ef1b96c) | unknown | avalanche | n/a | `0xd8ef3dff167243d39cb287a894d628774b7b439a` | ❓ Unverified |
| StakingPool | unknown | blast | n/a | `0x13f602d0238b827b5020d4e5a0676ef16ca3bb14` | ❓ Unverified |
| UnnamedContract | unknown | cronos | n/a | 14 deployments: cronos `0x05b711df32d73ecaa877d45a637a2eb415e7995f`; cronos `0xb6061efc3259a886cf3274efdf9b61753e1bc194`; fantom `0xc2995a065106b5c5c738b2320387460ebd12c12d`; fantom `0xccebbe9e2b8f46c2c6862238e60a396af790b63e`; kava `0xa9ec655dac35d989c0c8be075b1106dcd32502d6`; klaytn `0x070a08beef8d36734dd67a491202ff35a6a16d97`; klaytn `0x0c89c0407775dd89b12918b9c0aa42bf96518820`; klaytn `0x5dd3d67af1b31823dd3eee8548bdc070640c14b8`; klaytn `0x6c7c87d9868b1db5a0f62d867baa90e0adfa7cfd`; klaytn `0x7c2aa307c3542d8346bea3290385359c78778934`; klaytn `0x854b4c305554c5fa72353e31b8480c0e5128a152`; klaytn `0x9b83f4b893cf061d8c14471aa97ef24c352f5abe`; klaytn `0xb5c902ee211bae91ddb5c30b502c7ac6dfcd73f7`; klaytn `0xf2619476bd0ca0eda08744029c66b62a904c2bf8` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x8894a5711ee4c3354c76e44cc42ae6c6858d5c47` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x9171f49e264379dede1967748e23a57208c3646d` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xff1ba507daaaace14813d56b44d3be97e9d9ab40` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x26029db1eab700abbb4258976f8925414d606ed4` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x2d1dd9fb839b7251fdaaf7549a7cc70167cf2898` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x3217ee68dfbe2b907313d491788e037782ba91e9` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x594dbb941de006c25b457ca49eeb3085cfe02b0d` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xaf224918a827b52ae99cc42f686387f15ad98385` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xc6a673c1a7c75b92e2b798fb1d943f67243541eb` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xccebbe9e2b8f46c2c6862238e60a396af790b63e` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xd18458d6dae04e132a860371caf0ac2431048d41` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xd4745c03d9b9d5bbeabb952cd5ad3f97ca64c675` | ❓ Unverified |
| UnnamedContract | unknown | mantle | n/a | `0x7c58c1c5e26595f1707f0bf422053cf7e554f377` | ❓ Unverified |
| UnnamedContract | unknown | mantle | n/a | `0xb377c15fb2763c2db36876462dab344c4c20b546` | ❓ Unverified |
| UnnamedContract | unknown | mantle | n/a | `0xbfef878b55257f1287f5cf13a6314481919dca3f` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xe8c8abf27893dda682fa6dbe3bdd4fe22d21ac94` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x5418956bae6be2aacbef94cff73d5997e49676eb` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x7592e7156b5d3a5df9bd3fa9d626cf003dc54e1a` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x8a7ab0bb7d624423fda728a58f1846724a0f91d1` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x994913dfcf4ff0d4c5f7a5046c25b006e8ab89d1` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xbfef878b55257f1287f5cf13a6314481919dca3f` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xd03450a71b81d408fc3d4f4bf928ca4da5328b14` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xe5540ce2e6f700208d36a04f261810760630bc5d` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x38533faa0e0409895163e02a424e28a07c493385` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x4db57bd664150a275ef52082614dacb387345520` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x62bec667dc3c9eba0e16578d11604cf01a7c8b91` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x67303871ae2d8715b1928b1dfd8b4d146026c948` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x88ada02f6fce2f1a833cd9b4999d62a7ebb70367` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x8e55957bc9ee32516b9f74a01e47c1d712db3020` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x935a45fa6bdcc46716367407e27af2374ec4b7a1` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xbe28deabaca5223a0ad57ac071cf979135cc3437` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xccebbe9e2b8f46c2c6862238e60a396af790b63e` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xd053670233a35c6c60e0e5b161ce5f2535022c90` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xd4745c03d9b9d5bbeabb952cd5ad3f97ca64c675` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xdcaa5df48ab11d753012da79adda00ebafe29e5d` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xf439cb31650a63a85a1413222ececc0a27d7438f` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | 2 deployments: blast `0x1557b12fc1a0e0168bb4810b526b344c6838c18b`; blast `0x5b1c4dc565b2015191e8b10ae2aa8c8a4973ecb7` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0x2fec57c84c581372f01f433bd4aba4dbaffcb61f` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | 2 deployments: blast `0x6877bd5f27da71b66ddc1d5178c4acc4d68083dd`; blast `0xdd111ba355de43c1c924984a4365c53964cc6485` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | 2 deployments: blast `0x6adbcd5e084a1745d7e2090bfb99d300bce8fd0b`; blast `0x7efc85a2f2eebf2dbe52863b7b8d62fd6be1fdac` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0x7f28fb0c8a27e5f746e188f01fa2779bf71a1482` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0x89e9a91c0d684fb360b74ae6380a89446ede2e34` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0x8b6582e973f559aa178df6449d04739d1ea32872` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [spaces/cC38SHSHMB696ztGk5L9/uploads/hBZpTk3UcUBhL9NrB5A3/Bailsec - TrustSwap SWAP Token Audit.pdf](https://2491867235-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FcC38SHSHMB696ztGk5L9%2Fuploads%2FhBZpTk3UcUBhL9NrB5A3%2FBailsec%20-%20TrustSwap%20SWAP%20Token%20Audit.pdf) | Code4rena | Contest | 2024-03 | stale | Direct | n/a | 0 | n/a |
| [spaces/cC38SHSHMB696ztGk5L9/uploads/9HLnqL9xaTELvjjEZJtH/Bailsec Audit of Team Finance Staking Solution.pdf](https://2491867235-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FcC38SHSHMB696ztGk5L9%2Fuploads%2F9HLnqL9xaTELvjjEZJtH%2FBailsec%20Audit%20of%20Team%20Finance%20Staking%20Solution.pdf) | Code4rena | Contest | 2024-07 | stale | Direct | contract_name | 4 | high |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| bsc | [`0x0c89c0407775dd89b12918b9c0aa42bf96518820`](./contracts/bsc-56/0x0c89c0407775dd89b12918b9c0aa42bf96518820/) | LockToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x3ef7442df454ba6b7c1deec8ddf29cfb2d6e56c7`](./contracts/polygon-137/0x3ef7442df454ba6b7c1deec8ddf29cfb2d6e56c7/) | LockToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x586c21a779c24efd2a8af33c9f7df2a2ea9af55c`](./contracts/polygon-137/0x586c21a779c24efd2a8af33c9f7df2a2ea9af55c/) | LockToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| mantle | [`0xd03450a71b81d408fc3d4f4bf928ca4da5328b14`](./contracts/mantle-5000/0xd03450a71b81d408fc3d4f4bf928ca4da5328b14/) | LockToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x4f0fd563be89ec8c3e7d595bf3639128c0a7c33a`](./contracts/base-8453/0x4f0fd563be89ec8c3e7d595bf3639128c0a7c33a/) | LockToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0xe0b0d2021293bee9715e1db3be31b55c00f72a75`](./contracts/arbitrum-42161/0xe0b0d2021293bee9715e1db3be31b55c00f72a75/) | LockToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x446eb0f112dec3e84e29ce9bedab89060b8c40b9`](./contracts/arbitrum-42161/0x446eb0f112dec3e84e29ce9bedab89060b8c40b9/) | TeamToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 10 |
| upstream | 0 |
| standard_library | 3 |
| needs_review | 56 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=1
- Match method counts: extraction_exact=4

Zero-match audit list:

- [11702] spaces/cC38SHSHMB696ztGk5L9/uploads/hBZpTk3UcUBhL9NrB5A3/Bailsec - TrustSwap SWAP Token Audit.pdf

Fork inheritance lineage and inherited audits are included when available.
