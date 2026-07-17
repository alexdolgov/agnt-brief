# Agentic Audit Brief: Ryze.Fi

## Project Overview

- Project: Ryze.Fi (`ryze.fi`)
- Website: [https://www.ryze.fi](https://www.ryze.fi)
- Lifecycle: unknown
- Generated: 2026-07-04T14:53:53.839Z
- Pipeline run: v2-pipeline-2026-07-01-3e33f2-1cbb
- Chains: arbitrum
- Contract surface: 17 unique implementations (55 raw deployments)
- DeFi Llama TVL: $6,352.74
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Derivatives. Structurally: 17 project-authored contract(s) across 1 chain(s); 2 ERC721 NFTs, 1 ERC1155 multi-token; role-gated via AccessControl; upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 3 functional families. Contracts are linked by 6 cross-contract reference(s). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 64; live-surface contracts included: 55 (52 live, 3 unknown).
- Excluded by liveness: 9 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 11/14 (78.6%)
- Deployed-live implementations: 14 of 17 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 11/14
- Verified + Unaudited implementations: 3
- Verified by bytecode match: 0
- Unverified implementations: 3
- Unique implementations: 17
- Raw deployments: 55
- Audits discovered: 1 (1 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 1
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2023-09 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 1 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 11 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| unknown | Tier 2 | 11 | 78.6% | 2023-09 |

## Contract Surface

### ✅ Verified + Audited (11)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| BinaryConfig | unknown | arbitrum | n/a | 2 deployments: arbitrum [`0xe9f5817e58c4f894e5d54cd12e6610c2da3cdcee`](./contracts/arbitrum-42161/0xe9f5817e58c4f894e5d54cd12e6610c2da3cdcee/); arbitrum `0xf8de9fcc795e10258a5270bfa7176ce3e10e1d1a` | ✅ Audited |
| BinaryMarket | unknown | arbitrum | n/a | 21 deployments: arbitrum [`0x00d2b31aefc3a04b9d48203c6de78fc810cb2b51`](./contracts/arbitrum-42161/0x00d2b31aefc3a04b9d48203c6de78fc810cb2b51/); arbitrum `0x01ef3fe2d0a013f1fe685fbf9a1d2aa67a247d60`; arbitrum `0x0c9bc40810aedb7e8dbd14546294fa27a4df19f4`; arbitrum `0x0f612249089a7c9f547af830f6bff70645ed5e1f`; arbitrum `0x19bfd658a2fa872ee6c88c362d042355fccf2390`; arbitrum `0x22da5372242a548078d0a43e4e03123287844d15`; arbitrum `0x47b673308953cb014f2f0eb21a810967288d5be7`; arbitrum `0x49c8e5ceb4aa60f8664dceca8a0da160d7b4c8c2`; arbitrum `0x59444ff26d0208a767b47ff3349f0de7411fc03f`; arbitrum `0x5c145698550f0cc5616749fe2048791a44daa86f`; arbitrum `0x60d2802e2ed3277fbf0617101f82c9bb74a9bf4a`; arbitrum `0x7597fa4de3cfc766c8d717ccd43aaebea2bff286`; arbitrum `0x8879355a9c492164d778c34b1b0fbf0c41eb26bf`; arbitrum `0x8b3c646df0c48758bd5cf44f28812e9b791f3d29`; arbitrum `0x9e811854b49dafefb19323363fcd3801cb58abaa`; arbitrum `0xaa7290d31736e7ca54d54ee1d273e84d60a89475`; arbitrum `0xaab5f3e73c51c0f316e63dde9a6654b6e6f3ddaf`; arbitrum `0xb908ef7ec191d1f946abc7bd1cf89d52e30da8b5`; arbitrum `0xc1d3fb74539edccbcc49adc50b8f5a21c3939ead`; arbitrum `0xc7f11d48adcf0c072fb538d012d9e781ed272c91`; arbitrum `0xe9f42973fcd61a229ee182c2d0b15f37d9762c37` | ✅ Audited |
| BinaryMarketManager | unknown | arbitrum | n/a | 2 deployments: arbitrum [`0x1f177898e31e5172b4b39e86925516a05f98986e`](./contracts/arbitrum-42161/0x1f177898e31e5172b4b39e86925516a05f98986e/); arbitrum `0x38acf01b77cb2595b57fd6565d3f2fdc44273704` | ✅ Audited |
| BinaryVault | unknown | arbitrum | n/a | 2 deployments: arbitrum [`0x6cb18e623e94bd4144b307c5b01ae718387ebb2b`](./contracts/arbitrum-42161/0x6cb18e623e94bd4144b307c5b01ae718387ebb2b/); arbitrum `0xdafcb2abd585dab4ed4de958e85763132849e096` | ✅ Audited |
| BinaryVault | unknown | arbitrum | n/a | 2 deployments: arbitrum [`0x76027f600c5b18d3ca1faffe855bd72791b40e65`](./contracts/arbitrum-42161/0x76027f600c5b18d3ca1faffe855bd72791b40e65/); arbitrum `0xd38634a51754ef08ad51876ae8a80e2cd2a45abc` | ✅ Audited |
| BinaryVault | unknown | arbitrum | n/a | 2 deployments: arbitrum [`0x986ff689befdc31a41682a602946040f0771b0eb`](./contracts/arbitrum-42161/0x986ff689befdc31a41682a602946040f0771b0eb/); arbitrum `0xbecd74312e0f30e30b3f0635de25e6c0a91a459a` | ✅ Audited |
| BinaryVaultFacet | unknown | arbitrum | n/a | 3 deployments: arbitrum [`0xa4548086e48cdec4df411e8604f47cb97eebfd2b`](./contracts/arbitrum-42161/0xa4548086e48cdec4df411e8604f47cb97eebfd2b/); arbitrum `0xc3d10c5925a25fc0e61b4b66eacb5ba019044ec9`; arbitrum `0xf96940d9706526c93dd219b376c3e128bc0863ca` | ✅ Audited |
| BinaryVaultManager | unknown | arbitrum | n/a | 2 deployments: arbitrum [`0x0f84e5f9afd506cfcfa49e770d977358da2c929a`](./contracts/arbitrum-42161/0x0f84e5f9afd506cfcfa49e770d977358da2c929a/); arbitrum `0x4e28cec8ed3e02933d0eacebd0b3e0f102672521` | ✅ Audited |
| BinaryVaultNFTFacet | unknown | arbitrum | n/a | 2 deployments: arbitrum [`0x060c7aeb45ff13744978454dc67b03e151b84849`](./contracts/arbitrum-42161/0x060c7aeb45ff13744978454dc67b03e151b84849/); arbitrum `0x4d3847da139d423ae9569a9e6e4dd5b7405093fa` | ✅ Audited |
| BinaryVaultNFTFacet | unknown | arbitrum | n/a | 3 deployments: arbitrum [`0x444af321f5e332a96b2cc965bedd16392bcb46c3`](./contracts/arbitrum-42161/0x444af321f5e332a96b2cc965bedd16392bcb46c3/); arbitrum `0x7d711984aa0b2a6a92164d147413b9659e8b4c9a`; arbitrum `0xe6094cfebdf726c60f6249d9776c46419994adf0` | ✅ Audited |
| Oracle | unknown | arbitrum | n/a | 8 deployments: arbitrum [`0x041422081470d64411d733e468176992e4f2dd85`](./contracts/arbitrum-42161/0x041422081470d64411d733e468176992e4f2dd85/); arbitrum `0x4e31baed56cf37436efa4184e3669050a59233da`; arbitrum `0x6c116cbb842938b3ae79b9863760c7f171febe0a`; arbitrum `0x6fd7f4a3e3fc1f059df0dcaedd7b8b8cc26bf39e`; arbitrum `0xad91f3f4b68ec63fcef937ef5358882e40243678`; arbitrum `0xb878730978956f938892d2e15bf6034d44fec94d`; arbitrum `0xc026069ea93704dbf2c427dfed49bbebb0ead1fe`; arbitrum `0xdea6ce0c1a4e133da2aa437d69807963771c6af4` | ✅ Audited |

### ⚠️ Verified + Unaudited (3)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| RyzeCreditToken | token | arbitrum | n/a | [`0x3ce9aefa68a97824e609aa6549428e293d1ae427`](./contracts/arbitrum-42161/0x3ce9aefa68a97824e609aa6549428e293d1ae427/) | ⚠️ Unaudited |
| RyzeCreditTokenGiveawayMinter | unknown | arbitrum | n/a | [`0x82fadfdfab43e6babdf988fac431e96a9f133e16`](./contracts/arbitrum-42161/0x82fadfdfab43e6babdf988fac431e96a9f133e16/) | ⚠️ Unaudited |
| RyzeCreditTokenMinter | unknown | arbitrum | n/a | [`0x4f805328b8f480c8959b959740a189f54e208b3c`](./contracts/arbitrum-42161/0x4f805328b8f480c8959b959740a189f54e208b3c/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (3)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | arbitrum | n/a | `0x8b61339064d38ea6358877c8098669c108c4ed53` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xa155151169488492859ec59c2d915f77eccec025` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xd6fcc40d65b62b44083da1a1500e04d85e7f8914` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [6511a7eb1c0ccd8228977194_Balance_Final_audit_report.pdf](https://assets-global.website-files.com/63f62b4cce8131e16ca56ecb/6511a7eb1c0ccd8228977194_Balance_Final_audit_report.pdf) | unknown | Audit | 2023-09 | stale | Direct | contract_name | 49 | high |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| arbitrum | [`0x3ce9aefa68a97824e609aa6549428e293d1ae427`](./contracts/arbitrum-42161/0x3ce9aefa68a97824e609aa6549428e293d1ae427/) | RyzeCreditToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x82fadfdfab43e6babdf988fac431e96a9f133e16`](./contracts/arbitrum-42161/0x82fadfdfab43e6babdf988fac431e96a9f133e16/) | RyzeCreditTokenGiveawayMinter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x4f805328b8f480c8959b959740a189f54e208b3c`](./contracts/arbitrum-42161/0x4f805328b8f480c8959b959740a189f54e208b3c/) | RyzeCreditTokenMinter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 14 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 3 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=1
- Match method counts: extraction_exact=49

Fork inheritance lineage and inherited audits are included when available.
