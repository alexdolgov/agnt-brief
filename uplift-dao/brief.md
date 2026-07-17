# Agentic Audit Brief: Uplift DAO

## Project Overview

- Project: Uplift DAO (`uplift-dao`)
- Website: [https://uplift.io](https://uplift.io)
- Lifecycle: unknown
- Generated: 2026-07-04T14:54:02.944Z
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
| BaseProxy | unknown | bsc | n/a | 2 deployments: bsc [`0x14cba1a1b98a5e8c05daf4f30e9773c509d39ed5`](./contracts/bsc-56/0x14cba1a1b98a5e8c05daf4f30e9773c509d39ed5/); bsc `0xba354a54c204cad4f82ba0d8c36806a47e1e2286` | ✅ Audited |
| BaseProxy | unknown | bsc | n/a | 2 deployments: bsc [`0x2f3eae2680a0f0080de59486e52b1558e910bec4`](./contracts/bsc-56/0x2f3eae2680a0f0080de59486e52b1558e910bec4/); bsc `0x373d66dc76f89b73ffd2f93c6862066fc994a687` | ✅ Audited |
| BaseProxy | unknown | bsc | n/a | 2 deployments: bsc [`0x3146336f91a868ea73a46fe3553c2bd3bafa97b6`](./contracts/bsc-56/0x3146336f91a868ea73a46fe3553c2bd3bafa97b6/); bsc `0xc27578516dfbabe3a33d100ea1f6b254e36c7bb1` | ✅ Audited |
| IDOV1 | unknown | bsc | n/a | 2 deployments: bsc [`0x2b77fc55e361b717b5de4196e1cfdc57d0a92d2c`](./contracts/bsc-56/0x2b77fc55e361b717b5de4196e1cfdc57d0a92d2c/); bsc `0x33504100d074865190dbfcc1e389520c69abd5f5` | ✅ Audited |
| IDOV2 | unknown | bsc | n/a | 2 deployments: bsc [`0x3e4ad1f7ab266b7ae6260d1245e5cf9ea5ee00cc`](./contracts/bsc-56/0x3e4ad1f7ab266b7ae6260d1245e5cf9ea5ee00cc/); bsc `0xb440390c24420c3c0d6c66d86bbd3f7f81d49f2b` | ✅ Audited |
| IDOV2Primary | unknown | bsc | n/a | 2 deployments: bsc [`0xd44c938f846442eef9e5b9172005815ff63ab890`](./contracts/bsc-56/0xd44c938f846442eef9e5b9172005815ff63ab890/); bsc `0xe3b8e8e16f396d5318c6d325c1767541e79acb49` | ✅ Audited |
| IDOV3 | unknown | bsc | n/a | 2 deployments: bsc [`0x8eae8ee0f59f849e3c6368734e160b10ea218170`](./contracts/bsc-56/0x8eae8ee0f59f849e3c6368734e160b10ea218170/); bsc `0x9559ffd214fc18d3d91eb286be1a57bffcc7ad52` | ✅ Audited |
| LIFT | unknown | bsc | n/a | [`0x513c3200f227ebb62e3b3d00b7a83779643a71cf`](./contracts/bsc-56/0x513c3200f227ebb62e3b3d00b7a83779643a71cf/) | ✅ Audited |
| Pool | unknown | bsc | n/a | [`0x6318f8a1176fad77ca67da809ca1320815c5993d`](./contracts/bsc-56/0x6318f8a1176fad77ca67da809ca1320815c5993d/) | ✅ Audited |
| PrivatePresaleMerkleTree | unknown | bsc | n/a | 2 deployments: bsc [`0x20c266635471de9f976a44ab112893f2d0e59e55`](./contracts/bsc-56/0x20c266635471de9f976a44ab112893f2d0e59e55/); bsc `0x61e9a42f75c3d7620d2e421d6fd86ae5c6c6f1af` | ✅ Audited |
| PrivatePresaleMerkleTree | unknown | bsc | n/a | 2 deployments: bsc [`0x33e4546f4c7c64b60eb408ff525889ebea7b9c04`](./contracts/bsc-56/0x33e4546f4c7c64b60eb408ff525889ebea7b9c04/); bsc `0x7e1793ab137860e2c8c623f0bd9d7613580c8e7a` | ✅ Audited |
| PrivatePresaleMerkleTree | unknown | bsc | n/a | 2 deployments: bsc [`0x43399a1e3591e87a847504e35ef97496904473c6`](./contracts/bsc-56/0x43399a1e3591e87a847504e35ef97496904473c6/); bsc `0xc096e11641bec62993b155a58bcf868355aea2e6` | ✅ Audited |
| PrivatePresaleMerkleTree | unknown | bsc | n/a | 2 deployments: bsc [`0x5f2db0890b74d4892aebba8b83346105b63c53b0`](./contracts/bsc-56/0x5f2db0890b74d4892aebba8b83346105b63c53b0/); bsc `0xf35a68a81d6ee5a3b771035480d15272c352b310` | ✅ Audited |
| PrivatePresaleMerkleTree | unknown | bsc | n/a | 2 deployments: bsc [`0x8af144acb4863e7abb0921b60dc2db155ba7916e`](./contracts/bsc-56/0x8af144acb4863e7abb0921b60dc2db155ba7916e/); bsc `0x91496786154654b66e3212ee73d1729b9a3dcf79` | ✅ Audited |
| PrivatePresaleMerkleTree | unknown | bsc | n/a | 2 deployments: bsc [`0xc8a889d93a2299647084e9af75cd46ca0f6263a5`](./contracts/bsc-56/0xc8a889d93a2299647084e9af75cd46ca0f6263a5/); bsc `0xeea6b32053043aa8cbaee31a287a7f8152b2a87e` | ✅ Audited |
| PrivatePresaleMerkleTree | unknown | bsc | n/a | 2 deployments: bsc [`0xd0098efba07355fe2caf73655c541da87cef49ca`](./contracts/bsc-56/0xd0098efba07355fe2caf73655c541da87cef49ca/); bsc `0xe5d73035fae900ba9b33cbe03a16c7de993bf17a` | ✅ Audited |
| PrivatePresaleV2 | unknown | bsc | n/a | 2 deployments: bsc [`0x3c6e18378a23eb28aa547e3e899b5110b4958a09`](./contracts/bsc-56/0x3c6e18378a23eb28aa547e3e899b5110b4958a09/); bsc `0x821b27511dd4a3caab8c116a766153f5594f8b75` | ✅ Audited |
| PrivatePresaleV2MerkleTree | unknown | bsc | n/a | 2 deployments: bsc [`0x18379557f83b06bd71f54086c88f5bd4aafce737`](./contracts/bsc-56/0x18379557f83b06bd71f54086c88f5bd4aafce737/); bsc `0x806dbd411d41795bd95e79de49b27831c9eaf8e3` | ✅ Audited |
| PrivatePresaleV3MerkleTree | unknown | bsc | n/a | 2 deployments: bsc [`0x805347eb4fd83747e4a3f20c80177c8e70cada3d`](./contracts/bsc-56/0x805347eb4fd83747e4a3f20c80177c8e70cada3d/); bsc `0xef023e6acf2a31b12c6b1ff05f84f9440be7490f` | ✅ Audited |
| PrivatePresaleV4MerkleTree | unknown | bsc | n/a | 2 deployments: bsc [`0x2cae37d8e84311f9280fe46e60b9ab4f8d38f572`](./contracts/bsc-56/0x2cae37d8e84311f9280fe46e60b9ab4f8d38f572/); bsc `0x6ed89b5bf292e5a8d314a9ee1e498ba2932688f7` | ✅ Audited |
| PrivatePresaleV4MerkleTree | unknown | bsc | n/a | 2 deployments: bsc [`0x3f6e11024f3f6749463a7458bcdf9125bf972626`](./contracts/bsc-56/0x3f6e11024f3f6749463a7458bcdf9125bf972626/); bsc `0xeb0cffd9b601842067a3f0f8dd7e1a9169845749` | ✅ Audited |
| PrivatePresaleV4MerkleTree | unknown | bsc | n/a | 2 deployments: bsc [`0x88c002b589b41f137fd7754c50f2fcbf094d7665`](./contracts/bsc-56/0x88c002b589b41f137fd7754c50f2fcbf094d7665/); bsc `0xfb2dd3e2dc751e92af413cf6c1b5bcc1d9d1737d` | ✅ Audited |
| ReferralPool | unknown | bsc | n/a | [`0x341b8538e6afd2bc88f63d51b77c2c2f8253f249`](./contracts/bsc-56/0x341b8538e6afd2bc88f63d51b77c2c2f8253f249/) | ✅ Audited |
| ReferrersData | unknown | bsc | n/a | 2 deployments: bsc [`0x216e4187df5d1f28d605b492016fd5f4254b8df9`](./contracts/bsc-56/0x216e4187df5d1f28d605b492016fd5f4254b8df9/); bsc `0x6c30a7a41001d51bee75754c72ff7ce75333d274` | ✅ Audited |
| Registry | unknown | bsc | n/a | [`0x1f9ba2b8242c4491a342602fbef6ac2998c848eb`](./contracts/bsc-56/0x1f9ba2b8242c4491a342602fbef6ac2998c848eb/) | ✅ Audited |
| Staking | unknown | bsc | n/a | 7 deployments: bsc [`0x0c1185d8f318504c4da2b7c12546a49b583e7501`](./contracts/bsc-56/0x0c1185d8f318504c4da2b7c12546a49b583e7501/); bsc `0x4803d1b098ba6c4fbc9a9eaa16ef6ce3628066bf`; bsc `0x61d1ba976487293826da65e4b2a14a977de996e7`; bsc `0x6247d548006bb55e014cd1fdbf3e39d33552c4cc`; bsc `0x76f78b736e1fdebb147fbe7e610f588d1aad61ec`; bsc `0xe288d3b8235ba5ebbfedc6a3a275d8f4d3bd9902`; bsc `0xfc46ccf1cf71cbe25c9f4891e32ab8d0f8c8290b` | ✅ Audited |
| Staking | unknown | bsc | n/a | 2 deployments: bsc [`0x49c5b5f3aba18a4bccf57aa1567ac5bd46e82381`](./contracts/bsc-56/0x49c5b5f3aba18a4bccf57aa1567ac5bd46e82381/); bsc `0xbe08c08312d967e587f74c9b11890254108d6444` | ✅ Audited |
| StakingPool | unknown | bsc | n/a | [`0x7999b89bf3096ca3994e73ff5a13bc3c5b3b9b10`](./contracts/bsc-56/0x7999b89bf3096ca3994e73ff5a13bc3c5b3b9b10/) | ✅ Audited |
| UpdatedIDOV1 | unknown | bsc | n/a | 2 deployments: bsc [`0x3f8400f74c5548c3b555e2c70943e281bf0e9467`](./contracts/bsc-56/0x3f8400f74c5548c3b555e2c70943e281bf0e9467/); bsc `0xb6001099aa527717fdb215aa4bce393baef778f3` | ✅ Audited |

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
| IDOWithWhitelist | unknown | bsc | n/a | `0x67c46bd6141aeb0e11d567e11acc8099b790c556` | ❓ Unverified |
| Proxy (impl: 0xd94c612ee4a2577cdc9f27aaf002045759be86ad) | unknown | bsc | n/a | 2 deployments: bsc `0x3d21a527d06184cd421ea06b3d664fa1657f71b3`; bsc `0xd94c612ee4a2577cdc9f27aaf002045759be86ad` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | 2 deployments: bsc `0x14be3d80438ee0b02a742c8083f76999fe756dcb`; bsc `0xd53702535b64ff4029956cf155975e87a8371588` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x314f15f1f3767610c9bffab86237aac772c9263f` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x38c63c38f9821df8f1387fb6426118e061729700` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x3e5d68d4686a99d108fafd3c3788429de1822eec` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x4125824fbe553537b873cc9aaaba4933703813bb` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x46b1b7e5f531650348672d83bc3cd87d76e9187e` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | 2 deployments: bsc `0x4abb7eb98d2253f1c32621316d5dbcf33ae57ce5`; bsc `0x673af95baa0c14111f8d1378582340ee6ad37b9c` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x54536a3594c844af05c9bc584d1e22dc090a1113` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x54b54ddd8d840d45f5c59321a399cf162c878613` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x8406de50b85ed7aab66392d6649746402fdbb978` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x8beeb02f9e12ffcb47c5454923f1787b75ba4945` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x8d77192c97141681a8a850c70790b1fc43ef770f` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xb15d320dabbb89f7838246c738ecf9b3b330d5d2` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xb1890d78fcb5974632047235d2ac3c65033be324` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xba8ff732b502738529bffdf6bcfbee96c30c55f5` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xf4970038a14f6af29181097fb8a70c0e1dd47d06` | ❓ Unverified |

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
| native | 27 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 20 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=1
- Match method counts: extraction_exact=37

Fork inheritance lineage and inherited audits are included when available.
