# Agentic Audit Brief: CREAM Finance

## Project Overview

- Project: CREAM Finance (`cream-finance`)
- Website: [https://cream.finance/](https://cream.finance/)
- Lifecycle: unknown
- Generated: 2026-07-04T14:53:10.605Z
- Pipeline run: v2-pipeline-2026-07-01-3e33f2-f007
- Chains: arbitrum, bsc, ethereum, polygon
- Contract surface: 69 unique implementations (250 raw deployments)
- DeFi Llama TVL: $1,253,258.00
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Lending. Structurally: 76 project-authored contract(s) across 4 chain(s); 26 ERC20 tokens; upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 5 functional families. Its contracts share 31 common project-authored base contract(s) (ctokeninterface, ctokenstorage, cerc20interface). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 514; live-surface contracts included: 250 (223 live, 27 unknown).
- Excluded by liveness: 264 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 0/42 (0.0%)
- Deployed-live implementations: 42 of 69 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 0/42
- Verified + Unaudited implementations: 42
- Verified by bytecode match: 0
- Unverified implementations: 27
- Unique implementations: 69
- Raw deployments: 250
- Audits discovered: 2 (2 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2021-01 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 2 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (42)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| CCakeLPDelegate | unknown | bsc | n/a | 10 deployments: bsc [`0x04c61e...ee69fb`](./contracts/bsc-56/0x04c61ef58a6f1d6c572045a39a5434ab9dee69fb/); bsc `0x19b08f...477a41`; bsc `0x26a490...6a7110`; bsc `0x36cdf5...c065d9`; bsc `0x5ea2dd...9b2a0e`; bsc `0x5fa61a...0440b7`; bsc `0x7fd568...ab1c5f`; bsc `0x98b787...f872d0`; bsc `0x9972dd...f7ca85`; bsc `0xe39b9e...8b14e0` | ⚠️ Unaudited |
| CCollateralCapErc20 | unknown | ethereum | n/a | [`0x6a6fd0...2b930f`](./contracts/ethereum-1/0x6a6fd01c92f0390670cce399b532017cdb2b930f/) | ⚠️ Unaudited |
| CCollateralCapErc20Delegate | token | ethereum | n/a | 23 deployments: ethereum [`0x00e5c0...c84bf3`](./contracts/ethereum-1/0x00e5c0774a5f065c285068170b20393925c84bf3/); ethereum `0x12a9cc...93d12c`; ethereum `0x1b3e95...bd12d5`; ethereum `0x215f34...e264b1`; ethereum `0x226f37...46102f`; ethereum `0x30190a...f22340`; ethereum `0x3c9f53...080101`; ethereum `0x48759f...e4166a`; ethereum `0x672473...0bf40b`; ethereum `0x76eb2f...b2a37c`; ethereum `0x7736ff...732992`; ethereum `0x86bbd9...7548aa`; ethereum `0x8e5954...2ec68f`; ethereum `0x8fc8bf...92b431`; ethereum `0x9e8e20...69c1a9`; ethereum `0xa7c405...5c9806`; ethereum `0xa8caea...a73e4f`; ethereum `0xb8c5af...6109f9`; ethereum `0xca55f9...17fd54`; ethereum `0xe7bff2...03aa16`; ethereum `0xecab2c...a97ecf`; ethereum `0xfa3472...7621b9`; ethereum `0xfeeb92...7db59f` | ⚠️ Unaudited |
| CCollateralCapErc20Delegate | token | ethereum | n/a | [`0x41c84c...c6b393`](./contracts/ethereum-1/0x41c84c0e2ee0b740cf0d31f63f3b6f627dc6b393/) | ⚠️ Unaudited |
| CCollateralCapErc20Delegate | unknown | bsc | n/a | 12 deployments: ethereum `0x29791b...805305`; ethereum `0x6ada0e...fda83c`; ethereum `0x8dc840...fa0789`; ethereum `0xf330c1...8ac470`; ethereum `0xfd42f5...d4c304`; bsc [`0x09e470...2fe7ec`](./contracts/bsc-56/0x09e470fe983812df81fb8bf6f14fe9a7832fe7ec/); bsc `0x272613...d0ae50`; bsc `0xaac5b4...fb1cc5`; bsc `0xcec434...661730`; polygon `0x544109...1a0c97`; polygon `0x5b4058...9e32a1`; arbitrum `0x20d5d3...d6ad0a` | ⚠️ Unaudited |
| CCollateralCapErc20Delegate | token | bsc | n/a | 34 deployments: bsc [`0x0e9d90...a09baa`](./contracts/bsc-56/0x0e9d900c884964dc4b26db96ba113825b1a09baa/); bsc `0x11883c...8ce069`; bsc `0x19ee64...2ec907`; bsc `0x1af8c1...04fd16`; bsc `0x264bc4...87fcbc`; bsc `0x2bc4eb...289b7c`; bsc `0x2d3bfa...98aa06`; bsc `0x394293...dd9b22`; bsc `0x3b0be4...469d68`; bsc `0x4cb7f1...74fec4`; bsc `0x4ebdef...28a48f`; bsc `0x53d88d...a8515f`; bsc `0x738f38...92c43b`; bsc `0x7e545c...9ccac2`; bsc `0x7f746a...6de418`; bsc `0x816697...5a06cf`; bsc `0x81c15d...25fc55`; bsc `0x84902b...043beb`; bsc `0x8cc7e2...5e09b2`; bsc `0x9095e8...7a1b22`; bsc `0x9b53e7...7bcee5`; bsc `0xa8d75a...019c96`; bsc `0xaa46e2...66e20c`; bsc `0xb31f5d...3e2bcd`; bsc `0xbe7e1d...0fce6b`; bsc `0xbf9b95...e1ff82`; bsc `0xc17c8c...51488c`; bsc `0xcb87ce...6f90b1`; bsc `0xd83c88...f5f727`; bsc `0xdcf60e...86ed1c`; bsc `0xe69271...52de8e`; bsc `0xea466c...8fb0a5`; bsc `0xef6d45...4975de`; bsc `0xf77df3...bcf0b1` | ⚠️ Unaudited |
| CCollateralCapErc20Delegate | unknown | polygon | n/a | 16 deployments: polygon [`0x20d5d3...d6ad0a`](./contracts/polygon-137/0x20d5d319c2964ecb52e1b006a4c059b7f6d6ad0a/); polygon `0x2ee806...5cd7cc`; polygon `0x448683...46a271`; polygon `0x468a7b...9af5ab`; polygon `0x4ecedd...d6c00e`; polygon `0x5dc3a3...17072a`; polygon `0x73cf8c...ab6cbd`; polygon `0x7ea717...75d381`; polygon `0x7ef18d...27f716`; polygon `0x98182b...d0eb7a`; polygon `0x9b21eb...8cb971`; polygon `0xc29c28...b5a837`; polygon `0xd4409b...9b9ffa`; polygon `0xe82225...f07e78`; polygon `0xf976c9...bc5c8a`; polygon `0xfbbfa5...bd328d` | ⚠️ Unaudited |
| CCollateralCapErc20Delegate | unknown | arbitrum | n/a | 3 deployments: arbitrum [`0x5eb35d...cae9ce`](./contracts/arbitrum-42161/0x5eb35daf9ef97e9e8cc33c486bad884a62cae9ce/); arbitrum `0xc29c28...b5a837`; arbitrum `0xd5794e...ffbd86` | ⚠️ Unaudited |
| CCollateralCapErc20NoInterestDelegate | unknown | ethereum | n/a | [`0xca1041...41c157`](./contracts/ethereum-1/0xca1041f188ffecc499e8d4d0f08dd31b0f41c157/) | ⚠️ Unaudited |
| CErc20Delegate | unknown | ethereum | n/a | 2 deployments: ethereum [`0x8ec370...74c4db`](./contracts/ethereum-1/0x8ec370ea274748620f3f7aab026ccc31b474c4db/); polygon `0xd52869...e54696` | ⚠️ Unaudited |
| CEther | unknown | bsc | n/a | 2 deployments: ethereum `0xd06527...2860ee`; bsc [`0x1ffe17...90ff3a`](./contracts/bsc-56/0x1ffe17b99b439be0afc831239ddecda2a790ff3a/) | ⚠️ Unaudited |
| Comp | unknown | ethereum | n/a | 2 deployments: ethereum [`0x2ba592...7cb200`](./contracts/ethereum-1/0x2ba592f78db6436527729929aaf6c908497cb200/); bsc `0xd4cb32...f3e888` | ⚠️ Unaudited |
| Comptroller | unknown | ethereum | n/a | 2 deployments: ethereum [`0x3d5bc3...ae9258`](./contracts/ethereum-1/0x3d5bc3c8d13dcb8bf317092d84783c2697ae9258/); ethereum `0x7aa375...9f53ba` | ⚠️ Unaudited |
| Comptroller | unknown | ethereum | n/a | [`0x5ef4c9...1205b4`](./contracts/ethereum-1/0x5ef4c9384d9d7c39cbc12b62e82900042f1205b4/) | ⚠️ Unaudited |
| Comptroller | unknown | ethereum | n/a | [`0xab1c34...144cbb`](./contracts/ethereum-1/0xab1c342c7bf5ec5f02adea1c2270670bca144cbb/) | ⚠️ Unaudited |
| Comptroller | unknown | bsc | n/a | 39 deployments: ethereum `0x44a420...dff193`; ethereum `0x4b1479...e5a083`; ethereum `0x5d6202...2117c8`; ethereum `0x76b34a...063828`; ethereum `0x78962e...892963`; ethereum `0x793027...cb16bd`; ethereum `0x79757e...5a86c7`; ethereum `0x7d506f...ef9902`; ethereum `0x823498...239367`; ethereum `0x86c2bb...2e4fe9`; ethereum `0x8a2707...e4e088`; ethereum `0x9ac75f...7b64a7`; ethereum `0xa05e35...a7e88d`; ethereum `0xa7d4f8...34708b`; ethereum `0xb03614...64df27`; ethereum `0xb4cf50...38f957`; ethereum `0xc4ff0a...d0c4e9`; ethereum `0xc855b3...dd2dde`; ethereum `0xcbb626...e4111c`; ethereum `0xcdca61...8d5aa3`; ethereum `0xd96c52...76367d`; ethereum `0xe293a9...f76e63`; ethereum `0xe376ed...d11bb9`; ethereum `0xf1cd00...f494f4`; bsc [`0x0549a7...99d618`](./contracts/bsc-56/0x0549a7232759066282f4abe97a9d8da02f99d618/); bsc `0x105a2a...67560b`; bsc `0x127bae...272390`; bsc `0x3952a5...4155a0`; bsc `0x3b36ad...a208b2`; bsc `0x49a08f...988fb4`; bsc `0x643f20...44157d`; bsc `0x82cd95...f05125`; bsc `0xcaef46...4e20ae`; bsc `0xf851a6...406a81`; bsc `0xffd757...2cca85`; polygon `0x3ab0e4...7e01d2`; polygon `0x520b78...01db80`; polygon `0x9bf875...3b3b6e`; arbitrum `0xcc3e89...53f6fd` | ⚠️ Unaudited |
| Comptroller | unknown | bsc | n/a | 2 deployments: bsc [`0x2450fd...39a519`](./contracts/bsc-56/0x2450fd71da52b942f3a3dc67cf7221287339a519/); bsc `0x4db74b...82d4fd` | ⚠️ Unaudited |
| Comptroller | unknown | bsc | n/a | 2 deployments: bsc [`0x589de0...4cc0ba`](./contracts/bsc-56/0x589de0f0ccf905477646599bb3e5c622c84cc0ba/); bsc `0x8075f0...8ba6b9` | ⚠️ Unaudited |
| Comptroller | unknown | polygon | n/a | 2 deployments: polygon [`0x20ca53...114c24`](./contracts/polygon-137/0x20ca53e2395fa571798623f1cfbd11fe2c114c24/); polygon `0x8b9a81...e92ac2` | ⚠️ Unaudited |
| Comptroller | unknown | arbitrum | n/a | 2 deployments: arbitrum [`0xbadac5...9813ee`](./contracts/arbitrum-42161/0xbadac56c9aca307079e8b8fc699987aac89813ee/); arbitrum `0xd96877...26543f` | ⚠️ Unaudited |
| CreamEth2 | unknown | ethereum | n/a | 2 deployments: ethereum [`0x49d72e...9fdb64`](./contracts/ethereum-1/0x49d72e3973900a195a155a46441f0c08179fdb64/); ethereum `0xcbc106...ab89fd` | ⚠️ Unaudited |
| CreamLock | unknown | ethereum | n/a | 3 deployments: ethereum [`0x780f75...7a8b45`](./contracts/ethereum-1/0x780f75ad0b02afeb6039672e6a6cede7447a8b45/); ethereum `0xd5586c...e20a6c`; ethereum `0xe618c2...2f5945` | ⚠️ Unaudited |
| CreamY | unknown | ethereum | n/a | [`0x1d0914...bdc10c`](./contracts/ethereum-1/0x1d09144f3479bb805cb7c92346987420bcbdc10c/) | ⚠️ Unaudited |
| CTokenAdmin | unknown | bsc | n/a | 4 deployments: ethereum `0xa67b44...2a038d`; bsc [`0x0dfd3b...138ba7`](./contracts/bsc-56/0x0dfd3bca58f7e0639e87fba6f778c87bfa138ba7/); arbitrum `0x5b4058...9e32a1`; arbitrum `0xf976c9...bc5c8a` | ⚠️ Unaudited |
| CWrappedNativeDelegate | unknown | bsc | n/a | 4 deployments: bsc [`0x01e2b7...7ca922`](./contracts/bsc-56/0x01e2b783d076087f3e00a852ae0ae45ca77ca922/); polygon `0x1cc6cf...94e1c7`; polygon `0x543e7d...88506b`; arbitrum `0x468a7b...9af5ab` | ⚠️ Unaudited |
| CWrappedNativeDelegate | unknown | polygon | n/a | 2 deployments: polygon [`0x3fae5e...336ee8`](./contracts/polygon-137/0x3fae5e5722c51cdb5b0afd8c7082e8a6af336ee8/); polygon `0xd96877...26543f` | ⚠️ Unaudited |
| CWrappedNativeDelegate | unknown | arbitrum | n/a | 2 deployments: arbitrum [`0x544109...1a0c97`](./contracts/arbitrum-42161/0x5441090c0401ee256b09deb35679ad175d1a0c97/); arbitrum `0x8b9a81...e92ac2` | ⚠️ Unaudited |
| FlashloanLender | unknown | arbitrum | n/a | 4 deployments: bsc `0xb71328...414b5a`; polygon `0xb3c68d...3edf56`; arbitrum [`0x1cc6cf...94e1c7`](./contracts/arbitrum-42161/0x1cc6cf8455f7783980b1ee06ecd4ed9acd94e1c7/); arbitrum `0x4ecedd...d6c00e` | ⚠️ Unaudited |
| Maximillion | unknown | ethereum | n/a | 2 deployments: ethereum [`0x060917...e5aa2f`](./contracts/ethereum-1/0x06091717521c2002f2859c75f53987eaf1e5aa2f/); bsc `0x803bb4...9b6245` | ⚠️ Unaudited |
| Normalizer | unknown | ethereum | n/a | [`0x734279...c6d3e9`](./contracts/ethereum-1/0x734279a9059dbb72cd3401983ef7f40f2ac6d3e9/) | ⚠️ Unaudited |
| PriceOracle | operational_periphery | polygon | n/a | 6 deployments: ethereum `0x3abce8...525cf7`; ethereum `0x4250a6...576cd2`; ethereum `0x9a975f...659ad2`; bsc `0x541876...d14847`; bsc `0x78af64...141b4b`; polygon [`0x0a4acc...8bf2f5`](./contracts/polygon-137/0x0a4accd9d150ad4ddc7ea2e6151243ce668bf2f5/) | ⚠️ Unaudited |
| PriceOracleFUSDT | unknown | bsc | n/a | [`0x3b4bc1...e39caa`](./contracts/bsc-56/0x3b4bc12971290b9561b99b77f3bea8c5e9e39caa/) | ⚠️ Unaudited |
| PriceOracleProxy | unknown | ethereum | n/a | 15 deployments: ethereum [`0x1d8e38...61ae3c`](./contracts/ethereum-1/0x1d8e3881cc063e593673625bbb9e5191be61ae3c/); ethereum `0x3a4b89...eeafa1`; ethereum `0x4b7dba...e0188a`; ethereum `0x647a53...091488`; ethereum `0x653f72...823cae`; ethereum `0x6b96c4...8704cb`; ethereum `0x72dbf5...db74a5`; ethereum `0x88e79e...36370d`; ethereum `0x9a5135...b2fed0`; ethereum `0xc78cad...50da23`; ethereum `0xe4c1e5...284e97`; ethereum `0xecb0b5...dc1886`; ethereum `0xf74f97...b6cd94`; bsc `0xa82958...819477`; bsc `0xdce8c9...1b0ca4` | ⚠️ Unaudited |
| PriceOracleProxyBSC | unknown | bsc | n/a | 7 deployments: bsc [`0x64e1c4...356041`](./contracts/bsc-56/0x64e1c4fbba871b391333bcfce817a55aef356041/); bsc `0x6eedcf...51cd6a`; bsc `0x913b6e...2a3d7c`; bsc `0xa7ae01...8a1c7d`; bsc `0xab548f...48c408`; bsc `0xaf2b0a...5eced4`; bsc `0xc2e7fc...1177dd` | ⚠️ Unaudited |
| PriceOracleProxyIB | unknown | ethereum | n/a | [`0xde19f5...297266`](./contracts/ethereum-1/0xde19f5a7cf029275be9cec538e81aa298e297266/) | ⚠️ Unaudited |
| PriceOracleProxyUSD | unknown | arbitrum | n/a | 4 deployments: polygon `0x812c0b...db2190`; arbitrum [`0x062887...56b626`](./contracts/arbitrum-42161/0x06288754f31d100039b21e62a429e4b81e56b626/); arbitrum `0x73cf8c...ab6cbd`; arbitrum `0xe82225...f07e78` | ⚠️ Unaudited |
| PriceOracleV1 | operational_periphery | arbitrum | n/a | [`0x20ca53...114c24`](./contracts/arbitrum-42161/0x20ca53e2395fa571798623f1cfbd11fe2c114c24/) | ⚠️ Unaudited |
| StakingRewardsLock | unknown | ethereum | n/a | [`0x0b471a...85e150`](./contracts/ethereum-1/0x0b471a71c3f6d4aadc7eb20aab7d730ae385e150/) | ⚠️ Unaudited |
| StandardArbERC20 | token | arbitrum | n/a | [`0xf4d48c...4d7234`](./contracts/arbitrum-42161/0xf4d48ce3ee1ac3651998971541badbb9a14d7234/) | ⚠️ Unaudited |
| TetherToken | token | ethereum | n/a | [`0xc581b7...ede491`](./contracts/ethereum-1/0xc581b735a1688071a1746c968e0798d642ede491/) | ⚠️ Unaudited |
| Unitroller | unknown | polygon | n/a | [`0xbadac5...9813ee`](./contracts/polygon-137/0xbadac56c9aca307079e8b8fc699987aac89813ee/) | ⚠️ Unaudited |
| Vyper_contract | unknown | ethereum | n/a | [`0x398642...5c0043`](./contracts/ethereum-1/0x3986425b96f11972d31c78ff340908832c5c0043/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (27)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | ethereum | n/a | `0x1d919a...b9b858` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x24e45b...69ccd5` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x25bd5c...2c630e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x703390...e69112` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x867072...f40f94` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x9b7f98...9e56c5` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x9d7768...d2664d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xb424be...33e95f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xf7aecf...9adb1c` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x241292...4e8629` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x284bb6...47749b` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x32a237...42d28c` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x4fb9e4...c0f039` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x6af473...28822d` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x6de04a...dd3b0c` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x7ea00a...90ae70` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x84d6fe...807604` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xc977c6...0ea2bf` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xd44029...b60055` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xe630c7...21786e` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xe85d39...275afc` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x5eb35d...cae9ce` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x520b78...01db80` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x66e9c7...386fa6` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x812c0b...db2190` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xd52869...e54696` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xee0c0a...788328` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [CREAMSummary.pdf](https://github.com/trailofbits/publications/blob/master/reviews/CREAMSummary.pdf) | Trail of Bits | Audit | 2021-01 | stale | Direct | n/a | 0 | n/a |
| [trailofbits-CREAMSummary.pdf](https://github.com/CreamFi/compound-protocol/blob/master/audits/trailofbits-CREAMSummary.pdf) | Trail of Bits | Audit | 2021-01 | stale | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| bsc | [`0x04c61e...ee69fb`](./contracts/bsc-56/0x04c61ef58a6f1d6c572045a39a5434ab9dee69fb/) | CCakeLPDelegate | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x6a6fd0...2b930f`](./contracts/ethereum-1/0x6a6fd01c92f0390670cce399b532017cdb2b930f/) | CCollateralCapErc20 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x00e5c0...c84bf3`](./contracts/ethereum-1/0x00e5c0774a5f065c285068170b20393925c84bf3/) | CCollateralCapErc20Delegate | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x41c84c...c6b393`](./contracts/ethereum-1/0x41c84c0e2ee0b740cf0d31f63f3b6f627dc6b393/) | CCollateralCapErc20Delegate | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x09e470...2fe7ec`](./contracts/bsc-56/0x09e470fe983812df81fb8bf6f14fe9a7832fe7ec/) | CCollateralCapErc20Delegate | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x0e9d90...a09baa`](./contracts/bsc-56/0x0e9d900c884964dc4b26db96ba113825b1a09baa/) | CCollateralCapErc20Delegate | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x20d5d3...d6ad0a`](./contracts/polygon-137/0x20d5d319c2964ecb52e1b006a4c059b7f6d6ad0a/) | CCollateralCapErc20Delegate | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x5eb35d...cae9ce`](./contracts/arbitrum-42161/0x5eb35daf9ef97e9e8cc33c486bad884a62cae9ce/) | CCollateralCapErc20Delegate | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xca1041...41c157`](./contracts/ethereum-1/0xca1041f188ffecc499e8d4d0f08dd31b0f41c157/) | CCollateralCapErc20NoInterestDelegate | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x8ec370...74c4db`](./contracts/ethereum-1/0x8ec370ea274748620f3f7aab026ccc31b474c4db/) | CErc20Delegate | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x1ffe17...90ff3a`](./contracts/bsc-56/0x1ffe17b99b439be0afc831239ddecda2a790ff3a/) | CEther | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x2ba592...7cb200`](./contracts/ethereum-1/0x2ba592f78db6436527729929aaf6c908497cb200/) | Comp | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x3d5bc3...ae9258`](./contracts/ethereum-1/0x3d5bc3c8d13dcb8bf317092d84783c2697ae9258/) | Comptroller | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x5ef4c9...1205b4`](./contracts/ethereum-1/0x5ef4c9384d9d7c39cbc12b62e82900042f1205b4/) | Comptroller | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xab1c34...144cbb`](./contracts/ethereum-1/0xab1c342c7bf5ec5f02adea1c2270670bca144cbb/) | Comptroller | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x0549a7...99d618`](./contracts/bsc-56/0x0549a7232759066282f4abe97a9d8da02f99d618/) | Comptroller | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x2450fd...39a519`](./contracts/bsc-56/0x2450fd71da52b942f3a3dc67cf7221287339a519/) | Comptroller | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x589de0...4cc0ba`](./contracts/bsc-56/0x589de0f0ccf905477646599bb3e5c622c84cc0ba/) | Comptroller | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x20ca53...114c24`](./contracts/polygon-137/0x20ca53e2395fa571798623f1cfbd11fe2c114c24/) | Comptroller | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0xbadac5...9813ee`](./contracts/arbitrum-42161/0xbadac56c9aca307079e8b8fc699987aac89813ee/) | Comptroller | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x49d72e...9fdb64`](./contracts/ethereum-1/0x49d72e3973900a195a155a46441f0c08179fdb64/) | CreamEth2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x780f75...7a8b45`](./contracts/ethereum-1/0x780f75ad0b02afeb6039672e6a6cede7447a8b45/) | CreamLock | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1d0914...bdc10c`](./contracts/ethereum-1/0x1d09144f3479bb805cb7c92346987420bcbdc10c/) | CreamY | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x0dfd3b...138ba7`](./contracts/bsc-56/0x0dfd3bca58f7e0639e87fba6f778c87bfa138ba7/) | CTokenAdmin | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x01e2b7...7ca922`](./contracts/bsc-56/0x01e2b783d076087f3e00a852ae0ae45ca77ca922/) | CWrappedNativeDelegate | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x3fae5e...336ee8`](./contracts/polygon-137/0x3fae5e5722c51cdb5b0afd8c7082e8a6af336ee8/) | CWrappedNativeDelegate | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x544109...1a0c97`](./contracts/arbitrum-42161/0x5441090c0401ee256b09deb35679ad175d1a0c97/) | CWrappedNativeDelegate | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x1cc6cf...94e1c7`](./contracts/arbitrum-42161/0x1cc6cf8455f7783980b1ee06ecd4ed9acd94e1c7/) | FlashloanLender | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x060917...e5aa2f`](./contracts/ethereum-1/0x06091717521c2002f2859c75f53987eaf1e5aa2f/) | Maximillion | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x734279...c6d3e9`](./contracts/ethereum-1/0x734279a9059dbb72cd3401983ef7f40f2ac6d3e9/) | Normalizer | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x0a4acc...8bf2f5`](./contracts/polygon-137/0x0a4accd9d150ad4ddc7ea2e6151243ce668bf2f5/) | PriceOracle | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x3b4bc1...e39caa`](./contracts/bsc-56/0x3b4bc12971290b9561b99b77f3bea8c5e9e39caa/) | PriceOracleFUSDT | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1d8e38...61ae3c`](./contracts/ethereum-1/0x1d8e3881cc063e593673625bbb9e5191be61ae3c/) | PriceOracleProxy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x64e1c4...356041`](./contracts/bsc-56/0x64e1c4fbba871b391333bcfce817a55aef356041/) | PriceOracleProxyBSC | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xde19f5...297266`](./contracts/ethereum-1/0xde19f5a7cf029275be9cec538e81aa298e297266/) | PriceOracleProxyIB | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x062887...56b626`](./contracts/arbitrum-42161/0x06288754f31d100039b21e62a429e4b81e56b626/) | PriceOracleProxyUSD | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x20ca53...114c24`](./contracts/arbitrum-42161/0x20ca53e2395fa571798623f1cfbd11fe2c114c24/) | PriceOracleV1 | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0b471a...85e150`](./contracts/ethereum-1/0x0b471a71c3f6d4aadc7eb20aab7d730ae385e150/) | StakingRewardsLock | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0xf4d48c...4d7234`](./contracts/arbitrum-42161/0xf4d48ce3ee1ac3651998971541badbb9a14d7234/) | StandardArbERC20 | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xc581b7...ede491`](./contracts/ethereum-1/0xc581b735a1688071a1746c968e0798d642ede491/) | TetherToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0xbadac5...9813ee`](./contracts/polygon-137/0xbadac56c9aca307079e8b8fc699987aac89813ee/) | Unitroller | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x398642...5c0043`](./contracts/ethereum-1/0x3986425b96f11972d31c78ff340908832c5c0043/) | Vyper_contract | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 42 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 27 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 2
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Zero-match audit list:

- [2998] CREAMSummary.pdf
- [2999] trailofbits-CREAMSummary.pdf

Fork inheritance lineage and inherited audits are included when available.
