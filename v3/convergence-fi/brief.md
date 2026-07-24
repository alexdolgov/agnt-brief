# Agentic Audit Brief: Convergence Fi

## Export Authority

- Production state: **published scope**
- Raw selected rows: 0 across 0 audit(s)
- Eligible audit results: 5 (0 matched; 5 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e40c73181a386361babecc6895e0f6c5587548f92814db09f88491f8b4a38d92`

## Project Overview

- Project: Convergence Fi (`convergence-fi`)
- Website: [https://app.cvg.finance/](https://app.cvg.finance/)
- Lifecycle: unknown
- Generated: 2026-07-24T14:10:00.000Z
- Pipeline run: brief-deployer-expansion-all-20260724-v1
- Chains: ethereum
- Contract surface: 84 unique implementations (100 raw deployments)
- Coverage basis: not assessable — No confirmed own live-verified denominator is available.
- DeFi Llama TVL: $526,539.10
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

No contract logic was present for Convergence Fi in the closed normalized topography run; this brief does not infer a protocol purpose from missing code.

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

0 of 5 contracts are derived from known codebases. 5 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0x0af815364bd9e9e60f3d2d3bac1320b77d3e35f7`, chain 1)
- UnnamedContract (`0x794c31863b0459039b17479dc638c1948c27fcb9`, chain 1)
- UnnamedContract (`0xcd6cfce8c8d3b6efad27390e87d6931d4078b36c`, chain 1)
- UnnamedContract (`0xd2be17cf9ee45cac70264316614180ec608cd856`, chain 1)
- UnnamedContract (`0xd2c46b4c28f4b7976d9f87687863c46bb2f71dbb`, chain 1)

## Contract Surface Quality

- Logic-topography rows: 0; live-surface rows included: 0 (0 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 5/5 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: not assessable
- Coverage assessment: not_assessable (low confidence) — No confirmed own live-verified denominator is available.
- Address-book implementation classification: 5 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 79 discovered implementations shown in the inventory but excluded from coverage (2 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 16
- Confirmed-live implementations: 5 of 84 unique; 79 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 0/51
- Verified + Unaudited implementations: 51
- Verified by bytecode match: 0
- Unverified implementations: 33
- Unique implementations: 84
- Raw deployments: 100
- Audits discovered: 5 (5 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2023-11 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 3 stale, 2 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (51)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| BondCalculator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8022d15c94f304d838c824cdcc5cd5eac50c9b3d` | ⚠️ Unaudited |
| BondDepository | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1e43b2064d8f030d282c28e105d683a62f12597c` | ⚠️ Unaudited |
| BondDepositoryV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x52f15a0b2d27309a1096a40ad72a07a9fab46194` | ⚠️ Unaudited |
| BondLogo | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3916bad045ad47395ed8fdca14e762f25fcbeff5` | ⚠️ Unaudited |
| BondPositionManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x52d89e9e324f235b67044adb21eac3a98281251a` | ⚠️ Unaudited |
| CloneFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcb3ad849d3ea81bd579863cff96ca13c3ea08537` | ⚠️ Unaudited |
| CloneFactoryV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x15a2d42421b62e92fe0abd22e2aa6cac8ffa6ec5`; ethereum `0x1a10085b5250942a497e2aa5d41d8a41412f645e` | ⚠️ Unaudited |
| Cvg | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x97effb790f2fbb701d88f89db4521348a2b77be8` | ⚠️ Unaudited |
| Cvg-Finance - Gauge Controller | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0xdb77895ea7fbec05264423910ef9c9144ee8190d`; ethereum `0xddaa52f00c312b9bf91044ebc369d5ad4dccd35e` | ⚠️ Unaudited |
| Cvg-Finance - veCVG | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x5a35bca8e617526678a7c18fb9587417dbd619d0`; ethereum `0xfeec1ec6ff38d910d3c675669f98e39747defb5e` | ⚠️ Unaudited |
| CvgControlTower | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfd7ea97e967586b5dd79d23eae5a53a47b296e3e` | ⚠️ Unaudited |
| CvgControlTowerV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0xb0afc8363b8f36e0cce5d54251e20720ffaeaee7`; ethereum `0xbdbddc4bf67e9bc02706e4ce53bc14d6ce3038f1` | ⚠️ Unaudited |
| CvgCVX | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x2191df768ad71140f9f3e96c1e4407a4aa31d082`; ethereum `0x33dbaa43aabd534664aae56490c3b0aa26f06bac` | ⚠️ Unaudited |
| CvgCvxStakingPositionService | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x2c1d293c50c6d1a4370ebb442a02c5956bbab119`; ethereum `0x34b493a5952b56ed97ec54b311c187a91509b65d` | ⚠️ Unaudited |
| CvgOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x451ea5a1754a2c60fceaef39518d9e096eb6d16c` | ⚠️ Unaudited |
| CvgOracleUpgradeable | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x955659bc4cc1d9fe2f00e422b524d1f24993b0c3` | ⚠️ Unaudited |
| CvgRewards | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd615c6db5c472b446e6a9a067465cfe58a0bc9d7` | ⚠️ Unaudited |
| CvgRewardsV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x149bf88ac48fbb2776d56f3e3e55b4e4056f5e7f` | ⚠️ Unaudited |
| CvgRewardsV3 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0xa044fd2e8254ec5de93b15b8b27d005899579109`; ethereum `0xe0256b12bc6883131fb85ff2046c2672abd28715` | ⚠️ Unaudited |
| CvgSDT | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x830614ae209ff9d8706d386fcdbc7a55206fcffc` | ⚠️ Unaudited |
| CvgSdtBuffer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4df0a305fd635ac53c3acf9f8da3c8acbd2cc6ae` | ⚠️ Unaudited |
| CVX1 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x6c9815826fdf8c7a45ccfed2064dbab33a078712`; ethereum `0xd6a77a937c383f700439156afa332868bc8e44d2` | ⚠️ Unaudited |
| CvxAssetStakerBuffer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x600c91ae1ff05340d47507aee0e7cf8dd10dcb92` | ⚠️ Unaudited |
| CvxAssetStakingService | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc0d75399123aff2cd488293725290c68e533e303` | ⚠️ Unaudited |
| CvxRewardDistributor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x47c69e8c909ce626af73c955a5e34a20b7c71f19` | ⚠️ Unaudited |
| CvxRewardDistributorV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x2b083beaac310cc5e190b1d2507038ccb03e7606`; ethereum `0x394f61d6a6198746abe784590218b4835279a5c9` | ⚠️ Unaudited |
| LockingLogo | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x05816acfe129553a3c387389980bf7e4871e29e9`; ethereum `0xec7854175106eaf7dd6225a65cbf25d4ca96ba9d` | ⚠️ Unaudited |
| LockingPositionDelegate | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0xc375d517775d74b9bb64a895bdb68c91c55b2271`; ethereum `0xe11a157bde0855017f37e473aab108d43e483716` | ⚠️ Unaudited |
| LockingPositionManager | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x0edb88aa3aa665782121fa2509b382f414a0c0ce`; ethereum `0xa19fc25fe94d49bea47c75e51241b8d0f932ade1` | ⚠️ Unaudited |
| LockingPositionService | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x84728ef58f70dd9ddb2d54869b5ad8d922fad4d2` | ⚠️ Unaudited |
| LockingPositionServiceV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbd1d174b448cfb0c1680a88b0101daf6ae8f5009` | ⚠️ Unaudited |
| LockingPositionServiceV3 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc809e0729d7ea45b1ce6149baab79991e2cb1262` | ⚠️ Unaudited |
| ProxyAdmin | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | n/a | `0xf16d93acf337de38ee55dfb2f2a276883ff59e89` | ⚠️ Unaudited |
| SdtBlackHole | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x21777106355ba506a31ff7984c0ae5c924deb77f`; ethereum `0xf13797bf4694436af27b33dbf00f81564e91c6a1` | ⚠️ Unaudited |
| SdtBuffer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdb22d48e43dd9cf08987b85e21f172c515cd5871` | ⚠️ Unaudited |
| SdtBufferV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x31ab49528b37af1ee3ef9665cdc22e494a44ddcb`; ethereum `0x69daedac54e81817ae2909ad43fc2b90261296d0` | ⚠️ Unaudited |
| SdtFeeCollector | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x15cbdf343fa37cd555d8f8cdeaa3948c1f0c42ae` | ⚠️ Unaudited |
| SdtRewardDistributor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3554f7e8f87b4c60fba1e7ed9e3fdcee4d1e4d66` | ⚠️ Unaudited |
| SdtRewardDistributorV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2af5ae072e8594a04e14a410fb0d865767c1a704` | ⚠️ Unaudited |
| SdtStakingLogo | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4617548f686be150c3c5c131926b5be287fded02` | ⚠️ Unaudited |
| SdtStakingPositionManager | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x7319662ad7d7ce2d1595073ea042b723f6d0dc48`; ethereum `0xfbb73de2e5aec2a612f6b2c330049c9392a8660c` | ⚠️ Unaudited |
| SdtStakingPositionService | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdba75359b323cc61e02975760d89178f79dcf799` | ⚠️ Unaudited |
| SdtStakingViewer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa3a8cda21f50b6737385e46fc9495a9998b05ff0` | ⚠️ Unaudited |
| SdtUtilities | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8d41faa4c774221aeddf324461864da3a14b5474` | ⚠️ Unaudited |
| StkCvg | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x4b3bd8906083bde267a79e4131af7a6f723960c8`; ethereum `0xe789b78f66886d3ec9e393fb495ea726c5b371af` | ⚠️ Unaudited |
| StratPostExploit | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf0c3107fa783b23ffb789953b868dc42f9674d37` | ⚠️ Unaudited |
| UpgradeableBeacon | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | n/a | `0x5d6088d6303fce50c0c5c76c47257c5d97cd2c33` | ⚠️ Unaudited |
| VestingCvg | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc929ba60ef82fe55de3bc848dd9453b3b12a0c30` | ⚠️ Unaudited |
| YsCrvDistributor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5d3ea3460f3e0248633786203db29dc349020ccd` | ⚠️ Unaudited |
| YsDistributor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbc39db78f6cd8562d2406474583613f0c2422fb7` | ⚠️ Unaudited |
| YsStreamer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2841f1b3b370f56a3798a258d317052b4284ac5a` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (33)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-381906 | `0x0af815364bd9e9e60f3d2d3bac1320b77d3e35f7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3aae4bbeb72763ec8192f6e0aa19ea4284d2f413` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x49d2de51f61e439d7e97810834e56ff0c4ce5c9b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x59e8fbceac829b7da182d8f749ba4a038c6272ea` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x660a45986e9b8f60c41aadebd2941724200fbcf8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6af835210cf2cebb825efcda51d2c3931849a1f6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6b65525a40704a4c48d07c25b8d05654854dfecd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x78345bae985319aff6d8cbebdeb9d8105d96dd46` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-381907 | `0x794c31863b0459039b17479dc638c1948c27fcb9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x865e59ebc3ee9edd5656cd79b382f5153e466545` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8678186f5863a3013a180ba2b387de8e54573e06` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x937e33405ea2f056857e82ad7b9393a7fadc313f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x98c04163723134b0a4c364a72a71e620b58ab3f1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa3aa447854a81a0497a9d56b7fc7cae3ce0cc63c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xac4c0b8b3f1918984dc31f8d31a1e27b28de5dfe` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb85e083c505edb68fed355f13149b493230efc7e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb86c17469b4568e95cffefd185a4012b9cb10828` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbc0910e6df6725e3de136d18c9c6817dd34dd9a9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc4dd3326db353337337b2613b9a671dabe64109a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc8a6480ed7c7b1c401061f8d96be7de6f94d3e60` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-381908 | `0xcd6cfce8c8d3b6efad27390e87d6931d4078b36c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcf3dcc9c435b279497f3b2fa179c1a8def076668` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-381909 | `0xd2be17cf9ee45cac70264316614180ec608cd856` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-381910 | `0xd2c46b4c28f4b7976d9f87687863c46bb2f71dbb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd6f3fd69f8d2aee1577e6d7fc471665e8b00514d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd861ff854206d0db64f1c0f3108f59576a5ccc04` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdf640f13ef36e22384fb9f0f713c739c34e54521` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe60341ae7d6776fc346bdc3acdf350a85981ad76` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe7ac5a8147cce24071a782c57ee319e9d1630f34` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xea3c304fab04aa459a5e4712e06eb22ef3624420` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf65ca2cc4ddd0cd85f55b5905f03dfebcc748d67` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf7d91654443d83ddc881a8ee508c91071529cc1a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf941bc649ef0b20abd7f6dc78ca8f8e225337933` | ❓ Unverified |

## Deployer Expansion Inventory

These rows are additive inventory from `project_contracts.discovery_source=deployer_expansion`; they do not change scope matching, coverage, or logic topography in this brief.

- Source: `project_contracts.discovery_source=deployer_expansion`
- Decision run: `deployer-candidate-production-20260712`
- Total contracts: 44
- Live contracts: 0
- Unknown liveness contracts: 44
- Source-verified contracts: 0
- Currently scope-matched contracts retained as-is: 0
- Classification counts: unverified unclassified=44

| Classification | Contract | Address-Book Class | Role | Liveness | Source | Decision | Deployer |
|---|---|---|---|---|---|---|---|
| unverified unclassified | UnnamedContract<br>`0x1a10085b5250942a497e2aa5d41d8a41412f645e` | non_address_book | unknown | unknown | unverified | n/a | `0xfffde9a2bb7c9a6dfd1f0235f5af4f599e3265ec` |
| unverified unclassified | UnnamedContract<br>`0x33dbaa43aabd534664aae56490c3b0aa26f06bac` | non_address_book | unknown | unknown | unverified | n/a | `0xfffde9a2bb7c9a6dfd1f0235f5af4f599e3265ec` |
| unverified unclassified | UnnamedContract<br>`0x34b493a5952b56ed97ec54b311c187a91509b65d` | non_address_book | unknown | unknown | unverified | n/a | `0xfffde9a2bb7c9a6dfd1f0235f5af4f599e3265ec` |
| unverified unclassified | UnnamedContract<br>`0x394f61d6a6198746abe784590218b4835279a5c9` | non_address_book | unknown | unknown | unverified | n/a | `0xfffde9a2bb7c9a6dfd1f0235f5af4f599e3265ec` |
| unverified unclassified | UnnamedContract<br>`0x3aae4bbeb72763ec8192f6e0aa19ea4284d2f413` | non_address_book | unknown | unknown | unverified | n/a | `0xfffde9a2bb7c9a6dfd1f0235f5af4f599e3265ec` |
| unverified unclassified | UnnamedContract<br>`0x49d2de51f61e439d7e97810834e56ff0c4ce5c9b` | non_address_book | unknown | unknown | unverified | n/a | `0xfffde9a2bb7c9a6dfd1f0235f5af4f599e3265ec` |
| unverified unclassified | UnnamedContract<br>`0x59e8fbceac829b7da182d8f749ba4a038c6272ea` | non_address_book | unknown | unknown | unverified | n/a | `0xfffde9a2bb7c9a6dfd1f0235f5af4f599e3265ec` |
| unverified unclassified | UnnamedContract<br>`0x660a45986e9b8f60c41aadebd2941724200fbcf8` | non_address_book | unknown | unknown | unverified | n/a | `0xfffde9a2bb7c9a6dfd1f0235f5af4f599e3265ec` |
| unverified unclassified | UnnamedContract<br>`0x69daedac54e81817ae2909ad43fc2b90261296d0` | non_address_book | unknown | unknown | unverified | n/a | `0xfffde9a2bb7c9a6dfd1f0235f5af4f599e3265ec` |
| unverified unclassified | UnnamedContract<br>`0x6af835210cf2cebb825efcda51d2c3931849a1f6` | non_address_book | unknown | unknown | unverified | n/a | `0xfffde9a2bb7c9a6dfd1f0235f5af4f599e3265ec` |
| unverified unclassified | UnnamedContract<br>`0x6b65525a40704a4c48d07c25b8d05654854dfecd` | non_address_book | unknown | unknown | unverified | n/a | `0xfffde9a2bb7c9a6dfd1f0235f5af4f599e3265ec` |
| unverified unclassified | UnnamedContract<br>`0x78345bae985319aff6d8cbebdeb9d8105d96dd46` | non_address_book | unknown | unknown | unverified | n/a | `0xfffde9a2bb7c9a6dfd1f0235f5af4f599e3265ec` |
| unverified unclassified | UnnamedContract<br>`0x865e59ebc3ee9edd5656cd79b382f5153e466545` | non_address_book | unknown | unknown | unverified | n/a | `0xfffde9a2bb7c9a6dfd1f0235f5af4f599e3265ec` |
| unverified unclassified | UnnamedContract<br>`0x8678186f5863a3013a180ba2b387de8e54573e06` | non_address_book | unknown | unknown | unverified | n/a | `0xfffde9a2bb7c9a6dfd1f0235f5af4f599e3265ec` |
| unverified unclassified | UnnamedContract<br>`0x937e33405ea2f056857e82ad7b9393a7fadc313f` | non_address_book | unknown | unknown | unverified | n/a | `0xfffde9a2bb7c9a6dfd1f0235f5af4f599e3265ec` |
| unverified unclassified | UnnamedContract<br>`0x98c04163723134b0a4c364a72a71e620b58ab3f1` | non_address_book | unknown | unknown | unverified | n/a | `0xfffde9a2bb7c9a6dfd1f0235f5af4f599e3265ec` |
| unverified unclassified | UnnamedContract<br>`0xa19fc25fe94d49bea47c75e51241b8d0f932ade1` | non_address_book | unknown | unknown | unverified | n/a | `0xfffde9a2bb7c9a6dfd1f0235f5af4f599e3265ec` |
| unverified unclassified | UnnamedContract<br>`0xa3aa447854a81a0497a9d56b7fc7cae3ce0cc63c` | non_address_book | unknown | unknown | unverified | n/a | `0xfffde9a2bb7c9a6dfd1f0235f5af4f599e3265ec` |
| unverified unclassified | UnnamedContract<br>`0xac4c0b8b3f1918984dc31f8d31a1e27b28de5dfe` | non_address_book | unknown | unknown | unverified | n/a | `0xfffde9a2bb7c9a6dfd1f0235f5af4f599e3265ec` |
| unverified unclassified | UnnamedContract<br>`0xb85e083c505edb68fed355f13149b493230efc7e` | non_address_book | unknown | unknown | unverified | n/a | `0xfffde9a2bb7c9a6dfd1f0235f5af4f599e3265ec` |
| unverified unclassified | UnnamedContract<br>`0xb86c17469b4568e95cffefd185a4012b9cb10828` | non_address_book | unknown | unknown | unverified | n/a | `0xfffde9a2bb7c9a6dfd1f0235f5af4f599e3265ec` |
| unverified unclassified | UnnamedContract<br>`0xbc0910e6df6725e3de136d18c9c6817dd34dd9a9` | non_address_book | unknown | unknown | unverified | n/a | `0xfffde9a2bb7c9a6dfd1f0235f5af4f599e3265ec` |
| unverified unclassified | UnnamedContract<br>`0xbdbddc4bf67e9bc02706e4ce53bc14d6ce3038f1` | non_address_book | unknown | unknown | unverified | n/a | `0xfffde9a2bb7c9a6dfd1f0235f5af4f599e3265ec` |
| unverified unclassified | UnnamedContract<br>`0xc4dd3326db353337337b2613b9a671dabe64109a` | non_address_book | unknown | unknown | unverified | n/a | `0xfffde9a2bb7c9a6dfd1f0235f5af4f599e3265ec` |
| unverified unclassified | UnnamedContract<br>`0xc8a6480ed7c7b1c401061f8d96be7de6f94d3e60` | non_address_book | unknown | unknown | unverified | n/a | `0xfffde9a2bb7c9a6dfd1f0235f5af4f599e3265ec` |
| unverified unclassified | UnnamedContract<br>`0xcf3dcc9c435b279497f3b2fa179c1a8def076668` | non_address_book | unknown | unknown | unverified | n/a | `0xfffde9a2bb7c9a6dfd1f0235f5af4f599e3265ec` |
| unverified unclassified | UnnamedContract<br>`0xd6a77a937c383f700439156afa332868bc8e44d2` | non_address_book | unknown | unknown | unverified | n/a | `0xfffde9a2bb7c9a6dfd1f0235f5af4f599e3265ec` |
| unverified unclassified | UnnamedContract<br>`0xd6f3fd69f8d2aee1577e6d7fc471665e8b00514d` | non_address_book | unknown | unknown | unverified | n/a | `0xfffde9a2bb7c9a6dfd1f0235f5af4f599e3265ec` |
| unverified unclassified | UnnamedContract<br>`0xd861ff854206d0db64f1c0f3108f59576a5ccc04` | non_address_book | unknown | unknown | unverified | n/a | `0xfffde9a2bb7c9a6dfd1f0235f5af4f599e3265ec` |
| unverified unclassified | UnnamedContract<br>`0xddaa52f00c312b9bf91044ebc369d5ad4dccd35e` | non_address_book | unknown | unknown | unverified | n/a | `0xfffde9a2bb7c9a6dfd1f0235f5af4f599e3265ec` |
| unverified unclassified | UnnamedContract<br>`0xdf640f13ef36e22384fb9f0f713c739c34e54521` | non_address_book | unknown | unknown | unverified | n/a | `0xfffde9a2bb7c9a6dfd1f0235f5af4f599e3265ec` |
| unverified unclassified | UnnamedContract<br>`0xe0256b12bc6883131fb85ff2046c2672abd28715` | non_address_book | unknown | unknown | unverified | n/a | `0xfffde9a2bb7c9a6dfd1f0235f5af4f599e3265ec` |
| unverified unclassified | UnnamedContract<br>`0xe11a157bde0855017f37e473aab108d43e483716` | non_address_book | unknown | unknown | unverified | n/a | `0xfffde9a2bb7c9a6dfd1f0235f5af4f599e3265ec` |
| unverified unclassified | UnnamedContract<br>`0xe60341ae7d6776fc346bdc3acdf350a85981ad76` | non_address_book | unknown | unknown | unverified | n/a | `0xfffde9a2bb7c9a6dfd1f0235f5af4f599e3265ec` |
| unverified unclassified | UnnamedContract<br>`0xe789b78f66886d3ec9e393fb495ea726c5b371af` | non_address_book | unknown | unknown | unverified | n/a | `0xfffde9a2bb7c9a6dfd1f0235f5af4f599e3265ec` |
| unverified unclassified | UnnamedContract<br>`0xe7ac5a8147cce24071a782c57ee319e9d1630f34` | non_address_book | unknown | unknown | unverified | n/a | `0xfffde9a2bb7c9a6dfd1f0235f5af4f599e3265ec` |
| unverified unclassified | UnnamedContract<br>`0xea3c304fab04aa459a5e4712e06eb22ef3624420` | non_address_book | unknown | unknown | unverified | n/a | `0xfffde9a2bb7c9a6dfd1f0235f5af4f599e3265ec` |
| unverified unclassified | UnnamedContract<br>`0xec7854175106eaf7dd6225a65cbf25d4ca96ba9d` | non_address_book | unknown | unknown | unverified | n/a | `0xfffde9a2bb7c9a6dfd1f0235f5af4f599e3265ec` |
| unverified unclassified | UnnamedContract<br>`0xf13797bf4694436af27b33dbf00f81564e91c6a1` | non_address_book | unknown | unknown | unverified | n/a | `0xfffde9a2bb7c9a6dfd1f0235f5af4f599e3265ec` |
| unverified unclassified | UnnamedContract<br>`0xf65ca2cc4ddd0cd85f55b5905f03dfebcc748d67` | non_address_book | unknown | unknown | unverified | n/a | `0xfffde9a2bb7c9a6dfd1f0235f5af4f599e3265ec` |
| unverified unclassified | UnnamedContract<br>`0xf7d91654443d83ddc881a8ee508c91071529cc1a` | non_address_book | unknown | unknown | unverified | n/a | `0xfffde9a2bb7c9a6dfd1f0235f5af4f599e3265ec` |
| unverified unclassified | UnnamedContract<br>`0xf941bc649ef0b20abd7f6dc78ca8f8e225337933` | non_address_book | unknown | unknown | unverified | n/a | `0xfffde9a2bb7c9a6dfd1f0235f5af4f599e3265ec` |
| unverified unclassified | UnnamedContract<br>`0xfbb73de2e5aec2a612f6b2c330049c9392a8660c` | non_address_book | unknown | unknown | unverified | n/a | `0xfffde9a2bb7c9a6dfd1f0235f5af4f599e3265ec` |
| unverified unclassified | UnnamedContract<br>`0xfeec1ec6ff38d910d3c675669f98e39747defb5e` | non_address_book | unknown | unknown | unverified | n/a | `0xfffde9a2bb7c9a6dfd1f0235f5af4f599e3265ec` |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [ipfs.io/ipfs/QmPyZZoeNJqt44GiFRoc8E9JctCyp5DYxkW254hhfkeUui](https://ipfs.io/ipfs/QmPyZZoeNJqt44GiFRoc8E9JctCyp5DYxkW254hhfkeUui) | Halborn | Audit | 2023-06 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 31 | high |
| [audits.sherlock.xyz/contests/126](https://audits.sherlock.xyz/contests/126) | Sherlock | Contest | 2023-11 | stale | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |
| [2023-11-convergence (GitHub directory)](https://github.com/sherlock-audit/2023-11-convergence) | Sherlock | Contest | 2023-11 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 19 | high |
| [app.hats.finance/audit-competitions/convergence-finance-0x0e410e7af8e70fc5bffcdbfbdf1673ee7b3d0777/scope](https://app.hats.finance/audit-competitions/convergence-finance-0x0e410e7af8e70fc5bffcdbfbdf1673ee7b3d0777/scope) | Hats Finance | Contest | n/a | unknown | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |
| [app.hats.finance/audit-competitions/convergence-convex-integration-0xb3df23e155b74ad2b93777f58980d6727e8b40bb/scope](https://app.hats.finance/audit-competitions/convergence-convex-integration-0xb3df23e155b74ad2b93777f58980d6727e8b40bb/scope) | Hats Finance | Contest | n/a | unknown | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [21359] ipfs.io/ipfs/QmPyZZoeNJqt44GiFRoc8E9JctCyp5DYxkW254hhfkeUui — no match: All 31 contracts listed in scope section of the report.
- [21360] audits.sherlock.xyz/contests/126 — no match: The provided text is a fragment of a contest page header with no contract names or audit report content.
- [21361] 2023-11-convergence (GitHub directory) — no match: Extracted 19 contract names from the audit scope listing. No audit date found in the provided text.
- [21362] app.hats.finance/audit-competitions/convergence-finance-0x0e410e7af8e70fc5bffcdbfbdf1673ee7b3d0777/scope — no match: The provided text is not an audit report; it appears to be a website requiring JavaScript. No contract names or audit details could be extracted.
- [21363] app.hats.finance/audit-competitions/convergence-convex-integration-0xb3df23e155b74ad2b93777f58980d6727e8b40bb/scope — no match: The provided text is not an audit report but a generic message about JavaScript. No contracts or audit details found.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| ipfs.io/ipfs/QmPyZZoeNJqt44GiFRoc8E9JctCyp5DYxkW254hhfkeUui | BondCalculator | unmatched — not counted | — | listed in scope | no |
| ipfs.io/ipfs/QmPyZZoeNJqt44GiFRoc8E9JctCyp5DYxkW254hhfkeUui | BondDepository | unmatched — not counted | — | listed in scope | no |
| ipfs.io/ipfs/QmPyZZoeNJqt44GiFRoc8E9JctCyp5DYxkW254hhfkeUui | BondLogo | unmatched — not counted | — | listed in scope | no |
| ipfs.io/ipfs/QmPyZZoeNJqt44GiFRoc8E9JctCyp5DYxkW254hhfkeUui | BondPositionManager | unmatched — not counted | — | listed in scope | no |
| ipfs.io/ipfs/QmPyZZoeNJqt44GiFRoc8E9JctCyp5DYxkW254hhfkeUui | GaugeController | unmatched — not counted | — | listed in scope | no |
| ipfs.io/ipfs/QmPyZZoeNJqt44GiFRoc8E9JctCyp5DYxkW254hhfkeUui | LockingLogo | unmatched — not counted | — | listed in scope | no |
| ipfs.io/ipfs/QmPyZZoeNJqt44GiFRoc8E9JctCyp5DYxkW254hhfkeUui | LockingPositionDelegate | unmatched — not counted | — | listed in scope | no |
| ipfs.io/ipfs/QmPyZZoeNJqt44GiFRoc8E9JctCyp5DYxkW254hhfkeUui | LockingPositionManager | unmatched — not counted | — | listed in scope | no |
| ipfs.io/ipfs/QmPyZZoeNJqt44GiFRoc8E9JctCyp5DYxkW254hhfkeUui | veCVG | unmatched — not counted | — | listed in scope | no |
| ipfs.io/ipfs/QmPyZZoeNJqt44GiFRoc8E9JctCyp5DYxkW254hhfkeUui | VveCVGCalculator | unmatched — not counted | — | listed in scope | no |
| ipfs.io/ipfs/QmPyZZoeNJqt44GiFRoc8E9JctCyp5DYxkW254hhfkeUui | CvgOracle | unmatched — not counted | — | listed in scope | no |
| ipfs.io/ipfs/QmPyZZoeNJqt44GiFRoc8E9JctCyp5DYxkW254hhfkeUui | CvgV3Aggregator | unmatched — not counted | — | listed in scope | no |
| ipfs.io/ipfs/QmPyZZoeNJqt44GiFRoc8E9JctCyp5DYxkW254hhfkeUui | SeedPresaleCvg | unmatched — not counted | — | listed in scope | no |
| ipfs.io/ipfs/QmPyZZoeNJqt44GiFRoc8E9JctCyp5DYxkW254hhfkeUui | VestingCvg | unmatched — not counted | — | listed in scope | no |
| ipfs.io/ipfs/QmPyZZoeNJqt44GiFRoc8E9JctCyp5DYxkW254hhfkeUui | WlPresaleCvg | unmatched — not counted | — | listed in scope | no |
| ipfs.io/ipfs/QmPyZZoeNJqt44GiFRoc8E9JctCyp5DYxkW254hhfkeUui | CvgRewards | unmatched — not counted | — | listed in scope | no |
| ipfs.io/ipfs/QmPyZZoeNJqt44GiFRoc8E9JctCyp5DYxkW254hhfkeUui | TAssetBlackHole | unmatched — not counted | — | listed in scope | no |
| ipfs.io/ipfs/QmPyZZoeNJqt44GiFRoc8E9JctCyp5DYxkW254hhfkeUui | YsDistributor | unmatched — not counted | — | listed in scope | no |
| ipfs.io/ipfs/QmPyZZoeNJqt44GiFRoc8E9JctCyp5DYxkW254hhfkeUui | CvgTokeStaking | unmatched — not counted | — | listed in scope | no |
| ipfs.io/ipfs/QmPyZZoeNJqt44GiFRoc8E9JctCyp5DYxkW254hhfkeUui | StakingLogo | unmatched — not counted | — | listed in scope | no |
| ipfs.io/ipfs/QmPyZZoeNJqt44GiFRoc8E9JctCyp5DYxkW254hhfkeUui | StakingViewer | unmatched — not counted | — | listed in scope | no |
| ipfs.io/ipfs/QmPyZZoeNJqt44GiFRoc8E9JctCyp5DYxkW254hhfkeUui | TAssetStaking | unmatched — not counted | — | listed in scope | no |
| ipfs.io/ipfs/QmPyZZoeNJqt44GiFRoc8E9JctCyp5DYxkW254hhfkeUui | TokeStaker | unmatched — not counted | — | listed in scope | no |
| ipfs.io/ipfs/QmPyZZoeNJqt44GiFRoc8E9JctCyp5DYxkW254hhfkeUui | TokeStakingCommon | unmatched — not counted | — | listed in scope | no |
| ipfs.io/ipfs/QmPyZZoeNJqt44GiFRoc8E9JctCyp5DYxkW254hhfkeUui | Cvg | unmatched — not counted | — | listed in scope | no |
| ipfs.io/ipfs/QmPyZZoeNJqt44GiFRoc8E9JctCyp5DYxkW254hhfkeUui | CvgERC721TimeLocking | unmatched — not counted | — | listed in scope | no |
| ipfs.io/ipfs/QmPyZZoeNJqt44GiFRoc8E9JctCyp5DYxkW254hhfkeUui | CvgToke | unmatched — not counted | — | listed in scope | no |
| ipfs.io/ipfs/QmPyZZoeNJqt44GiFRoc8E9JctCyp5DYxkW254hhfkeUui | CvgUtilities | unmatched — not counted | — | listed in scope | no |
| ipfs.io/ipfs/QmPyZZoeNJqt44GiFRoc8E9JctCyp5DYxkW254hhfkeUui | SwapperFactory | unmatched — not counted | — | listed in scope | no |
| ipfs.io/ipfs/QmPyZZoeNJqt44GiFRoc8E9JctCyp5DYxkW254hhfkeUui | CloneFactory | unmatched — not counted | — | listed in scope | no |
| ipfs.io/ipfs/QmPyZZoeNJqt44GiFRoc8E9JctCyp5DYxkW254hhfkeUui | CvgControlTower | unmatched — not counted | — | listed in scope | no |
| 2023-11-convergence (GitHub directory) | GaugeController | unmatched — not counted | — | listed in scope | no |
| 2023-11-convergence (GitHub directory) | LockingPositionDelegate | unmatched — not counted | — | listed in scope | no |
| 2023-11-convergence (GitHub directory) | LockingPositionManager | unmatched — not counted | — | listed in scope | no |
| 2023-11-convergence (GitHub directory) | LockingPositionService | unmatched — not counted | — | listed in scope | no |
| 2023-11-convergence (GitHub directory) | veCVG | unmatched — not counted | — | listed in scope | no |
| 2023-11-convergence (GitHub directory) | CvgRewards | unmatched — not counted | — | listed in scope | no |
| 2023-11-convergence (GitHub directory) | CvgSdtBuffer | unmatched — not counted | — | listed in scope | no |
| 2023-11-convergence (GitHub directory) | SdtBlackHole | unmatched — not counted | — | listed in scope | no |
| 2023-11-convergence (GitHub directory) | SdtBuffer | unmatched — not counted | — | listed in scope | no |
| 2023-11-convergence (GitHub directory) | SdtFeeCollector | unmatched — not counted | — | listed in scope | no |
| 2023-11-convergence (GitHub directory) | YsDistributor | unmatched — not counted | — | listed in scope | no |
| 2023-11-convergence (GitHub directory) | SdtRewardReceiver | unmatched — not counted | — | listed in scope | no |
| 2023-11-convergence (GitHub directory) | SdtStakingPositionManager | unmatched — not counted | — | listed in scope | no |
| 2023-11-convergence (GitHub directory) | SdtStakingPositionService | unmatched — not counted | — | listed in scope | no |
| 2023-11-convergence (GitHub directory) | Cvg | unmatched — not counted | — | listed in scope | no |
| 2023-11-convergence (GitHub directory) | CvgERC721TimeLockingUpgradeable | unmatched — not counted | — | listed in scope | no |
| 2023-11-convergence (GitHub directory) | CvgSDT | unmatched — not counted | — | listed in scope | no |
| 2023-11-convergence (GitHub directory) | CvgUtilities | unmatched — not counted | — | listed in scope | no |
| 2023-11-convergence (GitHub directory) | SdtUtilities | unmatched — not counted | — | listed in scope | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 49 |
| upstream | 0 |
| standard_library | 2 |
| needs_review | 33 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 5
- Inherited remapped matches: 0
- Address-book scope dispositions: 0 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 50 unmatched
- Matched-own operational status: 0 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=2, low=3
- Match method counts: n/a

Zero-match audit list:

- [21359] ipfs.io/ipfs/QmPyZZoeNJqt44GiFRoc8E9JctCyp5DYxkW254hhfkeUui
- [21360] audits.sherlock.xyz/contests/126
- [21361] 2023-11-convergence (GitHub directory)
- [21362] app.hats.finance/audit-competitions/convergence-finance-0x0e410e7af8e70fc5bffcdbfbdf1673ee7b3d0777/scope
- [21363] app.hats.finance/audit-competitions/convergence-convex-integration-0xb3df23e155b74ad2b93777f58980d6727e8b40bb/scope

Fork inheritance lineage and inherited audits are included when available.
