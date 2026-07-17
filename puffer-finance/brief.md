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
| GuardianModule | unknown | ethereum | n/a | 3 deployments: ethereum [`0x0304a9462169aa9e77ec4d51b1fa31eb15513cd0`](./contracts/ethereum-1/0x0304a9462169aa9e77ec4d51b1fa31eb15513cd0/); ethereum `0x19ad0a7153e192fa10a75954e4c5e259cafc47bc`; ethereum `0x628b183f248a142a598aa2dcccd6f7e480a7ccf2` | ✅ Audited |

### ⚠️ Verified + Unaudited (55)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| AccessManager | unknown | ethereum | n/a | 4 deployments: ethereum [`0x75351d49229aa42df7febfbea0c7cecc881ad7e7`](./contracts/ethereum-1/0x75351d49229aa42df7febfbea0c7cecc881ad7e7/); ethereum `0x8c1686069474410e6243425f4a10177a94ebee11`; ethereum `0xaf1ac38bf920582ae9028199cffe3d46615f7573`; ethereum `0xe9a9455d94204da19d53f7f1877bf575a3156bd1` | ⚠️ Unaudited |
| AccountantWithRateProviders | operational_periphery | ethereum | n/a | 2 deployments: ethereum [`0xa9fb7e2922216debe3fd5e1bbe7591ee446dc21c`](./contracts/ethereum-1/0xa9fb7e2922216debe3fd5e1bbe7591ee446dc21c/); ethereum `0xe0bdb7b9225a2ceb42998dc2e51d4d3cdeb7e3be` | ⚠️ Unaudited |
| AVSContractsRegistry | unknown | ethereum | n/a | [`0x1565e55b63675c703fcc3778bd33ea97f7be882f`](./contracts/ethereum-1/0x1565e55b63675c703fcc3778bd33ea97f7be882f/) | ⚠️ Unaudited |
| BoringVault | core_logic | ethereum | n/a | 3 deployments: ethereum [`0x170d847a8320f3b6a77ee15b0cae430e3ec933a0`](./contracts/ethereum-1/0x170d847a8320f3b6a77ee15b0cae430e3ec933a0/); ethereum `0x196ead472583bc1e9af7a05f860d9857e1bd3dcc`; ethereum `0x82c40e07277ebb92935f79ce92268f80ddc7cab4` | ⚠️ Unaudited |
| CarrotVesting | unknown | ethereum | n/a | 2 deployments: ethereum [`0xf88691cd8bf1293cca2d36d578dad70342e7051a`](./contracts/ethereum-1/0xf88691cd8bf1293cca2d36d578dad70342e7051a/); ethereum `0xff00c2dd07d811bea632cb9f9e4919dd6fcbc82b` | ⚠️ Unaudited |
| Clock | unknown | ethereum | n/a | [`0x8bcdf6291f251cf8ecf5ac06bfc4a2b02ecc26eb`](./contracts/ethereum-1/0x8bcdf6291f251cf8ecf5ac06bfc4a2b02ecc26eb/) | ⚠️ Unaudited |
| DAO | unknown | ethereum | n/a | [`0x5dea8e499b05de8f86e7521f039770268055b23f`](./contracts/ethereum-1/0x5dea8e499b05de8f86e7521f039770268055b23f/) | ⚠️ Unaudited |
| EnclaveVerifier | unknown | ethereum | n/a | [`0x1d03e4bcc928795b1eeac1205fa9ddc4a3241d95`](./contracts/ethereum-1/0x1d03e4bcc928795b1eeac1205fa9ddc4a3241d95/) | ⚠️ Unaudited |
| ERC1967Proxy | unknown | ethereum | n/a | 2 deployments: ethereum [`0x55202aa4b5ee7a37776fa5e6ec6208c6df95945e`](./contracts/ethereum-1/0x55202aa4b5ee7a37776fa5e6ec6208c6df95945e/); ethereum `0x716b75d22b5e5f5cca2c7229f6df79deee84604e` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | ethereum | n/a | 2 deployments: ethereum [`0x58b56fe5aca76dd630f48091f9d817bda964c302`](./contracts/ethereum-1/0x58b56fe5aca76dd630f48091f9d817bda964c302/); ethereum `0xf00ed0c05f399ace32618e64d40e6f78d3220aca` | ⚠️ Unaudited |
| ExitQueue | operational_periphery | ethereum | n/a | [`0xd9c2d314e29f1940d2a65a691881f0950fe4a455`](./contracts/ethereum-1/0xd9c2d314e29f1940d2a65a691881f0950fe4a455/) | ⚠️ Unaudited |
| GaugeRegistry | operational_periphery | ethereum | n/a | [`0x27ef0bc5eaa61dc6e7d08f17eb00de7d94398a25`](./contracts/ethereum-1/0x27ef0bc5eaa61dc6e7d08f17eb00de7d94398a25/) | ⚠️ Unaudited |
| GnosisSafe | governance | ethereum | n/a | 3 deployments: ethereum [`0x1ba8e3aa853f73ae8093e26b7b8f2520c3620df4`](./contracts/ethereum-1/0x1ba8e3aa853f73ae8093e26b7b8f2520c3620df4/); ethereum `0x446d4d6b26815f9ba78b5d454e303315d586cb2a`; ethereum `0xc0896ab1a8cae8c2c1d27d011eb955cca955580d` | ⚠️ Unaudited |
| InstitutionalFactory | unknown | ethereum | n/a | [`0x5e9a0ea50a0028fb80c0e2cf54da323495ee4d5e`](./contracts/ethereum-1/0x5e9a0ea50a0028fb80c0e2cf54da323495ee4d5e/) | ⚠️ Unaudited |
| InstitutionalVault | core_logic | ethereum | n/a | 2 deployments: ethereum [`0x358a7d0028070533a9e000616aa6656be7a32cc7`](./contracts/ethereum-1/0x358a7d0028070533a9e000616aa6656be7a32cc7/); ethereum `0xb6ffcc320dfda1c3d634887c76f69e0518198b9c` | ⚠️ Unaudited |
| L1RewardManager | unknown | ethereum | n/a | 2 deployments: ethereum [`0x157788cc028ac6405bd406f2d1e0a8a22b3cf17b`](./contracts/ethereum-1/0x157788cc028ac6405bd406f2d1e0a8a22b3cf17b/); ethereum `0xc9b0813d9e7f45b5bce84a24f07f33ec6de0b583` | ⚠️ Unaudited |
| L1RewardManager | unknown | ethereum | n/a | [`0xbf11b5a0d7adeb5c1f2f3dbb85169594aa90c467`](./contracts/ethereum-1/0xbf11b5a0d7adeb5c1f2f3dbb85169594aa90c467/) | ⚠️ Unaudited |
| LibBeaconchainContract | unknown | ethereum | n/a | [`0xa704b16ef5a05ccb88734d57f559e80187e79a8e`](./contracts/ethereum-1/0xa704b16ef5a05ccb88734d57f559e80187e79a8e/) | ⚠️ Unaudited |
| Lock | unknown | ethereum | n/a | [`0x1b6ec227cebec25118270efbb4b67642fc29965e`](./contracts/ethereum-1/0x1b6ec227cebec25118270efbb4b67642fc29965e/) | ⚠️ Unaudited |
| Multisig | governance | ethereum | n/a | [`0xa303c435563a4544a84e26501f4666346ff73a0d`](./contracts/ethereum-1/0xa303c435563a4544a84e26501f4666346ff73a0d/) | ⚠️ Unaudited |
| NoImplementation | unknown | ethereum | n/a | [`0xc143da0fbab94198361147f54b444202f84c30ef`](./contracts/ethereum-1/0xc143da0fbab94198361147f54b444202f84c30ef/) | ⚠️ Unaudited |
| NonRestakingWithdrawalCredentialsFactory | operational_periphery | ethereum | n/a | [`0xa766b79c25a8ab4354bf2351c6716baced48ea36`](./contracts/ethereum-1/0xa766b79c25a8ab4354bf2351c6716baced48ea36/) | ⚠️ Unaudited |
| OperationsCoordinator | unknown | ethereum | n/a | 3 deployments: ethereum [`0x3fee92765f5cf8f9909a3c89f4907ea5e1cd9bf7`](./contracts/ethereum-1/0x3fee92765f5cf8f9909a3c89f4907ea5e1cd9bf7/); ethereum `0xb0c420f623bc6bee71463d968aa139ef6eb882b0`; ethereum `0xe6d798165a32f37927af20d7ccb1f80fb731a3c0` | ⚠️ Unaudited |
| pufETHAdapter | adapter | ethereum | n/a | [`0xa4931a9f9aaf79057334371d6f62164743f97b18`](./contracts/ethereum-1/0xa4931a9f9aaf79057334371d6f62164743f97b18/) | ⚠️ Unaudited |
| PUFFER | unknown | ethereum | n/a | [`0x4d1c297d39c5c1277964d0e3f8aa901493664530`](./contracts/ethereum-1/0x4d1c297d39c5c1277964d0e3f8aa901493664530/) | ⚠️ Unaudited |
| PUFFERAdapter | adapter | ethereum | n/a | [`0x3ea9bb9fcdcc1c37cb09175aecdb488a97edd83f`](./contracts/ethereum-1/0x3ea9bb9fcdcc1c37cb09175aecdb488a97edd83f/) | ⚠️ Unaudited |
| PufferDepositor | unknown | ethereum | n/a | [`0x7276925e42f9c4054afa2fad80fa79520c453d6a`](./contracts/ethereum-1/0x7276925e42f9c4054afa2fad80fa79520c453d6a/) | ⚠️ Unaudited |
| PufferDepositorV2 | unknown | ethereum | n/a | 2 deployments: ethereum [`0x55f4d6acf015c878a88c8cd08a9d74ea0d40a304`](./contracts/ethereum-1/0x55f4d6acf015c878a88c8cd08a9d74ea0d40a304/); ethereum `0x8c9517a9e99c74cd072a118d3dc6b4f3217f8b9b` | ⚠️ Unaudited |
| PufferModule | unknown | ethereum | n/a | 4 deployments: ethereum [`0x0c38016881a2e32c7c7cb67b23460cd1f9c50e41`](./contracts/ethereum-1/0x0c38016881a2e32c7c7cb67b23460cd1f9c50e41/); ethereum `0x181cdaf63623819d2da7f3dc83d0996402875075`; ethereum `0x7f9eb5982388a4683ccab27a50207cb9e76c2fcc`; ethereum `0xbb55ea1d1432a58dc941a24404a616b551f962b3` | ⚠️ Unaudited |
| PufferModuleManager | unknown | ethereum | n/a | 6 deployments: ethereum [`0x07df6fa1b78a64dc2c97ea0bf77c227d9655a9a3`](./contracts/ethereum-1/0x07df6fa1b78a64dc2c97ea0bf77c227d9655a9a3/); ethereum `0x2c1e236434d7dde1b12a9d97be3a4f77276b1a83`; ethereum `0x441b17c449d54e565e11f3568835b067ec4b7ab3`; ethereum `0x6f0694f8fb659213d70c22654be60ac178d481ee`; ethereum `0x7579ebe17a5c4522cc7790da600b04efc9ebd1a2`; ethereum `0x9d1374a7427995f5f01c4cbb01374fe92c70b8fa` | ⚠️ Unaudited |
| PufferModuleManager | unknown | ethereum | n/a | 2 deployments: ethereum [`0x9c713e108ad3f791c1a13b2b29893a26f4f5d042`](./contracts/ethereum-1/0x9c713e108ad3f791c1a13b2b29893a26f4f5d042/); ethereum `0x9e1e4fcb49931df5743e659ad910d331735c3860` | ⚠️ Unaudited |
| PufferOracleV2 | unknown | ethereum | n/a | 4 deployments: ethereum [`0x0be2ae0edbebb517541df217ef0074fc9a9e994f`](./contracts/ethereum-1/0x0be2ae0edbebb517541df217ef0074fc9a9e994f/); ethereum `0x785a54316af8cb61b16a82a3f60c08a18425fa86`; ethereum `0x8efd1dc43ad073232f3e2924e22f173879119489`; ethereum `0xc0613d300b84a5a610d72c38b96c3d71ac85ec97` | ⚠️ Unaudited |
| PufferProtocol | unknown | ethereum | n/a | 2 deployments: ethereum [`0xd05edf0bc5c2c960a7eb5485c8f965c151df2b00`](./contracts/ethereum-1/0xd05edf0bc5c2c960a7eb5485c8f965c151df2b00/); ethereum `0xf7b6b32492c2e13799d921e84202450131bd238b` | ⚠️ Unaudited |
| PufferProtocol | unknown | ethereum | n/a | [`0xdeb6e7ed2b0e6b8f8be7fb3603bbc2807e478b5d`](./contracts/ethereum-1/0xdeb6e7ed2b0e6b8f8be7fb3603bbc2807e478b5d/) | ⚠️ Unaudited |
| PufferRevenueDepositor | unknown | ethereum | n/a | [`0xd7b4a10ece470208661f111f3546f09693a62d3e`](./contracts/ethereum-1/0xd7b4a10ece470208661f111f3546f09693a62d3e/) | ⚠️ Unaudited |
| PufferVault | unknown | ethereum | n/a | [`0x39ca0a6438b6050ea2ac909ba65920c7451305c1`](./contracts/ethereum-1/0x39ca0a6438b6050ea2ac909ba65920c7451305c1/) | ⚠️ Unaudited |
| PufferVaultV2 | unknown | ethereum | n/a | 3 deployments: ethereum [`0x7c93edab7326e5ff8d5b89b13e3681216ab409b6`](./contracts/ethereum-1/0x7c93edab7326e5ff8d5b89b13e3681216ab409b6/); ethereum `0x976061d4067476d93f77444827fa7c1717881398`; ethereum `0xcd2c0836d3eae00891415971c22583e55bbc341f` | ⚠️ Unaudited |
| PufferVaultV3 | unknown | ethereum | n/a | [`0x17d5f2803d9f922fa9c3a77849962df0d19e6674`](./contracts/ethereum-1/0x17d5f2803d9f922fa9c3a77849962df0d19e6674/) | ⚠️ Unaudited |
| PufferVaultV4 | unknown | ethereum | n/a | [`0x88fd4e8ef43c3d53e333f55d46091df834d42495`](./contracts/ethereum-1/0x88fd4e8ef43c3d53e333f55d46091df834d42495/) | ⚠️ Unaudited |
| PufferVaultV5 | unknown | ethereum | n/a | 2 deployments: ethereum [`0x272e3475347f0a0b6fa50022140ee5704a414d72`](./contracts/ethereum-1/0x272e3475347f0a0b6fa50022140ee5704a414d72/); ethereum `0x3b2fdfdefe919dbcce0bc5ac426097d5523b8afa` | ⚠️ Unaudited |
| PufferWithdrawalManager | unknown | ethereum | n/a | [`0x98e1d95b4b3a5a082642e17274d67d62691288f1`](./contracts/ethereum-1/0x98e1d95b4b3a5a082642e17274d67d62691288f1/) | ⚠️ Unaudited |
| PufLocker | unknown | ethereum | n/a | 2 deployments: ethereum [`0x48e8de138c246c14248c94d2d616a2f9eb4590d2`](./contracts/ethereum-1/0x48e8de138c246c14248c94d2d616a2f9eb4590d2/); ethereum `0xfb5cd790d0719f6ef59151af2263f023c2279f69` | ⚠️ Unaudited |
| QuadraticIncreasingEscrow | operational_periphery | ethereum | n/a | [`0xaaab5528aff964ceac972e39c2357c2d503a9196`](./contracts/ethereum-1/0xaaab5528aff964ceac972e39c2357c2d503a9196/) | ⚠️ Unaudited |
| RestakingOperator | unknown | ethereum | n/a | 6 deployments: ethereum [`0x1c64868bc4f23f4b8ace51767a376695da7bcd13`](./contracts/ethereum-1/0x1c64868bc4f23f4b8ace51767a376695da7bcd13/); ethereum `0x2de37b0b6aef362d2e49ffd3aede121e28db3266`; ethereum `0x6e7b53d745362cb6dbcff180437a4f8c351a58a9`; ethereum `0x7a6e576ad6e1059f8e391e97953d592e7a9b5a34`; ethereum `0xa1779844e51f40cb703c775b0c3cca410a72ea47`; ethereum `0xd4106c56b1e1f134e541ae0c27fee148bd40d44d` | ⚠️ Unaudited |
| RestakingOperatorController | unknown | ethereum | n/a | [`0x953b4113716ce71596f7ba6b0e75050c25c493c1`](./contracts/ethereum-1/0x953b4113716ce71596f7ba6b0e75050c25c493c1/) | ⚠️ Unaudited |
| Safe | unknown | ethereum | n/a | [`0xb33f87f2486165c59b735b7c8b3f5489bfca78c4`](./contracts/ethereum-1/0xb33f87f2486165c59b735b7c8b3f5489bfca78c4/) | ⚠️ Unaudited |
| TellerWithMultiAssetSupport | core_logic | ethereum | n/a | 3 deployments: ethereum [`0x0743647a607822781f9d0a639454e76289182f0b`](./contracts/ethereum-1/0x0743647a607822781f9d0a639454e76289182f0b/); ethereum `0x08eb2eccdf6ebd7aba601791f23ec5b5f68a1d53`; ethereum `0x5d3fb47fe7f3f4ce8fe55518f7e4f7d6061b54dd` | ⚠️ Unaudited |
| Timelock | unknown | ethereum | n/a | [`0x3c28b7c7ba1a1f55c9ce66b263b33b204f2126ea`](./contracts/ethereum-1/0x3c28b7c7ba1a1f55c9ce66b263b33b204f2126ea/) | ⚠️ Unaudited |
| ValidatorTicket | unknown | ethereum | n/a | 3 deployments: ethereum [`0x04da36dd7662a196275da4beb90207966e97cdf9`](./contracts/ethereum-1/0x04da36dd7662a196275da4beb90207966e97cdf9/); ethereum `0x2ffd955e7e18b7db12a269081bedfca52c48e65d`; ethereum `0xd88f8315f6c8883f450e5e33e114e880e1bab56f` | ⚠️ Unaudited |
| ValidatorTicket | unknown | ethereum | n/a | 2 deployments: ethereum [`0x12bd568e59f7d1a707e77f18864597ed80c3d8fb`](./contracts/ethereum-1/0x12bd568e59f7d1a707e77f18864597ed80c3d8fb/); ethereum `0xcac0b28431dd76ffd3ba0ade91c30faecd274304` | ⚠️ Unaudited |
| ValidatorTicket | unknown | ethereum | n/a | 2 deployments: ethereum [`0x44aad4a428661d15c3a983d2a8cbbdf62e6308ed`](./contracts/ethereum-1/0x44aad4a428661d15c3a983d2a8cbbdf62e6308ed/); ethereum `0x7d26ad6f6ba9d6ba1de0218ae5e20cd3a273a55a` | ⚠️ Unaudited |
| vlPUFFER | unknown | ethereum | n/a | [`0x1e168460ea0cf3f126ddd3183dc2e376515a5e91`](./contracts/ethereum-1/0x1e168460ea0cf3f126ddd3183dc2e376515a5e91/) | ⚠️ Unaudited |
| VotingEscrow | operational_periphery | ethereum | n/a | [`0xa55ed5808aecdf23ae3782c1443185f5d2363ce7`](./contracts/ethereum-1/0xa55ed5808aecdf23ae3782c1443185f5d2363ce7/) | ⚠️ Unaudited |
| X509Verifier | unknown | ethereum | n/a | [`0xe242c27cd0568feadc46f09811a55f9b24c754a4`](./contracts/ethereum-1/0xe242c27cd0568feadc46f09811a55f9b24c754a4/) | ⚠️ Unaudited |
| XERC20Lockbox | token | ethereum | n/a | [`0xd44e91cfbbaa7b3b259a12a43b38cebf47b463d5`](./contracts/ethereum-1/0xd44e91cfbbaa7b3b259a12a43b38cebf47b463d5/) | ⚠️ Unaudited |

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
| UnnamedContract | unknown | ethereum | n/a | `0x0365db7d51c660e43a40d2c0b13ab868d53ff59f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x05ed83f15e1ac00f88ddaac0964cf21cf62f424b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x24d7e4cf43e5e251bce0370990c56b5cafdeaf45` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x26ddd9535b4c1bbff30fb7212a98562d8b7e70df` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x4819b83d38c2839ab9193099fc7d771cf65281b6` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x58e4313c7e53d962977706bf40d8c098cda9dec3` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x5d94174199a630a8396e749ea31d80edf84ecf16` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x855a60b86765f79b00d5d215b599896d8102ce71` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x95e3c7c56af639cee6a996195ff3612b2238e63c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x9c13d7e06f80758aa0444cdeb1c1b34f1f8b9034` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xa1ba8b48ebdb2227078c2b46e0301e699ca4bf0d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xa318002c5f157cd4481bcbeb83bfd6a9d1ddcb41` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xa95aa41bba980eb7a80e7bff4f6218244c723f57` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xaa6af98c1518289246074df4e485b5ba2bfc4e5c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xb15b4ce4d98b26142e8e72eec19c453dc386f366` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xbc34dab7a7def9537817f298566ced55d6ded68c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xbe0bc9a2cade47b3372fda345fdbf7c3a511b6fd` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xd43be5a192c100d0cc5d60c5982106f15477ab89` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xec7a604ae84c6872935147faf542e5714052656c` | ❓ Unverified |

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
| ethereum | [`0x75351d49229aa42df7febfbea0c7cecc881ad7e7`](./contracts/ethereum-1/0x75351d49229aa42df7febfbea0c7cecc881ad7e7/) | AccessManager | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xa9fb7e2922216debe3fd5e1bbe7591ee446dc21c`](./contracts/ethereum-1/0xa9fb7e2922216debe3fd5e1bbe7591ee446dc21c/) | AccountantWithRateProviders | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1565e55b63675c703fcc3778bd33ea97f7be882f`](./contracts/ethereum-1/0x1565e55b63675c703fcc3778bd33ea97f7be882f/) | AVSContractsRegistry | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x170d847a8320f3b6a77ee15b0cae430e3ec933a0`](./contracts/ethereum-1/0x170d847a8320f3b6a77ee15b0cae430e3ec933a0/) | BoringVault | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xf88691cd8bf1293cca2d36d578dad70342e7051a`](./contracts/ethereum-1/0xf88691cd8bf1293cca2d36d578dad70342e7051a/) | CarrotVesting | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x8bcdf6291f251cf8ecf5ac06bfc4a2b02ecc26eb`](./contracts/ethereum-1/0x8bcdf6291f251cf8ecf5ac06bfc4a2b02ecc26eb/) | Clock | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x5dea8e499b05de8f86e7521f039770268055b23f`](./contracts/ethereum-1/0x5dea8e499b05de8f86e7521f039770268055b23f/) | DAO | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1d03e4bcc928795b1eeac1205fa9ddc4a3241d95`](./contracts/ethereum-1/0x1d03e4bcc928795b1eeac1205fa9ddc4a3241d95/) | EnclaveVerifier | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xd9c2d314e29f1940d2a65a691881f0950fe4a455`](./contracts/ethereum-1/0xd9c2d314e29f1940d2a65a691881f0950fe4a455/) | ExitQueue | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x27ef0bc5eaa61dc6e7d08f17eb00de7d94398a25`](./contracts/ethereum-1/0x27ef0bc5eaa61dc6e7d08f17eb00de7d94398a25/) | GaugeRegistry | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x5e9a0ea50a0028fb80c0e2cf54da323495ee4d5e`](./contracts/ethereum-1/0x5e9a0ea50a0028fb80c0e2cf54da323495ee4d5e/) | InstitutionalFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x358a7d0028070533a9e000616aa6656be7a32cc7`](./contracts/ethereum-1/0x358a7d0028070533a9e000616aa6656be7a32cc7/) | InstitutionalVault | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x157788cc028ac6405bd406f2d1e0a8a22b3cf17b`](./contracts/ethereum-1/0x157788cc028ac6405bd406f2d1e0a8a22b3cf17b/) | L1RewardManager | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xbf11b5a0d7adeb5c1f2f3dbb85169594aa90c467`](./contracts/ethereum-1/0xbf11b5a0d7adeb5c1f2f3dbb85169594aa90c467/) | L1RewardManager | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xa704b16ef5a05ccb88734d57f559e80187e79a8e`](./contracts/ethereum-1/0xa704b16ef5a05ccb88734d57f559e80187e79a8e/) | LibBeaconchainContract | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1b6ec227cebec25118270efbb4b67642fc29965e`](./contracts/ethereum-1/0x1b6ec227cebec25118270efbb4b67642fc29965e/) | Lock | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xa303c435563a4544a84e26501f4666346ff73a0d`](./contracts/ethereum-1/0xa303c435563a4544a84e26501f4666346ff73a0d/) | Multisig | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xc143da0fbab94198361147f54b444202f84c30ef`](./contracts/ethereum-1/0xc143da0fbab94198361147f54b444202f84c30ef/) | NoImplementation | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xa766b79c25a8ab4354bf2351c6716baced48ea36`](./contracts/ethereum-1/0xa766b79c25a8ab4354bf2351c6716baced48ea36/) | NonRestakingWithdrawalCredentialsFactory | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x3fee92765f5cf8f9909a3c89f4907ea5e1cd9bf7`](./contracts/ethereum-1/0x3fee92765f5cf8f9909a3c89f4907ea5e1cd9bf7/) | OperationsCoordinator | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xa4931a9f9aaf79057334371d6f62164743f97b18`](./contracts/ethereum-1/0xa4931a9f9aaf79057334371d6f62164743f97b18/) | pufETHAdapter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x4d1c297d39c5c1277964d0e3f8aa901493664530`](./contracts/ethereum-1/0x4d1c297d39c5c1277964d0e3f8aa901493664530/) | PUFFER | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x3ea9bb9fcdcc1c37cb09175aecdb488a97edd83f`](./contracts/ethereum-1/0x3ea9bb9fcdcc1c37cb09175aecdb488a97edd83f/) | PUFFERAdapter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x7276925e42f9c4054afa2fad80fa79520c453d6a`](./contracts/ethereum-1/0x7276925e42f9c4054afa2fad80fa79520c453d6a/) | PufferDepositor | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x55f4d6acf015c878a88c8cd08a9d74ea0d40a304`](./contracts/ethereum-1/0x55f4d6acf015c878a88c8cd08a9d74ea0d40a304/) | PufferDepositorV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0c38016881a2e32c7c7cb67b23460cd1f9c50e41`](./contracts/ethereum-1/0x0c38016881a2e32c7c7cb67b23460cd1f9c50e41/) | PufferModule | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x07df6fa1b78a64dc2c97ea0bf77c227d9655a9a3`](./contracts/ethereum-1/0x07df6fa1b78a64dc2c97ea0bf77c227d9655a9a3/) | PufferModuleManager | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x9c713e108ad3f791c1a13b2b29893a26f4f5d042`](./contracts/ethereum-1/0x9c713e108ad3f791c1a13b2b29893a26f4f5d042/) | PufferModuleManager | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0be2ae0edbebb517541df217ef0074fc9a9e994f`](./contracts/ethereum-1/0x0be2ae0edbebb517541df217ef0074fc9a9e994f/) | PufferOracleV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xd05edf0bc5c2c960a7eb5485c8f965c151df2b00`](./contracts/ethereum-1/0xd05edf0bc5c2c960a7eb5485c8f965c151df2b00/) | PufferProtocol | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xdeb6e7ed2b0e6b8f8be7fb3603bbc2807e478b5d`](./contracts/ethereum-1/0xdeb6e7ed2b0e6b8f8be7fb3603bbc2807e478b5d/) | PufferProtocol | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xd7b4a10ece470208661f111f3546f09693a62d3e`](./contracts/ethereum-1/0xd7b4a10ece470208661f111f3546f09693a62d3e/) | PufferRevenueDepositor | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x39ca0a6438b6050ea2ac909ba65920c7451305c1`](./contracts/ethereum-1/0x39ca0a6438b6050ea2ac909ba65920c7451305c1/) | PufferVault | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x7c93edab7326e5ff8d5b89b13e3681216ab409b6`](./contracts/ethereum-1/0x7c93edab7326e5ff8d5b89b13e3681216ab409b6/) | PufferVaultV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x17d5f2803d9f922fa9c3a77849962df0d19e6674`](./contracts/ethereum-1/0x17d5f2803d9f922fa9c3a77849962df0d19e6674/) | PufferVaultV3 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x88fd4e8ef43c3d53e333f55d46091df834d42495`](./contracts/ethereum-1/0x88fd4e8ef43c3d53e333f55d46091df834d42495/) | PufferVaultV4 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x272e3475347f0a0b6fa50022140ee5704a414d72`](./contracts/ethereum-1/0x272e3475347f0a0b6fa50022140ee5704a414d72/) | PufferVaultV5 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x98e1d95b4b3a5a082642e17274d67d62691288f1`](./contracts/ethereum-1/0x98e1d95b4b3a5a082642e17274d67d62691288f1/) | PufferWithdrawalManager | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x48e8de138c246c14248c94d2d616a2f9eb4590d2`](./contracts/ethereum-1/0x48e8de138c246c14248c94d2d616a2f9eb4590d2/) | PufLocker | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xaaab5528aff964ceac972e39c2357c2d503a9196`](./contracts/ethereum-1/0xaaab5528aff964ceac972e39c2357c2d503a9196/) | QuadraticIncreasingEscrow | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1c64868bc4f23f4b8ace51767a376695da7bcd13`](./contracts/ethereum-1/0x1c64868bc4f23f4b8ace51767a376695da7bcd13/) | RestakingOperator | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x953b4113716ce71596f7ba6b0e75050c25c493c1`](./contracts/ethereum-1/0x953b4113716ce71596f7ba6b0e75050c25c493c1/) | RestakingOperatorController | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0743647a607822781f9d0a639454e76289182f0b`](./contracts/ethereum-1/0x0743647a607822781f9d0a639454e76289182f0b/) | TellerWithMultiAssetSupport | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x3c28b7c7ba1a1f55c9ce66b263b33b204f2126ea`](./contracts/ethereum-1/0x3c28b7c7ba1a1f55c9ce66b263b33b204f2126ea/) | Timelock | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x04da36dd7662a196275da4beb90207966e97cdf9`](./contracts/ethereum-1/0x04da36dd7662a196275da4beb90207966e97cdf9/) | ValidatorTicket | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x12bd568e59f7d1a707e77f18864597ed80c3d8fb`](./contracts/ethereum-1/0x12bd568e59f7d1a707e77f18864597ed80c3d8fb/) | ValidatorTicket | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x44aad4a428661d15c3a983d2a8cbbdf62e6308ed`](./contracts/ethereum-1/0x44aad4a428661d15c3a983d2a8cbbdf62e6308ed/) | ValidatorTicket | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1e168460ea0cf3f126ddd3183dc2e376515a5e91`](./contracts/ethereum-1/0x1e168460ea0cf3f126ddd3183dc2e376515a5e91/) | vlPUFFER | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xa55ed5808aecdf23ae3782c1443185f5d2363ce7`](./contracts/ethereum-1/0xa55ed5808aecdf23ae3782c1443185f5d2363ce7/) | VotingEscrow | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xe242c27cd0568feadc46f09811a55f9b24c754a4`](./contracts/ethereum-1/0xe242c27cd0568feadc46f09811a55f9b24c754a4/) | X509Verifier | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xd44e91cfbbaa7b3b259a12a43b38cebf47b463d5`](./contracts/ethereum-1/0xd44e91cfbbaa7b3b259a12a43b38cebf47b463d5/) | XERC20Lockbox | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

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
