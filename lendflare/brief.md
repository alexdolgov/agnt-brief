# Agentic Audit Brief: LendFlare

⚠️ Lifecycle status: DECLINING - TVL changed 10.9% over 90 days

## Project Overview

- Project: LendFlare (`lendflare`)
- Lifecycle: declining (Tier 0, 97.2% below peak)
- Generated: 2026-06-17T07:00:43.051Z
- Pipeline run: brief-regen-topo-2026-06-17
- Chains: ethereum
- Contract surface: 3 unique implementations (131 raw deployments)
- DeFi Llama TVL: $987,553.46
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## ⚠️ Limited Contract Surface

This brief covers only 3 contract implementation(s). The pipeline may not have discovered all deployed contracts for this project.
Coverage assessment and audit matching are based on this incomplete surface.

## Project Description

LendFlare is an Ethereum borrowing platform for Curve LP holders, enabling fixed-rate, fixed-term, high-LTV loans against Curve LP collateral. Lender liquidity is linked to Compound-funded supply, while Curve/Convex reward infrastructure is ancillary to the protocol’s collateral and yield mechanics.

## Contract Surface Quality

- Indexed contracts: 380; live-surface contracts included: 131 (100 live, 31 unknown).
- Excluded by liveness: 225 inactive, 24 singleton, 0 uninitialized.
- Deployment units: 1/15 live.
- Detected codebases: compound-v2
- Unverified dependencies: 5/25.

## Audit Coverage Summary

- Verified implementations audited: 1/3 (33.3%)
- Verified + Unaudited implementations: 2
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 3
- Raw deployments: 131
- Audits discovered: 1
- Scoreable audits (matched contracts): 1
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2022-04 (stale)
- Staleness: 0 fresh, 0 aging, 1 stale, 0 unknown
- Tier 1 coverage: No Tier 1 coverage
- Note: This protocol is classified as [declining]. ASD of n/a represents exposure in a protocol with declining activity.

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| CertiK | Tier 2 | 1 | 33.3% | 2022-04 |

## Contract Surface

### ✅ Verified + Audited (1)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| ConvexBoosterV2 | proxy | ethereum | unit-26669 | [`0x4c3c78...f2b69f`](./contracts/ethereum-1/0x4c3c78cebc9cc87436deed2782998bc002f2b69f/) | ✅ Audited |

### ⚠️ Verified + Unaudited (2)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| VirtualBalanceWrapper | unknown | ethereum | n/a | 31 deployments: ethereum [`0x0d66b4...b2ba46`](./contracts/ethereum-1/0x0d66b49a68affddcdadddfe06cd6369307b2ba46/); ethereum `0x0e44e0...4a5450`; ethereum `0x10a377...904c1a`; ethereum `0x1acc3f...dca877`; ethereum `0x247b24...0f2133`; ethereum `0x2cb79c...876e26`; ethereum `0x2d3a0e...bf910f`; ethereum `0x2fbe41...4f11fa`; ethereum `0x47a2ee...28af60`; ethereum `0x518802...121ba5`; ethereum `0x51cec5...7aabf5`; ethereum `0x6d18e8...5f37a3`; ethereum `0x6f114a...19b24b`; ethereum `0x753834...b2c15a`; ethereum `0x7fb098...9b6707`; ethereum `0x83d6e9...64d139`; ethereum `0x83ec51...a5fe20`; ethereum `0x85b7cc...e391a0`; ethereum `0x86b268...01a257`; ethereum `0x86ca97...c650f2`; ethereum `0x885673...34f4e6`; ethereum `0x8f48eb...e33497`; ethereum `0x99b496...298e31`; ethereum `0xa16d36...dc2440`; ethereum `0xa91d85...cf9587`; ethereum `0xc0e4f5...37e3c2`; ethereum `0xcc2965...685ef3`; ethereum `0xccbc7f...78b449`; ethereum `0xd8252a...8cef12`; ethereum `0xe1c0b5...e87ca8`; ethereum `0xeae58f...322335` | ⚠️ Unaudited |
| Vyper_contract | unknown | ethereum | n/a | 99 deployments: ethereum [`0x02d341...1b285c`](./contracts/ethereum-1/0x02d341ccb60faaf662bc0554d13778015d1b285c/); ethereum `0x055be5...ca7222`; ethereum `0x063254...faf14e`; ethereum `0x075b1b...e70fb3`; ethereum `0x08380a...a3027c`; ethereum `0x094d12...bc6332`; ethereum `0x0ce6a5...627caa`; ethereum `0x0f9cb5...bc83e1`; ethereum `0x11137b...040ab1`; ethereum `0x11f419...b3902c`; ethereum `0x182b72...453c28`; ethereum `0x194ebd...8411d1`; ethereum `0x1aef73...c862e6`; ethereum `0x1cebdb...b8a3a6`; ethereum `0x1de7f0...cda1f2`; ethereum `0x2dded6...ecfeaf`; ethereum `0x2fe94e...f9d614`; ethereum `0x3a664a...7337b9`; ethereum `0x3b7020...935855`; ethereum `0x3c0fff...e1d238`; ethereum `0x3c8cae...ae4940`; ethereum `0x3e01dd...8af0fb`; ethereum `0x410e3e...d93c2a`; ethereum `0x42d702...7f053a`; ethereum `0x43b4fd...c83f8c`; ethereum `0x462253...22ca39`; ethereum `0x480786...8e085a`; ethereum `0x49849c...fb3675`; ethereum `0x4bfb2f...dc8676`; ethereum `0x4f0626...167956`; ethereum `0x4f3e8f...811522`; ethereum `0x4fd86c...3a04bc`; ethereum `0x5282a4...13638c`; ethereum `0x53a901...4669d5`; ethereum `0x571ff5...bb4091`; ethereum `0x58a3c6...70ee47`; ethereum `0x5a6a4d...bdf41b`; ethereum `0x5b5cfe...003858`; ethereum `0x6070fb...74c017`; ethereum `0x61e106...4996d0`; ethereum `0x64448b...b7136e`; ethereum `0x64eda5...d786fd`; ethereum `0x6955a5...c11f15`; ethereum `0x6c3f90...e6e490`; ethereum `0x6d10ed...695707`; ethereum `0x6d65b4...40fb8f`; ethereum `0x7e1444...f13be1`; ethereum `0x7eb40e...f55ae6`; ethereum `0x8038c0...ecc10c`; ethereum `0x803a2b...2874c2`; ethereum `0x824f13...77a637`; ethereum `0x8474dd...dec9f6`; ethereum `0x890f4e...86985f`; ethereum `0x8925d9...a144b9`; ethereum `0x90e00a...c2d7f5`; ethereum `0x94e131...361b53`; ethereum `0x9582c4...b9c477`; ethereum `0x97e276...19b787`; ethereum `0xa3d87f...b74a9c`; ethereum `0xa464e6...8922dc`; ethereum `0xa96a65...f53ae2`; ethereum `0xaa17a2...c0a6cf`; ethereum `0xaa82ca...ddc78c`; ethereum `0xb0a071...f52f2d`; ethereum `0xb19059...e572fd`; ethereum `0xb9fc15...c990d4`; ethereum `0xbe1751...a0fbd5`; ethereum `0xc25099...e2cb66`; ethereum `0xc25a3a...72917f`; ethereum `0xc2b1df...0bf627`; ethereum `0xc2ee6b...f18e35`; ethereum `0xc45b2e...93c756`; ethereum `0xc5424b...db4567`; ethereum `0xc5cfad...39b023`; ethereum `0xcee60c...656f3a`; ethereum `0xd2967f...3dea07`; ethereum `0xd30dd0...225ac8`; ethereum `0xd5bcf5...570c8d`; ethereum `0xd632f2...caed3b`; ethereum `0xd66290...588b5d`; ethereum `0xd7d147...9fa416`; ethereum `0xd81da8...51f8dd`; ethereum `0xd8b712...866ddf`; ethereum `0xdc2431...f67022`; ethereum `0xde5331...6331e8`; ethereum `0xdebf20...8a8eee`; ethereum `0xdefd8f...6b2168`; ethereum `0xe7a24e...d7d171`; ethereum `0xeb16ae...65a733`; ethereum `0xecb456...e9b347`; ethereum `0xed279f...23f0ca`; ethereum `0xf178c0...c623c0`; ethereum `0xf1f85a...236adc`; ethereum `0xf5194c...c1949f`; ethereum `0xf94409...1de7a8`; ethereum `0xf98450...24cfc4`; ethereum `0xfa9a30...f67e58`; ethereum `0xfd2a8f...c14900`; ethereum `0xfd4d8a...06c87d` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (0)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

- None

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [www.certik.com/projects/lend-flare](https://skynet.certik.com/projects/lend-flare) | CertiK | Audit | 2022-04 | stale | Direct | contract_name | 1 | high |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | [`0x0d66b4...b2ba46`](./contracts/ethereum-1/0x0d66b49a68affddcdadddfe06cd6369307b2ba46/) | VirtualBalanceWrapper | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 2 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 1 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=1
- Match method counts: extraction_exact=5

Fork inheritance lineage and inherited audits are included when available.
