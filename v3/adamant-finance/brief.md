# Agentic Audit Brief: Adamant Finance

## Export Authority

- Production state: **published scope**
- Raw selected rows: 0 across 0 audit(s)
- Eligible audit results: 1 (0 matched; 1 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `f59b0c07e38ecec2d34eb2896e4262470519ed280e5a0a28b0f46fc69c79a374`

## Project Overview

- Project: Adamant Finance (`adamant-finance`)
- Website: [https://adamant.finance/](https://adamant.finance/)
- Lifecycle: unknown
- Generated: 2026-07-24T14:10:00.000Z
- Pipeline run: brief-deployer-expansion-all-20260724-v1
- Chains: arbitrum, cronos, fraxtal, polygon
- Contract surface: 748 unique implementations (748 raw deployments)
- Coverage basis: 0/4 confirmed own live verified implementations (0.0%); conservative 0.0% with 0 needs-review implementation(s)
- DeFi Llama TVL: $201,753.38
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for Adamant Finance. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 6 contract row(s) across arbitrum, cronos, polygon. Structural roles: 4 core, 2 supporting. No upgradeable pattern was identified in these rows.

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
- Address-book implementation classification: 30 own, 21 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 697 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 0
- Confirmed-live implementations: 30 of 748 unique; 718 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 0/73
- Verified + Unaudited implementations: 73
- Verified by bytecode match: 0
- Unverified implementations: 675
- Unique implementations: 748
- Raw deployments: 748
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

### ❓ Unverified (675)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | cronos | n/a | `0x09ad12552ec45f82be90b38dfe7b06332a680864` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | cronos | n/a | `0x1219d121dab8b6c81b4a1789fb39e02bf19491bb` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | cronos | n/a | `0x26d2f8ec6aa78aa08f38aaaf512aef210f88f524` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | cronos | n/a | `0x2a008ef8ec3ef6b03eff10811054e989aad1cf71` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | cronos | n/a | `0x2b4cb6948010bc6cd7eceb54d5f10eb3400393f5` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | cronos | n/a | `0x323663b759567baf744c182634585f7164c3c442` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | cronos | n/a | `0x3f04d6bd50a79c854ef42965471d34e389eb5cdd` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | cronos | n/a | `0x520bd22a62241172633ce6fc498383dd666e575d` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | cronos | n/a | `0x72570f5ee372992209a0c17a9573af6839991814` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | cronos | n/a | `0x901493c71a3c78f5a391076ea4369892e12bfcfb` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | cronos | n/a | `0xa25c1b4851d6a1625ac3278e446d74a585ed4ba2` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | cronos | n/a | `0xd4b6b08efe59efa0e564a8e2f147455f618c0a03` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | cronos | n/a | `0xd4bccf04a7ca546d3cfc46205aa7c58eb98c7495` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | cronos | n/a | `0xd6b3c3607b9b645f540e09c94094beb22cadabc1` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | cronos | n/a | `0xddb545f6aa3654bf2d7badbcea216d2f20b9305c` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | cronos | n/a | `0xfac5c7819fde19d006244e462db02ed7fe346e71` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x01abfffb9bad30ffc80d6ab27692910fa0c9e7f3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x01e44a424870f9dd21976f50373e88dc6a83ca64` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-225708 | `0x01fe07ce760da7a025e4cf3f950ae236f8e62120` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x03a44eed2c10466aa5ff8b98b6fc591ef4be45a4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x05029fba6d9f30c2af742858a09209d625c7b59f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x056495ece22485bb56ff21f127c0201e9fa60f9d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x06118b6b2baf374b8434d787c94d4ddcbbb29aad` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x0640fb36651da50fd466d342d37b9cc993be8d9d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x064b50127186e5db97c88ac111b22388287bfe41` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x0669868a7861fb15c2366d9bcee23026bd344dff` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x0722e0485ba041c29206b4c050a1468c64f8147a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x078cf16ba381e418672211f07f176aa7cdb0282e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x08546423c2c0b958704bfc8899e0b578b783df29` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x08a83fc898d4a7ce1ab22da42bc1d2efb624e98a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x08f905ef56aa49cbb23c9ddddea964707a5cada5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x0962843d9a6826afb67e79620ed86538832f01a8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x0aff4355036b682dc81d549614ad46bac51662cf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x0b5a70097ce4d88ab9a1ffeb97ce513383668488` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x0c2ad9f04b4da3eb3dfb22209e79353bdbebac2a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x0cdfa37c6d99c012304359e57a9f4837e588474e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x0d4b8d725ea7b8a3da121f07257ba6b497684c24` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x0d506dfad50a3470bb0409140d563665ae05510a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x0dacf116208ddb94135d46847b46d2625453fdff` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x0dd5ab97901eada1bdd53d275424a5a2482f32ef` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x0ef43f90339d7e4488124005b5a6a902b913e88f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x0f55a366e2945c914a2c945fbdeb5d9e7679dd05` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x1002177c67d3c59acdfacee02fad8ed570db3007` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x10509cba26d155c3a9fbbef850261bb4b3e8b648` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x10cd4647a918614296a2671bbe7f3b26f24a10a9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x11b98d98c4b51a10ab5b7b303421f66e6c922823` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x12932463e2023d732ccf7cc17b7654acea1c5fdd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x12bb502492cc1a42aaacfc5fe618497807a98122` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x12cb939d190f045e5d1a3aeca2861bbe66a012f4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x134399f6096174d10078dc24e0a0e1bd2995d612` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x1390cff4b27a1283bb023302bacd87a99be07b16` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x13d9be324b3a3b4ef46aa16eed750ead90d18b0b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x14625ce18010a2ab40155adc150bf04b7946709b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x1507c1767d618e1e48457b205896fc05c86fa138` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x15a4eb57f0116ab64bba928b75262eb96e084cab` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x15db37461e006ade226fe15fe229e58a01cb1368` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x160f08573776657a9e798b4d612e606b757865c7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x16d02589d1ed4e67bf836f6b275958864decf172` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x1700de77760cc33e72ad6315c2dd66c32b934aba` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x17af4828f5b4d668428ff7c0403f46575801f5a2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x18679826d7321184db76df7b52d1c9a2c62a53fb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x187f8cff5827c661dde080a97b122c65f1cc928f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x18c9e6b2f185f57ed27759c8a630ab3fd031f6d1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x1943ec49c9c5134e4a1577c3eecea4574316ce08` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-225709 | `0x1a86215401873c5a815509284670a9dadcab61e0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x1a93f901cf1130cc78f43b0495a0664adf5cf968` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x1ae9dba8bdb26af9ca264b8e0802f07b1b2e0c84` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x1b53c2707c0681e5fac884926c4634c072b408e6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x1c048c773fdf662880b86c9c0db0512cfa4fd68e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x1c2b2bfc5f88a8654e89859eea6eefc4b1bc7ed3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x1cb5c30406b445855d3648d649be9a77e5229879` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x1d3acfd994b07c503d2e6628bd2fade6d3e7a70a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x1d93fe432bf5136b0af3d36354e124d163f70aaf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x1db0020955aa206e5090298a9fa7a7022a06ccf1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x1ddc1f9fe0e6e7bf9be421ca818d39004f3fdaa8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x1e4b870ce3973419778734b92bcab0be42a55514` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x1e6e718ec78b888694eb837c1226663f90838eaf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x1f1bcfe9cea35affc5eb7398c1e1d1e29a4fd504` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x1f2e603fdeea3e6a190dfdb889b4ad9fb6dcddb6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x1f50937237d6f1da4d53c7d616e64e01c8518ebb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x2024650a08b6eb9750389a1c0a502ee5753a350b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x2088616b462a30a715bb9fa01ee39cb49cb70c67` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x20f3305df56b29ae556441143101cb0dc47bcae4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x213e2f8ce690bb937ae373972e6ca29e6344eda7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x2166bab868a87e0e1ad76ce8af79b2d093339f8f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x2183c2c05e3ab9eb3e1fbe88fbedb27817991d2e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x21892e590f73f5feb9d32ac995ca89156e74422e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x21bac5f541067b34fcb4068d482b6cbf177882c1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x227f8bc8ae0026196ca1a35c04e589327cc95679` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x22abbaba2c6d4e7e2af225ec3aabe6fdcf1cdad5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x22d766eb944ac3f096290d8022c8112ec2eadccb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x230787c37f8adf1e908c7f5d611570a49e7130a7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x23301ae002c19e5c5be472ea4c0246153df14454` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x234a3794000f844e1e44322a31ac8b698ed15b78` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x235cd9a4af69c3cdc2cee34e8b58380f1a254331` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x239d9ff4b2d24e8f32a836804f65118f4733c50a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x24be2d9710aa02d7eccf8bfdc27321c336cadb5c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x2558b34a1e235a6a4b2d206f03e7eb8908bea74d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x262fe96875729d8bc681ab186e37327eb16e0cab` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x2646e0034d05cbf4d71102f0efb9b9242d792677` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x265a775ac31d32e1de6e5abb4da95740f12c1354` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x267218526f34c8cf603aa00fcbb9c1f9170cb6e7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x2675055c945e09568361f7f876f9596f1dada3f3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x26dbe6d8589d18a1dbf99fe2fec6afc6fcf93e43` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x27957d9e35bb343ab5a18493e6f947d736a6ef7c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x2796399436d3841c4eb581eb9a7f4be4106eb4a6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x294674bfee83bb96bd3c18af01941b2dd079e03e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x2978eabd1c085109259d49aeff53bc3f1e2974e0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x2990e168c73fa952b466bc7e43c27d1ca1d48152` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x29a620d138d4bdd813bd12de226cb7799d4b1961` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x2a3c41ee8bb00c266ce24f832255b0b68b40dedf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x2a8591d74edef0421ae334f21d69fe9e06dc2566` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x2afc0be55d075db79f36fe81aaa995d66bc050bc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x2bede09dedec427f48827f7ab7e2ac1f43e7c319` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x2c163328f7ea989d803d5449a17c36921e37f89d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x2c571d7c89bf17a666f72e81a17468c2701b4d70` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x2cf5497411493a80173111e159b4551f10d32f27` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x2d1041a157c79220e8bd5bc7bf40732b90d5700b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x2dd30a06bcaeaa6cb28447d3444389f5c6b89d35` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x2ddd44526945186f734edff820f98acf70bfd449` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x2e58dfca2cd18bc8d5b09085e7ae3cbe8017993a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x2ebcb0034d1e9ecc4a42e11c6c074ccad4a189cb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x2f10462311f175b3ef965a8fc5d15d5a98173695` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x2f2454cb0b64cea82b9cf5f9177ee4c3929d3a9c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x2f4901f3bce66b62d4b307f6dce246c188afffe4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x2fc1b142af4d0422f554947cd5fcaa0ccea44199` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x300667f774b7a05279555b22e6c4fddef8ef7694` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x30231d1ee2d19d29735b8498c7a2c59307ceafbb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x303dfb470c206127b9b645418eb57127793ce0ef` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x304d7a85a629780bc2b5f1ba611b183300c9bb36` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x30eb2053114c2e2f46e180417b9452bb26f3f8b2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x30ffc8c270cf262937ef9e6b2fef2bd2bb91fb84` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x3224ac6b8707a511780ea3404cae0ba4b4b61585` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x328d0ea1e19cd9ba1e39368b51144aad8576864e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x3355743db830ed30ff4089db8b18deeb683f8546` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x3684c557f6dc9a1a6d107118ad242684d37fd939` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x37291f7693c17b783849949549087f9696631af4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x374872080bb33b225a25c274e25521e548592119` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x375b66aa7321b8146439f254e29829de89795974` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x377ec1b4e8567d1aa48755311542ff827fd357f2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x3789aceac63a81018c6044cf0390a8d2e5fa3184` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x385a0e733053c92134e6c73614a0717e7d63eb5e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x38df41438d5677006d5d04e5efe6682d075045b1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x394062650eef5c7ac32e89cffce4d3d56932ea59` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x39cc119c43abda76715e690b09c53720c771f87a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x39f98305c28bb68c7fdf1711ef7742afb0ce95f3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x3a0a5a0797f1ff849bdc38311df1b51fa37fa0aa` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x3ae7640da3f92983e7fb425c3199bf2934d28cf7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x3b2b2f9f0e6a6ca6bae823ef9328516e4fd2ef4a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x3b4396cf6d6b2850aed670ff1daea4a51e2dbee4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x3b4dbd4e6888e813c316f6a6c62fc326413be2ec` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x3bc6c50bdef525351aa7e0ed288f53f0aa579874` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x3cf743ca9d150e5c311d63cdb1e1a3a4acd614c0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x3d4fbddce1cec24544a531ab6293f93592bb2510` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x3e156c828b3ad93fc21aa1a2a2000c9f349a0421` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x3e2dc45f989645282efc62b5e203caa55897031a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x3e65cf521de420d5a482ec9992bedf09f7f20e39` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x3e810cb60f7c0c8c270efe4298551ba42c466b2e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x3e9ecf16ff30cdaf3495ab1ea4851bc48d008391` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x3fff2f48409e7626482c6cf2e76ceb4d7769d094` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x4028405e480aa63fc9df8152f9302165ed351fb7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x40a751a6077bc3847d33a3b340761950c5dd4e3f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x423861a5a3d8623e4bc47fc0a192a3cfa9d83859` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x430803ed1e984c8a052e9990ba3f8f2d56e65086` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x430e5be2f6552bd829fcc907ab9a076ae9d7d9f4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x4314d47c3d06a5500efa1aed390eeb260868b01e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x43406a561ae7f419e5aba05703d09c7e4875929a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x43777a4d9d7de115f3ccb184f86281cc21a9c67b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x43a71703e6b21084a250d17706f15d36410c68b3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x4410da8a8542e978adf95bf6eaa516356df196da` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x4422701f9e4e947bef080dad1ad0e8fc88eb4d78` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x448e29db1b58ab654f8fabb9a72c6e822397999c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x44cd388fe1c288ca5708bb3f4ff54fd68b541078` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x455160c73a94a1f38461c18741889ddd5bd92cc6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x4699ddd4d110aac81deb3abb76682d60bb6e8649` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x46a9e942441651075945580e7d26c48d0d960f27` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x47cf7cc5145e21dd46d8e7c6f9656160f5af0b55` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x4804a2cdd4eb99ee5170d6f23b8b9ced6c52af79` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | polygon | n/a | `0x48063376eac95806a59ee00b901b6104da960b98` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x480d404916053c53caedad8a0a80e2e9a38c61cc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x4826e1fa533a9f92f47c558e20df59e53b6360ce` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x48e50387ed699da2ae3621344dbe682f4797d3bc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x491d98b93af54d53c690a13b59699e49b028c8d6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x49f8b540a8ace1826290cc3c58aa6c03b3ae0932` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x4a1e57af2922827f12c1dd16c4ab086ede395575` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x4a9cef4a6bb40193778ff4c5fc84594df1850094` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x4aea72ad24e1416b995f6ccb414d80c0e0d67544` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x4b79616ae6634c6efec1ad3a92cc9079b04bdf18` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x4b9c1d5d8aad2085a13873bfe21096264d2f2c0a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x4bd189ae1c5fca558fa3fd497ea978b0e657f7df` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x4cbc8c22dcab33fe982fd53ea74a0895ddf3a4a4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x4cf2d829a8422239bedf900fae10cb33dbf105f0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x4d76e51f41f9b37079dfb808af99320c5b2e3a8e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x4de07583175a6b20795530e322ce2cd8fd1e5e21` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x4f1bec47bab9a5b1c6f829abac5b9c89a4f72915` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x4f611c8d5c19e90c63399b7098098ed2c9779f26` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x4f80289082026a3b65f17ab7d12ee58efe8b6bc5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x50381d0470aba1c1d4911e04359a2d1aae99a5a3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x50386fa0baeeecc4a4125ea1d04bc85d8914b837` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x50709b6478a836274562dced7db7d964c537c119` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x50ffa86103cb2162dba8283d9ec6c9962895a519` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x5108269a99d51214c70183459dddcb29f11c76d9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x5192cb49ecd4a83a5b6d470d1f67905313f0dfcb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x51d313fcbb89bc363aed3be27c12903ef68783de` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x521ea987b32436f8b667ff8b2a892fb0d41844b0` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-225713 | `0x52d3dcf0e59237b032802b40e69f65877091171f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x533d7cbb1d0f768c20aded545942a63c5046e406` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x5377e8316956b8a9113b4c5cb3071516948c1e06` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x53a6d8f60765e3775061347b41eedc844bccb95a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x5426945f3ea10462f960b166d5c02f195345228b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x549a55e24a7161da0bae579898469c25a851be1e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x5527d5f23ff85e4b7a90c1335ca3dc3f777ea614` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x553d977c3525e67bb8f9e2b23f088d20857f1e1b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x55f83d408531bd908fdb7c4346f64751cc8b6bb6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x561a6489be042830b97c7af7961c921fdc6745d4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x569f29658edf7aa5920bb85efdeac75afa77dbf2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x5794527edb73ecda5fc8afe24ba9fe6cddb5b566` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x57bcf838aa2d0ee363aa7fabdb503e6f5ed075b8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x581a1299dfa9e94fd5b7f3692b643f951d569514` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x583420f21cfe327befc20e03c348c9a6b7fdf534` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x5861c6384b72e46cf43bb8c2483284dc815d5e59` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x5914420b2c24da8becf2a085be5858c82a6709f9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x5979bf21cff0153861daf43f3f655e7f1ad2402f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x59859893fbaf66fd9e9f52ceccc70e73d657b609` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-225714 | `0x59cbff972fe0c19c881354a9cde52aca704da848` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x5a77e3ae5c493ed6c9806cf54576b76d098519fc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x5a7c81abb8010912d48416d374cd64ac0be34f1a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x5b0c26531fe4d16852a11961f4ec8cfce65609e0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x5b18161567ae29ec504825d62ad666cde494b7c4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x5b2b9328928e0571b0baa809cdc638be93179a15` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x5b7182bbcaf4a8124630a5a0985438efc1eb3a88` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x5bbbd17dfc0a056ea00b7170b51232edb15ac979` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x5c27586baede5b6e5814bc6773e3f49a30397a29` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x5cc0577e64eeb186821c8bdd724f19414e2affce` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x5ce3bb5f9fdde89dde6e65e1d3661718a8804105` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x5d87e588c656053b1e9702b44b4607adc9464c83` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x5d9b187027c4d0066895624f8beee1e84255510c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x5d9dbdaa3d910d51c77b8c8b81329b7c56416356` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x5de5da909e9488c2b68adb68018dfd1f043ff738` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x5ef8000c3b41bb208725ed86cef4d4e74728b22a` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | polygon | n/a | `0x5fcb390b4422f4ff7940c23618a62bf5f69658a8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x60205cad3b3d43219a8e0968c26f0ec5cf90ab2c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x60b7045a5337ae117fdf6bc4d0831c4bca28c4bc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x6111b3daa66c74c72a10e3d2d972bd40d401ccd9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x618125026af4107f58c7935ecc1e3fe196a071aa` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x618c520cadce7c81d82bc22655ae2a0adc466e20` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x61af887da40ddfe1cbd4ceeed4cf99f83453fb64` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x61b299ca14dc72f76f9f0df882a95b0e609621b9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x61b5977b365b32ef4321911af553c2700f5ce6b6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x622c55cbb5ec4ed614d77228f60c5b03913f98e1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x6384aacf05d6d81724d25e3af4fb915a0830ff13` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x642251b8c36a8d7690f67da64814ef2d675fb14e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x6540d26c476b9719d1ff14722bfc4e7f8f81b0f7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x655a108c381d61b22a84d7ae497535002f647e53` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x66aac30bcbfd8c296a684d6caae1fc6fd6f0e78c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x66c14704405f21a87e9fdcbe32ec439bc6095faa` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x67f4a0bb3dbff781a2bb1cc1b7dc000081724896` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-225715 | `0x6813cd04dbba948cafc3e0e7282ba3a53f949945` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x684caf5e3921a94da4deffe24491b7f42deba141` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x69b4c77a32ac59110602315b6538da41df00914b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x6bb181516562e50ef5a42f8fa7d0003462c1f855` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x6cdc72f895391ed3d3f56ebb9c0435c5e943c401` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x6d0fe666ee6a89e5eb642a605ef43062c345b43c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x6df4d1b25798f3ea618ff57e30d3c515f189e279` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x6e24e64feefedd782a2b1d65eb191277dd4631f9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x6fcabf63cad624058c3f50deb0aad3ecffdfda25` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x704ec90e44030957738160c87f459e0ad0a1ee14` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x70d535aea185d2bf0d815b9ab2c627e456357b02` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x71e499774a0b22b6dee331ee5704c8a43d3e7b37` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x728488bd820e88c36ecfa858f076b4cc37e5c1a7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x72aac2a0bc43192c6407317daa4ab416d36aa114` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x72fa18357f84bda36f33ee1b580bd1cd75f997fb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x734a5b8cf9b0e6e7f702ded152304c447a5f9060` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x73755f723abbc92b1848ba2b7541b9808d3e7ad3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x748fd5e1db8e06c52454da88358dfaf272c4999b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x74b73a1d5afe66d90f111e9938815b9b69dc1d48` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x75eb3960366e810b281aab25752648965eeee7d6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x76583942b251f0577aa0599253661fba12de1863` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x766fd9cfd910fc8b6792b9f783549040a33d120b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x769634cf1f1e87f98b0f8f5796914ae7ae98d38d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x77a8075eabe6c1bf44774997b32d02287d0d8f0b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x781bac229654de37ebc512349ea2f1119b7ca233` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x784c4037dfda255a5cdcc0f1e9ee9efdec089f1f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x787ce403ae2de2ad4b8d30bb81245d67587266d2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x78a6972574b3f855ad53b69d290894f28ef4c40c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x7920130df165e0bab745e9eb1491039a3a333fc3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x79286bacc277db747730c6df0d77f9c23e066e70` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x79ce8808e5dd4d1c0c5829d51ce94c690c0f1dd1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x7a0199c670ecec2c92e22854a062212958daeb67` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x7a82522742c768358453c11b9211e68160793921` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x7b15ebbdaea4da27cfda66772fe4206dd4b70199` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x7bd3ff75c540ad16ecb8de0d7a17506387cb8fed` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x7c3935f11d8f0b5f942bf42f182c257bf712fca4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x7c53632979fdae454b92e3686c0ab17eadb33c9d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x7ce206a2157523c77c0c57e2b85ef0d0b51657ac` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x7e0fd95222761876d1fc13989c5e1a813c69f5cd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x7e84cdebb291832a6a2b30f1eb89197780ac1463` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x7f8625a64769613a597757f32d1d26b9f6066b88` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x7f8b4c77d3c5bafa7c266d13905f18ef676d3b2c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x801fef955135c64093329cce9b76ac9651d6365e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x808a69fb4843a6411f796e211f6309d6293762de` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x80c2ef2e3d1b73ee6fc6a5e1646fbc3d31b77452` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x80cfffc82525df15a505deb1ac8504a719fd3061` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x80d8dad3753887731ba8f92aee84df371b6a7790` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x814bb8f8fbe7511d24230e017a55005ddd723ac0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x82001ff41097a9b749c3c5610b6c22af473f254b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x829b154d4a51d08e017a07394b4f66433fea55d3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x83623c2fd431bac7d9a6cc835848c1982e2f9951` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x8441a1ee04ad4a2196b904e1c0df9a7095ecc595` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x84f1a6007224babca949ff707d0e43822ac03cdf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x8596a09b59daa579b249a93dcd2d195b5d60ed9a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x85feca7cec2b5fea5a08e8b0a0a681320cc971bf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x8683a400019b2b334954e3dadf6dd97c0aa0221e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x86c2c997c2a7230691b2f3dfa976a3e6c5087789` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x8788d5a81d13617a4ee909cf6d94c2b7179b9724` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x87a0af54a61e8217582fd42f9cf0b9ac415fbdaa` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x87ab3d3590bfabb70513a631d922b7f5b420d482` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x87c962c9f58aefcfc54bed057b54e5b5dcdc2cec` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x8832ea6af5eba3962b0c3eb607adeefdc1038139` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x88489a2e807b70a583c8753d3f53459a64135b5e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x89622f53e6c256aba44232500a05bb0911e0d2b5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x8a2845469f747c4b8bb94e99f8bac260a9737362` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x8a4af19509499db36ef98894563ca3a765f25f39` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x8abb30f845fc0dc349d632d262b1e45bcdb659a5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x8ac1279f1d950bf2983087c0ca75000ca5754dec` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x8ade2617acd03f4ff6031196705e1409b8943499` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x8b0bfcf9197c476821fb9a19b243143bc92ac912` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x8b2d72a99f338200cd109720691af5f067d8624c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x8b74419bae061db8b013c1b4874b1bd91507f0aa` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x8c141e0768fa7897726421456028119a9ec36af8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x8c227c54f350b205e7d03073711a87bd214b839d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x8cb836b1f1f1e769668fae29f2bb3690b7fe9d69` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x8d84826471aa46b4bfd14113dd8434aa737a6221` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x8e682873094e55791b0f0000a32393446f06be1a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x8e70f1fcd82c625d77ea5147a55afcda97ac4111` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x8ee14e0bfc415f8334dc8471f3c1ccf5aff8e967` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x8f55ac9c8074c22f21cb5e07bb270d461fe36d25` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x9041f7eea050475f98745c802f3e54609278e2b8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x905fbfc88bcdad7bcf4a08d4c8bee7b421cce87e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x90995622ded82dea4c9b8702cc8edb9812d0b22d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x90fe2302a8bdbca549cb10b5e2c67f034de3532a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x9134e7df6a924f245e2cba08c8ce1436c6cc30e5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x915e55863836e350cef6d10deb4762fbde1157d0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x919e74fe64c67a847f03fc5b9bbe1a44477cc509` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-225716 | `0x920f22e1e5da04504b765f8110ab96a20e6408bd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x92880fc9c4744df2af4be1b20c678d9a186f66bc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x9325f7db9e1b6c9b612771b57a99eae34c729cdb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x93889b732d49e53e9277ee87b675644265cda778` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x939462a14828cbe2d22caefe24204f502df627b0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x9412fc1a10f5e4849af1af627417b212792bb732` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x944ecbcfcc597db90527891203c9657af4be7361` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x9512f9dab218982136f4819b129d292776db694d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x95ea9a7034e49a0c8fa0bad251b1c5d03f1b7b05` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x962d150aa8d1fc9bba1110e5aadfc1473fe06511` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x967fa8eee39ba360aaa3e6c1ff6aa74f940d97b4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x96ebcb1ee4b91ef4b122ddb4c4c12760449f7eeb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x97034e8964680a8502c693f65027ba4bbfd79df5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x9731ac60dc8240c2ff7c2b3a14151a19fbc96ff7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x97561efdfdad967b145a87c2238f3ddc6d6115ec` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x97f92fc02e77e23aee845c180642e97f4bdce59a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x98ab8a64958750a0019128f9a617be051e52edd5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x9965fe3bb11914d3b5c4c248996ffe62743e1264` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x9b64efb27e7b8a5258107386b6417a0d4739e04c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x9d2758af2371a982176146a973d292e0cab1f5de` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x9e229cb863ef68a2d43f603bc0bbb068d6cb2bf1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x9f15358b292571491ca1fd3fef9d4c780cd06e2f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x9f7e961b73bcd1c5a73232c84e68e8a2661e27ce` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xa14b4c4fd031d60cc44cd99fe8c8f06b57941d02` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xa19c7470db6da771998a80fb0d56b433a05a1998` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xa1ce9c03360b0b495be2d86d7d5ea410f49b30d5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xa21248ee8ec8254b5892683014cf8cd81e01e689` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xa213f359f663a1003a3c280156368a9c25828db1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xa23356bc14c17aec601e1876745ea549e2d4e04e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xa297e91f388532e71919875deacfa40d9cbb56cb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xa2a16b9eeca73643855a426365c565280631eed8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xa2cc0473e8f42f8925be1e3c23c62b5ef0aaa31a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xa44bf869215cb6c82532444023c279be6aebe2c0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xa597b390bfbff9bf09cefefdc2bf64a45097f2d2` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-225717 | `0xa5bf14bb945297447fe96f6cd1b31b40d31175cb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xa5c6933940f3d486cf877c64287e4a15ae54d212` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xa5ea5f02ceb34f8527d842579cfc1f94861910c6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xa68477534d166c6bd9377ae17c1a0214c03014e4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xa6afd10e689b61112a3d8d8ed1269fcc2ff384dc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xa7504f4bb9e03776319222aa64013b71e50d73d8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xa78b2afb3a9327bba009f2eaea512ae49f0be3e2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xa7f7f8bec39ec59345d1612ca592e9fafab32dc7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xa84fe208b7adde1ab99e307ac5615c811c9830eb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xa87e753a99c727946200d4f9519ced5ebef55ebe` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xa9aa440328e2613f8ff5a14cae182092998887c4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xaaa6d3d437f466af4de326d862afe811b56fa0d1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xab0348f46db50b9713d127d67905d0b46036297d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xab710d9783c755b910762d4f8040bce3a6a0b959` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xab76ad5e79e23c40fe542e6c46e6ac36e63a35ab` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xabc0ff94b2bbffa16244bf48d334d7607b26435e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xac2b318043d6a99f1ac55bdb449e675a2881cdac` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-225719 | `0xac2f66971bc37eb443c4e11aab277e19d1c4864c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xac42c4006c81eae67f2fe813a3b11bdb207440c7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xacbcb93f3c6dd9f024c875dd8bef204a13299e81` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xace6f741b3d8654335fabb878021a944a16d4ea6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xad9bdfcd20dccb3817029cad7760e822ce33dbeb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xaf3d330ecdf9b3f8dcc777a39fa6b8de50010f38` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xaf460ad329b97778978603d8b09b5fe44a745968` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xaf7fd3f638f58c1cd59e26264956b75b53620bad` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xaf90716a6efb6c7cb03dc5ca9547b7bb2f644ce9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xafdd4b1ed8047358e488d53590831005b89c3873` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xb096579423f70f756193a89e5c271f7460352112` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xb16e9a0d136ed016a7402f5583ee321c69c9eee3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xb1b9a13c46e2614dd8a393cbf1ed7f04fdd118e5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xb1bf23b5a841f7c34d1bbaf86a58105a8bc1edb3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xb24ec495be99400e2ade3174dbb182dcbe9f712b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xb26b36ce707e833773c941b37ef73ca9124247eb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xb28123195e36000e7f91cdee90abb47a8f4e3bff` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xb2c1da5ff03a79cec3bfd0bce6e1bf0086ad0e4d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xb2cc2f2e1415aa297266ddf47d29398c39da1686` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xb3149426ee7643bd9d460f4326542fdf5b8582e0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xb333c395ffbfd4dfac9ea18be4220345d118d117` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xb3b64e5c62d1773786968abf9ab64d07a2ea2c9d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xb3f0890654bc92dbc99687a279651685ecdff004` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xb40c1efe17a5365010cf98977f32bbff2354dd1f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xb47d3089f0e05fded833673a52ffc960ff898423` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xb4bde04b6935ab00658e3259ee6fa221fb285bc6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xb554f5559088dccbf70a17a64a0ae508c9c13675` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xb5a15587cae20d7c72ad984f8d0c8a7ae51b28fd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xb62f241c0ec203e2e5326c70463c87f0dfa348a5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xb635e9cc798190c1311032b215612f2cb541caeb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xb6c9cbade01ada8342c8818eeb54483b500cc70d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xb700dd07dc03f05a2abd2b8b60bb400c9ec99b51` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xb704bffd9d24fa861d1a636eebd6272e25851a5d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xb73045501f4c59efb0b6efe8d907df17e27b22ea` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xb7e5a4dcb372932109f3548c55c976964a9f0ddc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xb8440d29b8b34b301b1554e7a56ea34773af3cdc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xb982024cf94eade07d242c5c70ac138319626cc3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xb99a741ef6856a62915bcf982a84ec76214d0b77` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xba173a0fc9315844696d645a537c4432cdb97f01` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xba1c447c6a9fa1c273a8aebfbbeb97c0f7ccdea1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xbd8fb017fefd3a981d97cfb50863c9afe933b8e5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xbddb77ed2b4c9f674c9e3ebd2422a0712e5d7354` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xbe2b2076de83bab9ad7e077d088e85755a50b016` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xbf7bc42c6e8c85c1200f4fe77face07920268feb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xbf9313da619f7404629d52bb57bbd55b3287f54f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xc007eb5a95d6a59b16b31cabc9d41e51df4a5eac` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xc010f5128fef5969841618d9e550a4883620c913` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xc0474aa9d954bf6e50e857b86e4d1563983e6832` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xc072ddca7f7e97135105a857ab4f33fb2f74f853` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xc09ea08e96f3c1175a7c3f5a50c73c2604215c86` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xc1bdbf2457e0b7f237cc0f922ca4b45e8723f35a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xc233078b3fb639ff6c807452110313b638fcb579` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xc2d4c39f9bf2422969fc133d49050ca898f8c960` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xc3182a4c473a822a5cafe82728fa232a7034fb22` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xc34910e758dfbaaab9e36561661769250f06d99e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xc3aac60925cc70bace6a4ac36615160855d8c6b9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xc3c17d643d76b4ce739deb61269d0e6c9f3a7f96` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-225720 | `0xc3fdbadc7c795ef1d6ba111e06ff8f16a20ea539` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xc4a933443c454adeb9341c341db4a8fc5a16be2c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xc513fdbae50d5dc6d5642f3da4e85513f8d31c67` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xc53d8e8c04f6ed3c53a0dd1dc8397b1d91f56ff8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xc53dd9d72fa49e3454c7bae9d036a2b3b05395ed` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-225721 | `0xc5bcd23f21b6288417eb6c760f8ac0fbb4bb8a56` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xc6b1375335f8de3d84162abf29a888d46ab6579c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xc70afe85c4e6ee631157b2d86cb22e31439c990a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xc76895e3511863c8296fab7fe64b85bbdbb96084` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xc799c1db54bb447bdd51e1e776ad7c8095dd59af` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xc7cdb7813660898ba5a749d2b79375094775b351` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xc802982b1f6ca0ab5cdd9c85040763c5278d4fe6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xc8051971518b31090615712ceba63ef7de9bb40a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xc8201cb0dc1b798b0e648e9d94e6d895b92648d3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xc87faf642f2011711e5b845db6fe1336d8914b5d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xc8abf19a3ee2642e5ae6bd3dcfb203a8d1229b4c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xc8c1002d4c9df7a450e184313d2ca5c373d96a9a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xc8d7627fd0dfeb91623983af87d76a067492be07` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xc8f8e277c98fca248bb1bd6b23f637cd35e283bc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xc9037a41cca9f74329289f62e944911768451b67` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xc9569ea7edbd65c0812fb6989f3a2c88f9231020` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xc9e908d24f13c18a0ab803a4acf469b37c1761e8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xca36c2e3bbc25c437040a6ba112d5406983a76a8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xcb8b71b6c411307d1a7996294756db15f7ebf953` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xcbce4c2ddab2b74aec7d0878de6ec8f0f0a3948a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xccd673767873bfd53910663d9d6d73cf9fb4be08` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xccf174c1d953ac6ca2d11314e39463849d5f68c4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xcd687503e6ee93e0bfa6084f0e71246b144801eb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xcda83d947e316029c8137f249088b5f9fd5ccc92` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xcdb4d156014dd7d0110792f32555ddc1f0cbe5b0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xcdc1d6f9fe05f5b6370e96318f0d0fa26938c7dd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xce1b4d653a3df68bdad81912334486309b21b855` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xce326877ae355ea2ce57cf617ab9f8ec7314fe4e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xce5c7cc33198efbd0ea4ae3769e141acaa554649` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xce84f765f6bbfd6e42a2f44ba458d13d2d4b84f5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xce9bfb6950ecd6da3aba4b3b930bd3c8fd3ea7e1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xcf34ec939a4aaf2418b4989d582b7e421e1fcad9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xd06d816daae530f5aa94903e89501f20beba6fb2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xd0f2301ec281702448f083a6f412aff7433f07c6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xd12181f43e46aee8ef5b0e2e0b84b2b184cca324` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xd16a5610e457852843fa7f839f684eaf2f03814b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xd1a62d2608fa49819bef9bcba5554603ed58ba99` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xd31841bacc27d131f647c4cbb4d2dbfe3026d0a6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xd318c7a463395faa96922f97c9f6b3b6f781c342` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xd31fec99dcfebd14ea61712fae308bb93a9d3a58` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xd413eefe8d1aa7fa3d13e86f5a423620d8bbdb64` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xd4e1389ab66f96f566660e380fd044f548a5b29a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xd4f130d1ccf79ad4c53a83f6b7ac864656f248db` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xd509e5652e38ad685bf23b5a1e8f53480cf6c3fe` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xd52662426a65cd5180f6537440de70fd75caa051` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xd62b8702b207360f149dcbcee23fb549db023691` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xd6c22874d45ce785f5b4a02e984c08e32d26a55e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xd783f1ba84230b0f3ce185a78a4ba4c7d976f14b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xd79250e1feaf8c3d28c9101a8e9561f97ec5d31d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xd82add3b8e013e570aa644938b71c6c8f1e269c3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xd8e71069f7eeff8c6605e527ee330f0851f04159` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xd9233117615a82d7a370137a6652ebe50cbc9e64` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xd93911e927b01983afac4e6b4ed375354a86ea6d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xd96d7a6e4cb987336447a56974aae03997742883` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xd977c22da7e628db279616cc76863468e1e72f63` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xd99df33dc8f1220e7a356ba0c001b53948abfc66` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xd9cdb30179524f45b5733b7b695087b570d67ca6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xd9ee0d7d9def7644b4f63fff648a13083ba48b23` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xdd8552708733249ee92f540a75f026b8327a1a07` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xde116a6187ab1e78100254d071333277feb1f462` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xde35542675f32af3e40f00153af664f3309123f5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xde91bc820f29d438f0dd1ed293584f108c0c8af1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xdea470d6a2669758d0d77c3dfae8b36634864ac4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xdee93dd8c699c2f87f0cea4f1548e0f5b7020b0e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xdf3d2e11b2682501b196fa8b6b467b1d45f01fd4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xe0b34138e08c3b16c5fdf68ad0fb39ff12691fbe` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xe0b960a0b208e435c27fc0c5411e5b7f09791343` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xe11928a57e988243be21614c1896fae16cc06fed` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xe132e585d29dd41bf456eebbd4cf103c991b262d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xe1893bffbacfd84a5d692abe7475b5a68413641c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xe1f2cfe69610ce97a2cf3e0b8da80b888e57c898` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xe22f8ef0323c415ceb063eb395dd7aba540b95d9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xe39f2e12fc0ee298c8b8437c246dfd946db8d198` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xe3ef6e077e3d5dc38cc02ea8ae46a2a680db82ed` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xe403f59965134cecd7afd867ae63e44d6fc2c0c0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xe439812d380ba7d356f2e573413359d68f8afc81` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xe47bf97eda64d6baae43f74c1b21ddf7da10b51d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xe48d72d0de7b6874527a1185e5c4fe4cfe69cd56` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xe59350c3a24ec31a008038edabf067b42ee3443a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xe5f96457175236778e9ec866cdde7523c852ce34` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xe6b206c2872719a758ea4fc118d93cda628ce5d3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xe6bd3759a3797f6a5d6d8d6ee3054ea9372c76d2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xe6c09370ae301af0280270804d73106295905371` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xe71d5f93a827b9c430ef2c00a5b8d9b93211588e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xe75c491872b429e4e4ef6e39adbdee561ffcc906` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xe7bb338459d4069f59d64e635a596110d4d3877c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xe8150690f6fe0ab877654f69f146160daf0d33b3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xe9ccec830487d769e7d483c7b0c7b76b69f48a2c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xea58bbf65c5e6b0433f28a7718b6f0257f6236c7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xeacc193342c444a9714256eb8dd3808273144e63` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xeae4a00c43bad1753020098c6a17a82c4d8bacaa` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xebfaaf4f079603d63cecc9ba47e8c93f64dd8c84` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xecfe685a104db4ed0d1060a3bc42981ed5515fc4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xedabf3b454e9542383d61e3e3cea41d2a54326b9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xeeb570ccd8c17bc38988c04a0678ea85593219d4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xeef5b0f1234665c8bf312c010be885839928e00a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xef72b3e1aeec40c922b4763db866c0cb04f136a9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xf06adaeff437e4206d70e304826069805f614f22` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xf114304d0653f8a3ab89c70cafde7f40c03b851f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xf17f37acfa5583fb2c87c97faf51b60addf1e614` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xf1c585b6e99a18803cb28d543eb721e5e62fbeb0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xf24be39f9d377cb3dc172b628bc3f5ce27b274f9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xf250d983d458f21347e2318ba5c150f2f934381c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xf309c3994f8ec5af8ee7c35fe898e9b88c019a41` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xf375be56fa805f19f6e8075f040ed1b84f603b21` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xf381768ec76eac3f077464118ea149af405e5f11` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xf39a2c2845954bd38b2bb1aa45dccbf52589fb35` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xf3c930b5000f783025eb9108255104a5f4ab08be` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xf4016f60ee4f2bb902ee2e7f4da41247b0678a6d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xf54ccece232e6f2a0b458ae8dea99fd819685e1f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xf65d8fbea6440d1e4ba91219088310b851946d80` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xf67b2798c651395f7392160d05e7c12be939e632` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xf6a5ba1bf79f50a25975ae701a679dfe873a3361` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xf6ceb05cc40e7bafb7c54b816f6ebdc677b9b964` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xf705cf0582d12969b09a1a043849172a9e83b6d2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xf73de8e1bcb1403f16ab4a72244f63e11f95258d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xf74738cc5afc74c06295b70568cf1935f83b584d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xf74e7f44cd12a426da5c39a09b84732b7272f026` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xf766176cb2a6d52740b47bc9e10967693a2079b9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xf77cec5159171563e96a69cbcc7cd9709e320dea` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xf7a1478b3f0065528462cfdbd0498d18384960b2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xf7b5cdc5d59397af6ce78edf5bc22ed200475bb6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xf8537b040d9cca3d9ce81f3fa2732e27dc163332` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xf867acce1b31b0f7d6e6814d6fc53d4e38900de4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xf8b515edc0e6f7fbd9b3194fb723dc5cb9c63167` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xf8f3f860a0108b5eadaf8aa92e798aeef5c5f245` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xf977bbb2d489d92315f74292158c9017aa733064` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xfa396c314271c6e0d4002801d09ebec6a51016df` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xfab552b8b1f87125a4994dd05403714b62e39684` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xfb371d91a3bc10ecbbcdf9cab40eb134f6e88659` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xfb817bc0137968919bb84bf2f4ecde11d926ae64` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xfcb0839e1333ce2a36afbbf8234b242b21e4d662` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xfd1212b53b207ea430f48ca83e8c9a3be99b0ea3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xfe23bbbdb42b548713673db1ddb8203b6daf9c11` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xfe62c928c26cf3d289e216fad03d8749297a2312` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xff1cbe37d70b03509b774d6d7006b81a9d655f44` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-225724 | `0xffd82f81513b207fb9d7d7835e178b6193f2ca96` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x0453e5a570db15bbf5cd37e0bff5ffdae2452754` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x07004aae8658a42c74e16c9d36de04f9650a793f` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-225725 | `0x097b15dc3bcfa7d08ea246c09b6a9a778e5b007b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-225726 | `0x09ad12552ec45f82be90b38dfe7b06332a680864` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-225727 | `0x1130af7108df6c797eb0a6788cd9d25e7312a072` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-225728 | `0x1219d121dab8b6c81b4a1789fb39e02bf19491bb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x1e09b0596d85ae9b00b86c6bf5e198a2e7858c91` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x1f36214be90531519a28c527d5ad742d3a8fce0c` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-225729 | `0x25c4d57c9eafa243a8d74249fe70855e50931ce7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x26d2f8ec6aa78aa08f38aaaf512aef210f88f524` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x28f673788ab53be52f9d933ca11b58d58b30e667` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x2a6e445a9c59d00416dbe7c9540e9f306e227f13` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x2b9bab8c7f4b9c14b5b92e9fdbbdb0b71b3bc614` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x30524894cf9f4820de093358210cb68f227df584` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x32cbe7d633e4b8b3a7651106473362d90dd96d98` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x387b2b50ead1977dcf238e2a819da7ed22317c93` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x397a999ba634088dd6bc15f054082930194b77c4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x3ae7640da3f92983e7fb425c3199bf2934d28cf7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x3e9ecf16ff30cdaf3495ab1ea4851bc48d008391` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-225730 | `0x47d3dcad6e47c519238cbe50da43e6a53c49cfc2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x4af054280609052471ef5acee2eeb2372b8624f2` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-225731 | `0x4b51801878325b48fbb97c7bbf47025f838331fc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x4e2ceee8ca7ea599cc75efac998499ff1889116a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x4f884ae54172b9e1716250163b84dcfdb2f135c1` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-225732 | `0x520bd22a62241172633ce6fc498383dd666e575d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x5527d5f23ff85e4b7a90c1335ca3dc3f777ea614` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x571736137403a16097ff49dcc6ea665399b4a5d5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x598ddb1becc52e3b70f38d11a385427f35ef4a2f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x6044d1b3ca08d52534459c486056d216fe32103b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x6629017c19c0f2eb776440eaa1f75eadd6b43605` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x66af07250fedbfa94cffee1d70d8960cc3cce502` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-225733 | `0x6aebbcea35600eda33055e1bb38a38b66f3b2fe2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x6f0175486f070d7b00d1a0b52de8f18a167a46f9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x791ca79dc3e1522102737a473e9d2afa3d441255` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x79233d0aa8ddb68d922171dc251941ba7bcab784` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x79ae48a9ba7b0eb9403af7f559d6801455c3b632` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x7c9a6d6dbdb2481b11bc117da69100aabd4262dc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x7f5e81f6772d1d8d11bdaeac87cfd06a1c00dfe1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x80552ff12e8b39af307f0b1faa88f2325091cd1b` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | arbitrum | n/a | `0x82af49447d8a07e3bd95bd0d56f35241523fbab1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x8f80f2deb6217113f91d1fcef434dd0a573368a3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x9d0eb05dd7a62860b280f1a0034b6396c596eff5` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-225734 | `0x9d5d0cb1b1210d4bf0e0fdcc6aca1583fa48f0fd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x9f54376ec1098838596a833430b49315b529661e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x9f72a87a6b34ff83e3e45b0b2decd34da671195c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xa02825de05aee12b629f2a074be45edfb3a0c075` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xa2bd874673ea116b1e85bf7095801ea6d8c01767` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xa7eeeae30e3c080a43257d3bb3ec3becc60cd762` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xacce5410ec7ad4c6f0fe60b39cba65f963807c56` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xaee2b3a95465598dadb2f72b1bf44c56077fcfa7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xb105eb50ecb3263fca6be93c07d96a796128ffe4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xb15f71a4dfbab300437b497760eb6d15dc7cc083` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xb40c1efe17a5365010cf98977f32bbff2354dd1f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xb8a3f04ae2f51ada0a0d9221d1cf7fdf203d3226` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xb91ac46c39c35472a59666d272009a68d9f65390` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xbbb3d3de73b972a018144fa2565f4bf9c8efa883` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xbe1616d66640befc06e2c1de62162e5482835d8b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xc10f3d1e2bc838a1f3068dde976e9a76bcd6799a` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-225735 | `0xc5ffd083b983aaf823a9b485b207f898ed2f32dc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xc656ec02b48f3e7a647d32bae3733f5a57fd8c21` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xc678d9dcbbdeef75ff0ef0b9469f0827e1468b22` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xc77d3595d070bf5cb272c8f11ec2ace6098b2dfc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xc83aa994f7d7ea481ee3ebeee273329522c8ec3a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xc97e5464a8671ab9ee22c81b155a054445174415` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xcc3ca8dab9637e867bec85071e74863120ee11f9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xcce17fd0fbb51f68ff2c658621cfc575aafd5ec4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xd1b9a787f6b377ecce3971adf4d27d897d8ba6c1` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-225736 | `0xd3ee8242269dab77eb04581f77692f0e8aa34a8d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xd5fea1cb361ffcd91b51243fb51e7d9361eec0ac` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-225737 | `0xd6b3c3607b9b645f540e09c94094beb22cadabc1` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-225738 | `0xddb545f6aa3654bf2d7badbcea216d2f20b9305c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xde88e251eda3c1c64f3f6945911eb12833cb3bc6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xe10395e9a1cb1fe1168bbf5fc087e8f8d44f1a8d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xe1853c95624e36b1d1d1f8b9dde82c0ad4d28d4f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xe2bfb59498ebea4467883ae5321a13e4cbdfb4a0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xe60eafda09b7cebb0ecdf2b5a0fe5fe43f30a19d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xe6924b4bbd9c9e76a5e2957752a9880fd3248857` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-225739 | `0xf12bfdf9e3aaf0694d94ab08ef2a6cba3f7f2899` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xf7dcee46d38fbaddca5d870b517b076c3651e633` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xf91700e94dcc3c9433afd427512fe597b31d4819` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xfc11e0e5aed43d009bbeb9b5bb669f40ff9243b7` | ❓ Unverified |

## Deployer Expansion Inventory

These rows are additive inventory from `project_contracts.discovery_source=deployer_expansion`; they do not change scope matching, coverage, or logic topography in this brief.

- Source: `project_contracts.discovery_source=deployer_expansion`
- Decision run: `deployer-candidate-production-20260712`
- Total contracts: 630
- Live contracts: 0
- Unknown liveness contracts: 630
- Source-verified contracts: 0
- Currently scope-matched contracts retained as-is: 0
- Contract rows sorted by chain, deployer, classification, contract name, then address.
- Classification counts: unverified unclassified=630

Showing first 200 of 630 contracts. The complete deployer expansion list is in `brief.json`.

| Chain | Classification | Contract | Address-Book Class | Role | Liveness | Source | Decision | Deployer |
|---|---|---|---|---|---|---|---|---|
| arbitrum | unverified unclassified | UnnamedContract<br>`0x387b2b50ead1977dcf238e2a819da7ed22317c93` | non_address_book | unknown | unknown | unverified | n/a | `0x6a3ed873e9c1a890d325bc2c304c80f9c0ff4487` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x0453e5a570db15bbf5cd37e0bff5ffdae2452754` | non_address_book | unknown | unknown | unverified | n/a | `0xb29cd9c87a624b940335d6d5e1d4aadf7d95beec` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x07004aae8658a42c74e16c9d36de04f9650a793f` | non_address_book | unknown | unknown | unverified | n/a | `0xb29cd9c87a624b940335d6d5e1d4aadf7d95beec` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x1e09b0596d85ae9b00b86c6bf5e198a2e7858c91` | non_address_book | unknown | unknown | unverified | n/a | `0xb29cd9c87a624b940335d6d5e1d4aadf7d95beec` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x1f36214be90531519a28c527d5ad742d3a8fce0c` | non_address_book | unknown | unknown | unverified | n/a | `0xb29cd9c87a624b940335d6d5e1d4aadf7d95beec` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x26d2f8ec6aa78aa08f38aaaf512aef210f88f524` | non_address_book | unknown | unknown | unverified | n/a | `0xb29cd9c87a624b940335d6d5e1d4aadf7d95beec` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x28f673788ab53be52f9d933ca11b58d58b30e667` | non_address_book | unknown | unknown | unverified | n/a | `0xb29cd9c87a624b940335d6d5e1d4aadf7d95beec` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x2a6e445a9c59d00416dbe7c9540e9f306e227f13` | non_address_book | unknown | unknown | unverified | n/a | `0xb29cd9c87a624b940335d6d5e1d4aadf7d95beec` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x2b9bab8c7f4b9c14b5b92e9fdbbdb0b71b3bc614` | non_address_book | unknown | unknown | unverified | n/a | `0xb29cd9c87a624b940335d6d5e1d4aadf7d95beec` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x30524894cf9f4820de093358210cb68f227df584` | non_address_book | unknown | unknown | unverified | n/a | `0xb29cd9c87a624b940335d6d5e1d4aadf7d95beec` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x32cbe7d633e4b8b3a7651106473362d90dd96d98` | non_address_book | unknown | unknown | unverified | n/a | `0xb29cd9c87a624b940335d6d5e1d4aadf7d95beec` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x397a999ba634088dd6bc15f054082930194b77c4` | non_address_book | unknown | unknown | unverified | n/a | `0xb29cd9c87a624b940335d6d5e1d4aadf7d95beec` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x3ae7640da3f92983e7fb425c3199bf2934d28cf7` | non_address_book | unknown | unknown | unverified | n/a | `0xb29cd9c87a624b940335d6d5e1d4aadf7d95beec` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x3e9ecf16ff30cdaf3495ab1ea4851bc48d008391` | non_address_book | unknown | unknown | unverified | n/a | `0xb29cd9c87a624b940335d6d5e1d4aadf7d95beec` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x4af054280609052471ef5acee2eeb2372b8624f2` | non_address_book | unknown | unknown | unverified | n/a | `0xb29cd9c87a624b940335d6d5e1d4aadf7d95beec` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x4e2ceee8ca7ea599cc75efac998499ff1889116a` | non_address_book | unknown | unknown | unverified | n/a | `0xb29cd9c87a624b940335d6d5e1d4aadf7d95beec` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x4f884ae54172b9e1716250163b84dcfdb2f135c1` | non_address_book | unknown | unknown | unverified | n/a | `0xb29cd9c87a624b940335d6d5e1d4aadf7d95beec` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x5527d5f23ff85e4b7a90c1335ca3dc3f777ea614` | non_address_book | unknown | unknown | unverified | n/a | `0xb29cd9c87a624b940335d6d5e1d4aadf7d95beec` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x571736137403a16097ff49dcc6ea665399b4a5d5` | non_address_book | unknown | unknown | unverified | n/a | `0xb29cd9c87a624b940335d6d5e1d4aadf7d95beec` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x598ddb1becc52e3b70f38d11a385427f35ef4a2f` | non_address_book | unknown | unknown | unverified | n/a | `0xb29cd9c87a624b940335d6d5e1d4aadf7d95beec` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x6044d1b3ca08d52534459c486056d216fe32103b` | non_address_book | unknown | unknown | unverified | n/a | `0xb29cd9c87a624b940335d6d5e1d4aadf7d95beec` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x6629017c19c0f2eb776440eaa1f75eadd6b43605` | non_address_book | unknown | unknown | unverified | n/a | `0xb29cd9c87a624b940335d6d5e1d4aadf7d95beec` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x66af07250fedbfa94cffee1d70d8960cc3cce502` | non_address_book | unknown | unknown | unverified | n/a | `0xb29cd9c87a624b940335d6d5e1d4aadf7d95beec` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x6f0175486f070d7b00d1a0b52de8f18a167a46f9` | non_address_book | unknown | unknown | unverified | n/a | `0xb29cd9c87a624b940335d6d5e1d4aadf7d95beec` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x791ca79dc3e1522102737a473e9d2afa3d441255` | non_address_book | unknown | unknown | unverified | n/a | `0xb29cd9c87a624b940335d6d5e1d4aadf7d95beec` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x79233d0aa8ddb68d922171dc251941ba7bcab784` | non_address_book | unknown | unknown | unverified | n/a | `0xb29cd9c87a624b940335d6d5e1d4aadf7d95beec` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x79ae48a9ba7b0eb9403af7f559d6801455c3b632` | non_address_book | unknown | unknown | unverified | n/a | `0xb29cd9c87a624b940335d6d5e1d4aadf7d95beec` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x7c9a6d6dbdb2481b11bc117da69100aabd4262dc` | non_address_book | unknown | unknown | unverified | n/a | `0xb29cd9c87a624b940335d6d5e1d4aadf7d95beec` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x7f5e81f6772d1d8d11bdaeac87cfd06a1c00dfe1` | non_address_book | unknown | unknown | unverified | n/a | `0xb29cd9c87a624b940335d6d5e1d4aadf7d95beec` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x80552ff12e8b39af307f0b1faa88f2325091cd1b` | non_address_book | unknown | unknown | unverified | n/a | `0xb29cd9c87a624b940335d6d5e1d4aadf7d95beec` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x8f80f2deb6217113f91d1fcef434dd0a573368a3` | non_address_book | unknown | unknown | unverified | n/a | `0xb29cd9c87a624b940335d6d5e1d4aadf7d95beec` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x9d0eb05dd7a62860b280f1a0034b6396c596eff5` | non_address_book | unknown | unknown | unverified | n/a | `0xb29cd9c87a624b940335d6d5e1d4aadf7d95beec` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x9f54376ec1098838596a833430b49315b529661e` | non_address_book | unknown | unknown | unverified | n/a | `0xb29cd9c87a624b940335d6d5e1d4aadf7d95beec` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x9f72a87a6b34ff83e3e45b0b2decd34da671195c` | non_address_book | unknown | unknown | unverified | n/a | `0xb29cd9c87a624b940335d6d5e1d4aadf7d95beec` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xa02825de05aee12b629f2a074be45edfb3a0c075` | non_address_book | unknown | unknown | unverified | n/a | `0xb29cd9c87a624b940335d6d5e1d4aadf7d95beec` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xa2bd874673ea116b1e85bf7095801ea6d8c01767` | non_address_book | unknown | unknown | unverified | n/a | `0xb29cd9c87a624b940335d6d5e1d4aadf7d95beec` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xa7eeeae30e3c080a43257d3bb3ec3becc60cd762` | non_address_book | unknown | unknown | unverified | n/a | `0xb29cd9c87a624b940335d6d5e1d4aadf7d95beec` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xacce5410ec7ad4c6f0fe60b39cba65f963807c56` | non_address_book | unknown | unknown | unverified | n/a | `0xb29cd9c87a624b940335d6d5e1d4aadf7d95beec` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xaee2b3a95465598dadb2f72b1bf44c56077fcfa7` | non_address_book | unknown | unknown | unverified | n/a | `0xb29cd9c87a624b940335d6d5e1d4aadf7d95beec` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xb105eb50ecb3263fca6be93c07d96a796128ffe4` | non_address_book | unknown | unknown | unverified | n/a | `0xb29cd9c87a624b940335d6d5e1d4aadf7d95beec` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xb15f71a4dfbab300437b497760eb6d15dc7cc083` | non_address_book | unknown | unknown | unverified | n/a | `0xb29cd9c87a624b940335d6d5e1d4aadf7d95beec` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xb40c1efe17a5365010cf98977f32bbff2354dd1f` | non_address_book | unknown | unknown | unverified | n/a | `0xb29cd9c87a624b940335d6d5e1d4aadf7d95beec` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xb8a3f04ae2f51ada0a0d9221d1cf7fdf203d3226` | non_address_book | unknown | unknown | unverified | n/a | `0xb29cd9c87a624b940335d6d5e1d4aadf7d95beec` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xb91ac46c39c35472a59666d272009a68d9f65390` | non_address_book | unknown | unknown | unverified | n/a | `0xb29cd9c87a624b940335d6d5e1d4aadf7d95beec` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xbbb3d3de73b972a018144fa2565f4bf9c8efa883` | non_address_book | unknown | unknown | unverified | n/a | `0xb29cd9c87a624b940335d6d5e1d4aadf7d95beec` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xbe1616d66640befc06e2c1de62162e5482835d8b` | non_address_book | unknown | unknown | unverified | n/a | `0xb29cd9c87a624b940335d6d5e1d4aadf7d95beec` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xc10f3d1e2bc838a1f3068dde976e9a76bcd6799a` | non_address_book | unknown | unknown | unverified | n/a | `0xb29cd9c87a624b940335d6d5e1d4aadf7d95beec` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xc656ec02b48f3e7a647d32bae3733f5a57fd8c21` | non_address_book | unknown | unknown | unverified | n/a | `0xb29cd9c87a624b940335d6d5e1d4aadf7d95beec` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xc678d9dcbbdeef75ff0ef0b9469f0827e1468b22` | non_address_book | unknown | unknown | unverified | n/a | `0xb29cd9c87a624b940335d6d5e1d4aadf7d95beec` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xc77d3595d070bf5cb272c8f11ec2ace6098b2dfc` | non_address_book | unknown | unknown | unverified | n/a | `0xb29cd9c87a624b940335d6d5e1d4aadf7d95beec` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xc83aa994f7d7ea481ee3ebeee273329522c8ec3a` | non_address_book | unknown | unknown | unverified | n/a | `0xb29cd9c87a624b940335d6d5e1d4aadf7d95beec` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xc97e5464a8671ab9ee22c81b155a054445174415` | non_address_book | unknown | unknown | unverified | n/a | `0xb29cd9c87a624b940335d6d5e1d4aadf7d95beec` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xcc3ca8dab9637e867bec85071e74863120ee11f9` | non_address_book | unknown | unknown | unverified | n/a | `0xb29cd9c87a624b940335d6d5e1d4aadf7d95beec` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xcce17fd0fbb51f68ff2c658621cfc575aafd5ec4` | non_address_book | unknown | unknown | unverified | n/a | `0xb29cd9c87a624b940335d6d5e1d4aadf7d95beec` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xd1b9a787f6b377ecce3971adf4d27d897d8ba6c1` | non_address_book | unknown | unknown | unverified | n/a | `0xb29cd9c87a624b940335d6d5e1d4aadf7d95beec` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xd5fea1cb361ffcd91b51243fb51e7d9361eec0ac` | non_address_book | unknown | unknown | unverified | n/a | `0xb29cd9c87a624b940335d6d5e1d4aadf7d95beec` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xde88e251eda3c1c64f3f6945911eb12833cb3bc6` | non_address_book | unknown | unknown | unverified | n/a | `0xb29cd9c87a624b940335d6d5e1d4aadf7d95beec` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xe10395e9a1cb1fe1168bbf5fc087e8f8d44f1a8d` | non_address_book | unknown | unknown | unverified | n/a | `0xb29cd9c87a624b940335d6d5e1d4aadf7d95beec` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xe1853c95624e36b1d1d1f8b9dde82c0ad4d28d4f` | non_address_book | unknown | unknown | unverified | n/a | `0xb29cd9c87a624b940335d6d5e1d4aadf7d95beec` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xe2bfb59498ebea4467883ae5321a13e4cbdfb4a0` | non_address_book | unknown | unknown | unverified | n/a | `0xb29cd9c87a624b940335d6d5e1d4aadf7d95beec` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xe60eafda09b7cebb0ecdf2b5a0fe5fe43f30a19d` | non_address_book | unknown | unknown | unverified | n/a | `0xb29cd9c87a624b940335d6d5e1d4aadf7d95beec` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xe6924b4bbd9c9e76a5e2957752a9880fd3248857` | non_address_book | unknown | unknown | unverified | n/a | `0xb29cd9c87a624b940335d6d5e1d4aadf7d95beec` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xf7dcee46d38fbaddca5d870b517b076c3651e633` | non_address_book | unknown | unknown | unverified | n/a | `0xb29cd9c87a624b940335d6d5e1d4aadf7d95beec` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xf91700e94dcc3c9433afd427512fe597b31d4819` | non_address_book | unknown | unknown | unverified | n/a | `0xb29cd9c87a624b940335d6d5e1d4aadf7d95beec` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xfc11e0e5aed43d009bbeb9b5bb669f40ff9243b7` | non_address_book | unknown | unknown | unverified | n/a | `0xb29cd9c87a624b940335d6d5e1d4aadf7d95beec` |
| polygon | unverified unclassified | UnnamedContract<br>`0x01abfffb9bad30ffc80d6ab27692910fa0c9e7f3` | non_address_book | unknown | unknown | unverified | n/a | `0xb29cd9c87a624b940335d6d5e1d4aadf7d95beec` |
| polygon | unverified unclassified | UnnamedContract<br>`0x01e44a424870f9dd21976f50373e88dc6a83ca64` | non_address_book | unknown | unknown | unverified | n/a | `0xb29cd9c87a624b940335d6d5e1d4aadf7d95beec` |
| polygon | unverified unclassified | UnnamedContract<br>`0x03a44eed2c10466aa5ff8b98b6fc591ef4be45a4` | non_address_book | unknown | unknown | unverified | n/a | `0xb29cd9c87a624b940335d6d5e1d4aadf7d95beec` |
| polygon | unverified unclassified | UnnamedContract<br>`0x05029fba6d9f30c2af742858a09209d625c7b59f` | non_address_book | unknown | unknown | unverified | n/a | `0xb29cd9c87a624b940335d6d5e1d4aadf7d95beec` |
| polygon | unverified unclassified | UnnamedContract<br>`0x056495ece22485bb56ff21f127c0201e9fa60f9d` | non_address_book | unknown | unknown | unverified | n/a | `0xb29cd9c87a624b940335d6d5e1d4aadf7d95beec` |
| polygon | unverified unclassified | UnnamedContract<br>`0x06118b6b2baf374b8434d787c94d4ddcbbb29aad` | non_address_book | unknown | unknown | unverified | n/a | `0xb29cd9c87a624b940335d6d5e1d4aadf7d95beec` |
| polygon | unverified unclassified | UnnamedContract<br>`0x0640fb36651da50fd466d342d37b9cc993be8d9d` | non_address_book | unknown | unknown | unverified | n/a | `0xb29cd9c87a624b940335d6d5e1d4aadf7d95beec` |
| polygon | unverified unclassified | UnnamedContract<br>`0x064b50127186e5db97c88ac111b22388287bfe41` | non_address_book | unknown | unknown | unverified | n/a | `0xb29cd9c87a624b940335d6d5e1d4aadf7d95beec` |
| polygon | unverified unclassified | UnnamedContract<br>`0x0669868a7861fb15c2366d9bcee23026bd344dff` | non_address_book | unknown | unknown | unverified | n/a | `0xb29cd9c87a624b940335d6d5e1d4aadf7d95beec` |
| polygon | unverified unclassified | UnnamedContract<br>`0x0722e0485ba041c29206b4c050a1468c64f8147a` | non_address_book | unknown | unknown | unverified | n/a | `0xb29cd9c87a624b940335d6d5e1d4aadf7d95beec` |
| polygon | unverified unclassified | UnnamedContract<br>`0x078cf16ba381e418672211f07f176aa7cdb0282e` | non_address_book | unknown | unknown | unverified | n/a | `0xb29cd9c87a624b940335d6d5e1d4aadf7d95beec` |
| polygon | unverified unclassified | UnnamedContract<br>`0x08546423c2c0b958704bfc8899e0b578b783df29` | non_address_book | unknown | unknown | unverified | n/a | `0xb29cd9c87a624b940335d6d5e1d4aadf7d95beec` |
| polygon | unverified unclassified | UnnamedContract<br>`0x08a83fc898d4a7ce1ab22da42bc1d2efb624e98a` | non_address_book | unknown | unknown | unverified | n/a | `0xb29cd9c87a624b940335d6d5e1d4aadf7d95beec` |
| polygon | unverified unclassified | UnnamedContract<br>`0x08f905ef56aa49cbb23c9ddddea964707a5cada5` | non_address_book | unknown | unknown | unverified | n/a | `0xb29cd9c87a624b940335d6d5e1d4aadf7d95beec` |
| polygon | unverified unclassified | UnnamedContract<br>`0x0962843d9a6826afb67e79620ed86538832f01a8` | non_address_book | unknown | unknown | unverified | n/a | `0xb29cd9c87a624b940335d6d5e1d4aadf7d95beec` |
| polygon | unverified unclassified | UnnamedContract<br>`0x0aff4355036b682dc81d549614ad46bac51662cf` | non_address_book | unknown | unknown | unverified | n/a | `0xb29cd9c87a624b940335d6d5e1d4aadf7d95beec` |
| polygon | unverified unclassified | UnnamedContract<br>`0x0b5a70097ce4d88ab9a1ffeb97ce513383668488` | non_address_book | unknown | unknown | unverified | n/a | `0xb29cd9c87a624b940335d6d5e1d4aadf7d95beec` |
| polygon | unverified unclassified | UnnamedContract<br>`0x0c2ad9f04b4da3eb3dfb22209e79353bdbebac2a` | non_address_book | unknown | unknown | unverified | n/a | `0xb29cd9c87a624b940335d6d5e1d4aadf7d95beec` |
| polygon | unverified unclassified | UnnamedContract<br>`0x0cdfa37c6d99c012304359e57a9f4837e588474e` | non_address_book | unknown | unknown | unverified | n/a | `0xb29cd9c87a624b940335d6d5e1d4aadf7d95beec` |
| polygon | unverified unclassified | UnnamedContract<br>`0x0d4b8d725ea7b8a3da121f07257ba6b497684c24` | non_address_book | unknown | unknown | unverified | n/a | `0xb29cd9c87a624b940335d6d5e1d4aadf7d95beec` |
| polygon | unverified unclassified | UnnamedContract<br>`0x0d506dfad50a3470bb0409140d563665ae05510a` | non_address_book | unknown | unknown | unverified | n/a | `0xb29cd9c87a624b940335d6d5e1d4aadf7d95beec` |
| polygon | unverified unclassified | UnnamedContract<br>`0x0dacf116208ddb94135d46847b46d2625453fdff` | non_address_book | unknown | unknown | unverified | n/a | `0xb29cd9c87a624b940335d6d5e1d4aadf7d95beec` |
| polygon | unverified unclassified | UnnamedContract<br>`0x0dd5ab97901eada1bdd53d275424a5a2482f32ef` | non_address_book | unknown | unknown | unverified | n/a | `0xb29cd9c87a624b940335d6d5e1d4aadf7d95beec` |
| polygon | unverified unclassified | UnnamedContract<br>`0x0ef43f90339d7e4488124005b5a6a902b913e88f` | non_address_book | unknown | unknown | unverified | n/a | `0xb29cd9c87a624b940335d6d5e1d4aadf7d95beec` |
| polygon | unverified unclassified | UnnamedContract<br>`0x0f55a366e2945c914a2c945fbdeb5d9e7679dd05` | non_address_book | unknown | unknown | unverified | n/a | `0xb29cd9c87a624b940335d6d5e1d4aadf7d95beec` |
| polygon | unverified unclassified | UnnamedContract<br>`0x1002177c67d3c59acdfacee02fad8ed570db3007` | non_address_book | unknown | unknown | unverified | n/a | `0xb29cd9c87a624b940335d6d5e1d4aadf7d95beec` |
| polygon | unverified unclassified | UnnamedContract<br>`0x10509cba26d155c3a9fbbef850261bb4b3e8b648` | non_address_book | unknown | unknown | unverified | n/a | `0xb29cd9c87a624b940335d6d5e1d4aadf7d95beec` |
| polygon | unverified unclassified | UnnamedContract<br>`0x10cd4647a918614296a2671bbe7f3b26f24a10a9` | non_address_book | unknown | unknown | unverified | n/a | `0xb29cd9c87a624b940335d6d5e1d4aadf7d95beec` |
| polygon | unverified unclassified | UnnamedContract<br>`0x11b98d98c4b51a10ab5b7b303421f66e6c922823` | non_address_book | unknown | unknown | unverified | n/a | `0xb29cd9c87a624b940335d6d5e1d4aadf7d95beec` |
| polygon | unverified unclassified | UnnamedContract<br>`0x12932463e2023d732ccf7cc17b7654acea1c5fdd` | non_address_book | unknown | unknown | unverified | n/a | `0xb29cd9c87a624b940335d6d5e1d4aadf7d95beec` |
| polygon | unverified unclassified | UnnamedContract<br>`0x12bb502492cc1a42aaacfc5fe618497807a98122` | non_address_book | unknown | unknown | unverified | n/a | `0xb29cd9c87a624b940335d6d5e1d4aadf7d95beec` |
| polygon | unverified unclassified | UnnamedContract<br>`0x12cb939d190f045e5d1a3aeca2861bbe66a012f4` | non_address_book | unknown | unknown | unverified | n/a | `0xb29cd9c87a624b940335d6d5e1d4aadf7d95beec` |
| polygon | unverified unclassified | UnnamedContract<br>`0x134399f6096174d10078dc24e0a0e1bd2995d612` | non_address_book | unknown | unknown | unverified | n/a | `0xb29cd9c87a624b940335d6d5e1d4aadf7d95beec` |
| polygon | unverified unclassified | UnnamedContract<br>`0x1390cff4b27a1283bb023302bacd87a99be07b16` | non_address_book | unknown | unknown | unverified | n/a | `0xb29cd9c87a624b940335d6d5e1d4aadf7d95beec` |
| polygon | unverified unclassified | UnnamedContract<br>`0x13d9be324b3a3b4ef46aa16eed750ead90d18b0b` | non_address_book | unknown | unknown | unverified | n/a | `0xb29cd9c87a624b940335d6d5e1d4aadf7d95beec` |
| polygon | unverified unclassified | UnnamedContract<br>`0x14625ce18010a2ab40155adc150bf04b7946709b` | non_address_book | unknown | unknown | unverified | n/a | `0xb29cd9c87a624b940335d6d5e1d4aadf7d95beec` |
| polygon | unverified unclassified | UnnamedContract<br>`0x1507c1767d618e1e48457b205896fc05c86fa138` | non_address_book | unknown | unknown | unverified | n/a | `0xb29cd9c87a624b940335d6d5e1d4aadf7d95beec` |
| polygon | unverified unclassified | UnnamedContract<br>`0x15a4eb57f0116ab64bba928b75262eb96e084cab` | non_address_book | unknown | unknown | unverified | n/a | `0xb29cd9c87a624b940335d6d5e1d4aadf7d95beec` |
| polygon | unverified unclassified | UnnamedContract<br>`0x15db37461e006ade226fe15fe229e58a01cb1368` | non_address_book | unknown | unknown | unverified | n/a | `0xb29cd9c87a624b940335d6d5e1d4aadf7d95beec` |
| polygon | unverified unclassified | UnnamedContract<br>`0x160f08573776657a9e798b4d612e606b757865c7` | non_address_book | unknown | unknown | unverified | n/a | `0xb29cd9c87a624b940335d6d5e1d4aadf7d95beec` |
| polygon | unverified unclassified | UnnamedContract<br>`0x16d02589d1ed4e67bf836f6b275958864decf172` | non_address_book | unknown | unknown | unverified | n/a | `0xb29cd9c87a624b940335d6d5e1d4aadf7d95beec` |
| polygon | unverified unclassified | UnnamedContract<br>`0x1700de77760cc33e72ad6315c2dd66c32b934aba` | non_address_book | unknown | unknown | unverified | n/a | `0xb29cd9c87a624b940335d6d5e1d4aadf7d95beec` |
| polygon | unverified unclassified | UnnamedContract<br>`0x17af4828f5b4d668428ff7c0403f46575801f5a2` | non_address_book | unknown | unknown | unverified | n/a | `0xb29cd9c87a624b940335d6d5e1d4aadf7d95beec` |
| polygon | unverified unclassified | UnnamedContract<br>`0x18679826d7321184db76df7b52d1c9a2c62a53fb` | non_address_book | unknown | unknown | unverified | n/a | `0xb29cd9c87a624b940335d6d5e1d4aadf7d95beec` |
| polygon | unverified unclassified | UnnamedContract<br>`0x187f8cff5827c661dde080a97b122c65f1cc928f` | non_address_book | unknown | unknown | unverified | n/a | `0xb29cd9c87a624b940335d6d5e1d4aadf7d95beec` |
| polygon | unverified unclassified | UnnamedContract<br>`0x18c9e6b2f185f57ed27759c8a630ab3fd031f6d1` | non_address_book | unknown | unknown | unverified | n/a | `0xb29cd9c87a624b940335d6d5e1d4aadf7d95beec` |
| polygon | unverified unclassified | UnnamedContract<br>`0x1943ec49c9c5134e4a1577c3eecea4574316ce08` | non_address_book | unknown | unknown | unverified | n/a | `0xb29cd9c87a624b940335d6d5e1d4aadf7d95beec` |
| polygon | unverified unclassified | UnnamedContract<br>`0x1a93f901cf1130cc78f43b0495a0664adf5cf968` | non_address_book | unknown | unknown | unverified | n/a | `0xb29cd9c87a624b940335d6d5e1d4aadf7d95beec` |
| polygon | unverified unclassified | UnnamedContract<br>`0x1ae9dba8bdb26af9ca264b8e0802f07b1b2e0c84` | non_address_book | unknown | unknown | unverified | n/a | `0xb29cd9c87a624b940335d6d5e1d4aadf7d95beec` |
| polygon | unverified unclassified | UnnamedContract<br>`0x1b53c2707c0681e5fac884926c4634c072b408e6` | non_address_book | unknown | unknown | unverified | n/a | `0xb29cd9c87a624b940335d6d5e1d4aadf7d95beec` |
| polygon | unverified unclassified | UnnamedContract<br>`0x1c048c773fdf662880b86c9c0db0512cfa4fd68e` | non_address_book | unknown | unknown | unverified | n/a | `0xb29cd9c87a624b940335d6d5e1d4aadf7d95beec` |
| polygon | unverified unclassified | UnnamedContract<br>`0x1c2b2bfc5f88a8654e89859eea6eefc4b1bc7ed3` | non_address_book | unknown | unknown | unverified | n/a | `0xb29cd9c87a624b940335d6d5e1d4aadf7d95beec` |
| polygon | unverified unclassified | UnnamedContract<br>`0x1cb5c30406b445855d3648d649be9a77e5229879` | non_address_book | unknown | unknown | unverified | n/a | `0xb29cd9c87a624b940335d6d5e1d4aadf7d95beec` |
| polygon | unverified unclassified | UnnamedContract<br>`0x1d3acfd994b07c503d2e6628bd2fade6d3e7a70a` | non_address_book | unknown | unknown | unverified | n/a | `0xb29cd9c87a624b940335d6d5e1d4aadf7d95beec` |
| polygon | unverified unclassified | UnnamedContract<br>`0x1d93fe432bf5136b0af3d36354e124d163f70aaf` | non_address_book | unknown | unknown | unverified | n/a | `0xb29cd9c87a624b940335d6d5e1d4aadf7d95beec` |
| polygon | unverified unclassified | UnnamedContract<br>`0x1db0020955aa206e5090298a9fa7a7022a06ccf1` | non_address_book | unknown | unknown | unverified | n/a | `0xb29cd9c87a624b940335d6d5e1d4aadf7d95beec` |
| polygon | unverified unclassified | UnnamedContract<br>`0x1ddc1f9fe0e6e7bf9be421ca818d39004f3fdaa8` | non_address_book | unknown | unknown | unverified | n/a | `0xb29cd9c87a624b940335d6d5e1d4aadf7d95beec` |
| polygon | unverified unclassified | UnnamedContract<br>`0x1e4b870ce3973419778734b92bcab0be42a55514` | non_address_book | unknown | unknown | unverified | n/a | `0xb29cd9c87a624b940335d6d5e1d4aadf7d95beec` |
| polygon | unverified unclassified | UnnamedContract<br>`0x1e6e718ec78b888694eb837c1226663f90838eaf` | non_address_book | unknown | unknown | unverified | n/a | `0xb29cd9c87a624b940335d6d5e1d4aadf7d95beec` |
| polygon | unverified unclassified | UnnamedContract<br>`0x1f1bcfe9cea35affc5eb7398c1e1d1e29a4fd504` | non_address_book | unknown | unknown | unverified | n/a | `0xb29cd9c87a624b940335d6d5e1d4aadf7d95beec` |
| polygon | unverified unclassified | UnnamedContract<br>`0x1f2e603fdeea3e6a190dfdb889b4ad9fb6dcddb6` | non_address_book | unknown | unknown | unverified | n/a | `0xb29cd9c87a624b940335d6d5e1d4aadf7d95beec` |
| polygon | unverified unclassified | UnnamedContract<br>`0x1f50937237d6f1da4d53c7d616e64e01c8518ebb` | non_address_book | unknown | unknown | unverified | n/a | `0xb29cd9c87a624b940335d6d5e1d4aadf7d95beec` |
| polygon | unverified unclassified | UnnamedContract<br>`0x2024650a08b6eb9750389a1c0a502ee5753a350b` | non_address_book | unknown | unknown | unverified | n/a | `0xb29cd9c87a624b940335d6d5e1d4aadf7d95beec` |
| polygon | unverified unclassified | UnnamedContract<br>`0x2088616b462a30a715bb9fa01ee39cb49cb70c67` | non_address_book | unknown | unknown | unverified | n/a | `0xb29cd9c87a624b940335d6d5e1d4aadf7d95beec` |
| polygon | unverified unclassified | UnnamedContract<br>`0x20f3305df56b29ae556441143101cb0dc47bcae4` | non_address_book | unknown | unknown | unverified | n/a | `0xb29cd9c87a624b940335d6d5e1d4aadf7d95beec` |
| polygon | unverified unclassified | UnnamedContract<br>`0x213e2f8ce690bb937ae373972e6ca29e6344eda7` | non_address_book | unknown | unknown | unverified | n/a | `0xb29cd9c87a624b940335d6d5e1d4aadf7d95beec` |
| polygon | unverified unclassified | UnnamedContract<br>`0x2166bab868a87e0e1ad76ce8af79b2d093339f8f` | non_address_book | unknown | unknown | unverified | n/a | `0xb29cd9c87a624b940335d6d5e1d4aadf7d95beec` |
| polygon | unverified unclassified | UnnamedContract<br>`0x2183c2c05e3ab9eb3e1fbe88fbedb27817991d2e` | non_address_book | unknown | unknown | unverified | n/a | `0xb29cd9c87a624b940335d6d5e1d4aadf7d95beec` |
| polygon | unverified unclassified | UnnamedContract<br>`0x21892e590f73f5feb9d32ac995ca89156e74422e` | non_address_book | unknown | unknown | unverified | n/a | `0xb29cd9c87a624b940335d6d5e1d4aadf7d95beec` |
| polygon | unverified unclassified | UnnamedContract<br>`0x21bac5f541067b34fcb4068d482b6cbf177882c1` | non_address_book | unknown | unknown | unverified | n/a | `0xb29cd9c87a624b940335d6d5e1d4aadf7d95beec` |
| polygon | unverified unclassified | UnnamedContract<br>`0x227f8bc8ae0026196ca1a35c04e589327cc95679` | non_address_book | unknown | unknown | unverified | n/a | `0xb29cd9c87a624b940335d6d5e1d4aadf7d95beec` |
| polygon | unverified unclassified | UnnamedContract<br>`0x22abbaba2c6d4e7e2af225ec3aabe6fdcf1cdad5` | non_address_book | unknown | unknown | unverified | n/a | `0xb29cd9c87a624b940335d6d5e1d4aadf7d95beec` |
| polygon | unverified unclassified | UnnamedContract<br>`0x22d766eb944ac3f096290d8022c8112ec2eadccb` | non_address_book | unknown | unknown | unverified | n/a | `0xb29cd9c87a624b940335d6d5e1d4aadf7d95beec` |
| polygon | unverified unclassified | UnnamedContract<br>`0x230787c37f8adf1e908c7f5d611570a49e7130a7` | non_address_book | unknown | unknown | unverified | n/a | `0xb29cd9c87a624b940335d6d5e1d4aadf7d95beec` |
| polygon | unverified unclassified | UnnamedContract<br>`0x23301ae002c19e5c5be472ea4c0246153df14454` | non_address_book | unknown | unknown | unverified | n/a | `0xb29cd9c87a624b940335d6d5e1d4aadf7d95beec` |
| polygon | unverified unclassified | UnnamedContract<br>`0x234a3794000f844e1e44322a31ac8b698ed15b78` | non_address_book | unknown | unknown | unverified | n/a | `0xb29cd9c87a624b940335d6d5e1d4aadf7d95beec` |
| polygon | unverified unclassified | UnnamedContract<br>`0x235cd9a4af69c3cdc2cee34e8b58380f1a254331` | non_address_book | unknown | unknown | unverified | n/a | `0xb29cd9c87a624b940335d6d5e1d4aadf7d95beec` |
| polygon | unverified unclassified | UnnamedContract<br>`0x239d9ff4b2d24e8f32a836804f65118f4733c50a` | non_address_book | unknown | unknown | unverified | n/a | `0xb29cd9c87a624b940335d6d5e1d4aadf7d95beec` |
| polygon | unverified unclassified | UnnamedContract<br>`0x24be2d9710aa02d7eccf8bfdc27321c336cadb5c` | non_address_book | unknown | unknown | unverified | n/a | `0xb29cd9c87a624b940335d6d5e1d4aadf7d95beec` |
| polygon | unverified unclassified | UnnamedContract<br>`0x2558b34a1e235a6a4b2d206f03e7eb8908bea74d` | non_address_book | unknown | unknown | unverified | n/a | `0xb29cd9c87a624b940335d6d5e1d4aadf7d95beec` |
| polygon | unverified unclassified | UnnamedContract<br>`0x262fe96875729d8bc681ab186e37327eb16e0cab` | non_address_book | unknown | unknown | unverified | n/a | `0xb29cd9c87a624b940335d6d5e1d4aadf7d95beec` |
| polygon | unverified unclassified | UnnamedContract<br>`0x2646e0034d05cbf4d71102f0efb9b9242d792677` | non_address_book | unknown | unknown | unverified | n/a | `0xb29cd9c87a624b940335d6d5e1d4aadf7d95beec` |
| polygon | unverified unclassified | UnnamedContract<br>`0x265a775ac31d32e1de6e5abb4da95740f12c1354` | non_address_book | unknown | unknown | unverified | n/a | `0xb29cd9c87a624b940335d6d5e1d4aadf7d95beec` |
| polygon | unverified unclassified | UnnamedContract<br>`0x267218526f34c8cf603aa00fcbb9c1f9170cb6e7` | non_address_book | unknown | unknown | unverified | n/a | `0xb29cd9c87a624b940335d6d5e1d4aadf7d95beec` |
| polygon | unverified unclassified | UnnamedContract<br>`0x2675055c945e09568361f7f876f9596f1dada3f3` | non_address_book | unknown | unknown | unverified | n/a | `0xb29cd9c87a624b940335d6d5e1d4aadf7d95beec` |
| polygon | unverified unclassified | UnnamedContract<br>`0x26dbe6d8589d18a1dbf99fe2fec6afc6fcf93e43` | non_address_book | unknown | unknown | unverified | n/a | `0xb29cd9c87a624b940335d6d5e1d4aadf7d95beec` |
| polygon | unverified unclassified | UnnamedContract<br>`0x27957d9e35bb343ab5a18493e6f947d736a6ef7c` | non_address_book | unknown | unknown | unverified | n/a | `0xb29cd9c87a624b940335d6d5e1d4aadf7d95beec` |
| polygon | unverified unclassified | UnnamedContract<br>`0x2796399436d3841c4eb581eb9a7f4be4106eb4a6` | non_address_book | unknown | unknown | unverified | n/a | `0xb29cd9c87a624b940335d6d5e1d4aadf7d95beec` |
| polygon | unverified unclassified | UnnamedContract<br>`0x294674bfee83bb96bd3c18af01941b2dd079e03e` | non_address_book | unknown | unknown | unverified | n/a | `0xb29cd9c87a624b940335d6d5e1d4aadf7d95beec` |
| polygon | unverified unclassified | UnnamedContract<br>`0x2978eabd1c085109259d49aeff53bc3f1e2974e0` | non_address_book | unknown | unknown | unverified | n/a | `0xb29cd9c87a624b940335d6d5e1d4aadf7d95beec` |
| polygon | unverified unclassified | UnnamedContract<br>`0x2990e168c73fa952b466bc7e43c27d1ca1d48152` | non_address_book | unknown | unknown | unverified | n/a | `0xb29cd9c87a624b940335d6d5e1d4aadf7d95beec` |
| polygon | unverified unclassified | UnnamedContract<br>`0x29a620d138d4bdd813bd12de226cb7799d4b1961` | non_address_book | unknown | unknown | unverified | n/a | `0xb29cd9c87a624b940335d6d5e1d4aadf7d95beec` |
| polygon | unverified unclassified | UnnamedContract<br>`0x2a3c41ee8bb00c266ce24f832255b0b68b40dedf` | non_address_book | unknown | unknown | unverified | n/a | `0xb29cd9c87a624b940335d6d5e1d4aadf7d95beec` |
| polygon | unverified unclassified | UnnamedContract<br>`0x2a8591d74edef0421ae334f21d69fe9e06dc2566` | non_address_book | unknown | unknown | unverified | n/a | `0xb29cd9c87a624b940335d6d5e1d4aadf7d95beec` |
| polygon | unverified unclassified | UnnamedContract<br>`0x2afc0be55d075db79f36fe81aaa995d66bc050bc` | non_address_book | unknown | unknown | unverified | n/a | `0xb29cd9c87a624b940335d6d5e1d4aadf7d95beec` |
| polygon | unverified unclassified | UnnamedContract<br>`0x2bede09dedec427f48827f7ab7e2ac1f43e7c319` | non_address_book | unknown | unknown | unverified | n/a | `0xb29cd9c87a624b940335d6d5e1d4aadf7d95beec` |
| polygon | unverified unclassified | UnnamedContract<br>`0x2c163328f7ea989d803d5449a17c36921e37f89d` | non_address_book | unknown | unknown | unverified | n/a | `0xb29cd9c87a624b940335d6d5e1d4aadf7d95beec` |
| polygon | unverified unclassified | UnnamedContract<br>`0x2c571d7c89bf17a666f72e81a17468c2701b4d70` | non_address_book | unknown | unknown | unverified | n/a | `0xb29cd9c87a624b940335d6d5e1d4aadf7d95beec` |
| polygon | unverified unclassified | UnnamedContract<br>`0x2cf5497411493a80173111e159b4551f10d32f27` | non_address_book | unknown | unknown | unverified | n/a | `0xb29cd9c87a624b940335d6d5e1d4aadf7d95beec` |
| polygon | unverified unclassified | UnnamedContract<br>`0x2d1041a157c79220e8bd5bc7bf40732b90d5700b` | non_address_book | unknown | unknown | unverified | n/a | `0xb29cd9c87a624b940335d6d5e1d4aadf7d95beec` |
| polygon | unverified unclassified | UnnamedContract<br>`0x2dd30a06bcaeaa6cb28447d3444389f5c6b89d35` | non_address_book | unknown | unknown | unverified | n/a | `0xb29cd9c87a624b940335d6d5e1d4aadf7d95beec` |
| polygon | unverified unclassified | UnnamedContract<br>`0x2ddd44526945186f734edff820f98acf70bfd449` | non_address_book | unknown | unknown | unverified | n/a | `0xb29cd9c87a624b940335d6d5e1d4aadf7d95beec` |
| polygon | unverified unclassified | UnnamedContract<br>`0x2e58dfca2cd18bc8d5b09085e7ae3cbe8017993a` | non_address_book | unknown | unknown | unverified | n/a | `0xb29cd9c87a624b940335d6d5e1d4aadf7d95beec` |
| polygon | unverified unclassified | UnnamedContract<br>`0x2ebcb0034d1e9ecc4a42e11c6c074ccad4a189cb` | non_address_book | unknown | unknown | unverified | n/a | `0xb29cd9c87a624b940335d6d5e1d4aadf7d95beec` |
| polygon | unverified unclassified | UnnamedContract<br>`0x2f10462311f175b3ef965a8fc5d15d5a98173695` | non_address_book | unknown | unknown | unverified | n/a | `0xb29cd9c87a624b940335d6d5e1d4aadf7d95beec` |
| polygon | unverified unclassified | UnnamedContract<br>`0x2f2454cb0b64cea82b9cf5f9177ee4c3929d3a9c` | non_address_book | unknown | unknown | unverified | n/a | `0xb29cd9c87a624b940335d6d5e1d4aadf7d95beec` |
| polygon | unverified unclassified | UnnamedContract<br>`0x2f4901f3bce66b62d4b307f6dce246c188afffe4` | non_address_book | unknown | unknown | unverified | n/a | `0xb29cd9c87a624b940335d6d5e1d4aadf7d95beec` |
| polygon | unverified unclassified | UnnamedContract<br>`0x2fc1b142af4d0422f554947cd5fcaa0ccea44199` | non_address_book | unknown | unknown | unverified | n/a | `0xb29cd9c87a624b940335d6d5e1d4aadf7d95beec` |
| polygon | unverified unclassified | UnnamedContract<br>`0x300667f774b7a05279555b22e6c4fddef8ef7694` | non_address_book | unknown | unknown | unverified | n/a | `0xb29cd9c87a624b940335d6d5e1d4aadf7d95beec` |
| polygon | unverified unclassified | UnnamedContract<br>`0x30231d1ee2d19d29735b8498c7a2c59307ceafbb` | non_address_book | unknown | unknown | unverified | n/a | `0xb29cd9c87a624b940335d6d5e1d4aadf7d95beec` |
| polygon | unverified unclassified | UnnamedContract<br>`0x303dfb470c206127b9b645418eb57127793ce0ef` | non_address_book | unknown | unknown | unverified | n/a | `0xb29cd9c87a624b940335d6d5e1d4aadf7d95beec` |
| polygon | unverified unclassified | UnnamedContract<br>`0x304d7a85a629780bc2b5f1ba611b183300c9bb36` | non_address_book | unknown | unknown | unverified | n/a | `0xb29cd9c87a624b940335d6d5e1d4aadf7d95beec` |
| polygon | unverified unclassified | UnnamedContract<br>`0x30eb2053114c2e2f46e180417b9452bb26f3f8b2` | non_address_book | unknown | unknown | unverified | n/a | `0xb29cd9c87a624b940335d6d5e1d4aadf7d95beec` |
| polygon | unverified unclassified | UnnamedContract<br>`0x30ffc8c270cf262937ef9e6b2fef2bd2bb91fb84` | non_address_book | unknown | unknown | unverified | n/a | `0xb29cd9c87a624b940335d6d5e1d4aadf7d95beec` |
| polygon | unverified unclassified | UnnamedContract<br>`0x3224ac6b8707a511780ea3404cae0ba4b4b61585` | non_address_book | unknown | unknown | unverified | n/a | `0xb29cd9c87a624b940335d6d5e1d4aadf7d95beec` |
| polygon | unverified unclassified | UnnamedContract<br>`0x328d0ea1e19cd9ba1e39368b51144aad8576864e` | non_address_book | unknown | unknown | unverified | n/a | `0xb29cd9c87a624b940335d6d5e1d4aadf7d95beec` |
| polygon | unverified unclassified | UnnamedContract<br>`0x3355743db830ed30ff4089db8b18deeb683f8546` | non_address_book | unknown | unknown | unverified | n/a | `0xb29cd9c87a624b940335d6d5e1d4aadf7d95beec` |
| polygon | unverified unclassified | UnnamedContract<br>`0x3684c557f6dc9a1a6d107118ad242684d37fd939` | non_address_book | unknown | unknown | unverified | n/a | `0xb29cd9c87a624b940335d6d5e1d4aadf7d95beec` |
| polygon | unverified unclassified | UnnamedContract<br>`0x37291f7693c17b783849949549087f9696631af4` | non_address_book | unknown | unknown | unverified | n/a | `0xb29cd9c87a624b940335d6d5e1d4aadf7d95beec` |
| polygon | unverified unclassified | UnnamedContract<br>`0x374872080bb33b225a25c274e25521e548592119` | non_address_book | unknown | unknown | unverified | n/a | `0xb29cd9c87a624b940335d6d5e1d4aadf7d95beec` |
| polygon | unverified unclassified | UnnamedContract<br>`0x375b66aa7321b8146439f254e29829de89795974` | non_address_book | unknown | unknown | unverified | n/a | `0xb29cd9c87a624b940335d6d5e1d4aadf7d95beec` |
| polygon | unverified unclassified | UnnamedContract<br>`0x377ec1b4e8567d1aa48755311542ff827fd357f2` | non_address_book | unknown | unknown | unverified | n/a | `0xb29cd9c87a624b940335d6d5e1d4aadf7d95beec` |
| polygon | unverified unclassified | UnnamedContract<br>`0x3789aceac63a81018c6044cf0390a8d2e5fa3184` | non_address_book | unknown | unknown | unverified | n/a | `0xb29cd9c87a624b940335d6d5e1d4aadf7d95beec` |
| polygon | unverified unclassified | UnnamedContract<br>`0x385a0e733053c92134e6c73614a0717e7d63eb5e` | non_address_book | unknown | unknown | unverified | n/a | `0xb29cd9c87a624b940335d6d5e1d4aadf7d95beec` |
| polygon | unverified unclassified | UnnamedContract<br>`0x38df41438d5677006d5d04e5efe6682d075045b1` | non_address_book | unknown | unknown | unverified | n/a | `0xb29cd9c87a624b940335d6d5e1d4aadf7d95beec` |
| polygon | unverified unclassified | UnnamedContract<br>`0x394062650eef5c7ac32e89cffce4d3d56932ea59` | non_address_book | unknown | unknown | unverified | n/a | `0xb29cd9c87a624b940335d6d5e1d4aadf7d95beec` |
| polygon | unverified unclassified | UnnamedContract<br>`0x39cc119c43abda76715e690b09c53720c771f87a` | non_address_book | unknown | unknown | unverified | n/a | `0xb29cd9c87a624b940335d6d5e1d4aadf7d95beec` |
| polygon | unverified unclassified | UnnamedContract<br>`0x39f98305c28bb68c7fdf1711ef7742afb0ce95f3` | non_address_book | unknown | unknown | unverified | n/a | `0xb29cd9c87a624b940335d6d5e1d4aadf7d95beec` |
| polygon | unverified unclassified | UnnamedContract<br>`0x3a0a5a0797f1ff849bdc38311df1b51fa37fa0aa` | non_address_book | unknown | unknown | unverified | n/a | `0xb29cd9c87a624b940335d6d5e1d4aadf7d95beec` |
| polygon | unverified unclassified | UnnamedContract<br>`0x3ae7640da3f92983e7fb425c3199bf2934d28cf7` | non_address_book | unknown | unknown | unverified | n/a | `0xb29cd9c87a624b940335d6d5e1d4aadf7d95beec` |
| polygon | unverified unclassified | UnnamedContract<br>`0x3b2b2f9f0e6a6ca6bae823ef9328516e4fd2ef4a` | non_address_book | unknown | unknown | unverified | n/a | `0xb29cd9c87a624b940335d6d5e1d4aadf7d95beec` |
| polygon | unverified unclassified | UnnamedContract<br>`0x3b4396cf6d6b2850aed670ff1daea4a51e2dbee4` | non_address_book | unknown | unknown | unverified | n/a | `0xb29cd9c87a624b940335d6d5e1d4aadf7d95beec` |
| polygon | unverified unclassified | UnnamedContract<br>`0x3b4dbd4e6888e813c316f6a6c62fc326413be2ec` | non_address_book | unknown | unknown | unverified | n/a | `0xb29cd9c87a624b940335d6d5e1d4aadf7d95beec` |
| polygon | unverified unclassified | UnnamedContract<br>`0x3bc6c50bdef525351aa7e0ed288f53f0aa579874` | non_address_book | unknown | unknown | unverified | n/a | `0xb29cd9c87a624b940335d6d5e1d4aadf7d95beec` |
| polygon | unverified unclassified | UnnamedContract<br>`0x3cf743ca9d150e5c311d63cdb1e1a3a4acd614c0` | non_address_book | unknown | unknown | unverified | n/a | `0xb29cd9c87a624b940335d6d5e1d4aadf7d95beec` |

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
| needs_review | 675 |

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
