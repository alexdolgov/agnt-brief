# Agentic Audit Brief: Credbull

## Project Overview

- Project: Credbull (`credbull`)
- Lifecycle: unknown
- Generated: 2026-07-04T14:53:10.611Z
- Pipeline run: v2-pipeline-2026-07-01-3e33f2-d640
- Chains: arbitrum, polygon
- Contract surface: 41 unique implementations (59 raw deployments)
- DeFi Llama TVL: $10,940,088.68
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Farm. Structurally: 85 project-authored contract(s) across 2 chain(s); 1 ERC4626 vault, 3 ERC20 tokens; role-gated via AccessControl; upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 5 functional families. Its contracts share 24 common project-authored base contract(s) (policybase, entranceratefeebase, feebase). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 111; live-surface contracts included: 59 (57 live, 2 unknown).
- Excluded by liveness: 52 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 1/39 (2.6%)
- Deployed-live implementations: 39 of 41 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 1/39
- Verified + Unaudited implementations: 38
- Verified by bytecode match: 0
- Unverified implementations: 2
- Unique implementations: 41
- Raw deployments: 59
- Audits discovered: 8 (8 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 2
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2025-05 (aging)
- Audit staleness (calendar age): 0 fresh, 7 aging, 1 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 1 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| CertiK | Tier 2 | 1 | 2.6% | 2024-05 |
| Hacken | Tier 2 | 1 | 2.6% | 2024-12 |

## Contract Surface

### ✅ Verified + Audited (1)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| CredbullFixedYieldVault | core_logic | arbitrum | n/a | 10 deployments: arbitrum [`0x096227660b27e612f31838645cc3ad213cc72874`](./contracts/arbitrum-42161/0x096227660b27e612f31838645cc3ad213cc72874/); arbitrum `0x1e0d689be9cab9ef4db8b24eb2a34feab54b0b8b`; arbitrum `0x581d72f798b3a5b3f3b12768c989656123e9cbff`; arbitrum `0x797ccfe4063e0c0cc6c1eb580f29bbcec6f62e4b`; arbitrum `0x8b261a75f10da41e0aa4e270487b06d7116bb4bb`; arbitrum `0x8f87e1258d645d948f270221c34202be0583f29b`; arbitrum `0xace0d7a6de1396a04daa8af16ec8767b07ce5516`; arbitrum `0xb89846b74f3b190f6e00fc35b3affcdf5d4bb9f9`; arbitrum `0xc0c1daa773570c041c47ce12c397addfd6b7403f`; arbitrum `0xe4a4d891f02df7bffc5ff9e691313de8a9e76b91` | ✅ Audited |

### ⚠️ Verified + Unaudited (38)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| AddressListRegistry | unknown | polygon | n/a | [`0x5ae15bf655a8f42b9c7d93e64f4476ec1da248f8`](./contracts/polygon-137/0x5ae15bf655a8f42b9c7d93e64f4476ec1da248f8/) | ⚠️ Unaudited |
| AllowedAdapterIncomingAssetsPolicy | unknown | polygon | n/a | [`0xc192fd3b13549ad5bc3c0a0118a29556d0cdd482`](./contracts/polygon-137/0xc192fd3b13549ad5bc3c0a0118a29556d0cdd482/) | ⚠️ Unaudited |
| AllowedAdaptersPerManagerPolicy | unknown | polygon | n/a | [`0x30ed4e3cf5e1faf6fc9776d256d535f3470bb710`](./contracts/polygon-137/0x30ed4e3cf5e1faf6fc9776d256d535f3470bb710/) | ⚠️ Unaudited |
| AllowedAdaptersPolicy | unknown | polygon | n/a | [`0x4218783ae10bd1841e6664cf048ac295d8d27a4a`](./contracts/polygon-137/0x4218783ae10bd1841e6664cf048ac295d8d27a4a/) | ⚠️ Unaudited |
| AllowedAssetsForRedemptionPolicy | unknown | polygon | n/a | [`0x71b8254f608a73162445655ff2f07ccb1586b3b6`](./contracts/polygon-137/0x71b8254f608a73162445655ff2f07ccb1586b3b6/) | ⚠️ Unaudited |
| AllowedDepositRecipientsPolicy | unknown | polygon | n/a | [`0xe1853502e2ea2b7c14c5e89169c63065f5a459ff`](./contracts/polygon-137/0xe1853502e2ea2b7c14c5e89169c63065f5a459ff/) | ⚠️ Unaudited |
| AllowedExternalPositionTypesPerManagerPolicy | unknown | polygon | n/a | [`0xb6367cd4b67c44e963ae81e9c1757a1c08ede28c`](./contracts/polygon-137/0xb6367cd4b67c44e963ae81e9c1757a1c08ede28c/) | ⚠️ Unaudited |
| AllowedExternalPositionTypesPolicy | unknown | polygon | n/a | [`0x5a739da3099fd4fc954bd764099fc000da76d8e7`](./contracts/polygon-137/0x5a739da3099fd4fc954bd764099fc000da76d8e7/) | ⚠️ Unaudited |
| AllowedSharesTransferRecipientsPolicy | unknown | polygon | n/a | [`0x3b6913a8ed4595919a6b4a9022208cede20194bd`](./contracts/polygon-137/0x3b6913a8ed4595919a6b4a9022208cede20194bd/) | ⚠️ Unaudited |
| ArbitraryLoanPositionParser | unknown | polygon | n/a | 2 deployments: polygon [`0x2e46462de3bf02d382c039bb021021f2277a7d05`](./contracts/polygon-137/0x2e46462de3bf02d382c039bb021021f2277a7d05/); polygon `0xe8a5dadff7dbd09f3b2abbb09643ba67f1860131` | ⚠️ Unaudited |
| AssetValueCalculator | unknown | polygon | n/a | [`0xe9d4d87478dcb10da0032f9fac8d253e9dd27d86`](./contracts/polygon-137/0xe9d4d87478dcb10da0032f9fac8d253e9dd27d86/) | ⚠️ Unaudited |
| CBL | unknown | arbitrum | n/a | [`0xd6b3d81868770083307840f513a3491960b95cb6`](./contracts/arbitrum-42161/0xd6b3d81868770083307840f513a3491960b95cb6/) | ⚠️ Unaudited |
| ComptrollerLib | unknown | polygon | n/a | [`0xf5fc0e36c85552e44354132d188c33d9361eb441`](./contracts/polygon-137/0xf5fc0e36c85552e44354132d188c33d9361eb441/) | ⚠️ Unaudited |
| CumulativeSlippageTolerancePolicy | unknown | polygon | n/a | [`0x1332367c181f1157f751b160187dcaa219706bf2`](./contracts/polygon-137/0x1332367c181f1157f751b160187dcaa219706bf2/) | ⚠️ Unaudited |
| DepositWrapper | unknown | polygon | n/a | 4 deployments: polygon [`0x2baa64f0ce9c2e60e91127fc3f40a72529e82c87`](./contracts/polygon-137/0x2baa64f0ce9c2e60e91127fc3f40a72529e82c87/); polygon `0x30c4394916816ac289a61700fbc1211d6efcbafa`; polygon `0x5100ef340bc3a27113e96b9571e784e89fc49114`; polygon `0xb545e766527422bf1b86b47ebdfd1422cb874cb8` | ⚠️ Unaudited |
| Dispatcher | unknown | polygon | n/a | 2 deployments: polygon [`0x2e25271297537b8124b8f883a92ffd95c4032733`](./contracts/polygon-137/0x2e25271297537b8124b8f883a92ffd95c4032733/); polygon `0xf9fe9a4f13ebef6a33863b42779ebeb2395778d2` | ⚠️ Unaudited |
| EntranceRateDirectFee | unknown | polygon | n/a | [`0x88c9a11c7bb8bc274388d0db864ab87c14fb78b8`](./contracts/polygon-137/0x88c9a11c7bb8bc274388d0db864ab87c14fb78b8/) | ⚠️ Unaudited |
| ExitRateDirectFee | unknown | polygon | n/a | [`0xc5c7f7c6e5e2db074d96b440d30d7aab2c99b848`](./contracts/polygon-137/0xc5c7f7c6e5e2db074d96b440d30d7aab2c99b848/) | ⚠️ Unaudited |
| FeeManager | unknown | polygon | n/a | [`0xddd7432671f5adc1c82c7c875624c1b0bc461deb`](./contracts/polygon-137/0xddd7432671f5adc1c82c7c875624c1b0bc461deb/) | ⚠️ Unaudited |
| FundDeployer | unknown | polygon | n/a | [`0x188d356caf78bc6694aee5969fde99a9d612284f`](./contracts/polygon-137/0x188d356caf78bc6694aee5969fde99a9d612284f/) | ⚠️ Unaudited |
| FundValueCalculator | unknown | polygon | n/a | [`0xcdf038dd3b66506d2e5378aee185b2f0084b7a33`](./contracts/polygon-137/0xcdf038dd3b66506d2e5378aee185b2f0084b7a33/) | ⚠️ Unaudited |
| GasRelayPaymasterLib | unknown | polygon | n/a | 3 deployments: polygon [`0x44654bc1107caaa3297ed5ccb70d9cdb445f5592`](./contracts/polygon-137/0x44654bc1107caaa3297ed5ccb70d9cdb445f5592/); polygon `0x9feea9ec855096e702a146ee39797927103dc7a0`; polygon `0xbedae7274c3717c7dec41738e00bedd9a4d01676` | ⚠️ Unaudited |
| GatedRedemptionQueueSharesWrapperLib | unknown | polygon | n/a | 2 deployments: polygon [`0xcee23e8c2edb19af09ec3405f7b95484d43a53f3`](./contracts/polygon-137/0xcee23e8c2edb19af09ec3405f7b95484d43a53f3/); polygon `0xe6ae7ba4224a40adb10d2eac2fa7b1e5a069586f` | ⚠️ Unaudited |
| IntegrationManager | governance | polygon | n/a | [`0x92fcde09790671cf085864182b9670c77da0884b`](./contracts/polygon-137/0x92fcde09790671cf085864182b9670c77da0884b/) | ⚠️ Unaudited |
| ManagementFee | unknown | polygon | n/a | [`0x97f13b3040a565be791d331b0edd4b1b58dbd843`](./contracts/polygon-137/0x97f13b3040a565be791d331b0edd4b1b58dbd843/) | ⚠️ Unaudited |
| ManualValueOracleFactory | operational_periphery | polygon | n/a | [`0x735615beb04bfd3665f06541ea00af1860c4354f`](./contracts/polygon-137/0x735615beb04bfd3665f06541ea00af1860c4354f/) | ⚠️ Unaudited |
| MinAssetBalancesPostRedemptionPolicy | unknown | polygon | n/a | [`0x9d940beaa6e3cfb441d49787fdf1db18d7f8251e`](./contracts/polygon-137/0x9d940beaa6e3cfb441d49787fdf1db18d7f8251e/) | ⚠️ Unaudited |
| OnlyRemoveDustExternalPositionPolicy | unknown | polygon | n/a | [`0xc0f49507c125a000e02ab58c22be9764e2abab99`](./contracts/polygon-137/0xc0f49507c125a000e02ab58c22be9764e2abab99/) | ⚠️ Unaudited |
| OnlyUntrackDustOrPricelessAssetsPolicy | unknown | polygon | n/a | [`0x9f856372f7bd844dac0254c7859b117259b5c9d2`](./contracts/polygon-137/0x9f856372f7bd844dac0254c7859b117259b5c9d2/) | ⚠️ Unaudited |
| PerformanceFee | unknown | polygon | n/a | [`0xbc63afe28c66a6279bd3a55a4d0d3ab61f479bdf`](./contracts/polygon-137/0xbc63afe28c66a6279bd3a55a4d0d3ab61f479bdf/) | ⚠️ Unaudited |
| PolicyManager | governance | polygon | n/a | [`0x5a8ee0850d22ffef4169dbd348c1b0d7d5f5546f`](./contracts/polygon-137/0x5a8ee0850d22ffef4169dbd348c1b0d7d5f5546f/) | ⚠️ Unaudited |
| ProtocolFeeTracker | unknown | polygon | n/a | [`0xb8e6eda0ce8fddd21f0b0268a43a57b9296e23d5`](./contracts/polygon-137/0xb8e6eda0ce8fddd21f0b0268a43a57b9296e23d5/) | ⚠️ Unaudited |
| UintListRegistry | unknown | polygon | n/a | [`0x6ddd871c1607348ebb5be250f882255390166519`](./contracts/polygon-137/0x6ddd871c1607348ebb5be250f882255390166519/) | ⚠️ Unaudited |
| UnpermissionedActionsWrapper | unknown | polygon | n/a | [`0x1648cc031a1b6d60b5585ae21dae507a69d2b17b`](./contracts/polygon-137/0x1648cc031a1b6d60b5585ae21dae507a69d2b17b/) | ⚠️ Unaudited |
| ValueInterpreter | unknown | polygon | n/a | [`0x66de7e286aae66f7f3daf693c22d16eea48a0f45`](./contracts/polygon-137/0x66de7e286aae66f7f3daf693c22d16eea48a0f45/) | ⚠️ Unaudited |
| VaultLib | unknown | polygon | n/a | [`0xddb8ebe5361ca93614e5efb34049e842912e1612`](./contracts/polygon-137/0xddb8ebe5361ca93614e5efb34049e842912e1612/) | ⚠️ Unaudited |
| VaultProxy | core_logic | polygon | n/a | [`0x2eda17eb596858566be933b26fae6fa4ee8ccd6d`](./contracts/polygon-137/0x2eda17eb596858566be933b26fae6fa4ee8ccd6d/) | ⚠️ Unaudited |
| ZeroExV4Adapter | unknown | polygon | n/a | 2 deployments: polygon [`0x34558aa452cac926d6a78cc148ee1220e94fb687`](./contracts/polygon-137/0x34558aa452cac926d6a78cc148ee1220e94fb687/); polygon `0xce663e0ae43f5bf213207a6f0a16dad7c8f1448a` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (2)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | polygon | n/a | `0xaad57fc5d654b3fc7917b798785b0d0a6f6044f1` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xc088fe902e5b99f2744f7e0a08426be396d91224` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [Credbull-DeFi_Audit_20241217_Hacken.pdf (also discovered via alternate URL)](https://raw.githubusercontent.com/credbull/security-reports/main/credbull-defi/Credbull-DeFi_Audit_20241217_Hacken.pdf) | Hacken | Audit | 2024-12 | aging | Direct | n/a | 0 | n/a |
| [Credbull-DeFi_Audit_20241031_Hacken.pdf (also discovered via alternate URL)](https://raw.githubusercontent.com/credbull/security-reports/main/credbull-defi/Credbull-DeFi_Audit_20241031_Hacken.pdf) | Hacken | Audit | 2024-10 | aging | Direct | n/a | 0 | n/a |
| [Credbull-DeFi_Audit_20240815_Hacken.pdf (also discovered via alternate URL)](https://raw.githubusercontent.com/credbull/security-reports/main/credbull-defi/Credbull-DeFi_Audit_20240815_Hacken.pdf) | Hacken | Audit | 2024-08 | aging | Direct | contract_name | 10 | high |
| [Credbull-DeFi_Audit_20240514.pdf (also discovered via alternate URL)](https://raw.githubusercontent.com/credbull/security-reports/main/credbull-defi/Credbull-DeFi_Audit_20240514.pdf) | CertiK | Audit | 2024-05 | stale | Direct | contract_name | 10 | high |
| [Credbull-CBL_Audit_20241023_Hacken.pdf (also discovered via alternate URL)](https://raw.githubusercontent.com/credbull/security-reports/main/credbull-defi/Credbull-CBL_Audit_20241023_Hacken.pdf) | Hacken | Audit | 2024-10 | aging | Direct | n/a | 0 | n/a |
| [hacken.io/audits/credbull/sca-re-audit-credbull-token-oct2024](https://hacken.io/audits/credbull/sca-re-audit-credbull-token-oct2024) | Hacken | Audit | 2024-10 | aging | Direct | n/a | 0 | n/a |
| [Credbull-WrappedERC20_Audit_20250429_Hashlock.pdf (also discovered via alternate URL)](https://raw.githubusercontent.com/credbull/security-reports/main/credbull-defi/Credbull-WrappedERC20_Audit_20250429_Hashlock.pdf) | Hashlock | Audit | 2025-04 | aging | Direct | n/a | 0 | n/a |
| [Credbull-Smart-Contract-Audit-Report-Final-Report-v2.pdf](https://hashlock.com/wp-content/uploads/2025/05/Credbull-Smart-Contract-Audit-Report-Final-Report-v2.pdf) | Hashlock | Audit | 2025-05 | aging | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| polygon | [`0x5ae15bf655a8f42b9c7d93e64f4476ec1da248f8`](./contracts/polygon-137/0x5ae15bf655a8f42b9c7d93e64f4476ec1da248f8/) | AddressListRegistry | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0xc192fd3b13549ad5bc3c0a0118a29556d0cdd482`](./contracts/polygon-137/0xc192fd3b13549ad5bc3c0a0118a29556d0cdd482/) | AllowedAdapterIncomingAssetsPolicy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x30ed4e3cf5e1faf6fc9776d256d535f3470bb710`](./contracts/polygon-137/0x30ed4e3cf5e1faf6fc9776d256d535f3470bb710/) | AllowedAdaptersPerManagerPolicy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x4218783ae10bd1841e6664cf048ac295d8d27a4a`](./contracts/polygon-137/0x4218783ae10bd1841e6664cf048ac295d8d27a4a/) | AllowedAdaptersPolicy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x71b8254f608a73162445655ff2f07ccb1586b3b6`](./contracts/polygon-137/0x71b8254f608a73162445655ff2f07ccb1586b3b6/) | AllowedAssetsForRedemptionPolicy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0xe1853502e2ea2b7c14c5e89169c63065f5a459ff`](./contracts/polygon-137/0xe1853502e2ea2b7c14c5e89169c63065f5a459ff/) | AllowedDepositRecipientsPolicy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0xb6367cd4b67c44e963ae81e9c1757a1c08ede28c`](./contracts/polygon-137/0xb6367cd4b67c44e963ae81e9c1757a1c08ede28c/) | AllowedExternalPositionTypesPerManagerPolicy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x5a739da3099fd4fc954bd764099fc000da76d8e7`](./contracts/polygon-137/0x5a739da3099fd4fc954bd764099fc000da76d8e7/) | AllowedExternalPositionTypesPolicy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x3b6913a8ed4595919a6b4a9022208cede20194bd`](./contracts/polygon-137/0x3b6913a8ed4595919a6b4a9022208cede20194bd/) | AllowedSharesTransferRecipientsPolicy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x2e46462de3bf02d382c039bb021021f2277a7d05`](./contracts/polygon-137/0x2e46462de3bf02d382c039bb021021f2277a7d05/) | ArbitraryLoanPositionParser | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0xe9d4d87478dcb10da0032f9fac8d253e9dd27d86`](./contracts/polygon-137/0xe9d4d87478dcb10da0032f9fac8d253e9dd27d86/) | AssetValueCalculator | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0xd6b3d81868770083307840f513a3491960b95cb6`](./contracts/arbitrum-42161/0xd6b3d81868770083307840f513a3491960b95cb6/) | CBL | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0xf5fc0e36c85552e44354132d188c33d9361eb441`](./contracts/polygon-137/0xf5fc0e36c85552e44354132d188c33d9361eb441/) | ComptrollerLib | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x1332367c181f1157f751b160187dcaa219706bf2`](./contracts/polygon-137/0x1332367c181f1157f751b160187dcaa219706bf2/) | CumulativeSlippageTolerancePolicy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x2baa64f0ce9c2e60e91127fc3f40a72529e82c87`](./contracts/polygon-137/0x2baa64f0ce9c2e60e91127fc3f40a72529e82c87/) | DepositWrapper | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x2e25271297537b8124b8f883a92ffd95c4032733`](./contracts/polygon-137/0x2e25271297537b8124b8f883a92ffd95c4032733/) | Dispatcher | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x88c9a11c7bb8bc274388d0db864ab87c14fb78b8`](./contracts/polygon-137/0x88c9a11c7bb8bc274388d0db864ab87c14fb78b8/) | EntranceRateDirectFee | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0xc5c7f7c6e5e2db074d96b440d30d7aab2c99b848`](./contracts/polygon-137/0xc5c7f7c6e5e2db074d96b440d30d7aab2c99b848/) | ExitRateDirectFee | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0xddd7432671f5adc1c82c7c875624c1b0bc461deb`](./contracts/polygon-137/0xddd7432671f5adc1c82c7c875624c1b0bc461deb/) | FeeManager | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x188d356caf78bc6694aee5969fde99a9d612284f`](./contracts/polygon-137/0x188d356caf78bc6694aee5969fde99a9d612284f/) | FundDeployer | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0xcdf038dd3b66506d2e5378aee185b2f0084b7a33`](./contracts/polygon-137/0xcdf038dd3b66506d2e5378aee185b2f0084b7a33/) | FundValueCalculator | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x44654bc1107caaa3297ed5ccb70d9cdb445f5592`](./contracts/polygon-137/0x44654bc1107caaa3297ed5ccb70d9cdb445f5592/) | GasRelayPaymasterLib | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0xcee23e8c2edb19af09ec3405f7b95484d43a53f3`](./contracts/polygon-137/0xcee23e8c2edb19af09ec3405f7b95484d43a53f3/) | GatedRedemptionQueueSharesWrapperLib | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x92fcde09790671cf085864182b9670c77da0884b`](./contracts/polygon-137/0x92fcde09790671cf085864182b9670c77da0884b/) | IntegrationManager | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x97f13b3040a565be791d331b0edd4b1b58dbd843`](./contracts/polygon-137/0x97f13b3040a565be791d331b0edd4b1b58dbd843/) | ManagementFee | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x735615beb04bfd3665f06541ea00af1860c4354f`](./contracts/polygon-137/0x735615beb04bfd3665f06541ea00af1860c4354f/) | ManualValueOracleFactory | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x9d940beaa6e3cfb441d49787fdf1db18d7f8251e`](./contracts/polygon-137/0x9d940beaa6e3cfb441d49787fdf1db18d7f8251e/) | MinAssetBalancesPostRedemptionPolicy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0xc0f49507c125a000e02ab58c22be9764e2abab99`](./contracts/polygon-137/0xc0f49507c125a000e02ab58c22be9764e2abab99/) | OnlyRemoveDustExternalPositionPolicy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x9f856372f7bd844dac0254c7859b117259b5c9d2`](./contracts/polygon-137/0x9f856372f7bd844dac0254c7859b117259b5c9d2/) | OnlyUntrackDustOrPricelessAssetsPolicy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0xbc63afe28c66a6279bd3a55a4d0d3ab61f479bdf`](./contracts/polygon-137/0xbc63afe28c66a6279bd3a55a4d0d3ab61f479bdf/) | PerformanceFee | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x5a8ee0850d22ffef4169dbd348c1b0d7d5f5546f`](./contracts/polygon-137/0x5a8ee0850d22ffef4169dbd348c1b0d7d5f5546f/) | PolicyManager | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0xb8e6eda0ce8fddd21f0b0268a43a57b9296e23d5`](./contracts/polygon-137/0xb8e6eda0ce8fddd21f0b0268a43a57b9296e23d5/) | ProtocolFeeTracker | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x6ddd871c1607348ebb5be250f882255390166519`](./contracts/polygon-137/0x6ddd871c1607348ebb5be250f882255390166519/) | UintListRegistry | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x1648cc031a1b6d60b5585ae21dae507a69d2b17b`](./contracts/polygon-137/0x1648cc031a1b6d60b5585ae21dae507a69d2b17b/) | UnpermissionedActionsWrapper | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x66de7e286aae66f7f3daf693c22d16eea48a0f45`](./contracts/polygon-137/0x66de7e286aae66f7f3daf693c22d16eea48a0f45/) | ValueInterpreter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0xddb8ebe5361ca93614e5efb34049e842912e1612`](./contracts/polygon-137/0xddb8ebe5361ca93614e5efb34049e842912e1612/) | VaultLib | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x2eda17eb596858566be933b26fae6fa4ee8ccd6d`](./contracts/polygon-137/0x2eda17eb596858566be933b26fae6fa4ee8ccd6d/) | VaultProxy | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x34558aa452cac926d6a78cc148ee1220e94fb687`](./contracts/polygon-137/0x34558aa452cac926d6a78cc148ee1220e94fb687/) | ZeroExV4Adapter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 39 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 2 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 6
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=2
- Match method counts: extraction_exact=40

Zero-match audit list:

- [21290] Credbull-DeFi_Audit_20241217_Hacken.pdf
- [21291] Credbull-DeFi_Audit_20241031_Hacken.pdf
- [21294] Credbull-CBL_Audit_20241023_Hacken.pdf
- [21295] hacken.io/audits/credbull/sca-re-audit-credbull-token-oct2024
- [21296] Credbull-WrappedERC20_Audit_20250429_Hashlock.pdf
- [21297] Credbull-Smart-Contract-Audit-Report-Final-Report-v2.pdf

Fork inheritance lineage and inherited audits are included when available.
