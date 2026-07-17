# Agentic Audit Brief: Yei Finance

## Project Overview

- Project: Yei Finance (`yei-finance`)
- Website: [https://www.yei.finance/](https://www.yei.finance/)
- Lifecycle: unknown
- Generated: 2026-07-04T14:54:13.803Z
- Pipeline run: v2-pipeline-2026-07-01-3e33f2-d640
- Chains: sei
- Contract surface: 27 unique implementations (69 raw deployments)
- DeFi Llama TVL: $17,240,281.00
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Lending. Structurally: 40 project-authored contract(s) across 1 chain(s); 12 ERC20 tokens; role-gated via AccessControl; upgradeable via ERC1967/UUPS proxies; built on aave.

### Architecture

The protocol comprises 5 functional families. Its contracts share 12 common project-authored base contract(s) (versionedinitializable, poolstorage, rewardsdistributor). Dominant framework: aave.

## Contract Surface Quality

- Indexed contracts: 143; live-surface contracts included: 69 (60 live, 9 unknown).
- Excluded by liveness: 74 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 0/15 (0.0%)
- Deployed-live implementations: 18 of 27 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 0/18
- Verified + Unaudited implementations: 18
- Verified by bytecode match: 0
- Unverified implementations: 9
- Unique implementations: 27
- Raw deployments: 69
- Audits discovered: 7 (7 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2025-08 (fresh)
- Audit staleness (calendar age): 2 fresh, 2 aging, 3 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (18)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| AaveProtocolDataProvider | unknown | sei | n/a | [`0x60c82a40c57736a9c692c42e87a8849fb407f0d6`](./contracts/sei-1329/0x60c82a40c57736a9c692c42e87a8849fb407f0d6/) | ⚠️ Unaudited |
| ACLManager | governance | sei | n/a | [`0xc6f7283620683bd1fda0c20158a2a589a090eea6`](./contracts/sei-1329/0xc6f7283620683bd1fda0c20158a2a589a090eea6/) | ⚠️ Unaudited |
| BorrowLogic | unknown | sei | n/a | 4 deployments: sei [`0x635901ab3409d47da0e693e244b42baf4b348a41`](./contracts/sei-1329/0x635901ab3409d47da0e693e244b42baf4b348a41/); sei `0x99c952c3fe5f31546c29b282911d2ed6b1a95d86`; sei `0x9c8a9f8a9b5e1f9e27b6bb39fdb8e92454a1279d`; sei `0xf7dd04ecbb8de9569a9dd2d2cc546fa8e579b54e` | ⚠️ Unaudited |
| BridgeLogic | unknown | sei | n/a | 4 deployments: sei [`0x3b28c1c795f1382a083d822dc2997eef49505643`](./contracts/sei-1329/0x3b28c1c795f1382a083d822dc2997eef49505643/); sei `0x6ddbd4728cc02f6a667b0424fdf58aca098c73a8`; sei `0xca7352a1f8c3bfc60bb376fc3a011c70a6f41e00`; sei `0xdf9d79854b07c7b62e4f96b7b162bcdc43609a95` | ⚠️ Unaudited |
| Clovis | unknown | sei | n/a | 2 deployments: sei [`0x8154d3161fc83ff69111b69b1120cd7475628555`](./contracts/sei-1329/0x8154d3161fc83ff69111b69b1120cd7475628555/); sei `0x81d3a238b02827f62b9f390f947d36d4a5bf89d2` | ⚠️ Unaudited |
| DefaultReserveInterestRateStrategy | unknown | sei | n/a | 21 deployments: sei [`0x0df8022519a8d1231293b24b2fd7a8bf992d0b4b`](./contracts/sei-1329/0x0df8022519a8d1231293b24b2fd7a8bf992d0b4b/); sei `0x33afe4892ab282544c8700a61984886d44e96eac`; sei `0x571591052aa05353a5f96070df2f71c961d2dfb9`; sei `0x58f8645b9ef2bdea6cd05105bf5ce6e8805e3a20`; sei `0x58f9da1f026b742d31cba95f171b7815f08d0575`; sei `0x5d3872d88e5e9f4a63f48a10d3b55a701149829c`; sei `0x5ee1bc89dd06d40d2550a77f4a72a2af5d28678b`; sei `0x660a1f48fa0f6b8193756fad0cc6ac78660bb61d`; sei `0x704d9658b25c6cfd88807f930c759041d01987c8`; sei `0x78b5ded9b67e3548a4fcdf298f89a17d5bd3a852`; sei `0x807878fc9686357416be585a3b4ebb5ae46680b8`; sei `0x80c1afe0770287a9ec9b6cc1ca2aae354ec8af2a`; sei `0x8c857e5eec30119f15dc640a7482cc2cc16d72e5`; sei `0x9bd15987df626b52d107688034c5e788346f2700`; sei `0xa3322edf272fd5e72851f7c45784998ec9b6b628`; sei `0xa753cb2ed8da813aa1fd4c64c7bb0fe034d8cfbb`; sei `0xaeb5098c2de6f62122ecc523790184b23890e3f1`; sei `0xaeca84e5430a723a876ccbc217a8273f04c14447`; sei `0xc1901f1b33b7071e67bf9ef4a749ad80e6340a3c`; sei `0xf4be509ddcc4adc4acc29a9fd89227cdb2c1ee06`; sei `0xfff1c1ebb8f7b1c8371e054c9511caffce83b8a2` | ⚠️ Unaudited |
| EmissionManager | operational_periphery | sei | n/a | [`0x96020007583c55abe6297090269179e6e046b2f1`](./contracts/sei-1329/0x96020007583c55abe6297090269179e6e046b2f1/) | ⚠️ Unaudited |
| EModeLogic | unknown | sei | n/a | 3 deployments: sei [`0x3655494c5c78102ecfe8e8f4b07e6de7413c3bef`](./contracts/sei-1329/0x3655494c5c78102ecfe8e8f4b07e6de7413c3bef/); sei `0x81deecd10a76c1da037079eeb09d0b84e746c038`; sei `0x859f699b896381a3badebe2c04ab70e3ccb381ff` | ⚠️ Unaudited |
| FlashLoanLogic | unknown | sei | n/a | 3 deployments: sei [`0x767148190d8b66ad7cd6a364866c1437d8a2cfd3`](./contracts/sei-1329/0x767148190d8b66ad7cd6a364866c1437d8a2cfd3/); sei `0xa4bfc89476ea68a0a649612bb259aac8e2f2bb19`; sei `0xdd66f956b39c91b904282d3122aea8c3ba41c857` | ⚠️ Unaudited |
| LiquidationLogic | unknown | sei | n/a | 3 deployments: sei [`0x5d1c6e0d69e962851b315bc9eff92d5189189c6b`](./contracts/sei-1329/0x5d1c6e0d69e962851b315bc9eff92d5189189c6b/); sei `0x6cfc881c3f4f043057db70a854a0bb9ebcee0c5b`; sei `0xd4cf1d5087c72e1f6353907f2161a75230abf8fa` | ⚠️ Unaudited |
| Pool | unknown | sei | n/a | 3 deployments: sei [`0x00208103c28fba80e715435b8173361bb817a1f2`](./contracts/sei-1329/0x00208103c28fba80e715435b8173361bb817a1f2/); sei `0x84b7c6edff42d3e16dd28c68c6672bbff4f85645`; sei `0xd078c43f88fbed47b3ce16dc361606b594c8f305` | ⚠️ Unaudited |
| PoolAddressesProvider | core_logic | sei | n/a | [`0xff33a79d9190bd63d0e9a4946f7fccba0e8f2a1e`](./contracts/sei-1329/0xff33a79d9190bd63d0e9a4946f7fccba0e8f2a1e/) | ⚠️ Unaudited |
| PoolLogic | unknown | sei | n/a | 3 deployments: sei [`0x2d245f6181b5ee45ccd1bfa0a9b662f1594f2775`](./contracts/sei-1329/0x2d245f6181b5ee45ccd1bfa0a9b662f1594f2775/); sei `0x8301b04d9641ad2c52be2108b0b41d0f9164254d`; sei `0xe3d1cb511f6dbc55e6d2853a20c17954014b0dd7` | ⚠️ Unaudited |
| SupplyLogic | unknown | sei | n/a | 3 deployments: sei [`0x0f8286f6aa0ecf83c9c1d87dac974871d0573421`](./contracts/sei-1329/0x0f8286f6aa0ecf83c9c1d87dac974871d0573421/); sei `0x1b94edb27c7dd7711fcc3ae7b25a037215043d8b`; sei `0x26355c3b44cc79d7cae46c894bb0599a3c204718` | ⚠️ Unaudited |
| UiPoolDataProviderV3 | unknown | sei | n/a | 4 deployments: sei [`0x186b5114230d94c480c94f2ae9dd5f89ecb5f549`](./contracts/sei-1329/0x186b5114230d94c480c94f2ae9dd5f89ecb5f549/); sei `0x411958fe53f5c48cfa263cc16b6f0f8e0be5c3e8`; sei `0xeb0cc27b656775bf27dc7a3c1cf570e002f727da`; sei `0xfbc3db2ed6875da561c74d17d8ef2e809b5eaa1f` | ⚠️ Unaudited |
| WormholeTransceiver | unknown | sei | n/a | [`0x67a0a897a32f0e5c76303666ca34178949f86ed3`](./contracts/sei-1329/0x67a0a897a32f0e5c76303666ca34178949f86ed3/) | ⚠️ Unaudited |
| WormholeTransceiver | unknown | sei | n/a | [`0xefe5054adf8c5fb416b4c6acca594b646caab91a`](./contracts/sei-1329/0xefe5054adf8c5fb416b4c6acca594b646caab91a/) | ⚠️ Unaudited |
| WrappedTokenGatewayV3 | token | sei | n/a | [`0xbc096b6a7d5404de916b3333ad223a1b32eec8aa`](./contracts/sei-1329/0xbc096b6a7d5404de916b3333ad223a1b32eec8aa/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (9)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | sei | n/a | `0x05696a5e904970fa08413b30142518efdabec7a3` | ❓ Unverified |
| UnnamedContract | unknown | sei | n/a | `0x7cee89997cf523e61226e37d3dfcd4686fca9288` | ❓ Unverified |
| UnnamedContract | unknown | sei | n/a | `0x82d1ae3d9038d1ad9c240c68c01a5f4d4a09d81f` | ❓ Unverified |
| UnnamedContract | unknown | sei | n/a | `0xaf448e94c6cb4307a2439bfb66b69fd2ac405307` | ❓ Unverified |
| UnnamedContract | unknown | sei | n/a | `0xb2b323e19b836e16e146291e966c83d67560be79` | ❓ Unverified |
| UnnamedContract | unknown | sei | n/a | `0xc844901d55af32984078f297e6e3aeb4efe96bf6` | ❓ Unverified |
| UnnamedContract | unknown | sei | n/a | `0xccefc4836e0b15eb65fe018bac6c72d9a9f87b79` | ❓ Unverified |
| UnnamedContract | unknown | sei | n/a | `0xe721a929962709051a4654a53bd5252ba9f85578` | ❓ Unverified |
| UnnamedContract | unknown | sei | n/a | `0xf83c7625a44d8b6541c39b50f61d79f7334180c4` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [spaces/j0nufC5pf4ZbVoZ4vP67/uploads/WXhpES7EjLtpGpkH241h/Yei Finance - Zellic Audit Report.pdf](https://2983504023-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2Fj0nufC5pf4ZbVoZ4vP67%2Fuploads%2FWXhpES7EjLtpGpkH241h%2FYei%20Finance%20-%20Zellic%20Audit%20Report.pdf) | Zellic | Audit | 2024-06 | stale | Direct | n/a | 0 | n/a |
| [spaces/j0nufC5pf4ZbVoZ4vP67/uploads/prx2e8i2NZ1apjDj20to/Yei Finance - Zellic Audit Report - Oracle.pdf](https://2983504023-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2Fj0nufC5pf4ZbVoZ4vP67%2Fuploads%2Fprx2e8i2NZ1apjDj20to%2FYei%20Finance%20-%20Zellic%20Audit%20Report%20-%20Oracle.pdf) | Zellic | Audit | 2024-07 | stale | Direct | n/a | 0 | n/a |
| [spaces/j0nufC5pf4ZbVoZ4vP67/uploads/dWGR2kDcaGsDkYGV1SOs/Yei Finance - PeckShield Audit Report - Yei Swap.pdf](https://2983504023-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2Fj0nufC5pf4ZbVoZ4vP67%2Fuploads%2FdWGR2kDcaGsDkYGV1SOs%2FYei%20Finance%20-%20PeckShield%20Audit%20Report%20-%20Yei%20Swap.pdf) | PeckShield | Audit | 2025-04 | aging | Direct | n/a | 0 | n/a |
| [spaces/j0nufC5pf4ZbVoZ4vP67/uploads/5VaVd8HkMLq4gPN3m2Wv/Yei Finance - billh Security Review - Yei Swap.pdf](https://2983504023-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2Fj0nufC5pf4ZbVoZ4vP67%2Fuploads%2F5VaVd8HkMLq4gPN3m2Wv%2FYei%20Finance%20-%20billh%20Security%20Review%20-%20Yei%20Swap.pdf) | billh | Audit | 2025-04 | aging | Direct | n/a | 0 | n/a |
| [spaces/j0nufC5pf4ZbVoZ4vP67/uploads/4lKFvt4Xg1KLvyEGZkre/Yei Finance - billh Security Review - YeiBridge.pdf](https://2983504023-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2Fj0nufC5pf4ZbVoZ4vP67%2Fuploads%2F4lKFvt4Xg1KLvyEGZkre%2FYei%20Finance%20-%20billh%20Security%20Review%20-%20YeiBridge.pdf) | billh | Audit | 2025-08 | fresh | Direct | n/a | 0 | n/a |
| [spaces/j0nufC5pf4ZbVoZ4vP67/uploads/ViAUJoj7zLwiCd8aCFgz/Yei Finance - billh Security Report - TGE.pdf](https://2983504023-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2Fj0nufC5pf4ZbVoZ4vP67%2Fuploads%2FViAUJoj7zLwiCd8aCFgz%2FYei%20Finance%20-%20billh%20Security%20Report%20-%20TGE.pdf) | billh | Audit | 2025-08 | fresh | Direct | n/a | 0 | n/a |
| [Yei Finance Oracle - Zellic Audit Report.pdf](https://github.com/Zellic/publications/blob/master/Yei%20Finance%20Oracle%20-%20Zellic%20Audit%20Report.pdf) | zellic | Audit | 2024-06 | stale | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| sei | [`0xc6f7283620683bd1fda0c20158a2a589a090eea6`](./contracts/sei-1329/0xc6f7283620683bd1fda0c20158a2a589a090eea6/) | ACLManager | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sei | [`0x635901ab3409d47da0e693e244b42baf4b348a41`](./contracts/sei-1329/0x635901ab3409d47da0e693e244b42baf4b348a41/) | BorrowLogic | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sei | [`0x3b28c1c795f1382a083d822dc2997eef49505643`](./contracts/sei-1329/0x3b28c1c795f1382a083d822dc2997eef49505643/) | BridgeLogic | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sei | [`0x8154d3161fc83ff69111b69b1120cd7475628555`](./contracts/sei-1329/0x8154d3161fc83ff69111b69b1120cd7475628555/) | Clovis | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sei | [`0x0df8022519a8d1231293b24b2fd7a8bf992d0b4b`](./contracts/sei-1329/0x0df8022519a8d1231293b24b2fd7a8bf992d0b4b/) | DefaultReserveInterestRateStrategy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sei | [`0x96020007583c55abe6297090269179e6e046b2f1`](./contracts/sei-1329/0x96020007583c55abe6297090269179e6e046b2f1/) | EmissionManager | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sei | [`0x3655494c5c78102ecfe8e8f4b07e6de7413c3bef`](./contracts/sei-1329/0x3655494c5c78102ecfe8e8f4b07e6de7413c3bef/) | EModeLogic | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sei | [`0x767148190d8b66ad7cd6a364866c1437d8a2cfd3`](./contracts/sei-1329/0x767148190d8b66ad7cd6a364866c1437d8a2cfd3/) | FlashLoanLogic | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sei | [`0x5d1c6e0d69e962851b315bc9eff92d5189189c6b`](./contracts/sei-1329/0x5d1c6e0d69e962851b315bc9eff92d5189189c6b/) | LiquidationLogic | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sei | [`0x00208103c28fba80e715435b8173361bb817a1f2`](./contracts/sei-1329/0x00208103c28fba80e715435b8173361bb817a1f2/) | Pool | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sei | [`0xff33a79d9190bd63d0e9a4946f7fccba0e8f2a1e`](./contracts/sei-1329/0xff33a79d9190bd63d0e9a4946f7fccba0e8f2a1e/) | PoolAddressesProvider | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sei | [`0x2d245f6181b5ee45ccd1bfa0a9b662f1594f2775`](./contracts/sei-1329/0x2d245f6181b5ee45ccd1bfa0a9b662f1594f2775/) | PoolLogic | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sei | [`0x0f8286f6aa0ecf83c9c1d87dac974871d0573421`](./contracts/sei-1329/0x0f8286f6aa0ecf83c9c1d87dac974871d0573421/) | SupplyLogic | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sei | [`0x186b5114230d94c480c94f2ae9dd5f89ecb5f549`](./contracts/sei-1329/0x186b5114230d94c480c94f2ae9dd5f89ecb5f549/) | UiPoolDataProviderV3 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sei | [`0xbc096b6a7d5404de916b3333ad223a1b32eec8aa`](./contracts/sei-1329/0xbc096b6a7d5404de916b3333ad223a1b32eec8aa/) | WrappedTokenGatewayV3 | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 15 |
| upstream | 3 |
| standard_library | 0 |
| needs_review | 9 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 7
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Zero-match audit list:

- [12427] spaces/j0nufC5pf4ZbVoZ4vP67/uploads/WXhpES7EjLtpGpkH241h/Yei Finance - Zellic Audit Report.pdf
- [12428] spaces/j0nufC5pf4ZbVoZ4vP67/uploads/prx2e8i2NZ1apjDj20to/Yei Finance - Zellic Audit Report - Oracle.pdf
- [12429] spaces/j0nufC5pf4ZbVoZ4vP67/uploads/dWGR2kDcaGsDkYGV1SOs/Yei Finance - PeckShield Audit Report - Yei Swap.pdf
- [12430] spaces/j0nufC5pf4ZbVoZ4vP67/uploads/5VaVd8HkMLq4gPN3m2Wv/Yei Finance - billh Security Review - Yei Swap.pdf
- [12431] spaces/j0nufC5pf4ZbVoZ4vP67/uploads/4lKFvt4Xg1KLvyEGZkre/Yei Finance - billh Security Review - YeiBridge.pdf
- [12432] spaces/j0nufC5pf4ZbVoZ4vP67/uploads/ViAUJoj7zLwiCd8aCFgz/Yei Finance - billh Security Report - TGE.pdf
- [14969] Yei Finance Oracle - Zellic Audit Report.pdf

Fork inheritance lineage and inherited audits are included when available.
