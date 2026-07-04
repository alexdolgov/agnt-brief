# Agentic Audit Brief: LendFlare

## Project Overview

- Project: LendFlare (`lendflare`)
- Lifecycle: unknown
- Generated: 2026-07-03T21:06:21.430Z
- Pipeline run: v2-pipeline-2026-07-01-3e33f2-b097
- Chains: ethereum
- Contract surface: 63 unique implementations (204 raw deployments)
- DeFi Llama TVL: $942,765.50
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Lending. Structurally: 39 project-authored contract(s) across 1 chain(s); 3 ERC20 tokens; upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 3 functional families. Its contracts share 2 common project-authored base contract(s) (multicall, owned). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 435; live-surface contracts included: 197 (150 live, 47 unknown).
- Excluded by liveness: 238 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 1/19 (5.3%)
- Deployed-live implementations: 19 of 63 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 1/20
- Verified + Unaudited implementations: 19
- Verified by bytecode match: 0
- Unverified implementations: 43
- Unique implementations: 63
- Raw deployments: 204
- Audits discovered: 1 (1 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 1
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2022-04 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 1 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 1 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| CertiK | Tier 2 | 1 | 5.0% | 2022-04 |

## Contract Surface

### ✅ Verified + Audited (1)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| ConvexBoosterV2 | core_logic | ethereum | n/a | [`0x4c3c78...f2b69f`](./contracts/ethereum-1/0x4c3c78cebc9cc87436deed2782998bc002f2b69f/) | ✅ Audited |

### ⚠️ Verified + Unaudited (19)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| ConvexBooster | unknown | ethereum | n/a | [`0x64e965...b083e6`](./contracts/ethereum-1/0x64e965deed764b84882903e26d021e4856b083e6/) | ⚠️ Unaudited |
| CurveExchangeAdapter | unknown | ethereum | n/a | [`0x7d6429...8c1fd4`](./contracts/ethereum-1/0x7d64291b5f9cafa25dc95113955c39ae7c8c1fd4/) | ⚠️ Unaudited |
| DepegShield | unknown | ethereum | n/a | 2 deployments: ethereum [`0x5e6b51...248ac1`](./contracts/ethereum-1/0x5e6b51b181f52fc470db062a07f0210eed248ac1/); ethereum `0x99fc40...d628ae` | ⚠️ Unaudited |
| DepegShieldWrappers | unknown | ethereum | n/a | [`0x8a0663...23af77`](./contracts/ethereum-1/0x8a06635c5a84bd0f2edaeb31c0d5da0f5523af77/) | ⚠️ Unaudited |
| LendFlareCRV | unknown | ethereum | n/a | 2 deployments: ethereum [`0x653689...e7ef19`](./contracts/ethereum-1/0x65368954e911f3003e6827388eadc03922e7ef19/); ethereum `0x9e9659...ff156a` | ⚠️ Unaudited |
| LendFlareProxy | unknown | ethereum | n/a | 2 deployments: ethereum [`0x1fa362...2d446f`](./contracts/ethereum-1/0x1fa362339392f910bd69af8e13dd20c5942d446f/); ethereum `0xbd507d...0e02e8` | ⚠️ Unaudited |
| LendFlareProxy | unknown | ethereum | n/a | 2 deployments: ethereum [`0x7720a9...cd7aa5`](./contracts/ethereum-1/0x7720a95be2b7ce0fb5abe4678d2e2a245bcd7aa5/); ethereum `0x882f46...79aa43` | ⚠️ Unaudited |
| LendFlareProxy | unknown | ethereum | n/a | 2 deployments: ethereum [`0xb620be...bc3f82`](./contracts/ethereum-1/0xb620be8a1949aa9532e6a3510132864ef9bc3f82/); ethereum `0xef9423...21ca0f` | ⚠️ Unaudited |
| LendFlareVault | unknown | ethereum | n/a | 2 deployments: ethereum [`0x803ffd...d9c378`](./contracts/ethereum-1/0x803ffdff8150093be6fc78a0963f443e9bd9c378/); ethereum `0xd61401...5810ff` | ⚠️ Unaudited |
| LendFlareVotingEscrowV2 | unknown | ethereum | n/a | 2 deployments: ethereum [`0x19ac8e...c711d2`](./contracts/ethereum-1/0x19ac8e582a9e6f059e56ce77015c46e250c711d2/); ethereum `0x96738a...d4bf00` | ⚠️ Unaudited |
| LendFlareZap | unknown | ethereum | n/a | 2 deployments: ethereum [`0xbcdc45...98619c`](./contracts/ethereum-1/0xbcdc45372847b95bb4bd6d524b4a801aac98619c/); ethereum `0xd7c86a...a303ca` | ⚠️ Unaudited |
| LendingMarket | unknown | ethereum | n/a | 2 deployments: ethereum [`0x402e3c...8cac5e`](./contracts/ethereum-1/0x402e3c8e2ba9db00005d934260157b1b648cac5e/); ethereum `0xa7c45b...5e88c0` | ⚠️ Unaudited |
| LendingMarket | unknown | ethereum | n/a | [`0x9997fd...f7f179`](./contracts/ethereum-1/0x9997fde74acb0c191cdc7fcdc72255d3a3f7f179/) | ⚠️ Unaudited |
| LendingMarketV2 | unknown | ethereum | n/a | 2 deployments: ethereum [`0x03f744...fce26d`](./contracts/ethereum-1/0x03f744a9ec8d350d1991ac6704fce0c211fce26d/); ethereum `0xac86b0...8daa07` | ⚠️ Unaudited |
| LendingMarketV2 | unknown | ethereum | n/a | 2 deployments: ethereum [`0x4f69ad...b79d52`](./contracts/ethereum-1/0x4f69ad74a5d443b4adc908474c61f5f77ab79d52/); ethereum `0xc8937e...061119` | ⚠️ Unaudited |
| SupplyBooster | unknown | ethereum | n/a | 2 deployments: ethereum [`0xbabb97...98522f`](./contracts/ethereum-1/0xbabb974596343a189930982fabdc7a0d9298522f/); ethereum `0xff9e83...195f21` | ⚠️ Unaudited |
| SupplyPoolExtraRewardFactory | unknown | ethereum | n/a | 2 deployments: ethereum [`0x77be80...87d1ba`](./contracts/ethereum-1/0x77be80a3c5706973a925c468bdc8eaccd187d1ba/); ethereum `0x796669...d9a110` | ⚠️ Unaudited |
| VirtualBalanceWrapper | unknown | ethereum | n/a | 31 deployments: ethereum [`0x0d66b4...b2ba46`](./contracts/ethereum-1/0x0d66b49a68affddcdadddfe06cd6369307b2ba46/); ethereum `0x0e44e0...4a5450`; ethereum `0x10a377...904c1a`; ethereum `0x1acc3f...dca877`; ethereum `0x247b24...0f2133`; ethereum `0x2cb79c...876e26`; ethereum `0x2d3a0e...bf910f`; ethereum `0x2fbe41...4f11fa`; ethereum `0x47a2ee...28af60`; ethereum `0x518802...121ba5`; ethereum `0x51cec5...7aabf5`; ethereum `0x6d18e8...5f37a3`; ethereum `0x6f114a...19b24b`; ethereum `0x753834...b2c15a`; ethereum `0x7fb098...9b6707`; ethereum `0x83d6e9...64d139`; ethereum `0x83ec51...a5fe20`; ethereum `0x85b7cc...e391a0`; ethereum `0x86b268...01a257`; ethereum `0x86ca97...c650f2`; ethereum `0x885673...34f4e6`; ethereum `0x8f48eb...e33497`; ethereum `0x99b496...298e31`; ethereum `0xa16d36...dc2440`; ethereum `0xa91d85...cf9587`; ethereum `0xc0e4f5...37e3c2`; ethereum `0xcc2965...685ef3`; ethereum `0xccbc7f...78b449`; ethereum `0xd8252a...8cef12`; ethereum `0xe1c0b5...e87ca8`; ethereum `0xeae58f...322335` | ⚠️ Unaudited |
| Vyper_contract | unknown | ethereum | n/a | 99 deployments: ethereum [`0x02d341...1b285c`](./contracts/ethereum-1/0x02d341ccb60faaf662bc0554d13778015d1b285c/); ethereum `0x055be5...ca7222`; ethereum `0x063254...faf14e`; ethereum `0x075b1b...e70fb3`; ethereum `0x08380a...a3027c`; ethereum `0x094d12...bc6332`; ethereum `0x0ce6a5...627caa`; ethereum `0x0f9cb5...bc83e1`; ethereum `0x11137b...040ab1`; ethereum `0x11f419...b3902c`; ethereum `0x182b72...453c28`; ethereum `0x194ebd...8411d1`; ethereum `0x1aef73...c862e6`; ethereum `0x1cebdb...b8a3a6`; ethereum `0x1de7f0...cda1f2`; ethereum `0x2dded6...ecfeaf`; ethereum `0x2fe94e...f9d614`; ethereum `0x3a664a...7337b9`; ethereum `0x3b7020...935855`; ethereum `0x3c0fff...e1d238`; ethereum `0x3c8cae...ae4940`; ethereum `0x3e01dd...8af0fb`; ethereum `0x410e3e...d93c2a`; ethereum `0x42d702...7f053a`; ethereum `0x43b4fd...c83f8c`; ethereum `0x462253...22ca39`; ethereum `0x480786...8e085a`; ethereum `0x49849c...fb3675`; ethereum `0x4bfb2f...dc8676`; ethereum `0x4f0626...167956`; ethereum `0x4f3e8f...811522`; ethereum `0x4fd86c...3a04bc`; ethereum `0x5282a4...13638c`; ethereum `0x53a901...4669d5`; ethereum `0x571ff5...bb4091`; ethereum `0x58a3c6...70ee47`; ethereum `0x5a6a4d...bdf41b`; ethereum `0x5b5cfe...003858`; ethereum `0x6070fb...74c017`; ethereum `0x61e106...4996d0`; ethereum `0x64448b...b7136e`; ethereum `0x64eda5...d786fd`; ethereum `0x6955a5...c11f15`; ethereum `0x6c3f90...e6e490`; ethereum `0x6d10ed...695707`; ethereum `0x6d65b4...40fb8f`; ethereum `0x7e1444...f13be1`; ethereum `0x7eb40e...f55ae6`; ethereum `0x8038c0...ecc10c`; ethereum `0x803a2b...2874c2`; ethereum `0x824f13...77a637`; ethereum `0x8474dd...dec9f6`; ethereum `0x890f4e...86985f`; ethereum `0x8925d9...a144b9`; ethereum `0x90e00a...c2d7f5`; ethereum `0x94e131...361b53`; ethereum `0x9582c4...b9c477`; ethereum `0x97e276...19b787`; ethereum `0xa3d87f...b74a9c`; ethereum `0xa464e6...8922dc`; ethereum `0xa96a65...f53ae2`; ethereum `0xaa17a2...c0a6cf`; ethereum `0xaa82ca...ddc78c`; ethereum `0xb0a071...f52f2d`; ethereum `0xb19059...e572fd`; ethereum `0xb9fc15...c990d4`; ethereum `0xbe1751...a0fbd5`; ethereum `0xc25099...e2cb66`; ethereum `0xc25a3a...72917f`; ethereum `0xc2b1df...0bf627`; ethereum `0xc2ee6b...f18e35`; ethereum `0xc45b2e...93c756`; ethereum `0xc5424b...db4567`; ethereum `0xc5cfad...39b023`; ethereum `0xcee60c...656f3a`; ethereum `0xd2967f...3dea07`; ethereum `0xd30dd0...225ac8`; ethereum `0xd5bcf5...570c8d`; ethereum `0xd632f2...caed3b`; ethereum `0xd66290...588b5d`; ethereum `0xd7d147...9fa416`; ethereum `0xd81da8...51f8dd`; ethereum `0xd8b712...866ddf`; ethereum `0xdc2431...f67022`; ethereum `0xde5331...6331e8`; ethereum `0xdebf20...8a8eee`; ethereum `0xdefd8f...6b2168`; ethereum `0xe7a24e...d7d171`; ethereum `0xeb16ae...65a733`; ethereum `0xecb456...e9b347`; ethereum `0xed279f...23f0ca`; ethereum `0xf178c0...c623c0`; ethereum `0xf1f85a...236adc`; ethereum `0xf5194c...c1949f`; ethereum `0xf94409...1de7a8`; ethereum `0xf98450...24cfc4`; ethereum `0xfa9a30...f67e58`; ethereum `0xfd2a8f...c14900`; ethereum `0xfd4d8a...06c87d` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (43)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | ethereum | n/a | `0x036ec6...46c11a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x042326...b03217` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x04af91...b5303d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x09e15a...216626` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x105388...2c0e27` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x124716...638ccf` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x15452c...573484` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x16243c...962468` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x1a6593...32bed1` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x24c7ce...0d4fd6` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x2c5354...bf8d1e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x2ed872...2fc25c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x2f3adb...08f513` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x3f2094...54a571` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x41f505...6d940a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x450c35...879605` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x4cfc69...03ecc3` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x54e8a2...a17a62` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x5a7aa3...671507` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x5c5395...0c013b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x6ec585...b958ed` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x7baad5...739c83` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x7c054a...65dcd2` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x80caaa...c89af2` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x99f742...7c6e8b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xa57119...c19ca5` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xa706a7...ab5ecc` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xbb1447...c6fbc5` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xbbb805...b35b8c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xc05105...8f8a67` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xc49dfa...9b6bd8` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xc4a059...e016a3` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xc4e606...7e755f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xca02c2...1fa4fd` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xced2c6...24cdc7` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xdbe281...b1a0a9` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xe2470c...512f7a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xe5fdba...95cba5` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xf77a1e...b8bf6a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xf9b1f1...7c9161` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xfa17c5...5feb87` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xfe3aff...847074` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xfef6ee...6d1135` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [skynet.certik.com/projects/lend-flare](https://skynet.certik.com/projects/lend-flare) | CertiK | Audit | 2022-04 | stale | Direct | contract_name | 1 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 0 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 63 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: contract_name=1

Fork inheritance lineage and inherited audits are included when available.
