# Agentic Audit Brief: CLever

## Project Overview

- Project: CLever (`clever`)
- Website: [https://clever.aladdin.club/](https://clever.aladdin.club/)
- Lifecycle: unknown
- Generated: 2026-07-04T11:05:40.825Z
- Pipeline run: v2-pipeline-2026-07-01-3e33f2-3e24
- Chains: ethereum
- Contract surface: 50 unique implementations (97 raw deployments)
- DeFi Llama TVL: $3,507,907.95
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Yield. Structurally: 72 project-authored contract(s) across 1 chain(s); 4 ERC4626 vaults, 9 ERC20 tokens; role-gated via AccessControl; upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 8 functional families. Its contracts share 9 common project-authored base contract(s) (concentratorgeneralvault, feecustomization, concentratorbase). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 168; live-surface contracts included: 81 (80 live, 1 unknown).
- Excluded by liveness: 87 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 4/49 (8.2%)
- Deployed-live implementations: 49 of 50 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 4/49
- Verified + Unaudited implementations: 45
- Verified by bytecode match: 0
- Unverified implementations: 1
- Unique implementations: 50
- Raw deployments: 97
- Audits discovered: 3 (3 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 3
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2022-11 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 3 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 4 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| unknown | Tier 2 | 4 | 8.2% | 2022-04 |
| SECBIT | Tier 2 | 3 | 6.1% | 2022-11 |

## Contract Surface

### ✅ Verified + Audited (4)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| CLeverCVXLocker | unknown | ethereum | n/a | [`0x96c68d...c64154`](./contracts/ethereum-1/0x96c68d861ada016ed98c30c810879f9df7c64154/) | ✅ Audited |
| CLeverToken | token | ethereum | n/a | 2 deployments: ethereum [`0x3c20ac...972f86`](./contracts/ethereum-1/0x3c20ac688410be8f391be1fb00afc5c212972f86/); ethereum `0xf05e58...0ba904` | ✅ Audited |
| Furnace | unknown | ethereum | n/a | [`0xce4dcc...7ab72a`](./contracts/ethereum-1/0xce4dcc5028588377e279255c0335effe2d7ab72a/) | ✅ Audited |
| Vesting | unknown | ethereum | n/a | 5 deployments: ethereum [`0x28f576...a7309b`](./contracts/ethereum-1/0x28f5763b7779ed64b9e0da0a9862571ba4a7309b/); ethereum `0x592e35...695593`; ethereum `0x834188...f28742`; ethereum `0x84c82d...6f7a4e`; ethereum `0xd2b094...6ae099` | ✅ Audited |

### ⚠️ Verified + Unaudited (45)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| AladdinConvexVault | core_logic | ethereum | n/a | [`0xc8ff37...68e0e8`](./contracts/ethereum-1/0xc8ff37f7d057df1bb9ad681b53fa4726f268e0e8/) | ⚠️ Unaudited |
| AladdinCRVV2 | unknown | ethereum | n/a | [`0x2b95a1...7e0884`](./contracts/ethereum-1/0x2b95a1dcc3d405535f9ed33c219ab38e8d7e0884/) | ⚠️ Unaudited |
| AladdinCVX | unknown | ethereum | n/a | 2 deployments: ethereum [`0x4b2c6f...ce0750`](./contracts/ethereum-1/0x4b2c6f67bc775fd64de3cec188f0f3e960ce0750/); ethereum `0x5380d2...1cf94a` | ⚠️ Unaudited |
| AladdinCVX | unknown | ethereum | n/a | 2 deployments: ethereum [`0x705299...0042fc`](./contracts/ethereum-1/0x705299acafcb8974057cee1b7529dda12a0042fc/); ethereum `0xdec800...c8e359` | ⚠️ Unaudited |
| AladdinETH | unknown | ethereum | n/a | 2 deployments: ethereum [`0xb15ad6...be5aba`](./contracts/ethereum-1/0xb15ad6113264094fd9bf2238729410a07ebe5aba/); ethereum `0xd3b158...fb777c` | ⚠️ Unaudited |
| AladdinFXSConvexVault | core_logic | ethereum | n/a | [`0xd6e3bb...bf99e1`](./contracts/ethereum-1/0xd6e3bb7b1d6fa75a71d48cfb10096d59abbf99e1/) | ⚠️ Unaudited |
| AladdinFXSV2 | unknown | ethereum | n/a | 2 deployments: ethereum [`0xd9cc44...f99258`](./contracts/ethereum-1/0xd9cc44c567b1effddde8461acd6c67028af99258/); ethereum `0xdaf03d...6d3ec9` | ⚠️ Unaudited |
| AladdinZap | unknown | ethereum | n/a | 2 deployments: ethereum [`0x1104b4...48dc8a`](./contracts/ethereum-1/0x1104b4df568fa7af90b1bed1d78a2f71e748dc8a/); ethereum `0xbbd909...26d49d` | ⚠️ Unaudited |
| AladdinZap | unknown | ethereum | n/a | [`0xddf819...9f3f8b`](./contracts/ethereum-1/0xddf819a8c95b4788dd1ed31db6e3726c229f3f8b/) | ⚠️ Unaudited |
| AllInOneGateway | unknown | ethereum | n/a | [`0x6e513d...6c857b`](./contracts/ethereum-1/0x6e513d492ded19ad8211a57cc6b4493c9e6c857b/) | ⚠️ Unaudited |
| CompounderGateway | adapter | ethereum | n/a | [`0x883fd3...f7df1f`](./contracts/ethereum-1/0x883fd355debf417f82aa9a3e2936971487f7df1f/) | ⚠️ Unaudited |
| ConcentratorAladdinETHVault | unknown | ethereum | n/a | 2 deployments: ethereum [`0x1af163...2c9fa5`](./contracts/ethereum-1/0x1af1639f02e03107d95c6d1670ade9e7262c9fa5/); ethereum `0x50b47c...29346d` | ⚠️ Unaudited |
| ConcentratorIFOVault | unknown | ethereum | n/a | 2 deployments: ethereum [`0x3cf54f...4450b5`](./contracts/ethereum-1/0x3cf54f3a1969be9916dad548f3c084331c4450b5/); ethereum `0x4657e9...c84283` | ⚠️ Unaudited |
| ConcentratorIFOVault | unknown | ethereum | n/a | 2 deployments: ethereum [`0x95fa41...64e194`](./contracts/ethereum-1/0x95fa41d06e4a7f1e219dbae738e987893b64e194/); ethereum `0x99373a...c07b40` | ⚠️ Unaudited |
| ConcentratorStakeDAOLocker | unknown | ethereum | n/a | [`0x1c0d72...eead09`](./contracts/ethereum-1/0x1c0d72a330f2768daf718def8a19bab019eead09/) | ⚠️ Unaudited |
| ConcentratorVaultForAsdCRV | unknown | ethereum | n/a | 2 deployments: ethereum [`0x0a6e11...aa0b97`](./contracts/ethereum-1/0x0a6e1167c9b8599ee1deccb331aac176e2aa0b97/); ethereum `0x59866e...ada3de` | ⚠️ Unaudited |
| Curve DAO Token | unknown | ethereum | n/a | [`0x4eeca6...0fa8c6`](./contracts/ethereum-1/0x4eeca6bfa3c96210260691639827eef4d80fa8c6/) | ⚠️ Unaudited |
| FractionalToken | unknown | ethereum | n/a | 2 deployments: ethereum [`0x2a906e...745748`](./contracts/ethereum-1/0x2a906eab9b088e6753670bc8d3840f9473745748/); ethereum `0x53805a...633726` | ⚠️ Unaudited |
| FxUSDFacet | unknown | ethereum | n/a | [`0xa5e2ec...932fe4`](./contracts/ethereum-1/0xa5e2ec4682a32605b9098ddd7204fe84ab932fe4/) | ⚠️ Unaudited |
| Gauge Controller | unknown | ethereum | n/a | 2 deployments: ethereum [`0xdbb1aa...0c8acc`](./contracts/ethereum-1/0xdbb1aaeb04f3b5e2587e4bb849717e9ebd0c8acc/); ethereum `0xe6aaf8...a9d217` | ⚠️ Unaudited |
| GaugeRewardDistributor | unknown | ethereum | n/a | [`0xf57b53...cb87b0`](./contracts/ethereum-1/0xf57b53df7326e2c6bcfa81b4a128a92e69cb87b0/) | ⚠️ Unaudited |
| GeneralTokenConverter | token | ethereum | n/a | [`0x11c907...8a6784`](./contracts/ethereum-1/0x11c907b3aedbd863e551c37f21dd3f36b28a6784/) | ⚠️ Unaudited |
| GnosisSafe | governance | ethereum | n/a | 2 deployments: ethereum [`0xc40549...afe23f`](./contracts/ethereum-1/0xc40549aa1d05c30af23a1c4a5af6ba11fcafe23f/); ethereum `0xfc0875...9f0c5e` | ⚠️ Unaudited |
| LeveragedToken | unknown | ethereum | n/a | 2 deployments: ethereum [`0x92d0cb...75fe83`](./contracts/ethereum-1/0x92d0cb7e56806bf977e7f5296ea2fe84b475fe83/); ethereum `0xe063f0...703ae2` | ⚠️ Unaudited |
| Market | unknown | ethereum | n/a | [`0xe7b9c7...5108db`](./contracts/ethereum-1/0xe7b9c7c9ca85340b8c06fb805f7775e3015108db/) | ⚠️ Unaudited |
| MetaCLever | unknown | ethereum | n/a | 5 deployments: ethereum [`0x057810...ca4eb1`](./contracts/ethereum-1/0x057810cf20efd30745b368ec42f0b39879ca4eb1/); ethereum `0x2c37f1...86157e`; ethereum `0xad4cac...c730e0`; ethereum `0xb2fcee...673cc1`; ethereum `0xeb0ea9...4f53b1` | ⚠️ Unaudited |
| MetaFurnace | unknown | ethereum | n/a | 2 deployments: ethereum [`0x6f7768...7950f9`](./contracts/ethereum-1/0x6f77685ae7a1288d2480440b7bb0fa2c317950f9/); ethereum `0x7f160e...5761a9` | ⚠️ Unaudited |
| MultipleVestHelper | unknown | ethereum | n/a | 2 deployments: ethereum [`0x572dec...d11983`](./contracts/ethereum-1/0x572deca882f4c9abcbdc6f020601a1b789d11983/); ethereum `0xd479c1...ef3195` | ⚠️ Unaudited |
| PlatformFeeBurner | unknown | ethereum | n/a | [`0x695eb5...411403`](./contracts/ethereum-1/0x695eb50a92ad2aebb89c6dd1f3c7546a28411403/) | ⚠️ Unaudited |
| PlatformFeeDistributor | unknown | ethereum | n/a | 2 deployments: ethereum [`0xd27917...76e973`](./contracts/ethereum-1/0xd2791781c367b2f512396105c8ab26479876e973/); ethereum `0xd6efa5...2a35be` | ⚠️ Unaudited |
| PlatformFeeSpliter | unknown | ethereum | n/a | [`0x323668...2380c8`](./contracts/ethereum-1/0x32366846354db5c08e92b4ab0d2a510b2a2380c8/) | ⚠️ Unaudited |
| ProxyAdmin | unknown | ethereum | n/a | 3 deployments: ethereum [`0x12b132...7762a0`](./contracts/ethereum-1/0x12b1326459d72f2ab081116bf27ca46cd97762a0/); ethereum `0x1f5728...dc87ee`; ethereum `0x9b54b7...2edda4` | ⚠️ Unaudited |
| RebalancePool | core_logic | ethereum | n/a | [`0xa677d9...01a49e`](./contracts/ethereum-1/0xa677d95b91530d56791fba72c01a862f1b01a49e/) | ⚠️ Unaudited |
| RewardClaimHelper | periphery | ethereum | n/a | [`0xaf59d1...657a7f`](./contracts/ethereum-1/0xaf59d144357dcc8a852ad601f27bf6310b657a7f/) | ⚠️ Unaudited |
| SdCrvCompounder | adapter | ethereum | n/a | [`0x43e54c...7b9922`](./contracts/ethereum-1/0x43e54c2e7b3e294de3a155785f52ab49d87b9922/) | ⚠️ Unaudited |
| StakeDAOCRVVault | unknown | ethereum | n/a | 2 deployments: ethereum [`0x2b3e72...e1e3f6`](./contracts/ethereum-1/0x2b3e72f568f96d7209e20c8b8f4f2a363ee1e3f6/); ethereum `0xf29faf...d254c1` | ⚠️ Unaudited |
| stETHTreasury | operational_periphery | ethereum | n/a | [`0x0e5caa...3afbb0`](./contracts/ethereum-1/0x0e5caa5c889bdf053c9a76395f62267e653afbb0/) | ⚠️ Unaudited |
| Token Minter | unknown | ethereum | n/a | 2 deployments: ethereum [`0x7185e3...6591d3`](./contracts/ethereum-1/0x7185e3477ad54a8186e623768833e8c2686591d3/); ethereum `0xeba9a8...a78054` | ⚠️ Unaudited |
| TokenSale | unknown | ethereum | n/a | 3 deployments: ethereum [`0x078672...8c75e7`](./contracts/ethereum-1/0x07867298d99b95772008583bd603cfa68b8c75e7/); ethereum `0x3eb6da...b0e17f`; ethereum `0x674a74...6de935` | ⚠️ Unaudited |
| TokenZapLogic | unknown | ethereum | n/a | 3 deployments: ethereum [`0x21cea3...33cac5`](./contracts/ethereum-1/0x21cea3a3cd10ae1feb0759750970b7e86d33cac5/); ethereum `0x858d62...c5346f`; ethereum `0xebdb53...1a718e` | ⚠️ Unaudited |
| TokenZapLogic | unknown | ethereum | n/a | 2 deployments: ethereum [`0x6258b0...96c425`](./contracts/ethereum-1/0x6258b0fbc8d33d412f4c731b7d83879c3396c425/); ethereum `0xd06986...8292b1` | ⚠️ Unaudited |
| VeFeeGateway | unknown | ethereum | n/a | [`0x8fc790...6421e9`](./contracts/ethereum-1/0x8fc7906fc6047679dad53c0c3b40e135486421e9/) | ⚠️ Unaudited |
| VeSDTDelegation | unknown | ethereum | n/a | 2 deployments: ethereum [`0x6037bb...e3ff64`](./contracts/ethereum-1/0x6037bb1bba598bf88d816cad90a28cc00fe3ff64/); ethereum `0xa5d31b...ae0f12` | ⚠️ Unaudited |
| Vyper_contract | unknown | ethereum | n/a | 13 deployments: ethereum [`0x261e3a...dcd2de`](./contracts/ethereum-1/0x261e3aeb4cd1ebfd0fa532d6acdd4b21ebdcd2de/); ethereum `0x4aa2af...18566a`; ethereum `0x6c280d...5d3620`; ethereum `0x72953a...581bbf`; ethereum `0x86e917...cf114f`; ethereum `0x94be07...2e051e`; ethereum `0x9b0254...7a2fe8`; ethereum `0xa5d935...a4458c`; ethereum `0xb3ad64...6890b8`; ethereum `0xb5e7f9...9b42e2`; ethereum `0xc50222...67f2f0`; ethereum `0xe4c099...4b4968`; ethereum `0xf9078f...d1a5a6` | ⚠️ Unaudited |
| WeightedPool | core_logic | ethereum | n/a | [`0x69671c...631378`](./contracts/ethereum-1/0x69671c808c8f1c1490a4c9e0145884dfb5631378/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (1)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | ethereum | n/a | `0x188bd8...a802de` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [SECBIT_CLever_Report_v1.1.pdf](https://github.com/AladdinDAO/aladdin-v3-contracts/blob/main/audit-reports/SECBIT_CLever_Report_v1.1.pdf) | unknown | Audit | 2022-04 | stale | Direct | contract_name | 4 | n/a |
| [SECBIT_CLever_Furnace_Update_20221111.pdf](https://github.com/AladdinDAO/aladdin-v3-contracts/blob/main/audit-reports/SECBIT_CLever_Furnace_Update_20221111.pdf) | SECBIT | Audit | 2022-11 | stale | Direct | contract_name | 1 | n/a |
| [SECBIT_AladdinDaoV3_ClevUSD_Strategy_Report.pdf](https://github.com/AladdinDAO/aladdin-v3-contracts/blob/main/audit-reports/SECBIT_AladdinDaoV3_ClevUSD_Strategy_Report.pdf) | SECBIT | Audit | 2022-09 | stale | Direct | contract_name | 2 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 0 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 50 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: contract_name=7

Fork inheritance lineage and inherited audits are included when available.
