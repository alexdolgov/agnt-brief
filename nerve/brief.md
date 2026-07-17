# Agentic Audit Brief: Nerve

## Project Overview

- Project: Nerve (`nerve`)
- Lifecycle: unknown
- Generated: 2026-07-04T14:53:38.644Z
- Pipeline run: v2-pipeline-2026-07-01-3e33f2-d640
- Chains: bsc, ethereum
- Contract surface: 65 unique implementations (97 raw deployments)
- DeFi Llama TVL: $1,463,656.36
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Dexs. Structurally: 25 project-authored contract(s) across 2 chain(s); 10 ERC20 tokens; role-gated via AccessControl; upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 5 functional families. Its contracts share 4 common project-authored base contract(s) (upgradeabilityproxy, proxy, swap). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 111; live-surface contracts included: 97 (53 live, 44 unknown).
- Excluded by liveness: 14 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 8/20 (40.0%)
- Deployed-live implementations: 21 of 65 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 8/21
- Verified + Unaudited implementations: 13
- Verified by bytecode match: 0
- Unverified implementations: 44
- Unique implementations: 65
- Raw deployments: 97
- Audits discovered: 1 (1 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 1
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2021-04 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 1 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 8 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| CertiK | Tier 2 | 8 | 38.1% | 2021-04 |

## Contract Surface

### ✅ Verified + Audited (8)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| MasterMind | unknown | bsc | n/a | 3 deployments: bsc [`0x15cfed9a157290ffe648347c52972434360a7a02`](./contracts/bsc-56/0x15cfed9a157290ffe648347c52972434360a7a02/); bsc `0x2ebe8cdbcb5fb8564bc45999dab8da264e31f24e`; bsc `0x705a73db94916e6d421d3ff2590082742d55b641` | ✅ Audited |
| MathUtils | unknown | bsc | n/a | 2 deployments: bsc [`0x4ab8eb2591ab616dbac98e3d467018de22945947`](./contracts/bsc-56/0x4ab8eb2591ab616dbac98e3d467018de22945947/); bsc `0xc148fe11e69f2615a2089f7c56aa9c7010869e1b` | ✅ Audited |
| MetaSwapUtils | unknown | bsc | n/a | 3 deployments: bsc [`0x3d5ce3bc7c312ab023b3a7b59c993da49e38d5a6`](./contracts/bsc-56/0x3d5ce3bc7c312ab023b3a7b59c993da49e38d5a6/); bsc `0x5068b9eb5c6b4d624683dc4e2eca021b61ffadf5`; bsc `0xe30b5f73b653c18c5f97a079a66de6c48b826eea` | ✅ Audited |
| NerveToken | token | bsc | n/a | 3 deployments: bsc [`0x3633144e8fa5e11f56ff0b6ee00fe20f5fad52d4`](./contracts/bsc-56/0x3633144e8fa5e11f56ff0b6ee00fe20f5fad52d4/); bsc `0x42f6f551ae042cbe50c739158b4f0cac0edb9096`; bsc `0xc901ea436ffd715b802c441900cf54cb8473d9f5` | ✅ Audited |
| Swap | unknown | bsc | n/a | 3 deployments: bsc [`0x146cd24dcc9f4eb224dfd010c5bf2b0d25afa9c0`](./contracts/bsc-56/0x146cd24dcc9f4eb224dfd010c5bf2b0d25afa9c0/); bsc `0x47e232f941e5be0df4cdbbb482fdba62b03bd7d9`; bsc `0x6c341938bb75dde823faafe7f446925c66e6270c` | ✅ Audited |
| SwapUtils | unknown | bsc | n/a | [`0x02338ee742ddcde44488640f4edf1aa947e670e7`](./contracts/bsc-56/0x02338ee742ddcde44488640f4edf1aa947e670e7/) | ✅ Audited |
| SwapUtils | unknown | bsc | n/a | 2 deployments: bsc [`0x1b3771a66ee31180906972580ade9b81afc5fcdc`](./contracts/bsc-56/0x1b3771a66ee31180906972580ade9b81afc5fcdc/); bsc `0x4427b78af4d150a5a1173e8593a84e1003dd8bad` | ✅ Audited |
| xNerve | unknown | bsc | n/a | [`0x15b9462d4eb94222a7506bc7a25fb27a2359291e`](./contracts/bsc-56/0x15b9462d4eb94222a7506bc7a25fb27a2359291e/) | ✅ Audited |

### ⚠️ Verified + Unaudited (13)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| AdminUpgradeabilityProxy | proxy | ethereum | n/a | [`0xd87c52809a972fdae2dbab69d438510f17f7409a`](./contracts/ethereum-1/0xd87c52809a972fdae2dbab69d438510f17f7409a/) | ⚠️ Unaudited |
| BtcSwapAssetV2 | unknown | bsc | n/a | [`0x54261774905f3e6e9718f2abb10ed6555cae308a`](./contracts/bsc-56/0x54261774905f3e6e9718f2abb10ed6555cae308a/) | ⚠️ Unaudited |
| Dummy | unknown | bsc | n/a | [`0xcc65c6989db42ee834c9321c0096670507971095`](./contracts/bsc-56/0xcc65c6989db42ee834c9321c0096670507971095/) | ⚠️ Unaudited |
| ERC20Migrator | token | bsc | n/a | 2 deployments: bsc [`0x285f9cb834c23ea597fb03d027aeaa74c3791e44`](./contracts/bsc-56/0x285f9cb834c23ea597fb03d027aeaa74c3791e44/); bsc `0xa9fd3f6014ed7bf7d49c1a6bdeb7e1efa80a4095` | ⚠️ Unaudited |
| GenericERC20 | token | bsc | n/a | 6 deployments: bsc [`0x069ef9146ecd9d576847d5c8fd4cb5fc2bd7bb9b`](./contracts/bsc-56/0x069ef9146ecd9d576847d5c8fd4cb5fc2bd7bb9b/); bsc `0x260c1fb8c4a97f3bbaa23bdb7fce20cf675070aa`; bsc `0x2e054ff8edf1180ea9852019b32d865db5cc9932`; bsc `0x54d58c5d207b43f7ae711283c944e2ccc5645c5e`; bsc `0x7f3dee31e6cecb5191de912fe0778c275a47c154`; bsc `0x9854f61cb704e94ecfe172d0cd002e4aaa6cdf75` | ⚠️ Unaudited |
| MetaSwap | unknown | bsc | n/a | 7 deployments: bsc [`0x0eafaa7ed9866c1f08ac21dd0ef3395e910f7114`](./contracts/bsc-56/0x0eafaa7ed9866c1f08ac21dd0ef3395e910f7114/); bsc `0x2dcce1586b1664f41c72206900e404ec3ca130e0`; bsc `0x544d0f8579fbbfe7c35da2dcbefff88981689815`; bsc `0xd0fbf0a224563d5ffc8a57e4fda6ae080ebcf3d3`; bsc `0xe0ad6ba2ebdab676b6d6f7f7b4213abc54732b0c`; bsc `0xfa97adb530b38639a83b1890ee17942804035ddf`; bsc `0xfcc3976ebdc240ce83e8a94bc83be5cd4ad4a053` | ⚠️ Unaudited |
| MetaSwapDeployer | unknown | bsc | n/a | 5 deployments: bsc [`0x435e7316e62b8a2883699490e270ab6cbed409ae`](./contracts/bsc-56/0x435e7316e62b8a2883699490e270ab6cbed409ae/); bsc `0x57cc9c65d39757d07dc9b4182f3cbe83dfe0a5c2`; bsc `0x9ab01eeac56d49a521a1f454f7a8c46217d5a390`; bsc `0xd2c61986f1311a5346c8c4e89004c36fb0003ea2`; bsc `0xefe2df2a05bb9db3ea7feede20fc1c277427f973` | ⚠️ Unaudited |
| MetaSwapDeposit | unknown | bsc | n/a | 2 deployments: bsc [`0x45e6607a6b1d5374e175b6b237541598ee02fd59`](./contracts/bsc-56/0x45e6607a6b1d5374e175b6b237541598ee02fd59/); bsc `0xd49bd82f98b86ba9a6863af12c8158497622c329` | ⚠️ Unaudited |
| OldSwap | unknown | bsc | n/a | [`0x18eb9ea26e34e46f6c67f09b29dc8d56acd35582`](./contracts/bsc-56/0x18eb9ea26e34e46f6c67f09b29dc8d56acd35582/) | ⚠️ Unaudited |
| SwapDeployer | unknown | bsc | n/a | [`0x7c42eaa5b77e9d32fee82d74f2699b00a29717b8`](./contracts/bsc-56/0x7c42eaa5b77e9d32fee82d74f2699b00a29717b8/) | ⚠️ Unaudited |
| SwapFlashLoan | unknown | bsc | n/a | [`0xcb86651dd2589206d288b0b22f9da8fd1a6b7769`](./contracts/bsc-56/0xcb86651dd2589206d288b0b22f9da8fd1a6b7769/) | ⚠️ Unaudited |
| TokenVesting | operational_periphery | bsc | n/a | 6 deployments: bsc [`0x19bc7e18f312e23c3d9b4a7ed61ac22848e50b25`](./contracts/bsc-56/0x19bc7e18f312e23c3d9b4a7ed61ac22848e50b25/); bsc `0x40cd807a726fe5872ec983be7b341aeabe8838a9`; bsc `0x61167b6bb14e4f3cf4b9a490516f96b70a801fb5`; bsc `0x85313ebd740cf0923cbecf38c4209d24c26b82bd`; bsc `0xc901b585fafcebd581024d0c978a33d8d8297edb`; bsc `0xef93762698d736f76593782924df8a5f22bd6488` | ⚠️ Unaudited |
| VestDummy | operational_periphery | bsc | n/a | [`0x7dcc26c1ff0c7dac712c79535c6aee9ee00c7630`](./contracts/bsc-56/0x7dcc26c1ff0c7dac712c79535c6aee9ee00c7630/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (44)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | ethereum | n/a | `0x07663837218a003e66310a01596af4bf4e44623d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x0bb55da31021b6124c8686d31beaf83ea5d7f174` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x0e978f44121ee00cb97120a94fb269443fa0149b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x1b9f08b0198f42dbec2c894be04616c9c1ba7dcc` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x2efa7b9acc455346301e7e657f4b5379b2de9eae` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x418e3cc08c5dc01784aefd1d2aaff1d621635eaf` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x475bb9bc8507a08def99603ab76f5bc6ef660481` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x647d91f582774e8f6f017f72293b3a20f5abc858` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x6d3be6c245baf03969db72d97db39eb20fd7b6f0` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x729d67041e223572f3b16c63e92c60d5ae786cb0` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x747cbd6f7e09192d1dbd145f77af7d708936c3a3` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x7577909f1d4939e1a6e6ba784427439aba17f405` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x79c0c92a099d7618fec5997e26fd51802c172dff` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x7f13cd22f5bb88b4f62eb56158e6f7d04df76cb8` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x81af557a20b057b67e631907cebd664f6497d852` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x8869f918c6f5b1e2ef983c04f8e885c62ff9145b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x8baa340d779f5d7a606d7e66c7c1cbb7d1e1d15a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x8df7d31ca251c47d6f4d010bbb22b6c43f893035` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x8faf887e0246c03c55de3f6539aa722f39a37ab9` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x977ae9b396415fc4b278ea6fe8db7771b0a541ef` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x9e7bbb00ec7cba5afa1afacbba8ce5085786c937` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xb1779c988837e835498b240ed043004373fb0812` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xb7746f9eac21285abef7d4e2c92ed415927b5285` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xbea3b54c16cab6d044998182c14ba73e33022316` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xdaf2c1e9a69ef3dd8e4d5b963af42a0243bc0b28` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xdcda8337621ad977d7ea249d6702b43325e0d7b0` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xe7a618713d76a4a1a77630655d89df2b87504122` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xfb7713ffb51881322c51df7336418a6d2ef80146` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x1598ea31197f633825ef43371e45e27f242128d6` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x1c85794faef2fa489e552b61f36acdc8b8d100ac` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x4604af0eb93adaa96a21d66636902e7353a25c02` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x50ae8e60c51583d3f6ef18f80a1bd12b0cb1f50f` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x6306059d3105c9fc0e3d80e19c0e67a496f82647` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x63c915fedbf9643752305df86ada556835ab3f9d` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x80ede03a74865d71789c1236e58c2ce6500f29b6` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xa3754bbc25329fa34e073c24f5bc4c67d4101bd2` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xa7ea87d802aea1e2a8248761ca15a9429a90a95f` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xb264bcbea48740c5e6c6a6ee6ab5a5f0eb1a9742` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xb719dcb6ef5249d3d7a2477e2bd5139e7beb20f4` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xc75f8fc125feafcf729e8b9e6baf7f6956498f62` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xd3671879b60da4dcdef33a8192180756ec92d7f5` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xdc02e218fdd5cb5361126a2692d962596b937369` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xdd1f3c693fb0178cd75a5fe4d9534e6a4db921dd` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xdf739073d676f4247bfc60a62d4ef9adc451818e` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [Certik - REP-Nerve_Finance_Core_Contracts-06_04_2021.pdf](https://github.com/nerve-finance/contracts/blob/main/audits/Certik%20-%20REP-Nerve_Finance_Core_Contracts-06_04_2021.pdf) | CertiK | Audit | 2021-04 | stale | Direct | contract_name | 16 | high |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| bsc | [`0x54261774905f3e6e9718f2abb10ed6555cae308a`](./contracts/bsc-56/0x54261774905f3e6e9718f2abb10ed6555cae308a/) | BtcSwapAssetV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0xcc65c6989db42ee834c9321c0096670507971095`](./contracts/bsc-56/0xcc65c6989db42ee834c9321c0096670507971095/) | Dummy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x285f9cb834c23ea597fb03d027aeaa74c3791e44`](./contracts/bsc-56/0x285f9cb834c23ea597fb03d027aeaa74c3791e44/) | ERC20Migrator | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x069ef9146ecd9d576847d5c8fd4cb5fc2bd7bb9b`](./contracts/bsc-56/0x069ef9146ecd9d576847d5c8fd4cb5fc2bd7bb9b/) | GenericERC20 | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x0eafaa7ed9866c1f08ac21dd0ef3395e910f7114`](./contracts/bsc-56/0x0eafaa7ed9866c1f08ac21dd0ef3395e910f7114/) | MetaSwap | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x435e7316e62b8a2883699490e270ab6cbed409ae`](./contracts/bsc-56/0x435e7316e62b8a2883699490e270ab6cbed409ae/) | MetaSwapDeployer | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x45e6607a6b1d5374e175b6b237541598ee02fd59`](./contracts/bsc-56/0x45e6607a6b1d5374e175b6b237541598ee02fd59/) | MetaSwapDeposit | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x18eb9ea26e34e46f6c67f09b29dc8d56acd35582`](./contracts/bsc-56/0x18eb9ea26e34e46f6c67f09b29dc8d56acd35582/) | OldSwap | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x7c42eaa5b77e9d32fee82d74f2699b00a29717b8`](./contracts/bsc-56/0x7c42eaa5b77e9d32fee82d74f2699b00a29717b8/) | SwapDeployer | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0xcb86651dd2589206d288b0b22f9da8fd1a6b7769`](./contracts/bsc-56/0xcb86651dd2589206d288b0b22f9da8fd1a6b7769/) | SwapFlashLoan | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x19bc7e18f312e23c3d9b4a7ed61ac22848e50b25`](./contracts/bsc-56/0x19bc7e18f312e23c3d9b4a7ed61ac22848e50b25/) | TokenVesting | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x7dcc26c1ff0c7dac712c79535c6aee9ee00c7630`](./contracts/bsc-56/0x7dcc26c1ff0c7dac712c79535c6aee9ee00c7630/) | VestDummy | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 20 |
| upstream | 0 |
| standard_library | 1 |
| needs_review | 44 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=1
- Match method counts: extraction_exact=16

Fork inheritance lineage and inherited audits are included when available.
