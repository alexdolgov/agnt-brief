# Agentic Audit Brief: Convergence Fi

## Project Overview

- Project: Convergence Fi (`convergence-fi`)
- Lifecycle: unknown
- Generated: 2026-07-03T21:05:42.101Z
- Pipeline run: v2-2026-07-02-1ba3fd
- Chains: ethereum
- Contract surface: 51 unique implementations (51 raw deployments)
- DeFi Llama TVL: $526,539.10
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Yield. Structurally: 34 project-authored contract(s) across 1 chain(s); 3 ERC20 tokens, 1 ERC721 NFT; upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 3 functional families. Contracts are linked by 67 cross-contract reference(s). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 51; live-surface contracts included: 51 (51 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 0/51 (0.0%)
- Deployed-live implementations: 51 of 51 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 0/51
- Verified + Unaudited implementations: 51
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 51
- Raw deployments: 51
- Audits discovered: 5 (5 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2023-11 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 2 stale, 3 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (51)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| BondCalculator | unknown | ethereum | n/a | [`0x8022d1...0c9b3d`](./contracts/ethereum-1/0x8022d15c94f304d838c824cdcc5cd5eac50c9b3d/) | ⚠️ Unaudited |
| BondDepository | unknown | ethereum | n/a | [`0x1e43b2...12597c`](./contracts/ethereum-1/0x1e43b2064d8f030d282c28e105d683a62f12597c/) | ⚠️ Unaudited |
| BondDepositoryV2 | unknown | ethereum | n/a | [`0x52f15a...b46194`](./contracts/ethereum-1/0x52f15a0b2d27309a1096a40ad72a07a9fab46194/) | ⚠️ Unaudited |
| BondLogo | unknown | ethereum | n/a | [`0x3916ba...cbeff5`](./contracts/ethereum-1/0x3916bad045ad47395ed8fdca14e762f25fcbeff5/) | ⚠️ Unaudited |
| BondPositionManager | unknown | ethereum | n/a | [`0x52d89e...81251a`](./contracts/ethereum-1/0x52d89e9e324f235b67044adb21eac3a98281251a/) | ⚠️ Unaudited |
| CloneFactory | unknown | ethereum | n/a | [`0xcb3ad8...a08537`](./contracts/ethereum-1/0xcb3ad849d3ea81bd579863cff96ca13c3ea08537/) | ⚠️ Unaudited |
| CloneFactoryV2 | unknown | ethereum | n/a | [`0x15a2d4...fa6ec5`](./contracts/ethereum-1/0x15a2d42421b62e92fe0abd22e2aa6cac8ffa6ec5/) | ⚠️ Unaudited |
| Cvg | unknown | ethereum | n/a | [`0x97effb...b77be8`](./contracts/ethereum-1/0x97effb790f2fbb701d88f89db4521348a2b77be8/) | ⚠️ Unaudited |
| Cvg-Finance - Gauge Controller | unknown | ethereum | n/a | [`0xdb7789...e8190d`](./contracts/ethereum-1/0xdb77895ea7fbec05264423910ef9c9144ee8190d/) | ⚠️ Unaudited |
| Cvg-Finance - veCVG | unknown | ethereum | n/a | [`0x5a35bc...d619d0`](./contracts/ethereum-1/0x5a35bca8e617526678a7c18fb9587417dbd619d0/) | ⚠️ Unaudited |
| CvgControlTower | unknown | ethereum | n/a | [`0xfd7ea9...296e3e`](./contracts/ethereum-1/0xfd7ea97e967586b5dd79d23eae5a53a47b296e3e/) | ⚠️ Unaudited |
| CvgControlTowerV2 | unknown | ethereum | n/a | [`0xb0afc8...aeaee7`](./contracts/ethereum-1/0xb0afc8363b8f36e0cce5d54251e20720ffaeaee7/) | ⚠️ Unaudited |
| CvgCVX | unknown | ethereum | n/a | [`0x2191df...31d082`](./contracts/ethereum-1/0x2191df768ad71140f9f3e96c1e4407a4aa31d082/) | ⚠️ Unaudited |
| CvgCvxStakingPositionService | unknown | ethereum | n/a | [`0x2c1d29...bab119`](./contracts/ethereum-1/0x2c1d293c50c6d1a4370ebb442a02c5956bbab119/) | ⚠️ Unaudited |
| CvgOracle | unknown | ethereum | n/a | [`0x451ea5...b6d16c`](./contracts/ethereum-1/0x451ea5a1754a2c60fceaef39518d9e096eb6d16c/) | ⚠️ Unaudited |
| CvgOracleUpgradeable | unknown | ethereum | n/a | [`0x955659...93b0c3`](./contracts/ethereum-1/0x955659bc4cc1d9fe2f00e422b524d1f24993b0c3/) | ⚠️ Unaudited |
| CvgRewards | unknown | ethereum | n/a | [`0xd615c6...0bc9d7`](./contracts/ethereum-1/0xd615c6db5c472b446e6a9a067465cfe58a0bc9d7/) | ⚠️ Unaudited |
| CvgRewardsV2 | unknown | ethereum | n/a | [`0x149bf8...6f5e7f`](./contracts/ethereum-1/0x149bf88ac48fbb2776d56f3e3e55b4e4056f5e7f/) | ⚠️ Unaudited |
| CvgRewardsV3 | unknown | ethereum | n/a | [`0xa044fd...579109`](./contracts/ethereum-1/0xa044fd2e8254ec5de93b15b8b27d005899579109/) | ⚠️ Unaudited |
| CvgSDT | unknown | ethereum | n/a | [`0x830614...6fcffc`](./contracts/ethereum-1/0x830614ae209ff9d8706d386fcdbc7a55206fcffc/) | ⚠️ Unaudited |
| CvgSdtBuffer | unknown | ethereum | n/a | [`0x4df0a3...2cc6ae`](./contracts/ethereum-1/0x4df0a305fd635ac53c3acf9f8da3c8acbd2cc6ae/) | ⚠️ Unaudited |
| CVX1 | unknown | ethereum | n/a | [`0x6c9815...078712`](./contracts/ethereum-1/0x6c9815826fdf8c7a45ccfed2064dbab33a078712/) | ⚠️ Unaudited |
| CvxAssetStakerBuffer | unknown | ethereum | n/a | [`0x600c91...0dcb92`](./contracts/ethereum-1/0x600c91ae1ff05340d47507aee0e7cf8dd10dcb92/) | ⚠️ Unaudited |
| CvxAssetStakingService | unknown | ethereum | n/a | [`0xc0d753...33e303`](./contracts/ethereum-1/0xc0d75399123aff2cd488293725290c68e533e303/) | ⚠️ Unaudited |
| CvxRewardDistributor | unknown | ethereum | n/a | [`0x47c69e...c71f19`](./contracts/ethereum-1/0x47c69e8c909ce626af73c955a5e34a20b7c71f19/) | ⚠️ Unaudited |
| CvxRewardDistributorV2 | unknown | ethereum | n/a | [`0x2b083b...3e7606`](./contracts/ethereum-1/0x2b083beaac310cc5e190b1d2507038ccb03e7606/) | ⚠️ Unaudited |
| LockingLogo | unknown | ethereum | n/a | [`0x05816a...1e29e9`](./contracts/ethereum-1/0x05816acfe129553a3c387389980bf7e4871e29e9/) | ⚠️ Unaudited |
| LockingPositionDelegate | unknown | ethereum | n/a | [`0xc375d5...5b2271`](./contracts/ethereum-1/0xc375d517775d74b9bb64a895bdb68c91c55b2271/) | ⚠️ Unaudited |
| LockingPositionManager | unknown | ethereum | n/a | [`0x0edb88...a0c0ce`](./contracts/ethereum-1/0x0edb88aa3aa665782121fa2509b382f414a0c0ce/) | ⚠️ Unaudited |
| LockingPositionService | unknown | ethereum | n/a | [`0x84728e...fad4d2`](./contracts/ethereum-1/0x84728ef58f70dd9ddb2d54869b5ad8d922fad4d2/) | ⚠️ Unaudited |
| LockingPositionServiceV2 | unknown | ethereum | n/a | [`0xbd1d17...8f5009`](./contracts/ethereum-1/0xbd1d174b448cfb0c1680a88b0101daf6ae8f5009/) | ⚠️ Unaudited |
| LockingPositionServiceV3 | unknown | ethereum | n/a | [`0xc809e0...cb1262`](./contracts/ethereum-1/0xc809e0729d7ea45b1ce6149baab79991e2cb1262/) | ⚠️ Unaudited |
| ProxyAdmin | unknown | ethereum | n/a | [`0xf16d93...f59e89`](./contracts/ethereum-1/0xf16d93acf337de38ee55dfb2f2a276883ff59e89/) | ⚠️ Unaudited |
| SdtBlackHole | unknown | ethereum | n/a | [`0x217771...deb77f`](./contracts/ethereum-1/0x21777106355ba506a31ff7984c0ae5c924deb77f/) | ⚠️ Unaudited |
| SdtBuffer | unknown | ethereum | n/a | [`0xdb22d4...cd5871`](./contracts/ethereum-1/0xdb22d48e43dd9cf08987b85e21f172c515cd5871/) | ⚠️ Unaudited |
| SdtBufferV2 | unknown | ethereum | n/a | [`0x31ab49...44ddcb`](./contracts/ethereum-1/0x31ab49528b37af1ee3ef9665cdc22e494a44ddcb/) | ⚠️ Unaudited |
| SdtFeeCollector | unknown | ethereum | n/a | [`0x15cbdf...0c42ae`](./contracts/ethereum-1/0x15cbdf343fa37cd555d8f8cdeaa3948c1f0c42ae/) | ⚠️ Unaudited |
| SdtRewardDistributor | unknown | ethereum | n/a | [`0x3554f7...1e4d66`](./contracts/ethereum-1/0x3554f7e8f87b4c60fba1e7ed9e3fdcee4d1e4d66/) | ⚠️ Unaudited |
| SdtRewardDistributorV2 | unknown | ethereum | n/a | [`0x2af5ae...c1a704`](./contracts/ethereum-1/0x2af5ae072e8594a04e14a410fb0d865767c1a704/) | ⚠️ Unaudited |
| SdtStakingLogo | unknown | ethereum | n/a | [`0x461754...fded02`](./contracts/ethereum-1/0x4617548f686be150c3c5c131926b5be287fded02/) | ⚠️ Unaudited |
| SdtStakingPositionManager | unknown | ethereum | n/a | [`0x731966...d0dc48`](./contracts/ethereum-1/0x7319662ad7d7ce2d1595073ea042b723f6d0dc48/) | ⚠️ Unaudited |
| SdtStakingPositionService | unknown | ethereum | n/a | [`0xdba753...dcf799`](./contracts/ethereum-1/0xdba75359b323cc61e02975760d89178f79dcf799/) | ⚠️ Unaudited |
| SdtStakingViewer | unknown | ethereum | n/a | [`0xa3a8cd...b05ff0`](./contracts/ethereum-1/0xa3a8cda21f50b6737385e46fc9495a9998b05ff0/) | ⚠️ Unaudited |
| SdtUtilities | unknown | ethereum | n/a | [`0x8d41fa...4b5474`](./contracts/ethereum-1/0x8d41faa4c774221aeddf324461864da3a14b5474/) | ⚠️ Unaudited |
| StkCvg | unknown | ethereum | n/a | [`0x4b3bd8...3960c8`](./contracts/ethereum-1/0x4b3bd8906083bde267a79e4131af7a6f723960c8/) | ⚠️ Unaudited |
| StratPostExploit | unknown | ethereum | n/a | [`0xf0c310...674d37`](./contracts/ethereum-1/0xf0c3107fa783b23ffb789953b868dc42f9674d37/) | ⚠️ Unaudited |
| UpgradeableBeacon | unknown | ethereum | n/a | [`0x5d6088...cd2c33`](./contracts/ethereum-1/0x5d6088d6303fce50c0c5c76c47257c5d97cd2c33/) | ⚠️ Unaudited |
| VestingCvg | unknown | ethereum | n/a | [`0xc929ba...2a0c30`](./contracts/ethereum-1/0xc929ba60ef82fe55de3bc848dd9453b3b12a0c30/) | ⚠️ Unaudited |
| YsCrvDistributor | unknown | ethereum | n/a | [`0x5d3ea3...020ccd`](./contracts/ethereum-1/0x5d3ea3460f3e0248633786203db29dc349020ccd/) | ⚠️ Unaudited |
| YsDistributor | unknown | ethereum | n/a | [`0xbc39db...422fb7`](./contracts/ethereum-1/0xbc39db78f6cd8562d2406474583613f0c2422fb7/) | ⚠️ Unaudited |
| YsStreamer | unknown | ethereum | n/a | [`0x2841f1...84ac5a`](./contracts/ethereum-1/0x2841f1b3b370f56a3798a258d317052b4284ac5a/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (0)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

- None

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [ipfs.io/ipfs/QmPyZZoeNJqt44GiFRoc8E9JctCyp5DYxkW254hhfkeUui](https://ipfs.io/ipfs/QmPyZZoeNJqt44GiFRoc8E9JctCyp5DYxkW254hhfkeUui) | Halborn | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [audits.sherlock.xyz/contests/126](https://audits.sherlock.xyz/contests/126) | Sherlock | Contest | 2023-11 | stale | Direct | n/a | 0 | n/a |
| [2023-11-convergence (GitHub directory)](https://github.com/sherlock-audit/2023-11-convergence) | Sherlock | Contest | 2023-11 | stale | Direct | n/a | 0 | n/a |
| [app.hats.finance/audit-competitions/convergence-finance-0x0e410e7af8e70fc5bffcdbfbdf1673ee7b3d0777/scope](https://app.hats.finance/audit-competitions/convergence-finance-0x0e410e7af8e70fc5bffcdbfbdf1673ee7b3d0777/scope) | Hats Finance | Contest | n/a | unknown | Direct | n/a | 0 | n/a |
| [app.hats.finance/audit-competitions/convergence-convex-integration-0xb3df23e155b74ad2b93777f58980d6727e8b40bb/scope](https://app.hats.finance/audit-competitions/convergence-convex-integration-0xb3df23e155b74ad2b93777f58980d6727e8b40bb/scope) | Hats Finance | Contest | n/a | unknown | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 0 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 51 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 5
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Zero-match audit list:

- [21359] ipfs.io/ipfs/QmPyZZoeNJqt44GiFRoc8E9JctCyp5DYxkW254hhfkeUui
- [21360] audits.sherlock.xyz/contests/126
- [21361] 2023-11-convergence (GitHub directory)
- [21362] app.hats.finance/audit-competitions/convergence-finance-0x0e410e7af8e70fc5bffcdbfbdf1673ee7b3d0777/scope
- [21363] app.hats.finance/audit-competitions/convergence-convex-integration-0xb3df23e155b74ad2b93777f58980d6727e8b40bb/scope

Fork inheritance lineage and inherited audits are included when available.
