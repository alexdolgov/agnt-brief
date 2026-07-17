# Agentic Audit Brief: dTRINITY

## Export Authority

- Production state: **published scope**
- Raw selected rows: 4 across 2 audit(s)
- Eligible audit results: 5 (2 matched; 3 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e9e09d06b414f9cd852c36a58d42ce16279465f2d9791cd2a8178f3f54b89ecd`

## Project Overview

- Project: dTRINITY (`dtrinity`)
- Website: [https://dtrinity.org/](https://dtrinity.org/)
- Lifecycle: unknown
- Generated: 2026-07-15T18:30:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: ethereum, fraxtal, sonic
- Contract surface: 257 unique implementations (565 raw deployments)
- Coverage basis: 4/25 confirmed own live verified implementations (16.0%); conservative 16.0% with 0 needs-review implementation(s)
- DeFi Llama TVL: $2,254,148.00
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for dTRINITY. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 33 contract row(s) across ethereum, fraxtal, sonic. Structural roles: 22 unclassified, 6 supporting, 5 core. 2 row(s) use upgradeable patterns.

## Logic Topography

- Exact-run contract rows: 33
- Structural roles: unclassified (22), supporting (6), core (5)
- Contract kinds: contract (32), abstract (1)
- Detected standards: accesscontrol (6), erc165 (6), erc1967proxy (1), erc20 (1), erc4626 (1)
- Frameworks: openzeppelin (7), openzeppelin-upgradeable (1)
- Upgradeable-pattern rows: 2

## Fork Analysis

0 of 44 contracts are derived from known codebases. 44 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0x3de01b66b97eaf98603920e9e850c6d7b2411ddf`, chain 1)
- UnnamedContract (`0x5cc741931d01cb1adde193222dfb1ad75930fd60`, chain 1)
- UnnamedContract (`0x8a9384b094d34db0110988d497e96b17f3b9c930`, chain 1)
- UnnamedContract (`0xab035f35f3e9891f5756f54bc26dd4a51cd02989`, chain 1)
- UnnamedContract (`0xedaf6c1df26371a72be5e8227dcb46283a610611`, chain 1)
- UnnamedContract (`0x12ed58f0744de71c39118143dcc26977cb99cdef`, chain 252)
- UnnamedContract (`0x1f075573e3eb0d7b2d10266ba8c2c2449fa862f7`, chain 252)
- UnnamedContract (`0x29155d25b11ee91fec887b09da8ef86951799ee0`, chain 252)
- UnnamedContract (`0x29d0256fe397f6e442464982c4cba7670646059b`, chain 252)
- UnnamedContract (`0x2d8ae7d18d61dd02ebf5367bb62bbd485736a0ab`, chain 252)
- UnnamedContract (`0x64188de66add8b3d813f2dc157dfedaf74f10ede`, chain 252)
- UnnamedContract (`0x6b937da34fb213763458a3b7672b950df1f560de`, chain 252)
- UnnamedContract (`0x8315047c1fdfb27656c2893b432324919f7448de`, chain 252)
- UnnamedContract (`0xe919136c67493046fc26bf04e86a82c747ee2edf`, chain 252)
- UnnamedContract (`0xf1082f0323e6a35c93a05160e0e3054b62bf4c0e`, chain 252)
- ACLManager (`0xa5f9f6238406b1301d0ed09555a2893dc1a26a49`, chain 252)
- AmoManagerV2 (`0x29532f74a9302e0a1e9f7d015fe355ffde6e6880`, chain 1)
- AmoManagerV2 (`0x57bbd5026503bb54cc50a4129c4896cba40bebae`, chain 252)
- CollateralHolderVault (`0x84c58066a4408454b7380f168c95f571419253f4`, chain 1)
- CollateralHolderVault (`0x624e12de7a97b8cfc1ad1f050a1c9263b1f4febc`, chain 252)
- DStakeCollateralVault (`0x5432ed4a370718d6904485e2fc114762c68cc7be`, chain 252)
- DStakeCollateralVaultV2 (`0x4acbcfa29fb085097c5f31783403ef7a7930f6fe`, chain 1)
- DStakeToken (`0x0f51b15939a42bd995ecd3a2c151dc58621856c6`, chain 252)
- DStakeTokenV2 (`0x9c278036c3c4529472751502dfc71bb1f0a3bfd4`, chain 1)
- ERC20StablecoinUpgradeable (`0x6f83cbdf37863eaf43d11b3af1d024c336814d1b`, chain 1)
- ERC20StablecoinUpgradeable (`0xaf2d757bfbded5f84f71d28223acda06352fddb6`, chain 252)
- GnosisSafeProxy (`0xa9c3cf89d9b7680cc2433e2a2bf8e2b357a03d65`, chain 252)
- GnosisSafeProxy (`0xabfbcf92986b4ba43faaecf545f0b2cc45067af9`, chain 252)
- GnosisSafeProxy (`0xdb104e0bb0b2955f69e8e092eb80831913d85431`, chain 252)
- GnosisSafeProxy (`0xfc2f89f9982be98a9672cefc3ea6dbbdd88bc8e9`, chain 252)
- InitializableImmutableAdminUpgradeabilityProxy (`0x2b820fd4911876160c3988e57a10d8a5b85dff35`, chain 1)
- InitializableImmutableAdminUpgradeabilityProxy (`0x7f90988393d1db8ef33cc9f4294a7dda389d7cf1`, chain 1)
- InitializableImmutableAdminUpgradeabilityProxy (`0x88a4eed28a1d7bcee95228721678662421a1c748`, chain 1)
- InitializableImmutableAdminUpgradeabilityProxy (`0x9477297feacd988be2e8bc42dfb0edf44bbfb59b`, chain 1)
- InitializableImmutableAdminUpgradeabilityProxy (`0x979fb79d36c0d3006cde38e992d9f51768efaad8`, chain 1)
- InitializableImmutableAdminUpgradeabilityProxy (`0xa17571a95bd22dc1a6f54d7f6e396d2398dfe493`, chain 1)
- InitializableImmutableAdminUpgradeabilityProxy (`0xa5535fc58fd1be43a37367f4b66669f691a26eae`, chain 1)
- InitializableImmutableAdminUpgradeabilityProxy (`0xb33276a11cabe6e1cd0252c4e1770ffd30a8029c`, chain 1)
- InitializableImmutableAdminUpgradeabilityProxy (`0xc247736eaaa1b45d21ae1668d13965b4b50e9011`, chain 1)
- InitializableImmutableAdminUpgradeabilityProxy (`0xdfaee67e4ef9009a728dae88453275c616a5877f`, chain 1)
- SafeProxy (`0x04401537ca997a43ebcfec8194c7e88c7ee79804`, chain 1)
- SafeProxy (`0x38262effcd17cd64f6311ef688b2caa61102f3db`, chain 1)
- SafeProxy (`0x43b1bccff0e4bfef2c32774e53a69a762006c118`, chain 1)
- SafeProxy (`0xe83c188a7be46b90715c757a06cf917175f30262`, chain 1)

## Contract Surface Quality

- Logic-topography rows: 33; live-surface rows included: 33 (33 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 40/44 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 4/25 (16.0%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 40 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 217 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 2 standard proxy/library)
- Proxy deployments represented within implementation groups: 29
- Confirmed-live implementations: 40 of 257 unique; 217 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 4/123
- Verified + Unaudited implementations: 119
- Verified by bytecode match: 0
- Unverified implementations: 134
- Unique implementations: 257
- Raw deployments: 565
- Audits discovered: 5 (5 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 2
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2025-10 (fresh)
- Audit staleness (calendar age): 1 fresh, 2 aging, 1 stale, 1 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 4 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| Hashlock | Tier 2 | 2 | 1.6% | 2025-10 |
| Hats Finance | Tier 2 | 2 | 1.6% | n/a |

## Contract Surface

### ✅ Verified + Audited (4)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| DStakeCollateralVault | core_logic | project_anchor | own_supporting | 0 | fraxtal | unit-236625 | `0x5432ed4a370718d6904485e2fc114762c68cc7be` | ✅ Audited |
| DStakeCollateralVaultV2 | core_logic | project_anchor | own_supporting | 0 | ethereum | unit-236604 | `0x4acbcfa29fb085097c5f31783403ef7a7930f6fe` | ✅ Audited |
| DStakeToken | unknown | project_anchor | own_supporting | 1 | fraxtal | unit-236642 | 2 deployments: fraxtal `0x0f51b15939a42bd995ecd3a2c151dc58621856c6`; fraxtal `0x58acc2600835211dcb5847c5fa422791fd492409` | ✅ Audited |
| DStakeTokenV2 | unknown | project_anchor | own_supporting | 1 | ethereum | unit-236641 | 2 deployments: ethereum `0x7cb20517776636ed76b68edb3d99dcce356abf02`; ethereum `0x9c278036c3c4529472751502dfc71bb1f0a3bfd4` | ✅ Audited |

### ⚠️ Verified + Unaudited (119)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| AaveEcosystemReserveV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | sonic | n/a | `0x831b8dbda84aa98ba8e5cc3cbd33c7cdacbacb6b` | ⚠️ Unaudited |
| AaveEcosystemReserveV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | fraxtal | n/a | `0x99a434c9387dac572bdd6dacb1b7e27314eafb16` | ⚠️ Unaudited |
| ACLManager | governance | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 7 deployments: ethereum `0x80f7023e25a32e4a020ed71346c0f37c10589609`; sonic `0x973044bf0667d49de528cd32737028cc4e08e593`; sonic `0xa46d25eebde2d136a14601ac2e0e0de8409114d1`; sonic `0xa5cae880272183d7c8b69f8b0edf395f8e42e751`; sonic `0xd7fdd142b49f20d542b50465891bbf672aa2b9e3`; fraxtal `0x93d2e552f0ac25927bbd3f6c71cab43b73a3acdf`; fraxtal `0xfe36d47756a01cc838d41c798baf216487888e3e` | ⚠️ Unaudited |
| ACLManager | unknown | project_anchor | own_supporting | 0 | fraxtal | unit-236631 | `0xa5f9f6238406b1301d0ed09555a2893dc1a26a49` | ⚠️ Unaudited |
| AdminUpgradeabilityProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc85492686004914a64930afaf48809384250a1ba` | ⚠️ Unaudited |
| AmoDebtToken | token | non_address_book | non_address_book_inventory (excluded) | 0 | fraxtal | n/a | 3 deployments: ethereum `0x55a626e2f9df98ec09a8898363c26bcb396b098d`; ethereum `0x88e49f238ea53b2a18b6d947e68223e353aaaa38`; fraxtal `0x3e17fd53fcb2dbd409b92f4860326b8b880e3c28` | ⚠️ Unaudited |
| AmoManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | 11 deployments: sonic `0x0346e3770fba1fa6b041aae9b7fd5070bd46973c`; sonic `0x090af63bbf0b5837d8c1bf75729489ae233f429c`; sonic `0x20ceffdd2b49a11b1bfc217c46cc027247d89355`; sonic `0x2592389c4845e265497b409e7a9ab67bc4adf8aa`; sonic `0x29adcba0244be0dd9220ae114f8edae5ccda87ab`; sonic `0x75f14fc0610a18ec8bc95201013ca2d805164eb1`; sonic `0x788d96f655735f52c676a133f4dfc53cec614d4a`; sonic `0xfb9383d232288293d98ae0f590f9904cc0e89108`; fraxtal `0x1600804da391370749624bbd01ce52ec81370505`; fraxtal `0x49a0c8030ca199f6f246517ae689e3cc0775271a`; fraxtal `0xd9ba545656cba566c042f96634749242a3bf76c7` | ⚠️ Unaudited |
| AmoManagerV2 | governance | project_anchor | own_supporting | 0 | ethereum | unit-236601 | `0x29532f74a9302e0a1e9f7d015fe355ffde6e6880` | ⚠️ Unaudited |
| AmoManagerV2 | governance | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbc53406583d4370ea4a5dc2bfd5592ef9cea56a7` | ⚠️ Unaudited |
| AmoManagerV2 | governance | project_anchor | own_supporting | 0 | fraxtal | unit-236626 | `0x57bbd5026503bb54cc50a4129c4896cba40bebae` | ⚠️ Unaudited |
| API3CompositeWrapperWithThresholding | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | fraxtal | n/a | 13 deployments: sonic `0x51906c758c14a4fca0da80d670e01a370fa7cc53`; sonic `0x6a2506d7d94d6f5f2598b050ba8ad02e519fb67c`; sonic `0xa1bf60a135ce0462fb1531a5350780ac9d4128e8`; sonic `0xbbf9f7f2b5c14877ee7928732ea6aacdbbc3e9b2`; sonic `0xbd73ec51bfc315458c7b20eaf5de93b4b986cf87`; sonic `0xbe90db309b80357631069b689fc3481aca2c65be`; sonic `0xca52d08737e6af8763a2bf6034b3b03868f24dda`; sonic `0xe8b48ad9a00a86c62f2e6863b26581e0fa504abd`; fraxtal `0x07fff99e1664d9b116fbc158c0e99785f81ca236`; fraxtal `0x66496537eca3f784aec62fb3b896c0086f3b1b26`; fraxtal `0x6ea83b868dacf26035f7f462d6da84ba4f8a8017`; fraxtal `0xd72ff40d79e5d46dfd06f3560e4b5a4e9a8d3e49`; fraxtal `0xde8ccedf45968327ca27e0ed4833a8a845a567b9` | ⚠️ Unaudited |
| API3Wrapper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | fraxtal | n/a | 14 deployments: sonic `0x2db1e359348e9992d6e7da8043864558a82aa1aa`; sonic `0x3ff41c203509a3ae3beee96f7aaf46732d0b12d4`; sonic `0x414afe51c9265c9b649fdf908e741fc8c3dd5d08`; sonic `0x53b40058665223c0044ab9e068d646dd91e80f6d`; sonic `0x573e97577c3ee4a8c20be18bb545776100d2cdaf`; sonic `0x5e52f16c8ccd1b8ff91ecf2088b8f2a6fb94858d`; sonic `0xbd29adbef9cd0d5494911b3862a12a2fc76e9d6b`; sonic `0xde8ccedf45968327ca27e0ed4833a8a845a567b9`; fraxtal `0x011c49b8d9a861b41502256360b6210d0897e373`; fraxtal `0x18ae2d6cfdf78df5b9b9c0df3be0c8a98adfd5e1`; fraxtal `0x3c3651dcf0de833abb57e9e18b3f31adb3c01a53`; fraxtal `0xd66c168fb7f3e04654082534c87b6544e6036cac`; fraxtal `0xf6ea02d055d832cc491b47238186768b7f6d2f42`; fraxtal `0xf9ed5f9d3c35078074c0ac9fdf9246bb38089af0` | ⚠️ Unaudited |
| API3WrapperWithThresholding | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | 11 deployments: sonic `0x260f494e6889b36e68b393903bfd7756f44cf209`; sonic `0x4e23ca2a7e5ab4d1beade95203d5298e447b3a1c`; sonic `0x5cb4f9b8a71056e3fcb33af0e5816efa97066961`; sonic `0x9d286fa4e36a0a5f3134aa3653e1eaa9769352b1`; sonic `0xaeba314409f70e7214b7fd018dc6a160d5508b4a`; sonic `0xe4dd47fa2ae120599f74344e3b49540a9d87b310`; sonic `0xf4b5846e4955c6ecec5a13e293ecca0137dd84ca`; sonic `0xf9db03888fd00313b59d67dd274be7e45e178f49`; fraxtal `0x4c968591e5dddca8f62bfcf5374d388b04276a75`; fraxtal `0x68e1085a7639e80257f7f159a611dd944278a24e`; fraxtal `0x902c372746ace0b4d3d530b4e4e5f453f55f590b` | ⚠️ Unaudited |
| AToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | fraxtal | n/a | 7 deployments: ethereum `0x40caf33c709ae7ba58401bd7c39bc752602579e7`; sonic `0x6e05d1f13e4ca13149cb4f9bec102c3f6a0e0895`; sonic `0xa148fba85b307e2350a3dc0ce1b7375af13ba3cd`; sonic `0xfb9821de6670836963abe4246c6db1b32c787748`; fraxtal `0x2d2b8121e9b5024021b30c6ab3ad9ca89b618cfa`; fraxtal `0x44c69f0ef7a0d96b77437ec2e1bf9d74f5c5e7a2`; fraxtal `0x64336133656a9660b3cc9156c3217e99bee6ac90` | ⚠️ Unaudited |
| AtomicMarketListingHelper | periphery | non_address_book | non_address_book_inventory (excluded) | 0 | fraxtal | n/a | `0x67c3ad684243430ca1f7f32fe4a64eb223ad2662` | ⚠️ Unaudited |
| BorrowLogic | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | 4 deployments: ethereum `0x81036951050a25cf6f0501ff3f981e3ed3b72786`; sonic `0x1e06f1d027686abb8c7aab7feec115f5a8c606ab`; sonic `0x9e302c78065cc260751b383c9ac226c2fe2b6dcc`; fraxtal `0x2a1d1bd9961a70550b99f952ccc3a81f02319eeb` | ⚠️ Unaudited |
| BridgeLogic | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | 4 deployments: ethereum `0xe1c986e12eaa37e40a2e2cf4f52a6b786dc4e671`; sonic `0xb7cff0c4301cd43b01d96d4d8669550bb50f8635`; sonic `0xca0a90e45a55c4a7e394d1470e0c732b017e37bb`; fraxtal `0xba4d4b6ca77fd8ab3154b8e7b3a93d96338cc46a` | ⚠️ Unaudited |
| CalldataLogic | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | 4 deployments: ethereum `0xd23431f39c88875d1cd6b517d4e54b752fe5776d`; sonic `0x393645a8ac1d8ad9dc80be912c63bfc0841fa3eb`; sonic `0xe1c986e12eaa37e40a2e2cf4f52a6b786dc4e671`; fraxtal `0xa1bf60a135ce0462fb1531a5350780ac9d4128e8` | ⚠️ Unaudited |
| CollateralHolderVault | core_logic | project_anchor | own_supporting | 0 | ethereum | unit-236607 | `0x84c58066a4408454b7380f168c95f571419253f4` | ⚠️ Unaudited |
| CollateralHolderVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | 10 deployments: ethereum `0x349ee07146157648d40fd471380b510b4d56a2f2`; sonic `0x02165d665e171566629822d9380ad93b975b186c`; sonic `0x42aa699e6c5ba4f07713edace2f15f6d932c0ae9`; sonic `0x569e982cc83967fc16f444905190cf830a26fd6e`; sonic `0x97efebe50ae4826b6450351126557797b225f771`; sonic `0xaf2d757bfbded5f84f71d28223acda06352fddb6`; sonic `0xbe8b1b06d2888cf91bd3482657e06034dbea3113`; sonic `0xc1a09c3443d578a85de35368a1a58e8989f4721b`; sonic `0xd6bbab428240c6a4e093e13802f2eca3e9f0de7d`; fraxtal `0x7d3d464c37fa2d80407cc940490c6e4d763909bc` | ⚠️ Unaudited |
| CollateralHolderVault | unknown | project_anchor | own_supporting | 0 | fraxtal | unit-236627 | `0x624e12de7a97b8cfc1ad1f050a1c9263b1f4febc` | ⚠️ Unaudited |
| ConfiguratorLogic | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | fraxtal | n/a | 4 deployments: ethereum `0xc18b93cac3c2404cca2187332e9767bb73feb7ed`; sonic `0x683f183070ee9c12b25618db3483266888ce9809`; sonic `0x9986dc2939add69a84d7db3e9af84a543dfe9f85`; fraxtal `0x6288d412921c1e14a5ab96b043758621b453e56f` | ⚠️ Unaudited |
| ConvexRewardPool | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | fraxtal | n/a | `0x9886ad218f646ad67b5d057953b2d25bd0172afd` | ⚠️ Unaudited |
| CurveStableSwapNG | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x2c2a700766886290359ccf39cb2173a39af1cef9`; fraxtal `0x5ecfa6940a33a2dad5c473896452f018c6c04577` | ⚠️ Unaudited |
| CurveXChainLiquidityGauge | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | fraxtal | n/a | `0xf5572d8d01bb6f96403f477d8b3bfb5739444702` | ⚠️ Unaudited |
| DefaultReserveInterestRateStrategy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | 27 deployments: ethereum `0x426bb6039a05f0ec90617cb7a838d6ed4fb0044a`; ethereum `0x614484f207805145605c221e29197db2633ded12`; ethereum `0x64dc6def99c4144466a4e5a040e5d5efc7ec6c7d`; ethereum `0x837c4ac320cd6a17c66cb5deea99dc9bd007d270`; sonic `0x052dc4ca69a6b01b7f61a979f3e40ed319ee585d`; sonic `0x08f3c34c46b03268c783ca313444448f81596262`; sonic `0x1fbc978a250d5d00831872397daa18992e4314c7`; sonic `0x328b0a94e356773a05a89158367e57d7464b43fd`; sonic `0x38a8c0e860e6b22ba78331de5596aaac3654d2e1`; sonic `0x3f628a25bbe03b042bd1f4f68d2203b325ab02c0`; sonic `0x475bcff074bea6a3f4df059d32003ebddacc3c25`; sonic `0x85c7287fc53a06ec7995db5ae6f2610200ec0f85`; sonic `0x863a66ef04c2fd96915dd86fa1570e6501f10fd2`; sonic `0x871f22424b501fbaf5b61df910cde9ce09e01c7f`; sonic `0x8c522154f50d74c552eb6ee3b88d235deb3236f8`; sonic `0x9134129c8bf32a973bf4c7ea9de5720022e4696f`; sonic `0x91756a9a25d43f9b18e360dcbdd2f2a5e2944712`; sonic `0xaec3283cb27f029f8053e7e217cbb450f51af003`; sonic `0xbc74199af0911ff6f10176fca186fc908287f309`; sonic `0xcc0e6fc9a4cc135d08bdbb625c53b8fb451dfb13`; fraxtal `0x08869363aa1e44dbc35fb3f090aa8698625792b5`; fraxtal `0x09ddf55a7ec642635788970dcbf4b6aa2552bb14`; fraxtal `0x6e15a80f0baf7b83ce7ecee3c1c9bb6f969b7460`; fraxtal `0x8b7d6bff57d840613a6f627f77741ecb226e98c6`; fraxtal `0xd1d9d6358ce7903dd3322d99d66ad987ec5ca496`; fraxtal `0xdd796c65380ce9085d5d925d6e7374b23be7ae60`; fraxtal `0xeef617864c0c2357bf28250e07cedf1809e4019c` | ⚠️ Unaudited |
| DelegationAwareAToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | fraxtal | n/a | `0xc46347ff22ca78bef88275d0d87d4ea83f3dd9e8` | ⚠️ Unaudited |
| dLendBalanceChecker | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | fraxtal | n/a | 3 deployments: fraxtal `0x414afe51c9265c9b649fdf908e741fc8c3dd5d08`; fraxtal `0x614914b028a7d1fd4fab1e5a53a3e2df000bcb0e`; fraxtal `0xd3e3bf8da2fb131ba0ba5a688d50d3178023e805` | ⚠️ Unaudited |
| DStakeCollateralVault | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | 3 deployments: sonic `0x709c233a9e82e9fa9990d8163da47b1cce9be595`; sonic `0x925a5ce02b8ffabb49179a4ad49b7893bc8eead9`; sonic `0xd4258dd87ed5eb103aa9760a963c2dd7f61b4d8c` | ⚠️ Unaudited |
| DStakeCollateralVaultV2 | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf93fb0add57133aecd56fa48350684b5a7a1a5b9` | ⚠️ Unaudited |
| DStakeIdleVault | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x501ce63871f9bb20620233d22d0d4f539fe8a9a1`; ethereum `0x78a4dad0ac32c80da6ef60a366b1c035145380bc` | ⚠️ Unaudited |
| DStakeProxyAdmin | governance | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | 4 deployments: sonic `0x6eb812c452a20d58f85f010c1f56356df951029c`; sonic `0xbcafae45404950a5ca4c7c7f850ea2c33f57b18c`; sonic `0xff3df1bb48d63a1433d57572a39c17bbc840e01b`; fraxtal `0xde914ec384346fea47339e5086d2d399b7f4733b` | ⚠️ Unaudited |
| DStakeRewardManagerDLend | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | fraxtal | n/a | `0xf224e69c461a2dd3c5f6f6814529c8cf557a1367` | ⚠️ Unaudited |
| DStakeRouterDLend | adapter | non_address_book | non_address_book_inventory (excluded) | 0 | fraxtal | n/a | `0xefc15efb330112a2c313d5da8f1b29893ad4cd99` | ⚠️ Unaudited |
| DStakeRouterV2 | adapter | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x2e89df2934aff1b671923a45bacf2b21f3cf64a8`; ethereum `0xdd26c236ec95d03ddf3cb67b7f54864719e9be5a` | ⚠️ Unaudited |
| DStakeRouterV2GovernanceModule | adapter | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x8cf140bde76323a5785d87645fc3ddfe837b6703`; ethereum `0xedbccd4fc36a67429f74376c36f134ae3f28a88b` | ⚠️ Unaudited |
| DStakeRouterV2RebalanceModule | adapter | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x6f3b7cc3d3c8c201373900402ea0f5a61da61dde`; ethereum `0x7aefde8e021f0efbcec7348f601e1fd12789c55f`; ethereum `0xc792f223c6c836f9e628ce29bed5f4aee6e18cc6` | ⚠️ Unaudited |
| DStakeToken | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | sonic | n/a | 2 deployments: sonic `0x41a5477364bf60d8936b90310fecfda79593304e`; sonic `0x5f0ecae9b7b279261cc6a1cabf26b51c79fe6f8f` | ⚠️ Unaudited |
| DStakeToken | token | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x5a5ce9fc488a17618d5fdef867fa67c1b7882bae` | ⚠️ Unaudited |
| DStakeTokenV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x20b1884c9347bebc13e9aca1965c5ae56b0a8590`; ethereum `0x4146451750a3635d9d2b2d1a398ce30b7ffacb87` | ⚠️ Unaudited |
| EmissionManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | 5 deployments: ethereum `0xcea995daf89500fe165bc86d829552b03a1d1396`; sonic `0x8aa67b35bc3d004f2945066164300b98c9aada56`; sonic `0xb0499d608836dac2894e6c2f7db4e6f28cbd8d16`; sonic `0xe3ee2d4bde6695cc1ae4a4cda466bdc6d5df479e`; fraxtal `0xda1a5239996624ea71b4e77cf21c837e4194c278` | ⚠️ Unaudited |
| EModeLogic | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 4 deployments: ethereum `0x26326b406208e206cbe9a2417bf61700b4239b4b`; sonic `0x4b6760fbdca72967cea2026424f25c5f8de7a87e`; sonic `0xf84cc8217713a53fc3e3eb2d62d2af33a084ff85`; fraxtal `0xca5cb6b3afdf1adbec6b00db6c2f17053b6d62bc` | ⚠️ Unaudited |
| ERC20StablecoinUpgradeable | unknown | project_anchor | own_supporting | 1 | ethereum | unit-236640 | 2 deployments: ethereum `0x07fff99e1664d9b116fbc158c0e99785f81ca236`; ethereum `0x6f83cbdf37863eaf43d11b3af1d024c336814d1b` | ⚠️ Unaudited |
| ERC20StablecoinUpgradeable | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x75998c3009e881f7b3f3d6847bd82649ff4afecc`; ethereum `0xb419ecdd222981e7e54cec316797ecb799c6afdc` | ⚠️ Unaudited |
| ERC20StablecoinUpgradeable | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | sonic | n/a | 2 deployments: sonic `0x0043a403ada6b63045112d7e979a057c82714fe7`; sonic `0xb76144f87df95816e8c55c240f874c554b4553c3` | ⚠️ Unaudited |
| ERC20StablecoinUpgradeable | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | sonic | n/a | 2 deployments: sonic `0x21442105ee1a85aa51b345a149c5f6dd47252a45`; sonic `0xd80374798c06a7ad24fdc9931baeb068ab4550b9` | ⚠️ Unaudited |
| ERC20StablecoinUpgradeable | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | sonic | n/a | 2 deployments: sonic `0x3a3dd4b0d3bd5592914115e9ce14dd035a22abd4`; sonic `0xdb848e485105e2a24a9792de4c604881b53432d7` | ⚠️ Unaudited |
| ERC20StablecoinUpgradeable | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | sonic | n/a | 2 deployments: sonic `0x41076a2d8f6cac657098e5fff43f31c4c759d0c8`; sonic `0xf4a726328f6f717a5d35cb5eeb119b2bbe0d0d12` | ⚠️ Unaudited |
| ERC20StablecoinUpgradeable | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | sonic | n/a | 2 deployments: sonic `0x53a6abb52b2f968fa80df6a894e4f1b1020da975`; sonic `0xa140c97eff565d50cfd320fe66d27c466cc0d327` | ⚠️ Unaudited |
| ERC20StablecoinUpgradeable | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | sonic | n/a | 2 deployments: sonic `0x614914b028a7d1fd4fab1e5a53a3e2df000bcb0e`; sonic `0xfa608567a370ae0febcd296c97816d4693ca8fa9` | ⚠️ Unaudited |
| ERC20StablecoinUpgradeable | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | sonic | n/a | 2 deployments: sonic `0x8af8c11c8c4412c96a09deb5aa7c1d99a10e396c`; sonic `0xa1104d1752cc310eb1bb1297d344b72afd4fcfaf` | ⚠️ Unaudited |
| ERC20StablecoinUpgradeable | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | sonic | n/a | 2 deployments: sonic `0xba4d4b6ca77fd8ab3154b8e7b3a93d96338cc46a`; sonic `0xca5cb6b3afdf1adbec6b00db6c2f17053b6d62bc` | ⚠️ Unaudited |
| ERC20StablecoinUpgradeable | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | fraxtal | n/a | 2 deployments: fraxtal `0x0043a403ada6b63045112d7e979a057c82714fe7`; fraxtal `0xb76144f87df95816e8c55c240f874c554b4553c3` | ⚠️ Unaudited |
| ERC20StablecoinUpgradeable | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | fraxtal | n/a | 2 deployments: fraxtal `0x70924f77509dc1eb9384077b12ca049aa2168d6f`; fraxtal `0xc40f4303505320f782972ad4756ed2a7390a9d9c` | ⚠️ Unaudited |
| ERC20StablecoinUpgradeable | unknown | project_anchor | own_supporting | 1 | fraxtal | unit-236643 | 2 deployments: fraxtal `0x788d96f655735f52c676a133f4dfc53cec614d4a`; fraxtal `0xaf2d757bfbded5f84f71d28223acda06352fddb6` | ⚠️ Unaudited |
| ERC20StablecoinUpgradeable | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | fraxtal | n/a | 2 deployments: fraxtal `0x889bf3e00e93bc9ce17a7f8141ef109283913f37`; fraxtal `0xb419ecdd222981e7e54cec316797ecb799c6afdc` | ⚠️ Unaudited |
| ERC4626BalanceChecker | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | fraxtal | n/a | 2 deployments: fraxtal `0x09c418a9d8027ef890a91ccdfce3c14d055e44dd`; fraxtal `0x7a2949ef4595bc27ff5ec6e3889f51fce42ab7d9` | ⚠️ Unaudited |
| ERC4626OracleWrapperV1_1 | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x889bf3e00e93bc9ce17a7f8141ef109283913f37` | ⚠️ Unaudited |
| FlashLoanLogic | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | fraxtal | n/a | 4 deployments: ethereum `0x8d369c2f439de8475e095940b081e067859b7688`; sonic `0xd82b685e78055f8d352c29c6cad5cb67b0295628`; fraxtal `0x0504539e68ec7a50f8ae847f543ab3a062fa4eb7`; fraxtal `0x2e92fc14ef948fb8653eb91d2d49d9480883c4e5` | ⚠️ Unaudited |
| FrxEthFundamentalOracleWrapperV1_1 | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdfd607a73f6d73dbce8adf71de5e9fd56944c936` | ⚠️ Unaudited |
| GenericERC4626ConversionAdapter | adapter | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0xa51fa58c76d92f1b0d4d6e3b88d2ba0aff2c2b56`; ethereum `0xefd794e2d8024f3c25aa343588dd6d4481b5db7c` | ⚠️ Unaudited |
| GnosisSafeL2 | governance | project_anchor | own_supporting | 2 | fraxtal | unit-236644 (2 proxies) | 2 deployments: fraxtal `0xdb104e0bb0b2955f69e8e092eb80831913d85431`; fraxtal `0xfc2f89f9982be98a9672cefc3ea6dbbdd88bc8e9` | ⚠️ Unaudited |
| GnosisSafeProxy | governance | project_anchor | own_supporting | 0 | fraxtal | unit-236632 | `0xa9c3cf89d9b7680cc2433e2a2bf8e2b357a03d65` | ⚠️ Unaudited |
| GnosisSafeProxy | governance | project_anchor | own_supporting | 0 | fraxtal | unit-236633 | `0xabfbcf92986b4ba43faaecf545f0b2cc45067af9` | ⚠️ Unaudited |
| HardPegOracleWrapper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | 13 deployments: sonic `0x0fdf4dd62b3e1d888a6cc60d28d5f711d2cc9c4e`; sonic `0x1f739b68b30398132a4c442569dd31297d7ed77e`; sonic `0x3459abf453b33cda1bb55cd600d6ba5ef4d4e9e2`; sonic `0x3f2d8a28ac36e1caa7db458bb45e64164e5b8fd8`; sonic `0x73805613e0de32796d6559af1231b6ff8f13b294`; sonic `0x74be9a6b6415cbca58a0744d3056fbd4337a0764`; sonic `0xaa682faf0bbe46237781611771eff027780b18cd`; sonic `0xbf5298922c69987e8f3c47eb7d1d5a0920c9de0b`; sonic `0xc40f4303505320f782972ad4756ed2a7390a9d9c`; sonic `0xd24ca3ab043edd9584d3fb5d653bbcd0b0e3ca10`; sonic `0xe7e77d69f263e895e986b6552610d0778b17d300`; sonic `0xf9aa9f36b6922dd0968877d6115b4d4687b700dd`; fraxtal `0x8e5031c6b88f18786aa038c4f291724d0c4abc2a` | ⚠️ Unaudited |
| HardPegOracleWrapperV1_1 | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 4 deployments: ethereum `0x1e5be5059d4a95297604355dc6abd0baf036cc95`; ethereum `0x4ef48062d6d5e7594ed1b59ea42faf772b2aa54a`; ethereum `0x788d96f655735f52c676a133f4dfc53cec614d4a`; ethereum `0x837c1c92b0e7ae7bb4e1dddf08772c0181fc638a` | ⚠️ Unaudited |
| InitializableAdminUpgradeabilityProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | 3 deployments: sonic `0x6ba79a7f414026363d027dc55e3af6625414332a`; sonic `0xe63b4d24067890b13a696faa371998fa214cae3a`; sonic `0xf749a3d72cc5ce0dac1f3b42d7ba3524e2ae6595` | ⚠️ Unaudited |
| InitializableImmutableAdminUpgradeabilityProxy | unknown | project_anchor | own_supporting | 0 | ethereum | unit-236602 | `0x2b820fd4911876160c3988e57a10d8a5b85dff35` | ⚠️ Unaudited |
| InitializableImmutableAdminUpgradeabilityProxy | unknown | project_anchor | own_supporting | 0 | ethereum | unit-236606 | `0x7f90988393d1db8ef33cc9f4294a7dda389d7cf1` | ⚠️ Unaudited |
| InitializableImmutableAdminUpgradeabilityProxy | unknown | project_anchor | own_supporting | 0 | ethereum | unit-236608 | `0x88a4eed28a1d7bcee95228721678662421a1c748` | ⚠️ Unaudited |
| InitializableImmutableAdminUpgradeabilityProxy | unknown | project_anchor | own_supporting | 0 | ethereum | unit-236610 | `0x9477297feacd988be2e8bc42dfb0edf44bbfb59b` | ⚠️ Unaudited |
| InitializableImmutableAdminUpgradeabilityProxy | unknown | project_anchor | own_supporting | 0 | ethereum | unit-236611 | `0x979fb79d36c0d3006cde38e992d9f51768efaad8` | ⚠️ Unaudited |
| InitializableImmutableAdminUpgradeabilityProxy | unknown | project_anchor | own_supporting | 0 | ethereum | unit-236612 | `0xa17571a95bd22dc1a6f54d7f6e396d2398dfe493` | ⚠️ Unaudited |
| InitializableImmutableAdminUpgradeabilityProxy | unknown | project_anchor | own_supporting | 0 | ethereum | unit-236613 | `0xa5535fc58fd1be43a37367f4b66669f691a26eae` | ⚠️ Unaudited |
| InitializableImmutableAdminUpgradeabilityProxy | unknown | project_anchor | own_supporting | 0 | ethereum | unit-236615 | `0xb33276a11cabe6e1cd0252c4e1770ffd30a8029c` | ⚠️ Unaudited |
| InitializableImmutableAdminUpgradeabilityProxy | unknown | project_anchor | own_supporting | 0 | ethereum | unit-236616 | `0xc247736eaaa1b45d21ae1668d13965b4b50e9011` | ⚠️ Unaudited |
| InitializableImmutableAdminUpgradeabilityProxy | unknown | project_anchor | own_supporting | 0 | ethereum | unit-236617 | `0xdfaee67e4ef9009a728dae88453275c616a5877f` | ⚠️ Unaudited |
| InitializableImmutableAdminUpgradeabilityProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xf177ef27512fa74604aabc748f4d0720b00d0bd1` | ⚠️ Unaudited |
| Issuer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | 10 deployments: sonic `0x09061316c817cbfd4b2b962cbe4db64980a15c59`; sonic `0x09f790b31b26ee7a5ea24537393a039db3ab45cf`; sonic `0x1f3754cf73a64b76487f9454ee293e691d4e990e`; sonic `0x3b8c68a3f731ef0cc699b819651e21e8f7cb51f8`; sonic `0x5e8352729ebd1ea860836d6b3f59eaf286488d15`; sonic `0x72ef2d25db369717f79f0579e7e74127feb81fbf`; sonic `0x807aa6bfc01e509a4a90e8a358548c819cb0bca1`; sonic `0x96a5a828c554b4d5acdb9f0f4bb15b24c0423b69`; fraxtal `0x1ec13ef0b22c53298a00b23b03203e03d999b7a2`; fraxtal `0x823fd0227ce89dc6694a213e9f9d3d64f5d4715c` | ⚠️ Unaudited |
| IssuerV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | 3 deployments: sonic `0x36b535bc79defb00d348658ad7e68d9b1176fa97`; sonic `0x9b93c3995235c2c16b87976c763360d08c725ddc`; fraxtal `0xd95f1cfd9559b6e4d75488938de161a147f9fbca` | ⚠️ Unaudited |
| IssuerV2_2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x70bfbe78548f1159cb9b453e4d6ad0e3648a5a8d`; ethereum `0xf84cc8217713a53fc3e3eb2d62d2af33a084ff85`; fraxtal `0x9e8d871077bb496e388fd48f659cedd6d0abdc3a` | ⚠️ Unaudited |
| L2Pool | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | 4 deployments: ethereum `0xfda3a0effe2f3917aa60e0741c6788619ae19e84`; sonic `0x179867c392add1bf4f7a3d4c70bf8f2f476bb8cc`; fraxtal `0x20a24d51aded06b5ccbc3cc8f71d1e141391a6d7`; fraxtal `0xdfd607a73f6d73dbce8adf71de5e9fd56944c936` | ⚠️ Unaudited |
| LiquidationLogic | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | 4 deployments: ethereum `0xce697c602e613bcf728a439ec4a0f831667d9570`; sonic `0x19c6b5924306baf5ee549cd7b56b37736cf7dc48`; sonic `0x84c58066a4408454b7380f168c95f571419253f4`; fraxtal `0xba82d5f8ac6cfbdff4685f29754a67ccb4e7dc8f` | ⚠️ Unaudited |
| LiquidityGaugeV6 | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x91c95bb84aa561d93d165ff24d0e54e6b006447c` | ⚠️ Unaudited |
| OdosDebtSwapAdapter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | fraxtal | n/a | 4 deployments: sonic `0x5e4f0ed577719e52c6d088b805e42aa4a836ee1f`; sonic `0x7364c92a53498f91ef23781d3ad89a22046408bc`; sonic `0xedc5b6c07406e5f5cd192f62d5f5f49edba5920e`; fraxtal `0x16e7d528810b0a7fdb13145af66d010d4d9437bd` | ⚠️ Unaudited |
| OdosLiquiditySwapAdapter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | 4 deployments: sonic `0x71e1f6019e46d9148016e5471f2079d5ee46fb42`; sonic `0x8087ff405143a47d894087e483e332f3ae5406ff`; sonic `0x88256f668ccae879dc96605afc4a8550f93a38f9`; fraxtal `0xa860d1f093092440bbeadc0b85f1f14c004ab6f6` | ⚠️ Unaudited |
| OdosRepayAdapter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | fraxtal | n/a | 4 deployments: sonic `0xc44825ee1d81de957023c506aa70091d39898918`; sonic `0xcb9b1edf835ce7aede9a8dc2b7819f877f7411dd`; sonic `0xe3ec3693d7b2e8e6a23cfb0ab39b2b39535658d0`; fraxtal `0x78c4438c37809dae02167640bd8b6ac7e590f847` | ⚠️ Unaudited |
| OdosSwapLogic | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | fraxtal | n/a | `0xb029d67e4eb9d71d2e7140425e7227c5074dd2ba` | ⚠️ Unaudited |
| OdosWithdrawSwapAdapter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | 4 deployments: sonic `0x82efb1f09d886b6d7d0bc97f582e10c3f13b4272`; sonic `0xacd97c7d23a0534d79439b8d065d6d9d772ec949`; sonic `0xc72d79a0e88e52e3d262a5bdbcfe6bb929482af1`; fraxtal `0xc7878a1dd9cf82f5db84dc7157f623edee52d247` | ⚠️ Unaudited |
| OracleAggregator | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | 9 deployments: sonic `0x1295a55d482257ecd66ba8846eab6849712c3a9c`; sonic `0x6fa0af0d144fa926898726578bf4e5f3297a3ac9`; sonic `0x9c99ef27060abc4015e448b230d0a23abe122bf2`; sonic `0xc2572cd79655c35f945afc02544d0373c931b5be`; sonic `0xdfd607a73f6d73dbce8adf71de5e9fd56944c936`; sonic `0xe38f8bceb6f8794e2b025ded1e923f30b58361b3`; sonic `0xf32981b94fb18d0efde40647b76cd24310cef513`; sonic `0xf639ec900ceb62b880c76df37493ee34693de9ad`; fraxtal `0xfa7560956807d95dcef22990ddd92e38dbaf5cdd` | ⚠️ Unaudited |
| OracleAggregatorV1_1 | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x02165d665e171566629822d9380ad93b975b186c`; ethereum `0xc40f4303505320f782972ad4756ed2a7390a9d9c` | ⚠️ Unaudited |
| PoolAddressesProvider | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | 6 deployments: ethereum `0xa5cae880272183d7c8b69f8b0edf395f8e42e751`; sonic `0x1f8d8a3575d049aa0c195aa947483738811badcb`; sonic `0x598502c7a3f5445d76b6f9f5020e15cdfe484df5`; sonic `0x66496537eca3f784aec62fb3b896c0086f3b1b26`; sonic `0xfdb85fdfcee413eb05287f9d4157c1ef1f336207`; fraxtal `0xd9c622d64342b5faceef4d366b974aef6dcb338d` | ⚠️ Unaudited |
| PoolAddressesProviderRegistry | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | 6 deployments: ethereum `0xfdb85fdfcee413eb05287f9d4157c1ef1f336207`; sonic `0x1c7b9f33d309131877db5ae87f875e2b6dce496b`; sonic `0x1f5a7b325d5dc158a45e0dca95fd44e21a3eac6b`; sonic `0x240a0827163598a966dfbf071af142dce788f61e`; sonic `0xe984ec184d625d9500856c83dd65a5cbdd8e8dc9`; fraxtal `0xfbeb5541a7c2c2fdd5c76a01d8601380e12f7878` | ⚠️ Unaudited |
| PoolConfigurator | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x185e9c639dea54d77d62dcb87466fb8de6ded6b9`; sonic `0xac90d7e877bc40fc81d8eab37e6f9c5e32e40153`; fraxtal `0xb1e4e1b01a585730d063a2b496b5b1efbb60b8b1` | ⚠️ Unaudited |
| PoolLogic | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | fraxtal | n/a | 4 deployments: ethereum `0x44c69f0ef7a0d96b77437ec2e1bf9d74f5c5e7a2`; sonic `0x33e0104a636ab1439842313883b67d14f67173f6`; sonic `0xe6114174073b1afcb45d73fe65af0619a3c1fb21`; fraxtal `0x0503237c9ade4bfe3a8f9a0d75e197c14a3f7ecd` | ⚠️ Unaudited |
| ProxyAdmin | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | 9 deployments: ethereum `0xbe90db309b80357631069b689fc3481aca2c65be`; sonic `0x0a0808f20743278d566fc954d3dcf8c082fb0bc5`; sonic `0xaf3bb48f9b27ae41e8f4c33c77422b9367694cb8`; sonic `0xc59e44b17389e4e96b987269148e7769366a68f8`; sonic `0xfff14bf13ef30a7e962ba871f00f6d01ed50a7ab`; fraxtal `0x1e5be5059d4a95297604355dc6abd0baf036cc95`; fraxtal `0x75998c3009e881f7b3f3d6847bd82649ff4afecc`; fraxtal `0xaf3bb48f9b27ae41e8f4c33c77422b9367694cb8`; fraxtal `0xdcd3965334adeff932f00b7be6a0254fa7fdfa5c` | ⚠️ Unaudited |
| PullRewardsTransferStrategy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | 6 deployments: ethereum `0x31bf6b030d20af8a92d169632ffd8077456e6316`; sonic `0x15a8d3c0a0ac8af7dbf16fe826314228ee5aa85f`; sonic `0x58acc2600835211dcb5847c5fa422791fd492409`; sonic `0xa002d1dfd3d68dc29e0b060ae0422e047e9f7e08`; sonic `0xdba93cb44cdf2b8310a2ac28db70aa3347f46e39`; fraxtal `0xaaee148793253a64402566bd1c02e7f5d3ed35a5` | ⚠️ Unaudited |
| RebasingTokenWrapperFactory | registry | non_address_book | non_address_book_inventory (excluded) | 0 | fraxtal | n/a | `0x85c7287fc53a06ec7995db5ae6f2610200ec0f85` | ⚠️ Unaudited |
| Redeemer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | fraxtal | n/a | 10 deployments: sonic `0x4ef48062d6d5e7594ed1b59ea42faf772b2aa54a`; sonic `0x57c8ee636efe0adf30e40bd0f3b96456c24d21aa`; sonic `0x70bfbe78548f1159cb9b453e4d6ad0e3648a5a8d`; sonic `0x733e86104cfea81e8958d4f31fee8c7588ccf5a1`; sonic `0xd72ff40d79e5d46dfd06f3560e4b5a4e9a8d3e49`; sonic `0xe781858c3a4badb7ac29b82015b3cb078cdaa5cf`; sonic `0xe7c49a1305ec0a61bf126a2a9bf6e4cecf244a28`; sonic `0xf5a8947fed21e1c9c4893b601f3a0daaedc386ff`; fraxtal `0x2429213235b5b4504d41bc9aa64fc2659e4450a3`; fraxtal `0xd30c28fd380e1a3bbf988942f3f98db78a0af5ae` | ⚠️ Unaudited |
| RedeemerV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | 7 deployments: ethereum `0x093e9db2c2ec21ff7e5e1f5766bbfb48b7ba90cd`; ethereum `0x683f183070ee9c12b25618db3483266888ce9809`; ethereum `0xd66c168fb7f3e04654082534c87b6544e6036cac`; ethereum `0xdc43d538935d187864b21997f8ad05de66afae4b`; sonic `0x09059859d2b91cc840bd2c86f841defa19d38b88`; sonic `0x6b05795626cb2c8578ce6b7441b7c82a9e6f5935`; fraxtal `0xacd97c7d23a0534d79439b8d065d6d9d772ec949` | ⚠️ Unaudited |
| RedeemerWithFees | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | 4 deployments: sonic `0x12bccbbc931db5eae47efc04aca1b3f695db561c`; sonic `0x1f5d6e62e1ba39264b9a66e544065b0e45c2b221`; sonic `0x528872c03319fd5130e0a506372b6cea666c4927`; fraxtal `0xb0499d608836dac2894e6c2f7db4e6f28cbd8d16` | ⚠️ Unaudited |
| ReservesSetupHelper | periphery | non_address_book | non_address_book_inventory (excluded) | 0 | fraxtal | n/a | 6 deployments: ethereum `0x18ae2d6cfdf78df5b9b9c0df3be0c8a98adfd5e1`; sonic `0x16e32b35943dafe28596594fecead8bcdc30d19c`; sonic `0x79b3f30b05016969325c587b346cff2ed4f76ca2`; sonic `0x7c2018c98ca507cd3e545fbe1a397a164445122a`; sonic `0x95e9b3fa9a6e7201a6ea7dd902dabacd1410a447`; fraxtal `0x145555c56718437093c020cef4e8dd11cd7d2662` | ⚠️ Unaudited |
| RewardsController | governance | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 6 deployments: ethereum `0x06f0c640c47fcfe030da1cdd7dfb5080cb5a0ea8`; sonic `0x1c4be7d7f0184ba6cc458fc99880198c537867e2`; sonic `0x2a0f31cecfd18ccb28e66c7cddfe3a12ad1b2768`; sonic `0x590df1603a14f2444417f811a109d95618b3b54a`; sonic `0x63ff4ad6801c41771d9c3e5053f98468b1d5e65a`; fraxtal `0x0b667e8cdb60df3c2d502eca7e2b0c77910585ad` | ⚠️ Unaudited |
| RewardVault | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | fraxtal | n/a | `0x46478563d4532ef2b68a328c3f528b19626f2e54` | ⚠️ Unaudited |
| Safe | unknown | project_anchor | own_supporting | 4 | ethereum | unit-236639 (4 proxies) | 4 deployments: ethereum `0x04401537ca997a43ebcfec8194c7e88c7ee79804`; ethereum `0x38262effcd17cd64f6311ef688b2caa61102f3db`; ethereum `0x43b1bccff0e4bfef2c32774e53a69a762006c118`; ethereum `0xe83c188a7be46b90715c757a06cf917175f30262` | ⚠️ Unaudited |
| Safe | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0x4b4b5cc616be4cd1947b93f2304d36b3e80d3ef6` | ⚠️ Unaudited |
| SafeL2 | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | sonic | n/a | `0xe83c188a7be46b90715c757a06cf917175f30262` | ⚠️ Unaudited |
| SanitizableAToken | token | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x504d0eacbf9ea5645a8a9da1b15f3708a5483acc` | ⚠️ Unaudited |
| StableDebtToken | token | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 5 deployments: ethereum `0x391afc4190a92350b5c812434b7fbf381feb8631`; sonic `0x4b8a6e413ea075946862aabbcfb7e423d8daf801`; sonic `0x7ebc06bb3f8ec7d0333c182bb78eaaacdd82fc17`; sonic `0xd93c9255d7f88527c45629cf63480b345783751e`; fraxtal `0x43dc80e510863ad51383a135ae4161c46834dfdb` | ⚠️ Unaudited |
| StaticATokenFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | 4 deployments: ethereum `0xcb8f92b9e8b368bfe690a5c6f39a0d6920e1d877`; sonic `0x1cc03e57ed4d426f673dbb4d69e08c91bbbd55a8`; sonic `0x777db2ea92316f03ee5a31245b1787fbebac81f1`; fraxtal `0x2a0f31cecfd18ccb28e66c7cddfe3a12ad1b2768` | ⚠️ Unaudited |
| StaticATokenLM | token | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | 6 deployments: ethereum `0x576dd487bacfa6e7afd1e3ea03da0763f732d4c9`; ethereum `0xeb5260baff0f2018e2faa4fc81d82d0de1c07776`; sonic `0x36e178ba804514d80ea87d78b96db87408b8059e`; sonic `0x5c47b4a90f1d1e92735900081cbded628117adfa`; sonic `0xd927805134dc10426374a347fcdec348bc886a71`; sonic `0xe6dee657efcdfaa67219e271146ef9145034e0d9` | ⚠️ Unaudited |
| SupplyLogic | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | fraxtal | n/a | 4 deployments: ethereum `0xe58dec03a5c25bab45daf83dc8917a29b4817ddb`; sonic `0x48f0964012a3eabae7df89042b9cb02468068f9a`; sonic `0x837c1c92b0e7ae7bb4e1dddf08772c0181fc638a`; fraxtal `0x2d3f5739096478dbcf3df74941861b8d156d6f3e` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | proxy | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | 3 deployments: sonic `0x2e093bf098dc3de208ab23a3b2dbc7cd911ba642`; sonic `0x4ebab4720127d6a547288b701bcacc211af50a83`; sonic `0x84670dfcf8037f9ddf8b3513d8250eb1f87e6a51` | ⚠️ Unaudited |
| UiIncentiveDataProviderV3 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | fraxtal | n/a | 5 deployments: ethereum `0xe3ee2d4bde6695cc1ae4a4cda466bdc6d5df479e`; sonic `0xb1c1d6150c4f072f5426aa918f7924ee73c6ac2d`; sonic `0xd4d1113005683a7673226a63b85dbd4cceee474a`; sonic `0xdd3c66ecde223013a38d5650f9a5e1a20ea6d3c1`; fraxtal `0x21bd81b33d4b04b94bd30c6f015484e830b68830` | ⚠️ Unaudited |
| UiPoolDataProviderV3 | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 5 deployments: ethereum `0x1c4be7d7f0184ba6cc458fc99880198c537867e2`; sonic `0x31e1f0c9698f3c26f4899458513da8912bec9261`; sonic `0xe505f8a6d06da5038e0840b3844ddef375afb37a`; sonic `0xe5ae8775a23293dbf5a59019aa32ba358900cbc4`; fraxtal `0xe284a74c661ad0ff6fc7c07e180bbbda8ed3eabc` | ⚠️ Unaudited |
| VariableDebtToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | 5 deployments: ethereum `0xf5e96f92354de544c2b0b0c4328ef5ded8da27ef`; sonic `0x0b0bd5f8a6f4c72a09748fa915af12ca423b7240`; sonic `0x91813026270755fe9639538d0f32d65302369d08`; sonic `0xf65d5177d97b923b9f7424e785ce65a7395d364e`; fraxtal `0x2eae5a9939716469c404a78be3339e23e1621659` | ⚠️ Unaudited |
| WalletBalanceProvider | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | 5 deployments: ethereum `0xe5ae8775a23293dbf5a59019aa32ba358900cbc4`; sonic `0x220cf42ccccda07a6b180eaef3deb64dc07f0b68`; sonic `0x36535f75d4823f1d49228652cac4eadf92f02dff`; sonic `0xe9bbd4f4af6657a2353f025a41e036f4f6253d3c`; fraxtal `0x4920c967e26b968b54a26009262d1b3e4c0f51e9` | ⚠️ Unaudited |
| WrappedDLendConversionAdapter | adapter | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 6 deployments: ethereum `0x1a5bb485c58a86c193b823d0ea031b68813e100f`; ethereum `0xd07072330f4d814f9943bc4066abd3c3ee48fb07`; sonic `0x317b5c548a57e94db4cd1878933d49f81a226297`; sonic `0xc5ac44f5da6f47eabca63b2910a4720166a3c505`; sonic `0xcd32cfe4c6a1bef90401980c85eafe3c972112dc`; fraxtal `0xced414797155d79fce11bf3d11f36b1b31860e08` | ⚠️ Unaudited |
| WrappedTokenGatewayV3 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | 5 deployments: ethereum `0xb1c1d6150c4f072f5426aa918f7924ee73c6ac2d`; sonic `0x2b56bb5317bb0d7a9de05b421b0a2ea67bb05ec5`; sonic `0x40d1aa3f1b37f8e24bd6872956e8d653abd8a8b2`; sonic `0x64e173c4b5f0384b55ad1407ee4d3a3b787bd7fa`; fraxtal `0x598502c7a3f5445d76b6f9f5020e15cdfe484df5` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (134)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-236603 | `0x3de01b66b97eaf98603920e9e850c6d7b2411ddf` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-236605 | `0x5cc741931d01cb1adde193222dfb1ad75930fd60` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5d5543e671652a5871331d28357064cac02a9e7e` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-236609 | `0x8a9384b094d34db0110988d497e96b17f3b9c930` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x93d2e552f0ac25927bbd3f6c71cab43b73a3acdf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9d286fa4e36a0a5f3134aa3653e1eaa9769352b1` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-236614 | `0xab035f35f3e9891f5756f54bc26dd4a51cd02989` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-236618 | `0xedaf6c1df26371a72be5e8227dcb46283a610611` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x011c49b8d9a861b41502256360b6210d0897e373` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x05281ffe1b05f658897efe53f4c30131d7a2d972` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x08869363aa1e44dbc35fb3f090aa8698625792b5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x0b667e8cdb60df3c2d502eca7e2b0c77910585ad` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x0e1bd16411b2c607f6f84d8ef72ff9a9d04ae4ff` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x101af0b8c63b346cd856341b59da1e27954240d9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x1729718dda56232016e0b3edc6b572997d8d3918` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x2b5ed958755e6674f144381be60c1cac2b1991a7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x2eae5a9939716469c404a78be3339e23e1621659` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x353a84feeccdc14d45bbde2c628dd91c10b59801` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x43dc80e510863ad51383a135ae4161c46834dfdb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x44c69f0ef7a0d96b77437ec2e1bf9d74f5c5e7a2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x5d561d24aad091d0a4f00fcb7b823349af88936e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x604f81a851522a7bf1a0e07ce8a6ae0da0b078e0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x673c07f5d33d1ebb802367c890e3272f10b7ae6a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x68e1085a7639e80257f7f159a611dd944278a24e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x6a60eb9c89bad7569f7c4612957408bad8ccc00e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x6d9216b47b507874a8e79ff2afaf0e5ababca36b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x6df5f10e7585f7d51e5d6a5e519a3de861ef4f84` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x6e15a80f0baf7b83ce7ecee3c1c9bb6f969b7460` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x83cf77d0458c5f77c7c49da018b35bde2e98c3f0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x94613ffa547dde812d0f525ae0defd55a0ed56b6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x96b35fef13d57a79b167e93fed0f2001e0072d39` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x972aad217d13715aa9aed17c6e2d6bf384e9633d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x98df533ccdfbfc7369f3fc9b21248fe4ada8b4da` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xa0e5727841400ee0fa621df34b8800acc23d3afa` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xa299139d6ed439d67f79d67cef085e52f9f408b4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xb6294e55af9f8b489b6c27366c8aafae0c58df92` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xbe161020f63ac5a2897134ac61020fca952a1d37` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xc18b93cac3c2404cca2187332e9767bb73feb7ed` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xcab481e858f7f0619594c871028344925c40e451` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xcc3ee46c61bbe28b73b1e8b1927bb56c9f870161` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xcc4da154404d23ecec5b0dd60f81e36f9c9a7a06` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xd1d9d6358ce7903dd3322d99d66ad987ec5ca496` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xda988af6409ef17395a0323536e082ad7a518ea4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xdbe36167258112a90cb2d0f1522855b972aca375` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xdc4e3fd020c55fc3d27a799c52252a8d7a17e28b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xdd796c65380ce9085d5d925d6e7374b23be7ae60` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xf3eb4b40d8a40cbfc89c868be6bcaf057e39c0ad` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xfc2a2f13bd5bbdf0fb6041887af5df07795898f9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | fraxtal | n/a | `0x02165d665e171566629822d9380ad93b975b186c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | fraxtal | n/a | `0x06f0c640c47fcfe030da1cdd7dfb5080cb5a0ea8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | fraxtal | n/a | `0x074319f1816bdd0ac049786d33f5aea86ff01af1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | fraxtal | n/a | `0x077db2c91a13f23dcc506432de1a1a3d57afb37b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | fraxtal | n/a | `0x0785f48173e9f52b89214257f8d0c0746a02c17d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | fraxtal | n/a | `0x07cd3941fd0b87f4829c75c4dde4b962e133bd3e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | fraxtal | n/a | `0x0ad050f971e4d96c999c8dd38a9d88cadde73786` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | fraxtal | n/a | `0x0bd5b04149d0853f57a0ec458a679d21be4f0203` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | fraxtal | n/a | `0x12978edc607ef626e35c995e18e8e410451dc2f2` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | fraxtal | unit-236620 | `0x12ed58f0744de71c39118143dcc26977cb99cdef` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | fraxtal | n/a | `0x1448a8761d6bfa7d84eccabe7d971eabf3ac1686` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | fraxtal | n/a | `0x1a5bb485c58a86c193b823d0ea031b68813e100f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | fraxtal | n/a | `0x1c4be7d7f0184ba6cc458fc99880198c537867e2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | fraxtal | n/a | `0x1c7b9f33d309131877db5ae87f875e2b6dce496b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | fraxtal | unit-236621 | `0x1f075573e3eb0d7b2d10266ba8c2c2449fa862f7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | fraxtal | n/a | `0x20b1884c9347bebc13e9aca1965c5ae56b0a8590` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | fraxtal | n/a | `0x20ceffdd2b49a11b1bfc217c46cc027247d89355` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | fraxtal | n/a | `0x2480195108d0fcf363ed5d5eecb9d63b72a5bebe` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | fraxtal | unit-236622 | `0x29155d25b11ee91fec887b09da8ef86951799ee0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | fraxtal | n/a | `0x29532f74a9302e0a1e9f7d015fe355ffde6e6880` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | fraxtal | unit-236623 | `0x29d0256fe397f6e442464982c4cba7670646059b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | fraxtal | n/a | `0x2c5e9dcdac88ce50e34a47d4f539bb3fc92b4874` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | fraxtal | unit-236624 | `0x2d8ae7d18d61dd02ebf5367bb62bbd485736a0ab` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | fraxtal | n/a | `0x31bf6b030d20af8a92d169632ffd8077456e6316` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | fraxtal | n/a | `0x3602c7367776e1486b257c8deff1891620c7c1d4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | fraxtal | n/a | `0x3b038b62a7c3d0b195eada848860ae2ed8507b00` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | fraxtal | n/a | `0x3f0c2f6a30910e8606c439eb5fcb30135f484c5d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | fraxtal | n/a | `0x4146451750a3635d9d2b2d1a398ce30b7ffacb87` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | fraxtal | n/a | `0x41cbecc9ec9f142437323b4899e01b8c6d5b9d70` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | fraxtal | n/a | `0x43a1c85e5bc8377b5e79b9127874b41a4c420a3b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | fraxtal | n/a | `0x47c3882a05fc3a6ec4e6959812fdc2d4ee280210` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | fraxtal | n/a | `0x4f86bc2c31b9c071ac4c3df9e35aa76dfd344159` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | fraxtal | n/a | `0x501ce63871f9bb20620233d22d0d4f539fe8a9a1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | fraxtal | n/a | `0x539984a5863d4523d093e8539acabb899c6ceca0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | fraxtal | n/a | `0x63f2feec5f50877ad2fe0979466f20ae23ac1bbc` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | fraxtal | unit-236628 | `0x64188de66add8b3d813f2dc157dfedaf74f10ede` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | fraxtal | n/a | `0x6419567693331592e5e422305f51a3ec2fa69447` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | fraxtal | n/a | `0x683f183070ee9c12b25618db3483266888ce9809` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | fraxtal | unit-236629 | `0x6b937da34fb213763458a3b7672b950df1f560de` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | fraxtal | n/a | `0x724b258eeb14a08fd10d6c3582d03e6804725901` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | fraxtal | n/a | `0x77edd449e6da9ecec943f306b83c60df9cd51b69` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | fraxtal | n/a | `0x79b3f30b05016969325c587b346cff2ed4f76ca2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | fraxtal | n/a | `0x7cb20517776636ed76b68edb3d99dcce356abf02` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | fraxtal | n/a | `0x81a01e10441c4617a6d5b8e76de94a3ca9fce5ca` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | fraxtal | unit-236630 | `0x8315047c1fdfb27656c2893b432324919f7448de` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | fraxtal | n/a | `0x8401f4af1e20d900681f877defc415f959ff3dae` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | fraxtal | n/a | `0x84c58066a4408454b7380f168c95f571419253f4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | fraxtal | n/a | `0x86c560a60a916eb4f1d4046524c4bef0345a04b4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | fraxtal | n/a | `0x8fb6eae0bf9032a4fc0f91ed780ef762c692f590` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | fraxtal | n/a | `0x91813026270755fe9639538d0f32d65302369d08` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | fraxtal | n/a | `0x96a5a828c554b4d5acdb9f0f4bb15b24c0423b69` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | fraxtal | n/a | `0x9f0253138edb0d097505ca6a1f1ef5d81778fdef` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | fraxtal | n/a | `0xa51fa58c76d92f1b0d4d6e3b88d2ba0aff2c2b56` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | fraxtal | n/a | `0xab5fea3e33d5aa01b8b1632c9afd0df05ad8cd4f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | fraxtal | n/a | `0xb4367357f11c089e610482500fdc524883b31577` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | fraxtal | n/a | `0xb5cc587f0b35c9817d1e1f9bf3670189a39bc72f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | fraxtal | n/a | `0xb76a00c8f6085f2dbf19f7f20c3bd65a2c019108` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | fraxtal | n/a | `0xb7cff0c4301cd43b01d96d4d8669550bb50f8635` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | fraxtal | n/a | `0xbc53406583d4370ea4a5dc2bfd5592ef9cea56a7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | fraxtal | n/a | `0xbdfe9d2a96d1dbefdda0a7810144c82926450cc9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | fraxtal | n/a | `0xc1a3e77dc3a66c287d75f1547b17e46a8f196a74` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | fraxtal | n/a | `0xc792f223c6c836f9e628ce29bed5f4aee6e18cc6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | fraxtal | n/a | `0xc85492686004914a64930afaf48809384250a1ba` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | fraxtal | n/a | `0xcb8f92b9e8b368bfe690a5c6f39a0d6920e1d877` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | fraxtal | n/a | `0xcea995daf89500fe165bc86d829552b03a1d1396` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | fraxtal | n/a | `0xd23431f39c88875d1cd6b517d4e54b752fe5776d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | fraxtal | n/a | `0xd24ca3ab043edd9584d3fb5d653bbcd0b0e3ca10` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | fraxtal | n/a | `0xdba93cb44cdf2b8310a2ac28db70aa3347f46e39` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | fraxtal | n/a | `0xdd26c236ec95d03ddf3cb67b7f54864719e9be5a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | fraxtal | n/a | `0xe036a59a3a86f808f040cc2bf30cf1353125e7c6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | fraxtal | n/a | `0xe3ee2d4bde6695cc1ae4a4cda466bdc6d5df479e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | fraxtal | n/a | `0xe5ae8775a23293dbf5a59019aa32ba358900cbc4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | fraxtal | n/a | `0xe6114174073b1afcb45d73fe65af0619a3c1fb21` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | fraxtal | n/a | `0xe7995e8fb53ab436337e427dbeea4695aae89ff7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | fraxtal | n/a | `0xe7c49a1305ec0a61bf126a2a9bf6e4cecf244a28` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | fraxtal | unit-236636 | `0xe919136c67493046fc26bf04e86a82c747ee2edf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | fraxtal | n/a | `0xe9bbd4f4af6657a2353f025a41e036f4f6253d3c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | fraxtal | n/a | `0xeb5260baff0f2018e2faa4fc81d82d0de1c07776` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | fraxtal | n/a | `0xefd794e2d8024f3c25aa343588dd6d4481b5db7c` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | fraxtal | unit-236637 | `0xf1082f0323e6a35c93a05160e0e3054b62bf4c0e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | fraxtal | n/a | `0xf218d6bdf82123d54653afdd404f1ba68535e4ec` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | fraxtal | n/a | `0xf5e07e90f2b10224c449714e9d8edec6cfc071e6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | fraxtal | n/a | `0xf93fb0add57133aecd56fa48350684b5a7a1a5b9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | fraxtal | n/a | `0xfda3a0effe2f3917aa60e0741c6788619ae19e84` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | fraxtal | n/a | `0xfddcb44dfc4f62d4529f1edb7a6aad84ae86ec98` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | fraxtal | n/a | `0xff426ffa3c828e1d540c4c958173ac8d13285280` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [drive.google.com/file/d/1Q58ewyXYxWTpbUoGct6Rdl4PuvJQD1N9/view](https://drive.google.com/file/d/1Q58ewyXYxWTpbUoGct6Rdl4PuvJQD1N9/view?usp=drive_link) | Verichains | Audit | 2024-06 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 2 | high |
| [drive.google.com/file/d/1WJSIYMoLZLeQ5ix9gxKYqRrzePowU2BO/view](https://drive.google.com/file/d/1WJSIYMoLZLeQ5ix9gxKYqRrzePowU2BO/view?usp=sharing) | Halborn | Audit | 2024-10 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 8 | high |
| [drive.google.com/file/d/13K-vwkwb3NJKhSa3eaBf1rVeSscHxAxY/view](https://drive.google.com/file/d/13K-vwkwb3NJKhSa3eaBf1rVeSscHxAxY/view?usp=sharing) | Cyberscope | Audit | 2024-10 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 8 | high |
| [report.md](https://github.com/hats-finance/dTRINITY-0xee5c6f15e8d0b55a5eff84bb66beeee0e6140ffe/blob/report-update-20250822T111243728Z/report.md) | Hats Finance | Contest | n/a | unknown | Direct | contract_name | matched | 2 | 1 | 0 | 37 | high |
| [drive.google.com/file/d/1iVIOl8xwNr__d9J_gArV-xZlHidBDst3/view](https://drive.google.com/file/d/1iVIOl8xwNr__d9J_gArV-xZlHidBDst3/view?usp=sharing) | Hashlock | Audit | 2025-10 | fresh | Direct | contract_name | matched | 2 | 1 | 0 | 26 | high |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [11573] drive.google.com/file/d/1Q58ewyXYxWTpbUoGct6Rdl4PuvJQD1N9/view — no match: Audit scope mentions forked repos but only dTrinity-specific contracts RewardsController and EmissionManager are explicitly referenced in findings. No other dTrinity contract names are given.
- [11574] drive.google.com/file/d/1WJSIYMoLZLeQ5ix9gxKYqRrzePowU2BO/view — no match: Scope section lists 8 contracts: DexOracleWrapper, OracleAggregator, OracleAware, AmoManager, CollateralVault, Issuer, Redeemer, UniV3AmoVault. Audit date is the end date of engagement: October 4th, 2024.
- [11575] drive.google.com/file/d/13K-vwkwb3NJKhSa3eaBf1rVeSscHxAxY/view — no match: All 8 contracts listed in source files table and described in overview sections.
- [11576] report.md — matched: Extracted all contract names from the scope table in the audit report. No audit date found in the provided text.
- [11577] drive.google.com/file/d/1iVIOl8xwNr__d9J_gArV-xZlHidBDst3/view — matched: Extracted 28 contract names from the Audit Scope section (pages 7-9) which lists 28 contracts with file paths. Audit date is given as 'October, 2025' in the scope table, interpreted as 2025-10-31 (last day of month).

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| drive.google.com/file/d/1Q58ewyXYxWTpbUoGct6Rdl4PuvJQD1N9/view | RewardsController | unmatched — not counted | — | mentioned in finding position and code snippet | no |
| drive.google.com/file/d/1Q58ewyXYxWTpbUoGct6Rdl4PuvJQD1N9/view | EmissionManager | unmatched — not counted | — | mentioned in finding code snippet | no |
| drive.google.com/file/d/1WJSIYMoLZLeQ5ix9gxKYqRrzePowU2BO/view | DexOracleWrapper | unmatched — not counted | — | listed in scope | no |
| drive.google.com/file/d/1WJSIYMoLZLeQ5ix9gxKYqRrzePowU2BO/view | OracleAggregator | unmatched — not counted | — | listed in scope | no |
| drive.google.com/file/d/1WJSIYMoLZLeQ5ix9gxKYqRrzePowU2BO/view | OracleAware | unmatched — not counted | — | listed in scope | no |
| drive.google.com/file/d/1WJSIYMoLZLeQ5ix9gxKYqRrzePowU2BO/view | AmoManager | unmatched — not counted | — | listed in scope | no |
| drive.google.com/file/d/1WJSIYMoLZLeQ5ix9gxKYqRrzePowU2BO/view | CollateralVault | unmatched — not counted | — | listed in scope | no |
| drive.google.com/file/d/1WJSIYMoLZLeQ5ix9gxKYqRrzePowU2BO/view | Issuer | unmatched — not counted | — | listed in scope | no |
| drive.google.com/file/d/1WJSIYMoLZLeQ5ix9gxKYqRrzePowU2BO/view | Redeemer | unmatched — not counted | — | listed in scope | no |
| drive.google.com/file/d/1WJSIYMoLZLeQ5ix9gxKYqRrzePowU2BO/view | UniV3AmoVault | unmatched — not counted | — | listed in scope | no |
| drive.google.com/file/d/13K-vwkwb3NJKhSa3eaBf1rVeSscHxAxY/view | AmoManager | unmatched — not counted | — | listed in source files and overview | no |
| drive.google.com/file/d/13K-vwkwb3NJKhSa3eaBf1rVeSscHxAxY/view | AmoVault | unmatched — not counted | — | listed in source files and overview | no |
| drive.google.com/file/d/13K-vwkwb3NJKhSa3eaBf1rVeSscHxAxY/view | CollateralVault | unmatched — not counted | — | listed in source files and overview | no |
| drive.google.com/file/d/13K-vwkwb3NJKhSa3eaBf1rVeSscHxAxY/view | Issuer | unmatched — not counted | — | listed in source files and overview | no |
| drive.google.com/file/d/13K-vwkwb3NJKhSa3eaBf1rVeSscHxAxY/view | OracleAggregator | unmatched — not counted | — | listed in source files and overview | no |
| drive.google.com/file/d/13K-vwkwb3NJKhSa3eaBf1rVeSscHxAxY/view | OracleAware | unmatched — not counted | — | listed in source files and overview | no |
| drive.google.com/file/d/13K-vwkwb3NJKhSa3eaBf1rVeSscHxAxY/view | Redeemer | unmatched — not counted | — | listed in source files and overview | no |
| drive.google.com/file/d/13K-vwkwb3NJKhSa3eaBf1rVeSscHxAxY/view | UniV3AmoVault | unmatched — not counted | — | listed in source files and overview | no |
| report.md | SupportsWithdrawalFee | unmatched — not counted | — | listed in scope table | no |
| report.md | RescuableVault | unmatched — not counted | — | listed in scope table | no |
| report.md | SwappableVault | unmatched — not counted | — | listed in scope table | no |
| report.md | OdosSwapUtils | unmatched — not counted | — | listed in scope table | no |
| report.md | AaveOracle | unmatched — not counted | — | listed in scope table | no |
| report.md | AmoVault | unmatched — not counted | — | listed in scope table | no |
| report.md | AmoManager | unmatched — not counted | — | listed in scope table | no |
| report.md | CollateralHolderVault | ambiguous — not counted | CollateralHolderVault (alternative) `0x84c58066a4408454b7380f168c95f571419253f4` — deployed 2025-12-10 20:01:35+03 — liveness: live (code_present_context)<br>CollateralHolderVault (alternative) `0x624e12de7a97b8cfc1ad1f050a1c9263b1f4febc` — deployed 2024-12-19 04:22:47+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| report.md | CollateralVault | unmatched — not counted | — | listed in scope table | no |
| report.md | Issuer | unmatched — not counted | — | listed in scope table | no |
| report.md | OracleAware | unmatched — not counted | — | listed in scope table | no |
| report.md | RedeemerWithFees | unmatched — not counted | — | listed in scope table | no |
| report.md | ChainlinkDecimalConverter | unmatched — not counted | — | listed in scope table | no |
| report.md | BaseAPI3Wrapper | unmatched — not counted | — | listed in scope table | no |
| report.md | BaseChainlinkWrapper | unmatched — not counted | — | listed in scope table | no |
| report.md | OracleAggregator | unmatched — not counted | — | listed in scope table | no |
| report.md | API3CompositeWrapperWithThresholding | unmatched — not counted | — | listed in scope table | no |
| report.md | HardPegOracleWrapper | unmatched — not counted | — | listed in scope table | no |
| report.md | API3Wrapper | unmatched — not counted | — | listed in scope table | no |
| report.md | API3WrapperWithThresholding | unmatched — not counted | — | listed in scope table | no |
| report.md | RedstoneChainlinkCompositeWrapperWithThresholding | unmatched — not counted | — | listed in scope table | no |
| report.md | RedstoneChainlinkWrapper | unmatched — not counted | — | listed in scope table | no |
| report.md | RedstoneChainlinkWrapperWithThresholding | unmatched — not counted | — | listed in scope table | no |
| report.md | ThresholdingUtils | unmatched — not counted | — | listed in scope table | no |
| report.md | DLoopCoreDLend | unmatched — not counted | — | listed in scope table | no |
| report.md | DLoopCoreBase | unmatched — not counted | — | listed in scope table | no |
| report.md | DataTypes | unmatched — not counted | — | listed in scope table | no |
| report.md | DLoopDepositorBase | unmatched — not counted | — | listed in scope table | no |
| report.md | DLoopRedeemerBase | unmatched — not counted | — | listed in scope table | no |
| report.md | DLoopDepositorOdos | unmatched — not counted | — | listed in scope table | no |
| report.md | DLoopRedeemerOdos | unmatched — not counted | — | listed in scope table | no |
| report.md | OdosSwapLogic | unmatched — not counted | — | listed in scope table | no |
| report.md | DStakeCollateralVault | own contract | DStakeCollateralVault (selected) `0x5432ed4a370718d6904485e2fc114762c68cc7be` — deployed 2025-07-30 12:57:25+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| report.md | WrappedDLendConversionAdapter | unmatched — not counted | — | listed in scope table | no |
| report.md | DStakeRouterDLend | unmatched — not counted | — | listed in scope table | no |
| report.md | DStakeToken | own proxy deployment | TransparentUpgradeableProxy (proxy) (selected) `0x58acc2600835211dcb5847c5fa422791fd492409` — deployed 2025-07-30 12:57:19+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| report.md | DStakeRewardManagerDLend | unmatched — not counted | — | listed in scope table | no |
| report.md | RewardClaimable | unmatched — not counted | — | listed in scope table | no |
| report.md | ERC20VestingNFT | unmatched — not counted | — | listed in scope table | no |
| drive.google.com/file/d/1iVIOl8xwNr__d9J_gArV-xZlHidBDst3/view | IssuerV2_1 | unmatched — not counted | — | listed in scope table | no |
| drive.google.com/file/d/1iVIOl8xwNr__d9J_gArV-xZlHidBDst3/view | RedeemerV2 | unmatched — not counted | — | listed in scope table | no |
| drive.google.com/file/d/1iVIOl8xwNr__d9J_gArV-xZlHidBDst3/view | AmoManagerV2 | ambiguous — not counted | AmoManagerV2 (alternative) `0x57bbd5026503bb54cc50a4129c4896cba40bebae` — deployed 2025-11-28 05:45:33+03 — liveness: live (current_address_book_code)<br>AmoManagerV2 (alternative) `0x29532f74a9302e0a1e9f7d015fe355ffde6e6880` — deployed 2025-12-11 07:28:23+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| drive.google.com/file/d/1iVIOl8xwNr__d9J_gArV-xZlHidBDst3/view | AmoDebtToken | unmatched — not counted | — | listed in scope table | no |
| drive.google.com/file/d/1iVIOl8xwNr__d9J_gArV-xZlHidBDst3/view | BaseOdosSwapAdapter | unmatched — not counted | — | listed in scope table | no |
| drive.google.com/file/d/1iVIOl8xwNr__d9J_gArV-xZlHidBDst3/view | BaseOdosSellAdapterV2 | unmatched — not counted | — | listed in scope table | no |
| drive.google.com/file/d/1iVIOl8xwNr__d9J_gArV-xZlHidBDst3/view | BaseOdosBuyAdapterV2 | unmatched — not counted | — | listed in scope table | no |
| drive.google.com/file/d/1iVIOl8xwNr__d9J_gArV-xZlHidBDst3/view | OdosDebtSwapAdapterV2 | unmatched — not counted | — | listed in scope table | no |
| drive.google.com/file/d/1iVIOl8xwNr__d9J_gArV-xZlHidBDst3/view | OdosLiquiditySwapAdapterV2 | unmatched — not counted | — | listed in scope table | no |
| drive.google.com/file/d/1iVIOl8xwNr__d9J_gArV-xZlHidBDst3/view | OdosRepayAdapterV2 | unmatched — not counted | — | listed in scope table | no |
| drive.google.com/file/d/1iVIOl8xwNr__d9J_gArV-xZlHidBDst3/view | OdosWithdrawSwapAdapterV2 | unmatched — not counted | — | listed in scope table | no |
| drive.google.com/file/d/1iVIOl8xwNr__d9J_gArV-xZlHidBDst3/view | OracleValidation | unmatched — not counted | — | listed in scope table | no |
| drive.google.com/file/d/1iVIOl8xwNr__d9J_gArV-xZlHidBDst3/view | PendleSwapLogic | unmatched — not counted | — | listed in scope table | no |
| drive.google.com/file/d/1iVIOl8xwNr__d9J_gArV-xZlHidBDst3/view | SafeOracleMath | unmatched — not counted | — | listed in scope table | no |
| drive.google.com/file/d/1iVIOl8xwNr__d9J_gArV-xZlHidBDst3/view | SwapExecutor | unmatched — not counted | — | listed in scope table | no |
| drive.google.com/file/d/1iVIOl8xwNr__d9J_gArV-xZlHidBDst3/view | OdosSwapUtils | unmatched — not counted | — | listed in scope table | no |
| drive.google.com/file/d/1iVIOl8xwNr__d9J_gArV-xZlHidBDst3/view | SupportsWithdrawalFee | unmatched — not counted | — | listed in scope table | no |
| drive.google.com/file/d/1iVIOl8xwNr__d9J_gArV-xZlHidBDst3/view | RewardClaimable | unmatched — not counted | — | listed in scope table | no |
| drive.google.com/file/d/1iVIOl8xwNr__d9J_gArV-xZlHidBDst3/view | ERC20VestingNFT | unmatched — not counted | — | listed in scope table | no |
| drive.google.com/file/d/1iVIOl8xwNr__d9J_gArV-xZlHidBDst3/view | DStakeCollateralVaultV2 | own contract | DStakeCollateralVaultV2 (selected) `0x4acbcfa29fb085097c5f31783403ef7a7930f6fe` — deployed 2025-12-12 11:40:59+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| drive.google.com/file/d/1iVIOl8xwNr__d9J_gArV-xZlHidBDst3/view | DStakeRouterV2 | unmatched — not counted | — | listed in scope table | no |
| drive.google.com/file/d/1iVIOl8xwNr__d9J_gArV-xZlHidBDst3/view | DStakeTokenV2 | own proxy deployment | TransparentUpgradeableProxy (proxy) (selected) `0x7cb20517776636ed76b68edb3d99dcce356abf02` — deployed 2025-12-12 11:40:47+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| drive.google.com/file/d/1iVIOl8xwNr__d9J_gArV-xZlHidBDst3/view | GenericERC4626ConversionAdapter | unmatched — not counted | — | listed in scope table | no |
| drive.google.com/file/d/1iVIOl8xwNr__d9J_gArV-xZlHidBDst3/view | MetaMorphoConversionAdapter | unmatched — not counted | — | listed in scope table | no |
| drive.google.com/file/d/1iVIOl8xwNr__d9J_gArV-xZlHidBDst3/view | AllocationCalculator | unmatched — not counted | — | listed in scope table | no |
| drive.google.com/file/d/1iVIOl8xwNr__d9J_gArV-xZlHidBDst3/view | DeterministicVaultSelector | unmatched — not counted | — | listed in scope table | no |
| drive.google.com/file/d/1iVIOl8xwNr__d9J_gArV-xZlHidBDst3/view | DStakeRewardManagerMetaMorpho | unmatched — not counted | — | listed in scope table | no |
| drive.google.com/file/d/1iVIOl8xwNr__d9J_gArV-xZlHidBDst3/view | DStakeIdleVault | unmatched — not counted | — | listed in scope table | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| fraxtal | `0xa5f9f6238406b1301d0ed09555a2893dc1a26a49` | ACLManager | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x29532f74a9302e0a1e9f7d015fe355ffde6e6880` | AmoManagerV2 | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| fraxtal | `0x57bbd5026503bb54cc50a4129c4896cba40bebae` | AmoManagerV2 | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x84c58066a4408454b7380f168c95f571419253f4` | CollateralHolderVault | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| fraxtal | `0x624e12de7a97b8cfc1ad1f050a1c9263b1f4febc` | CollateralHolderVault | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x07fff99e1664d9b116fbc158c0e99785f81ca236` | ERC20StablecoinUpgradeable | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| fraxtal | `0x788d96f655735f52c676a133f4dfc53cec614d4a` | ERC20StablecoinUpgradeable | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 97 |
| upstream | 5 |
| standard_library | 21 |
| needs_review | 134 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 3
- Inherited remapped matches: 0
- Address-book scope dispositions: 4 own (2 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 2 ambiguous, 79 unmatched
- Matched-own operational status: 4 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=5
- Match method counts: unique_name=4

Zero-match audit list:

- [11573] drive.google.com/file/d/1Q58ewyXYxWTpbUoGct6Rdl4PuvJQD1N9/view
- [11574] drive.google.com/file/d/1WJSIYMoLZLeQ5ix9gxKYqRrzePowU2BO/view
- [11575] drive.google.com/file/d/13K-vwkwb3NJKhSa3eaBf1rVeSscHxAxY/view

Fork inheritance lineage and inherited audits are included when available.
