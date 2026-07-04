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
| StakingPool | core_logic | base | n/a | [`0x9e9ce7...4040e6`](./contracts/base-8453/0x9e9ce71871ac9c4fa96df5b9a474e7a52e4040e6/) | ✅ Audited |
| StakingPool | unknown | arbitrum | n/a | [`0x53a8e3...019e95`](./contracts/arbitrum-42161/0x53a8e3966794e1cdb16593b0a5f987a09f019e95/) | ✅ Audited |
| StakingPool | unknown | blast | n/a | [`0xbf8471...e98ebd`](./contracts/blast-81457/0xbf8471d1edc4c2ae05fce4aba211c5125ae98ebd/) | ✅ Audited |

### ⚠️ Verified + Unaudited (17)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| LockToken | token | bsc | n/a | [`0x0c89c0...518820`](./contracts/bsc-56/0x0c89c0407775dd89b12918b9c0aa42bf96518820/) | ⚠️ Unaudited |
| LockToken | token | polygon | n/a | [`0x3ef744...6e56c7`](./contracts/polygon-137/0x3ef7442df454ba6b7c1deec8ddf29cfb2d6e56c7/) | ⚠️ Unaudited |
| LockToken | token | polygon | n/a | 4 deployments: ethereum `0xc77aab...878bd5`; ethereum `0xdbf723...c6220a`; bsc `0x753659...d9a85c`; polygon [`0x586c21...9af55c`](./contracts/polygon-137/0x586c21a779c24efd2a8af33c9f7df2a2ea9af55c/) | ⚠️ Unaudited |
| LockToken | token | mantle | n/a | [`0xd03450...328b14`](./contracts/mantle-5000/0xd03450a71b81d408fc3d4f4bf928ca4da5328b14/) | ⚠️ Unaudited |
| LockToken | token | base | n/a | [`0x4f0fd5...a7c33a`](./contracts/base-8453/0x4f0fd563be89ec8c3e7d595bf3639128c0a7c33a/) | ⚠️ Unaudited |
| LockToken | unknown | arbitrum | n/a | [`0xe0b0d2...f72a75`](./contracts/arbitrum-42161/0xe0b0d2021293bee9715e1db3be31b55c00f72a75/) | ⚠️ Unaudited |
| ProxyAdmin | unknown | mantle | n/a | 2 deployments: mantle [`0x7592e7...c54e1a`](./contracts/mantle-5000/0x7592e7156b5d3a5df9bd3fa9d626cf003dc54e1a/); mantle `0xb2240b...2ca908` | ⚠️ Unaudited |
| TeamToken | token | arbitrum | n/a | 5 deployments: polygon `0x900eec...08f3ba`; base `0x950077...175eb8`; base `0xd1de18...28bb59`; base `0xe37ef0...692c73`; arbitrum [`0x446eb0...8c40b9`](./contracts/arbitrum-42161/0x446eb0f112dec3e84e29ce9bedab89060b8c40b9/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | mantle | n/a | 2 deployments: mantle [`0x28f47d...b3c11c`](./contracts/mantle-5000/0x28f47db96e9781a50d9fe6ba6f1ede3e31b3c11c/); mantle `0xe0b0d2...f72a75` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | mantle | n/a | [`0x39b9eb...0c3340`](./contracts/mantle-5000/0x39b9eb9b2be5d721d28eb40443f48cb0ad0c3340/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | mantle | n/a | 2 deployments: mantle [`0x458fe9...3ee345`](./contracts/mantle-5000/0x458fe9fcfbfe17b38a417565d262da929e3ee345/); mantle `0xf076a6...8a64cc` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | base | n/a | 2 deployments: base [`0x256c6f...b88efd`](./contracts/base-8453/0x256c6f9823c9107900a0f35d041247882cb88efd/); base `0x80825c...b2c9fe` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | base | n/a | 2 deployments: base [`0x37e7a4...a3541f`](./contracts/base-8453/0x37e7a4d0d21b2a779d9b715c26a1015de5a3541f/); base `0x950818...7a22fb` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | base | n/a | 2 deployments: base [`0x962f07...f5c3c2`](./contracts/base-8453/0x962f07445ed033f7a8815ec349d9eceb77f5c3c2/); base `0x9bad40...bb559b` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | arbitrum | n/a | 2 deployments: arbitrum [`0x458fe9...3ee345`](./contracts/arbitrum-42161/0x458fe9fcfbfe17b38a417565d262da929e3ee345/); arbitrum `0xf076a6...8a64cc` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | arbitrum | n/a | 2 deployments: arbitrum [`0x64b4c8...25cf4f`](./contracts/arbitrum-42161/0x64b4c8d5af1857a823890170484b58b4e425cf4f/); arbitrum `0xde002f...811cdc` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | avalanche | n/a | 2 deployments: avalanche [`0x594dbb...e02b0d`](./contracts/avalanche-43114/0x594dbb941de006c25b457ca49eeb3085cfe02b0d/); avalanche `0xf8282d...d8e0e5` | ⚠️ Unaudited |

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
| LockToken | token | blast | n/a | `0x624a4c...02143c` | ❓ Unverified |
| Proxy (impl: 0x6dd27f2b82f78dd8a802a9228f340518280359f1) | proxy | avalanche | n/a | `0xe2fe53...1435fb` | ❓ Unverified |
| Proxy (impl: 0x7e9e76b7e373028c2cfd22169f82bcd49d649f99) | unknown | blast | n/a | 2 deployments: blast `0x327f6f...61af36`; blast `0x7e9e76...649f99` | ❓ Unverified |
| Proxy (impl: 0xf5cf29567350ebad9854ea22f3281d508ef1b96c) | unknown | avalanche | n/a | `0xd8ef3d...7b439a` | ❓ Unverified |
| StakingPool | unknown | blast | n/a | `0x13f602...a3bb14` | ❓ Unverified |
| UnnamedContract | unknown | cronos | n/a | 14 deployments: cronos `0x05b711...e7995f`; cronos `0xb6061e...1bc194`; fantom `0xc2995a...12c12d`; fantom `0xccebbe...90b63e`; kava `0xa9ec65...2502d6`; klaytn `0x070a08...a16d97`; klaytn `0x0c89c0...518820`; klaytn `0x5dd3d6...0c14b8`; klaytn `0x6c7c87...fa7cfd`; klaytn `0x7c2aa3...778934`; klaytn `0x854b4c...28a152`; klaytn `0x9b83f4...2f5abe`; klaytn `0xb5c902...cd73f7`; klaytn `0xf26194...4c2bf8` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x8894a5...8d5c47` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x9171f4...c3646d` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xff1ba5...d9ab40` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x26029d...606ed4` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x2d1dd9...cf2898` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x3217ee...ba91e9` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x594dbb...e02b0d` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xaf2249...d98385` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xc6a673...3541eb` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xccebbe...90b63e` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xd18458...048d41` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xd4745c...64c675` | ❓ Unverified |
| UnnamedContract | unknown | mantle | n/a | `0x7c58c1...54f377` | ❓ Unverified |
| UnnamedContract | unknown | mantle | n/a | `0xb377c1...20b546` | ❓ Unverified |
| UnnamedContract | unknown | mantle | n/a | `0xbfef87...9dca3f` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xe8c8ab...21ac94` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x541895...9676eb` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x7592e7...c54e1a` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x8a7ab0...0f91d1` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x994913...ab89d1` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xbfef87...9dca3f` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xd03450...328b14` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xe5540c...30bc5d` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x38533f...493385` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x4db57b...345520` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x62bec6...7c8b91` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x673038...26c948` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x88ada0...b70367` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x8e5595...db3020` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x935a45...c4b7a1` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xbe28de...cc3437` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xccebbe...90b63e` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xd05367...022c90` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xd4745c...64c675` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xdcaa5d...e29e5d` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xf439cb...d7438f` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | 2 deployments: blast `0x1557b1...38c18b`; blast `0x5b1c4d...73ecb7` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0x2fec57...fcb61f` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | 2 deployments: blast `0x6877bd...8083dd`; blast `0xdd111b...cc6485` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | 2 deployments: blast `0x6adbcd...e8fd0b`; blast `0x7efc85...e1fdac` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0x7f28fb...1a1482` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0x89e9a9...de2e34` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0x8b6582...a32872` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [spaces/cC38SHSHMB696ztGk5L9/uploads/hBZpTk3UcUBhL9NrB5A3/Bailsec - TrustSwap SWAP Token Audit.pdf](https://2491867235-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FcC38SHSHMB696ztGk5L9%2Fuploads%2FhBZpTk3UcUBhL9NrB5A3%2FBailsec%20-%20TrustSwap%20SWAP%20Token%20Audit.pdf) | Code4rena | Contest | 2024-03 | stale | Direct | n/a | 0 | n/a |
| [spaces/cC38SHSHMB696ztGk5L9/uploads/9HLnqL9xaTELvjjEZJtH/Bailsec Audit of Team Finance Staking Solution.pdf](https://2491867235-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FcC38SHSHMB696ztGk5L9%2Fuploads%2F9HLnqL9xaTELvjjEZJtH%2FBailsec%20Audit%20of%20Team%20Finance%20Staking%20Solution.pdf) | Code4rena | Contest | 2024-07 | stale | Direct | contract_name | 4 | high |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| bsc | [`0x0c89c0...518820`](./contracts/bsc-56/0x0c89c0407775dd89b12918b9c0aa42bf96518820/) | LockToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x3ef744...6e56c7`](./contracts/polygon-137/0x3ef7442df454ba6b7c1deec8ddf29cfb2d6e56c7/) | LockToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x586c21...9af55c`](./contracts/polygon-137/0x586c21a779c24efd2a8af33c9f7df2a2ea9af55c/) | LockToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| mantle | [`0xd03450...328b14`](./contracts/mantle-5000/0xd03450a71b81d408fc3d4f4bf928ca4da5328b14/) | LockToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x4f0fd5...a7c33a`](./contracts/base-8453/0x4f0fd563be89ec8c3e7d595bf3639128c0a7c33a/) | LockToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0xe0b0d2...f72a75`](./contracts/arbitrum-42161/0xe0b0d2021293bee9715e1db3be31b55c00f72a75/) | LockToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x446eb0...8c40b9`](./contracts/arbitrum-42161/0x446eb0f112dec3e84e29ce9bedab89060b8c40b9/) | TeamToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

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
