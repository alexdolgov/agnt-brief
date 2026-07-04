# Agentic Audit Brief: T RIZE

## Project Overview

- Project: T RIZE (`t-rize`)
- Website: [https://www.t-rize.io](https://www.t-rize.io)
- Lifecycle: unknown
- Generated: 2026-07-03T21:06:59.412Z
- Pipeline run: v2-pipeline-2026-07-01-3e33f2-b097
- Chains: base
- Contract surface: 19 unique implementations (158 raw deployments)
- DeFi Llama TVL: $23,000,000.00
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

RWA. Structurally: 32 project-authored contract(s) across 1 chain(s); 1 ERC20 token, 1 Chainlink feed; upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 6 functional families. Its contracts share 15 common project-authored base contract(s) (maturitypools, bondvesting, typeandversioninterface). Dominant framework: openzeppelin.

## Fork Lineage

This project reuses audited code from **KEEP Network** (`keep-network`) in the CommitStore, EVM2EVMOffRamp, EVM2EVMOnRamp, RMN subsystem.
8 audits inherited from `keep-network`, scoped to that subsystem.

Total inherited audits: 8. Inherited coverage reflects forked/shared code audited by the origin project — it is not a direct audit of this project.

## Contract Surface Quality

- Indexed contracts: 308; live-surface contracts included: 158 (151 live, 7 unknown).
- Excluded by liveness: 150 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 4/12 (33.3%)
- Deployed-live implementations: 12 of 19 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 4/13
- Verified + Unaudited implementations: 9
- Verified by bytecode match: 0
- Unverified implementations: 6
- Unique implementations: 19
- Raw deployments: 158
- Audits discovered: 9 (1 direct, 8 inherited from forked code)
- Scoreable audits (matched contracts): 8
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2025-11 (fresh)
- Audit staleness (calendar age): 6 fresh, 1 aging, 1 stale, 1 unknown
- Coverage code basis (deployed vs audited code): 3 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 1 match-unverified
- Tier 1 coverage: 33.3% (Code4rena)

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| Code4rena | Tier 1 | 4 | 30.8% | 2025-04 |
| Thesis Defense | Tier 2 | 4 | 30.8% | 2024-04 |
| unknown | Tier 2 | 4 | 30.8% | 2025-11 |

## Contract Surface

### ✅ Verified + Audited (4)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| CommitStore | unknown | base | n/a | 44 deployments: base [`0x0ae3c2...ca4f77`](./contracts/base-8453/0x0ae3c2c7fb789bd05a450cd3075d11f6c2ca4f77/); base `0x16f72c...3724e4`; base `0x174e3c...2c3472`; base `0x17891f...56039f`; base `0x1ccd0d...675c3c`; base `0x229890...961292`; base `0x275db6...a8c053`; base `0x282741...411fc2`; base `0x2d3fc7...fee2f1`; base `0x327e13...357916`; base `0x36b3ea...bc95cf`; base `0x398d21...41612e`; base `0x3d4d67...cc8a9c`; base `0x452750...59c1f5`; base `0x4cdca7...f409ea`; base `0x52b5b4...31ccb8`; base `0x565f70...ccdf3b`; base `0x575f92...67878f`; base `0x5f2ce9...41d411`; base `0x672dbd...5f33c9`; base `0x69a2f5...4aa9bc`; base `0x6fbe67...cc4d98`; base `0x700c67...98b5dd`; base `0x725f05...1010a4`; base `0x7acda4...5b50e9`; base `0x862642...356f20`; base `0x87e77c...3bf6e1`; base `0x932d6d...56d837`; base `0x96fc2d...89a1d9`; base `0x98f3dd...2625ce`; base `0x9ae736...b512b7`; base `0x9d5522...598326`; base `0xa8fa8a...0036cb`; base `0xaedbe5...b78363`; base `0xb40659...58ce0b`; base `0xb71961...67af9f`; base `0xc4a8b1...dd62a4`; base `0xccb222...ef839a`; base `0xcff74c...347985`; base `0xd0b13b...14f562`; base `0xdd2f2f...56b75b`; base `0xde480a...02f2d7`; base `0xf97127...9f72b0`; base `0xfb35d3...26be78` | ✅ Audited |
| EVM2EVMOffRamp | unknown | base | n/a | 46 deployments: base [`0x03ee83...ae0446`](./contracts/base-8453/0x03ee839151e48cee69f5e4e8d28b35ce2eae0446/); base `0x0a44db...553286`; base `0x10ab90...4f581e`; base `0x12aaad...eea829`; base `0x15f54f...d86401`; base `0x18095f...732062`; base `0x1861ed...e1b12b`; base `0x25f8fc...bf1504`; base `0x260ac2...90da7e`; base `0x300977...310661`; base `0x335581...a20ab3`; base `0x391b9b...08b9c7`; base `0x45d524...751083`; base `0x48a51f...c91a18`; base `0x5204a4...cd1af1`; base `0x53ab03...ddfdab`; base `0x61c3f6...afccdf`; base `0x62fae5...233cca`; base `0x639dc0...feab0d`; base `0x6d1eef...ae1da9`; base `0x73a600...aa6e96`; base `0x74d574...78adb7`; base `0x75f29f...c7b5d7`; base `0x7d38c6...f58d93`; base `0x7e2b07...4dfe10`; base `0x8345f2...8e00ad`; base `0x8531e6...95f3d5`; base `0x9001d6...0803c0`; base `0x90e04b...08f13d`; base `0x941f0e...916f01`; base `0x98b7a9...c8dd9a`; base `0x9c095e...497653`; base `0x9c32df...bdea73`; base `0xa24d3b...d78f18`; base `0xaa2805...cd18e9`; base `0xbd3b19...d4a404`; base `0xc18ef0...9f72b6`; base `0xca0416...5371f1`; base `0xd3680a...57913e`; base `0xd47363...5a907c`; base `0xd8fc83...ec2926`; base `0xe4e567...97a4d7`; base `0xec0cfe...88f0bb`; base `0xeff089...247d9d`; base `0xf50c0d...153e4f`; base `0xfc30bf...f18848` | ✅ Audited |
| EVM2EVMOnRamp | unknown | base | n/a | 50 deployments: base [`0x048f2f...85c332`](./contracts/base-8453/0x048f2f9961a93bb87cd5b35a01088343aa85c332/); base `0x064f09...75aa0d`; base `0x11897f...8423ef`; base `0x1c179c...b2f341`; base `0x1e5ca7...2feb21`; base `0x223953...984c60`; base `0x2c8557...0d9a12`; base `0x31389d...4eac52`; base `0x362e6b...ad98c1`; base `0x3db8be...95d6a5`; base `0x4be6e0...646fd7`; base `0x4db62b...dfeed3`; base `0x557540...6b6c1c`; base `0x56b30a...1fa78e`; base `0x588990...14a285`; base `0x5d5191...a65c9c`; base `0x5de068...e4f622`; base `0x626acc...f429ba`; base `0x62e8d1...abe3f9`; base `0x757dad...7723d1`; base `0x75d1a8...f044d6`; base `0x7898d0...db287e`; base `0x88ced3...6b9268`; base `0x9292f9...ea639a`; base `0x98eecf...1d2790`; base `0x9a5983...e36266`; base `0x9d0ffa...a8ca69`; base `0xac58a3...20df4b`; base `0xadfe8e...224c46`; base `0xb1dddd...8af670`; base `0xbc8e66...52f894`; base `0xbd15d0...5c5977`; base `0xbd852e...1a27db`; base `0xbe5a9e...a42d96`; base `0xbe6b55...3c31a2`; base `0xc06dc9...700ce5`; base `0xccc32e...68ab81`; base `0xcdd0e9...a4a363`; base `0xd3bde6...1dd203`; base `0xd44371...c2e181`; base `0xd531e3...786d26`; base `0xd952fe...dd6457`; base `0xdcfb24...1f984b`; base `0xdd4fb4...c8c981`; base `0xdea286...4ea1cb`; base `0xe5fd5a...0eb754`; base `0xe96563...889c6c`; base `0xea2036...5d2c68`; base `0xeb50fc...e6e184`; base `0xf2bf69...ccad93` | ✅ Audited |
| RMN | unknown | base | n/a | 2 deployments: base [`0x41ec51...6f93c7`](./contracts/base-8453/0x41ec51afa59b762d1c7698154d7f4d91186f93c7/); base `0x91cb19...b007c3` | ✅ Audited |

### ⚠️ Verified + Unaudited (9)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| AccessList | unknown | base | n/a | [`0x136a42...ae87c9`](./contracts/base-8453/0x136a429bee94a5a02240ff74023b46347cae87c9/) | ⚠️ Unaudited |
| BaseRizeMintBurnPool | unknown | base | n/a | 2 deployments: base [`0xd37361...ac8f43`](./contracts/base-8453/0xd3736143ab05224c1edce1b632a8dc1404ac8f43/); base `0xd4d129...8e16a0` | ⚠️ Unaudited |
| GovernanceBonding | unknown | base | n/a | [`0x5a1340...ed26ee`](./contracts/base-8453/0x5a134098bdbeb05da9eac35439c5624547ed26ee/) | ⚠️ Unaudited |
| MerkleAirdrop | operational_periphery | base | n/a | [`0x6426fd...873a98`](./contracts/base-8453/0x6426fd15a8531bf53d13d74e697e0c0d4c873a98/) | ⚠️ Unaudited |
| RizeToken | token | base | n/a | [`0x9818b6...c93583`](./contracts/base-8453/0x9818b6c09f5ecc843060927e8587c427c7c93583/) | ⚠️ Unaudited |
| TokenAdminRegistry | registry | base | n/a | [`0x6f6c37...731e37`](./contracts/base-8453/0x6f6c373d09c07425baae72317863d7f6bb731e37/) | ⚠️ Unaudited |
| UnallocatedVesting | operational_periphery | base | n/a | [`0xad12b1...6f5f2d`](./contracts/base-8453/0xad12b1421d14130633700af043445115d16f5f2d/) | ⚠️ Unaudited |
| USDCTokenPool | unknown | base | n/a | [`0x55a578...c61ba9`](./contracts/base-8453/0x55a5786ca51c31623f3efb8bbfcc8df9a4c61ba9/) | ⚠️ Unaudited |
| VestingWallet | operational_periphery | base | n/a | [`0x9525df...241e7b`](./contracts/base-8453/0x9525df984b7062c7c0fb103bc745467396241e7b/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (6)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | base | n/a | `0x054ba1...12c53a` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x891e30...9b829c` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xa03bbd...fc00d6` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xaa824d...e73cd0` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xc94cc2...ca9c33` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xd0a614...0155b9` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [drive.google.com/file/d/1ymBpfc9vihOVA-XccqhpeitnZS208O5u/view](https://drive.google.com/file/d/1ymBpfc9vihOVA-XccqhpeitnZS208O5u/view) | unknown | Audit | 2025-11 | fresh | Inherited from KEEP Network — forked code, scoped to CommitStore, EVM2EVMOffRamp, EVM2EVMOnRamp, RMN | inherited | 142 | n/a |
| [drive.google.com/file/d/1QK1jnaoqdtoeyqTD7xz93sSk1BwerFwe/view](https://drive.google.com/file/d/1QK1jnaoqdtoeyqTD7xz93sSk1BwerFwe/view?usp=sharing) | unknown | Audit | 2025-11 | fresh | Inherited from KEEP Network — forked code, scoped to CommitStore, EVM2EVMOffRamp, EVM2EVMOnRamp, RMN | inherited | 142 | n/a |
| [drive.google.com/file/d/1oQJO-fW4ZUUS_DQovOtaB9CB7U6YT0AP/view](https://drive.google.com/file/d/1oQJO-fW4ZUUS_DQovOtaB9CB7U6YT0AP/view?usp=sharing) | unknown | Audit | 2025-11 | fresh | Inherited from KEEP Network — forked code, scoped to CommitStore, EVM2EVMOffRamp, EVM2EVMOnRamp, RMN | inherited | 142 | n/a |
| [drive.google.com/file/d/1RW4Bb3Rd_HdOU8pVxLpIRXCXDYKubeIp/view](https://drive.google.com/file/d/1RW4Bb3Rd_HdOU8pVxLpIRXCXDYKubeIp/view?usp=sharing) | unknown | Audit | 2025-10 | fresh | Inherited from KEEP Network — forked code, scoped to CommitStore, EVM2EVMOffRamp, EVM2EVMOnRamp, RMN | inherited | 142 | n/a |
| [drive.google.com/file/d/1Sxc5qx69qQtqdy7AtscoAHyGaSyqyYJM/view](https://drive.google.com/file/d/1Sxc5qx69qQtqdy7AtscoAHyGaSyqyYJM/view?usp=sharing) | unknown | Audit | 2025-09 | fresh | Inherited from KEEP Network — forked code, scoped to CommitStore, EVM2EVMOffRamp, EVM2EVMOnRamp, RMN | inherited | 142 | n/a |
| [drive.google.com/file/d/1rbVYly_VuW6LdAwhpbgxO8DpNiBn-6Vk/view](https://drive.google.com/file/d/1rbVYly_VuW6LdAwhpbgxO8DpNiBn-6Vk/view?usp=sharing) | unknown | Audit | 2025-09 | fresh | Inherited from KEEP Network — forked code, scoped to CommitStore, EVM2EVMOffRamp, EVM2EVMOnRamp, RMN | inherited | 142 | n/a |
| [www.notion.so/threshold-labs/tBTC-Direct-Minting-Audit-Reports-1ec45959b48e8008ab0fe7b20a130760](https://www.notion.so/threshold-labs/tBTC-Direct-Minting-Audit-Reports-1ec45959b48e8008ab0fe7b20a130760?source=copy_link) | Code4rena | Contest | 2025-04 | aging | Inherited from KEEP Network — forked code, scoped to CommitStore, EVM2EVMOffRamp, EVM2EVMOnRamp, RMN | inherited | 142 | n/a |
| [240411_Thesis_Defense-Threshold_tBTC_Base_Smart_Contracts_Security_Audit_Report.pdf](https://github.com/thesis/defense_public_security-audit-reports/blob/main/PDFs/240411_Thesis_Defense-Threshold_tBTC_Base_Smart_Contracts_Security_Audit_Report.pdf) | Thesis Defense | Audit | 2024-04 | stale | Inherited from KEEP Network — forked code, scoped to CommitStore, EVM2EVMOffRamp, EVM2EVMOnRamp, RMN | inherited | 142 | n/a |
| [hashlock.com/audits/t-rize](https://hashlock.com/audits/t-rize) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 0 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 19 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: inherited_name_remap=1136

Zero-match audit list:

- [21130] hashlock.com/audits/t-rize

Fork inheritance lineage and inherited audits are included when available.
