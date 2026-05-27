# Agentic Audit Brief: Puffer Finance

## Project Overview

- Project: Puffer Finance (`puffer-finance`)
- Website: [https://puffer.fi](https://puffer.fi)
- Lifecycle: active (Tier 0, 96.8% below peak)
- Generated: 2026-05-27T16:54:59.437Z
- Pipeline run: v2-pipeline-2026-05-27-de70dc-1ce2
- Chains: ethereum
- Contract surface: 65 unique implementations (119 raw deployments)
- DeFi Llama TVL: $59,113,534.71
- On-chain TVL (included contracts): $225,128,007.38
- TVL by chain: Ethereum $225,128,007.38

## Project Description

Puffer Finance is a liquid restaking protocol that allows users to stake ETH and earn rewards while maintaining liquidity. It also provides infrastructure for restaking operations and yield optimization through vaults and reward management.

### Architecture

Puffer Stake's PufferVaultV5 interacts with Puffer Vaults' BoringVault and AccountantWithRateProviders to manage staked ETH and distribute rewards. Puffer UniFi's BoringVault may share similar infrastructure for restaking operations.

## Audit Coverage Summary

- Verified implementations audited: 16/44 (36.4%)
- Verified + Unaudited implementations: 28
- Verified by bytecode match: 0
- Unverified implementations: 21
- Unique implementations: 65
- Raw deployments: 119
- Audits discovered: 4
- Scoreable audits (matched contracts): 4
- ASD (verified + unaudited TVL): $169,155,461.36
- Latest audit: 2024-05 (stale)
- Staleness: 0 fresh, 0 aging, 4 stale, 0 unknown
- Tier 1 coverage: 22.7% (SlowMist)

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| Creed | Tier 2 | 16 | 36.4% | 2024-05 |
| Blocksec | Tier 2 | 11 | 25.0% | 2024-04 |
| Nethermind | Tier 2 | 11 | 25.0% | 2024-04 |
| SlowMist | Tier 1 | 10 | 22.7% | 2024-04 |

## Contract Surface

### ✅ Verified + Audited (16)

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| PufferVaultV2 | core_logic | ethereum | 3 deployments: ethereum [`0x7c93ed...b409b6`](./contracts/ethereum-1/0x7c93edab7326e5ff8d5b89b13e3681216ab409b6/); ethereum `0x976061...881398`; ethereum `0xcd2c08...bc341f` | ✅ Audited |
| AVSContractsRegistry | registry | ethereum | [`0x1565e5...be882f`](./contracts/ethereum-1/0x1565e55b63675c703fcc3778bd33ea97f7be882f/) | ✅ Audited |
| EnclaveVerifier | periphery | ethereum | [`0x1d03e4...241d95`](./contracts/ethereum-1/0x1d03e4bcc928795b1eeac1205fa9ddc4a3241d95/) | ✅ Audited |
| GuardianModule | governance | ethereum | 3 deployments: ethereum [`0x0304a9...513cd0`](./contracts/ethereum-1/0x0304a9462169aa9e77ec4d51b1fa31eb15513cd0/); ethereum `0x19ad0a...fc47bc`; ethereum `0x628b18...a7ccf2` | ✅ Audited |
| LibBeaconchainContract | registry | ethereum | [`0xa704b1...e79a8e`](./contracts/ethereum-1/0xa704b16ef5a05ccb88734d57f559e80187e79a8e/) | ✅ Audited |
| NoImplementation | unknown | ethereum | 2 deployments: ethereum [`0xc143da...4c30ef`](./contracts/ethereum-1/0xc143da0fbab94198361147f54b444202f84c30ef/); ethereum `0xd39f78...08e3f1` | ✅ Audited |
| PufferDepositor | unknown | ethereum | [`0x727692...453d6a`](./contracts/ethereum-1/0x7276925e42f9c4054afa2fad80fa79520c453d6a/) | ✅ Audited |
| PufferDepositorV2 | unknown | ethereum | 2 deployments: ethereum [`0x55f4d6...40a304`](./contracts/ethereum-1/0x55f4d6acf015c878a88c8cd08a9d74ea0d40a304/); ethereum `0x8c9517...7f8b9b` | ✅ Audited |
| PufferModule | unknown | ethereum | 5 deployments: ethereum [`0x0c3801...c50e41`](./contracts/ethereum-1/0x0c38016881a2e32c7c7cb67b23460cd1f9c50e41/); ethereum `0x181cda...875075`; ethereum `0x7f9eb5...6c2fcc`; ethereum `0xbb55ea...f962b3`; ethereum `0xdd38a5...eebb04` | ✅ Audited |
| PufferModuleManager | governance | ethereum | 8 deployments: ethereum [`0x07df6f...55a9a3`](./contracts/ethereum-1/0x07df6fa1b78a64dc2c97ea0bf77c227d9655a9a3/); ethereum `0x2c1e23...6b1a83`; ethereum `0x441b17...4b7ab3`; ethereum `0x6f0694...d481ee`; ethereum `0x7579eb...ebd1a2`; ethereum `0x9c713e...f5d042`; ethereum `0x9d1374...70b8fa`; ethereum `0x9e1e4f...5c3860` | ✅ Audited |
| PufferOracleV2 | operational_periphery | ethereum | 4 deployments: ethereum [`0x0be2ae...9e994f`](./contracts/ethereum-1/0x0be2ae0edbebb517541df217ef0074fc9a9e994f/); ethereum `0x785a54...25fa86`; ethereum `0x8efd1d...119489`; ethereum `0xc0613d...85ec97` | ✅ Audited |
| PufferProtocol | unknown | ethereum | 3 deployments: ethereum [`0xd05edf...df2b00`](./contracts/ethereum-1/0xd05edf0bc5c2c960a7eb5485c8f965c151df2b00/); ethereum `0xdeb6e7...478b5d`; ethereum `0xf7b6b3...bd238b` | ✅ Audited |
| PufferVault | core_logic | ethereum | [`0x39ca0a...1305c1`](./contracts/ethereum-1/0x39ca0a6438b6050ea2ac909ba65920c7451305c1/) | ✅ Audited |
| RestakingOperator | unknown | ethereum | 8 deployments: ethereum [`0x1c6486...7bcd13`](./contracts/ethereum-1/0x1c64868bc4f23f4b8ace51767a376695da7bcd13/); ethereum `0x2de37b...db3266`; ethereum `0x6756b8...824c4b`; ethereum `0x6e7b53...1a58a9`; ethereum `0x7a6e57...9b5a34`; ethereum `0xa17798...72ea47`; ethereum `0xd4106c...40d44d`; ethereum `0xf58566...4ef305` | ✅ Audited |
| Timelock | governance | ethereum | [`0x3c28b7...2126ea`](./contracts/ethereum-1/0x3c28b7c7ba1a1f55c9ce66b263b33b204f2126ea/) | ✅ Audited |
| ValidatorTicket | unknown | ethereum | 7 deployments: ethereum [`0x04da36...97cdf9`](./contracts/ethereum-1/0x04da36dd7662a196275da4beb90207966e97cdf9/); ethereum `0x12bd56...c3d8fb`; ethereum `0x2ffd95...48e65d`; ethereum `0x44aad4...6308ed`; ethereum `0x7d26ad...73a55a`; ethereum `0xcac0b2...274304`; ethereum `0xd88f83...bab56f` | ✅ Audited |

### ⚠️ Verified + Unaudited (28)

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| PufferVaultV5 | core_logic | ethereum | 3 deployments: ethereum [`0x272e34...414d72`](./contracts/ethereum-1/0x272e3475347f0a0b6fa50022140ee5704a414d72/); ethereum `0x3b2fdf...3b8afa`; ethereum `0xd9a442...306a72` | ⚠️ Unaudited |
| PufferVaultV3 | core_logic | ethereum | [`0x17d5f2...9e6674`](./contracts/ethereum-1/0x17d5f2803d9f922fa9c3a77849962df0d19e6674/) | ⚠️ Unaudited |
| PufferVaultV4 | core_logic | ethereum | [`0x88fd4e...d42495`](./contracts/ethereum-1/0x88fd4e8ef43c3d53e333f55d46091df834d42495/) | ⚠️ Unaudited |
| BoringVault | core_logic | ethereum | 2 deployments: ethereum [`0x170d84...c933a0`](./contracts/ethereum-1/0x170d847a8320f3b6a77ee15b0cae430e3ec933a0/); ethereum `0x196ead...bd3dcc` | ⚠️ Unaudited |
| AccessManager | governance | ethereum | 4 deployments: ethereum [`0x75351d...1ad7e7`](./contracts/ethereum-1/0x75351d49229aa42df7febfbea0c7cecc881ad7e7/); ethereum `0x8c1686...ebee11`; ethereum `0xaf1ac3...5f7573`; ethereum `0xe9a945...156bd1` | ⚠️ Unaudited |
| AccountantWithRateProviders | operational_periphery | ethereum | 3 deployments: ethereum [`0x2afb28...0a35f7`](./contracts/ethereum-1/0x2afb28b0561d99b5e00829ec2ef54946a00a35f7/); ethereum `0xa9fb7e...6dc21c`; ethereum `0xe0bdb7...b7e3be` | ⚠️ Unaudited |
| CarrotVesting | operational_periphery | ethereum | [`0xff00c2...cbc82b`](./contracts/ethereum-1/0xff00c2dd07d811bea632cb9f9e4919dd6fcbc82b/) | ⚠️ Unaudited |
| ERC1967Proxy | proxy | ethereum | 2 deployments: ethereum [`0x58b56f...64c302`](./contracts/ethereum-1/0x58b56fe5aca76dd630f48091f9d817bda964c302/); ethereum `0x716b75...84604e` | ⚠️ Unaudited |
| GaugeRegistry | operational_periphery | ethereum | [`0x27ef0b...398a25`](./contracts/ethereum-1/0x27ef0bc5eaa61dc6e7d08f17eb00de7d94398a25/) | ⚠️ Unaudited |
| InstitutionalFactory | registry | ethereum | [`0x5e9a0e...ee4d5e`](./contracts/ethereum-1/0x5e9a0ea50a0028fb80c0e2cf54da323495ee4d5e/) | ⚠️ Unaudited |
| InstitutionalVault | core_logic | ethereum | 2 deployments: ethereum [`0x358a7d...a32cc7`](./contracts/ethereum-1/0x358a7d0028070533a9e000616aa6656be7a32cc7/); ethereum `0xb6ffcc...198b9c` | ⚠️ Unaudited |
| L1RewardManager | governance | ethereum | 2 deployments: ethereum [`0x157788...3cf17b`](./contracts/ethereum-1/0x157788cc028ac6405bd406f2d1e0a8a22b3cf17b/); ethereum `0xbf11b5...90c467` | ⚠️ Unaudited |
| NonRestakingWithdrawalCredentialsFactory | operational_periphery | ethereum | [`0xa766b7...48ea36`](./contracts/ethereum-1/0xa766b79c25a8ab4354bf2351c6716baced48ea36/) | ⚠️ Unaudited |
| OperationsCoordinator | unknown | ethereum | 3 deployments: ethereum [`0x3fee92...cd9bf7`](./contracts/ethereum-1/0x3fee92765f5cf8f9909a3c89f4907ea5e1cd9bf7/); ethereum `0xb0c420...b882b0`; ethereum `0xe6d798...31a3c0` | ⚠️ Unaudited |
| PUFFER | unknown | ethereum | [`0x4d1c29...664530`](./contracts/ethereum-1/0x4d1c297d39c5c1277964d0e3f8aa901493664530/) | ⚠️ Unaudited |
| PufferL2Depositor | unknown | ethereum | [`0x3436e0...6e0259`](./contracts/ethereum-1/0x3436e0b85cd929929f5802e792cfe282166e0259/) | ⚠️ Unaudited |
| PufferRevenueDepositor | unknown | ethereum | [`0xd7b4a1...a62d3e`](./contracts/ethereum-1/0xd7b4a10ece470208661f111f3546f09693a62d3e/) | ⚠️ Unaudited |
| PufferWithdrawalManager | operational_periphery | ethereum | [`0x98e1d9...1288f1`](./contracts/ethereum-1/0x98e1d95b4b3a5a082642e17274d67d62691288f1/) | ⚠️ Unaudited |
| PufLocker | unknown | ethereum | 2 deployments: ethereum [`0x48e8de...4590d2`](./contracts/ethereum-1/0x48e8de138c246c14248c94d2d616a2f9eb4590d2/); ethereum `0xfb5cd7...279f69` | ⚠️ Unaudited |
| RestakingOperatorController | governance | ethereum | [`0x953b41...c493c1`](./contracts/ethereum-1/0x953b4113716ce71596f7ba6b0e75050c25c493c1/) | ⚠️ Unaudited |
| SOON | unknown | ethereum | [`0xe7cf38...20b649`](./contracts/ethereum-1/0xe7cf38728db67e5d78a7855000fbec177b20b649/) | ⚠️ Unaudited |
| UniFiAVSManager | governance | ethereum | 3 deployments: ethereum [`0x4757cf...e397e3`](./contracts/ethereum-1/0x4757cf69c75bbacb5d1aaa01d983513dd3e397e3/); ethereum `0x517cc0...5bddad`; ethereum `0xe9eb01...a1c52a` | ⚠️ Unaudited |
| UpgradeableBeacon | registry | ethereum | [`0x178831...036184`](./contracts/ethereum-1/0x17883176a52c52a5579da73e2207045cfa036184/) | ⚠️ Unaudited |
| ValidatorTicketPricer | operational_periphery | ethereum | [`0x9830ad...4a53c3`](./contracts/ethereum-1/0x9830ad1bd5cf73640e253edf97dee3791c4a53c3/) | ⚠️ Unaudited |
| vlPUFFER | unknown | ethereum | [`0x1e1684...5a5e91`](./contracts/ethereum-1/0x1e168460ea0cf3f126ddd3183dc2e376515a5e91/) | ⚠️ Unaudited |
| X509Verifier | periphery | ethereum | [`0xe242c2...c754a4`](./contracts/ethereum-1/0xe242c27cd0568feadc46f09811a55f9b24c754a4/) | ⚠️ Unaudited |
| XERC20Lockbox | token | ethereum | 3 deployments: ethereum [`0xb19a79...4a0967`](./contracts/ethereum-1/0xb19a79d3d9f6d01e338b525ae2a9f5bf654a0967/); ethereum `0xd44e91...b463d5`; ethereum `0xf78461...77de48` | ⚠️ Unaudited |
| xPufETH | unknown | ethereum | 2 deployments: ethereum [`0x851040...228942`](./contracts/ethereum-1/0x851040181734feec147c9ff878c921fdd7228942/); ethereum `0xb472be...a65db0` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (21)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| UnnamedContract | unknown | ethereum | `0x0365db...3ff59f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x05ed83...2f424b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x24d7e4...deaf45` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x26ddd9...7e70df` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x4819b8...5281b6` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x55202a...95945e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x58e431...a9dec3` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x5d9417...4ecf16` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x855a60...02ce71` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x95e3c7...38e63c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x9c13d7...8b9034` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xa1ba8b...a4bf0d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xa31800...ddcb41` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xa95aa4...723f57` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xaa6af9...fc4e5c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xb15b4c...86f366` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xbc34da...ded68c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xbe0bc9...11b6fd` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xd43be5...77ab89` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xec7a60...52656c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xf00ed0...220aca` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [Blocksec_audit_April2024.pdf](https://github.com/PufferFinance/PufferPool/blob/master/docs/audits/Blocksec_audit_April2024.pdf) | Blocksec | Audit | 2024-04 | stale | Direct | contract_name | 45 | high |
| [Creed_Puffer_Finance_Audit_May2024.pdf](https://github.com/PufferFinance/PufferPool/blob/master/docs/audits/Creed_Puffer_Finance_Audit_May2024.pdf) | Creed | Audit | 2024-05 | stale | Direct | contract_name | 51 | high |
| [Nethermind_PufferProtocol_NM0202_April2024.pdf](https://github.com/PufferFinance/PufferPool/blob/master/docs/audits/Nethermind_PufferProtocol_NM0202_April2024.pdf) | Nethermind | Audit | 2024-04 | stale | Direct | contract_name | 45 | high |
| [SlowMist_PufferFinance_Phase2.pdf](https://github.com/PufferFinance/PufferPool/blob/master/docs/audits/SlowMist_PufferFinance_Phase2.pdf) | SlowMist | Audit | 2024-04 | stale | Direct | contract_name | 44 | high |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | [`0x272e34...414d72`](./contracts/ethereum-1/0x272e3475347f0a0b6fa50022140ee5704a414d72/) | PufferVaultV5 | core_logic | $57,112,783.25 | Verified native implementation with $57,112,783.25 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x17d5f2...9e6674`](./contracts/ethereum-1/0x17d5f2803d9f922fa9c3a77849962df0d19e6674/) | PufferVaultV3 | core_logic | $55,972,546.02 | Verified native implementation with $55,972,546.02 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x88fd4e...d42495`](./contracts/ethereum-1/0x88fd4e8ef43c3d53e333f55d46091df834d42495/) | PufferVaultV4 | core_logic | $55,972,546.02 | Verified native implementation with $55,972,546.02 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x170d84...c933a0`](./contracts/ethereum-1/0x170d847a8320f3b6a77ee15b0cae430e3ec933a0/) | BoringVault | core_logic | $97,586.08 | Verified native implementation with $97,586.08 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x2afb28...0a35f7`](./contracts/ethereum-1/0x2afb28b0561d99b5e00829ec2ef54946a00a35f7/) | AccountantWithRateProviders | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x27ef0b...398a25`](./contracts/ethereum-1/0x27ef0bc5eaa61dc6e7d08f17eb00de7d94398a25/) | GaugeRegistry | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x5e9a0e...ee4d5e`](./contracts/ethereum-1/0x5e9a0ea50a0028fb80c0e2cf54da323495ee4d5e/) | InstitutionalFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x358a7d...a32cc7`](./contracts/ethereum-1/0x358a7d0028070533a9e000616aa6656be7a32cc7/) | InstitutionalVault | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xa766b7...48ea36`](./contracts/ethereum-1/0xa766b79c25a8ab4354bf2351c6716baced48ea36/) | NonRestakingWithdrawalCredentialsFactory | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x3fee92...cd9bf7`](./contracts/ethereum-1/0x3fee92765f5cf8f9909a3c89f4907ea5e1cd9bf7/) | OperationsCoordinator | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x4d1c29...664530`](./contracts/ethereum-1/0x4d1c297d39c5c1277964d0e3f8aa901493664530/) | PUFFER | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x3436e0...6e0259`](./contracts/ethereum-1/0x3436e0b85cd929929f5802e792cfe282166e0259/) | PufferL2Depositor | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xd7b4a1...a62d3e`](./contracts/ethereum-1/0xd7b4a10ece470208661f111f3546f09693a62d3e/) | PufferRevenueDepositor | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x98e1d9...1288f1`](./contracts/ethereum-1/0x98e1d95b4b3a5a082642e17274d67d62691288f1/) | PufferWithdrawalManager | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x953b41...c493c1`](./contracts/ethereum-1/0x953b4113716ce71596f7ba6b0e75050c25c493c1/) | RestakingOperatorController | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xe7cf38...20b649`](./contracts/ethereum-1/0xe7cf38728db67e5d78a7855000fbec177b20b649/) | SOON | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x4757cf...e397e3`](./contracts/ethereum-1/0x4757cf69c75bbacb5d1aaa01d983513dd3e397e3/) | UniFiAVSManager | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x9830ad...4a53c3`](./contracts/ethereum-1/0x9830ad1bd5cf73640e253edf97dee3791c4a53c3/) | ValidatorTicketPricer | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1e1684...5a5e91`](./contracts/ethereum-1/0x1e168460ea0cf3f126ddd3183dc2e376515a5e91/) | vlPUFFER | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xe242c2...c754a4`](./contracts/ethereum-1/0xe242c27cd0568feadc46f09811a55f9b24c754a4/) | X509Verifier | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x851040...228942`](./contracts/ethereum-1/0x851040181734feec147c9ff878c921fdd7228942/) | xPufETH | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 45 |
| upstream | 1 |
| standard_library | 6 |
| needs_review | 13 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=4
- Match method counts: extraction_exact=185

Fork inheritance lineage and inherited audits are included when available.
