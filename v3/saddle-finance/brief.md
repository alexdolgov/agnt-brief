# Agentic Audit Brief: Saddle Finance

## Export Authority

- Production state: **published scope**
- Raw selected rows: 0 across 0 audit(s)
- Eligible audit results: 3 (0 matched; 3 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e9e09d06b414f9cd852c36a58d42ce16279465f2d9791cd2a8178f3f54b89ecd`

## Project Overview

- Project: Saddle Finance (`saddle-finance`)
- Website: [https://www.saddle.finance/](https://www.saddle.finance/)
- Lifecycle: unknown
- Generated: 2026-07-15T18:30:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: arbitrum, aurora, ethereum, fantom, kava, optimism
- Contract surface: 46 unique implementations (156 raw deployments)
- Coverage basis: not assessable — No confirmed own live-verified denominator is available.
- DeFi Llama TVL: $735,649.51
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## ⚠️ Limited Contract Surface

This brief covers only 1 contract implementation(s). The pipeline may not have discovered all deployed contracts for this project.
Coverage assessment and audit matching are based on this incomplete surface.

## Project Description

No contract logic was present for Saddle Finance in the closed normalized topography run; this brief does not infer a protocol purpose from missing code.

### Architecture

The activated project remains an explicit cohort member with an empty normalized logic-topography closure.

## Logic Topography

- Exact-run contract rows: 0
- Structural roles: none
- Contract kinds: none
- Detected standards: none
- Frameworks: none
- Upgradeable-pattern rows: 0

## Fork Analysis

0 of 1 contracts are derived from known codebases. 1 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0x3f8e527af4e0c6e763e8f368ac679c44c45626ae`, chain 1)

## Contract Surface Quality

- Logic-topography rows: 0; live-surface rows included: 0 (0 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 1/1 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: not assessable
- Coverage assessment: not_assessable (low confidence) — No confirmed own live-verified denominator is available.
- Address-book implementation classification: 1 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 45 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 5
- Confirmed-live implementations: 1 of 46 unique; 45 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 0/40
- Verified + Unaudited implementations: 40
- Verified by bytecode match: 0
- Unverified implementations: 6
- Unique implementations: 46
- Raw deployments: 156
- Audits discovered: 3 (3 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2020-12 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 3 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (40)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| Allowlist | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf5d2e84e816175dfb2c38bd7549d4bd37b1c0559` | ⚠️ Unaudited |
| AmplificationUtils | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x3661d0f70e7f3ec418321a57fd62d691a09b490b`; optimism `0x4f6a43ad7cba042606decaca730d4ce0a57ac62e`; arbitrum `0x4f6a43ad7cba042606decaca730d4ce0a57ac62e` | ⚠️ Unaudited |
| ArbitrumBridger | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc1f426d2b5151b139c0895b08c2310f7c804f1ad` | ⚠️ Unaudited |
| Bridge | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa5bd85ed9fa27ba23bfb702989e7218e44fd4706` | ⚠️ Unaudited |
| GaugeHelperContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8020e4134ad6a694adbe9521a12c751e67ce9861` | ⚠️ Unaudited |
| GenericERC20 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | 2 deployments: optimism `0x149bbb210051851016f57a2824c0444f642833a6`; optimism `0xeedb4e89e8032d04dfb3a33fd89344dddbe5ebde` | ⚠️ Unaudited |
| LPToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | 3 deployments: ethereum `0x59f5a371df7d2a01863cbb011a5a1ed45326710c`; optimism `0x2b7a5a5923eca5c00c6572cf3e8e08384f563f93`; arbitrum `0xc0409ec303b727bc1f511d7f8c71fd5ead96de1c` | ⚠️ Unaudited |
| MasterRegistry | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | 3 deployments: ethereum `0xc5ad17b98d7fe73b6dd3b0df5b3040457e68c045`; optimism `0x0e510c9b20a5d136e75f7fd2a5f344bd98f9d875`; arbitrum `0xab94a2c0d8f044aa439a5654f06b5797928396cf` | ⚠️ Unaudited |
| MathUtils | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc0409ec303b727bc1f511d7f8c71fd5ead96de1c` | ⚠️ Unaudited |
| MetaSwap | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 17 deployments: ethereum `0x1dcb69a2b9148c641a43f731fcee123e2be30bab`; ethereum `0x4568727f50c7246ded8c39214ed6ff3c157f080d`; ethereum `0x69baa0d7c2e864b74173922ca069ac79d3be1556`; ethereum `0x8b2db87142da4d5ecfa9b416e592df9155a38c2d`; ethereum `0x9ac17f026f0599f77b3513a0a35f0258b0ec77f3`; ethereum `0xa50f208efc277d5a03c991069939beacccda80d9`; ethereum `0xc765cd3d015626244ad63b5fb63a97c5634643b9`; ethereum `0xfb516cf3710fc6901f2266aaeb8834cf5e4e9558`; optimism `0x250184dddec6d38e28ac12b481c9016867226e9d`; optimism `0x9dc37020f261758871104f9d8b87e575ee45bc5a`; optimism `0xa9a84238098dc3d1529228e6c74dbe7ebdf117a5`; optimism `0xc55e8c79e5a6c3216d4023769559d06fa9a7732e`; optimism `0xe184f7e575a5beb8f2409e8e2218cd770ddda2a6`; arbitrum `0x5dd186f8809147f96d3ffc4508f3c82694e58c9c`; arbitrum `0xa5bd85ed9fa27ba23bfb702989e7218e44fd4706`; arbitrum `0xb2a2764d0dcab445e24f4b813be3f6ef8ae5f84d`; arbitrum `0xf8504e92428d65e56e495684a38f679c1b1dc30b` | ⚠️ Unaudited |
| MetaSwapDeposit | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 19 deployments: ethereum `0x04d8adaa0563e3c1cfe8295fed1f9c5e6ac9dba1`; ethereum `0x1e35ebf875f8a2185edf22da02e7dbca0f5558ab`; ethereum `0x401afbc31ad2a3bc0ed8960d63efcdea749b4849`; ethereum `0x4f0e41a37ce2ff1fa654cc93eb03f9d16e65fd11`; ethereum `0x500d0b10a85d9e03f87a5d2e59a681a6631dd6d0`; ethereum `0x7d6c760cbde5a9ad47510a86b9dcc58f9473cdd8`; ethereum `0x83f87e73148ee05f669293c2f90163b6d0d261ed`; ethereum `0xabf69cde7b3725c12b8703005342eb5dd8a95d61`; ethereum `0xe280efe654328a3325fc5a9eab8e998d418c86fb`; ethereum `0xe9154791883df07e1328b636bcedfccb80fefa38`; optimism `0x3a0c2a793a8db779e0293699d0ce77c77617fe0f`; optimism `0x3f1d224557afa4365155ea77ce4bc32d5dae2174`; optimism `0x88cc4aa0dd6cf126b00c012dda9f6f4fd9388b17`; optimism `0xb10ac31a6e613c6fcb5522c19f4bdbcffa94f89d`; optimism `0xdf815ea6b066ac9f3107d8863a6c19aa2a5d24d3`; arbitrum `0x18d2469a9788fafd0df277a0044da5ea637a3760`; arbitrum `0x1d434f50acf16ba013be3536e9a3cdb5d7d4e694`; arbitrum `0xc8dfcfc329e19fdaf43a338ad6038dba02a5079b`; arbitrum `0xdca5b16a96f984ffb2a3022cff339eb049126101` | ⚠️ Unaudited |
| MetaSwapUtils | unknown | non_address_book | non_address_book_inventory (excluded) | 3 | ethereum | n/a | 4 deployments: ethereum `0x0c8bae14c9f9bf2c953997c881befac7729fd314`; ethereum `0x3f1d224557afa4365155ea77ce4bc32d5dae2174`; ethereum `0x824dcd7b044d60df2e89b1bb888e66d8bcf41491`; ethereum `0x88cc4aa0dd6cf126b00c012dda9f6f4fd9388b17` | ⚠️ Unaudited |
| MetaSwapUtils | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 3 deployments: ethereum `0x505736d427c313cdecdbf72049eb944e53b3065b`; optimism `0xbea9f78090bdb9e662d8cb301a00ad09a5b756e9`; arbitrum `0x0c8bae14c9f9bf2c953997c881befac7729fd314` | ⚠️ Unaudited |
| MiniChefV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 3 deployments: ethereum `0x691ef79e40d909c715be5e9e93738b3ff7d58534`; optimism `0x220d6beedea6a6317dae19d39cd62eb7bb0ae5e4`; arbitrum `0x2069043d7556b1207a505eb459d18d908df29b55` | ⚠️ Unaudited |
| OptimismBridger | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xccfd60589f4e15a23ad326a5e2c2d871ed310152` | ⚠️ Unaudited |
| PermissionlessDeployer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 3 deployments: ethereum `0x8f43fbddc10b822afa26812fb9058ca1fc22078f`; optimism `0x293ded6b7d8d37bfe1e66aadbdec9f87fedbd37f`; arbitrum `0x0232e0b6df048c8cc4037c52bc90cf943c9c8cc6` | ⚠️ Unaudited |
| PermissionlessMetaSwap | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 3 deployments: ethereum `0xfb08672a5d4a302acb5830894a2f9ae804864570`; optimism `0x5224e52878ab1c6076402e5c98f018d109131351`; arbitrum `0x15179598d0a44593789a85727c32e55e4488441b` | ⚠️ Unaudited |
| PermissionlessMetaSwapFlashLoan | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x45b48cdaf18a3678eb6cceba3e8a87477a180d88`; ethereum `0x8b88685b3314cf6503aa835260355dc4c34cfb48` | ⚠️ Unaudited |
| PermissionlessSwap | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x04b58dc190da2e9b46a3f1ac94f6eca3b683c765`; optimism `0x08f8611b996bf2f0fd7523b54e69bfb92dd43a81`; arbitrum `0x21d4365834b7c61447e142ef6bcf01136cbd01c6` | ⚠️ Unaudited |
| PermissionlessSwapFlashLoan | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x10170a550d2865b9a23caa6c53a030d54233b972`; ethereum `0x47f507b2001a83047146b126ccd2222bf32f082d` | ⚠️ Unaudited |
| PoolRegistry | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 3 deployments: ethereum `0xfb4de84c4375d7c8577327153de88f58f69eec81`; optimism `0x4e1484607760118ebe2ab07c0c71f1b4d9671e01`; arbitrum `0x38262c17a06a6b3588d3e5b70dfa768c06bf4ef1` | ⚠️ Unaudited |
| RetroactiveVesting | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5dca270671935cf3df78bd8373c22be250198a03` | ⚠️ Unaudited |
| RewardForwarder | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 3 deployments: ethereum `0x811b699c69ff0abff98091919e637fedcd5dffac`; arbitrum `0x1ad1efd00708aa2ec7673e19deb43e096fbf11ee`; arbitrum `0xf428d446670d901ad6893fe2dbc77d42fcd20cb2` | ⚠️ Unaudited |
| RewardScheduler | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 5 deployments: arbitrum `0x25d1c2d67abe289c01b021f21aa952d01e7bd8da`; arbitrum `0x3440d335171232062e32adeb2a4daac21cc6f8c2`; arbitrum `0x6fe745b31f6e1deb1bf81ebd145dcc17d05eb539`; arbitrum `0x824dcd7b044d60df2e89b1bb888e66d8bcf41491`; arbitrum `0x9d7fccb3085f87298c365a59df9084f76fb93c0b` | ⚠️ Unaudited |
| SDL | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf1dc500fde233a4055e25e5bbf516372bc4f6871` | ⚠️ Unaudited |
| SimpleRewarder | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 5 deployments: ethereum `0x595cce097a57ceef0e8e9032d29c24b064318eb5`; ethereum `0xc09d3bb5c87e8a8b239cda9551279801a92c317f`; ethereum `0xe8e1a94f0c960d64e483ca9088a7ec52e77194c2`; arbitrum `0x1e35ebf875f8a2185edf22da02e7dbca0f5558ab`; arbitrum `0x492ebe7816b6934cc55f3001e1ac165a6c5afab0` | ⚠️ Unaudited |
| SmartWalletChecker | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x1085e85a7384dd2f0d46d2918630a1cf174b5853`; ethereum `0x4c6a2be3d64048a0624568f91720a8f3884ebfd8` | ⚠️ Unaudited |
| Swap | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x9dc37020f261758871104f9d8b87e575ee45bc5a`; ethereum `0xdb5c5a6162115ce9a188e7d773c4d011f421bbe5` | ⚠️ Unaudited |
| SwapCalculator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xef8af8b67a58fe795304be8593c44ac0d3a59033` | ⚠️ Unaudited |
| SwapDeployer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x29fd31d37ab8d27f11eab68f96424bf64231ffce`; ethereum `0x7003102c75587e8d29c56124060463ef319407d0`; ethereum `0xf6c2e0adc659007ba7c48446f5a4e4e94dfe08b5` | ⚠️ Unaudited |
| SwapFlashLoan | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 11 deployments: ethereum `0x13cc34aa8037f722405285ad2c82fe570bfa2bdc`; ethereum `0x2bff1b48cc01284416e681b099a0cddca0231d72`; ethereum `0x5847f8177221268d279cf377d0e01ab3fd993628`; ethereum `0x98d2afc66de1f73598c6cfa35cbdfebb135fb8fa`; ethereum `0xc68bf77e33f1df59d8247dd564da4c8c81519db6`; ethereum `0xccbe39ffc56915fd88e1aab58010d305441bab26`; optimism `0x5847f8177221268d279cf377d0e01ab3fd993628`; optimism `0xa500b0e1360462ef777804bcae6ce2bfb524dd2e`; optimism `0xf6c2e0adc659007ba7c48446f5a4e4e94dfe08b5`; arbitrum `0x401afbc31ad2a3bc0ed8960d63efcdea749b4849`; arbitrum `0xfeea4d1bacb0519e8f952460a70719944fe56ee0` | ⚠️ Unaudited |
| SwapMigrator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9cdef6e33687f438808766fc133b2e9d1a16ad57` | ⚠️ Unaudited |
| SwapUtils | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x149bbb210051851016f57a2824c0444f642833a6`; ethereum `0x2069043d7556b1207a505eb459d18d908df29b55`; optimism `0xcf70e2f3567ba396f3dd04822f78ecd70ba46894` | ⚠️ Unaudited |
| SwapUtils | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x2b7a5a5923eca5c00c6572cf3e8e08384f563f93`; ethereum `0x4f6a43ad7cba042606decaca730d4ce0a57ac62e` | ⚠️ Unaudited |
| SwapUtils | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | 2 deployments: arbitrum `0xbea9f78090bdb9e662d8cb301a00ad09a5b756e9`; arbitrum `0xcf70e2f3567ba396f3dd04822f78ecd70ba46894` | ⚠️ Unaudited |
| SynthSwapper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdf815ea6b066ac9f3107d8863a6c19aa2a5d24d3` | ⚠️ Unaudited |
| TetherToken | token | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdac17f958d2ee523a2206206994597c13d831ec7` | ⚠️ Unaudited |
| VeSDLRewards | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc7b10d3b08ceb05d8ff58a3c781225d9a72078ae` | ⚠️ Unaudited |
| Vesting | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf8504e92428d65e56e495684a38f679c1b1dc30b` | ⚠️ Unaudited |
| Vyper_contract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 23 deployments: ethereum `0x104f44551386d603217450822443456229f73ae4`; ethereum `0x13ba45c2b686c6db7c2e28bd3a9e8edd24b894ed`; ethereum `0x17bde8ebf1e9fda85b9bd1a104266b394e9db33e`; ethereum `0x2683190e31e8ce47467c98ff1dbc018acdd43c2f`; ethereum `0x358fe82370a1b9adae2e3ad69d6cf9e503c96018`; ethereum `0x3b35a3f9163cf5733837c5b51b1df493c340f8e3`; ethereum `0x3bd4130b83de1215df8611e2fbbe17187c823aa0`; ethereum `0x3dc88ee38db8c7b6dceb447e4348e51bd87ced93`; ethereum `0x6ec5dd7d8e396973588f0defd79dca04f844d57c`; ethereum `0x702c1b8ec3a77009d5898e18da8f8959b6df2093`; ethereum `0x7b2025bf8c5ee8baad9da8c3e3ee45e96ed8b8ea`; ethereum `0x8b701e9b3a1887fe9b0c7936a8233b39408e69f6`; ethereum `0x953693dcb2e9ddc0c1398c1b540b81b63cea5e16`; ethereum `0x99cb6c36816de2131ef2626bb5def7e5cc8b9b14`; ethereum `0x99d99a4aaa2f012d61369242ec581a1682d615de`; ethereum `0xa202acfae9a2d7ffbfc97a3cc096b6cd8c3567fd`; ethereum `0xab47edfc33ba5d5bc19fc7d2bcd093f99530bb3d`; ethereum `0xabd040a92d29cdc59837e79651bb2979ea66ce04`; ethereum `0xb2ac3382da625eb41fc803b57743f941a484e2a6`; ethereum `0xb79b4fcf7cb4a1c4064ff5b48f71a331880ab53a`; ethereum `0xc64f8a9fe7babeca66d3997c9d15558bf4817be3`; ethereum `0xc7a0e3a5952d4e8a45ebf5e7464c8fbc43f7d081`; ethereum `0xd2751cdbed54b87777e805be36670d7aeae73bb2` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (6)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-253448 | `0x3f8e527af4e0c6e763e8f368ac679c44c45626ae` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x50d745c2a2918a47a363a2d32becd6bbc1a53ece` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x529c59002b51f343a73ffed2a114b25ae8e698df` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9585a54297beaa83f044866678b13d388d0180bf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9980c9b35844946cf3451cc0b43d9b6501f4a96e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | kava | n/a | 3 deployments: fantom `0x7003102c75587e8d29c56124060463ef319407d0`; fantom `0xba684b8e05415726ee1ffe197eaf1b82e4d44418`; kava `0x3a0c2a793a8db779e0293699d0ce77c77617fe0f` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [10-29-2020_Certik.pdf](https://github.com/saddle-finance/saddle-audits/blob/master/10-29-2020_Certik.pdf) | CertiK | Audit | 2020-10 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 8 | high |
| [www.openzeppelin.com/news/saddle-contracts-audit](https://www.openzeppelin.com/news/saddle-contracts-audit) | OpenZeppelin | Audit | 2020-12 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 7 | high |
| [12-09-2020_Quantstamp.pdf](https://github.com/saddle-finance/saddle-audits/blob/master/12-09-2020_Quantstamp.pdf) | Quantstamp | Audit | 2020-12 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 8 | high |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [13800] 10-29-2020_Certik.pdf — no match: Scope table lists 8 contracts with file paths. Audit date from cover page.
- [13801] www.openzeppelin.com/news/saddle-contracts-audit — no match: Scope explicitly includes contracts inside /contracts folder, excluding helper and interfaces. All named contracts are within that folder.
- [13802] 12-09-2020_Quantstamp.pdf — no match: All contracts listed in the file signatures appendix and mentioned in findings are included. The audit date is from the report header: 'December 10th 2020'.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| 10-29-2020_Certik.pdf | Allowlist | unmatched — not counted | — | listed in scope table | no |
| 10-29-2020_Certik.pdf | CERC20 | unmatched — not counted | — | listed in scope table | no |
| 10-29-2020_Certik.pdf | LPToken | unmatched — not counted | — | listed in scope table | no |
| 10-29-2020_Certik.pdf | MathUtils | unmatched — not counted | — | listed in scope table | no |
| 10-29-2020_Certik.pdf | OwnerPausable | unmatched — not counted | — | listed in scope table | no |
| 10-29-2020_Certik.pdf | Swap | unmatched — not counted | — | listed in scope table | no |
| 10-29-2020_Certik.pdf | SwapUtils | unmatched — not counted | — | listed in scope table | no |
| 10-29-2020_Certik.pdf | StakeableTokenWrapper | unmatched — not counted | — | listed in scope table | no |
| www.openzeppelin.com/news/saddle-contracts-audit | Swap | unmatched — not counted | — | listed in scope | no |
| www.openzeppelin.com/news/saddle-contracts-audit | SwapUtils | unmatched — not counted | — | listed in scope | no |
| www.openzeppelin.com/news/saddle-contracts-audit | Allowlist | unmatched — not counted | — | mentioned in findings | no |
| www.openzeppelin.com/news/saddle-contracts-audit | LPToken | unmatched — not counted | — | mentioned in findings | no |
| www.openzeppelin.com/news/saddle-contracts-audit | OwnerPausable | unmatched — not counted | — | mentioned in findings | no |
| www.openzeppelin.com/news/saddle-contracts-audit | CERC20 | unmatched — not counted | — | mentioned in findings | no |
| www.openzeppelin.com/news/saddle-contracts-audit | CERC20Utils | unmatched — not counted | — | mentioned in findings | no |
| 12-09-2020_Quantstamp.pdf | Allowlist | unmatched — not counted | — | listed in scope table and findings | no |
| 12-09-2020_Quantstamp.pdf | CERC20 | unmatched — not counted | — | listed in scope table | no |
| 12-09-2020_Quantstamp.pdf | LPToken | unmatched — not counted | — | listed in scope table and findings | no |
| 12-09-2020_Quantstamp.pdf | MathUtils | unmatched — not counted | — | listed in scope table | no |
| 12-09-2020_Quantstamp.pdf | OwnerPausable | unmatched — not counted | — | listed in scope table | no |
| 12-09-2020_Quantstamp.pdf | StakeableTokenWrapper | unmatched — not counted | — | listed in scope table | no |
| 12-09-2020_Quantstamp.pdf | Swap | unmatched — not counted | — | listed in scope table and findings | no |
| 12-09-2020_Quantstamp.pdf | SwapUtils | unmatched — not counted | — | listed in scope table and findings | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 40 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 6 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 3
- Inherited remapped matches: 0
- Address-book scope dispositions: 0 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 23 unmatched
- Matched-own operational status: 0 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=3
- Match method counts: n/a

Zero-match audit list:

- [13800] 10-29-2020_Certik.pdf
- [13801] www.openzeppelin.com/news/saddle-contracts-audit
- [13802] 12-09-2020_Quantstamp.pdf

Fork inheritance lineage and inherited audits are included when available.
