# Agentic Audit Brief: Benqi

## Project Overview

- Project: Benqi (`benqi`)
- Website: [https://benqi.fi](https://benqi.fi)
- Lifecycle: unknown
- Generated: 2026-07-04T14:53:06.055Z
- Pipeline run: v2-2026-07-03-89943a
- Chains: avalanche
- Contract surface: 39 unique implementations (39 raw deployments)
- DeFi Llama TVL: $237,080,773.37
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Lending. Structurally: 38 project-authored contract(s) across 1 chain(s); 6 ERC20 tokens, 6 Chainlink feeds; role-gated via AccessControl; upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 3 functional families. Its contracts share 23 common project-authored base contract(s) (owned, contextupgradeable, qitokeninterface). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 39; live-surface contracts included: 39 (36 live, 3 unknown).
- Excluded by liveness: 0 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 12/32 (37.5%)
- Deployed-live implementations: 36 of 39 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 12/39
- Verified + Unaudited implementations: 27
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 39
- Raw deployments: 39
- Audits discovered: 9 (9 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 8
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2025-05 (aging)
- Audit staleness (calendar age): 0 fresh, 2 aging, 6 stale, 1 unknown
- Coverage code basis (deployed vs audited code): 12 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: 12.5% (Code4rena, Cyfrin)

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| Halborn | Tier 2 | 8 | 20.5% | 2022-02 |
| unknown | Tier 2 | 4 | 10.3% | 2024-06 |
| Code4rena | Tier 1 | 3 | 7.7% | 2023-07 |
| Zellic | Tier 2 | 2 | 5.1% | 2025-05 |
| Cyfrin | Tier 1 | 1 | 2.6% | 2024-12 |
| Grip | Tier 2 | 1 | 2.6% | 2022-04 |

## Contract Surface

### ✅ Verified + Audited (12)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| BenqiDualOracle | unknown | avalanche | n/a | [`0x0594dc26f835f72b343cb9838cf97a4667a601bd`](./contracts/avalanche-43114/0x0594dc26f835f72b343cb9838cf97a4667a601bd/) | ✅ Audited |
| BenqiPriceOracle | unknown | avalanche | n/a | [`0x1dad3320425eed4473fda17cca7de320b3680895`](./contracts/avalanche-43114/0x1dad3320425eed4473fda17cca7de320b3680895/) | ✅ Audited |
| Comptroller | unknown | avalanche | n/a | [`0x179c3c9105f7f99038c3dafe89d3e24b4569d7ae`](./contracts/avalanche-43114/0x179c3c9105f7f99038c3dafe89d3e24b4569d7ae/) | ✅ Audited |
| Ignite | unknown | avalanche | n/a | [`0x5e257aad875b7a38d5904088e71260bc3ef63497`](./contracts/avalanche-43114/0x5e257aad875b7a38d5904088e71260bc3ef63497/) | ✅ Audited |
| JumpRateModel | unknown | avalanche | n/a | [`0x363637833d110f86e47311e4c54e520982721f3b`](./contracts/avalanche-43114/0x363637833d110f86e47311e4c54e520982721f3b/) | ✅ Audited |
| Lens | unknown | avalanche | n/a | [`0x87457bf0451914bf62c6c1bc2dc9eb1a8076eb8e`](./contracts/avalanche-43114/0x87457bf0451914bf62c6c1bc2dc9eb1a8076eb8e/) | ✅ Audited |
| Maximillion | unknown | avalanche | n/a | [`0x10338ee9417260b486a4d1452ee2496338b05348`](./contracts/avalanche-43114/0x10338ee9417260b486a4d1452ee2496338b05348/) | ✅ Audited |
| QiAvax | unknown | avalanche | n/a | [`0x5c0401e81bc07ca70fad469b451682c0d747ef1c`](./contracts/avalanche-43114/0x5c0401e81bc07ca70fad469b451682c0d747ef1c/) | ✅ Audited |
| QiErc20Delegator | unknown | avalanche | n/a | [`0x0ffac5aae14e28e79c5ccc7a335d8c70ee458a3a`](./contracts/avalanche-43114/0x0ffac5aae14e28e79c5ccc7a335d8c70ee458a3a/) | ✅ Audited |
| QiErc20Delegator | unknown | avalanche | n/a | [`0x334ad834cd4481bb02d09615e7c11a00579a7909`](./contracts/avalanche-43114/0x334ad834cd4481bb02d09615e7c11a00579a7909/) | ✅ Audited |
| RewardLens | unknown | avalanche | n/a | [`0x6eb2c357f4899487c796dfd73acbf07ad50344f2`](./contracts/avalanche-43114/0x6eb2c357f4899487c796dfd73acbf07ad50344f2/) | ✅ Audited |
| StakedAvax | unknown | avalanche | n/a | [`0x0ce7f620eb645a4fbf688a1c1937bc6cb0cbdd29`](./contracts/avalanche-43114/0x0ce7f620eb645a4fbf688a1c1937bc6cb0cbdd29/) | ✅ Audited |

### ⚠️ Verified + Unaudited (27)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| AccessControlledOCR2Aggregator | unknown | avalanche | n/a | [`0x2c04457b00b09f30d3bc866e3d14493a8069e7d7`](./contracts/avalanche-43114/0x2c04457b00b09f30d3bc866e3d14493a8069e7d7/) | ⚠️ Unaudited |
| AccessControlledOffchainAggregator | unknown | avalanche | n/a | [`0x0a58227e7d7a8175e4f5f8a0d32968d153b9ce59`](./contracts/avalanche-43114/0x0a58227e7d7a8175e4f5f8a0d32968d153b9ce59/) | ⚠️ Unaudited |
| ConfirmedTransactionModule | unknown | avalanche | n/a | [`0xdd16750e11f8adea3e26eca9e89269364c1fa228`](./contracts/avalanche-43114/0xdd16750e11f8adea3e26eca9e89269364c1fa228/) | ⚠️ Unaudited |
| ConnectV2BenqiAvalanche | unknown | avalanche | n/a | [`0xff5a7a16619d3f4c4bdc2fef7af8a9d0b6c35ca8`](./contracts/avalanche-43114/0xff5a7a16619d3f4c4bdc2fef7af8a9d0b6c35ca8/) | ⚠️ Unaudited |
| ConnectV2QiAvalanche | unknown | avalanche | n/a | [`0xac33e98174a897ecf21bd5c6e67696007aa58527`](./contracts/avalanche-43114/0xac33e98174a897ecf21bd5c6e67696007aa58527/) | ⚠️ Unaudited |
| EACAggregatorProxy | unknown | avalanche | n/a | [`0x02d35d3a8ac3e1626d3ee09a78dd87286f5e8e3a`](./contracts/avalanche-43114/0x02d35d3a8ac3e1626d3ee09a78dd87286f5e8e3a/) | ⚠️ Unaudited |
| EdgePushOracle | unknown | avalanche | n/a | [`0x07a4f5e8d15c52210691993b97df8d44686305af`](./contracts/avalanche-43114/0x07a4f5e8d15c52210691993b97df8d44686305af/) | ⚠️ Unaudited |
| GaugeController | unknown | avalanche | n/a | [`0x14593cb3ffe270a72862eb08ceb57bc3d4ddc16c`](./contracts/avalanche-43114/0x14593cb3ffe270a72862eb08ceb57bc3d4ddc16c/) | ⚠️ Unaudited |
| InstaBenqiMappingAvalanche | unknown | avalanche | n/a | [`0xe19fba29ac9baacc1f584aecd9c98b4f6fc58ba6`](./contracts/avalanche-43114/0xe19fba29ac9baacc1f584aecd9c98b4f6fc58ba6/) | ⚠️ Unaudited |
| JoePair | unknown | avalanche | n/a | [`0x2774516897ac629ad3ed9dcac7e375dda78412b9`](./contracts/avalanche-43114/0x2774516897ac629ad3ed9dcac7e375dda78412b9/) | ⚠️ Unaudited |
| MultiSend | unknown | avalanche | n/a | [`0x0462fd9715d22ee4a8109e58588361a0b4a379fe`](./contracts/avalanche-43114/0x0462fd9715d22ee4a8109e58588361a0b4a379fe/) | ⚠️ Unaudited |
| PangolinPair | unknown | avalanche | n/a | [`0xe530dc2095ef5653205cf5ea79f8979a7028065c`](./contracts/avalanche-43114/0xe530dc2095ef5653205cf5ea79f8979a7028065c/) | ⚠️ Unaudited |
| PauseGuardian | unknown | avalanche | n/a | [`0x80bdda5305b26102b3f63331419bef2f16ce458c`](./contracts/avalanche-43114/0x80bdda5305b26102b3f63331419bef2f16ce458c/) | ⚠️ Unaudited |
| PglStakingContract | unknown | avalanche | n/a | [`0x58a2929eadfa4e9577f79ab06a4263e28fadd0bb`](./contracts/avalanche-43114/0x58a2929eadfa4e9577f79ab06a4263e28fadd0bb/) | ⚠️ Unaudited |
| PglStakingContractProxy | unknown | avalanche | n/a | [`0x4074da7841bf5fff121476d6d1c2d39fbeeb9e4a`](./contracts/avalanche-43114/0x4074da7841bf5fff121476d6d1c2d39fbeeb9e4a/) | ⚠️ Unaudited |
| ProxyAdmin | unknown | avalanche | n/a | [`0x2295e1cad2ea081a4a2ed85f59006e6fd42b5a66`](./contracts/avalanche-43114/0x2295e1cad2ea081a4a2ed85f59006e6fd42b5a66/) | ⚠️ Unaudited |
| Qi | unknown | avalanche | n/a | [`0x8729438eb15e2c8b576fcc6aecda6a148776c0f5`](./contracts/avalanche-43114/0x8729438eb15e2c8b576fcc6aecda6a148776c0f5/) | ⚠️ Unaudited |
| QiAvaxHelper | unknown | avalanche | n/a | [`0xcc2de440f9fc5eec73e28373f6bb69643dc804d5`](./contracts/avalanche-43114/0xcc2de440f9fc5eec73e28373f6bb69643dc804d5/) | ⚠️ Unaudited |
| QiTokenSaleDistributor | unknown | avalanche | n/a | [`0x23de2004592b04d594d23c9a928d0552e29d6bea`](./contracts/avalanche-43114/0x23de2004592b04d594d23c9a928d0552e29d6bea/) | ⚠️ Unaudited |
| QiTokenSaleDistributorProxy | unknown | avalanche | n/a | [`0x9037d683c936d55a4eac4ce2488e9c6f55a4ba1c`](./contracts/avalanche-43114/0x9037d683c936d55a4eac4ce2488e9c6f55a4ba1c/) | ⚠️ Unaudited |
| RiskOracle | unknown | avalanche | n/a | [`0x1273f29204fc102bd4620485b13cfe27a794ff32`](./contracts/avalanche-43114/0x1273f29204fc102bd4620485b13cfe27a794ff32/) | ⚠️ Unaudited |
| sAVAXExchangeRateAdapter | unknown | avalanche | n/a | [`0x54b6b49007b684b275d0ebc87c5b201707406de2`](./contracts/avalanche-43114/0x54b6b49007b684b275d0ebc87c5b201707406de2/) | ⚠️ Unaudited |
| StablecoinExchangeRateAdapter | unknown | avalanche | n/a | [`0x26aa437322e44a231b4d7559bc48bf4e6b102bd7`](./contracts/avalanche-43114/0x26aa437322e44a231b4d7559bc48bf4e6b102bd7/) | ⚠️ Unaudited |
| StakedAvaxPriceFeed | unknown | avalanche | n/a | [`0x270fa51d6e593561dd493937a806f65fcda5d075`](./contracts/avalanche-43114/0x270fa51d6e593561dd493937a806f65fcda5d075/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | avalanche | n/a | [`0x09c1e991870cbc01009a4b49397a4f2a127d3784`](./contracts/avalanche-43114/0x09c1e991870cbc01009a4b49397a4f2a127d3784/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | avalanche | n/a | [`0x3784dfedd6900c01a6548ce12c143dfd1a025563`](./contracts/avalanche-43114/0x3784dfedd6900c01a6548ce12c143dfd1a025563/) | ⚠️ Unaudited |
| VerifierProxy | unknown | avalanche | n/a | [`0xaaf548a3a74939650d7a5d7550cf785975ed400a`](./contracts/avalanche-43114/0xaaf548a3a74939650d7a5d7550cf785975ed400a/) | ⚠️ Unaudited |

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
| [{% embed url="<>" %}](https://code4rena.com/reports/2023-07-moonwell) | Code4rena | Contest | 2023-07 | stale | Direct | contract_name | 3 | high |
| [Benqi_Smart_Contract_Security_Audit_Halborn_v1_1.pdf](https://2452785816-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2F-MViz_ikDZy4OemUj_VI%2Fuploads%2Fa7kg3ihdbiiAMsXjIn8z%2FBenqi_Smart_Contract_Security_Audit_Halborn_v1_1.pdf) | Halborn | Audit | 2021-05 | stale | Direct | contract_name | 8 | high |
| [Benqi_LiquidStaking_Smart_Contract_Security_Audit_Report_Halborn_Final.pdf](https://2452785816-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2F-MViz_ikDZy4OemUj_VI%2Fuploads%2Fsjpc2u859ZnLjsedBuel%2FBenqi_LiquidStaking_Smart_Contract_Security_Audit_Report_Halborn_Final.pdf) | Halborn | Audit | 2022-02 | stale | Direct | n/a | 0 | n/a |
| [benqiApril2022.md-Grip.pdf](https://2452785816-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2F-MViz_ikDZy4OemUj_VI%2Fuploads%2FIdRz4pA36eJD1IlGlD4D%2FbenqiApril2022.md-Grip.pdf) | Grip | Audit | 2022-04 | stale | Direct | contract_name | 1 | high |
| [steward-savax.pdf](https://2452785816-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2F-MViz_ikDZy4OemUj_VI%2Fuploads%2FUUUYpwdCHOnfcEj8xBQW%2Fsteward-savax.pdf) | unknown | Audit | 2024-06 | stale | Direct | contract_name | 1 | high |
| [2024-12-11-cyfrin-benqi-ignite-v2.0.pdf](https://2452785816-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2F-MViz_ikDZy4OemUj_VI%2Fuploads%2FXFK94HB0hmyTTSVyeTpg%2F2024-12-11-cyfrin-benqi-ignite-v2.0.pdf) | Cyfrin | Audit | 2024-12 | aging | Direct | contract_name | 1 | high |
| [BENQI Ignite - Mar '23.pdf](https://2452785816-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2F-MViz_ikDZy4OemUj_VI%2Fuploads%2Ftlv40KMOxjgE1ua46HAr%2FBENQI%20Ignite%20-%20Mar%20'23.pdf) | unknown | Audit | 2023-03 | stale | Direct | contract_name | 1 | high |
| [BENQI Isolated Markets Audit.pdf](https://2452785816-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2F-MViz_ikDZy4OemUj_VI%2Fuploads%2FFX0XuZ24gLs8LUbWzUvS%2FBENQI%20Isolated%20Markets%20Audit.pdf) | unknown | Audit | n/a | unknown | Direct | contract_name | 2 | medium |
| [Benqi Oracle - Zellic Audit Report.pdf](https://2452785816-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2F-MViz_ikDZy4OemUj_VI%2Fuploads%2F3r3AzX96YnXqaZ2SYZV2%2FBenqi%20Oracle%20-%20Zellic%20Audit%20Report.pdf) | Zellic | Audit | 2025-05 | aging | Direct | contract_name | 2 | high |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| avalanche | [`0x2c04457b00b09f30d3bc866e3d14493a8069e7d7`](./contracts/avalanche-43114/0x2c04457b00b09f30d3bc866e3d14493a8069e7d7/) | AccessControlledOCR2Aggregator | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x0a58227e7d7a8175e4f5f8a0d32968d153b9ce59`](./contracts/avalanche-43114/0x0a58227e7d7a8175e4f5f8a0d32968d153b9ce59/) | AccessControlledOffchainAggregator | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0xdd16750e11f8adea3e26eca9e89269364c1fa228`](./contracts/avalanche-43114/0xdd16750e11f8adea3e26eca9e89269364c1fa228/) | ConfirmedTransactionModule | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0xff5a7a16619d3f4c4bdc2fef7af8a9d0b6c35ca8`](./contracts/avalanche-43114/0xff5a7a16619d3f4c4bdc2fef7af8a9d0b6c35ca8/) | ConnectV2BenqiAvalanche | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0xac33e98174a897ecf21bd5c6e67696007aa58527`](./contracts/avalanche-43114/0xac33e98174a897ecf21bd5c6e67696007aa58527/) | ConnectV2QiAvalanche | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x02d35d3a8ac3e1626d3ee09a78dd87286f5e8e3a`](./contracts/avalanche-43114/0x02d35d3a8ac3e1626d3ee09a78dd87286f5e8e3a/) | EACAggregatorProxy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x07a4f5e8d15c52210691993b97df8d44686305af`](./contracts/avalanche-43114/0x07a4f5e8d15c52210691993b97df8d44686305af/) | EdgePushOracle | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x14593cb3ffe270a72862eb08ceb57bc3d4ddc16c`](./contracts/avalanche-43114/0x14593cb3ffe270a72862eb08ceb57bc3d4ddc16c/) | GaugeController | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0xe19fba29ac9baacc1f584aecd9c98b4f6fc58ba6`](./contracts/avalanche-43114/0xe19fba29ac9baacc1f584aecd9c98b4f6fc58ba6/) | InstaBenqiMappingAvalanche | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x2774516897ac629ad3ed9dcac7e375dda78412b9`](./contracts/avalanche-43114/0x2774516897ac629ad3ed9dcac7e375dda78412b9/) | JoePair | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0xe530dc2095ef5653205cf5ea79f8979a7028065c`](./contracts/avalanche-43114/0xe530dc2095ef5653205cf5ea79f8979a7028065c/) | PangolinPair | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x80bdda5305b26102b3f63331419bef2f16ce458c`](./contracts/avalanche-43114/0x80bdda5305b26102b3f63331419bef2f16ce458c/) | PauseGuardian | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x58a2929eadfa4e9577f79ab06a4263e28fadd0bb`](./contracts/avalanche-43114/0x58a2929eadfa4e9577f79ab06a4263e28fadd0bb/) | PglStakingContract | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x4074da7841bf5fff121476d6d1c2d39fbeeb9e4a`](./contracts/avalanche-43114/0x4074da7841bf5fff121476d6d1c2d39fbeeb9e4a/) | PglStakingContractProxy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x8729438eb15e2c8b576fcc6aecda6a148776c0f5`](./contracts/avalanche-43114/0x8729438eb15e2c8b576fcc6aecda6a148776c0f5/) | Qi | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0xcc2de440f9fc5eec73e28373f6bb69643dc804d5`](./contracts/avalanche-43114/0xcc2de440f9fc5eec73e28373f6bb69643dc804d5/) | QiAvaxHelper | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x23de2004592b04d594d23c9a928d0552e29d6bea`](./contracts/avalanche-43114/0x23de2004592b04d594d23c9a928d0552e29d6bea/) | QiTokenSaleDistributor | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x9037d683c936d55a4eac4ce2488e9c6f55a4ba1c`](./contracts/avalanche-43114/0x9037d683c936d55a4eac4ce2488e9c6f55a4ba1c/) | QiTokenSaleDistributorProxy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x1273f29204fc102bd4620485b13cfe27a794ff32`](./contracts/avalanche-43114/0x1273f29204fc102bd4620485b13cfe27a794ff32/) | RiskOracle | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x54b6b49007b684b275d0ebc87c5b201707406de2`](./contracts/avalanche-43114/0x54b6b49007b684b275d0ebc87c5b201707406de2/) | sAVAXExchangeRateAdapter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x26aa437322e44a231b4d7559bc48bf4e6b102bd7`](./contracts/avalanche-43114/0x26aa437322e44a231b4d7559bc48bf4e6b102bd7/) | StablecoinExchangeRateAdapter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x270fa51d6e593561dd493937a806f65fcda5d075`](./contracts/avalanche-43114/0x270fa51d6e593561dd493937a806f65fcda5d075/) | StakedAvaxPriceFeed | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0xaaf548a3a74939650d7a5d7550cf785975ed400a`](./contracts/avalanche-43114/0xaaf548a3a74939650d7a5d7550cf785975ed400a/) | VerifierProxy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 35 |
| upstream | 0 |
| standard_library | 4 |
| needs_review | 0 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=7, medium=1
- Match method counts: extraction_exact=19

Zero-match audit list:

- [19540] Benqi_LiquidStaking_Smart_Contract_Security_Audit_Report_Halborn_Final.pdf

Fork inheritance lineage and inherited audits are included when available.
