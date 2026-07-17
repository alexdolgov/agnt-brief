# Agentic Audit Brief: CVI Finance

## Project Overview

- Project: CVI Finance (`cvi-finance`)
- Website: [https://cvi.finance/](https://cvi.finance/)
- Lifecycle: unknown
- Generated: 2026-07-04T14:53:10.686Z
- Pipeline run: v2-pipeline-2026-07-01-3e33f2-d640
- Chains: arbitrum, ethereum, polygon
- Contract surface: 84 unique implementations (107 raw deployments)
- DeFi Llama TVL: $129,169.94
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Synthetics. Structurally: 46 project-authored contract(s) across 3 chain(s); 7 ERC20 tokens; upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 5 functional families. Its contracts share 2 common project-authored base contract(s) (proxy, erc1967upgrade). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 148; live-surface contracts included: 107 (37 live, 70 unknown).
- Excluded by liveness: 41 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 4/20 (20.0%)
- Deployed-live implementations: 23 of 84 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 4/23
- Verified + Unaudited implementations: 19
- Verified by bytecode match: 0
- Unverified implementations: 61
- Unique implementations: 84
- Raw deployments: 107
- Audits discovered: 4 (4 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 4
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2023-11 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 4 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 4 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| CertiK | Tier 2 | 4 | 17.4% | 2021-03 |
| SourceHat | Tier 2 | 3 | 13.0% | 2022-06 |
| Zokyo | Tier 2 | 1 | 4.3% | 2023-11 |

## Contract Surface

### ✅ Verified + Audited (4)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| ETHPlatform | unknown | ethereum | n/a | 2 deployments: ethereum [`0x5005e8dc0033e78af80cfc8d10f5163f2fcf0e79`](./contracts/ethereum-1/0x5005e8dc0033e78af80cfc8d10f5163f2fcf0e79/); ethereum `0xbe857e635d7b2b471e5fe7c76e605878d252be72` | ✅ Audited |
| GOVI | unknown | ethereum | n/a | [`0xeeaa40b28a2d1b0b08f6f97bb1dd4b75316c6107`](./contracts/ethereum-1/0xeeaa40b28a2d1b0b08f6f97bb1dd4b75316c6107/) | ✅ Audited |
| Platform | unknown | polygon | n/a | 2 deployments: ethereum `0xe0437beb5bb7cf980e90983f6029033d710bd1da`; polygon [`0x0bbaf8ea9c644149dce1656b811ef2d7ac0b11a4`](./contracts/polygon-137/0x0bbaf8ea9c644149dce1656b811ef2d7ac0b11a4/) | ✅ Audited |
| Staking | unknown | ethereum | n/a | [`0xdb3130952ed9b5fa7108dedaaa921ae8f59beacb`](./contracts/ethereum-1/0xdb3130952ed9b5fa7108dedaaa921ae8f59beacb/) | ✅ Audited |

### ⚠️ Verified + Unaudited (19)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| CVIUSDCThetaVault | core_logic | arbitrum | n/a | [`0xfdeb59a2b4891ea17610ee38665249acc9fcc506`](./contracts/arbitrum-42161/0xfdeb59a2b4891ea17610ee38665249acc9fcc506/) | ⚠️ Unaudited |
| CVIUSDCVolatilityTokenV3 | token | arbitrum | n/a | [`0x8096ad3107715747361acefe685943bfb427c722`](./contracts/arbitrum-42161/0x8096ad3107715747361acefe685943bfb427c722/) | ⚠️ Unaudited |
| GnosisSafeL2 | governance | arbitrum | n/a | 2 deployments: arbitrum [`0x223013bd8b4569628d50ee106ccba93189a02ada`](./contracts/arbitrum-42161/0x223013bd8b4569628d50ee106ccba93189a02ada/); arbitrum `0x7f4b135782c4a3b1c78c93f23f2016cb5cd96cc8` | ⚠️ Unaudited |
| GOVIETHSLPStakingRewards | unknown | ethereum | n/a | [`0xcf05a60bcbc9c85cb2548dafdc444c666a8f466a`](./contracts/ethereum-1/0xcf05a60bcbc9c85cb2548dafdc444c666a8f466a/) | ⚠️ Unaudited |
| GOVIETHStakingRewards | unknown | polygon | n/a | 2 deployments: ethereum `0x936dd3112a9d39af39adda798503d9e7e7975fb7`; polygon [`0x27792cda195d07ffb36e94e253d67361661a16dc`](./contracts/polygon-137/0x27792cda195d07ffb36e94e253d67361661a16dc/) | ⚠️ Unaudited |
| PlatformV3 | unknown | polygon | n/a | [`0x88d01ef3a4d586d5e4ce30357ec57b073d45ff9d`](./contracts/polygon-137/0x88d01ef3a4d586d5e4ce30357ec57b073d45ff9d/) | ⚠️ Unaudited |
| PositionRewards | unknown | ethereum | n/a | [`0xe9d634d2767079a2bff2ced1584f8f5623492ab4`](./contracts/ethereum-1/0xe9d634d2767079a2bff2ced1584f8f5623492ab4/) | ⚠️ Unaudited |
| ProxyAdmin | unknown | polygon | n/a | 4 deployments: ethereum `0x2eab109de23905fefd65784820e44fc06ce7eeab`; ethereum `0x858d7cc649b5bd484caf859749cf17ed89249e11`; polygon [`0x21032cce4b54a2e856a0a006552e593d627cb077`](./contracts/polygon-137/0x21032cce4b54a2e856a0a006552e593d627cb077/); polygon `0x7d9d86cf0eec161ae12d762f29899868ed7de262` | ⚠️ Unaudited |
| StandardArbERC20 | token | arbitrum | n/a | [`0x07e49d5de43dda6162fa28d24d5935c151875283`](./contracts/arbitrum-42161/0x07e49d5de43dda6162fa28d24d5935c151875283/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | ethereum | n/a | 3 deployments: ethereum [`0x0e0da40101d8f6eb1b1d6b0215327e8452e0bc60`](./contracts/ethereum-1/0x0e0da40101d8f6eb1b1d6b0215327e8452e0bc60/); ethereum `0x2167eefb9ecb52fb6fcf1ff8f7dae6f0121f4fbc`; ethereum `0x959fde094d975a2ae4f266d528b5ae28bfa51ec4` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | ethereum | n/a | 2 deployments: ethereum [`0x2444722a73564060808e0124f4b80bda436599a0`](./contracts/ethereum-1/0x2444722a73564060808e0124f4b80bda436599a0/); ethereum `0x3d37c21745e254737d7290eb2af9ca8dd23ede5f` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | ethereum | n/a | 2 deployments: ethereum [`0x27f57fd24f8a179f5b57586d809afa7cb649151f`](./contracts/ethereum-1/0x27f57fd24f8a179f5b57586d809afa7cb649151f/); ethereum `0x36bab6b3b722f90475b8e681b4b0a4dc68ee5399` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | ethereum | n/a | 2 deployments: ethereum [`0x2878f5baf3ebf1de939916901da0a825ad37f7a1`](./contracts/ethereum-1/0x2878f5baf3ebf1de939916901da0a825ad37f7a1/); ethereum `0xfa045835008058392ebfe2372ec6a1b1049b2c79` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | ethereum | n/a | 3 deployments: ethereum [`0x31b1d6b8a54df568ab9a3659ef269534b9cd5d1e`](./contracts/ethereum-1/0x31b1d6b8a54df568ab9a3659ef269534b9cd5d1e/); ethereum `0x337f91f5a3f688445d2f29496f33f75ec1b93728`; ethereum `0x9ad0e2cae661eab5cb42f23d7be66352fcb0219d` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | polygon | n/a | 2 deployments: polygon [`0x164ec55e783f8ff6f77b9578f726efd88e32027f`](./contracts/polygon-137/0x164ec55e783f8ff6f77b9578f726efd88e32027f/); polygon `0xe7e97cb4f82b2e4be4c24fb5af0769a9c65bab5b` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | polygon | n/a | 2 deployments: polygon [`0x3863d0c9b7552cd0d0de99fe9f08a32fed6ab72f`](./contracts/polygon-137/0x3863d0c9b7552cd0d0de99fe9f08a32fed6ab72f/); polygon `0xe26783dc0c4f355b9a82c48a57346c305adc542c` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | polygon | n/a | 2 deployments: polygon [`0x9cd552551ec130b50c1421649c8d11e76ac821e1`](./contracts/polygon-137/0x9cd552551ec130b50c1421649c8d11e76ac821e1/); polygon `0xc72b7075aea7b3d69dd21cafa16e3acbdf85c821` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | polygon | n/a | 2 deployments: polygon [`0xd013ffc6ed3b2c773051a3b83e763df782d7b31f`](./contracts/polygon-137/0xd013ffc6ed3b2c773051a3b83e763df782d7b31f/); polygon `0xda679846a0a8e9bfe279c54eb8cc5dd99641d0c3` | ⚠️ Unaudited |
| UniswapV2Pair | unknown | ethereum | n/a | 6 deployments: ethereum [`0x197e99bd87f98dfde461afe3f706de36c9635a5d`](./contracts/ethereum-1/0x197e99bd87f98dfde461afe3f706de36c9635a5d/); ethereum `0x1ee312a6d5fe7b4b8c25f0a32fca6391209ebebf`; ethereum `0x7e6782e37278994d1e99f1a5d03309b4b249d919`; ethereum `0xa2b04f8133fc25887a436812eae384e32a8a84f2`; polygon `0x1dab41a0e410c25857f0f49b2244cd089ab88de6`; polygon `0x1dd0095a169e8398448a8e72f15a1868d99d9348` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (61)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | ethereum | n/a | `0x0a281e990e07c49d2b96e02234fbfa7893869435` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x0a6bb1cae5a282a92cc5592bd8dd6495823f6a7f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x0b38d97d6616485ae3390c8843121a37ad725619` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x0c0502cf9a6c0abd7dbbcd6a6bf450d0b0196155` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x0f3ce829151fc85a11b7d8c1dda3aed1fc860195` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x130d6a27c254d3492779b06e186cd5c90f57aa99` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x197c25c75ad7e7d211f179c130d94c19ac72e8e8` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x1c746415d73d4cbc995e5eb80ddd07e698a32c8c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x1d752c16ab0e242d9e5c8468422f4a551b18ce4b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x1fff08dbde98afce0b0af2bf634bc2f95242c584` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x2d05ba27fe35410972ea1d3f59dc358e95e16c6f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x2e5069474e75ec596064f8b4c68ac1c166231732` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x404cd4c297e215dbebacdbee68654d64c844d8a0` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x406830a59faac461b846f15598689defd56fb0ad` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x43b576de0fd3e9f2b43f824608aceae8e2a4a912` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x44f671c28454d8f490088fa77f564a06a8caeba2` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x4b1fc384928406a08bee9cca204cd57cc942bf69` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x4fde21b467f6cccfdea1b2b51886d9d0fd05491f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x544d18b97fab267d7059f8415366cd019e923cd1` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x558de8ff1fd1d12b8f73e7780e460b9e10b7b249` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x55ab074cfb5d07bbb5d1561969a079914df5053a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x581ed39ff93ad50700f18e00857811935cb222ff` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x59349976bd52f968f1c46ecd1221b203ccd0ab62` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x6cdd3d250fe4bcd65822415ade4ac00040c404d6` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x70a18d240003d20b8f82c769bbbfc0d92079cc00` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x7b1e5d6c4c82bea3d8c509c52b62daf53b748363` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x95ef0eb38b203167035131743dd32d02470d9a25` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x9bc99ed62555f8f0dd1566681a2327500f62a19e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xa9f8754a34aed9efab3d543ce199b4aaf6a506c7` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xb18db09645801c74e26cee4a09cc11fa8aeba751` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xb3fd83aef518df231bfece15ede5702b710d8da7` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xb4e50da25a1f8c75dcd19209de222759f422a468` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xb5b935df34061bab956f9488b985ba4722736b19` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xba67c8e5c5fae26b9d30f1792ef863a598a0c0ab` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xbdfe39742b998eff02ad3d2cc44380475e7f9a03` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xc9529ca1d341b6b4791a4527915a96706d805e21` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xcf672fdcee6d19dfdedc8f2f0219c61172d4a53a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xd5a222b80788e36f707addc74c3cb5de7e43f1b0` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xe5586fb97720c5559bee7d885ac711b56f11a5c6` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xf359e1bd63c3308b77d6424a6dc9bfc78bb64922` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xf4e153d2622700840588b68c2de6f65b79f972fa` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xf86237a47700b13398870295cc0058ef84098dca` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xf9057e3189a357422933535d8022a25412b31f8c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xfe1185a6066fcd9ceafd24cb2fc8dcf13874177e` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x02deb6e484c12916abf245d5518f5315e1291555` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x049c70b3606c8befdc42555f8c1d092f5704593e` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x3b49ad7adf9e348852c529f621aecd7abd99907e` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x3c719eeab6bdbf152be9f6d5d18afbb365dbaf1f` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x58ddddb80f5cdfe3687a42136eaa13e4d52e4833` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x78fc21d4b835986cf201858835a2a2ba37c95fef` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x7907b14db27ce47aa2c4cf38d05b9c9611e468d0` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x8fa16a306dfc5c50ad77950e7bb8c5eb8eee250b` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x961ac04e0566ee1c781d504c54405dad4b010a98` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x981475d6a0ee63027f7a67574d8eed3bd170d11d` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xb1f2753380bd957298e635b21d46aad14364b289` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xc070d816d9f51de8f89c5b0baff374e02bf4234c` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xd53f9d95a87896e3543251acb3fb13d3d4d7d09e` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xdb3e7deab380b43189a7bc291fa2afeaa938dcc3` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xe3480ef62b16a49fce109aaafaaf0bc6053aa6f6` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xea7b8dc5615e049417c80c795ea652556971c423` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xeafad6a78e925e20ea63c49008ec1ce4d2160e37` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [usdt-audit.pdf](https://v2.cvi.finance/files/usdt-audit.pdf) | CertiK | Audit | 2021-01 | stale | Direct | contract_name | 4 | n/a |
| [eth-audit.pdf](https://v2.cvi.finance/files/eth-audit.pdf) | CertiK | Audit | 2021-03 | stale | Direct | contract_name | 4 | n/a |
| [sourcehat.com/audits/CVI](https://sourcehat.com/audits/CVI) | SourceHat | Audit | 2022-06 | stale | Direct | contract_name | 3 | n/a |
| [CVI_Zokyo_audit_report_30thNov_2023.pdf](https://github.com/zokyo-sec/audit-reports/blob/main/CVI/CVI_Zokyo_audit_report_30thNov_2023.pdf) | Zokyo | Audit | 2023-11 | stale | Direct | contract_name | 1 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| arbitrum | [`0xfdeb59a2b4891ea17610ee38665249acc9fcc506`](./contracts/arbitrum-42161/0xfdeb59a2b4891ea17610ee38665249acc9fcc506/) | CVIUSDCThetaVault | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x8096ad3107715747361acefe685943bfb427c722`](./contracts/arbitrum-42161/0x8096ad3107715747361acefe685943bfb427c722/) | CVIUSDCVolatilityTokenV3 | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xcf05a60bcbc9c85cb2548dafdc444c666a8f466a`](./contracts/ethereum-1/0xcf05a60bcbc9c85cb2548dafdc444c666a8f466a/) | GOVIETHSLPStakingRewards | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x27792cda195d07ffb36e94e253d67361661a16dc`](./contracts/polygon-137/0x27792cda195d07ffb36e94e253d67361661a16dc/) | GOVIETHStakingRewards | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x88d01ef3a4d586d5e4ce30357ec57b073d45ff9d`](./contracts/polygon-137/0x88d01ef3a4d586d5e4ce30357ec57b073d45ff9d/) | PlatformV3 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xe9d634d2767079a2bff2ced1584f8f5623492ab4`](./contracts/ethereum-1/0xe9d634d2767079a2bff2ced1584f8f5623492ab4/) | PositionRewards | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x07e49d5de43dda6162fa28d24d5935c151875283`](./contracts/arbitrum-42161/0x07e49d5de43dda6162fa28d24d5935c151875283/) | StandardArbERC20 | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 11 |
| upstream | 1 |
| standard_library | 8 |
| needs_review | 64 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: contract_name=12

Fork inheritance lineage and inherited audits are included when available.
