# Agentic Audit Brief: Nerve

## Export Authority

- Production state: **published scope**
- Raw selected rows: 0 across 0 audit(s)
- Eligible audit results: 1 (0 matched; 1 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e9e09d06b414f9cd852c36a58d42ce16279465f2d9791cd2a8178f3f54b89ecd`

## Project Overview

- Project: Nerve (`nerve`)
- Website: [https://nerve.network/](https://nerve.network/)
- Lifecycle: unknown
- Generated: 2026-07-15T18:30:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: bsc, ethereum
- Contract surface: 72 unique implementations (112 raw deployments)
- Coverage basis: 0/1 confirmed own live verified implementations (0.0%); conservative 0.0% with 0 needs-review implementation(s)
- DeFi Llama TVL: $1,463,656.36
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## ⚠️ Limited Contract Surface

This brief covers only 1 contract implementation(s). The pipeline may not have discovered all deployed contracts for this project.
Coverage assessment and audit matching are based on this incomplete surface.

## Project Description

This brief describes the observed EVM deployment and audit surface for Nerve. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 1 contract row(s) across bsc, ethereum. Structural roles: 1 core. No upgradeable pattern was identified in these rows.

## Logic Topography

- Exact-run contract rows: 1
- Structural roles: core (1)
- Contract kinds: contract (1)
- Detected standards: erc20 (1)
- Frameworks: openzeppelin (1)
- Upgradeable-pattern rows: 0

## Fork Analysis

0 of 1 contracts are derived from known codebases. 1 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0xf0e406c49c63abf358030a299c0e00118c4c6ba5`, chain 56)

## Contract Surface Quality

- Logic-topography rows: 1; live-surface rows included: 1 (1 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 1/1 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 0/1 (0.0%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 1 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 71 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 4 standard proxy/library)
- Proxy deployments represented within implementation groups: 7
- Confirmed-live implementations: 1 of 72 unique; 71 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 0/29
- Verified + Unaudited implementations: 29
- Verified by bytecode match: 0
- Unverified implementations: 43
- Unique implementations: 72
- Raw deployments: 112
- Audits discovered: 1 (1 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2021-04 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 1 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (29)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| AdminUpgradeabilityProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x0390db7d64d38ceb5976f069410b24cf315c53e4` | ⚠️ Unaudited |
| AdminUpgradeabilityProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x0e978f44121ee00cb97120a94fb269443fa0149b`; ethereum `0xcd239bb5908a965bac1fd9a86f98b2688bc3c32a` | ⚠️ Unaudited |
| AdminUpgradeabilityProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x3e84b21e2bf7c048992fd5de5ecd2a6ad1351c02` | ⚠️ Unaudited |
| AdminUpgradeabilityProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 7 deployments: ethereum `0x42a2438ccab942d836d92a037eb0a0d0b5fab24c`; ethereum `0xa8ccf29cb3501e9932e5747a850f13a615cbf226`; ethereum `0xaa1069e3f8a4e0b8979b5fb8af30442040d9f86a`; ethereum `0xb4da1dca9c8c541b959ed8eb820d0f57d0f056bd`; ethereum `0xc883d90c24c42ff1ab7052294c33f5bdb4bb310e`; ethereum `0xca7e4c75c1ceed4a5e3033e8f22d3dab9ff0ea92`; ethereum `0xfd4cb99854b061c5b2375398755d1f33c130e618` | ⚠️ Unaudited |
| AdminUpgradeabilityProxy | proxy | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0xd87c52809a972fdae2dbab69d438510f17f7409a` | ⚠️ Unaudited |
| AdminUpgradeabilityProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0xdf6a572a0f7fbe9fb461a5b0e63d5328ed8a83ee` | ⚠️ Unaudited |
| BtcSwapAssetV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x54261774905f3e6e9718f2abb10ed6555cae308a` | ⚠️ Unaudited |
| Dummy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xcc65c6989db42ee834c9321c0096670507971095` | ⚠️ Unaudited |
| ERC20Migrator | token | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 2 deployments: bsc `0x285f9cb834c23ea597fb03d027aeaa74c3791e44`; bsc `0xa9fd3f6014ed7bf7d49c1a6bdeb7e1efa80a4095` | ⚠️ Unaudited |
| GenericERC20 | token | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 6 deployments: bsc `0x069ef9146ecd9d576847d5c8fd4cb5fc2bd7bb9b`; bsc `0x260c1fb8c4a97f3bbaa23bdb7fce20cf675070aa`; bsc `0x2e054ff8edf1180ea9852019b32d865db5cc9932`; bsc `0x54d58c5d207b43f7ae711283c944e2ccc5645c5e`; bsc `0x7f3dee31e6cecb5191de912fe0778c275a47c154`; bsc `0x9854f61cb704e94ecfe172d0cd002e4aaa6cdf75` | ⚠️ Unaudited |
| MasterMind | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 3 deployments: bsc `0x15cfed9a157290ffe648347c52972434360a7a02`; bsc `0x2ebe8cdbcb5fb8564bc45999dab8da264e31f24e`; bsc `0x705a73db94916e6d421d3ff2590082742d55b641` | ⚠️ Unaudited |
| MathUtils | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 2 deployments: bsc `0x4ab8eb2591ab616dbac98e3d467018de22945947`; bsc `0xc148fe11e69f2615a2089f7c56aa9c7010869e1b` | ⚠️ Unaudited |
| MetaSwap | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 7 deployments: bsc `0x0eafaa7ed9866c1f08ac21dd0ef3395e910f7114`; bsc `0x2dcce1586b1664f41c72206900e404ec3ca130e0`; bsc `0x544d0f8579fbbfe7c35da2dcbefff88981689815`; bsc `0xd0fbf0a224563d5ffc8a57e4fda6ae080ebcf3d3`; bsc `0xe0ad6ba2ebdab676b6d6f7f7b4213abc54732b0c`; bsc `0xfa97adb530b38639a83b1890ee17942804035ddf`; bsc `0xfcc3976ebdc240ce83e8a94bc83be5cd4ad4a053` | ⚠️ Unaudited |
| MetaSwapDeployer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 5 deployments: bsc `0x435e7316e62b8a2883699490e270ab6cbed409ae`; bsc `0x57cc9c65d39757d07dc9b4182f3cbe83dfe0a5c2`; bsc `0x9ab01eeac56d49a521a1f454f7a8c46217d5a390`; bsc `0xd2c61986f1311a5346c8c4e89004c36fb0003ea2`; bsc `0xefe2df2a05bb9db3ea7feede20fc1c277427f973` | ⚠️ Unaudited |
| MetaSwapDeposit | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 2 deployments: bsc `0x45e6607a6b1d5374e175b6b237541598ee02fd59`; bsc `0xd49bd82f98b86ba9a6863af12c8158497622c329` | ⚠️ Unaudited |
| MetaSwapUtils | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 3 deployments: bsc `0x3d5ce3bc7c312ab023b3a7b59c993da49e38d5a6`; bsc `0x5068b9eb5c6b4d624683dc4e2eca021b61ffadf5`; bsc `0xe30b5f73b653c18c5f97a079a66de6c48b826eea` | ⚠️ Unaudited |
| NerveToken | token | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 3 deployments: bsc `0x3633144e8fa5e11f56ff0b6ee00fe20f5fad52d4`; bsc `0x42f6f551ae042cbe50c739158b4f0cac0edb9096`; bsc `0xc901ea436ffd715b802c441900cf54cb8473d9f5` | ⚠️ Unaudited |
| OldSwap | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x18eb9ea26e34e46f6c67f09b29dc8d56acd35582` | ⚠️ Unaudited |
| ProxyAdmin | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0b05b4c57e3341b3eb1063a458e4610932c562b9` | ⚠️ Unaudited |
| RUSD | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x87a69e54d5f8659a178c7a814594489e1c4fccc6`; ethereum `0xcf178a685471927e977a0ea8ee555c11b2aa6b7b` | ⚠️ Unaudited |
| Swap | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 3 deployments: bsc `0x146cd24dcc9f4eb224dfd010c5bf2b0d25afa9c0`; bsc `0x47e232f941e5be0df4cdbbb482fdba62b03bd7d9`; bsc `0x6c341938bb75dde823faafe7f446925c66e6270c` | ⚠️ Unaudited |
| SwapDeployer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x7c42eaa5b77e9d32fee82d74f2699b00a29717b8` | ⚠️ Unaudited |
| SwapFlashLoan | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xcb86651dd2589206d288b0b22f9da8fd1a6b7769` | ⚠️ Unaudited |
| SwapUtils | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x02338ee742ddcde44488640f4edf1aa947e670e7` | ⚠️ Unaudited |
| SwapUtils | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | 2 deployments: bsc `0x1b3771a66ee31180906972580ade9b81afc5fcdc`; bsc `0x4427b78af4d150a5a1173e8593a84e1003dd8bad` | ⚠️ Unaudited |
| TokenVesting | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 6 deployments: bsc `0x19bc7e18f312e23c3d9b4a7ed61ac22848e50b25`; bsc `0x40cd807a726fe5872ec983be7b341aeabe8838a9`; bsc `0x61167b6bb14e4f3cf4b9a490516f96b70a801fb5`; bsc `0x85313ebd740cf0923cbecf38c4209d24c26b82bd`; bsc `0xc901b585fafcebd581024d0c978a33d8d8297edb`; bsc `0xef93762698d736f76593782924df8a5f22bd6488` | ⚠️ Unaudited |
| UnnamedContract | token | project_anchor | own_supporting | 0 | bsc | unit-389849 | `0xf0e406c49c63abf358030a299c0e00118c4c6ba5` | ⚠️ Unaudited |
| VestDummy | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x7dcc26c1ff0c7dac712c79535c6aee9ee00c7630` | ⚠️ Unaudited |
| xNerve | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x15b9462d4eb94222a7506bc7a25fb27a2359291e` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (43)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x07663837218a003e66310a01596af4bf4e44623d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0bb55da31021b6124c8686d31beaf83ea5d7f174` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1b9f08b0198f42dbec2c894be04616c9c1ba7dcc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2efa7b9acc455346301e7e657f4b5379b2de9eae` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x418e3cc08c5dc01784aefd1d2aaff1d621635eaf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x475bb9bc8507a08def99603ab76f5bc6ef660481` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x647d91f582774e8f6f017f72293b3a20f5abc858` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6d3be6c245baf03969db72d97db39eb20fd7b6f0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x729d67041e223572f3b16c63e92c60d5ae786cb0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x747cbd6f7e09192d1dbd145f77af7d708936c3a3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7577909f1d4939e1a6e6ba784427439aba17f405` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x79c0c92a099d7618fec5997e26fd51802c172dff` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7f13cd22f5bb88b4f62eb56158e6f7d04df76cb8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x81af557a20b057b67e631907cebd664f6497d852` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8869f918c6f5b1e2ef983c04f8e885c62ff9145b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8baa340d779f5d7a606d7e66c7c1cbb7d1e1d15a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8df7d31ca251c47d6f4d010bbb22b6c43f893035` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8faf887e0246c03c55de3f6539aa722f39a37ab9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x977ae9b396415fc4b278ea6fe8db7771b0a541ef` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9e7bbb00ec7cba5afa1afacbba8ce5085786c937` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb1779c988837e835498b240ed043004373fb0812` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb7746f9eac21285abef7d4e2c92ed415927b5285` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbea3b54c16cab6d044998182c14ba73e33022316` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdaf2c1e9a69ef3dd8e4d5b963af42a0243bc0b28` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdcda8337621ad977d7ea249d6702b43325e0d7b0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe7a618713d76a4a1a77630655d89df2b87504122` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfb7713ffb51881322c51df7336418a6d2ef80146` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x1598ea31197f633825ef43371e45e27f242128d6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x1c85794faef2fa489e552b61f36acdc8b8d100ac` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x4604af0eb93adaa96a21d66636902e7353a25c02` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x50ae8e60c51583d3f6ef18f80a1bd12b0cb1f50f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x6306059d3105c9fc0e3d80e19c0e67a496f82647` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x63c915fedbf9643752305df86ada556835ab3f9d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x80ede03a74865d71789c1236e58c2ce6500f29b6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xa3754bbc25329fa34e073c24f5bc4c67d4101bd2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xa7ea87d802aea1e2a8248761ca15a9429a90a95f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xb264bcbea48740c5e6c6a6ee6ab5a5f0eb1a9742` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xb719dcb6ef5249d3d7a2477e2bd5139e7beb20f4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xc75f8fc125feafcf729e8b9e6baf7f6956498f62` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xd3671879b60da4dcdef33a8192180756ec92d7f5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xdc02e218fdd5cb5361126a2692d962596b937369` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xdd1f3c693fb0178cd75a5fe4d9534e6a4db921dd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xdf739073d676f4247bfc60a62d4ef9adc451818e` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [Certik - REP-Nerve_Finance_Core_Contracts-06_04_2021.pdf](https://github.com/nerve-finance/contracts/blob/main/audits/Certik%20-%20REP-Nerve_Finance_Core_Contracts-06_04_2021.pdf) | CertiK | Audit | 2021-04 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 9 | high |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [20867] Certik - REP-Nerve_Finance_Core_Contracts-06_04_2021.pdf — no match: Extracted from scope table and Files In Scope section. Audit date from cover page.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| Certik - REP-Nerve_Finance_Core_Contracts-06_04_2021.pdf | LPToken | unmatched — not counted | — | listed in scope table and Files In Scope | no |
| Certik - REP-Nerve_Finance_Core_Contracts-06_04_2021.pdf | MasterMind | unmatched — not counted | — | listed in scope table and Files In Scope | no |
| Certik - REP-Nerve_Finance_Core_Contracts-06_04_2021.pdf | MathUtils | unmatched — not counted | — | listed in scope table and Files In Scope | no |
| Certik - REP-Nerve_Finance_Core_Contracts-06_04_2021.pdf | NerveToken | unmatched — not counted | — | listed in scope table and Files In Scope | no |
| Certik - REP-Nerve_Finance_Core_Contracts-06_04_2021.pdf | OwnerPausable | unmatched — not counted | — | listed in scope table and Files In Scope | no |
| Certik - REP-Nerve_Finance_Core_Contracts-06_04_2021.pdf | Swap | unmatched — not counted | — | listed in scope table and Files In Scope | no |
| Certik - REP-Nerve_Finance_Core_Contracts-06_04_2021.pdf | SwapUtils | unmatched — not counted | — | listed in scope table and Files In Scope | no |
| Certik - REP-Nerve_Finance_Core_Contracts-06_04_2021.pdf | xNerve | unmatched — not counted | — | listed in scope table and Files In Scope | no |
| Certik - REP-Nerve_Finance_Core_Contracts-06_04_2021.pdf | ISwap | unmatched — not counted | — | listed in Files In Scope | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 21 |
| upstream | 0 |
| standard_library | 6 |
| needs_review | 45 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Address-book scope dispositions: 0 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 9 unmatched
- Matched-own operational status: 0 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=1
- Match method counts: n/a

Zero-match audit list:

- [20867] Certik - REP-Nerve_Finance_Core_Contracts-06_04_2021.pdf

Fork inheritance lineage and inherited audits are included when available.
