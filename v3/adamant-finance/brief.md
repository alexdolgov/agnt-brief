# Agentic Audit Brief: Adamant Finance

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

- Project: Adamant Finance (`adamant-finance`)
- Website: [https://adamant.finance/](https://adamant.finance/)
- Lifecycle: unknown
- Generated: 2026-07-15T18:30:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: arbitrum, cronos, fraxtal, polygon
- Contract surface: 99 unique implementations (99 raw deployments)
- Coverage basis: 0/4 confirmed own live verified implementations (0.0%); conservative 0.0% with 0 needs-review implementation(s)
- DeFi Llama TVL: $201,753.38
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for Adamant Finance. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 6 contract row(s) across arbitrum, polygon. Structural roles: 4 core, 2 supporting. No upgradeable pattern was identified in these rows.

## Logic Topography

- Exact-run contract rows: 6
- Structural roles: core (4), supporting (2)
- Contract kinds: contract (6)
- Detected standards: ownable (6), erc20 (1)
- Frameworks: openzeppelin (6)
- Upgradeable-pattern rows: 0

## Fork Analysis

0 of 30 contracts are derived from known codebases. 30 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0x01fe07ce760da7a025e4cf3f950ae236f8e62120`, chain 137)
- UnnamedContract (`0x1a86215401873c5a815509284670a9dadcab61e0`, chain 137)
- UnnamedContract (`0x52d3dcf0e59237b032802b40e69f65877091171f`, chain 137)
- UnnamedContract (`0x59cbff972fe0c19c881354a9cde52aca704da848`, chain 137)
- UnnamedContract (`0x6813cd04dbba948cafc3e0e7282ba3a53f949945`, chain 137)
- UnnamedContract (`0x920f22e1e5da04504b765f8110ab96a20e6408bd`, chain 137)
- UnnamedContract (`0xa5bf14bb945297447fe96f6cd1b31b40d31175cb`, chain 137)
- UnnamedContract (`0xac2f66971bc37eb443c4e11aab277e19d1c4864c`, chain 137)
- UnnamedContract (`0xc3fdbadc7c795ef1d6ba111e06ff8f16a20ea539`, chain 137)
- UnnamedContract (`0xc5bcd23f21b6288417eb6c760f8ac0fbb4bb8a56`, chain 137)
- UnnamedContract (`0xffd82f81513b207fb9d7d7835e178b6193f2ca96`, chain 137)
- UnnamedContract (`0x097b15dc3bcfa7d08ea246c09b6a9a778e5b007b`, chain 42161)
- UnnamedContract (`0x09ad12552ec45f82be90b38dfe7b06332a680864`, chain 42161)
- UnnamedContract (`0x1130af7108df6c797eb0a6788cd9d25e7312a072`, chain 42161)
- UnnamedContract (`0x1219d121dab8b6c81b4a1789fb39e02bf19491bb`, chain 42161)
- UnnamedContract (`0x25c4d57c9eafa243a8d74249fe70855e50931ce7`, chain 42161)
- UnnamedContract (`0x47d3dcad6e47c519238cbe50da43e6a53c49cfc2`, chain 42161)
- UnnamedContract (`0x4b51801878325b48fbb97c7bbf47025f838331fc`, chain 42161)
- UnnamedContract (`0x520bd22a62241172633ce6fc498383dd666e575d`, chain 42161)
- UnnamedContract (`0x6aebbcea35600eda33055e1bb38a38b66f3b2fe2`, chain 42161)
- UnnamedContract (`0x9d5d0cb1b1210d4bf0e0fdcc6aca1583fa48f0fd`, chain 42161)
- UnnamedContract (`0xc5ffd083b983aaf823a9b485b207f898ed2f32dc`, chain 42161)
- UnnamedContract (`0xd3ee8242269dab77eb04581f77692f0e8aa34a8d`, chain 42161)
- UnnamedContract (`0xd6b3c3607b9b645f540e09c94094beb22cadabc1`, chain 42161)
- UnnamedContract (`0xddb545f6aa3654bf2d7badbcea216d2f20b9305c`, chain 42161)
- UnnamedContract (`0xf12bfdf9e3aaf0694d94ab08ef2a6cba3f7f2899`, chain 42161)
- AddyStakingRewards (`0xf7661ee874ec599c2b450e0df5c40ce823fef9d3`, chain 137)
- Minter (`0xaae758a2db4204e1334236acd6e6e73035704921`, chain 137)
- SimpleLocker (`0xf4c1dfe482570bba9c8b941b162a7509b9c54958`, chain 137)
- TokenLocker (`0x341c6003d7e7d08aaf9580c0f1ce799fecd4b8ac`, chain 137)

## Contract Surface Quality

- Logic-topography rows: 6; live-surface rows included: 6 (4 live, 2 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 30/32 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 0/4 (0.0%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 30 own, 2 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 67 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 0
- Confirmed-live implementations: 30 of 99 unique; 69 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 0/73
- Verified + Unaudited implementations: 73
- Verified by bytecode match: 0
- Unverified implementations: 26
- Unique implementations: 99
- Raw deployments: 99
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

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| Addy | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | polygon | unit-225712 | `0x4a7ae6df0b068d5b934f433358e6deb81263745e` | ⚠️ Unaudited |
| AddyEthPool | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xa4c1763aef101958635a0ed1e0a744f4bf630b73` | ⚠️ Unaudited |
| AddyExchange | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x69578997ba7c5a5a46fb6240ac7ca4a951f2ac63` | ⚠️ Unaudited |
| AddyStakingRewards | unknown | project_anchor | own_supporting | 0 | polygon | unit-225723 | `0xf7661ee874ec599c2b450e0df5c40ce823fef9d3` | ⚠️ Unaudited |
| ApeStrategy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x5ae3d31de95b8058ac0248c17fb5eb35a027bee4` | ⚠️ Unaudited |
| ApeStrategyDeployer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x04261ef6d660794fe3543f6df633265236bb91b0` | ⚠️ Unaudited |
| AugurDividendsV1 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xb072954e64f094534531a577ff311ef3c15420ce` | ⚠️ Unaudited |
| AugurySingleStakeStrategy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x47e5ecbbfebff5af355d3a66f5374e3bd609d9e4` | ⚠️ Unaudited |
| AuguryStrategy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x3c61f005881a1d7c6ebda77b36458da39b42f443` | ⚠️ Unaudited |
| BoostHandler | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x35de787e6b9fb7984e97f55fd951e471a7761044` | ⚠️ Unaudited |
| BoostHandlerProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x98fada20fce3cc7003f560dc659a4c6dd6b84657` | ⚠️ Unaudited |
| Converter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xf53b30b5e15c0afb1d1565a10d010810e48ff32b` | ⚠️ Unaudited |
| dQuickStrategyDeployer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x1a74581efbe85ceba05823e64c2a645341c1545e` | ⚠️ Unaudited |
| ElkStrategyDeployer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x116c5a423fc20541ca24d8b391d2a9bd763854a3` | ⚠️ Unaudited |
| ERCFund | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x25eb1113dd5759a40cd874d4fe8e6842ea6a88be` | ⚠️ Unaudited |
| ERCFund2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x43c085b5aba4e83a7dd1a478b7458d1d472ff6b4` | ⚠️ Unaudited |
| FeeDistStrategyLocked | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x914417902e651434cb660b6c6f18c9529c3a7b2d` | ⚠️ Unaudited |
| GenericJar | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x0297b9ad2ad90ea328b6cf28bc5c09c37656cb13` | ⚠️ Unaudited |
| GenericVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x00e33126c69e9e7560f77c20dc72684958cfae57` | ⚠️ Unaudited |
| GravityStrategy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xe17b0088dba7671d142ff44649a4ee3a94e7c796` | ⚠️ Unaudited |
| IceUsdcStrategy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xfce59c1f914c57548d80ba95aa487ac9d851ae91` | ⚠️ Unaudited |
| IronStrategyDeployer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x06e1ca0cfdb8504e0fe0a8bd0d2c2db59d295d64` | ⚠️ Unaudited |
| IronSwapStrategy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xa6a92b1f1c7d038d81d0e66a1aeace924f5790c0` | ⚠️ Unaudited |
| LockedAddyVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x322cb48dd00981eec62cc6d3c99622006e91131c` | ⚠️ Unaudited |
| MaltStrategy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x6fa09a82ee9409459951cacac7d64f91638b71ba` | ⚠️ Unaudited |
| MasterChefReferralStrategy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x7b22fffb42315e32bdc9f9968048d1f2c60013ce` | ⚠️ Unaudited |
| MasterChefStrategy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x0cf1a89d782d7b63746231516fc9db8e8c9c5c59` | ⚠️ Unaudited |
| MeshStakingRewards | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xbe6aa0af32984fe3f65a73071decc09ab607e310` | ⚠️ Unaudited |
| MigratableJar | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x1e4db0ea4e7ae72722d28583998faf055c404239` | ⚠️ Unaudited |
| Minter | unknown | project_anchor | own_supporting | 0 | polygon | unit-225718 | `0xaae758a2db4204e1334236acd6e6e73035704921` | ⚠️ Unaudited |
| MultiFeeDistribution | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | polygon | unit-225710 | `0x2ac4569854e62f78f9c3ddf98f9f41961089935c` | ⚠️ Unaudited |
| MultiSigWallet | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xb0732cf1e3924f51f621b7479b793b8613e6e8b6` | ⚠️ Unaudited |
| PolyPupStrategyDeployer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xf3ec226e32467ab5a1d4671045e2fc6d012ae8ff` | ⚠️ Unaudited |
| PolyYeldStrategyDeployer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x1f21327e7a59ba85140c0e1b538d706759f023bf` | ⚠️ Unaudited |
| PolyZapStrategyDeployer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x50a13221211cf689fdc513fb4a039c1f33c86370` | ⚠️ Unaudited |
| Presale | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x541963761bcbcb7c60281fe52ca2d914eb88beea` | ⚠️ Unaudited |
| PresaleStorage | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x71cd6dd59ac7f9928ce62a7f94fa2bb36f8645a2` | ⚠️ Unaudited |
| PriceCalculator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x05c71c9c71a4d8ff1a4af55422d7f2fa91fcb9e7` | ⚠️ Unaudited |
| Proposal | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x5602de59fc5f635cc22fac460fd5b345bf3d1cbc` | ⚠️ Unaudited |
| ProxyMinter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x041fc90f2d124185506d7e6aed0b150e94224aaf` | ⚠️ Unaudited |
| QiDaoStrategyDeployer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x00b576f9a2cc3100cc28a8eeebd198c152d628f9` | ⚠️ Unaudited |
| QuickStrategyDeployer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x01f4ae57168a5b7da2c57eddbfb8000811174118` | ⚠️ Unaudited |
| SimpleLocker | unknown | project_anchor | own_supporting | 0 | polygon | unit-225722 | `0xf4c1dfe482570bba9c8b941b162a7509b9c54958` | ⚠️ Unaudited |
| StrategyDarkBuildRebasingUSD | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x3d32f459c52b009d615e5251494bac3170422433` | ⚠️ Unaudited |
| StrategyDeployer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x0ac497bed4d5af4e95d7ece0fb0144e23b8086ad` | ⚠️ Unaudited |
| StrategyDeployerCometh | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x3709ff1da9d1f485576a5ebd3191b3eca01eafea` | ⚠️ Unaudited |
| StrategyDeployerComethPair | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x0f663d773a3df820086b3e175ea222bbcf961a10` | ⚠️ Unaudited |
| StrategyDfynDual | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xa1d32abea1eb7c62b4075d8b6f5adbc3f3b48c32` | ⚠️ Unaudited |
| StrategyDualRewardsNonReentrant | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x85ccd984c566bda5c69f80ba5e29a7f5d3fd30b2` | ⚠️ Unaudited |
| StrategyElkPair | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xafd9338c49a4074e32cc8e77357473c917907234` | ⚠️ Unaudited |
| StrategyPolyquityPUSD | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x01338e72681e4bc8df00f21451439f10caffd828` | ⚠️ Unaudited |
| StrategyPolyquityRewardPair | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x8970a9df4ceb7b70ee016d8acdf3d58cd66ad7ff` | ⚠️ Unaudited |
| StrategyPolyquityWmatic | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xf028595e4421629fa0915a47a0baa0ab5fd304f7` | ⚠️ Unaudited |
| StrategyQuickMatic | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x2689c7a5e0263e1d7b1c4aff6e2e1371636ff50c` | ⚠️ Unaudited |
| StrategyQuickPair | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xfe3c01247b6c1718d7ea4c8252369635f42a2b73` | ⚠️ Unaudited |
| StrategyQuickUSDC | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x05808850285807fe79b4b430511afe38c45f0dc0` | ⚠️ Unaudited |
| StrategySingleAssetWhale | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x28f67424d7bdbdc11a830d754638276a90bd783e` | ⚠️ Unaudited |
| StrategyUSDCmaUSDC | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x269509bc3c5c24e56de9ffe5136950d7ceac0b97` | ⚠️ Unaudited |
| StrategyWaultEthPair | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x5f475da71cc95fe50d9674f7b068988e9193db04` | ⚠️ Unaudited |
| StrategyWaultOtherPair | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x9d5ba300cdac9fc22c099ae2154bd53dcd08f40a` | ⚠️ Unaudited |
| StrategyWaultWexPair | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xa3a03922be28d0f0cd49fd2c1fed417cf07005ee` | ⚠️ Unaudited |
| StrategyWaultWexSingle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x69f98627b373b4ae3aa3c216a18b476a2984404c` | ⚠️ Unaudited |
| StrategyWhale | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x44ae845cd2cba0756fbaef1f96daece3e55da4dd` | ⚠️ Unaudited |
| Timelock | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x0585479ff586a9d2329e33bdc68c0ce3cdddf567` | ⚠️ Unaudited |
| TitanIronStrategyDeployer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xa1e1e47c4a4e968f9ebf475abfbabd6cc1e15dd2` | ⚠️ Unaudited |
| TitanSingleStrategyDeployer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x0ed0e61aa16d2feb8f95ee3fcbe4c5066dcbe35b` | ⚠️ Unaudited |
| TokenLocker | unknown | project_anchor | own_supporting | 0 | polygon | unit-225711 | `0x341c6003d7e7d08aaf9580c0f1ce799fecd4b8ac` | ⚠️ Unaudited |
| USDCmaUSDCJar | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x413cb0eb0a4d3a6812798a7204d89b543e4528d6` | ⚠️ Unaudited |
| VaultInfo | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x9902ca940fd5ba9bec64877fbc86c79002b06623` | ⚠️ Unaudited |
| WaultEthStrategyDeployer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x9b88d2b433e56a6700679a1a0521b466214c84d8` | ⚠️ Unaudited |
| WaultOtherStrategyDeployer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x1aa2249ee4090fb2bea49efcebfd9beee8b977e7` | ⚠️ Unaudited |
| WaultWexStrategyDeployer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x8384d60a2795b015c72aa359f6bf61af457e02fe` | ⚠️ Unaudited |
| WhaleStrategyDeployer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x28c798a4b06e48d672db1065a80be022da458522` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (26)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-225708 | `0x01fe07ce760da7a025e4cf3f950ae236f8e62120` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-225709 | `0x1a86215401873c5a815509284670a9dadcab61e0` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-225713 | `0x52d3dcf0e59237b032802b40e69f65877091171f` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-225714 | `0x59cbff972fe0c19c881354a9cde52aca704da848` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-225715 | `0x6813cd04dbba948cafc3e0e7282ba3a53f949945` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-225716 | `0x920f22e1e5da04504b765f8110ab96a20e6408bd` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-225717 | `0xa5bf14bb945297447fe96f6cd1b31b40d31175cb` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-225719 | `0xac2f66971bc37eb443c4e11aab277e19d1c4864c` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-225720 | `0xc3fdbadc7c795ef1d6ba111e06ff8f16a20ea539` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-225721 | `0xc5bcd23f21b6288417eb6c760f8ac0fbb4bb8a56` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-225724 | `0xffd82f81513b207fb9d7d7835e178b6193f2ca96` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-225725 | `0x097b15dc3bcfa7d08ea246c09b6a9a778e5b007b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-225726 | `0x09ad12552ec45f82be90b38dfe7b06332a680864` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-225727 | `0x1130af7108df6c797eb0a6788cd9d25e7312a072` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-225728 | `0x1219d121dab8b6c81b4a1789fb39e02bf19491bb` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-225729 | `0x25c4d57c9eafa243a8d74249fe70855e50931ce7` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-225730 | `0x47d3dcad6e47c519238cbe50da43e6a53c49cfc2` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-225731 | `0x4b51801878325b48fbb97c7bbf47025f838331fc` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-225732 | `0x520bd22a62241172633ce6fc498383dd666e575d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-225733 | `0x6aebbcea35600eda33055e1bb38a38b66f3b2fe2` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-225734 | `0x9d5d0cb1b1210d4bf0e0fdcc6aca1583fa48f0fd` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-225735 | `0xc5ffd083b983aaf823a9b485b207f898ed2f32dc` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-225736 | `0xd3ee8242269dab77eb04581f77692f0e8aa34a8d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-225737 | `0xd6b3c3607b9b645f540e09c94094beb22cadabc1` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-225738 | `0xddb545f6aa3654bf2d7badbcea216d2f20b9305c` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-225739 | `0xf12bfdf9e3aaf0694d94ab08ef2a6cba3f7f2899` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [<>](https://sourcehat.com/audits/AdamantFinance) | SourceHat | Audit | 2022-03 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 5 | high |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [19397] <> — no match: Audit report explicitly lists five contracts in scope: AaveVaultFactory, VaultFactory, AM3CrvVault, AaveVaultBase, and WhitelistVault. Date is March 1st, 2022.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| <> | AaveVaultFactory | unmatched — not counted | — | listed in scope | no |
| <> | VaultFactory | unmatched — not counted | — | listed in scope | no |
| <> | AM3CrvVault | unmatched — not counted | — | listed in scope | no |
| <> | AaveVaultBase | unmatched — not counted | — | listed in scope | no |
| <> | WhitelistVault | unmatched — not counted | — | listed in scope | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| polygon | `0xf7661ee874ec599c2b450e0df5c40ce823fef9d3` | AddyStakingRewards | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | `0xaae758a2db4204e1334236acd6e6e73035704921` | Minter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | `0xf4c1dfe482570bba9c8b941b162a7509b9c54958` | SimpleLocker | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | `0x341c6003d7e7d08aaf9580c0f1ce799fecd4b8ac` | TokenLocker | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 73 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 26 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Address-book scope dispositions: 0 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 5 unmatched
- Matched-own operational status: 0 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=1
- Match method counts: n/a

Zero-match audit list:

- [19397] <>

Fork inheritance lineage and inherited audits are included when available.
