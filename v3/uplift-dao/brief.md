# Agentic Audit Brief: Uplift DAO

## Project Overview

- Project: Uplift DAO (`uplift-dao`)
- Website: [https://uplift.io](https://uplift.io)
- Lifecycle: unknown
- Generated: 2026-07-04T11:05:47.753Z
- Pipeline run: v2-pipeline-2026-07-01-3e33f2-4c3e
- Chains: bsc
- Contract surface: 47 unique implementations (79 raw deployments)
- DeFi Llama TVL: $0.00
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Launchpad. Structurally: 23 project-authored contract(s) across 1 chain(s); 2 ERC20 tokens; role-gated via AccessControl; upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 4 functional families. Its contracts share 2 common project-authored base contract(s) (reentrancyguardupgradeable, erc1967upgradeupgradeable). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 99; live-surface contracts included: 61 (37 live, 24 unknown).
- Excluded by liveness: 38 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 29/29 (100.0%)
- Deployed-live implementations: 29 of 47 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 29/29
- Verified + Unaudited implementations: 0
- Verified by bytecode match: 0
- Unverified implementations: 18
- Unique implementations: 47
- Raw deployments: 79
- Audits discovered: 1 (1 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 1
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2021-12 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 1 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 29 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| unknown | Tier 2 | 29 | 100.0% | 2021-12 |

## Contract Surface

### ✅ Verified + Audited (29)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| BaseProxy | unknown | bsc | n/a | 2 deployments: bsc [`0x14cba1...d39ed5`](./contracts/bsc-56/0x14cba1a1b98a5e8c05daf4f30e9773c509d39ed5/); bsc `0xba354a...1e2286` | ✅ Audited |
| BaseProxy | unknown | bsc | n/a | 2 deployments: bsc [`0x2f3eae...10bec4`](./contracts/bsc-56/0x2f3eae2680a0f0080de59486e52b1558e910bec4/); bsc `0x373d66...94a687` | ✅ Audited |
| BaseProxy | unknown | bsc | n/a | 2 deployments: bsc [`0x314633...fa97b6`](./contracts/bsc-56/0x3146336f91a868ea73a46fe3553c2bd3bafa97b6/); bsc `0xc27578...6c7bb1` | ✅ Audited |
| IDOV1 | unknown | bsc | n/a | 2 deployments: bsc [`0x2b77fc...a92d2c`](./contracts/bsc-56/0x2b77fc55e361b717b5de4196e1cfdc57d0a92d2c/); bsc `0x335041...abd5f5` | ✅ Audited |
| IDOV2 | unknown | bsc | n/a | 2 deployments: bsc [`0x3e4ad1...ee00cc`](./contracts/bsc-56/0x3e4ad1f7ab266b7ae6260d1245e5cf9ea5ee00cc/); bsc `0xb44039...d49f2b` | ✅ Audited |
| IDOV2Primary | unknown | bsc | n/a | 2 deployments: bsc [`0xd44c93...3ab890`](./contracts/bsc-56/0xd44c938f846442eef9e5b9172005815ff63ab890/); bsc `0xe3b8e8...9acb49` | ✅ Audited |
| IDOV3 | unknown | bsc | n/a | 2 deployments: bsc [`0x8eae8e...218170`](./contracts/bsc-56/0x8eae8ee0f59f849e3c6368734e160b10ea218170/); bsc `0x9559ff...c7ad52` | ✅ Audited |
| LIFT | unknown | bsc | n/a | [`0x513c32...3a71cf`](./contracts/bsc-56/0x513c3200f227ebb62e3b3d00b7a83779643a71cf/) | ✅ Audited |
| Pool | unknown | bsc | n/a | [`0x6318f8...c5993d`](./contracts/bsc-56/0x6318f8a1176fad77ca67da809ca1320815c5993d/) | ✅ Audited |
| PrivatePresaleMerkleTree | unknown | bsc | n/a | 2 deployments: bsc [`0x20c266...e59e55`](./contracts/bsc-56/0x20c266635471de9f976a44ab112893f2d0e59e55/); bsc `0x61e9a4...c6f1af` | ✅ Audited |
| PrivatePresaleMerkleTree | unknown | bsc | n/a | 2 deployments: bsc [`0x33e454...7b9c04`](./contracts/bsc-56/0x33e4546f4c7c64b60eb408ff525889ebea7b9c04/); bsc `0x7e1793...0c8e7a` | ✅ Audited |
| PrivatePresaleMerkleTree | unknown | bsc | n/a | 2 deployments: bsc [`0x43399a...4473c6`](./contracts/bsc-56/0x43399a1e3591e87a847504e35ef97496904473c6/); bsc `0xc096e1...aea2e6` | ✅ Audited |
| PrivatePresaleMerkleTree | unknown | bsc | n/a | 2 deployments: bsc [`0x5f2db0...3c53b0`](./contracts/bsc-56/0x5f2db0890b74d4892aebba8b83346105b63c53b0/); bsc `0xf35a68...52b310` | ✅ Audited |
| PrivatePresaleMerkleTree | unknown | bsc | n/a | 2 deployments: bsc [`0x8af144...a7916e`](./contracts/bsc-56/0x8af144acb4863e7abb0921b60dc2db155ba7916e/); bsc `0x914967...3dcf79` | ✅ Audited |
| PrivatePresaleMerkleTree | unknown | bsc | n/a | 2 deployments: bsc [`0xc8a889...6263a5`](./contracts/bsc-56/0xc8a889d93a2299647084e9af75cd46ca0f6263a5/); bsc `0xeea6b3...b2a87e` | ✅ Audited |
| PrivatePresaleMerkleTree | unknown | bsc | n/a | 2 deployments: bsc [`0xd0098e...ef49ca`](./contracts/bsc-56/0xd0098efba07355fe2caf73655c541da87cef49ca/); bsc `0xe5d730...3bf17a` | ✅ Audited |
| PrivatePresaleV2 | unknown | bsc | n/a | 2 deployments: bsc [`0x3c6e18...958a09`](./contracts/bsc-56/0x3c6e18378a23eb28aa547e3e899b5110b4958a09/); bsc `0x821b27...4f8b75` | ✅ Audited |
| PrivatePresaleV2MerkleTree | unknown | bsc | n/a | 2 deployments: bsc [`0x183795...fce737`](./contracts/bsc-56/0x18379557f83b06bd71f54086c88f5bd4aafce737/); bsc `0x806dbd...eaf8e3` | ✅ Audited |
| PrivatePresaleV3MerkleTree | unknown | bsc | n/a | 2 deployments: bsc [`0x805347...cada3d`](./contracts/bsc-56/0x805347eb4fd83747e4a3f20c80177c8e70cada3d/); bsc `0xef023e...e7490f` | ✅ Audited |
| PrivatePresaleV4MerkleTree | unknown | bsc | n/a | 2 deployments: bsc [`0x2cae37...38f572`](./contracts/bsc-56/0x2cae37d8e84311f9280fe46e60b9ab4f8d38f572/); bsc `0x6ed89b...2688f7` | ✅ Audited |
| PrivatePresaleV4MerkleTree | unknown | bsc | n/a | 2 deployments: bsc [`0x3f6e11...972626`](./contracts/bsc-56/0x3f6e11024f3f6749463a7458bcdf9125bf972626/); bsc `0xeb0cff...845749` | ✅ Audited |
| PrivatePresaleV4MerkleTree | unknown | bsc | n/a | 2 deployments: bsc [`0x88c002...4d7665`](./contracts/bsc-56/0x88c002b589b41f137fd7754c50f2fcbf094d7665/); bsc `0xfb2dd3...d1737d` | ✅ Audited |
| ReferralPool | unknown | bsc | n/a | [`0x341b85...53f249`](./contracts/bsc-56/0x341b8538e6afd2bc88f63d51b77c2c2f8253f249/) | ✅ Audited |
| ReferrersData | unknown | bsc | n/a | 2 deployments: bsc [`0x216e41...4b8df9`](./contracts/bsc-56/0x216e4187df5d1f28d605b492016fd5f4254b8df9/); bsc `0x6c30a7...33d274` | ✅ Audited |
| Registry | unknown | bsc | n/a | [`0x1f9ba2...c848eb`](./contracts/bsc-56/0x1f9ba2b8242c4491a342602fbef6ac2998c848eb/) | ✅ Audited |
| Staking | unknown | bsc | n/a | 7 deployments: bsc [`0x0c1185...3e7501`](./contracts/bsc-56/0x0c1185d8f318504c4da2b7c12546a49b583e7501/); bsc `0x4803d1...8066bf`; bsc `0x61d1ba...e996e7`; bsc `0x6247d5...52c4cc`; bsc `0x76f78b...ad61ec`; bsc `0xe288d3...bd9902`; bsc `0xfc46cc...c8290b` | ✅ Audited |
| Staking | unknown | bsc | n/a | 2 deployments: bsc [`0x49c5b5...e82381`](./contracts/bsc-56/0x49c5b5f3aba18a4bccf57aa1567ac5bd46e82381/); bsc `0xbe08c0...8d6444` | ✅ Audited |
| StakingPool | unknown | bsc | n/a | [`0x7999b8...3b9b10`](./contracts/bsc-56/0x7999b89bf3096ca3994e73ff5a13bc3c5b3b9b10/) | ✅ Audited |
| UpdatedIDOV1 | unknown | bsc | n/a | 2 deployments: bsc [`0x3f8400...0e9467`](./contracts/bsc-56/0x3f8400f74c5548c3b555e2c70943e281bf0e9467/); bsc `0xb60010...f778f3` | ✅ Audited |

### ⚠️ Verified + Unaudited (0)

- None

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (18)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| IDOWithWhitelist | unknown | bsc | n/a | `0x67c46b...90c556` | ❓ Unverified |
| Proxy (impl: 0xd94c612ee4a2577cdc9f27aaf002045759be86ad) | unknown | bsc | n/a | 2 deployments: bsc `0x3d21a5...7f71b3`; bsc `0xd94c61...be86ad` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | 2 deployments: bsc `0x14be3d...756dcb`; bsc `0xd53702...371588` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x314f15...c9263f` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x38c63c...729700` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x3e5d68...822eec` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x412582...3813bb` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x46b1b7...e9187e` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | 2 deployments: bsc `0x4abb7e...e57ce5`; bsc `0x673af9...d37b9c` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x54536a...0a1113` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x54b54d...878613` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x8406de...dbb978` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x8beeb0...ba4945` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x8d7719...ef770f` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xb15d32...30d5d2` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xb1890d...3be324` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xba8ff7...0c55f5` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xf49700...d47d06` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [Audit.pdf](https://app.uplift.io/docs/Audit.pdf) | unknown | Audit | 2021-12 | stale | Direct | contract_name | 37 | high |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 0 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 47 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=1
- Match method counts: extraction_exact=37

Fork inheritance lineage and inherited audits are included when available.
