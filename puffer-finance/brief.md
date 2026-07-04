# Agentic Audit Brief: Puffer Finance

## Project Overview

- Project: Puffer Finance (`puffer-finance`)
- Website: [https://puffer.fi](https://puffer.fi)
- Lifecycle: unknown
- Generated: 2026-07-04T14:53:44.230Z
- Pipeline run: v2-pipeline-2026-07-01-3e33f2-d640
- Chains: ethereum
- Contract surface: 75 unique implementations (121 raw deployments)
- DeFi Llama TVL: $42,781,317.33
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Liquid Restaking. Structurally: 53 project-authored contract(s) across 1 chain(s); 6 ERC4626 vaults, 13 ERC20 tokens; upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 7 functional families. Its contracts share 21 common project-authored base contract(s) (accessmanaged, accessmanagedupgradeable, contextupgradeable). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 140; live-surface contracts included: 119 (97 live, 22 unknown).
- Excluded by liveness: 21 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 1/53 (1.9%)
- Deployed-live implementations: 55 of 75 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 1/56
- Verified + Unaudited implementations: 55
- Verified by bytecode match: 0
- Unverified implementations: 19
- Unique implementations: 75
- Raw deployments: 121
- Audits discovered: 4 (4 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 4
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2024-05 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 4 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 1 match-unverified
- Tier 1 coverage: 1.9% (SlowMist)

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| Blocksec | Tier 2 | 1 | 1.8% | 2024-04 |
| Creed | Tier 2 | 1 | 1.8% | 2024-05 |
| Nethermind | Tier 2 | 1 | 1.8% | 2024-04 |
| SlowMist | Tier 1 | 1 | 1.8% | 2024-04 |

## Contract Surface

### ✅ Verified + Audited (1)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| GuardianModule | unknown | ethereum | n/a | 3 deployments: ethereum [`0x0304a9...513cd0`](./contracts/ethereum-1/0x0304a9462169aa9e77ec4d51b1fa31eb15513cd0/); ethereum `0x19ad0a...fc47bc`; ethereum `0x628b18...a7ccf2` | ✅ Audited |

### ⚠️ Verified + Unaudited (55)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| AccessManager | unknown | ethereum | n/a | 4 deployments: ethereum [`0x75351d...1ad7e7`](./contracts/ethereum-1/0x75351d49229aa42df7febfbea0c7cecc881ad7e7/); ethereum `0x8c1686...ebee11`; ethereum `0xaf1ac3...5f7573`; ethereum `0xe9a945...156bd1` | ⚠️ Unaudited |
| AccountantWithRateProviders | operational_periphery | ethereum | n/a | 2 deployments: ethereum [`0xa9fb7e...6dc21c`](./contracts/ethereum-1/0xa9fb7e2922216debe3fd5e1bbe7591ee446dc21c/); ethereum `0xe0bdb7...b7e3be` | ⚠️ Unaudited |
| AVSContractsRegistry | unknown | ethereum | n/a | [`0x1565e5...be882f`](./contracts/ethereum-1/0x1565e55b63675c703fcc3778bd33ea97f7be882f/) | ⚠️ Unaudited |
| BoringVault | core_logic | ethereum | n/a | 3 deployments: ethereum [`0x170d84...c933a0`](./contracts/ethereum-1/0x170d847a8320f3b6a77ee15b0cae430e3ec933a0/); ethereum `0x196ead...bd3dcc`; ethereum `0x82c40e...c7cab4` | ⚠️ Unaudited |
| CarrotVesting | unknown | ethereum | n/a | 2 deployments: ethereum [`0xf88691...e7051a`](./contracts/ethereum-1/0xf88691cd8bf1293cca2d36d578dad70342e7051a/); ethereum `0xff00c2...cbc82b` | ⚠️ Unaudited |
| Clock | unknown | ethereum | n/a | [`0x8bcdf6...cc26eb`](./contracts/ethereum-1/0x8bcdf6291f251cf8ecf5ac06bfc4a2b02ecc26eb/) | ⚠️ Unaudited |
| DAO | unknown | ethereum | n/a | [`0x5dea8e...55b23f`](./contracts/ethereum-1/0x5dea8e499b05de8f86e7521f039770268055b23f/) | ⚠️ Unaudited |
| EnclaveVerifier | unknown | ethereum | n/a | [`0x1d03e4...241d95`](./contracts/ethereum-1/0x1d03e4bcc928795b1eeac1205fa9ddc4a3241d95/) | ⚠️ Unaudited |
| ERC1967Proxy | unknown | ethereum | n/a | 2 deployments: ethereum [`0x55202a...95945e`](./contracts/ethereum-1/0x55202aa4b5ee7a37776fa5e6ec6208c6df95945e/); ethereum `0x716b75...84604e` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | ethereum | n/a | 2 deployments: ethereum [`0x58b56f...64c302`](./contracts/ethereum-1/0x58b56fe5aca76dd630f48091f9d817bda964c302/); ethereum `0xf00ed0...220aca` | ⚠️ Unaudited |
| ExitQueue | operational_periphery | ethereum | n/a | [`0xd9c2d3...e4a455`](./contracts/ethereum-1/0xd9c2d314e29f1940d2a65a691881f0950fe4a455/) | ⚠️ Unaudited |
| GaugeRegistry | operational_periphery | ethereum | n/a | [`0x27ef0b...398a25`](./contracts/ethereum-1/0x27ef0bc5eaa61dc6e7d08f17eb00de7d94398a25/) | ⚠️ Unaudited |
| GnosisSafe | governance | ethereum | n/a | 3 deployments: ethereum [`0x1ba8e3...620df4`](./contracts/ethereum-1/0x1ba8e3aa853f73ae8093e26b7b8f2520c3620df4/); ethereum `0x446d4d...86cb2a`; ethereum `0xc0896a...55580d` | ⚠️ Unaudited |
| InstitutionalFactory | unknown | ethereum | n/a | [`0x5e9a0e...ee4d5e`](./contracts/ethereum-1/0x5e9a0ea50a0028fb80c0e2cf54da323495ee4d5e/) | ⚠️ Unaudited |
| InstitutionalVault | core_logic | ethereum | n/a | 2 deployments: ethereum [`0x358a7d...a32cc7`](./contracts/ethereum-1/0x358a7d0028070533a9e000616aa6656be7a32cc7/); ethereum `0xb6ffcc...198b9c` | ⚠️ Unaudited |
| L1RewardManager | unknown | ethereum | n/a | 2 deployments: ethereum [`0x157788...3cf17b`](./contracts/ethereum-1/0x157788cc028ac6405bd406f2d1e0a8a22b3cf17b/); ethereum `0xc9b081...e0b583` | ⚠️ Unaudited |
| L1RewardManager | unknown | ethereum | n/a | [`0xbf11b5...90c467`](./contracts/ethereum-1/0xbf11b5a0d7adeb5c1f2f3dbb85169594aa90c467/) | ⚠️ Unaudited |
| LibBeaconchainContract | unknown | ethereum | n/a | [`0xa704b1...e79a8e`](./contracts/ethereum-1/0xa704b16ef5a05ccb88734d57f559e80187e79a8e/) | ⚠️ Unaudited |
| Lock | unknown | ethereum | n/a | [`0x1b6ec2...29965e`](./contracts/ethereum-1/0x1b6ec227cebec25118270efbb4b67642fc29965e/) | ⚠️ Unaudited |
| Multisig | governance | ethereum | n/a | [`0xa303c4...f73a0d`](./contracts/ethereum-1/0xa303c435563a4544a84e26501f4666346ff73a0d/) | ⚠️ Unaudited |
| NoImplementation | unknown | ethereum | n/a | [`0xc143da...4c30ef`](./contracts/ethereum-1/0xc143da0fbab94198361147f54b444202f84c30ef/) | ⚠️ Unaudited |
| NonRestakingWithdrawalCredentialsFactory | operational_periphery | ethereum | n/a | [`0xa766b7...48ea36`](./contracts/ethereum-1/0xa766b79c25a8ab4354bf2351c6716baced48ea36/) | ⚠️ Unaudited |
| OperationsCoordinator | unknown | ethereum | n/a | 3 deployments: ethereum [`0x3fee92...cd9bf7`](./contracts/ethereum-1/0x3fee92765f5cf8f9909a3c89f4907ea5e1cd9bf7/); ethereum `0xb0c420...b882b0`; ethereum `0xe6d798...31a3c0` | ⚠️ Unaudited |
| pufETHAdapter | adapter | ethereum | n/a | [`0xa4931a...f97b18`](./contracts/ethereum-1/0xa4931a9f9aaf79057334371d6f62164743f97b18/) | ⚠️ Unaudited |
| PUFFER | unknown | ethereum | n/a | [`0x4d1c29...664530`](./contracts/ethereum-1/0x4d1c297d39c5c1277964d0e3f8aa901493664530/) | ⚠️ Unaudited |
| PUFFERAdapter | adapter | ethereum | n/a | [`0x3ea9bb...edd83f`](./contracts/ethereum-1/0x3ea9bb9fcdcc1c37cb09175aecdb488a97edd83f/) | ⚠️ Unaudited |
| PufferDepositor | unknown | ethereum | n/a | [`0x727692...453d6a`](./contracts/ethereum-1/0x7276925e42f9c4054afa2fad80fa79520c453d6a/) | ⚠️ Unaudited |
| PufferDepositorV2 | unknown | ethereum | n/a | 2 deployments: ethereum [`0x55f4d6...40a304`](./contracts/ethereum-1/0x55f4d6acf015c878a88c8cd08a9d74ea0d40a304/); ethereum `0x8c9517...7f8b9b` | ⚠️ Unaudited |
| PufferModule | unknown | ethereum | n/a | 4 deployments: ethereum [`0x0c3801...c50e41`](./contracts/ethereum-1/0x0c38016881a2e32c7c7cb67b23460cd1f9c50e41/); ethereum `0x181cda...875075`; ethereum `0x7f9eb5...6c2fcc`; ethereum `0xbb55ea...f962b3` | ⚠️ Unaudited |
| PufferModuleManager | unknown | ethereum | n/a | 6 deployments: ethereum [`0x07df6f...55a9a3`](./contracts/ethereum-1/0x07df6fa1b78a64dc2c97ea0bf77c227d9655a9a3/); ethereum `0x2c1e23...6b1a83`; ethereum `0x441b17...4b7ab3`; ethereum `0x6f0694...d481ee`; ethereum `0x7579eb...ebd1a2`; ethereum `0x9d1374...70b8fa` | ⚠️ Unaudited |
| PufferModuleManager | unknown | ethereum | n/a | 2 deployments: ethereum [`0x9c713e...f5d042`](./contracts/ethereum-1/0x9c713e108ad3f791c1a13b2b29893a26f4f5d042/); ethereum `0x9e1e4f...5c3860` | ⚠️ Unaudited |
| PufferOracleV2 | unknown | ethereum | n/a | 4 deployments: ethereum [`0x0be2ae...9e994f`](./contracts/ethereum-1/0x0be2ae0edbebb517541df217ef0074fc9a9e994f/); ethereum `0x785a54...25fa86`; ethereum `0x8efd1d...119489`; ethereum `0xc0613d...85ec97` | ⚠️ Unaudited |
| PufferProtocol | unknown | ethereum | n/a | 2 deployments: ethereum [`0xd05edf...df2b00`](./contracts/ethereum-1/0xd05edf0bc5c2c960a7eb5485c8f965c151df2b00/); ethereum `0xf7b6b3...bd238b` | ⚠️ Unaudited |
| PufferProtocol | unknown | ethereum | n/a | [`0xdeb6e7...478b5d`](./contracts/ethereum-1/0xdeb6e7ed2b0e6b8f8be7fb3603bbc2807e478b5d/) | ⚠️ Unaudited |
| PufferRevenueDepositor | unknown | ethereum | n/a | [`0xd7b4a1...a62d3e`](./contracts/ethereum-1/0xd7b4a10ece470208661f111f3546f09693a62d3e/) | ⚠️ Unaudited |
| PufferVault | unknown | ethereum | n/a | [`0x39ca0a...1305c1`](./contracts/ethereum-1/0x39ca0a6438b6050ea2ac909ba65920c7451305c1/) | ⚠️ Unaudited |
| PufferVaultV2 | unknown | ethereum | n/a | 3 deployments: ethereum [`0x7c93ed...b409b6`](./contracts/ethereum-1/0x7c93edab7326e5ff8d5b89b13e3681216ab409b6/); ethereum `0x976061...881398`; ethereum `0xcd2c08...bc341f` | ⚠️ Unaudited |
| PufferVaultV3 | unknown | ethereum | n/a | [`0x17d5f2...9e6674`](./contracts/ethereum-1/0x17d5f2803d9f922fa9c3a77849962df0d19e6674/) | ⚠️ Unaudited |
| PufferVaultV4 | unknown | ethereum | n/a | [`0x88fd4e...d42495`](./contracts/ethereum-1/0x88fd4e8ef43c3d53e333f55d46091df834d42495/) | ⚠️ Unaudited |
| PufferVaultV5 | unknown | ethereum | n/a | 2 deployments: ethereum [`0x272e34...414d72`](./contracts/ethereum-1/0x272e3475347f0a0b6fa50022140ee5704a414d72/); ethereum `0x3b2fdf...3b8afa` | ⚠️ Unaudited |
| PufferWithdrawalManager | unknown | ethereum | n/a | [`0x98e1d9...1288f1`](./contracts/ethereum-1/0x98e1d95b4b3a5a082642e17274d67d62691288f1/) | ⚠️ Unaudited |
| PufLocker | unknown | ethereum | n/a | 2 deployments: ethereum [`0x48e8de...4590d2`](./contracts/ethereum-1/0x48e8de138c246c14248c94d2d616a2f9eb4590d2/); ethereum `0xfb5cd7...279f69` | ⚠️ Unaudited |
| QuadraticIncreasingEscrow | operational_periphery | ethereum | n/a | [`0xaaab55...3a9196`](./contracts/ethereum-1/0xaaab5528aff964ceac972e39c2357c2d503a9196/) | ⚠️ Unaudited |
| RestakingOperator | unknown | ethereum | n/a | 6 deployments: ethereum [`0x1c6486...7bcd13`](./contracts/ethereum-1/0x1c64868bc4f23f4b8ace51767a376695da7bcd13/); ethereum `0x2de37b...db3266`; ethereum `0x6e7b53...1a58a9`; ethereum `0x7a6e57...9b5a34`; ethereum `0xa17798...72ea47`; ethereum `0xd4106c...40d44d` | ⚠️ Unaudited |
| RestakingOperatorController | unknown | ethereum | n/a | [`0x953b41...c493c1`](./contracts/ethereum-1/0x953b4113716ce71596f7ba6b0e75050c25c493c1/) | ⚠️ Unaudited |
| Safe | unknown | ethereum | n/a | [`0xb33f87...ca78c4`](./contracts/ethereum-1/0xb33f87f2486165c59b735b7c8b3f5489bfca78c4/) | ⚠️ Unaudited |
| TellerWithMultiAssetSupport | core_logic | ethereum | n/a | 3 deployments: ethereum [`0x074364...182f0b`](./contracts/ethereum-1/0x0743647a607822781f9d0a639454e76289182f0b/); ethereum `0x08eb2e...8a1d53`; ethereum `0x5d3fb4...1b54dd` | ⚠️ Unaudited |
| Timelock | unknown | ethereum | n/a | [`0x3c28b7...2126ea`](./contracts/ethereum-1/0x3c28b7c7ba1a1f55c9ce66b263b33b204f2126ea/) | ⚠️ Unaudited |
| ValidatorTicket | unknown | ethereum | n/a | 3 deployments: ethereum [`0x04da36...97cdf9`](./contracts/ethereum-1/0x04da36dd7662a196275da4beb90207966e97cdf9/); ethereum `0x2ffd95...48e65d`; ethereum `0xd88f83...bab56f` | ⚠️ Unaudited |
| ValidatorTicket | unknown | ethereum | n/a | 2 deployments: ethereum [`0x12bd56...c3d8fb`](./contracts/ethereum-1/0x12bd568e59f7d1a707e77f18864597ed80c3d8fb/); ethereum `0xcac0b2...274304` | ⚠️ Unaudited |
| ValidatorTicket | unknown | ethereum | n/a | 2 deployments: ethereum [`0x44aad4...6308ed`](./contracts/ethereum-1/0x44aad4a428661d15c3a983d2a8cbbdf62e6308ed/); ethereum `0x7d26ad...73a55a` | ⚠️ Unaudited |
| vlPUFFER | unknown | ethereum | n/a | [`0x1e1684...5a5e91`](./contracts/ethereum-1/0x1e168460ea0cf3f126ddd3183dc2e376515a5e91/) | ⚠️ Unaudited |
| VotingEscrow | operational_periphery | ethereum | n/a | [`0xa55ed5...363ce7`](./contracts/ethereum-1/0xa55ed5808aecdf23ae3782c1443185f5d2363ce7/) | ⚠️ Unaudited |
| X509Verifier | unknown | ethereum | n/a | [`0xe242c2...c754a4`](./contracts/ethereum-1/0xe242c27cd0568feadc46f09811a55f9b24c754a4/) | ⚠️ Unaudited |
| XERC20Lockbox | token | ethereum | n/a | [`0xd44e91...b463d5`](./contracts/ethereum-1/0xd44e91cfbbaa7b3b259a12a43b38cebf47b463d5/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (19)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | ethereum | n/a | `0x0365db...3ff59f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x05ed83...2f424b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x24d7e4...deaf45` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x26ddd9...7e70df` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x4819b8...5281b6` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x58e431...a9dec3` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x5d9417...4ecf16` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x855a60...02ce71` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x95e3c7...38e63c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x9c13d7...8b9034` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xa1ba8b...a4bf0d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xa31800...ddcb41` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xa95aa4...723f57` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xaa6af9...fc4e5c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xb15b4c...86f366` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xbc34da...ded68c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xbe0bc9...11b6fd` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xd43be5...77ab89` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xec7a60...52656c` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [Blocksec_audit_April2024.pdf](https://github.com/PufferFinance/PufferPool/blob/master/docs/audits/Blocksec_audit_April2024.pdf) | Blocksec | Audit | 2024-04 | stale | Direct | contract_name | 1 | n/a |
| [Creed_Puffer_Finance_Audit_May2024.pdf](https://github.com/PufferFinance/PufferPool/blob/master/docs/audits/Creed_Puffer_Finance_Audit_May2024.pdf) | Creed | Audit | 2024-05 | stale | Direct | contract_name | 1 | n/a |
| [Nethermind_PufferProtocol_NM0202_April2024.pdf](https://github.com/PufferFinance/PufferPool/blob/master/docs/audits/Nethermind_PufferProtocol_NM0202_April2024.pdf) | Nethermind | Audit | 2024-04 | stale | Direct | contract_name | 1 | n/a |
| [SlowMist_PufferFinance_Phase2.pdf](https://github.com/PufferFinance/PufferPool/blob/master/docs/audits/SlowMist_PufferFinance_Phase2.pdf) | SlowMist | Audit | 2024-04 | stale | Direct | contract_name | 1 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | [`0x75351d...1ad7e7`](./contracts/ethereum-1/0x75351d49229aa42df7febfbea0c7cecc881ad7e7/) | AccessManager | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xa9fb7e...6dc21c`](./contracts/ethereum-1/0xa9fb7e2922216debe3fd5e1bbe7591ee446dc21c/) | AccountantWithRateProviders | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1565e5...be882f`](./contracts/ethereum-1/0x1565e55b63675c703fcc3778bd33ea97f7be882f/) | AVSContractsRegistry | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x170d84...c933a0`](./contracts/ethereum-1/0x170d847a8320f3b6a77ee15b0cae430e3ec933a0/) | BoringVault | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xf88691...e7051a`](./contracts/ethereum-1/0xf88691cd8bf1293cca2d36d578dad70342e7051a/) | CarrotVesting | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x8bcdf6...cc26eb`](./contracts/ethereum-1/0x8bcdf6291f251cf8ecf5ac06bfc4a2b02ecc26eb/) | Clock | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x5dea8e...55b23f`](./contracts/ethereum-1/0x5dea8e499b05de8f86e7521f039770268055b23f/) | DAO | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1d03e4...241d95`](./contracts/ethereum-1/0x1d03e4bcc928795b1eeac1205fa9ddc4a3241d95/) | EnclaveVerifier | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xd9c2d3...e4a455`](./contracts/ethereum-1/0xd9c2d314e29f1940d2a65a691881f0950fe4a455/) | ExitQueue | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x27ef0b...398a25`](./contracts/ethereum-1/0x27ef0bc5eaa61dc6e7d08f17eb00de7d94398a25/) | GaugeRegistry | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x5e9a0e...ee4d5e`](./contracts/ethereum-1/0x5e9a0ea50a0028fb80c0e2cf54da323495ee4d5e/) | InstitutionalFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x358a7d...a32cc7`](./contracts/ethereum-1/0x358a7d0028070533a9e000616aa6656be7a32cc7/) | InstitutionalVault | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x157788...3cf17b`](./contracts/ethereum-1/0x157788cc028ac6405bd406f2d1e0a8a22b3cf17b/) | L1RewardManager | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xbf11b5...90c467`](./contracts/ethereum-1/0xbf11b5a0d7adeb5c1f2f3dbb85169594aa90c467/) | L1RewardManager | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xa704b1...e79a8e`](./contracts/ethereum-1/0xa704b16ef5a05ccb88734d57f559e80187e79a8e/) | LibBeaconchainContract | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1b6ec2...29965e`](./contracts/ethereum-1/0x1b6ec227cebec25118270efbb4b67642fc29965e/) | Lock | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xa303c4...f73a0d`](./contracts/ethereum-1/0xa303c435563a4544a84e26501f4666346ff73a0d/) | Multisig | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xc143da...4c30ef`](./contracts/ethereum-1/0xc143da0fbab94198361147f54b444202f84c30ef/) | NoImplementation | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xa766b7...48ea36`](./contracts/ethereum-1/0xa766b79c25a8ab4354bf2351c6716baced48ea36/) | NonRestakingWithdrawalCredentialsFactory | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x3fee92...cd9bf7`](./contracts/ethereum-1/0x3fee92765f5cf8f9909a3c89f4907ea5e1cd9bf7/) | OperationsCoordinator | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xa4931a...f97b18`](./contracts/ethereum-1/0xa4931a9f9aaf79057334371d6f62164743f97b18/) | pufETHAdapter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x4d1c29...664530`](./contracts/ethereum-1/0x4d1c297d39c5c1277964d0e3f8aa901493664530/) | PUFFER | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x3ea9bb...edd83f`](./contracts/ethereum-1/0x3ea9bb9fcdcc1c37cb09175aecdb488a97edd83f/) | PUFFERAdapter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x727692...453d6a`](./contracts/ethereum-1/0x7276925e42f9c4054afa2fad80fa79520c453d6a/) | PufferDepositor | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x55f4d6...40a304`](./contracts/ethereum-1/0x55f4d6acf015c878a88c8cd08a9d74ea0d40a304/) | PufferDepositorV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0c3801...c50e41`](./contracts/ethereum-1/0x0c38016881a2e32c7c7cb67b23460cd1f9c50e41/) | PufferModule | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x07df6f...55a9a3`](./contracts/ethereum-1/0x07df6fa1b78a64dc2c97ea0bf77c227d9655a9a3/) | PufferModuleManager | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x9c713e...f5d042`](./contracts/ethereum-1/0x9c713e108ad3f791c1a13b2b29893a26f4f5d042/) | PufferModuleManager | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0be2ae...9e994f`](./contracts/ethereum-1/0x0be2ae0edbebb517541df217ef0074fc9a9e994f/) | PufferOracleV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xd05edf...df2b00`](./contracts/ethereum-1/0xd05edf0bc5c2c960a7eb5485c8f965c151df2b00/) | PufferProtocol | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xdeb6e7...478b5d`](./contracts/ethereum-1/0xdeb6e7ed2b0e6b8f8be7fb3603bbc2807e478b5d/) | PufferProtocol | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xd7b4a1...a62d3e`](./contracts/ethereum-1/0xd7b4a10ece470208661f111f3546f09693a62d3e/) | PufferRevenueDepositor | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x39ca0a...1305c1`](./contracts/ethereum-1/0x39ca0a6438b6050ea2ac909ba65920c7451305c1/) | PufferVault | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x7c93ed...b409b6`](./contracts/ethereum-1/0x7c93edab7326e5ff8d5b89b13e3681216ab409b6/) | PufferVaultV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x17d5f2...9e6674`](./contracts/ethereum-1/0x17d5f2803d9f922fa9c3a77849962df0d19e6674/) | PufferVaultV3 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x88fd4e...d42495`](./contracts/ethereum-1/0x88fd4e8ef43c3d53e333f55d46091df834d42495/) | PufferVaultV4 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x272e34...414d72`](./contracts/ethereum-1/0x272e3475347f0a0b6fa50022140ee5704a414d72/) | PufferVaultV5 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x98e1d9...1288f1`](./contracts/ethereum-1/0x98e1d95b4b3a5a082642e17274d67d62691288f1/) | PufferWithdrawalManager | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x48e8de...4590d2`](./contracts/ethereum-1/0x48e8de138c246c14248c94d2d616a2f9eb4590d2/) | PufLocker | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xaaab55...3a9196`](./contracts/ethereum-1/0xaaab5528aff964ceac972e39c2357c2d503a9196/) | QuadraticIncreasingEscrow | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1c6486...7bcd13`](./contracts/ethereum-1/0x1c64868bc4f23f4b8ace51767a376695da7bcd13/) | RestakingOperator | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x953b41...c493c1`](./contracts/ethereum-1/0x953b4113716ce71596f7ba6b0e75050c25c493c1/) | RestakingOperatorController | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x074364...182f0b`](./contracts/ethereum-1/0x0743647a607822781f9d0a639454e76289182f0b/) | TellerWithMultiAssetSupport | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x3c28b7...2126ea`](./contracts/ethereum-1/0x3c28b7c7ba1a1f55c9ce66b263b33b204f2126ea/) | Timelock | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x04da36...97cdf9`](./contracts/ethereum-1/0x04da36dd7662a196275da4beb90207966e97cdf9/) | ValidatorTicket | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x12bd56...c3d8fb`](./contracts/ethereum-1/0x12bd568e59f7d1a707e77f18864597ed80c3d8fb/) | ValidatorTicket | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x44aad4...6308ed`](./contracts/ethereum-1/0x44aad4a428661d15c3a983d2a8cbbdf62e6308ed/) | ValidatorTicket | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1e1684...5a5e91`](./contracts/ethereum-1/0x1e168460ea0cf3f126ddd3183dc2e376515a5e91/) | vlPUFFER | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xa55ed5...363ce7`](./contracts/ethereum-1/0xa55ed5808aecdf23ae3782c1443185f5d2363ce7/) | VotingEscrow | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xe242c2...c754a4`](./contracts/ethereum-1/0xe242c27cd0568feadc46f09811a55f9b24c754a4/) | X509Verifier | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xd44e91...b463d5`](./contracts/ethereum-1/0xd44e91cfbbaa7b3b259a12a43b38cebf47b463d5/) | XERC20Lockbox | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 52 |
| upstream | 0 |
| standard_library | 3 |
| needs_review | 20 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: contract_name=4

Fork inheritance lineage and inherited audits are included when available.
