# Agentic Audit Brief: ShapeShift

## Project Overview

- Project: ShapeShift (`shapeshift`)
- Website: [https://shapeshift.com](https://shapeshift.com)
- Lifecycle: unknown
- Generated: 2026-07-04T14:53:55.363Z
- Pipeline run: v2-pipeline-2026-07-01-3e33f2-0679
- Chains: arbitrum, ethereum, gnosis, polygon
- Contract surface: 117 unique implementations (130 raw deployments)
- DeFi Llama TVL: $1,047,942.74
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Dexs. Structurally: 11 project-authored contract(s) across 4 chain(s); 3 ERC20 tokens; upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 5 functional families. Its contracts share 1 common project-authored base contract(s) (proxy). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 130; live-surface contracts included: 130 (27 live, 103 unknown).
- Excluded by liveness: 0 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 2/12 (16.7%)
- Deployed-live implementations: 14 of 117 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 2/14
- Verified + Unaudited implementations: 12
- Verified by bytecode match: 0
- Unverified implementations: 103
- Unique implementations: 117
- Raw deployments: 130
- Audits discovered: 3 (3 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 1
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2024-06 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 3 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 2 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| unknown | Tier 2 | 2 | 14.3% | 2024-06 |

## Contract Surface

### ✅ Verified + Audited (2)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| Staking | unknown | ethereum | n/a | [`0x96f98e...3417d3`](./contracts/ethereum-1/0x96f98ed74639689c3a11daf38ef86e59f43417d3/) | ✅ Audited |
| Staking | unknown | ethereum | n/a | [`0xee77aa...85ea4b`](./contracts/ethereum-1/0xee77aa3fd23bbebaf94386dd44b548e9a785ea4b/) | ✅ Audited |

### ⚠️ Verified + Unaudited (12)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| AccToke | unknown | ethereum | n/a | [`0xa374a6...7c0972`](./contracts/ethereum-1/0xa374a62ddbd21e3d5716cb04821cb710897c0972/) | ⚠️ Unaudited |
| EtherRouterCreate3 | adapter | arbitrum | n/a | [`0x5c59d0...2452da`](./contracts/arbitrum-42161/0x5c59d0ec51729e40c413903be6a4612f4e2452da/) | ⚠️ Unaudited |
| FOX | unknown | ethereum | n/a | [`0xc770ee...8ee52d`](./contracts/ethereum-1/0xc770eefad204b5180df6a14ee197d99d808ee52d/) | ⚠️ Unaudited |
| Foxy | unknown | ethereum | n/a | [`0xdc4910...386ed3`](./contracts/ethereum-1/0xdc49108ce5c57bc3408c3a5e95f3d864ec386ed3/) | ⚠️ Unaudited |
| PermittableToken | token | gnosis | n/a | [`0x21a426...67509d`](./contracts/gnosis-100/0x21a42669643f45bc0e086b8fc2ed70c23d67509d/) | ⚠️ Unaudited |
| RewardHash | unknown | ethereum | n/a | [`0x5ec3ec...d02fb6`](./contracts/ethereum-1/0x5ec3ec6a8ac774c7d53665ebc5ddf89145d02fb6/) | ⚠️ Unaudited |
| Rewards | unknown | ethereum | n/a | 2 deployments: ethereum [`0x086b97...e27054`](./contracts/ethereum-1/0x086b9734d33783bbe4fbc8249df4c686aae27054/); ethereum `0x79dd22...a713c5` | ⚠️ Unaudited |
| StakingRewards | unknown | ethereum | n/a | 9 deployments: ethereum [`0x212ebf...c3932b`](./contracts/ethereum-1/0x212ebf9fd3c10f371557b08e993eaab385c3932b/); ethereum `0x24fd7f...f67fa0`; ethereum `0x593978...c1fbcb`; ethereum `0x721720...bcd3e5`; ethereum `0xc14eaa...a7e555`; ethereum `0xc54b9f...9c42a0`; ethereum `0xdd80e2...5d9e72`; ethereum `0xe7e16e...da2744`; ethereum `0xebb176...c40b68` | ⚠️ Unaudited |
| StandardArbERC20 | token | arbitrum | n/a | [`0xf929de...513c73`](./contracts/arbitrum-42161/0xf929de51d91c77e42f5090069e0ad7a09e513c73/) | ⚠️ Unaudited |
| UChildERC20 | token | polygon | n/a | [`0x65a05d...5b0aa8`](./contracts/polygon-137/0x65a05db8322701724c197af82c9cae41195b0aa8/) | ⚠️ Unaudited |
| UniswapV2Pair | unknown | ethereum | n/a | 4 deployments: ethereum [`0x470e8d...47f08c`](./contracts/ethereum-1/0x470e8de2ebaef52014a47cb5e6af86884947f08c/); gnosis `0x8a0bee...7889df`; gnosis `0xc22313...464bac`; arbitrum `0x5f6ce0...339c24` | ⚠️ Unaudited |
| UniswapV3Pool | core_logic | arbitrum | n/a | 2 deployments: ethereum `0xad0e10...f8b376`; arbitrum [`0x76d4d1...e9041e`](./contracts/arbitrum-42161/0x76d4d1eaa0c4b3645e75c46e573c1d4f75e9041e/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (103)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | ethereum | n/a | `0x0139b3...e6f15a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x03dccc...2d360d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x04bda0...0e860d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x061aee...b2a7e7` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x0882ab...e7da64` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x0ad818...3bb7f7` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x0ce34f...fdfb75` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x0fc455...954b4f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x15a629...b79415` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x160317...a915be` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x168ef8...2536ff` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x1b0512...7d4404` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x1b429e...192fd3` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x1c5868...ccba7a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x1d7858...1b4d43` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x1dddf8...1d0122` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x21910e...ec171c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x2445e2...91e63c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x2650d4...72e28f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x28cb0d...f44d45` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x2d3ead...022029` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x2e9d63...a38c94` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x2e9f9b...bd4fed` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x2fc6e9...ad22e1` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x378ba0...3fbaf8` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x37a9be...b08649` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x38c279...4736c1` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x3bc59a...2d3671` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x3cce05...7661dd` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x3eb1b5...dc0a23` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x3f2647...ec3bf5` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x40ce07...8d7446` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x40e2d2...87b747` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x41f6a9...b00263` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x43094e...6ca511` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x45a11b...cdd409` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x47fa86...f705df` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x482258...e6b03d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x48a4b4...96be3d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x50b82e...80feea` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x572a7d...26aaa2` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x59170d...f9f4c9` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x596723...11ebee` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x61fcab...ead816` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x65e1f2...03506e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x66ded3...d80176` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x714e6c...92f09f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x721150...ad4b4c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x77f18a...b864ee` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x7a75ec...ac63fd` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x7cdbbd...e96d06` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x7d4a5e...41fc96` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x800df6...d9f5e6` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x803ec0...bc22bc` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x808d3e...ed5311` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x8858a7...61faa3` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x89e8ea...5cce57` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x8d2254...d97832` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x8ec637...25cd39` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x93b34b...3d25f8` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x941f10...44ca1d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x94671a...20efb2` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x9d98a2...6d145e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x9eee9e...9797a3` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x9fe608...a569d2` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xa1a7ec...7721dd` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xa37811...1541dc` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xa760e2...8eb930` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xa86e41...b86a14` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xabcf56...fa195c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xadf15e...81e655` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xb104a7...8246d5` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xb21ebf...129ae8` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xb7df31...48a4a3` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xbbfc7d...c7ba8a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xc6807b...66e0bb` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xc727de...6559e1` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xc80373...00ac38` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xc89f74...cf00df` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xc8e257...44da8a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xca5e07...d58d4e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xca77a2...d5da31` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xd3b5d9...f9aa84` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xd3d13a...2a2f36` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xd54d2b...695bd1` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xd813b2...c51a21` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xd899ac...5fc03e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xdb55e5...25d4ba` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xdb7074...d1e86e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xdc0b02...9709b0` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xdf9c66...aa30b8` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xe301a3...95849d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xe5943d...6ba92f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xe7a7d1...31532d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xeac275...f6d8d5` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xecaa8d...385e19` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xef8670...4a955b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xeff721...ffc8de` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xf31d02...6f2651` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xf46dae...c516d0` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xf49764...629777` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xf663f4...2a244c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xf82337...b54f63` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [rFOX_v02.pdf](https://github.com/shapeshift/rFOX/blob/main/audits/rFOX_v02.pdf) | unknown | Audit | 2024-06 | stale | Direct | n/a | 0 | n/a |
| [ZokyoAudit.pdf](https://github.com/shapeshift/yearn-router/blob/development/security/ZokyoAudit.pdf) | unknown | Audit | 2022-01 | stale | Direct | n/a | 0 | n/a |
| [Zokyo_Security_Audit.pdf](https://github.com/shapeshift/yieldies/blob/develop/docs/Zokyo_Security_Audit.pdf) | unknown | Audit | 2022-03 | stale | Direct | contract_name | 2 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | [`0xa374a6...7c0972`](./contracts/ethereum-1/0xa374a62ddbd21e3d5716cb04821cb710897c0972/) | AccToke | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x5c59d0...2452da`](./contracts/arbitrum-42161/0x5c59d0ec51729e40c413903be6a4612f4e2452da/) | EtherRouterCreate3 | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xc770ee...8ee52d`](./contracts/ethereum-1/0xc770eefad204b5180df6a14ee197d99d808ee52d/) | FOX | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xdc4910...386ed3`](./contracts/ethereum-1/0xdc49108ce5c57bc3408c3a5e95f3d864ec386ed3/) | Foxy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| gnosis | [`0x21a426...67509d`](./contracts/gnosis-100/0x21a42669643f45bc0e086b8fc2ed70c23d67509d/) | PermittableToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x5ec3ec...d02fb6`](./contracts/ethereum-1/0x5ec3ec6a8ac774c7d53665ebc5ddf89145d02fb6/) | RewardHash | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x086b97...e27054`](./contracts/ethereum-1/0x086b9734d33783bbe4fbc8249df4c686aae27054/) | Rewards | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x212ebf...c3932b`](./contracts/ethereum-1/0x212ebf9fd3c10f371557b08e993eaab385c3932b/) | StakingRewards | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0xf929de...513c73`](./contracts/arbitrum-42161/0xf929de51d91c77e42f5090069e0ad7a09e513c73/) | StandardArbERC20 | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x65a05d...5b0aa8`](./contracts/polygon-137/0x65a05db8322701724c197af82c9cae41195b0aa8/) | UChildERC20 | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 12 |
| upstream | 2 |
| standard_library | 0 |
| needs_review | 103 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 2
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: contract_name=2

Zero-match audit list:

- [9416] rFOX_v02.pdf
- [9427] ZokyoAudit.pdf

Fork inheritance lineage and inherited audits are included when available.
