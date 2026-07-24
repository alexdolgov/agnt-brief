# Agentic Audit Brief: Magpie Ecosystem

## Export Authority

- Production state: **published scope**
- Raw selected rows: 0 across 0 audit(s)
- Eligible audit results: 4 (0 matched; 4 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e40c73181a386361babecc6895e0f6c5587548f92814db09f88491f8b4a38d92`

## Project Overview

- Project: Magpie Ecosystem (`magpie-ecosystem`)
- Website: [https://link3.to/magpiexyz](https://link3.to/magpiexyz)
- Lifecycle: unknown
- Generated: 2026-07-24T14:10:00.000Z
- Pipeline run: brief-deployer-expansion-all-20260724-v1
- Chains: arbitrum, base, berachain, bsc, ethereum, hyperliquid, optimism, plasma, sonic
- Contract surface: 397 unique implementations (411 raw deployments)
- Coverage basis: 0/6 confirmed own live verified implementations (0.0%); conservative 0.0% with 0 needs-review implementation(s)
- DeFi Llama TVL: $16,621,913.00
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for Magpie Ecosystem. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 6 contract row(s) across arbitrum, base, berachain, bsc, ethereum, hyperliquid, optimism, plasma, sonic. Structural roles: 5 infra, 1 core. 5 row(s) use upgradeable patterns.

## Logic Topography

- Exact-run contract rows: 6
- Structural roles: infra (5), core (1)
- Contract kinds: contract (5), abstract (1)
- Detected standards: erc1967proxy (5), erc20 (1), erc20permit (1)
- Frameworks: openzeppelin (6), openzeppelin-upgradeable (1)
- Upgradeable-pattern rows: 5

## Fork Analysis

0 of 19 contracts are derived from known codebases. 19 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0x6591c09d924c02096a467c3d3f9e3c67d4cb8591`, chain 1)
- UnnamedContract (`0x9c60dbc8027ba32e5e29c941ae5286cbe683d65c`, chain 1)
- UnnamedContract (`0xbdf0b5e9df9d0e82197534f39c3582c4e79b746b`, chain 1)
- UnnamedContract (`0x5ff002f40975c866657c5325b0b921631d83ddfe`, chain 56)
- UnnamedContract (`0x6dc8ccf1b731e97834002e6ff45e4953bf9602de`, chain 56)
- UnnamedContract (`0x927093399edf88a93c65c9b9ac4e4a4b0acdbeaf`, chain 56)
- UnnamedContract (`0x94eb0e6800f10e22550e104ec04f98f043b6b3ad`, chain 56)
- UnnamedContract (`0xa39d4da722098c67bce113e7bfb3655a65f38c10`, chain 56)
- UnnamedContract (`0xf433c2a2d6facecdd9edd7b8ce9ceaab96f41866`, chain 56)
- UnnamedContract (`0x4b68de8396b8f11456d43bca03af1d628d8bb9ea`, chain 146)
- UnnamedContract (`0x69fa010dd27f9697b13641ac2f5f85cc2a4ca34a`, chain 999)
- UnnamedContract (`0xca27b9c894dacd41457f4dc8a9a061baf5308176`, chain 42161)
- UnnamedContract (`0xe868fd96be95a63ecf03261a0601c6c3a4132288`, chain 42161)
- BridgeToken (`0xa61f74247455a40b01b0559ff6274441fafa22a3`, chain 42161)
- MGP (`0xd06716e1ff2e492cc5034c2e81805562dd3b45fa`, chain 56)
- TransparentUpgradeableProxy (`0x9b69b06272980fa6bad9d88680a71e3c3beb32c6`, chain 56)
- TransparentUpgradeableProxy (`0xa3b615667cbd33cfc69843bf11fbb2a1d926bd46`, chain 56)
- TransparentUpgradeableProxy (`0x536599497ce6a35fc65c7503232fec71a84786b9`, chain 42161)
- TransparentUpgradeableProxy (`0x664cc2bcae1e057eb1ec379598c5b743ad9db6e7`, chain 42161)

## Contract Surface Quality

- Logic-topography rows: 6; live-surface rows included: 6 (6 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 19/19 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 0/6 (0.0%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 19 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 378 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 63
- Confirmed-live implementations: 19 of 397 unique; 378 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 0/84
- Verified + Unaudited implementations: 84
- Verified by bytecode match: 0
- Unverified implementations: 313
- Unique implementations: 397
- Raw deployments: 411
- Audits discovered: 4 (4 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2024-05 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 4 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (84)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| BabypieManager | governance | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0xe813ffa7932f2d182f0ae89254acfd0baa6e2df3` | ⚠️ Unaudited |
| BnbStaking | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x555ea72d7347e82c614c16f005fa91caf06dcb5a` | ⚠️ Unaudited |
| Buyback | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | `0x3b99a4177e3f430590a8473f353dd87a5a2e1bfc` | ⚠️ Unaudited |
| Cakepie | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x2b5d9adea07b590b638ffc165792b2c610eda649` | ⚠️ Unaudited |
| CakeToken | token | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 3 deployments: bsc `0x0e09fabb73bd3ade0a17ecc321fd13a19e81ce82`; bsc `0x46e358ce367d43bf10c03042324e8ac2f8b42cf4`; bsc `0xe17a478572d7ca33130b06e068afce6b9e7f978b` | ⚠️ Unaudited |
| ClisBNBLaunchPoolDistributor | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | `0x81a62b329cc8939494d8613f614171a9955a46e8` | ⚠️ Unaudited |
| EigenpieStaking | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x24db6717db1c75b9db6ea47164d8730b63875db7` | ⚠️ Unaudited |
| EigenpieWithdrawManager | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x98083e22d12497c1516d3c49e7cc6cd2cd9dcba4` | ⚠️ Unaudited |
| Hypervisor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 3 deployments: bsc `0x3685502ea3ea4175fb5cbb5344f74d2138a96708`; bsc `0xab092c47b23fba03ac1f0ec5f8e94110eb5fff22`; bsc `0xdf0b9b59e92a2554dedb6f6f4af6918d79dd54c4` | ⚠️ Unaudited |
| ICHIVault | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x885711bedd3d17949dfed5e77d5ab6e89c3dfc8c` | ⚠️ Unaudited |
| ListaAutoBuyback | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | `0xffd3a57e8db4f51fa01c72f06ff30bdfda9908e6` | ⚠️ Unaudited |
| ListaOFTAdapter | adapter | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x837cb07f6b8a98731856092457524ff37b25e7b3` | ⚠️ Unaudited |
| ListaRevenueDistributor | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | `0x34b504a5cf0ff41f8a480580533b6dda687fa3da` | ⚠️ Unaudited |
| ListaRush | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | `0x934c69e35ca3a2774cc0aa36f5632f1c39f3ac36` | ⚠️ Unaudited |
| ListaStaking | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | `0x76865d4bfa513a3dd7f8a9977f3dd71e8ab2ca97` | ⚠️ Unaudited |
| ListaToken | token | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xfceb31a79f71ac9cbdcf853519c1b12d379edc46` | ⚠️ Unaudited |
| ListaVault | core_logic | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | `0x307d13267f360f78005f476fa913f8848f30292a` | ⚠️ Unaudited |
| LpProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | `0x5a0e3291514f5f1797a0c7efefdac81eec70ec01` | ⚠️ Unaudited |
| MasterCakepie | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | `0x74165b89fd8e9b91a109a4e71662f27eeba61e98` | ⚠️ Unaudited |
| MasterChef | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 3 deployments: bsc `0x4e585c367dafa5db5e182a192e73f4e0900e764d`; bsc `0x73feaa1ee314f8c655e354234017be2193c9e24e`; bsc `0x91dc89a7d4c68adb622b51e402fedeb74ac3e756` | ⚠️ Unaudited |
| MasterListapie | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | `0xdd386880c277c3c27f604f4c35b029bae0340853` | ⚠️ Unaudited |
| MasterMagpie | unknown | project_anchor | own_supporting | 1 | bsc | unit-388772 | `0xa3b615667cbd33cfc69843bf11fbb2a1d926bd46` | ⚠️ Unaudited |
| MasterMagpie | unknown | project_anchor | own_supporting | 1 | arbitrum | unit-388770 | `0x664cc2bcae1e057eb1ec379598c5b743ad9db6e7` | ⚠️ Unaudited |
| MasterPenpie | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x16296859c15289731521f199f0a5f762df6347d0` | ⚠️ Unaudited |
| MasterPenpie | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | optimism | n/a | `0x3cbfc97f87f534b42bb58276b7b5dcad29e57eac` | ⚠️ Unaudited |
| MasterPenpie | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | `0xb35b3d118c0394e750b4b59d2a2f9307393cd5db` | ⚠️ Unaudited |
| MasterPenpie | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | sonic | n/a | `0x664cc2bcae1e057eb1ec379598c5b743ad9db6e7` | ⚠️ Unaudited |
| MasterPenpie | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | `0xc295087393c3ffc8aa46a8f6489ac93ce2dc6461` | ⚠️ Unaudited |
| MasterPenpie | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | plasma | n/a | `0x2cfedb9c62efb57a8bb8ec535f32731975d55243` | ⚠️ Unaudited |
| MasterPenpie | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | `0x0776c06907ce6ff3d9dbf84ba9b3422d7225942d` | ⚠️ Unaudited |
| MasterPenpie | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | berachain | n/a | `0x367e7a694b9be5339cd861f7ee200cb829cdef96` | ⚠️ Unaudited |
| MasterRadpie | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | `0x1b80eec9b25472c6119ead3b880976fa62e58453` | ⚠️ Unaudited |
| MasterRadpie | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | `0xc9cb578d613d729c3c4c8ef7d46cb814570f2baa` | ⚠️ Unaudited |
| mBTCProvider | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | `0x8a016f1896dc2939ffdbb60f6e42bcc245e2bb0b` | ⚠️ Unaudited |
| mCake | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | `0x581fa684d0ec11ccb46b1d92f1f24c8a3f95c0ca` | ⚠️ Unaudited |
| mCakeSV | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | `0x1d7928452009e03af2e3a2b5931d5d5876cb0c21` | ⚠️ Unaudited |
| MGP | unknown | project_anchor | own_supporting | 0 | bsc | unit-388766 | `0xd06716e1ff2e492cc5034c2e81805562dd3b45fa` | ⚠️ Unaudited |
| MintedERC20 | token | non_address_book | non_address_book_inventory (excluded) | 1 | sonic | n/a | `0xf1ef7d2d4c0c881cd634481e0586ed5d2871a74b` | ⚠️ Unaudited |
| mListaConvertor | adapter | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | `0xa606c8916501fc841e383710817666aaed8c68b3` | ⚠️ Unaudited |
| MLRTCCIPBridge | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | `0x42c614415cfb8c71bb28314f6d2a21d91c68f588` | ⚠️ Unaudited |
| mPendleConvertor | adapter | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x4bcc7c793534246bc18acd3737aa4897ff23b458` | ⚠️ Unaudited |
| mPendleOFT | token | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x83e817e1574e2201a005ec0f7e700ed5606f555e`; optimism `0xa3b615667cbd33cfc69843bf11fbb2a1d926bd46`; arbitrum `0xb688ba096b7bb75d7841e47163cd12d18b36a5bf` | ⚠️ Unaudited |
| mWOM | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | `0x509fd25ee2ac7833a017f17ee8a6fb4aaf947876` | ⚠️ Unaudited |
| mWomSV | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | `0x21804fb90593458630298f10a85094cb6d3b07db` | ⚠️ Unaudited |
| OptimismMintableERC20 | bridge_template | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 2 deployments: optimism `0xbc7b1ff1c6989f006a1185318ed4e7b5796e66e1`; base `0xa99f6e6785da0f5d6fb42495fe424bce029eeb3e` | ⚠️ Unaudited |
| Pair | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x04d6115703b0127888323f142b8046c7c13f857d` | ⚠️ Unaudited |
| PancakeFactory | registry | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xbcfccbde45ce874adcb698cc183debcf17952812` | ⚠️ Unaudited |
| PancakeRouter | adapter | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x05ff2b0db69458a0750badebc4f9e13add608c7f` | ⚠️ Unaudited |
| PancakeStableSwapLP | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xb2aa63f363196caba3154d4187949283f085a488` | ⚠️ Unaudited |
| PancakeStakingBNBChain | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | `0xb47b790076050423888cde9ebb2d5cb86544f327` | ⚠️ Unaudited |
| PendleMarketDepositHelper | core_logic | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x1c1fb35334290b5ff1bf7b4c09130885b10fc0f4` | ⚠️ Unaudited |
| PendleOFT | token | non_address_book | non_address_book_inventory (excluded) | 0 | plasma | n/a | `0x17bac5f906c9a0282ac06a59958d85796c831f24` | ⚠️ Unaudited |
| PendleStaking | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x6e799758cee75dae3d84e09d40dc416ecf713652` | ⚠️ Unaudited |
| PendleStakingSideChain | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | sonic | n/a | `0xf9619e8b01acc23fac7ee0aeb1258433b85814ec` | ⚠️ Unaudited |
| PendleStakingSideChain | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | `0x7a89614b596720d4d0f51a69d6c1d55db97e9aab` | ⚠️ Unaudited |
| PendleStakingSideChain | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | plasma | n/a | `0xfff28a2845aeb11394ed63ddfc62161af6310701` | ⚠️ Unaudited |
| PendleStakingSideChain | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | `0x6db96bbeb081d2a85e0954c252f2c1dc108b3f81` | ⚠️ Unaudited |
| PendleStakingSideChain | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | berachain | n/a | `0xc4a65a93dd6cd9717551ebe827e8baee025d1d7e` | ⚠️ Unaudited |
| PendleStakingSideChainBNB | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | `0x782d9d67feaa4d1cdf8222d9053c8cba1c3b7982` | ⚠️ Unaudited |
| PenpieOFT | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 3 deployments: ethereum `0x7dedbce5a2e31e4c75f87fea60bf796c17718715`; optimism `0xc4a65a93dd6cd9717551ebe827e8baee025d1d7e`; arbitrum `0x2ac2b254bc18cd4999f64773a966e4f4869c34ee` | ⚠️ Unaudited |
| PumpBTCProvider | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | `0xea44ddc58ec6b4902e19a353c554b6a4f32b9e6e` | ⚠️ Unaudited |
| RadiantStaking | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | `0xe05157aa8d14b8ed1d816d505b3d5deeb83ca131` | ⚠️ Unaudited |
| RadiantStaking | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | `0x18a192dfe0be1e5e9aa424738fdad800646283b2` | ⚠️ Unaudited |
| Radpie | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | `0x54bdbf3ce36f451ec61493236b8e6213ac87c0f6` | ⚠️ Unaudited |
| RadpiePoolHelper | core_logic | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | `0x4ade86667760f45cbd5255a5bc8b4c3a703dda7a` | ⚠️ Unaudited |
| SlisBNBProvider | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | `0xfd31e1c5e5571f8e7fe318f80888c1e6da97819b` | ⚠️ Unaudited |
| SmartChef | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 4 deployments: bsc `0x0c3d6892aa3b23811af3bd1bbea8b0740e8e4528`; bsc `0x2dcf4cdff4dd954683fe0a6123077f8a025b66cf`; bsc `0xa5137e08c48167e363be8ec42a68f4f54330964e`; bsc `0xce54ba909d23b9d4be0ff0d84e5ae83f0add8d9a` | ⚠️ Unaudited |
| StandardArbERC20 | token | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | `0x0c880f6761f1af8d9aa9c466984b80dab9a8c9e8` | ⚠️ Unaudited |
| SyrupBar | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x009cf7bc57584b7998236eff51b98a168dcea9b0` | ⚠️ Unaudited |
| TokenImplementation | token | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | `0x7b5eb3940021ec0e8e463d5dbb4b7b09a89ddf96` | ⚠️ Unaudited |
| TokenImplementation | token | project_anchor | own_supporting | 1 | arbitrum | unit-388769 | `0xa61f74247455a40b01b0559ff6274441fafa22a3` | ⚠️ Unaudited |
| VeLista | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | `0xd0c380d31db43cd291e2bbe2da2fd6dc877b87b3` | ⚠️ Unaudited |
| VeListaAutoCompounder | adapter | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | `0x9a0530a81c83d3b0dae720bf91c9254fecc3bf5e` | ⚠️ Unaudited |
| VeListaRewardsCourier | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | `0xca8d2451df68a9132fd9d30e8d354460642b72e9` | ⚠️ Unaudited |
| VLCakepie | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | `0x232594e7f0096ba7ddabcd8689cb0d994694eb26` | ⚠️ Unaudited |
| VLMGP | unknown | project_anchor | own_supporting | 1 | bsc | unit-388773 | `0x9b69b06272980fa6bad9d88680a71e3c3beb32c6` | ⚠️ Unaudited |
| VLMGP | unknown | project_anchor | own_supporting | 1 | arbitrum | unit-388771 | `0x536599497ce6a35fc65c7503232fec71a84786b9` | ⚠️ Unaudited |
| VLPenpie | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x4405c0b330db66dffc40c8bcc616e447505af0f8` | ⚠️ Unaudited |
| VLPenpie | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | optimism | n/a | `0x0af3ec6f9592c193196bef220bc0ce4d9311527d` | ⚠️ Unaudited |
| VLPenpie | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | `0xc61d3c70cfc9dedaa090fdd0760eb9291253feff` | ⚠️ Unaudited |
| VotingEscrowPendleMainchain | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4f30a9d41b80ecc5b94306ab4364951ae3170210` | ⚠️ Unaudited |
| WOFT | token | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0xff9c599d51c407a45d631c6e89cb047efb88aef6` | ⚠️ Unaudited |
| WombatStaking | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | `0x664cc2bcae1e057eb1ec379598c5b743ad9db6e7` | ⚠️ Unaudited |
| WombatStaking | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | `0x3cbfc97f87f534b42bb58276b7b5dcad29e57eac` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (313)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-388755 | `0x6591c09d924c02096a467c3d3f9e3c67d4cb8591` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-388756 | `0x9c60dbc8027ba32e5e29c941ae5286cbe683d65c` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-388757 | `0xbdf0b5e9df9d0e82197534f39c3582c4e79b746b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x0068358250759de8f50c83927c4a95847f4ccfd6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x01a6fcc74852088c72862c12c54f992720eb8281` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x01b39e969a76d2f7c9a8a81ecd1b2f7116b44e23` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x034f0ae5d952c2ffe4247d396010c50ce6929b37` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x03db750d6212c6a0bca9258e8cb7cf46dfd63067` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x0541eeef035709040728bedbfd7234298ba1806a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x05570c903a99f59e8f9913d4d628796bad7115c3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x05ac03faeb31c8102a29dc1fa4365dc9e18a4c9c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x061178fdfc399000c8023043f0f5b9578280d195` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x07d274a68393e8b8a2ccf19a2ce4ba3518735253` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x08bcb6030db9f3eb310b226ca94f9ab7a1540c5f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x0ad764098ff68b100d0976a8bcf2294b67669caa` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x0aeb6cd202b8482a71215c844341ea1f3f6571f0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x0aed860ca496600f6976219cb1acec435d7f4f3b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x0bebd707023d892d35548a992e79286e76b79478` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x0bfb1bd05e13b7757c26c839d9c385c8c8d8dad1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x0c9a0f426ff6243afccd821f4d1929ce5e8d15b5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x0d3190a79ee5bac60ea11d59b8e04a2b34c7a3cf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x0f4c128a811a0b0da2845634c736ff1d9f61d415` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x0fee401a16837b8a8c6c8b9f8d88744b5e36e05c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x1101ff0f0545f3e2ed54fd986814295356923dc3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x117b4a02d1bb3a32f4bf5cd6103e633b2b651063` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x11bf1122871e13c13466681022c74b496b59147a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x138288f20a4d7c22e2b3fbffbf3a45e7c69ddd59` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x143c8b6b1161dec945d1fb7c2ca13c3b1d164642` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x157c9a692ee99c39272856055957083a928ce299` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x15fc4e6417c74577dee27aaafb2e2c5806727ec2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x16c39b6ee97d3d92f570ad9403418e43ea0622a5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x1716ac5a34b46bc736f6f5c2d58661d5fbb47c73` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x18fce50936a7cbde5ced39de9c31307fe92164c4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x1afa1589a634be568d7872dcf1bbe6f79e11fad5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x1b19bc6394246d4795d16ceee9edc76b4d11b96e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x1b8b3ff07fefee784e3a5d208d34c12c6489d308` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x1bce7474a53d5860f70be98ab7a3b3d721418885` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x1c56ccf0727bac9d08494603da5d2594229a7cc4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x1cf9c6d475cdca67942d41b0a34bd9cb9d336c4d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x1dbc9a4d61c05a085cc290ead59d44dede792072` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x209003905c94a67f766cbea529d2d5e1b3f7741b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x2202a491752fee0e616f06a89e2ef416e2fcd7e9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x225cbcc20e53e781982bd4d77fa17e55e23194cf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x227716e5f6c59f961e091d35345b16ce09f6c867` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x2367f2da6fd39de6944218cc9ec706bcdc9a6918` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x24e5debbeba18237fdb65d0f6adfe73b4a0d0bd9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x2544be623743897b06d57707cf3016cccfd355a8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x2725d7336027773d7a958e10819a923dcd65aa57` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x2a66f6235294aadcb0c249ba22915e142af887dc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x2c3f3b829ce4c8579deb20e2487a4dfac9ad0339` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x2d24c9cb4f50f5ef7cae3511b353bfa34496162d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x2ea16e082ca50eb6017bbfcb967cc7c6e2b8fb5a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x2ed866ca9c33bf695c78af222d61bd4d9cb558d3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x2eedc4723b1ed2f24afcd9c0e3665061bd2d5642` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x2f9da64252015a36e595dc02e05bac65880a509e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x31d558b899461d6ea498c3c1664a150a19b87aaf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x334e4f80cc2985d0f8196cc562dd8aeddda1b704` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x337a7aa8b6d46bc3c0c556ca01736c1f11c38249` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x35718b08323e9a466b7378f91af63f9c8f05617d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x35c673a0a56edb743a8cf67bcd96d0eab8af4bbe` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x3605c70f8512f6c257bbe144e365f1a564db95b1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x3665d70c050ab2d46a3f5510db0c98658094d9c9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x36a7bd8a73aeba3a2a9769d6b69a762e75944c84` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x37db1ae9b24055d1f9fe973aea40b7eb2995d0bf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x383a3517c5d9259bcf43f4bf8612c6726b5b2130` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x39447351fe7939c064cdd9a258f22fc76233e28e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x397a486183cb6608a3ccd1c74b6a7f024439004b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x398df8ddefb25a4e0fb740b5ae7c716cd9ec2596` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x39d099f6a78c7cef7a527f55c921e7e1ee39716a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x3a0f552c0555468a9f8ab641fe44f5ba86208a9c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x3b239391c48f0b46d31d39f79dcf64d3575e6086` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x3b2ff473c2a10f7303230955a7fede931359ffb1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x3b778d2d502f5433f9f5cb9a1464ca5d141936bb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x3c161234622caf322e4f5363d46187eb3f010eb0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x3cd434f0a58018b87ef1d2436cb710ca46f0fc43` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x3e75d7edacc97645033ef8073d025069b0a0976d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x3f3e0a03a9e123e5861044d436862dfa1468cc10` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x4192ff5f1fefccbc446702117a48ac25fd1723b3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x419352db842b7f6f33dbf541d23938cffc181d1a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x420a16f03e7f623556ccee452d4caafe1fdde28b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x43a00b49af21185bf4584ad0e8f358819b75ea42` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x44388ef3bc730bde8670a3b4831281dd7e89c584` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x4510aa2b3efd13bbfd78c9bfde764f224ecc7f50` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x45575e5ccef6c784ae7ce28ccbef1fd6dcc1d92d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x45aac046bc656991c52cf25e783c6942425ce40c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x464bfb803adcf585a3fb683c8ccfe7e9908d5d57` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x46c5721dd7275ba19010a4f0e8febfdf6595be54` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x476884942cae0e33f44f67377216578179b9c576` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x47dbcae9c5a8eb4ed847fa9283c3e42457784a41` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x4b129861320ef46f22120fba558b28e1e46f5145` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x4b2d67bf25245783fc4c33a48962775437f9159c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x4c545d844aa9a2c5adf801f243ac490ea0ad3bff` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x4d9ed586a8490d227dafdbe520306fbae7a33430` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x4fd4b7ec5faf57d94c37379e11a02b2d47368ac3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x4fece6008177bcd410359f84167675fc0135ef65` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x510264a39dd2d270ca9467c86571e0c84c6827d2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x550206e612bffe9f9f0a8e38fa68f68e184a7f15` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x564fa71eabe7683af701d32f34421ecc118b1ebb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x56627826504e2cbdd7213e38089c2a4e6327204c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x57371fb9311a7a0d6c712e9ee154dc8a718490f6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x5763ddeb60c82684f3d0098aea5076c0da972ec7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x5784e62b4495c7cc4b09ccd3f206cc7128449ce0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x5860341cc63b05d74dad4716f5dbc447c2c7bb0f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x58fe0f18507dd331ddf91db9c111536d2a5c725a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x5aabbbe154c0afa072e313d46b29592936493b26` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x5be73ae431b344b1daa848d9220cc782aecdb971` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x5d52bcbf45c72f5fb8441959622c7e5dd4693736` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x5debc8917ef4f614b0998ddd8de7dd421fade245` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x5e9909b011f916c2256e857aa8802cbd17bd756a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x5ecc1d29e0daa11ede4087724922ea39e40627c4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x5faa44a3f92eab686f6ad1d1ad15a1995b20552e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x5fb5b240da0d267cb891f046d04d2a3c35804114` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-388761 | `0x5ff002f40975c866657c5325b0b921631d83ddfe` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x605356cc9f725e6744a51e78cd49e6029dcc4404` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x62dfec5c9518fe2e0ba483833d1bad94ecf68153` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x64dbd29ab153e7cf8806fb635ef95285e16480c6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x66de07893db7492b56ba88503b4cc99bab1796f3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x6c5285cb6c660bc08cf175f632131b06b213fc5e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x6c87876b15cbccedec81246af6dc58bd1109e98c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x6dc0abfdad33f01e847e45bcc9e0acb9dd119b5a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x6dc5523a381cfac859fc9df0df9099b188b01de3` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-388762 | `0x6dc8ccf1b731e97834002e6ff45e4953bf9602de` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x70035ebd0fd9b4ff28f4e8eddabc40d0ddcc6d6e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x7082528e908bfd0c42d2134fe7065457cfcfb755` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x7247ddb894c4dc6be9ea7328fcfef0a07e20f59d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x7320538c11182729d877fa61b800eccf8dc96a8c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x73538cce62901bd374ba314acefc6c49ebda0093` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x735f7af3b805d80de9bc2020c73f7272dee1e918` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x748f2a3816178ab4bdd4eb9c703588b2172ef905` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x74e17e6996f0ddafda9b500ab15a3ad7c2f69307` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x7628a53ec6f1132afe2f409fcb2b3061b5a7dcc0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x76e001bf7febeb37981cf2a116f0594ebeeb3d00` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x77c9b49a58325131d08f9dc120388f20c57c2572` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x77f452a594aa6bf1eb67ceedd941ff14ac070b95` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x79cfad1b5201cd0076208191f34b03497d30cc3f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x7ad627aeb610d3f82466d8f9e1b9a6e1c916da80` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x7c81da7a7a2603fa4481e5266fcdfe3ed1424954` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x7db21c0f1c05b04211682b908e09270d5a1c3ce7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x7dc9d0f14b0cd5ecdaa2453113727947d40c5ba0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x7ed71d43446c1dfcb6c43717a17a4edc1544eb2e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x81159173185c411ed61f6eb332d1a653bb1c866b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x81c4f1175fd355cf2c5651396af25eac98c8e6d5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x82c6fb65aa044bb8463068e30d1146beb08a4491` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x82f5bcd1473bda5794239d01073797093a413f02` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x83f861165bc61af54cab4be9a96c2b92e3a2ae5b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x8453cd3d1588e62d5e72a8bc16a8a0300a16005f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x84c4454d8a65e3ecdebd54446a45cd6b54b27190` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x873339a8214657175d9b128ddd57a2f2c23256fa` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x876cd9a380ee7712129b52f8293f6f06056c3104` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x87e994de2a997385aff4f991c233f07bb9f9070f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x88620f85ba52a186314471d8eef7f6fcfec4a2e6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x88a596f8c8290f96d5742ae0905f912dd5291c27` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x891a6041c43337a7d8c72a1b19535d221ce7df7f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x89a9bcd96931f8f4bad468d51083749d3dd3f2cf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x8a314300088ec75aaefc53b92f73819050182cc6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x8abb19d228d6cca2ce14cd43d5caca755d07ccda` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x8be9583e729ca39d3d50458fb59e4fe5ba222345` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x8f8075340ece10e74245d5f0e0e242500bafeee1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x908047528c0a4c9829875afb6b35d94aeb7aaa94` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x91419001e8ae28d43b982cc9931af4921c6ffe05` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-388763 | `0x927093399edf88a93c65c9b9ac4e4a4b0acdbeaf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x92cfb77a08c30f1c8db796f727fc2527e37a6393` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x946a68b29149f819fbce866ced3632e0c9f7c53b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x946e5c3d32d33128543b785a446b81eedbe74c05` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-388764 | `0x94eb0e6800f10e22550e104ec04f98f043b6b3ad` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x9534dd1290bc46cce1f140b163cfc3abb2d6a45f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x969130bc708e181e799c584bfbb31eaa71da4edf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x982d1db2d643ff4f497d5a4f566a565376ecf70c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x9881cfce5a072a107dcce7fd24e2c99b857c7e12` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x98a3ff86af8107abb40a706340b485e0b3e84c54` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x98b167359566c1ea05335d52794c7eb6f8e6739a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x9a819532e75b00ac8ca9e0c11f12cc87388c7856` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x9b4f67fb43180085ea26e348200027670eaf1e96` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x9b4fcbc3a01378b85d81defbaf9359155718be4a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x9b83f26e9626e81d8f7d059400c4e25ebd6cfb6c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x9b878823cf06fac1edb02b44eada8bb4274ab7ea` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x9ba88e6b20041750fd4e6271fea455f5d44063cb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x9ddd9bc74d1abab667097581fae6ee8dd3be5ff2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x9e4dfbec6f68c509d93756917ca4628739d06cb4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x9eb77a54a33069a319d91f493e6b1c9066fb38f7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x9f6c251c3122207adf561714c1171534b569eff4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xa3462713bdd1ed1a7f43f157ff04602f0e505281` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-388765 | `0xa39d4da722098c67bce113e7bfb3655a65f38c10` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xa3bce2def1823a551a407b14572c54d2adb0fd45` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xa5e8ea0cb5e355d8eb71de97ce762e962bcfffbf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xa65c40e6940062fd3e159ca2b50ed2ab1c4a218e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xa94aa72e033b39ad7cd448f38bc1eda5b52f7079` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xa97aed02f9cd1d59186b3883e23efe9f5e347900` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xaa4912633e4e2f65604fe7f6a6ba9eb5ef6d50d0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xaa57f36dd5ef2ac471863ec46277f976f272ec0c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xabdb46ba7b15ec01be368736bb7fe13ab209f4df` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xac6b7fe073996410a9c7fb3c879066d432d05996` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xac6d58a801f8ea7ebd4a97b56fe364ffb28d8460` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xad406ccf75f9e6216fa4349635b0cd77d0059b1f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xad9eaae95617c39019acc42301a1dca4ea5b6f65` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xadcc15ce3900a2fc8544e26fd89897c0484e98fc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xade6d976c0d8ce99ee4d15311960ed36b18bea2f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xae1951b7e977d99a45a3e4f67c0da99b525a4508` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xaf71337d151408401cc3a971e0a05c6d2790e08e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xb12ff6fd1885a9cb2b26302c98092644604b1e92` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xb162268aa2da5ff0da6f567d3539d63fb767a884` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xb18bf811d63d28858c46544493a6b0bd0388605c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xb1da312097c7cbf9b49ef9d29d21a0646d9a5af4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xb20a61434be17e2eb48035577f083706b6780e4f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xb35d0f744ddcd92763d37ab3c58716183a99055d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xb691624b69bbb23b8cc9847b5e8c151d75110ed4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xb7a58ab98b9c4d41038288d5090e4806a17f3978` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xb7a753f3776282976c1f2b0bcb2ff0d13d48af85` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xb7d76fca706ef87c51fa26aeb611312b8f90a4a4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xb894de45fdcc9f51f20cc8e648f241e5914f9c26` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xbaf8b40a1e2a7b842289778c1c509b6bede3cc03` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xbaff578d16c9b0fc3a668408517bec1f9a2fb0c1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xbbb2aaeb8c9da72bb7fadb42a9c84aacf26974fd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xbc019efcfb2d3cf39d1746ffc86d42b4f0b8d305` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xbc380e5542ce7be7418deb88c3d3e80efe570b82` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xbcb466546274404243d38bb509b6b339737a7245` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xbd13ab3f223354d85991b1e5847147ea2647c5f6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xc1d3a2f48f1c025f80e32a54a4000a73633cacef` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xc23d348f9cc86ddb059ec798e87e7f76fbc077c1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xc4857c08295cb9270feb0a87fd60b3bfd459a998` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xc4a8a6c81f79dc6218319ce68138e743b8edd830` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xc5b9e1b881acc4171222c88be3d30e3060a5e212` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xc6f28a668b7c18f921ccba4adc3d8db72bff0fe2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xc74efa6ced143ce5e362f9814b515595594fb7dd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xc952cc3d981baad5d4d041721e1e179e42e6e2d5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xc998f14f0692526824bfa3d299fd5cce04cee150` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xc9ca2376ae12e22dcb198eacb17e44168024ddd7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xca07db4b4390355dc3ed3a74dfab84fb5bf8ac38` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xcb8f70fbc3cecaff9a5d53236dcb4ef76bccd2d6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xcda44d50fa7a806372926e521e6dde34612c34b3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xcf95095394a4838a8ed3478fecf332dda978ecd3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xd06233c390f8522c993d61cbd260a7eef9544c6f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xd113dbb2f3463a0d290c47d4e9edfba9e9195a16` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xd1a6cc786c0976a6183ebd9386ed8730df366c18` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xd1eb8719c4b64d3a3fa1ba89e2c70ea5c99ab904` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xd1f81b39fa4e7c08546285e8e9c5f5fe683b001e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xd209d14e37ce53dabbef30d14d75eb2f10d75283` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xd4cfc52c5ec1fb0d5cbe184b4d6a140c146136b7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xd5d976511b66b74ca07e3fee4c4d0071d7c2aaa0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xd5e1b35d7dfb1b20546d3bb63aee3d8b7cc66870` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xd74508ab3bdbedaa6589f913e0f89d98b2ad2754` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xd7e33948e2a43e7c1ec2f19937bf5bf8bbf9bae8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xd84effd9d924d1a83c5b475e5afbc9b147064d97` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xda0e735578a2127c7daf589dd75709844e01be0a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xdace1c6e4451f330c4e35c32171fd66f86875057` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xdcfe50533fab1271e13a973260c2454e0412007e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xdd185c5d74daf067034b3498a0057ef38277a054` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xddc89c08fc8315526d50ca327c3695daf50ba274` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xdeb5985e45edcb44af736f7739ec00983239ceaa` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xdf2d4c43f45ac225abfde4a92f9ff950f517ae63` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xdf5a8e190cf63d74a4ec743253fa26d4c7539be8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xe31f0bce1f825a8e27f2cc30b54af19da2978f10` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xe3221bc1084efb5d43cf94cd8de6b32cf37feb85` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xe43fe85d8d1d4623b9e91c094beda7adbb14f520` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xe4f48754e85f2d24361741885098453e2077181f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xe514851e324b54f152f7d9631ace1a0a87248b46` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xe5248d557be6828c0703f957ebdccbab291dee78` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xe5c03cceb62262c7af8c85e8474c06fa3f43de08` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xe5dbfc7c6836335c16c4c4f5416a99f575c13d8d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xe61f4386608578199471747e4654ae450adee39a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xe6c1be26d4f1da814e106c5a26b74630616f79ed` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xe786ec5b4838410c24e5c1c75633d7c59705d6be` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xe859f3f6ee5532313c33a02283150e201290f45f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xe8f4644637f127aff11f9492f41269eb5e8b8dd2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xe93ce7b2df98e6b2b4f7e6700f348f24355f6173` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xe95eaf5b61558bf73195550149759ce53a82a0c6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xeb995ff652da728e7b0ebc31ab543c39e054b1ea` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xee00deb0900e91e3eb5b2281e916d91b86e5319b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xee3d6924e0b009937eb7a68565fdfd3ff4efc3cc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xee56eecd63999cc08a8dc77aaa29167fb8796dbb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xeed4af751a46afcd34dcec8997aabd62cc556410` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xefebddff8730871b72cdaf8793455f26a59fcf14` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xf09fef5e373c969e4631f139a91531c257e22889` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xf0fc2ded2f7dd1bfdad4008a9e0cd0248408e956` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xf19dc2b8acd55aa4e80583de3943260fa3a26a72` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xf1e177611ab50e6436e821ff357f1f9996fb191a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xf1f4d6e10b2b5f20270991a8a54c918e87bd8b22` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xf21b35edf7a927799b80f09c395c460c3d31d057` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xf2d56e8ec2171094ceed1d02c810ccb82e53ebc4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xf2fa32498305e6595e3d54dc41674d0fca207026` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xf3afd82a4071f272f403dc176916141f44e6c750` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xf40d0d497966fe198765877484fff08c2d2004ad` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-388767 | `0xf433c2a2d6facecdd9edd7b8ce9ceaab96f41866` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xf51c1d20c112aeb47a756ebfcd4789cf911abb7f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xf57a8cf44104ea0dfbe286781bd1f51533a659f3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xf5bd9b192092517d60e90c9af17b69b134c4d7f8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xf625b8ec0f018ebd20135f5d67d396567539386d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xf6ab5cfdb46357f37b0190b793fb199d62dcf504` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xf6dadf1210f7c22ad5bcba84b23cfd424a30313c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xf76d9cfd08df91491680313b1a5b44307129cda9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xf85d7c7baf867a97a91feb9583464b9d44d40a99` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xf87e703e1e090943e2c632957fc297356a377799` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xf8ca8d2b59a97125751af1069d4a5c4f7eb7a677` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xf8d1d8a862ea77bf4f826bf6612bff0d0883eafa` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xf8d76299a6d722ebd8b2ea00e20fef2f23a9460a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xf920018fc69515102b915a543dfefbc837c3f9e6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xf982b7b82dbf7d25330fc14e902abf9b01c79415` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xf9b24c9364457ea85792179d285855753549ebaa` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xfa5b482882f9e025faccce558c2f72c6c50ac719` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xfc0ef1b8c41f7b7a292decbe4c9d7783f938edfd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xfc136f286805a7922d9bf04317068964b231336c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xfd6b9cc40a30c1b57799db95e59c0b73e3aeb4ef` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xfe288198707d65e84390b59a844705d5c989525e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xfeb28443692216f66d14c7be4a449a765e2bdbac` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xff5ed1e64aca62c822b178ffa5c36b40c112eb00` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xff6f8ca13db1bec5becfaf208b1d3c942b63f955` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | sonic | unit-388758 | `0x4b68de8396b8f11456d43bca03af1d628d8bb9ea` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | hyperliquid | unit-388768 | `0x69fa010dd27f9697b13641ac2f5f85cc2a4ca34a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | plasma | n/a | `0x017778cacc60560f7eb48ef68680f8dd6d29cd7b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | plasma | n/a | `0x0d7432a9f5c51fdd2407332d90d9b814827982bf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | plasma | n/a | `0x647316ad62d70ca948436c369669493ff2482ee9` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-388759 | `0xca27b9c894dacd41457f4dc8a9a061baf5308176` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-388760 | `0xe868fd96be95a63ecf03261a0601c6c3a4132288` | ❓ Unverified |

## Deployer Expansion Inventory

These rows are additive inventory from `project_contracts.discovery_source=deployer_expansion`; they do not change scope matching, coverage, or logic topography in this brief.

- Source: `project_contracts.discovery_source=deployer_expansion`
- Decision run: `deployer-candidate-production-20260712`
- Total contracts: 294
- Live contracts: 0
- Unknown liveness contracts: 294
- Source-verified contracts: 0
- Currently scope-matched contracts retained as-is: 0
- Classification counts: unverified unclassified=294

Showing first 200 of 294 contracts. The complete deployer expansion list is in `brief.json`.

| Classification | Contract | Address-Book Class | Role | Liveness | Source | Decision | Deployer |
|---|---|---|---|---|---|---|---|
| unverified unclassified | UnnamedContract<br>`0x0068358250759de8f50c83927c4a95847f4ccfd6` | non_address_book | unknown | unknown | unverified | n/a | `0x89e68b97466c65e215c0b13de256188867f358ae` |
| unverified unclassified | UnnamedContract<br>`0x01a6fcc74852088c72862c12c54f992720eb8281` | non_address_book | unknown | unknown | unverified | n/a | `0x89e68b97466c65e215c0b13de256188867f358ae` |
| unverified unclassified | UnnamedContract<br>`0x01b39e969a76d2f7c9a8a81ecd1b2f7116b44e23` | non_address_book | unknown | unknown | unverified | n/a | `0x89e68b97466c65e215c0b13de256188867f358ae` |
| unverified unclassified | UnnamedContract<br>`0x034f0ae5d952c2ffe4247d396010c50ce6929b37` | non_address_book | unknown | unknown | unverified | n/a | `0x89e68b97466c65e215c0b13de256188867f358ae` |
| unverified unclassified | UnnamedContract<br>`0x03db750d6212c6a0bca9258e8cb7cf46dfd63067` | non_address_book | unknown | unknown | unverified | n/a | `0x89e68b97466c65e215c0b13de256188867f358ae` |
| unverified unclassified | UnnamedContract<br>`0x0541eeef035709040728bedbfd7234298ba1806a` | non_address_book | unknown | unknown | unverified | n/a | `0x89e68b97466c65e215c0b13de256188867f358ae` |
| unverified unclassified | UnnamedContract<br>`0x05570c903a99f59e8f9913d4d628796bad7115c3` | non_address_book | unknown | unknown | unverified | n/a | `0x89e68b97466c65e215c0b13de256188867f358ae` |
| unverified unclassified | UnnamedContract<br>`0x05ac03faeb31c8102a29dc1fa4365dc9e18a4c9c` | non_address_book | unknown | unknown | unverified | n/a | `0x89e68b97466c65e215c0b13de256188867f358ae` |
| unverified unclassified | UnnamedContract<br>`0x061178fdfc399000c8023043f0f5b9578280d195` | non_address_book | unknown | unknown | unverified | n/a | `0x89e68b97466c65e215c0b13de256188867f358ae` |
| unverified unclassified | UnnamedContract<br>`0x07d274a68393e8b8a2ccf19a2ce4ba3518735253` | non_address_book | unknown | unknown | unverified | n/a | `0x89e68b97466c65e215c0b13de256188867f358ae` |
| unverified unclassified | UnnamedContract<br>`0x08bcb6030db9f3eb310b226ca94f9ab7a1540c5f` | non_address_book | unknown | unknown | unverified | n/a | `0x89e68b97466c65e215c0b13de256188867f358ae` |
| unverified unclassified | UnnamedContract<br>`0x0ad764098ff68b100d0976a8bcf2294b67669caa` | non_address_book | unknown | unknown | unverified | n/a | `0x89e68b97466c65e215c0b13de256188867f358ae` |
| unverified unclassified | UnnamedContract<br>`0x0aeb6cd202b8482a71215c844341ea1f3f6571f0` | non_address_book | unknown | unknown | unverified | n/a | `0x89e68b97466c65e215c0b13de256188867f358ae` |
| unverified unclassified | UnnamedContract<br>`0x0aed860ca496600f6976219cb1acec435d7f4f3b` | non_address_book | unknown | unknown | unverified | n/a | `0x89e68b97466c65e215c0b13de256188867f358ae` |
| unverified unclassified | UnnamedContract<br>`0x0bebd707023d892d35548a992e79286e76b79478` | non_address_book | unknown | unknown | unverified | n/a | `0x89e68b97466c65e215c0b13de256188867f358ae` |
| unverified unclassified | UnnamedContract<br>`0x0bfb1bd05e13b7757c26c839d9c385c8c8d8dad1` | non_address_book | unknown | unknown | unverified | n/a | `0x89e68b97466c65e215c0b13de256188867f358ae` |
| unverified unclassified | UnnamedContract<br>`0x0c9a0f426ff6243afccd821f4d1929ce5e8d15b5` | non_address_book | unknown | unknown | unverified | n/a | `0x89e68b97466c65e215c0b13de256188867f358ae` |
| unverified unclassified | UnnamedContract<br>`0x0d3190a79ee5bac60ea11d59b8e04a2b34c7a3cf` | non_address_book | unknown | unknown | unverified | n/a | `0x89e68b97466c65e215c0b13de256188867f358ae` |
| unverified unclassified | UnnamedContract<br>`0x0f4c128a811a0b0da2845634c736ff1d9f61d415` | non_address_book | unknown | unknown | unverified | n/a | `0x89e68b97466c65e215c0b13de256188867f358ae` |
| unverified unclassified | UnnamedContract<br>`0x0fee401a16837b8a8c6c8b9f8d88744b5e36e05c` | non_address_book | unknown | unknown | unverified | n/a | `0x89e68b97466c65e215c0b13de256188867f358ae` |
| unverified unclassified | UnnamedContract<br>`0x1101ff0f0545f3e2ed54fd986814295356923dc3` | non_address_book | unknown | unknown | unverified | n/a | `0x89e68b97466c65e215c0b13de256188867f358ae` |
| unverified unclassified | UnnamedContract<br>`0x117b4a02d1bb3a32f4bf5cd6103e633b2b651063` | non_address_book | unknown | unknown | unverified | n/a | `0x89e68b97466c65e215c0b13de256188867f358ae` |
| unverified unclassified | UnnamedContract<br>`0x11bf1122871e13c13466681022c74b496b59147a` | non_address_book | unknown | unknown | unverified | n/a | `0x89e68b97466c65e215c0b13de256188867f358ae` |
| unverified unclassified | UnnamedContract<br>`0x138288f20a4d7c22e2b3fbffbf3a45e7c69ddd59` | non_address_book | unknown | unknown | unverified | n/a | `0x89e68b97466c65e215c0b13de256188867f358ae` |
| unverified unclassified | UnnamedContract<br>`0x143c8b6b1161dec945d1fb7c2ca13c3b1d164642` | non_address_book | unknown | unknown | unverified | n/a | `0x89e68b97466c65e215c0b13de256188867f358ae` |
| unverified unclassified | UnnamedContract<br>`0x157c9a692ee99c39272856055957083a928ce299` | non_address_book | unknown | unknown | unverified | n/a | `0x89e68b97466c65e215c0b13de256188867f358ae` |
| unverified unclassified | UnnamedContract<br>`0x15fc4e6417c74577dee27aaafb2e2c5806727ec2` | non_address_book | unknown | unknown | unverified | n/a | `0x89e68b97466c65e215c0b13de256188867f358ae` |
| unverified unclassified | UnnamedContract<br>`0x16c39b6ee97d3d92f570ad9403418e43ea0622a5` | non_address_book | unknown | unknown | unverified | n/a | `0x89e68b97466c65e215c0b13de256188867f358ae` |
| unverified unclassified | UnnamedContract<br>`0x1716ac5a34b46bc736f6f5c2d58661d5fbb47c73` | non_address_book | unknown | unknown | unverified | n/a | `0x89e68b97466c65e215c0b13de256188867f358ae` |
| unverified unclassified | UnnamedContract<br>`0x18fce50936a7cbde5ced39de9c31307fe92164c4` | non_address_book | unknown | unknown | unverified | n/a | `0x89e68b97466c65e215c0b13de256188867f358ae` |
| unverified unclassified | UnnamedContract<br>`0x1afa1589a634be568d7872dcf1bbe6f79e11fad5` | non_address_book | unknown | unknown | unverified | n/a | `0x89e68b97466c65e215c0b13de256188867f358ae` |
| unverified unclassified | UnnamedContract<br>`0x1b19bc6394246d4795d16ceee9edc76b4d11b96e` | non_address_book | unknown | unknown | unverified | n/a | `0x89e68b97466c65e215c0b13de256188867f358ae` |
| unverified unclassified | UnnamedContract<br>`0x1b8b3ff07fefee784e3a5d208d34c12c6489d308` | non_address_book | unknown | unknown | unverified | n/a | `0x89e68b97466c65e215c0b13de256188867f358ae` |
| unverified unclassified | UnnamedContract<br>`0x1bce7474a53d5860f70be98ab7a3b3d721418885` | non_address_book | unknown | unknown | unverified | n/a | `0x89e68b97466c65e215c0b13de256188867f358ae` |
| unverified unclassified | UnnamedContract<br>`0x1c56ccf0727bac9d08494603da5d2594229a7cc4` | non_address_book | unknown | unknown | unverified | n/a | `0x89e68b97466c65e215c0b13de256188867f358ae` |
| unverified unclassified | UnnamedContract<br>`0x1cf9c6d475cdca67942d41b0a34bd9cb9d336c4d` | non_address_book | unknown | unknown | unverified | n/a | `0x89e68b97466c65e215c0b13de256188867f358ae` |
| unverified unclassified | UnnamedContract<br>`0x1dbc9a4d61c05a085cc290ead59d44dede792072` | non_address_book | unknown | unknown | unverified | n/a | `0x89e68b97466c65e215c0b13de256188867f358ae` |
| unverified unclassified | UnnamedContract<br>`0x209003905c94a67f766cbea529d2d5e1b3f7741b` | non_address_book | unknown | unknown | unverified | n/a | `0x89e68b97466c65e215c0b13de256188867f358ae` |
| unverified unclassified | UnnamedContract<br>`0x2202a491752fee0e616f06a89e2ef416e2fcd7e9` | non_address_book | unknown | unknown | unverified | n/a | `0x89e68b97466c65e215c0b13de256188867f358ae` |
| unverified unclassified | UnnamedContract<br>`0x225cbcc20e53e781982bd4d77fa17e55e23194cf` | non_address_book | unknown | unknown | unverified | n/a | `0x89e68b97466c65e215c0b13de256188867f358ae` |
| unverified unclassified | UnnamedContract<br>`0x227716e5f6c59f961e091d35345b16ce09f6c867` | non_address_book | unknown | unknown | unverified | n/a | `0x89e68b97466c65e215c0b13de256188867f358ae` |
| unverified unclassified | UnnamedContract<br>`0x2367f2da6fd39de6944218cc9ec706bcdc9a6918` | non_address_book | unknown | unknown | unverified | n/a | `0x89e68b97466c65e215c0b13de256188867f358ae` |
| unverified unclassified | UnnamedContract<br>`0x24e5debbeba18237fdb65d0f6adfe73b4a0d0bd9` | non_address_book | unknown | unknown | unverified | n/a | `0x89e68b97466c65e215c0b13de256188867f358ae` |
| unverified unclassified | UnnamedContract<br>`0x2544be623743897b06d57707cf3016cccfd355a8` | non_address_book | unknown | unknown | unverified | n/a | `0x89e68b97466c65e215c0b13de256188867f358ae` |
| unverified unclassified | UnnamedContract<br>`0x2725d7336027773d7a958e10819a923dcd65aa57` | non_address_book | unknown | unknown | unverified | n/a | `0x89e68b97466c65e215c0b13de256188867f358ae` |
| unverified unclassified | UnnamedContract<br>`0x2a66f6235294aadcb0c249ba22915e142af887dc` | non_address_book | unknown | unknown | unverified | n/a | `0x89e68b97466c65e215c0b13de256188867f358ae` |
| unverified unclassified | UnnamedContract<br>`0x2c3f3b829ce4c8579deb20e2487a4dfac9ad0339` | non_address_book | unknown | unknown | unverified | n/a | `0x89e68b97466c65e215c0b13de256188867f358ae` |
| unverified unclassified | UnnamedContract<br>`0x2d24c9cb4f50f5ef7cae3511b353bfa34496162d` | non_address_book | unknown | unknown | unverified | n/a | `0x89e68b97466c65e215c0b13de256188867f358ae` |
| unverified unclassified | UnnamedContract<br>`0x2ea16e082ca50eb6017bbfcb967cc7c6e2b8fb5a` | non_address_book | unknown | unknown | unverified | n/a | `0x89e68b97466c65e215c0b13de256188867f358ae` |
| unverified unclassified | UnnamedContract<br>`0x2ed866ca9c33bf695c78af222d61bd4d9cb558d3` | non_address_book | unknown | unknown | unverified | n/a | `0xcc65d823266fdf9eeb8dbde2c2e494492ac64a88` |
| unverified unclassified | UnnamedContract<br>`0x2eedc4723b1ed2f24afcd9c0e3665061bd2d5642` | non_address_book | unknown | unknown | unverified | n/a | `0x89e68b97466c65e215c0b13de256188867f358ae` |
| unverified unclassified | UnnamedContract<br>`0x2f9da64252015a36e595dc02e05bac65880a509e` | non_address_book | unknown | unknown | unverified | n/a | `0x89e68b97466c65e215c0b13de256188867f358ae` |
| unverified unclassified | UnnamedContract<br>`0x31d558b899461d6ea498c3c1664a150a19b87aaf` | non_address_book | unknown | unknown | unverified | n/a | `0x89e68b97466c65e215c0b13de256188867f358ae` |
| unverified unclassified | UnnamedContract<br>`0x334e4f80cc2985d0f8196cc562dd8aeddda1b704` | non_address_book | unknown | unknown | unverified | n/a | `0x89e68b97466c65e215c0b13de256188867f358ae` |
| unverified unclassified | UnnamedContract<br>`0x337a7aa8b6d46bc3c0c556ca01736c1f11c38249` | non_address_book | unknown | unknown | unverified | n/a | `0x89e68b97466c65e215c0b13de256188867f358ae` |
| unverified unclassified | UnnamedContract<br>`0x35718b08323e9a466b7378f91af63f9c8f05617d` | non_address_book | unknown | unknown | unverified | n/a | `0x89e68b97466c65e215c0b13de256188867f358ae` |
| unverified unclassified | UnnamedContract<br>`0x35c673a0a56edb743a8cf67bcd96d0eab8af4bbe` | non_address_book | unknown | unknown | unverified | n/a | `0x89e68b97466c65e215c0b13de256188867f358ae` |
| unverified unclassified | UnnamedContract<br>`0x3605c70f8512f6c257bbe144e365f1a564db95b1` | non_address_book | unknown | unknown | unverified | n/a | `0x89e68b97466c65e215c0b13de256188867f358ae` |
| unverified unclassified | UnnamedContract<br>`0x3665d70c050ab2d46a3f5510db0c98658094d9c9` | non_address_book | unknown | unknown | unverified | n/a | `0x89e68b97466c65e215c0b13de256188867f358ae` |
| unverified unclassified | UnnamedContract<br>`0x36a7bd8a73aeba3a2a9769d6b69a762e75944c84` | non_address_book | unknown | unknown | unverified | n/a | `0x89e68b97466c65e215c0b13de256188867f358ae` |
| unverified unclassified | UnnamedContract<br>`0x37db1ae9b24055d1f9fe973aea40b7eb2995d0bf` | non_address_book | unknown | unknown | unverified | n/a | `0x89e68b97466c65e215c0b13de256188867f358ae` |
| unverified unclassified | UnnamedContract<br>`0x383a3517c5d9259bcf43f4bf8612c6726b5b2130` | non_address_book | unknown | unknown | unverified | n/a | `0x89e68b97466c65e215c0b13de256188867f358ae` |
| unverified unclassified | UnnamedContract<br>`0x397a486183cb6608a3ccd1c74b6a7f024439004b` | non_address_book | unknown | unknown | unverified | n/a | `0x89e68b97466c65e215c0b13de256188867f358ae` |
| unverified unclassified | UnnamedContract<br>`0x398df8ddefb25a4e0fb740b5ae7c716cd9ec2596` | non_address_book | unknown | unknown | unverified | n/a | `0x89e68b97466c65e215c0b13de256188867f358ae` |
| unverified unclassified | UnnamedContract<br>`0x39d099f6a78c7cef7a527f55c921e7e1ee39716a` | non_address_book | unknown | unknown | unverified | n/a | `0x89e68b97466c65e215c0b13de256188867f358ae` |
| unverified unclassified | UnnamedContract<br>`0x3a0f552c0555468a9f8ab641fe44f5ba86208a9c` | non_address_book | unknown | unknown | unverified | n/a | `0x89e68b97466c65e215c0b13de256188867f358ae` |
| unverified unclassified | UnnamedContract<br>`0x3b239391c48f0b46d31d39f79dcf64d3575e6086` | non_address_book | unknown | unknown | unverified | n/a | `0x89e68b97466c65e215c0b13de256188867f358ae` |
| unverified unclassified | UnnamedContract<br>`0x3b2ff473c2a10f7303230955a7fede931359ffb1` | non_address_book | unknown | unknown | unverified | n/a | `0x89e68b97466c65e215c0b13de256188867f358ae` |
| unverified unclassified | UnnamedContract<br>`0x3b778d2d502f5433f9f5cb9a1464ca5d141936bb` | non_address_book | unknown | unknown | unverified | n/a | `0x89e68b97466c65e215c0b13de256188867f358ae` |
| unverified unclassified | UnnamedContract<br>`0x3c161234622caf322e4f5363d46187eb3f010eb0` | non_address_book | unknown | unknown | unverified | n/a | `0x89e68b97466c65e215c0b13de256188867f358ae` |
| unverified unclassified | UnnamedContract<br>`0x3cd434f0a58018b87ef1d2436cb710ca46f0fc43` | non_address_book | unknown | unknown | unverified | n/a | `0x89e68b97466c65e215c0b13de256188867f358ae` |
| unverified unclassified | UnnamedContract<br>`0x3e75d7edacc97645033ef8073d025069b0a0976d` | non_address_book | unknown | unknown | unverified | n/a | `0x89e68b97466c65e215c0b13de256188867f358ae` |
| unverified unclassified | UnnamedContract<br>`0x3f3e0a03a9e123e5861044d436862dfa1468cc10` | non_address_book | unknown | unknown | unverified | n/a | `0x89e68b97466c65e215c0b13de256188867f358ae` |
| unverified unclassified | UnnamedContract<br>`0x4192ff5f1fefccbc446702117a48ac25fd1723b3` | non_address_book | unknown | unknown | unverified | n/a | `0x89e68b97466c65e215c0b13de256188867f358ae` |
| unverified unclassified | UnnamedContract<br>`0x419352db842b7f6f33dbf541d23938cffc181d1a` | non_address_book | unknown | unknown | unverified | n/a | `0x89e68b97466c65e215c0b13de256188867f358ae` |
| unverified unclassified | UnnamedContract<br>`0x420a16f03e7f623556ccee452d4caafe1fdde28b` | non_address_book | unknown | unknown | unverified | n/a | `0x89e68b97466c65e215c0b13de256188867f358ae` |
| unverified unclassified | UnnamedContract<br>`0x43a00b49af21185bf4584ad0e8f358819b75ea42` | non_address_book | unknown | unknown | unverified | n/a | `0x89e68b97466c65e215c0b13de256188867f358ae` |
| unverified unclassified | UnnamedContract<br>`0x44388ef3bc730bde8670a3b4831281dd7e89c584` | non_address_book | unknown | unknown | unverified | n/a | `0x89e68b97466c65e215c0b13de256188867f358ae` |
| unverified unclassified | UnnamedContract<br>`0x4510aa2b3efd13bbfd78c9bfde764f224ecc7f50` | non_address_book | unknown | unknown | unverified | n/a | `0x89e68b97466c65e215c0b13de256188867f358ae` |
| unverified unclassified | UnnamedContract<br>`0x45575e5ccef6c784ae7ce28ccbef1fd6dcc1d92d` | non_address_book | unknown | unknown | unverified | n/a | `0x89e68b97466c65e215c0b13de256188867f358ae` |
| unverified unclassified | UnnamedContract<br>`0x45aac046bc656991c52cf25e783c6942425ce40c` | non_address_book | unknown | unknown | unverified | n/a | `0x89e68b97466c65e215c0b13de256188867f358ae` |
| unverified unclassified | UnnamedContract<br>`0x464bfb803adcf585a3fb683c8ccfe7e9908d5d57` | non_address_book | unknown | unknown | unverified | n/a | `0x89e68b97466c65e215c0b13de256188867f358ae` |
| unverified unclassified | UnnamedContract<br>`0x46c5721dd7275ba19010a4f0e8febfdf6595be54` | non_address_book | unknown | unknown | unverified | n/a | `0x89e68b97466c65e215c0b13de256188867f358ae` |
| unverified unclassified | UnnamedContract<br>`0x476884942cae0e33f44f67377216578179b9c576` | non_address_book | unknown | unknown | unverified | n/a | `0x89e68b97466c65e215c0b13de256188867f358ae` |
| unverified unclassified | UnnamedContract<br>`0x47dbcae9c5a8eb4ed847fa9283c3e42457784a41` | non_address_book | unknown | unknown | unverified | n/a | `0x89e68b97466c65e215c0b13de256188867f358ae` |
| unverified unclassified | UnnamedContract<br>`0x4b129861320ef46f22120fba558b28e1e46f5145` | non_address_book | unknown | unknown | unverified | n/a | `0x89e68b97466c65e215c0b13de256188867f358ae` |
| unverified unclassified | UnnamedContract<br>`0x4b2d67bf25245783fc4c33a48962775437f9159c` | non_address_book | unknown | unknown | unverified | n/a | `0x89e68b97466c65e215c0b13de256188867f358ae` |
| unverified unclassified | UnnamedContract<br>`0x4c545d844aa9a2c5adf801f243ac490ea0ad3bff` | non_address_book | unknown | unknown | unverified | n/a | `0x89e68b97466c65e215c0b13de256188867f358ae` |
| unverified unclassified | UnnamedContract<br>`0x4d9ed586a8490d227dafdbe520306fbae7a33430` | non_address_book | unknown | unknown | unverified | n/a | `0x89e68b97466c65e215c0b13de256188867f358ae` |
| unverified unclassified | UnnamedContract<br>`0x4fd4b7ec5faf57d94c37379e11a02b2d47368ac3` | non_address_book | unknown | unknown | unverified | n/a | `0x89e68b97466c65e215c0b13de256188867f358ae` |
| unverified unclassified | UnnamedContract<br>`0x4fece6008177bcd410359f84167675fc0135ef65` | non_address_book | unknown | unknown | unverified | n/a | `0x89e68b97466c65e215c0b13de256188867f358ae` |
| unverified unclassified | UnnamedContract<br>`0x510264a39dd2d270ca9467c86571e0c84c6827d2` | non_address_book | unknown | unknown | unverified | n/a | `0x89e68b97466c65e215c0b13de256188867f358ae` |
| unverified unclassified | UnnamedContract<br>`0x550206e612bffe9f9f0a8e38fa68f68e184a7f15` | non_address_book | unknown | unknown | unverified | n/a | `0x89e68b97466c65e215c0b13de256188867f358ae` |
| unverified unclassified | UnnamedContract<br>`0x564fa71eabe7683af701d32f34421ecc118b1ebb` | non_address_book | unknown | unknown | unverified | n/a | `0x89e68b97466c65e215c0b13de256188867f358ae` |
| unverified unclassified | UnnamedContract<br>`0x56627826504e2cbdd7213e38089c2a4e6327204c` | non_address_book | unknown | unknown | unverified | n/a | `0x89e68b97466c65e215c0b13de256188867f358ae` |
| unverified unclassified | UnnamedContract<br>`0x57371fb9311a7a0d6c712e9ee154dc8a718490f6` | non_address_book | unknown | unknown | unverified | n/a | `0x89e68b97466c65e215c0b13de256188867f358ae` |
| unverified unclassified | UnnamedContract<br>`0x5763ddeb60c82684f3d0098aea5076c0da972ec7` | non_address_book | unknown | unknown | unverified | n/a | `0x89e68b97466c65e215c0b13de256188867f358ae` |
| unverified unclassified | UnnamedContract<br>`0x5784e62b4495c7cc4b09ccd3f206cc7128449ce0` | non_address_book | unknown | unknown | unverified | n/a | `0x89e68b97466c65e215c0b13de256188867f358ae` |
| unverified unclassified | UnnamedContract<br>`0x5860341cc63b05d74dad4716f5dbc447c2c7bb0f` | non_address_book | unknown | unknown | unverified | n/a | `0x89e68b97466c65e215c0b13de256188867f358ae` |
| unverified unclassified | UnnamedContract<br>`0x58fe0f18507dd331ddf91db9c111536d2a5c725a` | non_address_book | unknown | unknown | unverified | n/a | `0x89e68b97466c65e215c0b13de256188867f358ae` |
| unverified unclassified | UnnamedContract<br>`0x5aabbbe154c0afa072e313d46b29592936493b26` | non_address_book | unknown | unknown | unverified | n/a | `0x89e68b97466c65e215c0b13de256188867f358ae` |
| unverified unclassified | UnnamedContract<br>`0x5be73ae431b344b1daa848d9220cc782aecdb971` | non_address_book | unknown | unknown | unverified | n/a | `0x89e68b97466c65e215c0b13de256188867f358ae` |
| unverified unclassified | UnnamedContract<br>`0x5d52bcbf45c72f5fb8441959622c7e5dd4693736` | non_address_book | unknown | unknown | unverified | n/a | `0x89e68b97466c65e215c0b13de256188867f358ae` |
| unverified unclassified | UnnamedContract<br>`0x5debc8917ef4f614b0998ddd8de7dd421fade245` | non_address_book | unknown | unknown | unverified | n/a | `0x89e68b97466c65e215c0b13de256188867f358ae` |
| unverified unclassified | UnnamedContract<br>`0x5e9909b011f916c2256e857aa8802cbd17bd756a` | non_address_book | unknown | unknown | unverified | n/a | `0x89e68b97466c65e215c0b13de256188867f358ae` |
| unverified unclassified | UnnamedContract<br>`0x5ecc1d29e0daa11ede4087724922ea39e40627c4` | non_address_book | unknown | unknown | unverified | n/a | `0x89e68b97466c65e215c0b13de256188867f358ae` |
| unverified unclassified | UnnamedContract<br>`0x5faa44a3f92eab686f6ad1d1ad15a1995b20552e` | non_address_book | unknown | unknown | unverified | n/a | `0x89e68b97466c65e215c0b13de256188867f358ae` |
| unverified unclassified | UnnamedContract<br>`0x5fb5b240da0d267cb891f046d04d2a3c35804114` | non_address_book | unknown | unknown | unverified | n/a | `0x89e68b97466c65e215c0b13de256188867f358ae` |
| unverified unclassified | UnnamedContract<br>`0x605356cc9f725e6744a51e78cd49e6029dcc4404` | non_address_book | unknown | unknown | unverified | n/a | `0x89e68b97466c65e215c0b13de256188867f358ae` |
| unverified unclassified | UnnamedContract<br>`0x62dfec5c9518fe2e0ba483833d1bad94ecf68153` | non_address_book | unknown | unknown | unverified | n/a | `0x89e68b97466c65e215c0b13de256188867f358ae` |
| unverified unclassified | UnnamedContract<br>`0x64dbd29ab153e7cf8806fb635ef95285e16480c6` | non_address_book | unknown | unknown | unverified | n/a | `0x89e68b97466c65e215c0b13de256188867f358ae` |
| unverified unclassified | UnnamedContract<br>`0x66de07893db7492b56ba88503b4cc99bab1796f3` | non_address_book | unknown | unknown | unverified | n/a | `0x89e68b97466c65e215c0b13de256188867f358ae` |
| unverified unclassified | UnnamedContract<br>`0x6c5285cb6c660bc08cf175f632131b06b213fc5e` | non_address_book | unknown | unknown | unverified | n/a | `0x89e68b97466c65e215c0b13de256188867f358ae` |
| unverified unclassified | UnnamedContract<br>`0x6c87876b15cbccedec81246af6dc58bd1109e98c` | non_address_book | unknown | unknown | unverified | n/a | `0x89e68b97466c65e215c0b13de256188867f358ae` |
| unverified unclassified | UnnamedContract<br>`0x6dc0abfdad33f01e847e45bcc9e0acb9dd119b5a` | non_address_book | unknown | unknown | unverified | n/a | `0x89e68b97466c65e215c0b13de256188867f358ae` |
| unverified unclassified | UnnamedContract<br>`0x6dc5523a381cfac859fc9df0df9099b188b01de3` | non_address_book | unknown | unknown | unverified | n/a | `0x89e68b97466c65e215c0b13de256188867f358ae` |
| unverified unclassified | UnnamedContract<br>`0x7082528e908bfd0c42d2134fe7065457cfcfb755` | non_address_book | unknown | unknown | unverified | n/a | `0x89e68b97466c65e215c0b13de256188867f358ae` |
| unverified unclassified | UnnamedContract<br>`0x7247ddb894c4dc6be9ea7328fcfef0a07e20f59d` | non_address_book | unknown | unknown | unverified | n/a | `0x89e68b97466c65e215c0b13de256188867f358ae` |
| unverified unclassified | UnnamedContract<br>`0x7320538c11182729d877fa61b800eccf8dc96a8c` | non_address_book | unknown | unknown | unverified | n/a | `0x89e68b97466c65e215c0b13de256188867f358ae` |
| unverified unclassified | UnnamedContract<br>`0x73538cce62901bd374ba314acefc6c49ebda0093` | non_address_book | unknown | unknown | unverified | n/a | `0x89e68b97466c65e215c0b13de256188867f358ae` |
| unverified unclassified | UnnamedContract<br>`0x735f7af3b805d80de9bc2020c73f7272dee1e918` | non_address_book | unknown | unknown | unverified | n/a | `0x89e68b97466c65e215c0b13de256188867f358ae` |
| unverified unclassified | UnnamedContract<br>`0x748f2a3816178ab4bdd4eb9c703588b2172ef905` | non_address_book | unknown | unknown | unverified | n/a | `0xcc65d823266fdf9eeb8dbde2c2e494492ac64a88` |
| unverified unclassified | UnnamedContract<br>`0x74e17e6996f0ddafda9b500ab15a3ad7c2f69307` | non_address_book | unknown | unknown | unverified | n/a | `0x89e68b97466c65e215c0b13de256188867f358ae` |
| unverified unclassified | UnnamedContract<br>`0x7628a53ec6f1132afe2f409fcb2b3061b5a7dcc0` | non_address_book | unknown | unknown | unverified | n/a | `0x89e68b97466c65e215c0b13de256188867f358ae` |
| unverified unclassified | UnnamedContract<br>`0x76e001bf7febeb37981cf2a116f0594ebeeb3d00` | non_address_book | unknown | unknown | unverified | n/a | `0x89e68b97466c65e215c0b13de256188867f358ae` |
| unverified unclassified | UnnamedContract<br>`0x77c9b49a58325131d08f9dc120388f20c57c2572` | non_address_book | unknown | unknown | unverified | n/a | `0x89e68b97466c65e215c0b13de256188867f358ae` |
| unverified unclassified | UnnamedContract<br>`0x77f452a594aa6bf1eb67ceedd941ff14ac070b95` | non_address_book | unknown | unknown | unverified | n/a | `0x89e68b97466c65e215c0b13de256188867f358ae` |
| unverified unclassified | UnnamedContract<br>`0x79cfad1b5201cd0076208191f34b03497d30cc3f` | non_address_book | unknown | unknown | unverified | n/a | `0x89e68b97466c65e215c0b13de256188867f358ae` |
| unverified unclassified | UnnamedContract<br>`0x7ad627aeb610d3f82466d8f9e1b9a6e1c916da80` | non_address_book | unknown | unknown | unverified | n/a | `0x89e68b97466c65e215c0b13de256188867f358ae` |
| unverified unclassified | UnnamedContract<br>`0x7c81da7a7a2603fa4481e5266fcdfe3ed1424954` | non_address_book | unknown | unknown | unverified | n/a | `0x89e68b97466c65e215c0b13de256188867f358ae` |
| unverified unclassified | UnnamedContract<br>`0x7db21c0f1c05b04211682b908e09270d5a1c3ce7` | non_address_book | unknown | unknown | unverified | n/a | `0x89e68b97466c65e215c0b13de256188867f358ae` |
| unverified unclassified | UnnamedContract<br>`0x7dc9d0f14b0cd5ecdaa2453113727947d40c5ba0` | non_address_book | unknown | unknown | unverified | n/a | `0x89e68b97466c65e215c0b13de256188867f358ae` |
| unverified unclassified | UnnamedContract<br>`0x7ed71d43446c1dfcb6c43717a17a4edc1544eb2e` | non_address_book | unknown | unknown | unverified | n/a | `0x89e68b97466c65e215c0b13de256188867f358ae` |
| unverified unclassified | UnnamedContract<br>`0x81159173185c411ed61f6eb332d1a653bb1c866b` | non_address_book | unknown | unknown | unverified | n/a | `0x89e68b97466c65e215c0b13de256188867f358ae` |
| unverified unclassified | UnnamedContract<br>`0x81c4f1175fd355cf2c5651396af25eac98c8e6d5` | non_address_book | unknown | unknown | unverified | n/a | `0x89e68b97466c65e215c0b13de256188867f358ae` |
| unverified unclassified | UnnamedContract<br>`0x82c6fb65aa044bb8463068e30d1146beb08a4491` | non_address_book | unknown | unknown | unverified | n/a | `0x89e68b97466c65e215c0b13de256188867f358ae` |
| unverified unclassified | UnnamedContract<br>`0x82f5bcd1473bda5794239d01073797093a413f02` | non_address_book | unknown | unknown | unverified | n/a | `0x89e68b97466c65e215c0b13de256188867f358ae` |
| unverified unclassified | UnnamedContract<br>`0x83f861165bc61af54cab4be9a96c2b92e3a2ae5b` | non_address_book | unknown | unknown | unverified | n/a | `0x89e68b97466c65e215c0b13de256188867f358ae` |
| unverified unclassified | UnnamedContract<br>`0x8453cd3d1588e62d5e72a8bc16a8a0300a16005f` | non_address_book | unknown | unknown | unverified | n/a | `0x89e68b97466c65e215c0b13de256188867f358ae` |
| unverified unclassified | UnnamedContract<br>`0x84c4454d8a65e3ecdebd54446a45cd6b54b27190` | non_address_book | unknown | unknown | unverified | n/a | `0x89e68b97466c65e215c0b13de256188867f358ae` |
| unverified unclassified | UnnamedContract<br>`0x873339a8214657175d9b128ddd57a2f2c23256fa` | non_address_book | unknown | unknown | unverified | n/a | `0x89e68b97466c65e215c0b13de256188867f358ae` |
| unverified unclassified | UnnamedContract<br>`0x876cd9a380ee7712129b52f8293f6f06056c3104` | non_address_book | unknown | unknown | unverified | n/a | `0x89e68b97466c65e215c0b13de256188867f358ae` |
| unverified unclassified | UnnamedContract<br>`0x87e994de2a997385aff4f991c233f07bb9f9070f` | non_address_book | unknown | unknown | unverified | n/a | `0x89e68b97466c65e215c0b13de256188867f358ae` |
| unverified unclassified | UnnamedContract<br>`0x88620f85ba52a186314471d8eef7f6fcfec4a2e6` | non_address_book | unknown | unknown | unverified | n/a | `0x89e68b97466c65e215c0b13de256188867f358ae` |
| unverified unclassified | UnnamedContract<br>`0x88a596f8c8290f96d5742ae0905f912dd5291c27` | non_address_book | unknown | unknown | unverified | n/a | `0x89e68b97466c65e215c0b13de256188867f358ae` |
| unverified unclassified | UnnamedContract<br>`0x891a6041c43337a7d8c72a1b19535d221ce7df7f` | non_address_book | unknown | unknown | unverified | n/a | `0x89e68b97466c65e215c0b13de256188867f358ae` |
| unverified unclassified | UnnamedContract<br>`0x89a9bcd96931f8f4bad468d51083749d3dd3f2cf` | non_address_book | unknown | unknown | unverified | n/a | `0x89e68b97466c65e215c0b13de256188867f358ae` |
| unverified unclassified | UnnamedContract<br>`0x8a314300088ec75aaefc53b92f73819050182cc6` | non_address_book | unknown | unknown | unverified | n/a | `0x89e68b97466c65e215c0b13de256188867f358ae` |
| unverified unclassified | UnnamedContract<br>`0x8abb19d228d6cca2ce14cd43d5caca755d07ccda` | non_address_book | unknown | unknown | unverified | n/a | `0x89e68b97466c65e215c0b13de256188867f358ae` |
| unverified unclassified | UnnamedContract<br>`0x8be9583e729ca39d3d50458fb59e4fe5ba222345` | non_address_book | unknown | unknown | unverified | n/a | `0x89e68b97466c65e215c0b13de256188867f358ae` |
| unverified unclassified | UnnamedContract<br>`0x8f8075340ece10e74245d5f0e0e242500bafeee1` | non_address_book | unknown | unknown | unverified | n/a | `0x89e68b97466c65e215c0b13de256188867f358ae` |
| unverified unclassified | UnnamedContract<br>`0x908047528c0a4c9829875afb6b35d94aeb7aaa94` | non_address_book | unknown | unknown | unverified | n/a | `0x89e68b97466c65e215c0b13de256188867f358ae` |
| unverified unclassified | UnnamedContract<br>`0x91419001e8ae28d43b982cc9931af4921c6ffe05` | non_address_book | unknown | unknown | unverified | n/a | `0x89e68b97466c65e215c0b13de256188867f358ae` |
| unverified unclassified | UnnamedContract<br>`0x92cfb77a08c30f1c8db796f727fc2527e37a6393` | non_address_book | unknown | unknown | unverified | n/a | `0x89e68b97466c65e215c0b13de256188867f358ae` |
| unverified unclassified | UnnamedContract<br>`0x946a68b29149f819fbce866ced3632e0c9f7c53b` | non_address_book | unknown | unknown | unverified | n/a | `0x89e68b97466c65e215c0b13de256188867f358ae` |
| unverified unclassified | UnnamedContract<br>`0x946e5c3d32d33128543b785a446b81eedbe74c05` | non_address_book | unknown | unknown | unverified | n/a | `0x89e68b97466c65e215c0b13de256188867f358ae` |
| unverified unclassified | UnnamedContract<br>`0x9534dd1290bc46cce1f140b163cfc3abb2d6a45f` | non_address_book | unknown | unknown | unverified | n/a | `0x89e68b97466c65e215c0b13de256188867f358ae` |
| unverified unclassified | UnnamedContract<br>`0x969130bc708e181e799c584bfbb31eaa71da4edf` | non_address_book | unknown | unknown | unverified | n/a | `0x89e68b97466c65e215c0b13de256188867f358ae` |
| unverified unclassified | UnnamedContract<br>`0x982d1db2d643ff4f497d5a4f566a565376ecf70c` | non_address_book | unknown | unknown | unverified | n/a | `0x89e68b97466c65e215c0b13de256188867f358ae` |
| unverified unclassified | UnnamedContract<br>`0x9881cfce5a072a107dcce7fd24e2c99b857c7e12` | non_address_book | unknown | unknown | unverified | n/a | `0x89e68b97466c65e215c0b13de256188867f358ae` |
| unverified unclassified | UnnamedContract<br>`0x98a3ff86af8107abb40a706340b485e0b3e84c54` | non_address_book | unknown | unknown | unverified | n/a | `0x89e68b97466c65e215c0b13de256188867f358ae` |
| unverified unclassified | UnnamedContract<br>`0x98b167359566c1ea05335d52794c7eb6f8e6739a` | non_address_book | unknown | unknown | unverified | n/a | `0x89e68b97466c65e215c0b13de256188867f358ae` |
| unverified unclassified | UnnamedContract<br>`0x9a819532e75b00ac8ca9e0c11f12cc87388c7856` | non_address_book | unknown | unknown | unverified | n/a | `0x89e68b97466c65e215c0b13de256188867f358ae` |
| unverified unclassified | UnnamedContract<br>`0x9b4f67fb43180085ea26e348200027670eaf1e96` | non_address_book | unknown | unknown | unverified | n/a | `0x89e68b97466c65e215c0b13de256188867f358ae` |
| unverified unclassified | UnnamedContract<br>`0x9b4fcbc3a01378b85d81defbaf9359155718be4a` | non_address_book | unknown | unknown | unverified | n/a | `0x89e68b97466c65e215c0b13de256188867f358ae` |
| unverified unclassified | UnnamedContract<br>`0x9b83f26e9626e81d8f7d059400c4e25ebd6cfb6c` | non_address_book | unknown | unknown | unverified | n/a | `0x89e68b97466c65e215c0b13de256188867f358ae` |
| unverified unclassified | UnnamedContract<br>`0x9b878823cf06fac1edb02b44eada8bb4274ab7ea` | non_address_book | unknown | unknown | unverified | n/a | `0x89e68b97466c65e215c0b13de256188867f358ae` |
| unverified unclassified | UnnamedContract<br>`0x9ba88e6b20041750fd4e6271fea455f5d44063cb` | non_address_book | unknown | unknown | unverified | n/a | `0x89e68b97466c65e215c0b13de256188867f358ae` |
| unverified unclassified | UnnamedContract<br>`0x9ddd9bc74d1abab667097581fae6ee8dd3be5ff2` | non_address_book | unknown | unknown | unverified | n/a | `0x89e68b97466c65e215c0b13de256188867f358ae` |
| unverified unclassified | UnnamedContract<br>`0x9e4dfbec6f68c509d93756917ca4628739d06cb4` | non_address_book | unknown | unknown | unverified | n/a | `0x89e68b97466c65e215c0b13de256188867f358ae` |
| unverified unclassified | UnnamedContract<br>`0x9eb77a54a33069a319d91f493e6b1c9066fb38f7` | non_address_book | unknown | unknown | unverified | n/a | `0x89e68b97466c65e215c0b13de256188867f358ae` |
| unverified unclassified | UnnamedContract<br>`0x9f6c251c3122207adf561714c1171534b569eff4` | non_address_book | unknown | unknown | unverified | n/a | `0x89e68b97466c65e215c0b13de256188867f358ae` |
| unverified unclassified | UnnamedContract<br>`0xa3462713bdd1ed1a7f43f157ff04602f0e505281` | non_address_book | unknown | unknown | unverified | n/a | `0x89e68b97466c65e215c0b13de256188867f358ae` |
| unverified unclassified | UnnamedContract<br>`0xa3bce2def1823a551a407b14572c54d2adb0fd45` | non_address_book | unknown | unknown | unverified | n/a | `0x89e68b97466c65e215c0b13de256188867f358ae` |
| unverified unclassified | UnnamedContract<br>`0xa5e8ea0cb5e355d8eb71de97ce762e962bcfffbf` | non_address_book | unknown | unknown | unverified | n/a | `0x89e68b97466c65e215c0b13de256188867f358ae` |
| unverified unclassified | UnnamedContract<br>`0xa65c40e6940062fd3e159ca2b50ed2ab1c4a218e` | non_address_book | unknown | unknown | unverified | n/a | `0x89e68b97466c65e215c0b13de256188867f358ae` |
| unverified unclassified | UnnamedContract<br>`0xa94aa72e033b39ad7cd448f38bc1eda5b52f7079` | non_address_book | unknown | unknown | unverified | n/a | `0x89e68b97466c65e215c0b13de256188867f358ae` |
| unverified unclassified | UnnamedContract<br>`0xa97aed02f9cd1d59186b3883e23efe9f5e347900` | non_address_book | unknown | unknown | unverified | n/a | `0x89e68b97466c65e215c0b13de256188867f358ae` |
| unverified unclassified | UnnamedContract<br>`0xaa4912633e4e2f65604fe7f6a6ba9eb5ef6d50d0` | non_address_book | unknown | unknown | unverified | n/a | `0x89e68b97466c65e215c0b13de256188867f358ae` |
| unverified unclassified | UnnamedContract<br>`0xaa57f36dd5ef2ac471863ec46277f976f272ec0c` | non_address_book | unknown | unknown | unverified | n/a | `0x89e68b97466c65e215c0b13de256188867f358ae` |
| unverified unclassified | UnnamedContract<br>`0xabdb46ba7b15ec01be368736bb7fe13ab209f4df` | non_address_book | unknown | unknown | unverified | n/a | `0x89e68b97466c65e215c0b13de256188867f358ae` |
| unverified unclassified | UnnamedContract<br>`0xac6b7fe073996410a9c7fb3c879066d432d05996` | non_address_book | unknown | unknown | unverified | n/a | `0x89e68b97466c65e215c0b13de256188867f358ae` |
| unverified unclassified | UnnamedContract<br>`0xac6d58a801f8ea7ebd4a97b56fe364ffb28d8460` | non_address_book | unknown | unknown | unverified | n/a | `0x89e68b97466c65e215c0b13de256188867f358ae` |
| unverified unclassified | UnnamedContract<br>`0xad406ccf75f9e6216fa4349635b0cd77d0059b1f` | non_address_book | unknown | unknown | unverified | n/a | `0x89e68b97466c65e215c0b13de256188867f358ae` |
| unverified unclassified | UnnamedContract<br>`0xad9eaae95617c39019acc42301a1dca4ea5b6f65` | non_address_book | unknown | unknown | unverified | n/a | `0x89e68b97466c65e215c0b13de256188867f358ae` |
| unverified unclassified | UnnamedContract<br>`0xadcc15ce3900a2fc8544e26fd89897c0484e98fc` | non_address_book | unknown | unknown | unverified | n/a | `0x89e68b97466c65e215c0b13de256188867f358ae` |
| unverified unclassified | UnnamedContract<br>`0xade6d976c0d8ce99ee4d15311960ed36b18bea2f` | non_address_book | unknown | unknown | unverified | n/a | `0x89e68b97466c65e215c0b13de256188867f358ae` |
| unverified unclassified | UnnamedContract<br>`0xae1951b7e977d99a45a3e4f67c0da99b525a4508` | non_address_book | unknown | unknown | unverified | n/a | `0x89e68b97466c65e215c0b13de256188867f358ae` |
| unverified unclassified | UnnamedContract<br>`0xaf71337d151408401cc3a971e0a05c6d2790e08e` | non_address_book | unknown | unknown | unverified | n/a | `0x89e68b97466c65e215c0b13de256188867f358ae` |
| unverified unclassified | UnnamedContract<br>`0xb12ff6fd1885a9cb2b26302c98092644604b1e92` | non_address_book | unknown | unknown | unverified | n/a | `0x89e68b97466c65e215c0b13de256188867f358ae` |
| unverified unclassified | UnnamedContract<br>`0xb162268aa2da5ff0da6f567d3539d63fb767a884` | non_address_book | unknown | unknown | unverified | n/a | `0x89e68b97466c65e215c0b13de256188867f358ae` |
| unverified unclassified | UnnamedContract<br>`0xb18bf811d63d28858c46544493a6b0bd0388605c` | non_address_book | unknown | unknown | unverified | n/a | `0x89e68b97466c65e215c0b13de256188867f358ae` |
| unverified unclassified | UnnamedContract<br>`0xb1da312097c7cbf9b49ef9d29d21a0646d9a5af4` | non_address_book | unknown | unknown | unverified | n/a | `0x89e68b97466c65e215c0b13de256188867f358ae` |
| unverified unclassified | UnnamedContract<br>`0xb20a61434be17e2eb48035577f083706b6780e4f` | non_address_book | unknown | unknown | unverified | n/a | `0x89e68b97466c65e215c0b13de256188867f358ae` |
| unverified unclassified | UnnamedContract<br>`0xb35d0f744ddcd92763d37ab3c58716183a99055d` | non_address_book | unknown | unknown | unverified | n/a | `0x89e68b97466c65e215c0b13de256188867f358ae` |
| unverified unclassified | UnnamedContract<br>`0xb691624b69bbb23b8cc9847b5e8c151d75110ed4` | non_address_book | unknown | unknown | unverified | n/a | `0x89e68b97466c65e215c0b13de256188867f358ae` |
| unverified unclassified | UnnamedContract<br>`0xb7a58ab98b9c4d41038288d5090e4806a17f3978` | non_address_book | unknown | unknown | unverified | n/a | `0x89e68b97466c65e215c0b13de256188867f358ae` |
| unverified unclassified | UnnamedContract<br>`0xb7a753f3776282976c1f2b0bcb2ff0d13d48af85` | non_address_book | unknown | unknown | unverified | n/a | `0x89e68b97466c65e215c0b13de256188867f358ae` |
| unverified unclassified | UnnamedContract<br>`0xb7d76fca706ef87c51fa26aeb611312b8f90a4a4` | non_address_book | unknown | unknown | unverified | n/a | `0x89e68b97466c65e215c0b13de256188867f358ae` |
| unverified unclassified | UnnamedContract<br>`0xb894de45fdcc9f51f20cc8e648f241e5914f9c26` | non_address_book | unknown | unknown | unverified | n/a | `0x89e68b97466c65e215c0b13de256188867f358ae` |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [PeckShield-Audit-Report-Cakepie-v1.0.pdf](https://github.com/peckshield/publications/blob/master/audit_reports/PeckShield-Audit-Report-Cakepie-v1.0.pdf) | PeckShield | Audit | 2023-12 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 5 | high |
| [blocksec_cakepie_v1.0-signed.pdf](https://github.com/blocksecteam/audit-reports/blob/main/solidity/blocksec_cakepie_v1.0-signed.pdf) | unknown | Audit | 2023-11 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 2 | high |
| [PeckShield-Audit-Report-Eigenpie-v1.0.pdf](https://github.com/peckshield/publications/blob/master/audit_reports/PeckShield-Audit-Report-Eigenpie-v1.0.pdf) | PeckShield | Audit | 2024-05 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 3 | high |
| [PeckShield-Audit-Report-Magpie-v1.1.pdf](https://github.com/peckshield/publications/blob/master/audit_reports/PeckShield-Audit-Report-Magpie-v1.1.pdf) | PeckShield | Audit | 2022-10 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 5 | high |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [3561] PeckShield-Audit-Report-Cakepie-v1.0.pdf — no match: Audit report explicitly lists excluded contracts (MasterCakepie.sol, CakeRush.sol, mCake.sol) and covers all other contracts in the repository. The five contracts named in findings are the ones explicitly assessed.
- [3562] blocksec_cakepie_v1.0-signed.pdf — no match: Scope section explicitly states only CakeRush.sol and PancakeStakingBNBChain.sol are in scope.
- [3563] PeckShield-Audit-Report-Eigenpie-v1.0.pdf — no match: Contracts explicitly named as targets in findings: EigenpieWithdrawManager, NodeDelegator, and EigenpieConfig (mentioned in trust issue). No file paths provided.
- [3564] PeckShield-Audit-Report-Magpie-v1.1.pdf — no match: Contracts extracted from findings targets and scope description. No explicit scope table, but contracts are clearly identified as audit targets.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| PeckShield-Audit-Report-Cakepie-v1.0.pdf | CakepieBribeRewardDistributor | unmatched — not counted | — | Target in finding PVE-001 | no |
| PeckShield-Audit-Report-Cakepie-v1.0.pdf | PancakeV3Helper | unmatched — not counted | — | Target in finding PVE-002 | no |
| PeckShield-Audit-Report-Cakepie-v1.0.pdf | RewardDistributor | unmatched — not counted | — | Target in finding PVE-003 | no |
| PeckShield-Audit-Report-Cakepie-v1.0.pdf | PancakeStakingBaseUpg | unmatched — not counted | — | Example in finding PVE-004 | no |
| PeckShield-Audit-Report-Cakepie-v1.0.pdf | TransparentUpgradeableproxy | ambiguous — not counted | TransparentUpgradeableProxy (proxy) (alternative) `0xa3b615667cbd33cfc69843bf11fbb2a1d926bd46` — deployed 2022-10-19 17:44:15+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0x9b69b06272980fa6bad9d88680a71e3c3beb32c6` — deployed 2022-10-29 14:48:55+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0x536599497ce6a35fc65c7503232fec71a84786b9` — deployed 2023-04-03 05:54:17+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0x664cc2bcae1e057eb1ec379598c5b743ad9db6e7` — deployed 2023-04-03 05:48:29+03 — liveness: live (current_address_book_code) | bare standard proxy-shell name is not deployment identity; normalized_full_corpus:project_anchor:matcher_anchor | no |
| blocksec_cakepie_v1.0-signed.pdf | CakeRush | unmatched — not counted | — | explicitly listed in scope section 1.1 | no |
| blocksec_cakepie_v1.0-signed.pdf | PancakeStakingBNBChain | unmatched — not counted | — | explicitly listed in scope section 1.1 | no |
| PeckShield-Audit-Report-Eigenpie-v1.0.pdf | EigenpieWithdrawManager | unmatched — not counted | — | Listed as target in findings PVE-001 and PVE-002 | no |
| PeckShield-Audit-Report-Eigenpie-v1.0.pdf | NodeDelegator | unmatched — not counted | — | Listed as target in finding PVE-003 | no |
| PeckShield-Audit-Report-Eigenpie-v1.0.pdf | EigenpieConfig | unmatched — not counted | — | Mentioned in finding PVE-004 as example of privileged operations | no |
| PeckShield-Audit-Report-Magpie-v1.1.pdf | WombatStaking | unmatched — not counted | — | Target in findings PVE-001, PVE-002, PVE-006, PVE-007 | no |
| PeckShield-Audit-Report-Magpie-v1.1.pdf | WombatPoolHelper | unmatched — not counted | — | Target in finding PVE-002 | no |
| PeckShield-Audit-Report-Magpie-v1.1.pdf | MasterMagpie | ambiguous — not counted | TransparentUpgradeableProxy (proxy) (alternative) `0xa3b615667cbd33cfc69843bf11fbb2a1d926bd46` — deployed 2022-10-19 17:44:15+03 — liveness: live (current_address_book_code)<br>0x6591c0… (alternative) `0x6591c09d924c02096a467c3d3f9e3c67d4cb8591` — deployed 2023-09-19 10:38:59+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0x664cc2bcae1e057eb1ec379598c5b743ad9db6e7` — deployed 2023-04-03 05:48:29+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| PeckShield-Audit-Report-Magpie-v1.1.pdf | VLMGP | ambiguous — not counted | 0x9c60db… (alternative) `0x9c60dbc8027ba32e5e29c941ae5286cbe683d65c` — deployed 2023-10-30 05:44:11+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0x9b69b06272980fa6bad9d88680a71e3c3beb32c6` — deployed 2022-10-29 14:48:55+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0x536599497ce6a35fc65c7503232fec71a84786b9` — deployed 2023-04-03 05:54:17+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| PeckShield-Audit-Report-Magpie-v1.1.pdf | ManualCompound | unmatched — not counted | — | Target in finding PVE-007 | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| bsc | `0xa3b615667cbd33cfc69843bf11fbb2a1d926bd46` | MasterMagpie | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0x664cc2bcae1e057eb1ec379598c5b743ad9db6e7` | MasterMagpie | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0xd06716e1ff2e492cc5034c2e81805562dd3b45fa` | MGP | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0xa61f74247455a40b01b0559ff6274441fafa22a3` | TokenImplementation | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0x9b69b06272980fa6bad9d88680a71e3c3beb32c6` | VLMGP | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0x536599497ce6a35fc65c7503232fec71a84786b9` | VLMGP | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 73 |
| upstream | 11 |
| standard_library | 0 |
| needs_review | 313 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 4
- Inherited remapped matches: 0
- Address-book scope dispositions: 0 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 3 ambiguous, 12 unmatched
- Matched-own operational status: 0 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=4
- Match method counts: n/a

Zero-match audit list:

- [3561] PeckShield-Audit-Report-Cakepie-v1.0.pdf
- [3562] blocksec_cakepie_v1.0-signed.pdf
- [3563] PeckShield-Audit-Report-Eigenpie-v1.0.pdf
- [3564] PeckShield-Audit-Report-Magpie-v1.1.pdf

Fork inheritance lineage and inherited audits are included when available.
