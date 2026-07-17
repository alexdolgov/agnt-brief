# Agentic Audit Brief: Adamant Finance

## Project Overview

- Project: Adamant Finance (`adamant-finance`)
- Lifecycle: unknown
- Generated: 2026-07-04T14:52:58.026Z
- Pipeline run: v2-2026-07-03-89943a
- Chains: polygon
- Contract surface: 73 unique implementations (73 raw deployments)
- DeFi Llama TVL: $201,753.38
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Yield. Structurally: 73 project-authored contract(s) across 1 chain(s); 4 ERC20 tokens; built on openzeppelin.

### Architecture

The protocol comprises 2 functional families. Its contracts share 8 common project-authored base contract(s) (basestrategy, jarbase, basestrategyquickpair). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 73; live-surface contracts included: 73 (73 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 0/73 (0.0%)
- Deployed-live implementations: 73 of 73 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 0/73
- Verified + Unaudited implementations: 73
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 73
- Raw deployments: 73
- Audits discovered: 1 (1 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2022-03 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 1 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (73)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| Addy | unknown | polygon | n/a | [`0x4a7ae6df0b068d5b934f433358e6deb81263745e`](./contracts/polygon-137/0x4a7ae6df0b068d5b934f433358e6deb81263745e/) | ⚠️ Unaudited |
| AddyEthPool | unknown | polygon | n/a | [`0xa4c1763aef101958635a0ed1e0a744f4bf630b73`](./contracts/polygon-137/0xa4c1763aef101958635a0ed1e0a744f4bf630b73/) | ⚠️ Unaudited |
| AddyExchange | unknown | polygon | n/a | [`0x69578997ba7c5a5a46fb6240ac7ca4a951f2ac63`](./contracts/polygon-137/0x69578997ba7c5a5a46fb6240ac7ca4a951f2ac63/) | ⚠️ Unaudited |
| AddyStakingRewards | unknown | polygon | n/a | [`0xf7661ee874ec599c2b450e0df5c40ce823fef9d3`](./contracts/polygon-137/0xf7661ee874ec599c2b450e0df5c40ce823fef9d3/) | ⚠️ Unaudited |
| ApeStrategy | unknown | polygon | n/a | [`0x5ae3d31de95b8058ac0248c17fb5eb35a027bee4`](./contracts/polygon-137/0x5ae3d31de95b8058ac0248c17fb5eb35a027bee4/) | ⚠️ Unaudited |
| ApeStrategyDeployer | unknown | polygon | n/a | [`0x04261ef6d660794fe3543f6df633265236bb91b0`](./contracts/polygon-137/0x04261ef6d660794fe3543f6df633265236bb91b0/) | ⚠️ Unaudited |
| AugurDividendsV1 | unknown | polygon | n/a | [`0xb072954e64f094534531a577ff311ef3c15420ce`](./contracts/polygon-137/0xb072954e64f094534531a577ff311ef3c15420ce/) | ⚠️ Unaudited |
| AugurySingleStakeStrategy | unknown | polygon | n/a | [`0x47e5ecbbfebff5af355d3a66f5374e3bd609d9e4`](./contracts/polygon-137/0x47e5ecbbfebff5af355d3a66f5374e3bd609d9e4/) | ⚠️ Unaudited |
| AuguryStrategy | unknown | polygon | n/a | [`0x3c61f005881a1d7c6ebda77b36458da39b42f443`](./contracts/polygon-137/0x3c61f005881a1d7c6ebda77b36458da39b42f443/) | ⚠️ Unaudited |
| BoostHandler | unknown | polygon | n/a | [`0x35de787e6b9fb7984e97f55fd951e471a7761044`](./contracts/polygon-137/0x35de787e6b9fb7984e97f55fd951e471a7761044/) | ⚠️ Unaudited |
| BoostHandlerProxy | unknown | polygon | n/a | [`0x98fada20fce3cc7003f560dc659a4c6dd6b84657`](./contracts/polygon-137/0x98fada20fce3cc7003f560dc659a4c6dd6b84657/) | ⚠️ Unaudited |
| Converter | unknown | polygon | n/a | [`0xf53b30b5e15c0afb1d1565a10d010810e48ff32b`](./contracts/polygon-137/0xf53b30b5e15c0afb1d1565a10d010810e48ff32b/) | ⚠️ Unaudited |
| dQuickStrategyDeployer | unknown | polygon | n/a | [`0x1a74581efbe85ceba05823e64c2a645341c1545e`](./contracts/polygon-137/0x1a74581efbe85ceba05823e64c2a645341c1545e/) | ⚠️ Unaudited |
| ElkStrategyDeployer | unknown | polygon | n/a | [`0x116c5a423fc20541ca24d8b391d2a9bd763854a3`](./contracts/polygon-137/0x116c5a423fc20541ca24d8b391d2a9bd763854a3/) | ⚠️ Unaudited |
| ERCFund | unknown | polygon | n/a | [`0x25eb1113dd5759a40cd874d4fe8e6842ea6a88be`](./contracts/polygon-137/0x25eb1113dd5759a40cd874d4fe8e6842ea6a88be/) | ⚠️ Unaudited |
| ERCFund2 | unknown | polygon | n/a | [`0x43c085b5aba4e83a7dd1a478b7458d1d472ff6b4`](./contracts/polygon-137/0x43c085b5aba4e83a7dd1a478b7458d1d472ff6b4/) | ⚠️ Unaudited |
| FeeDistStrategyLocked | unknown | polygon | n/a | [`0x914417902e651434cb660b6c6f18c9529c3a7b2d`](./contracts/polygon-137/0x914417902e651434cb660b6c6f18c9529c3a7b2d/) | ⚠️ Unaudited |
| GenericJar | unknown | polygon | n/a | [`0x0297b9ad2ad90ea328b6cf28bc5c09c37656cb13`](./contracts/polygon-137/0x0297b9ad2ad90ea328b6cf28bc5c09c37656cb13/) | ⚠️ Unaudited |
| GenericVault | unknown | polygon | n/a | [`0x00e33126c69e9e7560f77c20dc72684958cfae57`](./contracts/polygon-137/0x00e33126c69e9e7560f77c20dc72684958cfae57/) | ⚠️ Unaudited |
| GravityStrategy | unknown | polygon | n/a | [`0xe17b0088dba7671d142ff44649a4ee3a94e7c796`](./contracts/polygon-137/0xe17b0088dba7671d142ff44649a4ee3a94e7c796/) | ⚠️ Unaudited |
| IceUsdcStrategy | unknown | polygon | n/a | [`0xfce59c1f914c57548d80ba95aa487ac9d851ae91`](./contracts/polygon-137/0xfce59c1f914c57548d80ba95aa487ac9d851ae91/) | ⚠️ Unaudited |
| IronStrategyDeployer | unknown | polygon | n/a | [`0x06e1ca0cfdb8504e0fe0a8bd0d2c2db59d295d64`](./contracts/polygon-137/0x06e1ca0cfdb8504e0fe0a8bd0d2c2db59d295d64/) | ⚠️ Unaudited |
| IronSwapStrategy | unknown | polygon | n/a | [`0xa6a92b1f1c7d038d81d0e66a1aeace924f5790c0`](./contracts/polygon-137/0xa6a92b1f1c7d038d81d0e66a1aeace924f5790c0/) | ⚠️ Unaudited |
| LockedAddyVault | unknown | polygon | n/a | [`0x322cb48dd00981eec62cc6d3c99622006e91131c`](./contracts/polygon-137/0x322cb48dd00981eec62cc6d3c99622006e91131c/) | ⚠️ Unaudited |
| MaltStrategy | unknown | polygon | n/a | [`0x6fa09a82ee9409459951cacac7d64f91638b71ba`](./contracts/polygon-137/0x6fa09a82ee9409459951cacac7d64f91638b71ba/) | ⚠️ Unaudited |
| MasterChefReferralStrategy | unknown | polygon | n/a | [`0x7b22fffb42315e32bdc9f9968048d1f2c60013ce`](./contracts/polygon-137/0x7b22fffb42315e32bdc9f9968048d1f2c60013ce/) | ⚠️ Unaudited |
| MasterChefStrategy | unknown | polygon | n/a | [`0x0cf1a89d782d7b63746231516fc9db8e8c9c5c59`](./contracts/polygon-137/0x0cf1a89d782d7b63746231516fc9db8e8c9c5c59/) | ⚠️ Unaudited |
| MeshStakingRewards | unknown | polygon | n/a | [`0xbe6aa0af32984fe3f65a73071decc09ab607e310`](./contracts/polygon-137/0xbe6aa0af32984fe3f65a73071decc09ab607e310/) | ⚠️ Unaudited |
| MigratableJar | unknown | polygon | n/a | [`0x1e4db0ea4e7ae72722d28583998faf055c404239`](./contracts/polygon-137/0x1e4db0ea4e7ae72722d28583998faf055c404239/) | ⚠️ Unaudited |
| Minter | unknown | polygon | n/a | [`0xaae758a2db4204e1334236acd6e6e73035704921`](./contracts/polygon-137/0xaae758a2db4204e1334236acd6e6e73035704921/) | ⚠️ Unaudited |
| MultiFeeDistribution | unknown | polygon | n/a | [`0x2ac4569854e62f78f9c3ddf98f9f41961089935c`](./contracts/polygon-137/0x2ac4569854e62f78f9c3ddf98f9f41961089935c/) | ⚠️ Unaudited |
| MultiSigWallet | unknown | polygon | n/a | [`0xb0732cf1e3924f51f621b7479b793b8613e6e8b6`](./contracts/polygon-137/0xb0732cf1e3924f51f621b7479b793b8613e6e8b6/) | ⚠️ Unaudited |
| PolyPupStrategyDeployer | unknown | polygon | n/a | [`0xf3ec226e32467ab5a1d4671045e2fc6d012ae8ff`](./contracts/polygon-137/0xf3ec226e32467ab5a1d4671045e2fc6d012ae8ff/) | ⚠️ Unaudited |
| PolyYeldStrategyDeployer | unknown | polygon | n/a | [`0x1f21327e7a59ba85140c0e1b538d706759f023bf`](./contracts/polygon-137/0x1f21327e7a59ba85140c0e1b538d706759f023bf/) | ⚠️ Unaudited |
| PolyZapStrategyDeployer | unknown | polygon | n/a | [`0x50a13221211cf689fdc513fb4a039c1f33c86370`](./contracts/polygon-137/0x50a13221211cf689fdc513fb4a039c1f33c86370/) | ⚠️ Unaudited |
| Presale | unknown | polygon | n/a | [`0x541963761bcbcb7c60281fe52ca2d914eb88beea`](./contracts/polygon-137/0x541963761bcbcb7c60281fe52ca2d914eb88beea/) | ⚠️ Unaudited |
| PresaleStorage | unknown | polygon | n/a | [`0x71cd6dd59ac7f9928ce62a7f94fa2bb36f8645a2`](./contracts/polygon-137/0x71cd6dd59ac7f9928ce62a7f94fa2bb36f8645a2/) | ⚠️ Unaudited |
| PriceCalculator | unknown | polygon | n/a | [`0x05c71c9c71a4d8ff1a4af55422d7f2fa91fcb9e7`](./contracts/polygon-137/0x05c71c9c71a4d8ff1a4af55422d7f2fa91fcb9e7/) | ⚠️ Unaudited |
| Proposal | unknown | polygon | n/a | [`0x5602de59fc5f635cc22fac460fd5b345bf3d1cbc`](./contracts/polygon-137/0x5602de59fc5f635cc22fac460fd5b345bf3d1cbc/) | ⚠️ Unaudited |
| ProxyMinter | unknown | polygon | n/a | [`0x041fc90f2d124185506d7e6aed0b150e94224aaf`](./contracts/polygon-137/0x041fc90f2d124185506d7e6aed0b150e94224aaf/) | ⚠️ Unaudited |
| QiDaoStrategyDeployer | unknown | polygon | n/a | [`0x00b576f9a2cc3100cc28a8eeebd198c152d628f9`](./contracts/polygon-137/0x00b576f9a2cc3100cc28a8eeebd198c152d628f9/) | ⚠️ Unaudited |
| QuickStrategyDeployer | unknown | polygon | n/a | [`0x01f4ae57168a5b7da2c57eddbfb8000811174118`](./contracts/polygon-137/0x01f4ae57168a5b7da2c57eddbfb8000811174118/) | ⚠️ Unaudited |
| SimpleLocker | unknown | polygon | n/a | [`0xf4c1dfe482570bba9c8b941b162a7509b9c54958`](./contracts/polygon-137/0xf4c1dfe482570bba9c8b941b162a7509b9c54958/) | ⚠️ Unaudited |
| StrategyDarkBuildRebasingUSD | unknown | polygon | n/a | [`0x3d32f459c52b009d615e5251494bac3170422433`](./contracts/polygon-137/0x3d32f459c52b009d615e5251494bac3170422433/) | ⚠️ Unaudited |
| StrategyDeployer | unknown | polygon | n/a | [`0x0ac497bed4d5af4e95d7ece0fb0144e23b8086ad`](./contracts/polygon-137/0x0ac497bed4d5af4e95d7ece0fb0144e23b8086ad/) | ⚠️ Unaudited |
| StrategyDeployerCometh | unknown | polygon | n/a | [`0x3709ff1da9d1f485576a5ebd3191b3eca01eafea`](./contracts/polygon-137/0x3709ff1da9d1f485576a5ebd3191b3eca01eafea/) | ⚠️ Unaudited |
| StrategyDeployerComethPair | unknown | polygon | n/a | [`0x0f663d773a3df820086b3e175ea222bbcf961a10`](./contracts/polygon-137/0x0f663d773a3df820086b3e175ea222bbcf961a10/) | ⚠️ Unaudited |
| StrategyDfynDual | unknown | polygon | n/a | [`0xa1d32abea1eb7c62b4075d8b6f5adbc3f3b48c32`](./contracts/polygon-137/0xa1d32abea1eb7c62b4075d8b6f5adbc3f3b48c32/) | ⚠️ Unaudited |
| StrategyDualRewardsNonReentrant | unknown | polygon | n/a | [`0x85ccd984c566bda5c69f80ba5e29a7f5d3fd30b2`](./contracts/polygon-137/0x85ccd984c566bda5c69f80ba5e29a7f5d3fd30b2/) | ⚠️ Unaudited |
| StrategyElkPair | unknown | polygon | n/a | [`0xafd9338c49a4074e32cc8e77357473c917907234`](./contracts/polygon-137/0xafd9338c49a4074e32cc8e77357473c917907234/) | ⚠️ Unaudited |
| StrategyPolyquityPUSD | unknown | polygon | n/a | [`0x01338e72681e4bc8df00f21451439f10caffd828`](./contracts/polygon-137/0x01338e72681e4bc8df00f21451439f10caffd828/) | ⚠️ Unaudited |
| StrategyPolyquityRewardPair | unknown | polygon | n/a | [`0x8970a9df4ceb7b70ee016d8acdf3d58cd66ad7ff`](./contracts/polygon-137/0x8970a9df4ceb7b70ee016d8acdf3d58cd66ad7ff/) | ⚠️ Unaudited |
| StrategyPolyquityWmatic | unknown | polygon | n/a | [`0xf028595e4421629fa0915a47a0baa0ab5fd304f7`](./contracts/polygon-137/0xf028595e4421629fa0915a47a0baa0ab5fd304f7/) | ⚠️ Unaudited |
| StrategyQuickMatic | unknown | polygon | n/a | [`0x2689c7a5e0263e1d7b1c4aff6e2e1371636ff50c`](./contracts/polygon-137/0x2689c7a5e0263e1d7b1c4aff6e2e1371636ff50c/) | ⚠️ Unaudited |
| StrategyQuickPair | unknown | polygon | n/a | [`0xfe3c01247b6c1718d7ea4c8252369635f42a2b73`](./contracts/polygon-137/0xfe3c01247b6c1718d7ea4c8252369635f42a2b73/) | ⚠️ Unaudited |
| StrategyQuickUSDC | unknown | polygon | n/a | [`0x05808850285807fe79b4b430511afe38c45f0dc0`](./contracts/polygon-137/0x05808850285807fe79b4b430511afe38c45f0dc0/) | ⚠️ Unaudited |
| StrategySingleAssetWhale | unknown | polygon | n/a | [`0x28f67424d7bdbdc11a830d754638276a90bd783e`](./contracts/polygon-137/0x28f67424d7bdbdc11a830d754638276a90bd783e/) | ⚠️ Unaudited |
| StrategyUSDCmaUSDC | unknown | polygon | n/a | [`0x269509bc3c5c24e56de9ffe5136950d7ceac0b97`](./contracts/polygon-137/0x269509bc3c5c24e56de9ffe5136950d7ceac0b97/) | ⚠️ Unaudited |
| StrategyWaultEthPair | unknown | polygon | n/a | [`0x5f475da71cc95fe50d9674f7b068988e9193db04`](./contracts/polygon-137/0x5f475da71cc95fe50d9674f7b068988e9193db04/) | ⚠️ Unaudited |
| StrategyWaultOtherPair | unknown | polygon | n/a | [`0x9d5ba300cdac9fc22c099ae2154bd53dcd08f40a`](./contracts/polygon-137/0x9d5ba300cdac9fc22c099ae2154bd53dcd08f40a/) | ⚠️ Unaudited |
| StrategyWaultWexPair | unknown | polygon | n/a | [`0xa3a03922be28d0f0cd49fd2c1fed417cf07005ee`](./contracts/polygon-137/0xa3a03922be28d0f0cd49fd2c1fed417cf07005ee/) | ⚠️ Unaudited |
| StrategyWaultWexSingle | unknown | polygon | n/a | [`0x69f98627b373b4ae3aa3c216a18b476a2984404c`](./contracts/polygon-137/0x69f98627b373b4ae3aa3c216a18b476a2984404c/) | ⚠️ Unaudited |
| StrategyWhale | unknown | polygon | n/a | [`0x44ae845cd2cba0756fbaef1f96daece3e55da4dd`](./contracts/polygon-137/0x44ae845cd2cba0756fbaef1f96daece3e55da4dd/) | ⚠️ Unaudited |
| Timelock | unknown | polygon | n/a | [`0x0585479ff586a9d2329e33bdc68c0ce3cdddf567`](./contracts/polygon-137/0x0585479ff586a9d2329e33bdc68c0ce3cdddf567/) | ⚠️ Unaudited |
| TitanIronStrategyDeployer | unknown | polygon | n/a | [`0xa1e1e47c4a4e968f9ebf475abfbabd6cc1e15dd2`](./contracts/polygon-137/0xa1e1e47c4a4e968f9ebf475abfbabd6cc1e15dd2/) | ⚠️ Unaudited |
| TitanSingleStrategyDeployer | unknown | polygon | n/a | [`0x0ed0e61aa16d2feb8f95ee3fcbe4c5066dcbe35b`](./contracts/polygon-137/0x0ed0e61aa16d2feb8f95ee3fcbe4c5066dcbe35b/) | ⚠️ Unaudited |
| TokenLocker | unknown | polygon | n/a | [`0x341c6003d7e7d08aaf9580c0f1ce799fecd4b8ac`](./contracts/polygon-137/0x341c6003d7e7d08aaf9580c0f1ce799fecd4b8ac/) | ⚠️ Unaudited |
| USDCmaUSDCJar | unknown | polygon | n/a | [`0x413cb0eb0a4d3a6812798a7204d89b543e4528d6`](./contracts/polygon-137/0x413cb0eb0a4d3a6812798a7204d89b543e4528d6/) | ⚠️ Unaudited |
| VaultInfo | unknown | polygon | n/a | [`0x9902ca940fd5ba9bec64877fbc86c79002b06623`](./contracts/polygon-137/0x9902ca940fd5ba9bec64877fbc86c79002b06623/) | ⚠️ Unaudited |
| WaultEthStrategyDeployer | unknown | polygon | n/a | [`0x9b88d2b433e56a6700679a1a0521b466214c84d8`](./contracts/polygon-137/0x9b88d2b433e56a6700679a1a0521b466214c84d8/) | ⚠️ Unaudited |
| WaultOtherStrategyDeployer | unknown | polygon | n/a | [`0x1aa2249ee4090fb2bea49efcebfd9beee8b977e7`](./contracts/polygon-137/0x1aa2249ee4090fb2bea49efcebfd9beee8b977e7/) | ⚠️ Unaudited |
| WaultWexStrategyDeployer | unknown | polygon | n/a | [`0x8384d60a2795b015c72aa359f6bf61af457e02fe`](./contracts/polygon-137/0x8384d60a2795b015c72aa359f6bf61af457e02fe/) | ⚠️ Unaudited |
| WhaleStrategyDeployer | unknown | polygon | n/a | [`0x28c798a4b06e48d672db1065a80be022da458522`](./contracts/polygon-137/0x28c798a4b06e48d672db1065a80be022da458522/) | ⚠️ Unaudited |

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
| [<>](https://sourcehat.com/audits/AdamantFinance) | SourceHat | Audit | 2022-03 | stale | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| polygon | [`0x4a7ae6df0b068d5b934f433358e6deb81263745e`](./contracts/polygon-137/0x4a7ae6df0b068d5b934f433358e6deb81263745e/) | Addy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0xa4c1763aef101958635a0ed1e0a744f4bf630b73`](./contracts/polygon-137/0xa4c1763aef101958635a0ed1e0a744f4bf630b73/) | AddyEthPool | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x69578997ba7c5a5a46fb6240ac7ca4a951f2ac63`](./contracts/polygon-137/0x69578997ba7c5a5a46fb6240ac7ca4a951f2ac63/) | AddyExchange | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0xf7661ee874ec599c2b450e0df5c40ce823fef9d3`](./contracts/polygon-137/0xf7661ee874ec599c2b450e0df5c40ce823fef9d3/) | AddyStakingRewards | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x5ae3d31de95b8058ac0248c17fb5eb35a027bee4`](./contracts/polygon-137/0x5ae3d31de95b8058ac0248c17fb5eb35a027bee4/) | ApeStrategy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x04261ef6d660794fe3543f6df633265236bb91b0`](./contracts/polygon-137/0x04261ef6d660794fe3543f6df633265236bb91b0/) | ApeStrategyDeployer | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0xb072954e64f094534531a577ff311ef3c15420ce`](./contracts/polygon-137/0xb072954e64f094534531a577ff311ef3c15420ce/) | AugurDividendsV1 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x47e5ecbbfebff5af355d3a66f5374e3bd609d9e4`](./contracts/polygon-137/0x47e5ecbbfebff5af355d3a66f5374e3bd609d9e4/) | AugurySingleStakeStrategy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x3c61f005881a1d7c6ebda77b36458da39b42f443`](./contracts/polygon-137/0x3c61f005881a1d7c6ebda77b36458da39b42f443/) | AuguryStrategy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x35de787e6b9fb7984e97f55fd951e471a7761044`](./contracts/polygon-137/0x35de787e6b9fb7984e97f55fd951e471a7761044/) | BoostHandler | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x98fada20fce3cc7003f560dc659a4c6dd6b84657`](./contracts/polygon-137/0x98fada20fce3cc7003f560dc659a4c6dd6b84657/) | BoostHandlerProxy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0xf53b30b5e15c0afb1d1565a10d010810e48ff32b`](./contracts/polygon-137/0xf53b30b5e15c0afb1d1565a10d010810e48ff32b/) | Converter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x1a74581efbe85ceba05823e64c2a645341c1545e`](./contracts/polygon-137/0x1a74581efbe85ceba05823e64c2a645341c1545e/) | dQuickStrategyDeployer | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x116c5a423fc20541ca24d8b391d2a9bd763854a3`](./contracts/polygon-137/0x116c5a423fc20541ca24d8b391d2a9bd763854a3/) | ElkStrategyDeployer | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x25eb1113dd5759a40cd874d4fe8e6842ea6a88be`](./contracts/polygon-137/0x25eb1113dd5759a40cd874d4fe8e6842ea6a88be/) | ERCFund | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x43c085b5aba4e83a7dd1a478b7458d1d472ff6b4`](./contracts/polygon-137/0x43c085b5aba4e83a7dd1a478b7458d1d472ff6b4/) | ERCFund2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x914417902e651434cb660b6c6f18c9529c3a7b2d`](./contracts/polygon-137/0x914417902e651434cb660b6c6f18c9529c3a7b2d/) | FeeDistStrategyLocked | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x0297b9ad2ad90ea328b6cf28bc5c09c37656cb13`](./contracts/polygon-137/0x0297b9ad2ad90ea328b6cf28bc5c09c37656cb13/) | GenericJar | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x00e33126c69e9e7560f77c20dc72684958cfae57`](./contracts/polygon-137/0x00e33126c69e9e7560f77c20dc72684958cfae57/) | GenericVault | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0xe17b0088dba7671d142ff44649a4ee3a94e7c796`](./contracts/polygon-137/0xe17b0088dba7671d142ff44649a4ee3a94e7c796/) | GravityStrategy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0xfce59c1f914c57548d80ba95aa487ac9d851ae91`](./contracts/polygon-137/0xfce59c1f914c57548d80ba95aa487ac9d851ae91/) | IceUsdcStrategy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x06e1ca0cfdb8504e0fe0a8bd0d2c2db59d295d64`](./contracts/polygon-137/0x06e1ca0cfdb8504e0fe0a8bd0d2c2db59d295d64/) | IronStrategyDeployer | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0xa6a92b1f1c7d038d81d0e66a1aeace924f5790c0`](./contracts/polygon-137/0xa6a92b1f1c7d038d81d0e66a1aeace924f5790c0/) | IronSwapStrategy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x322cb48dd00981eec62cc6d3c99622006e91131c`](./contracts/polygon-137/0x322cb48dd00981eec62cc6d3c99622006e91131c/) | LockedAddyVault | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x6fa09a82ee9409459951cacac7d64f91638b71ba`](./contracts/polygon-137/0x6fa09a82ee9409459951cacac7d64f91638b71ba/) | MaltStrategy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x7b22fffb42315e32bdc9f9968048d1f2c60013ce`](./contracts/polygon-137/0x7b22fffb42315e32bdc9f9968048d1f2c60013ce/) | MasterChefReferralStrategy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x0cf1a89d782d7b63746231516fc9db8e8c9c5c59`](./contracts/polygon-137/0x0cf1a89d782d7b63746231516fc9db8e8c9c5c59/) | MasterChefStrategy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0xbe6aa0af32984fe3f65a73071decc09ab607e310`](./contracts/polygon-137/0xbe6aa0af32984fe3f65a73071decc09ab607e310/) | MeshStakingRewards | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x1e4db0ea4e7ae72722d28583998faf055c404239`](./contracts/polygon-137/0x1e4db0ea4e7ae72722d28583998faf055c404239/) | MigratableJar | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0xaae758a2db4204e1334236acd6e6e73035704921`](./contracts/polygon-137/0xaae758a2db4204e1334236acd6e6e73035704921/) | Minter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x2ac4569854e62f78f9c3ddf98f9f41961089935c`](./contracts/polygon-137/0x2ac4569854e62f78f9c3ddf98f9f41961089935c/) | MultiFeeDistribution | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0xb0732cf1e3924f51f621b7479b793b8613e6e8b6`](./contracts/polygon-137/0xb0732cf1e3924f51f621b7479b793b8613e6e8b6/) | MultiSigWallet | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0xf3ec226e32467ab5a1d4671045e2fc6d012ae8ff`](./contracts/polygon-137/0xf3ec226e32467ab5a1d4671045e2fc6d012ae8ff/) | PolyPupStrategyDeployer | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x1f21327e7a59ba85140c0e1b538d706759f023bf`](./contracts/polygon-137/0x1f21327e7a59ba85140c0e1b538d706759f023bf/) | PolyYeldStrategyDeployer | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x50a13221211cf689fdc513fb4a039c1f33c86370`](./contracts/polygon-137/0x50a13221211cf689fdc513fb4a039c1f33c86370/) | PolyZapStrategyDeployer | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x541963761bcbcb7c60281fe52ca2d914eb88beea`](./contracts/polygon-137/0x541963761bcbcb7c60281fe52ca2d914eb88beea/) | Presale | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x71cd6dd59ac7f9928ce62a7f94fa2bb36f8645a2`](./contracts/polygon-137/0x71cd6dd59ac7f9928ce62a7f94fa2bb36f8645a2/) | PresaleStorage | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x05c71c9c71a4d8ff1a4af55422d7f2fa91fcb9e7`](./contracts/polygon-137/0x05c71c9c71a4d8ff1a4af55422d7f2fa91fcb9e7/) | PriceCalculator | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x5602de59fc5f635cc22fac460fd5b345bf3d1cbc`](./contracts/polygon-137/0x5602de59fc5f635cc22fac460fd5b345bf3d1cbc/) | Proposal | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x041fc90f2d124185506d7e6aed0b150e94224aaf`](./contracts/polygon-137/0x041fc90f2d124185506d7e6aed0b150e94224aaf/) | ProxyMinter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x00b576f9a2cc3100cc28a8eeebd198c152d628f9`](./contracts/polygon-137/0x00b576f9a2cc3100cc28a8eeebd198c152d628f9/) | QiDaoStrategyDeployer | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x01f4ae57168a5b7da2c57eddbfb8000811174118`](./contracts/polygon-137/0x01f4ae57168a5b7da2c57eddbfb8000811174118/) | QuickStrategyDeployer | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0xf4c1dfe482570bba9c8b941b162a7509b9c54958`](./contracts/polygon-137/0xf4c1dfe482570bba9c8b941b162a7509b9c54958/) | SimpleLocker | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x3d32f459c52b009d615e5251494bac3170422433`](./contracts/polygon-137/0x3d32f459c52b009d615e5251494bac3170422433/) | StrategyDarkBuildRebasingUSD | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x0ac497bed4d5af4e95d7ece0fb0144e23b8086ad`](./contracts/polygon-137/0x0ac497bed4d5af4e95d7ece0fb0144e23b8086ad/) | StrategyDeployer | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x3709ff1da9d1f485576a5ebd3191b3eca01eafea`](./contracts/polygon-137/0x3709ff1da9d1f485576a5ebd3191b3eca01eafea/) | StrategyDeployerCometh | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x0f663d773a3df820086b3e175ea222bbcf961a10`](./contracts/polygon-137/0x0f663d773a3df820086b3e175ea222bbcf961a10/) | StrategyDeployerComethPair | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0xa1d32abea1eb7c62b4075d8b6f5adbc3f3b48c32`](./contracts/polygon-137/0xa1d32abea1eb7c62b4075d8b6f5adbc3f3b48c32/) | StrategyDfynDual | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x85ccd984c566bda5c69f80ba5e29a7f5d3fd30b2`](./contracts/polygon-137/0x85ccd984c566bda5c69f80ba5e29a7f5d3fd30b2/) | StrategyDualRewardsNonReentrant | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0xafd9338c49a4074e32cc8e77357473c917907234`](./contracts/polygon-137/0xafd9338c49a4074e32cc8e77357473c917907234/) | StrategyElkPair | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x01338e72681e4bc8df00f21451439f10caffd828`](./contracts/polygon-137/0x01338e72681e4bc8df00f21451439f10caffd828/) | StrategyPolyquityPUSD | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x8970a9df4ceb7b70ee016d8acdf3d58cd66ad7ff`](./contracts/polygon-137/0x8970a9df4ceb7b70ee016d8acdf3d58cd66ad7ff/) | StrategyPolyquityRewardPair | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0xf028595e4421629fa0915a47a0baa0ab5fd304f7`](./contracts/polygon-137/0xf028595e4421629fa0915a47a0baa0ab5fd304f7/) | StrategyPolyquityWmatic | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x2689c7a5e0263e1d7b1c4aff6e2e1371636ff50c`](./contracts/polygon-137/0x2689c7a5e0263e1d7b1c4aff6e2e1371636ff50c/) | StrategyQuickMatic | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0xfe3c01247b6c1718d7ea4c8252369635f42a2b73`](./contracts/polygon-137/0xfe3c01247b6c1718d7ea4c8252369635f42a2b73/) | StrategyQuickPair | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x05808850285807fe79b4b430511afe38c45f0dc0`](./contracts/polygon-137/0x05808850285807fe79b4b430511afe38c45f0dc0/) | StrategyQuickUSDC | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x28f67424d7bdbdc11a830d754638276a90bd783e`](./contracts/polygon-137/0x28f67424d7bdbdc11a830d754638276a90bd783e/) | StrategySingleAssetWhale | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x269509bc3c5c24e56de9ffe5136950d7ceac0b97`](./contracts/polygon-137/0x269509bc3c5c24e56de9ffe5136950d7ceac0b97/) | StrategyUSDCmaUSDC | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x5f475da71cc95fe50d9674f7b068988e9193db04`](./contracts/polygon-137/0x5f475da71cc95fe50d9674f7b068988e9193db04/) | StrategyWaultEthPair | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x9d5ba300cdac9fc22c099ae2154bd53dcd08f40a`](./contracts/polygon-137/0x9d5ba300cdac9fc22c099ae2154bd53dcd08f40a/) | StrategyWaultOtherPair | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0xa3a03922be28d0f0cd49fd2c1fed417cf07005ee`](./contracts/polygon-137/0xa3a03922be28d0f0cd49fd2c1fed417cf07005ee/) | StrategyWaultWexPair | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x69f98627b373b4ae3aa3c216a18b476a2984404c`](./contracts/polygon-137/0x69f98627b373b4ae3aa3c216a18b476a2984404c/) | StrategyWaultWexSingle | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x44ae845cd2cba0756fbaef1f96daece3e55da4dd`](./contracts/polygon-137/0x44ae845cd2cba0756fbaef1f96daece3e55da4dd/) | StrategyWhale | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x0585479ff586a9d2329e33bdc68c0ce3cdddf567`](./contracts/polygon-137/0x0585479ff586a9d2329e33bdc68c0ce3cdddf567/) | Timelock | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0xa1e1e47c4a4e968f9ebf475abfbabd6cc1e15dd2`](./contracts/polygon-137/0xa1e1e47c4a4e968f9ebf475abfbabd6cc1e15dd2/) | TitanIronStrategyDeployer | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x0ed0e61aa16d2feb8f95ee3fcbe4c5066dcbe35b`](./contracts/polygon-137/0x0ed0e61aa16d2feb8f95ee3fcbe4c5066dcbe35b/) | TitanSingleStrategyDeployer | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x341c6003d7e7d08aaf9580c0f1ce799fecd4b8ac`](./contracts/polygon-137/0x341c6003d7e7d08aaf9580c0f1ce799fecd4b8ac/) | TokenLocker | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x413cb0eb0a4d3a6812798a7204d89b543e4528d6`](./contracts/polygon-137/0x413cb0eb0a4d3a6812798a7204d89b543e4528d6/) | USDCmaUSDCJar | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x9902ca940fd5ba9bec64877fbc86c79002b06623`](./contracts/polygon-137/0x9902ca940fd5ba9bec64877fbc86c79002b06623/) | VaultInfo | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x9b88d2b433e56a6700679a1a0521b466214c84d8`](./contracts/polygon-137/0x9b88d2b433e56a6700679a1a0521b466214c84d8/) | WaultEthStrategyDeployer | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x1aa2249ee4090fb2bea49efcebfd9beee8b977e7`](./contracts/polygon-137/0x1aa2249ee4090fb2bea49efcebfd9beee8b977e7/) | WaultOtherStrategyDeployer | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x8384d60a2795b015c72aa359f6bf61af457e02fe`](./contracts/polygon-137/0x8384d60a2795b015c72aa359f6bf61af457e02fe/) | WaultWexStrategyDeployer | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x28c798a4b06e48d672db1065a80be022da458522`](./contracts/polygon-137/0x28c798a4b06e48d672db1065a80be022da458522/) | WhaleStrategyDeployer | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 73 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 0 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Zero-match audit list:

- [19397] <>

Fork inheritance lineage and inherited audits are included when available.
