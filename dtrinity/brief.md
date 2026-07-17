# Agentic Audit Brief: dTRINITY

## Project Overview

- Project: dTRINITY (`dtrinity`)
- Website: [https://dtrinity.org/](https://dtrinity.org/)
- Lifecycle: unknown
- Generated: 2026-07-04T14:53:11.275Z
- Pipeline run: v2-pipeline-2026-07-01-3e33f2-f007
- Chains: ethereum, fraxtal, sonic
- Contract surface: 212 unique implementations (402 raw deployments)
- DeFi Llama TVL: $2,254,148.00
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Lending. Structurally: 188 project-authored contract(s) across 3 chain(s); 8 ERC4626 vaults, 37 ERC20 tokens; role-gated via AccessControl; upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 10 functional families. Its contracts share 23 common project-authored base contract(s) (versionedinitializable, proxy, erc1967upgrade). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 552; live-surface contracts included: 384 (263 live, 121 unknown).
- Excluded by liveness: 168 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 11/79 (13.9%)
- Deployed-live implementations: 91 of 212 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 11/91
- Verified + Unaudited implementations: 80
- Verified by bytecode match: 0
- Unverified implementations: 121
- Unique implementations: 212
- Raw deployments: 402
- Audits discovered: 5 (5 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 1
- ASD (verified + unaudited TVL): n/a
- Latest audit: n/a (unknown)
- Audit staleness (calendar age): 0 fresh, 0 aging, 0 stale, 5 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 11 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| Hats Finance | Tier 2 | 11 | 12.1% | n/a |

## Contract Surface

### ✅ Verified + Audited (11)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| AmoManager | unknown | sonic | n/a | 11 deployments: sonic [`0x0346e3770fba1fa6b041aae9b7fd5070bd46973c`](./contracts/sonic-146/0x0346e3770fba1fa6b041aae9b7fd5070bd46973c/); sonic `0x090af63bbf0b5837d8c1bf75729489ae233f429c`; sonic `0x20ceffdd2b49a11b1bfc217c46cc027247d89355`; sonic `0x2592389c4845e265497b409e7a9ab67bc4adf8aa`; sonic `0x29adcba0244be0dd9220ae114f8edae5ccda87ab`; sonic `0x75f14fc0610a18ec8bc95201013ca2d805164eb1`; sonic `0x788d96f655735f52c676a133f4dfc53cec614d4a`; sonic `0xfb9383d232288293d98ae0f590f9904cc0e89108`; fraxtal `0x1600804da391370749624bbd01ce52ec81370505`; fraxtal `0x49a0c8030ca199f6f246517ae689e3cc0775271a`; fraxtal `0xd9ba545656cba566c042f96634749242a3bf76c7` | ✅ Audited |
| CollateralHolderVault | core_logic | ethereum | n/a | 2 deployments: ethereum [`0x349ee07146157648d40fd471380b510b4d56a2f2`](./contracts/ethereum-1/0x349ee07146157648d40fd471380b510b4d56a2f2/); ethereum `0x84c58066a4408454b7380f168c95f571419253f4` | ✅ Audited |
| DStakeCollateralVault | core_logic | fraxtal | n/a | 4 deployments: sonic `0x709c233a9e82e9fa9990d8163da47b1cce9be595`; sonic `0x925a5ce02b8ffabb49179a4ad49b7893bc8eead9`; sonic `0xd4258dd87ed5eb103aa9760a963c2dd7f61b4d8c`; fraxtal [`0x5432ed4a370718d6904485e2fc114762c68cc7be`](./contracts/fraxtal-252/0x5432ed4a370718d6904485e2fc114762c68cc7be/) | ✅ Audited |
| DStakeRewardManagerDLend | core_logic | fraxtal | n/a | [`0xf224e69c461a2dd3c5f6f6814529c8cf557a1367`](./contracts/fraxtal-252/0xf224e69c461a2dd3c5f6f6814529c8cf557a1367/) | ✅ Audited |
| DStakeRouterDLend | adapter | fraxtal | n/a | [`0xefc15efb330112a2c313d5da8f1b29893ad4cd99`](./contracts/fraxtal-252/0xefc15efb330112a2c313d5da8f1b29893ad4cd99/) | ✅ Audited |
| DStakeToken | token | sonic | n/a | [`0x5a5ce9fc488a17618d5fdef867fa67c1b7882bae`](./contracts/sonic-146/0x5a5ce9fc488a17618d5fdef867fa67c1b7882bae/) | ✅ Audited |
| Issuer | unknown | sonic | n/a | 10 deployments: sonic [`0x09061316c817cbfd4b2b962cbe4db64980a15c59`](./contracts/sonic-146/0x09061316c817cbfd4b2b962cbe4db64980a15c59/); sonic `0x09f790b31b26ee7a5ea24537393a039db3ab45cf`; sonic `0x1f3754cf73a64b76487f9454ee293e691d4e990e`; sonic `0x3b8c68a3f731ef0cc699b819651e21e8f7cb51f8`; sonic `0x5e8352729ebd1ea860836d6b3f59eaf286488d15`; sonic `0x72ef2d25db369717f79f0579e7e74127feb81fbf`; sonic `0x807aa6bfc01e509a4a90e8a358548c819cb0bca1`; sonic `0x96a5a828c554b4d5acdb9f0f4bb15b24c0423b69`; fraxtal `0x1ec13ef0b22c53298a00b23b03203e03d999b7a2`; fraxtal `0x823fd0227ce89dc6694a213e9f9d3d64f5d4715c` | ✅ Audited |
| OdosSwapLogic | unknown | fraxtal | n/a | [`0xb029d67e4eb9d71d2e7140425e7227c5074dd2ba`](./contracts/fraxtal-252/0xb029d67e4eb9d71d2e7140425e7227c5074dd2ba/) | ✅ Audited |
| OracleAggregator | operational_periphery | sonic | n/a | 2 deployments: sonic [`0x1295a55d482257ecd66ba8846eab6849712c3a9c`](./contracts/sonic-146/0x1295a55d482257ecd66ba8846eab6849712c3a9c/); fraxtal `0xfa7560956807d95dcef22990ddd92e38dbaf5cdd` | ✅ Audited |
| RedeemerWithFees | unknown | sonic | n/a | 4 deployments: sonic [`0x12bccbbc931db5eae47efc04aca1b3f695db561c`](./contracts/sonic-146/0x12bccbbc931db5eae47efc04aca1b3f695db561c/); sonic `0x1f5d6e62e1ba39264b9a66e544065b0e45c2b221`; sonic `0x528872c03319fd5130e0a506372b6cea666c4927`; fraxtal `0xb0499d608836dac2894e6c2f7db4e6f28cbd8d16` | ✅ Audited |
| WrappedDLendConversionAdapter | adapter | ethereum | n/a | 6 deployments: ethereum [`0x1a5bb485c58a86c193b823d0ea031b68813e100f`](./contracts/ethereum-1/0x1a5bb485c58a86c193b823d0ea031b68813e100f/); ethereum `0xd07072330f4d814f9943bc4066abd3c3ee48fb07`; sonic `0x317b5c548a57e94db4cd1878933d49f81a226297`; sonic `0xc5ac44f5da6f47eabca63b2910a4720166a3c505`; sonic `0xcd32cfe4c6a1bef90401980c85eafe3c972112dc`; fraxtal `0xced414797155d79fce11bf3d11f36b1b31860e08` | ✅ Audited |

### ⚠️ Verified + Unaudited (80)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| AaveEcosystemReserveV2 | unknown | fraxtal | n/a | [`0x99a434c9387dac572bdd6dacb1b7e27314eafb16`](./contracts/fraxtal-252/0x99a434c9387dac572bdd6dacb1b7e27314eafb16/) | ⚠️ Unaudited |
| ACLManager | governance | ethereum | n/a | 3 deployments: ethereum [`0x80f7023e25a32e4a020ed71346c0f37c10589609`](./contracts/ethereum-1/0x80f7023e25a32e4a020ed71346c0f37c10589609/); sonic `0x973044bf0667d49de528cd32737028cc4e08e593`; fraxtal `0x93d2e552f0ac25927bbd3f6c71cab43b73a3acdf` | ⚠️ Unaudited |
| AdminUpgradeabilityProxy | unknown | ethereum | n/a | [`0xc85492686004914a64930afaf48809384250a1ba`](./contracts/ethereum-1/0xc85492686004914a64930afaf48809384250a1ba/) | ⚠️ Unaudited |
| AmoDebtToken | token | fraxtal | n/a | 3 deployments: ethereum `0x55a626e2f9df98ec09a8898363c26bcb396b098d`; ethereum `0x88e49f238ea53b2a18b6d947e68223e353aaaa38`; fraxtal [`0x3e17fd53fcb2dbd409b92f4860326b8b880e3c28`](./contracts/fraxtal-252/0x3e17fd53fcb2dbd409b92f4860326b8b880e3c28/) | ⚠️ Unaudited |
| AmoManagerV2 | governance | ethereum | n/a | 3 deployments: ethereum [`0x29532f74a9302e0a1e9f7d015fe355ffde6e6880`](./contracts/ethereum-1/0x29532f74a9302e0a1e9f7d015fe355ffde6e6880/); ethereum `0xbc53406583d4370ea4a5dc2bfd5592ef9cea56a7`; fraxtal `0x57bbd5026503bb54cc50a4129c4896cba40bebae` | ⚠️ Unaudited |
| AtomicMarketListingHelper | periphery | fraxtal | n/a | [`0x67c3ad684243430ca1f7f32fe4a64eb223ad2662`](./contracts/fraxtal-252/0x67c3ad684243430ca1f7f32fe4a64eb223ad2662/) | ⚠️ Unaudited |
| BorrowLogic | unknown | sonic | n/a | 4 deployments: ethereum `0x81036951050a25cf6f0501ff3f981e3ed3b72786`; sonic [`0x1e06f1d027686abb8c7aab7feec115f5a8c606ab`](./contracts/sonic-146/0x1e06f1d027686abb8c7aab7feec115f5a8c606ab/); sonic `0x9e302c78065cc260751b383c9ac226c2fe2b6dcc`; fraxtal `0x2a1d1bd9961a70550b99f952ccc3a81f02319eeb` | ⚠️ Unaudited |
| BridgeLogic | unknown | sonic | n/a | 4 deployments: ethereum `0xe1c986e12eaa37e40a2e2cf4f52a6b786dc4e671`; sonic [`0xb7cff0c4301cd43b01d96d4d8669550bb50f8635`](./contracts/sonic-146/0xb7cff0c4301cd43b01d96d4d8669550bb50f8635/); sonic `0xca0a90e45a55c4a7e394d1470e0c732b017e37bb`; fraxtal `0xba4d4b6ca77fd8ab3154b8e7b3a93d96338cc46a` | ⚠️ Unaudited |
| CalldataLogic | unknown | sonic | n/a | 4 deployments: ethereum `0xd23431f39c88875d1cd6b517d4e54b752fe5776d`; sonic [`0x393645a8ac1d8ad9dc80be912c63bfc0841fa3eb`](./contracts/sonic-146/0x393645a8ac1d8ad9dc80be912c63bfc0841fa3eb/); sonic `0xe1c986e12eaa37e40a2e2cf4f52a6b786dc4e671`; fraxtal `0xa1bf60a135ce0462fb1531a5350780ac9d4128e8` | ⚠️ Unaudited |
| ConfiguratorLogic | unknown | fraxtal | n/a | 4 deployments: ethereum `0xc18b93cac3c2404cca2187332e9767bb73feb7ed`; sonic `0x683f183070ee9c12b25618db3483266888ce9809`; sonic `0x9986dc2939add69a84d7db3e9af84a543dfe9f85`; fraxtal [`0x6288d412921c1e14a5ab96b043758621b453e56f`](./contracts/fraxtal-252/0x6288d412921c1e14a5ab96b043758621b453e56f/) | ⚠️ Unaudited |
| ConvexRewardPool | core_logic | fraxtal | n/a | [`0x9886ad218f646ad67b5d057953b2d25bd0172afd`](./contracts/fraxtal-252/0x9886ad218f646ad67b5d057953b2d25bd0172afd/) | ⚠️ Unaudited |
| CurveStableSwapNG | operational_periphery | ethereum | n/a | 2 deployments: ethereum [`0x2c2a700766886290359ccf39cb2173a39af1cef9`](./contracts/ethereum-1/0x2c2a700766886290359ccf39cb2173a39af1cef9/); fraxtal `0x5ecfa6940a33a2dad5c473896452f018c6c04577` | ⚠️ Unaudited |
| CurveXChainLiquidityGauge | operational_periphery | fraxtal | n/a | [`0xf5572d8d01bb6f96403f477d8b3bfb5739444702`](./contracts/fraxtal-252/0xf5572d8d01bb6f96403f477d8b3bfb5739444702/) | ⚠️ Unaudited |
| DefaultReserveInterestRateStrategy | unknown | sonic | n/a | 27 deployments: ethereum `0x426bb6039a05f0ec90617cb7a838d6ed4fb0044a`; ethereum `0x614484f207805145605c221e29197db2633ded12`; ethereum `0x64dc6def99c4144466a4e5a040e5d5efc7ec6c7d`; ethereum `0x837c4ac320cd6a17c66cb5deea99dc9bd007d270`; sonic [`0x052dc4ca69a6b01b7f61a979f3e40ed319ee585d`](./contracts/sonic-146/0x052dc4ca69a6b01b7f61a979f3e40ed319ee585d/); sonic `0x08f3c34c46b03268c783ca313444448f81596262`; sonic `0x1fbc978a250d5d00831872397daa18992e4314c7`; sonic `0x328b0a94e356773a05a89158367e57d7464b43fd`; sonic `0x38a8c0e860e6b22ba78331de5596aaac3654d2e1`; sonic `0x3f628a25bbe03b042bd1f4f68d2203b325ab02c0`; sonic `0x475bcff074bea6a3f4df059d32003ebddacc3c25`; sonic `0x85c7287fc53a06ec7995db5ae6f2610200ec0f85`; sonic `0x863a66ef04c2fd96915dd86fa1570e6501f10fd2`; sonic `0x871f22424b501fbaf5b61df910cde9ce09e01c7f`; sonic `0x8c522154f50d74c552eb6ee3b88d235deb3236f8`; sonic `0x9134129c8bf32a973bf4c7ea9de5720022e4696f`; sonic `0x91756a9a25d43f9b18e360dcbdd2f2a5e2944712`; sonic `0xaec3283cb27f029f8053e7e217cbb450f51af003`; sonic `0xbc74199af0911ff6f10176fca186fc908287f309`; sonic `0xcc0e6fc9a4cc135d08bdbb625c53b8fb451dfb13`; fraxtal `0x08869363aa1e44dbc35fb3f090aa8698625792b5`; fraxtal `0x09ddf55a7ec642635788970dcbf4b6aa2552bb14`; fraxtal `0x6e15a80f0baf7b83ce7ecee3c1c9bb6f969b7460`; fraxtal `0x8b7d6bff57d840613a6f627f77741ecb226e98c6`; fraxtal `0xd1d9d6358ce7903dd3322d99d66ad987ec5ca496`; fraxtal `0xdd796c65380ce9085d5d925d6e7374b23be7ae60`; fraxtal `0xeef617864c0c2357bf28250e07cedf1809e4019c` | ⚠️ Unaudited |
| DStakeCollateralVaultV2 | core_logic | ethereum | n/a | 2 deployments: ethereum [`0x4acbcfa29fb085097c5f31783403ef7a7930f6fe`](./contracts/ethereum-1/0x4acbcfa29fb085097c5f31783403ef7a7930f6fe/); ethereum `0xf93fb0add57133aecd56fa48350684b5a7a1a5b9` | ⚠️ Unaudited |
| DStakeIdleVault | core_logic | ethereum | n/a | 2 deployments: ethereum [`0x501ce63871f9bb20620233d22d0d4f539fe8a9a1`](./contracts/ethereum-1/0x501ce63871f9bb20620233d22d0d4f539fe8a9a1/); ethereum `0x78a4dad0ac32c80da6ef60a366b1c035145380bc` | ⚠️ Unaudited |
| DStakeProxyAdmin | governance | sonic | n/a | 4 deployments: sonic [`0x6eb812c452a20d58f85f010c1f56356df951029c`](./contracts/sonic-146/0x6eb812c452a20d58f85f010c1f56356df951029c/); sonic `0xbcafae45404950a5ca4c7c7f850ea2c33f57b18c`; sonic `0xff3df1bb48d63a1433d57572a39c17bbc840e01b`; fraxtal `0xde914ec384346fea47339e5086d2d399b7f4733b` | ⚠️ Unaudited |
| DStakeRouterV2 | adapter | ethereum | n/a | 2 deployments: ethereum [`0x2e89df2934aff1b671923a45bacf2b21f3cf64a8`](./contracts/ethereum-1/0x2e89df2934aff1b671923a45bacf2b21f3cf64a8/); ethereum `0xdd26c236ec95d03ddf3cb67b7f54864719e9be5a` | ⚠️ Unaudited |
| DStakeRouterV2GovernanceModule | adapter | ethereum | n/a | 2 deployments: ethereum [`0x8cf140bde76323a5785d87645fc3ddfe837b6703`](./contracts/ethereum-1/0x8cf140bde76323a5785d87645fc3ddfe837b6703/); ethereum `0xedbccd4fc36a67429f74376c36f134ae3f28a88b` | ⚠️ Unaudited |
| DStakeRouterV2RebalanceModule | adapter | ethereum | n/a | 3 deployments: ethereum [`0x6f3b7cc3d3c8c201373900402ea0f5a61da61dde`](./contracts/ethereum-1/0x6f3b7cc3d3c8c201373900402ea0f5a61da61dde/); ethereum `0x7aefde8e021f0efbcec7348f601e1fd12789c55f`; ethereum `0xc792f223c6c836f9e628ce29bed5f4aee6e18cc6` | ⚠️ Unaudited |
| DStakeToken | unknown | sonic | n/a | 2 deployments: sonic [`0x41a5477364bf60d8936b90310fecfda79593304e`](./contracts/sonic-146/0x41a5477364bf60d8936b90310fecfda79593304e/); sonic `0x5f0ecae9b7b279261cc6a1cabf26b51c79fe6f8f` | ⚠️ Unaudited |
| DStakeToken | unknown | fraxtal | n/a | 2 deployments: fraxtal [`0x0f51b15939a42bd995ecd3a2c151dc58621856c6`](./contracts/fraxtal-252/0x0f51b15939a42bd995ecd3a2c151dc58621856c6/); fraxtal `0x58acc2600835211dcb5847c5fa422791fd492409` | ⚠️ Unaudited |
| DStakeTokenV2 | unknown | ethereum | n/a | 2 deployments: ethereum [`0x20b1884c9347bebc13e9aca1965c5ae56b0a8590`](./contracts/ethereum-1/0x20b1884c9347bebc13e9aca1965c5ae56b0a8590/); ethereum `0x4146451750a3635d9d2b2d1a398ce30b7ffacb87` | ⚠️ Unaudited |
| DStakeTokenV2 | unknown | ethereum | n/a | 2 deployments: ethereum [`0x7cb20517776636ed76b68edb3d99dcce356abf02`](./contracts/ethereum-1/0x7cb20517776636ed76b68edb3d99dcce356abf02/); ethereum `0x9c278036c3c4529472751502dfc71bb1f0a3bfd4` | ⚠️ Unaudited |
| EmissionManager | operational_periphery | ethereum | n/a | [`0xcea995daf89500fe165bc86d829552b03a1d1396`](./contracts/ethereum-1/0xcea995daf89500fe165bc86d829552b03a1d1396/) | ⚠️ Unaudited |
| EModeLogic | unknown | ethereum | n/a | 4 deployments: ethereum [`0x26326b406208e206cbe9a2417bf61700b4239b4b`](./contracts/ethereum-1/0x26326b406208e206cbe9a2417bf61700b4239b4b/); sonic `0x4b6760fbdca72967cea2026424f25c5f8de7a87e`; sonic `0xf84cc8217713a53fc3e3eb2d62d2af33a084ff85`; fraxtal `0xca5cb6b3afdf1adbec6b00db6c2f17053b6d62bc` | ⚠️ Unaudited |
| ERC20StablecoinUpgradeable | unknown | ethereum | n/a | 2 deployments: ethereum [`0x07fff99e1664d9b116fbc158c0e99785f81ca236`](./contracts/ethereum-1/0x07fff99e1664d9b116fbc158c0e99785f81ca236/); ethereum `0x6f83cbdf37863eaf43d11b3af1d024c336814d1b` | ⚠️ Unaudited |
| ERC20StablecoinUpgradeable | unknown | ethereum | n/a | 2 deployments: ethereum [`0x75998c3009e881f7b3f3d6847bd82649ff4afecc`](./contracts/ethereum-1/0x75998c3009e881f7b3f3d6847bd82649ff4afecc/); ethereum `0xb419ecdd222981e7e54cec316797ecb799c6afdc` | ⚠️ Unaudited |
| ERC20StablecoinUpgradeable | unknown | sonic | n/a | 2 deployments: sonic [`0x0043a403ada6b63045112d7e979a057c82714fe7`](./contracts/sonic-146/0x0043a403ada6b63045112d7e979a057c82714fe7/); sonic `0xb76144f87df95816e8c55c240f874c554b4553c3` | ⚠️ Unaudited |
| ERC20StablecoinUpgradeable | unknown | sonic | n/a | 2 deployments: sonic [`0x21442105ee1a85aa51b345a149c5f6dd47252a45`](./contracts/sonic-146/0x21442105ee1a85aa51b345a149c5f6dd47252a45/); sonic `0xd80374798c06a7ad24fdc9931baeb068ab4550b9` | ⚠️ Unaudited |
| ERC20StablecoinUpgradeable | unknown | sonic | n/a | 2 deployments: sonic [`0x3a3dd4b0d3bd5592914115e9ce14dd035a22abd4`](./contracts/sonic-146/0x3a3dd4b0d3bd5592914115e9ce14dd035a22abd4/); sonic `0xdb848e485105e2a24a9792de4c604881b53432d7` | ⚠️ Unaudited |
| ERC20StablecoinUpgradeable | unknown | sonic | n/a | 2 deployments: sonic [`0x41076a2d8f6cac657098e5fff43f31c4c759d0c8`](./contracts/sonic-146/0x41076a2d8f6cac657098e5fff43f31c4c759d0c8/); sonic `0xf4a726328f6f717a5d35cb5eeb119b2bbe0d0d12` | ⚠️ Unaudited |
| ERC20StablecoinUpgradeable | unknown | sonic | n/a | 2 deployments: sonic [`0x53a6abb52b2f968fa80df6a894e4f1b1020da975`](./contracts/sonic-146/0x53a6abb52b2f968fa80df6a894e4f1b1020da975/); sonic `0xa140c97eff565d50cfd320fe66d27c466cc0d327` | ⚠️ Unaudited |
| ERC20StablecoinUpgradeable | unknown | sonic | n/a | 2 deployments: sonic [`0x614914b028a7d1fd4fab1e5a53a3e2df000bcb0e`](./contracts/sonic-146/0x614914b028a7d1fd4fab1e5a53a3e2df000bcb0e/); sonic `0xfa608567a370ae0febcd296c97816d4693ca8fa9` | ⚠️ Unaudited |
| ERC20StablecoinUpgradeable | unknown | sonic | n/a | 2 deployments: sonic [`0x8af8c11c8c4412c96a09deb5aa7c1d99a10e396c`](./contracts/sonic-146/0x8af8c11c8c4412c96a09deb5aa7c1d99a10e396c/); sonic `0xa1104d1752cc310eb1bb1297d344b72afd4fcfaf` | ⚠️ Unaudited |
| ERC20StablecoinUpgradeable | unknown | sonic | n/a | 2 deployments: sonic [`0xba4d4b6ca77fd8ab3154b8e7b3a93d96338cc46a`](./contracts/sonic-146/0xba4d4b6ca77fd8ab3154b8e7b3a93d96338cc46a/); sonic `0xca5cb6b3afdf1adbec6b00db6c2f17053b6d62bc` | ⚠️ Unaudited |
| ERC20StablecoinUpgradeable | unknown | fraxtal | n/a | 2 deployments: fraxtal [`0x0043a403ada6b63045112d7e979a057c82714fe7`](./contracts/fraxtal-252/0x0043a403ada6b63045112d7e979a057c82714fe7/); fraxtal `0xb76144f87df95816e8c55c240f874c554b4553c3` | ⚠️ Unaudited |
| ERC20StablecoinUpgradeable | unknown | fraxtal | n/a | 2 deployments: fraxtal [`0x70924f77509dc1eb9384077b12ca049aa2168d6f`](./contracts/fraxtal-252/0x70924f77509dc1eb9384077b12ca049aa2168d6f/); fraxtal `0xc40f4303505320f782972ad4756ed2a7390a9d9c` | ⚠️ Unaudited |
| ERC20StablecoinUpgradeable | unknown | fraxtal | n/a | 2 deployments: fraxtal [`0x788d96f655735f52c676a133f4dfc53cec614d4a`](./contracts/fraxtal-252/0x788d96f655735f52c676a133f4dfc53cec614d4a/); fraxtal `0xaf2d757bfbded5f84f71d28223acda06352fddb6` | ⚠️ Unaudited |
| ERC20StablecoinUpgradeable | unknown | fraxtal | n/a | 2 deployments: fraxtal [`0x889bf3e00e93bc9ce17a7f8141ef109283913f37`](./contracts/fraxtal-252/0x889bf3e00e93bc9ce17a7f8141ef109283913f37/); fraxtal `0xb419ecdd222981e7e54cec316797ecb799c6afdc` | ⚠️ Unaudited |
| ERC4626BalanceChecker | unknown | fraxtal | n/a | 2 deployments: fraxtal [`0x09c418a9d8027ef890a91ccdfce3c14d055e44dd`](./contracts/fraxtal-252/0x09c418a9d8027ef890a91ccdfce3c14d055e44dd/); fraxtal `0x7a2949ef4595bc27ff5ec6e3889f51fce42ab7d9` | ⚠️ Unaudited |
| ERC4626OracleWrapperV1_1 | operational_periphery | ethereum | n/a | [`0x889bf3e00e93bc9ce17a7f8141ef109283913f37`](./contracts/ethereum-1/0x889bf3e00e93bc9ce17a7f8141ef109283913f37/) | ⚠️ Unaudited |
| FlashLoanLogic | unknown | fraxtal | n/a | 4 deployments: ethereum `0x8d369c2f439de8475e095940b081e067859b7688`; sonic `0xd82b685e78055f8d352c29c6cad5cb67b0295628`; fraxtal [`0x0504539e68ec7a50f8ae847f543ab3a062fa4eb7`](./contracts/fraxtal-252/0x0504539e68ec7a50f8ae847f543ab3a062fa4eb7/); fraxtal `0x2e92fc14ef948fb8653eb91d2d49d9480883c4e5` | ⚠️ Unaudited |
| FrxEthFundamentalOracleWrapperV1_1 | operational_periphery | ethereum | n/a | [`0xdfd607a73f6d73dbce8adf71de5e9fd56944c936`](./contracts/ethereum-1/0xdfd607a73f6d73dbce8adf71de5e9fd56944c936/) | ⚠️ Unaudited |
| GenericERC4626ConversionAdapter | adapter | ethereum | n/a | 2 deployments: ethereum [`0xa51fa58c76d92f1b0d4d6e3b88d2ba0aff2c2b56`](./contracts/ethereum-1/0xa51fa58c76d92f1b0d4d6e3b88d2ba0aff2c2b56/); ethereum `0xefd794e2d8024f3c25aa343588dd6d4481b5db7c` | ⚠️ Unaudited |
| GnosisSafeL2 | governance | fraxtal | n/a | 2 deployments: fraxtal [`0xdb104e0bb0b2955f69e8e092eb80831913d85431`](./contracts/fraxtal-252/0xdb104e0bb0b2955f69e8e092eb80831913d85431/); fraxtal `0xfc2f89f9982be98a9672cefc3ea6dbbdd88bc8e9` | ⚠️ Unaudited |
| GnosisSafeProxy | governance | fraxtal | n/a | 2 deployments: fraxtal [`0xa9c3cf89d9b7680cc2433e2a2bf8e2b357a03d65`](./contracts/fraxtal-252/0xa9c3cf89d9b7680cc2433e2a2bf8e2b357a03d65/); fraxtal `0xabfbcf92986b4ba43faaecf545f0b2cc45067af9` | ⚠️ Unaudited |
| HardPegOracleWrapperV1_1 | operational_periphery | ethereum | n/a | 4 deployments: ethereum [`0x1e5be5059d4a95297604355dc6abd0baf036cc95`](./contracts/ethereum-1/0x1e5be5059d4a95297604355dc6abd0baf036cc95/); ethereum `0x4ef48062d6d5e7594ed1b59ea42faf772b2aa54a`; ethereum `0x788d96f655735f52c676a133f4dfc53cec614d4a`; ethereum `0x837c1c92b0e7ae7bb4e1dddf08772c0181fc638a` | ⚠️ Unaudited |
| InitializableImmutableAdminUpgradeabilityProxy | unknown | ethereum | n/a | 11 deployments: ethereum [`0x2b820fd4911876160c3988e57a10d8a5b85dff35`](./contracts/ethereum-1/0x2b820fd4911876160c3988e57a10d8a5b85dff35/); ethereum `0x7f90988393d1db8ef33cc9f4294a7dda389d7cf1`; ethereum `0x88a4eed28a1d7bcee95228721678662421a1c748`; ethereum `0x9477297feacd988be2e8bc42dfb0edf44bbfb59b`; ethereum `0x979fb79d36c0d3006cde38e992d9f51768efaad8`; ethereum `0xa17571a95bd22dc1a6f54d7f6e396d2398dfe493`; ethereum `0xa5535fc58fd1be43a37367f4b66669f691a26eae`; ethereum `0xb33276a11cabe6e1cd0252c4e1770ffd30a8029c`; ethereum `0xc247736eaaa1b45d21ae1668d13965b4b50e9011`; ethereum `0xdfaee67e4ef9009a728dae88453275c616a5877f`; sonic `0xf177ef27512fa74604aabc748f4d0720b00d0bd1` | ⚠️ Unaudited |
| IssuerV2 | unknown | sonic | n/a | 3 deployments: sonic [`0x36b535bc79defb00d348658ad7e68d9b1176fa97`](./contracts/sonic-146/0x36b535bc79defb00d348658ad7e68d9b1176fa97/); sonic `0x9b93c3995235c2c16b87976c763360d08c725ddc`; fraxtal `0xd95f1cfd9559b6e4d75488938de161a147f9fbca` | ⚠️ Unaudited |
| IssuerV2_2 | unknown | ethereum | n/a | 3 deployments: ethereum [`0x70bfbe78548f1159cb9b453e4d6ad0e3648a5a8d`](./contracts/ethereum-1/0x70bfbe78548f1159cb9b453e4d6ad0e3648a5a8d/); ethereum `0xf84cc8217713a53fc3e3eb2d62d2af33a084ff85`; fraxtal `0x9e8d871077bb496e388fd48f659cedd6d0abdc3a` | ⚠️ Unaudited |
| L2Pool | unknown | sonic | n/a | 4 deployments: ethereum `0xfda3a0effe2f3917aa60e0741c6788619ae19e84`; sonic [`0x179867c392add1bf4f7a3d4c70bf8f2f476bb8cc`](./contracts/sonic-146/0x179867c392add1bf4f7a3d4c70bf8f2f476bb8cc/); fraxtal `0x20a24d51aded06b5ccbc3cc8f71d1e141391a6d7`; fraxtal `0xdfd607a73f6d73dbce8adf71de5e9fd56944c936` | ⚠️ Unaudited |
| LiquidationLogic | unknown | sonic | n/a | 4 deployments: ethereum `0xce697c602e613bcf728a439ec4a0f831667d9570`; sonic [`0x19c6b5924306baf5ee549cd7b56b37736cf7dc48`](./contracts/sonic-146/0x19c6b5924306baf5ee549cd7b56b37736cf7dc48/); sonic `0x84c58066a4408454b7380f168c95f571419253f4`; fraxtal `0xba82d5f8ac6cfbdff4685f29754a67ccb4e7dc8f` | ⚠️ Unaudited |
| LiquidityGaugeV6 | operational_periphery | ethereum | n/a | [`0x91c95bb84aa561d93d165ff24d0e54e6b006447c`](./contracts/ethereum-1/0x91c95bb84aa561d93d165ff24d0e54e6b006447c/) | ⚠️ Unaudited |
| OracleAggregatorV1_1 | operational_periphery | ethereum | n/a | 2 deployments: ethereum [`0x02165d665e171566629822d9380ad93b975b186c`](./contracts/ethereum-1/0x02165d665e171566629822d9380ad93b975b186c/); ethereum `0xc40f4303505320f782972ad4756ed2a7390a9d9c` | ⚠️ Unaudited |
| PoolAddressesProvider | unknown | sonic | n/a | 6 deployments: ethereum `0xa5cae880272183d7c8b69f8b0edf395f8e42e751`; sonic [`0x1f8d8a3575d049aa0c195aa947483738811badcb`](./contracts/sonic-146/0x1f8d8a3575d049aa0c195aa947483738811badcb/); sonic `0x598502c7a3f5445d76b6f9f5020e15cdfe484df5`; sonic `0x66496537eca3f784aec62fb3b896c0086f3b1b26`; sonic `0xfdb85fdfcee413eb05287f9d4157c1ef1f336207`; fraxtal `0xd9c622d64342b5faceef4d366b974aef6dcb338d` | ⚠️ Unaudited |
| PoolAddressesProviderRegistry | registry | ethereum | n/a | [`0xfdb85fdfcee413eb05287f9d4157c1ef1f336207`](./contracts/ethereum-1/0xfdb85fdfcee413eb05287f9d4157c1ef1f336207/) | ⚠️ Unaudited |
| PoolConfigurator | core_logic | ethereum | n/a | 3 deployments: ethereum [`0x185e9c639dea54d77d62dcb87466fb8de6ded6b9`](./contracts/ethereum-1/0x185e9c639dea54d77d62dcb87466fb8de6ded6b9/); sonic `0xac90d7e877bc40fc81d8eab37e6f9c5e32e40153`; fraxtal `0xb1e4e1b01a585730d063a2b496b5b1efbb60b8b1` | ⚠️ Unaudited |
| PoolLogic | unknown | fraxtal | n/a | 4 deployments: ethereum `0x44c69f0ef7a0d96b77437ec2e1bf9d74f5c5e7a2`; sonic `0x33e0104a636ab1439842313883b67d14f67173f6`; sonic `0xe6114174073b1afcb45d73fe65af0619a3c1fb21`; fraxtal [`0x0503237c9ade4bfe3a8f9a0d75e197c14a3f7ecd`](./contracts/fraxtal-252/0x0503237c9ade4bfe3a8f9a0d75e197c14a3f7ecd/) | ⚠️ Unaudited |
| ProxyAdmin | unknown | sonic | n/a | 9 deployments: ethereum `0xbe90db309b80357631069b689fc3481aca2c65be`; sonic [`0x0a0808f20743278d566fc954d3dcf8c082fb0bc5`](./contracts/sonic-146/0x0a0808f20743278d566fc954d3dcf8c082fb0bc5/); sonic `0xaf3bb48f9b27ae41e8f4c33c77422b9367694cb8`; sonic `0xc59e44b17389e4e96b987269148e7769366a68f8`; sonic `0xfff14bf13ef30a7e962ba871f00f6d01ed50a7ab`; fraxtal `0x1e5be5059d4a95297604355dc6abd0baf036cc95`; fraxtal `0x75998c3009e881f7b3f3d6847bd82649ff4afecc`; fraxtal `0xaf3bb48f9b27ae41e8f4c33c77422b9367694cb8`; fraxtal `0xdcd3965334adeff932f00b7be6a0254fa7fdfa5c` | ⚠️ Unaudited |
| PullRewardsTransferStrategy | core_logic | ethereum | n/a | [`0x31bf6b030d20af8a92d169632ffd8077456e6316`](./contracts/ethereum-1/0x31bf6b030d20af8a92d169632ffd8077456e6316/) | ⚠️ Unaudited |
| RebasingTokenWrapperFactory | registry | fraxtal | n/a | [`0x85c7287fc53a06ec7995db5ae6f2610200ec0f85`](./contracts/fraxtal-252/0x85c7287fc53a06ec7995db5ae6f2610200ec0f85/) | ⚠️ Unaudited |
| Redeemer | unknown | fraxtal | n/a | 3 deployments: sonic `0xe781858c3a4badb7ac29b82015b3cb078cdaa5cf`; sonic `0xf5a8947fed21e1c9c4893b601f3a0daaedc386ff`; fraxtal [`0x2429213235b5b4504d41bc9aa64fc2659e4450a3`](./contracts/fraxtal-252/0x2429213235b5b4504d41bc9aa64fc2659e4450a3/) | ⚠️ Unaudited |
| RedeemerV2 | unknown | sonic | n/a | 7 deployments: ethereum `0x093e9db2c2ec21ff7e5e1f5766bbfb48b7ba90cd`; ethereum `0x683f183070ee9c12b25618db3483266888ce9809`; ethereum `0xd66c168fb7f3e04654082534c87b6544e6036cac`; ethereum `0xdc43d538935d187864b21997f8ad05de66afae4b`; sonic [`0x09059859d2b91cc840bd2c86f841defa19d38b88`](./contracts/sonic-146/0x09059859d2b91cc840bd2c86f841defa19d38b88/); sonic `0x6b05795626cb2c8578ce6b7441b7c82a9e6f5935`; fraxtal `0xacd97c7d23a0534d79439b8d065d6d9d772ec949` | ⚠️ Unaudited |
| ReservesSetupHelper | periphery | fraxtal | n/a | 6 deployments: ethereum `0x18ae2d6cfdf78df5b9b9c0df3be0c8a98adfd5e1`; sonic `0x16e32b35943dafe28596594fecead8bcdc30d19c`; sonic `0x79b3f30b05016969325c587b346cff2ed4f76ca2`; sonic `0x7c2018c98ca507cd3e545fbe1a397a164445122a`; sonic `0x95e9b3fa9a6e7201a6ea7dd902dabacd1410a447`; fraxtal [`0x145555c56718437093c020cef4e8dd11cd7d2662`](./contracts/fraxtal-252/0x145555c56718437093c020cef4e8dd11cd7d2662/) | ⚠️ Unaudited |
| RewardsController | governance | ethereum | n/a | [`0x06f0c640c47fcfe030da1cdd7dfb5080cb5a0ea8`](./contracts/ethereum-1/0x06f0c640c47fcfe030da1cdd7dfb5080cb5a0ea8/) | ⚠️ Unaudited |
| RewardVault | core_logic | fraxtal | n/a | [`0x46478563d4532ef2b68a328c3f528b19626f2e54`](./contracts/fraxtal-252/0x46478563d4532ef2b68a328c3f528b19626f2e54/) | ⚠️ Unaudited |
| Safe | unknown | ethereum | n/a | 5 deployments: ethereum [`0x04401537ca997a43ebcfec8194c7e88c7ee79804`](./contracts/ethereum-1/0x04401537ca997a43ebcfec8194c7e88c7ee79804/); ethereum `0x38262effcd17cd64f6311ef688b2caa61102f3db`; ethereum `0x43b1bccff0e4bfef2c32774e53a69a762006c118`; ethereum `0x4b4b5cc616be4cd1947b93f2304d36b3e80d3ef6`; ethereum `0xe83c188a7be46b90715c757a06cf917175f30262` | ⚠️ Unaudited |
| SafeL2 | unknown | sonic | n/a | [`0xe83c188a7be46b90715c757a06cf917175f30262`](./contracts/sonic-146/0xe83c188a7be46b90715c757a06cf917175f30262/) | ⚠️ Unaudited |
| SanitizableAToken | token | ethereum | n/a | [`0x504d0eacbf9ea5645a8a9da1b15f3708a5483acc`](./contracts/ethereum-1/0x504d0eacbf9ea5645a8a9da1b15f3708a5483acc/) | ⚠️ Unaudited |
| StableDebtToken | token | ethereum | n/a | [`0x391afc4190a92350b5c812434b7fbf381feb8631`](./contracts/ethereum-1/0x391afc4190a92350b5c812434b7fbf381feb8631/) | ⚠️ Unaudited |
| StaticATokenFactory | unknown | sonic | n/a | 4 deployments: ethereum `0xcb8f92b9e8b368bfe690a5c6f39a0d6920e1d877`; sonic [`0x1cc03e57ed4d426f673dbb4d69e08c91bbbd55a8`](./contracts/sonic-146/0x1cc03e57ed4d426f673dbb4d69e08c91bbbd55a8/); sonic `0x777db2ea92316f03ee5a31245b1787fbebac81f1`; fraxtal `0x2a0f31cecfd18ccb28e66c7cddfe3a12ad1b2768` | ⚠️ Unaudited |
| StaticATokenLM | token | sonic | n/a | 6 deployments: ethereum `0x576dd487bacfa6e7afd1e3ea03da0763f732d4c9`; ethereum `0xeb5260baff0f2018e2faa4fc81d82d0de1c07776`; sonic [`0x36e178ba804514d80ea87d78b96db87408b8059e`](./contracts/sonic-146/0x36e178ba804514d80ea87d78b96db87408b8059e/); sonic `0x5c47b4a90f1d1e92735900081cbded628117adfa`; sonic `0xd927805134dc10426374a347fcdec348bc886a71`; sonic `0xe6dee657efcdfaa67219e271146ef9145034e0d9` | ⚠️ Unaudited |
| SupplyLogic | unknown | fraxtal | n/a | 4 deployments: ethereum `0xe58dec03a5c25bab45daf83dc8917a29b4817ddb`; sonic `0x48f0964012a3eabae7df89042b9cb02468068f9a`; sonic `0x837c1c92b0e7ae7bb4e1dddf08772c0181fc638a`; fraxtal [`0x2d3f5739096478dbcf3df74941861b8d156d6f3e`](./contracts/fraxtal-252/0x2d3f5739096478dbcf3df74941861b8d156d6f3e/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | proxy | sonic | n/a | 3 deployments: sonic [`0x2e093bf098dc3de208ab23a3b2dbc7cd911ba642`](./contracts/sonic-146/0x2e093bf098dc3de208ab23a3b2dbc7cd911ba642/); sonic `0x4ebab4720127d6a547288b701bcacc211af50a83`; sonic `0x84670dfcf8037f9ddf8b3513d8250eb1f87e6a51` | ⚠️ Unaudited |
| UiIncentiveDataProviderV3 | unknown | ethereum | n/a | [`0xe3ee2d4bde6695cc1ae4a4cda466bdc6d5df479e`](./contracts/ethereum-1/0xe3ee2d4bde6695cc1ae4a4cda466bdc6d5df479e/) | ⚠️ Unaudited |
| UiPoolDataProviderV3 | core_logic | ethereum | n/a | 5 deployments: ethereum [`0x1c4be7d7f0184ba6cc458fc99880198c537867e2`](./contracts/ethereum-1/0x1c4be7d7f0184ba6cc458fc99880198c537867e2/); sonic `0x31e1f0c9698f3c26f4899458513da8912bec9261`; sonic `0xe505f8a6d06da5038e0840b3844ddef375afb37a`; sonic `0xe5ae8775a23293dbf5a59019aa32ba358900cbc4`; fraxtal `0xe284a74c661ad0ff6fc7c07e180bbbda8ed3eabc` | ⚠️ Unaudited |
| VariableDebtToken | token | ethereum | n/a | [`0xf5e96f92354de544c2b0b0c4328ef5ded8da27ef`](./contracts/ethereum-1/0xf5e96f92354de544c2b0b0c4328ef5ded8da27ef/) | ⚠️ Unaudited |
| WalletBalanceProvider | unknown | ethereum | n/a | [`0xe5ae8775a23293dbf5a59019aa32ba358900cbc4`](./contracts/ethereum-1/0xe5ae8775a23293dbf5a59019aa32ba358900cbc4/) | ⚠️ Unaudited |
| WrappedTokenGatewayV3 | token | ethereum | n/a | [`0xb1c1d6150c4f072f5426aa918f7924ee73c6ac2d`](./contracts/ethereum-1/0xb1c1d6150c4f072f5426aa918f7924ee73c6ac2d/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (121)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | ethereum | n/a | `0x5d5543e671652a5871331d28357064cac02a9e7e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x93d2e552f0ac25927bbd3f6c71cab43b73a3acdf` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x9d286fa4e36a0a5f3134aa3653e1eaa9769352b1` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x011c49b8d9a861b41502256360b6210d0897e373` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x05281ffe1b05f658897efe53f4c30131d7a2d972` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x08869363aa1e44dbc35fb3f090aa8698625792b5` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x0b667e8cdb60df3c2d502eca7e2b0c77910585ad` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x0e1bd16411b2c607f6f84d8ef72ff9a9d04ae4ff` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x101af0b8c63b346cd856341b59da1e27954240d9` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x1729718dda56232016e0b3edc6b572997d8d3918` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x2b5ed958755e6674f144381be60c1cac2b1991a7` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x2eae5a9939716469c404a78be3339e23e1621659` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x353a84feeccdc14d45bbde2c628dd91c10b59801` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x43dc80e510863ad51383a135ae4161c46834dfdb` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x44c69f0ef7a0d96b77437ec2e1bf9d74f5c5e7a2` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x5d561d24aad091d0a4f00fcb7b823349af88936e` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x604f81a851522a7bf1a0e07ce8a6ae0da0b078e0` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x673c07f5d33d1ebb802367c890e3272f10b7ae6a` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x68e1085a7639e80257f7f159a611dd944278a24e` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x6a60eb9c89bad7569f7c4612957408bad8ccc00e` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x6d9216b47b507874a8e79ff2afaf0e5ababca36b` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x6df5f10e7585f7d51e5d6a5e519a3de861ef4f84` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x6e15a80f0baf7b83ce7ecee3c1c9bb6f969b7460` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x83cf77d0458c5f77c7c49da018b35bde2e98c3f0` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x94613ffa547dde812d0f525ae0defd55a0ed56b6` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x96b35fef13d57a79b167e93fed0f2001e0072d39` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x972aad217d13715aa9aed17c6e2d6bf384e9633d` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x98df533ccdfbfc7369f3fc9b21248fe4ada8b4da` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0xa0e5727841400ee0fa621df34b8800acc23d3afa` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0xa299139d6ed439d67f79d67cef085e52f9f408b4` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0xb6294e55af9f8b489b6c27366c8aafae0c58df92` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0xbe161020f63ac5a2897134ac61020fca952a1d37` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0xc18b93cac3c2404cca2187332e9767bb73feb7ed` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0xcab481e858f7f0619594c871028344925c40e451` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0xcc3ee46c61bbe28b73b1e8b1927bb56c9f870161` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0xcc4da154404d23ecec5b0dd60f81e36f9c9a7a06` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0xd1d9d6358ce7903dd3322d99d66ad987ec5ca496` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0xda988af6409ef17395a0323536e082ad7a518ea4` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0xdbe36167258112a90cb2d0f1522855b972aca375` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0xdc4e3fd020c55fc3d27a799c52252a8d7a17e28b` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0xdd796c65380ce9085d5d925d6e7374b23be7ae60` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0xf3eb4b40d8a40cbfc89c868be6bcaf057e39c0ad` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0xfc2a2f13bd5bbdf0fb6041887af5df07795898f9` | ❓ Unverified |
| UnnamedContract | unknown | fraxtal | n/a | `0x02165d665e171566629822d9380ad93b975b186c` | ❓ Unverified |
| UnnamedContract | unknown | fraxtal | n/a | `0x06f0c640c47fcfe030da1cdd7dfb5080cb5a0ea8` | ❓ Unverified |
| UnnamedContract | unknown | fraxtal | n/a | `0x074319f1816bdd0ac049786d33f5aea86ff01af1` | ❓ Unverified |
| UnnamedContract | unknown | fraxtal | n/a | `0x077db2c91a13f23dcc506432de1a1a3d57afb37b` | ❓ Unverified |
| UnnamedContract | unknown | fraxtal | n/a | `0x0785f48173e9f52b89214257f8d0c0746a02c17d` | ❓ Unverified |
| UnnamedContract | unknown | fraxtal | n/a | `0x07cd3941fd0b87f4829c75c4dde4b962e133bd3e` | ❓ Unverified |
| UnnamedContract | unknown | fraxtal | n/a | `0x0ad050f971e4d96c999c8dd38a9d88cadde73786` | ❓ Unverified |
| UnnamedContract | unknown | fraxtal | n/a | `0x0bd5b04149d0853f57a0ec458a679d21be4f0203` | ❓ Unverified |
| UnnamedContract | unknown | fraxtal | n/a | `0x12978edc607ef626e35c995e18e8e410451dc2f2` | ❓ Unverified |
| UnnamedContract | unknown | fraxtal | n/a | `0x1448a8761d6bfa7d84eccabe7d971eabf3ac1686` | ❓ Unverified |
| UnnamedContract | unknown | fraxtal | n/a | `0x1a5bb485c58a86c193b823d0ea031b68813e100f` | ❓ Unverified |
| UnnamedContract | unknown | fraxtal | n/a | `0x1c4be7d7f0184ba6cc458fc99880198c537867e2` | ❓ Unverified |
| UnnamedContract | unknown | fraxtal | n/a | `0x1c7b9f33d309131877db5ae87f875e2b6dce496b` | ❓ Unverified |
| UnnamedContract | unknown | fraxtal | n/a | `0x20b1884c9347bebc13e9aca1965c5ae56b0a8590` | ❓ Unverified |
| UnnamedContract | unknown | fraxtal | n/a | `0x20ceffdd2b49a11b1bfc217c46cc027247d89355` | ❓ Unverified |
| UnnamedContract | unknown | fraxtal | n/a | `0x2480195108d0fcf363ed5d5eecb9d63b72a5bebe` | ❓ Unverified |
| UnnamedContract | unknown | fraxtal | n/a | `0x29532f74a9302e0a1e9f7d015fe355ffde6e6880` | ❓ Unverified |
| UnnamedContract | unknown | fraxtal | n/a | `0x2c5e9dcdac88ce50e34a47d4f539bb3fc92b4874` | ❓ Unverified |
| UnnamedContract | unknown | fraxtal | n/a | `0x31bf6b030d20af8a92d169632ffd8077456e6316` | ❓ Unverified |
| UnnamedContract | unknown | fraxtal | n/a | `0x3602c7367776e1486b257c8deff1891620c7c1d4` | ❓ Unverified |
| UnnamedContract | unknown | fraxtal | n/a | `0x3b038b62a7c3d0b195eada848860ae2ed8507b00` | ❓ Unverified |
| UnnamedContract | unknown | fraxtal | n/a | `0x3f0c2f6a30910e8606c439eb5fcb30135f484c5d` | ❓ Unverified |
| UnnamedContract | unknown | fraxtal | n/a | `0x4146451750a3635d9d2b2d1a398ce30b7ffacb87` | ❓ Unverified |
| UnnamedContract | unknown | fraxtal | n/a | `0x41cbecc9ec9f142437323b4899e01b8c6d5b9d70` | ❓ Unverified |
| UnnamedContract | unknown | fraxtal | n/a | `0x43a1c85e5bc8377b5e79b9127874b41a4c420a3b` | ❓ Unverified |
| UnnamedContract | unknown | fraxtal | n/a | `0x47c3882a05fc3a6ec4e6959812fdc2d4ee280210` | ❓ Unverified |
| UnnamedContract | unknown | fraxtal | n/a | `0x4f86bc2c31b9c071ac4c3df9e35aa76dfd344159` | ❓ Unverified |
| UnnamedContract | unknown | fraxtal | n/a | `0x501ce63871f9bb20620233d22d0d4f539fe8a9a1` | ❓ Unverified |
| UnnamedContract | unknown | fraxtal | n/a | `0x539984a5863d4523d093e8539acabb899c6ceca0` | ❓ Unverified |
| UnnamedContract | unknown | fraxtal | n/a | `0x63f2feec5f50877ad2fe0979466f20ae23ac1bbc` | ❓ Unverified |
| UnnamedContract | unknown | fraxtal | n/a | `0x6419567693331592e5e422305f51a3ec2fa69447` | ❓ Unverified |
| UnnamedContract | unknown | fraxtal | n/a | `0x683f183070ee9c12b25618db3483266888ce9809` | ❓ Unverified |
| UnnamedContract | unknown | fraxtal | n/a | `0x724b258eeb14a08fd10d6c3582d03e6804725901` | ❓ Unverified |
| UnnamedContract | unknown | fraxtal | n/a | `0x77edd449e6da9ecec943f306b83c60df9cd51b69` | ❓ Unverified |
| UnnamedContract | unknown | fraxtal | n/a | `0x79b3f30b05016969325c587b346cff2ed4f76ca2` | ❓ Unverified |
| UnnamedContract | unknown | fraxtal | n/a | `0x7cb20517776636ed76b68edb3d99dcce356abf02` | ❓ Unverified |
| UnnamedContract | unknown | fraxtal | n/a | `0x81a01e10441c4617a6d5b8e76de94a3ca9fce5ca` | ❓ Unverified |
| UnnamedContract | unknown | fraxtal | n/a | `0x8401f4af1e20d900681f877defc415f959ff3dae` | ❓ Unverified |
| UnnamedContract | unknown | fraxtal | n/a | `0x84c58066a4408454b7380f168c95f571419253f4` | ❓ Unverified |
| UnnamedContract | unknown | fraxtal | n/a | `0x86c560a60a916eb4f1d4046524c4bef0345a04b4` | ❓ Unverified |
| UnnamedContract | unknown | fraxtal | n/a | `0x8fb6eae0bf9032a4fc0f91ed780ef762c692f590` | ❓ Unverified |
| UnnamedContract | unknown | fraxtal | n/a | `0x91813026270755fe9639538d0f32d65302369d08` | ❓ Unverified |
| UnnamedContract | unknown | fraxtal | n/a | `0x96a5a828c554b4d5acdb9f0f4bb15b24c0423b69` | ❓ Unverified |
| UnnamedContract | unknown | fraxtal | n/a | `0x9f0253138edb0d097505ca6a1f1ef5d81778fdef` | ❓ Unverified |
| UnnamedContract | unknown | fraxtal | n/a | `0xa51fa58c76d92f1b0d4d6e3b88d2ba0aff2c2b56` | ❓ Unverified |
| UnnamedContract | unknown | fraxtal | n/a | `0xab5fea3e33d5aa01b8b1632c9afd0df05ad8cd4f` | ❓ Unverified |
| UnnamedContract | unknown | fraxtal | n/a | `0xb4367357f11c089e610482500fdc524883b31577` | ❓ Unverified |
| UnnamedContract | unknown | fraxtal | n/a | `0xb5cc587f0b35c9817d1e1f9bf3670189a39bc72f` | ❓ Unverified |
| UnnamedContract | unknown | fraxtal | n/a | `0xb76a00c8f6085f2dbf19f7f20c3bd65a2c019108` | ❓ Unverified |
| UnnamedContract | unknown | fraxtal | n/a | `0xb7cff0c4301cd43b01d96d4d8669550bb50f8635` | ❓ Unverified |
| UnnamedContract | unknown | fraxtal | n/a | `0xbc53406583d4370ea4a5dc2bfd5592ef9cea56a7` | ❓ Unverified |
| UnnamedContract | unknown | fraxtal | n/a | `0xbdfe9d2a96d1dbefdda0a7810144c82926450cc9` | ❓ Unverified |
| UnnamedContract | unknown | fraxtal | n/a | `0xc1a3e77dc3a66c287d75f1547b17e46a8f196a74` | ❓ Unverified |
| UnnamedContract | unknown | fraxtal | n/a | `0xc792f223c6c836f9e628ce29bed5f4aee6e18cc6` | ❓ Unverified |
| UnnamedContract | unknown | fraxtal | n/a | `0xc85492686004914a64930afaf48809384250a1ba` | ❓ Unverified |
| UnnamedContract | unknown | fraxtal | n/a | `0xca52d08737e6af8763a2bf6034b3b03868f24dda` | ❓ Unverified |
| UnnamedContract | unknown | fraxtal | n/a | `0xcb8f92b9e8b368bfe690a5c6f39a0d6920e1d877` | ❓ Unverified |
| UnnamedContract | unknown | fraxtal | n/a | `0xcea995daf89500fe165bc86d829552b03a1d1396` | ❓ Unverified |
| UnnamedContract | unknown | fraxtal | n/a | `0xd23431f39c88875d1cd6b517d4e54b752fe5776d` | ❓ Unverified |
| UnnamedContract | unknown | fraxtal | n/a | `0xd24ca3ab043edd9584d3fb5d653bbcd0b0e3ca10` | ❓ Unverified |
| UnnamedContract | unknown | fraxtal | n/a | `0xdba93cb44cdf2b8310a2ac28db70aa3347f46e39` | ❓ Unverified |
| UnnamedContract | unknown | fraxtal | n/a | `0xdd26c236ec95d03ddf3cb67b7f54864719e9be5a` | ❓ Unverified |
| UnnamedContract | unknown | fraxtal | n/a | `0xe036a59a3a86f808f040cc2bf30cf1353125e7c6` | ❓ Unverified |
| UnnamedContract | unknown | fraxtal | n/a | `0xe3ee2d4bde6695cc1ae4a4cda466bdc6d5df479e` | ❓ Unverified |
| UnnamedContract | unknown | fraxtal | n/a | `0xe5ae8775a23293dbf5a59019aa32ba358900cbc4` | ❓ Unverified |
| UnnamedContract | unknown | fraxtal | n/a | `0xe6114174073b1afcb45d73fe65af0619a3c1fb21` | ❓ Unverified |
| UnnamedContract | unknown | fraxtal | n/a | `0xe7995e8fb53ab436337e427dbeea4695aae89ff7` | ❓ Unverified |
| UnnamedContract | unknown | fraxtal | n/a | `0xe7c49a1305ec0a61bf126a2a9bf6e4cecf244a28` | ❓ Unverified |
| UnnamedContract | unknown | fraxtal | n/a | `0xe9bbd4f4af6657a2353f025a41e036f4f6253d3c` | ❓ Unverified |
| UnnamedContract | unknown | fraxtal | n/a | `0xeb5260baff0f2018e2faa4fc81d82d0de1c07776` | ❓ Unverified |
| UnnamedContract | unknown | fraxtal | n/a | `0xefd794e2d8024f3c25aa343588dd6d4481b5db7c` | ❓ Unverified |
| UnnamedContract | unknown | fraxtal | n/a | `0xf1f989807743c8e78ba095fed05be330bda4c863` | ❓ Unverified |
| UnnamedContract | unknown | fraxtal | n/a | `0xf218d6bdf82123d54653afdd404f1ba68535e4ec` | ❓ Unverified |
| UnnamedContract | unknown | fraxtal | n/a | `0xf5e07e90f2b10224c449714e9d8edec6cfc071e6` | ❓ Unverified |
| UnnamedContract | unknown | fraxtal | n/a | `0xf93fb0add57133aecd56fa48350684b5a7a1a5b9` | ❓ Unverified |
| UnnamedContract | unknown | fraxtal | n/a | `0xfda3a0effe2f3917aa60e0741c6788619ae19e84` | ❓ Unverified |
| UnnamedContract | unknown | fraxtal | n/a | `0xfddcb44dfc4f62d4529f1edb7a6aad84ae86ec98` | ❓ Unverified |
| UnnamedContract | unknown | fraxtal | n/a | `0xff426ffa3c828e1d540c4c958173ac8d13285280` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [drive.google.com/file/d/1Q58ewyXYxWTpbUoGct6Rdl4PuvJQD1N9/view](https://drive.google.com/file/d/1Q58ewyXYxWTpbUoGct6Rdl4PuvJQD1N9/view?usp=drive_link) | Verichains | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [drive.google.com/file/d/1WJSIYMoLZLeQ5ix9gxKYqRrzePowU2BO/view](https://drive.google.com/file/d/1WJSIYMoLZLeQ5ix9gxKYqRrzePowU2BO/view?usp=sharing) | Halborn | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [drive.google.com/file/d/13K-vwkwb3NJKhSa3eaBf1rVeSscHxAxY/view](https://drive.google.com/file/d/13K-vwkwb3NJKhSa3eaBf1rVeSscHxAxY/view?usp=sharing) | Cyberscope | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [report.md](https://github.com/hats-finance/dTRINITY-0xee5c6f15e8d0b55a5eff84bb66beeee0e6140ffe/blob/report-update-20250822T111243728Z/report.md) | Hats Finance | Contest | n/a | unknown | Direct | contract_name | 11 | n/a |
| [drive.google.com/file/d/1iVIOl8xwNr__d9J_gArV-xZlHidBDst3/view](https://drive.google.com/file/d/1iVIOl8xwNr__d9J_gArV-xZlHidBDst3/view?usp=sharing) | Hashlock | Audit | n/a | unknown | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | [`0x80f7023e25a32e4a020ed71346c0f37c10589609`](./contracts/ethereum-1/0x80f7023e25a32e4a020ed71346c0f37c10589609/) | ACLManager | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| fraxtal | [`0x3e17fd53fcb2dbd409b92f4860326b8b880e3c28`](./contracts/fraxtal-252/0x3e17fd53fcb2dbd409b92f4860326b8b880e3c28/) | AmoDebtToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x29532f74a9302e0a1e9f7d015fe355ffde6e6880`](./contracts/ethereum-1/0x29532f74a9302e0a1e9f7d015fe355ffde6e6880/) | AmoManagerV2 | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| fraxtal | [`0x67c3ad684243430ca1f7f32fe4a64eb223ad2662`](./contracts/fraxtal-252/0x67c3ad684243430ca1f7f32fe4a64eb223ad2662/) | AtomicMarketListingHelper | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x1e06f1d027686abb8c7aab7feec115f5a8c606ab`](./contracts/sonic-146/0x1e06f1d027686abb8c7aab7feec115f5a8c606ab/) | BorrowLogic | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0xb7cff0c4301cd43b01d96d4d8669550bb50f8635`](./contracts/sonic-146/0xb7cff0c4301cd43b01d96d4d8669550bb50f8635/) | BridgeLogic | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x393645a8ac1d8ad9dc80be912c63bfc0841fa3eb`](./contracts/sonic-146/0x393645a8ac1d8ad9dc80be912c63bfc0841fa3eb/) | CalldataLogic | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| fraxtal | [`0x6288d412921c1e14a5ab96b043758621b453e56f`](./contracts/fraxtal-252/0x6288d412921c1e14a5ab96b043758621b453e56f/) | ConfiguratorLogic | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x052dc4ca69a6b01b7f61a979f3e40ed319ee585d`](./contracts/sonic-146/0x052dc4ca69a6b01b7f61a979f3e40ed319ee585d/) | DefaultReserveInterestRateStrategy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x4acbcfa29fb085097c5f31783403ef7a7930f6fe`](./contracts/ethereum-1/0x4acbcfa29fb085097c5f31783403ef7a7930f6fe/) | DStakeCollateralVaultV2 | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x501ce63871f9bb20620233d22d0d4f539fe8a9a1`](./contracts/ethereum-1/0x501ce63871f9bb20620233d22d0d4f539fe8a9a1/) | DStakeIdleVault | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x6eb812c452a20d58f85f010c1f56356df951029c`](./contracts/sonic-146/0x6eb812c452a20d58f85f010c1f56356df951029c/) | DStakeProxyAdmin | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x2e89df2934aff1b671923a45bacf2b21f3cf64a8`](./contracts/ethereum-1/0x2e89df2934aff1b671923a45bacf2b21f3cf64a8/) | DStakeRouterV2 | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x8cf140bde76323a5785d87645fc3ddfe837b6703`](./contracts/ethereum-1/0x8cf140bde76323a5785d87645fc3ddfe837b6703/) | DStakeRouterV2GovernanceModule | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x6f3b7cc3d3c8c201373900402ea0f5a61da61dde`](./contracts/ethereum-1/0x6f3b7cc3d3c8c201373900402ea0f5a61da61dde/) | DStakeRouterV2RebalanceModule | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x41a5477364bf60d8936b90310fecfda79593304e`](./contracts/sonic-146/0x41a5477364bf60d8936b90310fecfda79593304e/) | DStakeToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| fraxtal | [`0x0f51b15939a42bd995ecd3a2c151dc58621856c6`](./contracts/fraxtal-252/0x0f51b15939a42bd995ecd3a2c151dc58621856c6/) | DStakeToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x20b1884c9347bebc13e9aca1965c5ae56b0a8590`](./contracts/ethereum-1/0x20b1884c9347bebc13e9aca1965c5ae56b0a8590/) | DStakeTokenV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x7cb20517776636ed76b68edb3d99dcce356abf02`](./contracts/ethereum-1/0x7cb20517776636ed76b68edb3d99dcce356abf02/) | DStakeTokenV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xcea995daf89500fe165bc86d829552b03a1d1396`](./contracts/ethereum-1/0xcea995daf89500fe165bc86d829552b03a1d1396/) | EmissionManager | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x26326b406208e206cbe9a2417bf61700b4239b4b`](./contracts/ethereum-1/0x26326b406208e206cbe9a2417bf61700b4239b4b/) | EModeLogic | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x07fff99e1664d9b116fbc158c0e99785f81ca236`](./contracts/ethereum-1/0x07fff99e1664d9b116fbc158c0e99785f81ca236/) | ERC20StablecoinUpgradeable | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x75998c3009e881f7b3f3d6847bd82649ff4afecc`](./contracts/ethereum-1/0x75998c3009e881f7b3f3d6847bd82649ff4afecc/) | ERC20StablecoinUpgradeable | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x0043a403ada6b63045112d7e979a057c82714fe7`](./contracts/sonic-146/0x0043a403ada6b63045112d7e979a057c82714fe7/) | ERC20StablecoinUpgradeable | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x21442105ee1a85aa51b345a149c5f6dd47252a45`](./contracts/sonic-146/0x21442105ee1a85aa51b345a149c5f6dd47252a45/) | ERC20StablecoinUpgradeable | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x3a3dd4b0d3bd5592914115e9ce14dd035a22abd4`](./contracts/sonic-146/0x3a3dd4b0d3bd5592914115e9ce14dd035a22abd4/) | ERC20StablecoinUpgradeable | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x41076a2d8f6cac657098e5fff43f31c4c759d0c8`](./contracts/sonic-146/0x41076a2d8f6cac657098e5fff43f31c4c759d0c8/) | ERC20StablecoinUpgradeable | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x53a6abb52b2f968fa80df6a894e4f1b1020da975`](./contracts/sonic-146/0x53a6abb52b2f968fa80df6a894e4f1b1020da975/) | ERC20StablecoinUpgradeable | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x614914b028a7d1fd4fab1e5a53a3e2df000bcb0e`](./contracts/sonic-146/0x614914b028a7d1fd4fab1e5a53a3e2df000bcb0e/) | ERC20StablecoinUpgradeable | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x8af8c11c8c4412c96a09deb5aa7c1d99a10e396c`](./contracts/sonic-146/0x8af8c11c8c4412c96a09deb5aa7c1d99a10e396c/) | ERC20StablecoinUpgradeable | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0xba4d4b6ca77fd8ab3154b8e7b3a93d96338cc46a`](./contracts/sonic-146/0xba4d4b6ca77fd8ab3154b8e7b3a93d96338cc46a/) | ERC20StablecoinUpgradeable | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| fraxtal | [`0x0043a403ada6b63045112d7e979a057c82714fe7`](./contracts/fraxtal-252/0x0043a403ada6b63045112d7e979a057c82714fe7/) | ERC20StablecoinUpgradeable | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| fraxtal | [`0x70924f77509dc1eb9384077b12ca049aa2168d6f`](./contracts/fraxtal-252/0x70924f77509dc1eb9384077b12ca049aa2168d6f/) | ERC20StablecoinUpgradeable | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| fraxtal | [`0x788d96f655735f52c676a133f4dfc53cec614d4a`](./contracts/fraxtal-252/0x788d96f655735f52c676a133f4dfc53cec614d4a/) | ERC20StablecoinUpgradeable | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| fraxtal | [`0x889bf3e00e93bc9ce17a7f8141ef109283913f37`](./contracts/fraxtal-252/0x889bf3e00e93bc9ce17a7f8141ef109283913f37/) | ERC20StablecoinUpgradeable | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| fraxtal | [`0x09c418a9d8027ef890a91ccdfce3c14d055e44dd`](./contracts/fraxtal-252/0x09c418a9d8027ef890a91ccdfce3c14d055e44dd/) | ERC4626BalanceChecker | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x889bf3e00e93bc9ce17a7f8141ef109283913f37`](./contracts/ethereum-1/0x889bf3e00e93bc9ce17a7f8141ef109283913f37/) | ERC4626OracleWrapperV1_1 | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| fraxtal | [`0x0504539e68ec7a50f8ae847f543ab3a062fa4eb7`](./contracts/fraxtal-252/0x0504539e68ec7a50f8ae847f543ab3a062fa4eb7/) | FlashLoanLogic | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xdfd607a73f6d73dbce8adf71de5e9fd56944c936`](./contracts/ethereum-1/0xdfd607a73f6d73dbce8adf71de5e9fd56944c936/) | FrxEthFundamentalOracleWrapperV1_1 | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xa51fa58c76d92f1b0d4d6e3b88d2ba0aff2c2b56`](./contracts/ethereum-1/0xa51fa58c76d92f1b0d4d6e3b88d2ba0aff2c2b56/) | GenericERC4626ConversionAdapter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1e5be5059d4a95297604355dc6abd0baf036cc95`](./contracts/ethereum-1/0x1e5be5059d4a95297604355dc6abd0baf036cc95/) | HardPegOracleWrapperV1_1 | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x36b535bc79defb00d348658ad7e68d9b1176fa97`](./contracts/sonic-146/0x36b535bc79defb00d348658ad7e68d9b1176fa97/) | IssuerV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x70bfbe78548f1159cb9b453e4d6ad0e3648a5a8d`](./contracts/ethereum-1/0x70bfbe78548f1159cb9b453e4d6ad0e3648a5a8d/) | IssuerV2_2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x179867c392add1bf4f7a3d4c70bf8f2f476bb8cc`](./contracts/sonic-146/0x179867c392add1bf4f7a3d4c70bf8f2f476bb8cc/) | L2Pool | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x19c6b5924306baf5ee549cd7b56b37736cf7dc48`](./contracts/sonic-146/0x19c6b5924306baf5ee549cd7b56b37736cf7dc48/) | LiquidationLogic | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x91c95bb84aa561d93d165ff24d0e54e6b006447c`](./contracts/ethereum-1/0x91c95bb84aa561d93d165ff24d0e54e6b006447c/) | LiquidityGaugeV6 | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x02165d665e171566629822d9380ad93b975b186c`](./contracts/ethereum-1/0x02165d665e171566629822d9380ad93b975b186c/) | OracleAggregatorV1_1 | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x1f8d8a3575d049aa0c195aa947483738811badcb`](./contracts/sonic-146/0x1f8d8a3575d049aa0c195aa947483738811badcb/) | PoolAddressesProvider | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xfdb85fdfcee413eb05287f9d4157c1ef1f336207`](./contracts/ethereum-1/0xfdb85fdfcee413eb05287f9d4157c1ef1f336207/) | PoolAddressesProviderRegistry | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x185e9c639dea54d77d62dcb87466fb8de6ded6b9`](./contracts/ethereum-1/0x185e9c639dea54d77d62dcb87466fb8de6ded6b9/) | PoolConfigurator | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| fraxtal | [`0x0503237c9ade4bfe3a8f9a0d75e197c14a3f7ecd`](./contracts/fraxtal-252/0x0503237c9ade4bfe3a8f9a0d75e197c14a3f7ecd/) | PoolLogic | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x31bf6b030d20af8a92d169632ffd8077456e6316`](./contracts/ethereum-1/0x31bf6b030d20af8a92d169632ffd8077456e6316/) | PullRewardsTransferStrategy | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| fraxtal | [`0x85c7287fc53a06ec7995db5ae6f2610200ec0f85`](./contracts/fraxtal-252/0x85c7287fc53a06ec7995db5ae6f2610200ec0f85/) | RebasingTokenWrapperFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| fraxtal | [`0x2429213235b5b4504d41bc9aa64fc2659e4450a3`](./contracts/fraxtal-252/0x2429213235b5b4504d41bc9aa64fc2659e4450a3/) | Redeemer | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x09059859d2b91cc840bd2c86f841defa19d38b88`](./contracts/sonic-146/0x09059859d2b91cc840bd2c86f841defa19d38b88/) | RedeemerV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| fraxtal | [`0x145555c56718437093c020cef4e8dd11cd7d2662`](./contracts/fraxtal-252/0x145555c56718437093c020cef4e8dd11cd7d2662/) | ReservesSetupHelper | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x06f0c640c47fcfe030da1cdd7dfb5080cb5a0ea8`](./contracts/ethereum-1/0x06f0c640c47fcfe030da1cdd7dfb5080cb5a0ea8/) | RewardsController | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| fraxtal | [`0x46478563d4532ef2b68a328c3f528b19626f2e54`](./contracts/fraxtal-252/0x46478563d4532ef2b68a328c3f528b19626f2e54/) | RewardVault | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x504d0eacbf9ea5645a8a9da1b15f3708a5483acc`](./contracts/ethereum-1/0x504d0eacbf9ea5645a8a9da1b15f3708a5483acc/) | SanitizableAToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x391afc4190a92350b5c812434b7fbf381feb8631`](./contracts/ethereum-1/0x391afc4190a92350b5c812434b7fbf381feb8631/) | StableDebtToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x1cc03e57ed4d426f673dbb4d69e08c91bbbd55a8`](./contracts/sonic-146/0x1cc03e57ed4d426f673dbb4d69e08c91bbbd55a8/) | StaticATokenFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x36e178ba804514d80ea87d78b96db87408b8059e`](./contracts/sonic-146/0x36e178ba804514d80ea87d78b96db87408b8059e/) | StaticATokenLM | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| fraxtal | [`0x2d3f5739096478dbcf3df74941861b8d156d6f3e`](./contracts/fraxtal-252/0x2d3f5739096478dbcf3df74941861b8d156d6f3e/) | SupplyLogic | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xe3ee2d4bde6695cc1ae4a4cda466bdc6d5df479e`](./contracts/ethereum-1/0xe3ee2d4bde6695cc1ae4a4cda466bdc6d5df479e/) | UiIncentiveDataProviderV3 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1c4be7d7f0184ba6cc458fc99880198c537867e2`](./contracts/ethereum-1/0x1c4be7d7f0184ba6cc458fc99880198c537867e2/) | UiPoolDataProviderV3 | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xf5e96f92354de544c2b0b0c4328ef5ded8da27ef`](./contracts/ethereum-1/0xf5e96f92354de544c2b0b0c4328ef5ded8da27ef/) | VariableDebtToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xe5ae8775a23293dbf5a59019aa32ba358900cbc4`](./contracts/ethereum-1/0xe5ae8775a23293dbf5a59019aa32ba358900cbc4/) | WalletBalanceProvider | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xb1c1d6150c4f072f5426aa918f7924ee73c6ac2d`](./contracts/ethereum-1/0xb1c1d6150c4f072f5426aa918f7924ee73c6ac2d/) | WrappedTokenGatewayV3 | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 79 |
| upstream | 4 |
| standard_library | 8 |
| needs_review | 121 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 4
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: contract_name=11

Zero-match audit list:

- [11573] drive.google.com/file/d/1Q58ewyXYxWTpbUoGct6Rdl4PuvJQD1N9/view
- [11574] drive.google.com/file/d/1WJSIYMoLZLeQ5ix9gxKYqRrzePowU2BO/view
- [11575] drive.google.com/file/d/13K-vwkwb3NJKhSa3eaBf1rVeSscHxAxY/view
- [11577] drive.google.com/file/d/1iVIOl8xwNr__d9J_gArV-xZlHidBDst3/view

Fork inheritance lineage and inherited audits are included when available.
