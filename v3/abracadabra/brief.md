# Agentic Audit Brief: Abracadabra

## Export Authority

- Production state: **published scope**
- Raw selected rows: 10 across 3 audit(s)
- Eligible audit results: 5 (3 matched; 2 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `7fbef0dcf68cde7195f117d9b41f1e6d89891da495a42b57ae29b5e338972213`

⚠️ Lifecycle status: DEAD - TVL dropped 54.6% over 90 days

## Project Overview

- Project: Abracadabra (`abracadabra`)
- Website: [https://abracadabra.money](https://abracadabra.money)
- Lifecycle: dead (Tier 1, dead)
- Generated: 2026-07-15T18:00:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: arbitrum, avalanche, base, blast, bsc, ethereum, fantom, kava, linea, moonriver, optimism, polygon
- Contract surface: 124 unique implementations (158 raw deployments)
- Coverage basis: 10/89 confirmed own live verified implementations (11.2%); conservative 11.2% with 0 needs-review implementation(s)
- DeFi Llama TVL: $4,638,464.02
- On-chain TVL (included contracts): $11,568,838.83
- TVL by chain: Arbitrum $6,607,546.66 | Bsc $2,148,371.15 | Optimism $1,789,911.16 | Avalanche $778,779.27 | Blast $223,338.03 | Polygon $20,290.04 | Base $602.52

## Project Description

This brief describes the observed EVM deployment and audit surface for Abracadabra. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 127 contract row(s) across arbitrum, avalanche, base, blast, bsc, ethereum, fantom, kava, linea, moonriver, optimism, polygon. Structural roles: 109 core, 9 supporting, 9 unclassified. 1 row(s) use upgradeable patterns.

## Logic Topography

- Exact-run contract rows: 127
- Structural roles: core (109), supporting (9), unclassified (9)
- Contract kinds: contract (127)
- Detected standards: erc20permit (18), erc20 (16), erc165 (9), ownable (9), erc4626 (2), chainlinkaggregator (1), pausable (1)
- Frameworks: boringcrypto (85), openzeppelin (36), solmate (36), solady (15), foundry (5), uniswap-v3 (4)
- Upgradeable-pattern rows: 1

## Fork Analysis

20 of 150 contracts are derived from known codebases. 130 contracts have no detected origin.

### Forked Contracts

**AnyswapV6ERC20** (`0xb153fb...c57901`, chain 10)
Origin: hinkal (`0x4e720d...6f4642`)
Containment: 100.0% - 15 functions inherited
Centroid audit status: pending_validation

Additions (unaudited): none

Removals (removed from original): none

**BentoBoxV1** (`0xf5bce5...643966`, chain 1)
Origin: pendle (`0xf4f463...d1d18f`)
Containment: 100.0% - 16 functions inherited
Centroid audit status: pending_validation

Additions (unaudited): none

Removals (removed from original): none

**BlastCauldronV4** (`0x79e8ca...fe402e`, chain 81457)
Origin: hinkal (`0x5e70f7...187103`)
Containment: 94.7% - 18 functions inherited
Centroid audit status: pending_validation

Additions (unaudited): none

Removals (removed from original):
- addBorrowPosition(address,uint256)

**CauldronV4** (`0x00380c...0ac923`, chain 1)
Origin: abracadabra (`0x79e8ca...fe402e`)
Containment: 100.0% - 18 functions inherited
Centroid audit status: pending_validation

Additions (unaudited): none

Removals (removed from original): none

**CauldronV4** (`0x207763...3c1588`, chain 1)
Origin: hinkal (`0x480a0a...51eb4d`)
Containment: 100.0% - 15 functions inherited
Centroid audit status: pending_validation

Additions (unaudited): none

Removals (removed from original): none

**CauldronV4** (`0x692887...89b684`, chain 1)
Origin: hinkal (`0x480a0a...51eb4d`)
Containment: 100.0% - 15 functions inherited
Centroid audit status: pending_validation

Additions (unaudited): none

Removals (removed from original): none

**CauldronV4** (`0x7259e1...1a6a90`, chain 1)
Origin: hinkal (`0x480a0a...51eb4d`)
Containment: 100.0% - 15 functions inherited
Centroid audit status: pending_validation

Additions (unaudited): none

Removals (removed from original): none

**CauldronV4** (`0x7d8df3...b90815`, chain 1)
Origin: hinkal (`0x480a0a...51eb4d`)
Containment: 100.0% - 15 functions inherited
Centroid audit status: pending_validation

Additions (unaudited): none

Removals (removed from original): none

**CauldronV4** (`0x726413...3701b1`, chain 42161)
Origin: hinkal (`0x480a0a...51eb4d`)
Containment: 100.0% - 15 functions inherited
Centroid audit status: pending_validation

Additions (unaudited): none

Removals (removed from original): none

**DegenBox** (`0xd96f48...fc2cce`, chain 1)
Origin: pendle (`0xf4f463...d1d18f`)
Containment: 100.0% - 16 functions inherited
Centroid audit status: pending_validation

Additions (unaudited): none

Removals (removed from original): none

**DegenBox** (`0x090185...37e5f6`, chain 56)
Origin: pendle (`0xf4f463...d1d18f`)
Containment: 100.0% - 16 functions inherited
Centroid audit status: pending_validation

Additions (unaudited): none

Removals (removed from original): none

**DegenBox** (`0x1fc83f...aae530`, chain 43114)
Origin: pendle (`0xf4f463...d1d18f`)
Containment: 100.0% - 16 functions inherited
Centroid audit status: pending_validation

Additions (unaudited): none

Removals (removed from original): none

**GmxV2CauldronV4** (`0x2b02bb...1934fa`, chain 42161)
Origin: hinkal (`0x5e70f7...187103`)
Containment: 89.5% - 17 functions inherited
Centroid audit status: pending_validation

Additions (unaudited):
- closeOrder(address)
- setOrderAgent(IGmCauldronOrderAgent)

Removals (removed from original):
- addBorrowPosition(address,uint256)
- setCollateralizationRate(uint256)

**GmxV2CauldronV4** (`0x4f9737...e40741`, chain 42161)
Origin: abracadabra (`0x2b02bb...1934fa`)
Containment: 100.0% - 19 functions inherited
Centroid audit status: pending_validation

Additions (unaudited): none

Removals (removed from original): none

**GmxV2CauldronV4** (`0x66805f...996c6a`, chain 42161)
Origin: abracadabra (`0x2b02bb...1934fa`)
Containment: 100.0% - 19 functions inherited
Centroid audit status: pending_validation

Additions (unaudited): none

Removals (removed from original): none

**GmxV2CauldronV4** (`0x7962ac...5404fb`, chain 42161)
Origin: abracadabra (`0x2b02bb...1934fa`)
Containment: 100.0% - 19 functions inherited
Centroid audit status: pending_validation

Additions (unaudited): none

Removals (removed from original): none

**GmxV2CauldronV4** (`0xd7659d...6d552a`, chain 42161)
Origin: abracadabra (`0x2b02bb...1934fa`)
Containment: 100.0% - 19 functions inherited
Centroid audit status: pending_validation

Additions (unaudited): none

Removals (removed from original): none

**PrivilegedCauldronV4** (`0x406b89...374352`, chain 1)
Origin: hinkal (`0xa869b9...0d49b5`)
Containment: 100.0% - 16 functions inherited
Centroid audit status: pending_validation

Additions (unaudited): none

Removals (removed from original): none

**PrivilegedCauldronV4** (`0x85f60d...25c405`, chain 1)
Origin: hinkal (`0xa869b9...0d49b5`)
Containment: 100.0% - 16 functions inherited
Centroid audit status: pending_validation

Additions (unaudited): none

Removals (removed from original): none

**WhitelistedCauldronV4** (`0xf75edb...614e46`, chain 1)
Origin: hinkal (`0x369d81...d4da07`)
Containment: 100.0% - 16 functions inherited
Centroid audit status: pending_validation

Additions (unaudited): none

Removals (removed from original): none

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0x257101...8b34e0`, chain 1)
- UnnamedContract (`0x341029...3dd9bf`, chain 1)
- UnnamedContract (`0x551a7c...fc5147`, chain 1)
- UnnamedContract (`0x806e16...54050e`, chain 1)
- UnnamedContract (`0x6e4358...b7f442`, chain 81457)
- UnnamedContract (`0x7202b7...d5b6fe`, chain 81457)
- UnnamedContract (`0x741a23...ace36e`, chain 81457)
- UnnamedContract (`0xa3372c...b3b20d`, chain 81457)
- UnnamedContract (`0xeda89b...230d35`, chain 81457)
- AnyswapV5ERC20 (`0xfe19f0...f433ba`, chain 56)
- AnyswapV5ERC20 (`0x49a040...c47242`, chain 137)
- AnyswapV5ERC20 (`0x0cae51...de3adb`, chain 1285)
- AnyswapV5ERC20 (`0xfea7a6...7d6c2a`, chain 42161)
- AnyswapV5ERC20 (`0x130966...b8c18d`, chain 43114)
- BentoBoxV1 (`0x74c764...46894a`, chain 42161)
- BentoBoxV1 (`0xf4f463...d1d18f`, chain 43114)
- BlastBox (`0xc8f5eb...1e3748`, chain 81457)
- BlastMIMSwapFactory (`0x7e0536...b84908`, chain 81457)
- BlastMIMSwapRouter (`0x85faaf...57b705`, chain 81457)
- BlastOnboarding (`0xa64b73...36ab96`, chain 81457)
- CakeStrategy (`0x08b918...63ef63`, chain 56)
- CauldronFeeWithdrawer (`0x2c9f65...29b131`, chain 42161)
- CauldronLowRiskV1 (`0x6cbafe...7c8c8f`, chain 1)
- CauldronMediumRiskV1 (`0x6ff906...38b91f`, chain 1)
- CauldronMediumRiskV1 (`0xbb02a8...b090f3`, chain 1)
- CauldronMediumRiskV1 (`0xffbf48...3d9ae6`, chain 1)
- CauldronV2 (`0x390db1...d18a41`, chain 1)
- CauldronV2 (`0x5ec47e...192498`, chain 1)
- CauldronV2 (`0xcfc571...e74636`, chain 1)
- CauldronV2 (`0xf179fe...98ed37`, chain 1)
- CauldronV2CheckpointV1 (`0x35a0dd...a30321`, chain 1)
- CauldronV2CheckpointV1 (`0x4eaed7...e4b3a0`, chain 1)
- CauldronV2Flat (`0x003d5a...9eed0f`, chain 1)
- CauldronV2Flat (`0x05500e...6e7c27`, chain 1)
- CauldronV2Flat (`0x0bca8e...d401c1`, chain 1)
- CauldronV2Flat (`0x252dcf...32eae4`, chain 1)
- CauldronV2Flat (`0x6371ef...3b7985`, chain 1)
- CauldronV2Flat (`0x7b7473...c39020`, chain 1)
- CauldronV2Flat (`0x920d9b...953f9f`, chain 1)
- CauldronV2Flat (`0x9617b6...795341`, chain 1)
- CauldronV2Flat (`0x98a84e...b6b99f`, chain 1)
- CauldronV2Flat (`0xc1879b...b592ce`, chain 1)
- CauldronV2Flat (`0xc319ee...57e7da`, chain 1)
- CauldronV2Flat (`0xebfde8...e93f0a`, chain 1)
- CauldronV2Multichain (`0xc89958...0215e6`, chain 42161)
- CauldronV2Multichain (`0x0a1e6a...b1cf3d`, chain 43114)
- CauldronV2Multichain (`0x2450bf...e68d07`, chain 43114)
- CauldronV2Multichain (`0x3b63f8...ad964b`, chain 43114)
- CauldronV2Multichain (`0x3cfed0...30d2a2`, chain 43114)
- CauldronV2Multichain (`0x95cce6...b54210`, chain 43114)
- CauldronV2Multichain (`0xacc682...9f28e3`, chain 43114)
- CauldronV2MultiChain (`0x692cf1...c12c90`, chain 56)
- CauldronV2MultiChain (`0xf80494...a93319`, chain 56)
- CauldronV3 (`0x7ce7d9...064757`, chain 1)
- CauldronV3 (`0xc6b2b3...09001e`, chain 1)
- CauldronV3 (`0xd31e19...dc7324`, chain 1)
- CauldronV3_2 (`0x822796...438df5`, chain 1)
- CauldronV3_2 (`0x68f498...ff2362`, chain 10)
- ClonableBeaconProxy (`0x3e6648...15d2af`, chain 42161)
- DegenBox (`0xa93c81...ba1723`, chain 10)
- DegenBox (`0x7c8fef...431d38`, chain 42161)
- ElevatedMinterBurner (`0x1e188d...b759a5`, chain 10)
- ElevatedMinterBurner (`0x79533f...bec951`, chain 56)
- ElevatedMinterBurner (`0x8e7982...9c20fc`, chain 137)
- ElevatedMinterBurner (`0x6e858b...079728`, chain 1285)
- ElevatedMinterBurner (`0x26f20d...01b6b3`, chain 42161)
- ElevatedMinterBurner (`0x9ba780...c3b769`, chain 43114)
- EthereumWithdrawer (`0xb2c3a9...ba48f4`, chain 1)
- Factory (`0xdf46f6...045297`, chain 1)
- Factory (`0x8d0cd3...1fec73`, chain 42161)
- GmxGlpWrapper (`0x3477df...3c7e75`, chain 42161)
- InverseOracle (`0xb2c3a9...ba48f4`, chain 81457)
- LzIndirectOFTV2 (`0x48686c...e74339`, chain 10)
- LzIndirectOFTV2 (`0x41d5a0...c601af`, chain 56)
- LzIndirectOFTV2 (`0xca0d86...e05533`, chain 137)
- LzIndirectOFTV2 (`0xef2dbd...4f0195`, chain 1285)
- LzIndirectOFTV2 (`0x403595...91d262`, chain 8453)
- LzIndirectOFTV2 (`0x957a8a...0b7090`, chain 42161)
- LzIndirectOFTV2 (`0xb3a661...1b130d`, chain 43114)
- LzIndirectOFTV2 (`0x60bbef...25a097`, chain 59144)
- LzIndirectOFTV2 (`0xca8a20...91f018`, chain 81457)
- LzOFTV2FeeHandler (`0x52b277...d097e4`, chain 8453)
- LzOFTV2FeeHandler (`0x41b191...26b35a`, chain 59144)
- LzProxyOFTV2 (`0x439a5f...f83c10`, chain 1)
- MagicApe (`0xf35b31...97feb6`, chain 1)
- MagicGlp (`0x856674...f54214`, chain 42161)
- MagicInternetMoneyV1 (`0x99d8a9...1e17f3`, chain 1)
- MagicLP (`0x6c843d...45023a`, chain 1)
- MagicLP (`0x2958db...6fc6bb`, chain 42161)
- MintableBurnableERC20 (`0x4a3a6d...eb6a3d`, chain 8453)
- MintableBurnableERC20 (`0xdd3b80...c9429a`, chain 59144)
- MintableBurnableERC20 (`0x76da31...8374c1`, chain 81457)
- mSpellStaking (`0xbd2fba...5e6797`, chain 1)
- mSpellStaking (`0x1df188...dd9e51`, chain 42161)
- OFTWrapper (`0x287176...784adc`, chain 1)
- OFTWrapper (`0x287176...784adc`, chain 10)
- OFTWrapper (`0x287176...784adc`, chain 56)
- OFTWrapper (`0xe1261e...6dfd4c`, chain 137)
- OFTWrapper (`0x287176...784adc`, chain 1285)
- OFTWrapper (`0x287176...784adc`, chain 42161)
- OFTWrapper (`0x287176...784adc`, chain 43114)
- RedstoneAggregator (`0x86e761...bd385b`, chain 81457)
- Router (`0x7202b7...d5b6fe`, chain 1)
- Router (`0x63d8e7...e09f01`, chain 42161)
- SolidlyLpWrapper (`0x6eb170...297c04`, chain 10)
- Spell (`0x090185...37e5f6`, chain 1)
- sSpellV1 (`0x26fa3f...a106a9`, chain 1)
- UnnamedContract (`0x287176...784adc`, chain 250)
- UnnamedContract (`0x4fdffa...6d7bc1`, chain 250)
- UnnamedContract (`0x64c655...2af8c4`, chain 250)
- UnnamedContract (`0x7208d9...c0a45d`, chain 250)
- UnnamedContract (`0x74a0bc...20a616`, chain 250)
- UnnamedContract (`0x82f0b8...6829c1`, chain 250)
- UnnamedContract (`0x8e45af...eaed34`, chain 250)
- UnnamedContract (`0xa3fc1b...59917e`, chain 250)
- UnnamedContract (`0xc5c015...783191`, chain 250)
- UnnamedContract (`0xd4357d...89d11b`, chain 250)
- UnnamedContract (`0xed745b...884e12`, chain 250)
- UnnamedContract (`0xf5bce5...643966`, chain 250)
- UnnamedContract (`0x1b77fd...73315b`, chain 2222)
- UnnamedContract (`0x287176...784adc`, chain 2222)
- UnnamedContract (`0x30d525...ce7c16`, chain 2222)
- UnnamedContract (`0x3cff6f...66e6a8`, chain 2222)
- UnnamedContract (`0x471ee7...f6fceb`, chain 2222)
- UnnamedContract (`0x526a17...acdfdd`, chain 2222)
- UnnamedContract (`0x630fc1...819d7e`, chain 2222)
- UnnamedContract (`0x7ad0e5...1eaaa7`, chain 2222)
- UnnamedContract (`0x895731...18651d`, chain 2222)
- UnnamedContract (`0xc7a161...cd8d8c`, chain 2222)
- WhitelistedCauldronV3 (`0x53375a...60a9a6`, chain 1)

## Contract Surface Quality

- Indexed contracts: 127; live-surface contracts included: 127 (122 live, 5 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 152/208 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 10/89 (11.2%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 120 own, 4 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 0 discovered implementations excluded (1 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 6
- Deployed-live implementations: 121 of 124 unique (rest dead/inactive/uninitialized)
- All verified address-book-owned implementations audited (incl. non-live): 10/89
- Verified + Unaudited implementations: 79
- Verified by bytecode match: 0
- Unverified implementations: 31
- Unique implementations: 124
- Raw deployments: 158
- Audits discovered: 5 (5 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 3
- ASD (verified + unaudited TVL): $11,568,838.83
- Latest audit: 2024-12 (aging)
- Audit staleness (calendar age): 0 fresh, 1 aging, 3 stale, 1 unknown
- Coverage code basis (deployed vs audited code): 3 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 7 match-unverified
- Tier 1 coverage: No Tier 1 coverage
- Note: This protocol is classified as [dead]. ASD of $11,568,838.83 represents exposure in a protocol with dead activity.

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| unknown | Tier 2 | 9 | 10.1% | 2024-12 |
| Guardian | Tier 2 | 1 | 1.1% | 2023-11 |

## Contract Surface

### ✅ Verified + Audited (10)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| BlastBox | unknown | project_anchor | own_supporting | 0 | blast | unit-378937 | `0xc8f5eb...1e3748` | ✅ Audited |
| BlastCauldronV4 | unknown | project_anchor | own_supporting | 0 | blast | unit-378916 | `0x79e8ca...fe402e` | ✅ Audited |
| BlastOnboardingBoot | unknown | project_anchor | own_supporting | 1 | blast | unit-378959 | `0xa64b73...36ab96` | ✅ Audited |
| CauldronV4 | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-378852 | `0x726413...3701b1` | ✅ Audited |
| DegenBox | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-378855 | `0x7c8fef...431d38` | ✅ Audited |
| GmxV2CauldronOrderAgent | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-378856 | `0x815707...8d60f2` | ✅ Audited |
| MagicGlpRewardHandler | unknown | project_anchor | own_supporting | 1 | arbitrum | unit-378957 | `0x856674...f54214` | ✅ Audited |
| MagicLP | unknown | project_anchor | own_supporting | 1 | arbitrum | unit-378955 | 2 deployments: arbitrum `0x2958db...6fc6bb`; arbitrum `0x8d0cd3...1fec73` | ✅ Audited |
| Router | adapter | project_anchor | own_supporting | 0 | arbitrum | unit-378850 | `0x63d8e7...e09f01` | ✅ Audited |
| Spell | unknown | project_anchor | own_supporting | 0 | ethereum | unit-378738 | `0x090185...37e5f6` | ✅ Audited |

### ⚠️ Verified + Unaudited (81)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| AnyswapV5ERC20 | token | project_anchor | own_supporting | 0 | arbitrum | unit-378860 | `0xfea7a6...7d6c2a` | ⚠️ Unaudited |
| AnyswapV5ERC20 | token | project_anchor | own_supporting | 0 | bsc | unit-378882 | `0xfe19f0...f433ba` | ⚠️ Unaudited |
| AnyswapV6ERC20 | token | project_anchor | own_supporting | 0 | optimism | unit-378810 | `0xb153fb...c57901` | ⚠️ Unaudited |
| AnyswapV5ERC20 | token | project_anchor | own_supporting | 0 | avalanche | unit-378862 | `0x130966...b8c18d` | ⚠️ Unaudited |
| MintableBurnableERC20 | token | project_anchor | own_supporting | 0 | blast | unit-378915 | `0x76da31...8374c1` | ⚠️ Unaudited |
| StandardArbERC20 | token | project_anchor | own_supporting | 1 | arbitrum | unit-378956 | `0x3e6648...15d2af` | ⚠️ Unaudited |
| AnyswapV5ERC20 | token | project_anchor | own_supporting | 0 | polygon | unit-378815 | `0x49a040...c47242` | ⚠️ Unaudited |
| MintableBurnableERC20 | token | project_anchor | own_supporting | 0 | base | unit-378952 | `0x4a3a6d...eb6a3d` | ⚠️ Unaudited |
| AnyswapV5ERC20 | token | project_anchor | own_supporting | 0 | moonriver | unit-378811 | `0x0cae51...de3adb` | ⚠️ Unaudited |
| BentoBoxV1 | unknown | project_anchor | own_supporting | 1 | ethereum | unit-378954 | `0xf5bce5...643966` | ⚠️ Unaudited |
| BentoBoxV1 | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-378853 | `0x74c764...46894a` | ⚠️ Unaudited |
| BentoBoxV1 | unknown | project_anchor | own_supporting | 0 | avalanche | unit-378874 | `0xf4f463...d1d18f` | ⚠️ Unaudited |
| BlastMIMSwapFactory | registry | project_anchor | own_supporting | 0 | blast | unit-378920 | `0x7e0536...b84908` | ⚠️ Unaudited |
| BlastMIMSwapRouter | adapter | project_anchor | own_supporting | 0 | blast | unit-378924 | `0x85faaf...57b705` | ⚠️ Unaudited |
| CakeStrategy | unknown | project_anchor | own_supporting | 0 | bsc | unit-378875 | `0x08b918...63ef63` | ⚠️ Unaudited |
| CauldronFeeWithdrawer | operational_periphery | project_anchor | own_supporting | 0 | arbitrum | unit-378847 | `0x2c9f65...29b131` | ⚠️ Unaudited |
| CauldronLowRiskV1 | unknown | project_anchor | own_supporting | 0 | ethereum | unit-378757 | `0x6cbafe...7c8c8f` | ⚠️ Unaudited |
| CauldronMediumRiskV1 | unknown | project_anchor | own_supporting | 0 | ethereum | unit-378758 | 3 deployments: ethereum `0x6ff906...38b91f`; ethereum `0xbb02a8...b090f3`; ethereum `0xffbf48...3d9ae6` | ⚠️ Unaudited |
| CauldronV2 | unknown | project_anchor | own_supporting | 0 | ethereum | unit-378747 | 4 deployments: ethereum `0x390db1...d18a41`; ethereum `0x5ec47e...192498`; ethereum `0xcfc571...e74636`; ethereum `0xf179fe...98ed37` | ⚠️ Unaudited |
| CauldronV2CheckpointV1 | unknown | project_anchor | own_supporting | 0 | ethereum | unit-378746 | 2 deployments: ethereum `0x35a0dd...a30321`; ethereum `0x4eaed7...e4b3a0` | ⚠️ Unaudited |
| CauldronV2Flat | unknown | project_anchor | own_supporting | 0 | ethereum | unit-378736 | 12 deployments: ethereum `0x003d5a...9eed0f`; ethereum `0x05500e...6e7c27`; ethereum `0x0bca8e...d401c1`; ethereum `0x252dcf...32eae4`; ethereum `0x6371ef...3b7985`; ethereum `0x7b7473...c39020`; ethereum `0x920d9b...953f9f`; ethereum `0x9617b6...795341`; ethereum `0x98a84e...b6b99f`; ethereum `0xc1879b...b592ce`; ethereum `0xc319ee...57e7da`; ethereum `0xebfde8...e93f0a` | ⚠️ Unaudited |
| CauldronV2MultiChain | unknown | project_anchor | own_supporting | 0 | bsc | unit-378879 | 2 deployments: bsc `0x692cf1...c12c90`; bsc `0xf80494...a93319` | ⚠️ Unaudited |
| CauldronV2Multichain | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-378858 | `0xc89958...0215e6` | ⚠️ Unaudited |
| CauldronV2Multichain | unknown | project_anchor | own_supporting | 0 | avalanche | unit-378861 | 5 deployments: avalanche `0x0a1e6a...b1cf3d`; avalanche `0x2450bf...e68d07`; avalanche `0x3b63f8...ad964b`; avalanche `0x95cce6...b54210`; avalanche `0xacc682...9f28e3` | ⚠️ Unaudited |
| CauldronV2Multichain | unknown | project_anchor | own_supporting | 0 | avalanche | unit-378866 | 3 deployments: avalanche `0x35fa7a...d6bb21`; avalanche `0x3cfed0...30d2a2`; avalanche `0x56984f...6ba49d` | ⚠️ Unaudited |
| CauldronV3 | unknown | project_anchor | own_supporting | 0 | ethereum | unit-378762 | 3 deployments: ethereum `0x7ce7d9...064757`; ethereum `0xc6b2b3...09001e`; ethereum `0xd31e19...dc7324` | ⚠️ Unaudited |
| CauldronV3_2 | unknown | project_anchor | own_supporting | 0 | ethereum | unit-378765 | `0x822796...438df5` | ⚠️ Unaudited |
| CauldronV3_2 | unknown | project_anchor | own_supporting | 0 | optimism | unit-378803 | `0x68f498...ff2362` | ⚠️ Unaudited |
| CauldronV4 | unknown | project_anchor | own_supporting | 0 | ethereum | unit-378735 | `0x00380c...0ac923` | ⚠️ Unaudited |
| CauldronV4 | unknown | project_anchor | own_supporting | 0 | ethereum | unit-378740 | `0x207763...3c1588` | ⚠️ Unaudited |
| CauldronV4 | unknown | project_anchor | own_supporting | 0 | ethereum | unit-378755 | 3 deployments: ethereum `0x692887...89b684`; ethereum `0x7259e1...1a6a90`; ethereum `0x7d8df3...b90815` | ⚠️ Unaudited |
| CauldronV4 | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | arbitrum | unit-378849 | `0x569813...0406d5` | ⚠️ Unaudited |
| DegenBox | unknown | project_anchor | own_supporting | 0 | ethereum | unit-378784 | `0xd96f48...fc2cce` | ⚠️ Unaudited |
| DegenBox | unknown | project_anchor | own_supporting | 0 | optimism | unit-378809 | `0xa93c81...ba1723` | ⚠️ Unaudited |
| DegenBox | unknown | project_anchor | own_supporting | 0 | bsc | unit-378876 | `0x090185...37e5f6` | ⚠️ Unaudited |
| DegenBox | unknown | project_anchor | own_supporting | 0 | avalanche | unit-378863 | `0x1fc83f...aae530` | ⚠️ Unaudited |
| ElevatedMinterBurner | unknown | project_anchor | own_supporting | 0 | optimism | unit-378797 | `0x1e188d...b759a5` | ⚠️ Unaudited |
| ElevatedMinterBurner | unknown | project_anchor | own_supporting | 0 | bsc | unit-378880 | `0x79533f...bec951` | ⚠️ Unaudited |
| ElevatedMinterBurner | unknown | project_anchor | own_supporting | 0 | polygon | unit-378816 | `0x8e7982...9c20fc` | ⚠️ Unaudited |
| ElevatedMinterBurner | unknown | project_anchor | own_supporting | 0 | moonriver | unit-378813 | `0x6e858b...079728` | ⚠️ Unaudited |
| ElevatedMinterBurner | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-378844 | `0x26f20d...01b6b3` | ⚠️ Unaudited |
| ElevatedMinterBurner | unknown | project_anchor | own_supporting | 0 | avalanche | unit-378871 | `0x9ba780...c3b769` | ⚠️ Unaudited |
| EthereumWithdrawer | operational_periphery | project_anchor | own_supporting | 0 | ethereum | unit-378771 | `0xb2c3a9...ba48f4` | ⚠️ Unaudited |
| Factory | registry | project_anchor | own_supporting | 0 | ethereum | unit-378786 | `0xdf46f6...045297` | ⚠️ Unaudited |
| GmxGlpRewardHandler | unknown | project_anchor | own_supporting | 1 | arbitrum | unit-378958 | `0x3477df...3c7e75` | ⚠️ Unaudited |
| GmxV2CauldronV4 | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-378846 | 5 deployments: arbitrum `0x2b02bb...1934fa`; arbitrum `0x4f9737...e40741`; arbitrum `0x66805f...996c6a`; arbitrum `0x7962ac...5404fb`; arbitrum `0xd7659d...6d552a` | ⚠️ Unaudited |
| InverseOracle | operational_periphery | project_anchor | own_supporting | 0 | blast | unit-378931 | `0xb2c3a9...ba48f4` | ⚠️ Unaudited |
| LzIndirectOFTV2 | unknown | project_anchor | own_supporting | 0 | optimism | unit-378801 | `0x48686c...e74339` | ⚠️ Unaudited |
| LzIndirectOFTV2 | unknown | project_anchor | own_supporting | 0 | bsc | unit-378878 | `0x41d5a0...c601af` | ⚠️ Unaudited |
| LzIndirectOFTV2 | unknown | project_anchor | own_supporting | 0 | polygon | unit-378817 | `0xca0d86...e05533` | ⚠️ Unaudited |
| LzIndirectOFTV2 | unknown | project_anchor | own_supporting | 0 | moonriver | unit-378814 | `0xef2dbd...4f0195` | ⚠️ Unaudited |
| LzIndirectOFTV2 | unknown | project_anchor | own_supporting | 0 | base | unit-378951 | `0x403595...91d262` | ⚠️ Unaudited |
| LzIndirectOFTV2 | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-378857 | `0x957a8a...0b7090` | ⚠️ Unaudited |
| LzIndirectOFTV2 | unknown | project_anchor | own_supporting | 0 | avalanche | unit-378873 | `0xb3a661...1b130d` | ⚠️ Unaudited |
| LzIndirectOFTV2 | unknown | project_anchor | own_supporting | 0 | linea | unit-378884 | `0x60bbef...25a097` | ⚠️ Unaudited |
| LzIndirectOFTV2 | unknown | project_anchor | own_supporting | 0 | blast | unit-378938 | `0xca8a20...91f018` | ⚠️ Unaudited |
| LzOFTV2FeeHandler | unknown | project_anchor | own_supporting | 0 | base | unit-378953 | `0x52b277...d097e4` | ⚠️ Unaudited |
| LzOFTV2FeeHandler | unknown | project_anchor | own_supporting | 0 | linea | unit-378883 | `0x41b191...26b35a` | ⚠️ Unaudited |
| LzOFTV2FeeHandler | unknown | project_anchor | own_supporting | 0 | blast | unit-378905 | `0x630fc1...819d7e` | ⚠️ Unaudited |
| LzProxyOFTV2 | unknown | project_anchor | own_supporting | 0 | ethereum | unit-378749 | `0x439a5f...f83c10` | ⚠️ Unaudited |
| MagicApe | unknown | project_anchor | own_supporting | 0 | ethereum | unit-378791 | `0xf35b31...97feb6` | ⚠️ Unaudited |
| MagicInternetMoneyV1 | unknown | project_anchor | own_supporting | 0 | ethereum | unit-378770 | `0x99d8a9...1e17f3` | ⚠️ Unaudited |
| MagicLP | unknown | project_anchor | own_supporting | 0 | ethereum | unit-378756 | `0x6c843d...45023a` | ⚠️ Unaudited |
| MintableBurnableERC20 | token | project_anchor | own_supporting | 0 | linea | unit-378885 | `0xdd3b80...c9429a` | ⚠️ Unaudited |
| mSpellStaking | token | project_anchor | own_supporting | 0 | ethereum | unit-378773 | `0xbd2fba...5e6797` | ⚠️ Unaudited |
| mSpellStaking | token | project_anchor | own_supporting | 0 | arbitrum | unit-378843 | `0x1df188...dd9e51` | ⚠️ Unaudited |
| OFTWrapper | unknown | project_anchor | own_supporting | 0 | ethereum | unit-378744 | `0x287176...784adc` | ⚠️ Unaudited |
| OFTWrapper | unknown | project_anchor | own_supporting | 0 | optimism | unit-378799 | `0x287176...784adc` | ⚠️ Unaudited |
| OFTWrapper | unknown | project_anchor | own_supporting | 0 | bsc | unit-378877 | `0x287176...784adc` | ⚠️ Unaudited |
| OFTWrapper | unknown | project_anchor | own_supporting | 0 | polygon | unit-378818 | `0xe1261e...6dfd4c` | ⚠️ Unaudited |
| OFTWrapper | unknown | project_anchor | own_supporting | 0 | moonriver | unit-378812 | `0x287176...784adc` | ⚠️ Unaudited |
| OFTWrapper | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-378845 | `0x287176...784adc` | ⚠️ Unaudited |
| OFTWrapper | unknown | project_anchor | own_supporting | 0 | avalanche | unit-378865 | `0x287176...784adc` | ⚠️ Unaudited |
| PrivilegedCauldronV4 | unknown | project_anchor | own_supporting | 0 | ethereum | unit-378748 | 2 deployments: ethereum `0x406b89...374352`; ethereum `0x85f60d...25c405` | ⚠️ Unaudited |
| RedstoneAggregator | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | blast | unit-378925 | `0x86e761...bd385b` | ⚠️ Unaudited |
| Router | adapter | project_anchor | own_supporting | 0 | ethereum | unit-378759 | `0x7202b7...d5b6fe` | ⚠️ Unaudited |
| SolidlyGaugeVolatileLPStrategy | operational_periphery | project_anchor | own_supporting | 0 | optimism | unit-378808 | `0xa3372c...b3b20d` | ⚠️ Unaudited |
| SolidlyLpWrapper | unknown | project_anchor | own_supporting | 0 | optimism | unit-378805 | `0x6eb170...297c04` | ⚠️ Unaudited |
| sSpellV1 | unknown | project_anchor | own_supporting | 0 | ethereum | unit-378743 | `0x26fa3f...a106a9` | ⚠️ Unaudited |
| WhitelistedCauldronV3 | unknown | project_anchor | own_supporting | 0 | ethereum | unit-378751 | `0x53375a...60a9a6` | ⚠️ Unaudited |
| WhitelistedCauldronV4 | unknown | project_anchor | own_supporting | 0 | ethereum | unit-378793 | `0xf75edb...614e46` | ⚠️ Unaudited |

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
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-378742 | `0x257101...8b34e0` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-378745 | `0x341029...3dd9bf` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-378752 | `0x551a7c...fc5147` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-378764 | `0x806e16...54050e` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | fantom | unit-378829 | `0x287176...784adc` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | fantom | unit-378830 | `0x4fdffa...6d7bc1` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | fantom | unit-378831 | `0x64c655...2af8c4` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | fantom | unit-378832 | `0x7208d9...c0a45d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | fantom | unit-378833 | `0x74a0bc...20a616` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | fantom | unit-378834 | `0x82f0b8...6829c1` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | fantom | unit-378835 | `0x8e45af...eaed34` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | fantom | unit-378836 | `0xa3fc1b...59917e` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | fantom | unit-378837 | `0xc5c015...783191` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | fantom | unit-378838 | `0xd4357d...89d11b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | fantom | unit-378839 | `0xed745b...884e12` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | fantom | unit-378840 | `0xef7a0b...03298a` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | fantom | unit-378841 | `0xf08e4c...abd7c7` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | fantom | unit-378842 | `0xf5bce5...643966` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | kava | unit-378819 | `0x1b77fd...73315b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | kava | unit-378820 | `0x287176...784adc` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | kava | unit-378821 | `0x30d525...ce7c16` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | kava | unit-378822 | `0x3cff6f...66e6a8` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | kava | unit-378823 | `0x471ee7...f6fceb` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | kava | unit-378824 | `0x526a17...acdfdd` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | kava | unit-378825 | `0x630fc1...819d7e` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | kava | unit-378826 | `0x7ad0e5...1eaaa7` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | kava | unit-378827 | `0x895731...18651d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | kava | unit-378828 | `0xc7a161...cd8d8c` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | blast | unit-378910 | `0x6e4358...b7f442` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | blast | unit-378912 | `0x7202b7...d5b6fe` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | blast | unit-378914 | `0x741a23...ace36e` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | blast | unit-378930 | `0xa3372c...b3b20d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | blast | unit-378945 | `0xeda89b...230d35` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [11-14-2023_Abracadabra_GMXV2.pdf](https://github.com/GuardianAudits/Audits/blob/main/AbracadabraMoney/11-14-2023_Abracadabra_GMXV2.pdf) | Guardian | Audit | 2023-11 | stale | Direct | contract_name | matched | 1 | 0 | 0 | 3 | high |
| [2024-02-06_Abracadabra_LockingMultiRewards.pdf](https://github.com/Abracadabra-money/abracadabra-money-contracts/blob/main/audits/2024-02-06_Abracadabra_LockingMultiRewards.pdf) | unknown | Audit | 2024-02 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 1 | high |
| [2024-03-21_MIMSwap.pdf](https://github.com/Abracadabra-money/abracadabra-money-contracts/blob/main/audits/2024-03-21_MIMSwap.pdf) | unknown | Audit | 2024-03 | stale | Direct | contract_name | matched | 6 | 2 | 0 | 12 | high |
| [2024-12-16_Abracadabra_BoundSpell_Report.pdf](https://github.com/Abracadabra-money/abracadabra-money-contracts/blob/main/audits/2024-12-16_Abracadabra_BoundSpell_Report.pdf) | unknown | Audit | 2024-12 | aging | Direct | n/a | no match | 0 | 0 | 0 | 9 | n/a |
| [MagicGlpReview.md](https://github.com/Abracadabra-money/abracadabra-money-contracts/blob/main/audits/MagicGlpReview.md) | unknown | Audit | n/a | unknown | Direct | address | matched | 3 | 1 | 0 | 7 | high |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [3361] 11-14-2023_Abracadabra_GMXV2.pdf — matched: Contracts extracted from findings location fields in the audit report. The report does not have a dedicated scope table but the findings clearly indicate the audited contracts.
- [9649] 2024-02-06_Abracadabra_LockingMultiRewards.pdf — no match: Only one contract (LockingMultiReward) is explicitly in scope. The report mentions 'staking rewards contract' and all findings reference LockingMultiReward.sol.
- [9650] 2024-03-21_MIMSwap.pdf — matched: Extracted from audit report summary and findings sections. The report explicitly lists contracts in scope and mentions them in findings.
- [9651] 2024-12-16_Abracadabra_BoundSpell_Report.pdf — no match: No reason recorded
- [9652] MagicGlpReview.md — matched: Extracted 10 contracts from the scope table. No audit date found in the report.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| 11-14-2023_Abracadabra_GMXV2.pdf | GmxV2CauldronOrderAgent | own contract | GmxV2CauldronOrderAgent (selected) `0x815707...8d60f2` — deployed 2023-12-14 02:40:55+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 11-14-2023_Abracadabra_GMXV2.pdf | GmxV2CauldronV4 | ambiguous — not counted | GmxV2CauldronV4 (alternative) `0x4f9737...e40741` — deployed 2023-11-27 20:38:26+03 — liveness: live (current_address_book_code)<br>GmxV2CauldronV4 (alternative) `0x66805f...996c6a` — deployed 2023-12-07 00:51:48+03 — liveness: live (current_address_book_code)<br>GmxV2CauldronV4 (alternative) `0x2b02bb...1934fa` — deployed 2023-11-27 20:38:12+03 — liveness: live (current_address_book_code)<br>GmxV2CauldronV4 (alternative) `0x7962ac...5404fb` — deployed 2023-11-27 20:38:33+03 — liveness: live (current_address_book_code)<br>GmxV2CauldronV4 (alternative) `0xd7659d...6d552a` — deployed 2023-11-27 20:38:19+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| 11-14-2023_Abracadabra_GMXV2.pdf | GmOracleWithAggregator | unmatched — not counted | — | Listed in findings locations (e.g., GMOCL-1, GMOCL-2, GMOCL-3) | no |
| 11-14-2023_Abracadabra_GMXV2.pdf | CauldronV4 | ambiguous — not counted | CauldronV4 (alternative) `0x726413...3701b1` — deployed 2023-01-27 01:10:24+03 — liveness: live (current_address_book_code)<br>CauldronV4 (alternative) `0x00380c...0ac923` — deployed 2024-07-31 06:49:23+03 — liveness: live (current_address_book_code)<br>CauldronV4 (alternative) `0x207763...3c1588` — deployed 2022-12-10 17:40:23+03 — liveness: live (current_address_book_code)<br>CauldronV4 (alternative) `0x7d8df3...b90815` — deployed 2023-04-20 00:35:47+03 — liveness: live (current_address_book_code)<br>CauldronV4 (alternative) `0x692887...89b684` — deployed 2023-02-18 18:37:47+03 — liveness: live (current_address_book_code)<br>CauldronV4 (alternative) `0x7259e1...1a6a90` — deployed 2023-01-30 18:28:47+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| 2024-02-06_Abracadabra_LockingMultiRewards.pdf | LockingMultiReward | unmatched — not counted | — | Listed in findings locations and scope description | no |
| 2024-03-21_MIMSwap.pdf | Router | own contract | Router (alternative) `0x7202b7...d5b6fe` — deployed 2024-08-16 02:35:11+03 — liveness: live (current_address_book_code)<br>Router (selected) `0x63d8e7...e09f01` — deployed 2024-04-27 06:01:10+03 — liveness: live (current_address_book_code) | deployment-date disambiguation: 2024-04-27 was 43d from audit; next candidate 154d; normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2024-03-21_MIMSwap.pdf | MagicLP | ambiguous — not counted | MagicLP (alternative) `0x2958db...6fc6bb` — deployed 2024-04-27 06:00:36+03 — liveness: live (current_address_book_code)<br>MagicLP (alternative) `0x6c843d...45023a` — deployed 2024-08-16 02:34:11+03 — liveness: live (code_present_context)<br>Factory (proxy) (alternative) `0x8d0cd3...1fec73` — deployed 2024-04-27 06:01:03+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| 2024-03-21_MIMSwap.pdf | Factory | own proxy deployment | Factory (alternative) `0xdf46f6...045297` — deployed 2024-08-16 02:34:59+03 — liveness: live (code_present_context)<br>Factory (proxy) (selected) `0x8d0cd3...1fec73` — deployed 2024-04-27 06:01:03+03 — liveness: live (code_present_context) | deployment-date disambiguation: 2024-04-27 was 43d from audit; next candidate 154d; normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2024-03-21_MIMSwap.pdf | BlastMagicLP | unmatched — not counted | — | mentioned in findings | no |
| 2024-03-21_MIMSwap.pdf | BlastOnboarding | own proxy deployment | BlastOnboarding (proxy) (selected) `0xa64b73...36ab96` — deployed 2024-02-29 17:42:03+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2024-03-21_MIMSwap.pdf | BlastBox | own contract | BlastBox (selected) `0xc8f5eb...1e3748` — deployed 2024-02-29 17:27:13+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2024-03-21_MIMSwap.pdf | BlastGovernor | unmatched — not counted | — | mentioned in findings | no |
| 2024-03-21_MIMSwap.pdf | BlastCauldron | unmatched — not counted | — | mentioned in findings | no |
| 2024-03-21_MIMSwap.pdf | BlastCauldronV4 | own contract | BlastCauldronV4 (selected) `0x79e8ca...fe402e` — deployed 2024-02-29 20:45:23+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2024-03-21_MIMSwap.pdf | BlastTokenRegistry | unmatched — not counted | — | mentioned in findings | no |
| 2024-03-21_MIMSwap.pdf | FeeRateModel | unmatched — not counted | — | mentioned in findings | no |
| 2024-03-21_MIMSwap.pdf | FeeRateImplementation | unmatched — not counted | — | mentioned in findings | no |
| 2024-03-21_MIMSwap.pdf | MIM | unmatched — not counted | — | mentioned in findings | no |
| 2024-03-21_MIMSwap.pdf | SPELL | own contract | Spell (selected) `0x090185...37e5f6` — deployed 2021-05-18 01:10:35+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2024-03-21_MIMSwap.pdf | BlastPoints | unmatched — not counted | — | mentioned in findings | no |
| 2024-03-21_MIMSwap.pdf | BlastWrappers | unmatched — not counted | — | mentioned in findings | no |
| 2024-03-21_MIMSwap.pdf | PrivateRouter | unmatched — not counted | — | mentioned in invariants section | no |
| 2024-03-21_MIMSwap.pdf | DegenBox | ambiguous — not counted | DegenBox (alternative) `0xd96f48...fc2cce` — deployed 2021-10-14 22:24:53+03 — liveness: live (code_present_context)<br>DegenBox (alternative) `0x1fc83f...aae530` — deployed 2021-10-14 20:31:04+03 — liveness: live (code_present_context)<br>DegenBox (alternative) `0x7c8fef...431d38` — deployed 2022-06-22 14:12:43+03 — liveness: live (code_present_context)<br>DegenBox (alternative) `0xa93c81...ba1723` — deployed 2022-08-06 20:21:56+03 — liveness: live (code_present_context)<br>DegenBox (alternative) `0x090185...37e5f6` — deployed 2021-11-18 15:30:45+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| 2024-12-16_Abracadabra_BoundSpell_Report.pdf | BoundSpellActionReceiver | unmatched — not counted | — | — | no |
| 2024-12-16_Abracadabra_BoundSpell_Report.pdf | BoundSpellActionSender | unmatched — not counted | — | — | no |
| 2024-12-16_Abracadabra_BoundSpell_Report.pdf | BoundSpellCrosschainActions | unmatched — not counted | — | — | no |
| 2024-12-16_Abracadabra_BoundSpell_Report.pdf | Create3Deployer | unmatched — not counted | — | — | no |
| 2024-12-16_Abracadabra_BoundSpell_Report.pdf | Create3Factory | unmatched — not counted | — | — | no |
| 2024-12-16_Abracadabra_BoundSpell_Report.pdf | MultiRewards | unmatched — not counted | — | — | no |
| 2024-12-16_Abracadabra_BoundSpell_Report.pdf | MultiRewardsClaimingHandler | unmatched — not counted | — | — | no |
| 2024-12-16_Abracadabra_BoundSpell_Report.pdf | SpellPowerStaking | unmatched — not counted | — | — | no |
| 2024-12-16_Abracadabra_BoundSpell_Report.pdf | TokenLocker | unmatched — not counted | — | — | no |
| MagicGlpReview.md | MagicGlp | own proxy deployment | MagicGlp (proxy) (selected) `0x856674...f54214` — deployed 2023-01-27 01:09:55+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| MagicGlpReview.md | MagicGlpRewardHandler | unmatched — not counted | — | listed in scope table | no |
| MagicGlpReview.md | CauldronV4 | own contract | CauldronV4 (selected) `0x726413...3701b1` — deployed 2023-01-27 01:10:24+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| MagicGlpReview.md | ProxyOracle | unmatched — not counted | — | listed in scope table | no |
| MagicGlpReview.md | MagicGlpOracle | unmatched — not counted | — | listed in scope table | no |
| MagicGlpReview.md | DegenBoxERC4626Wrapper | unmatched — not counted | — | listed in scope table | no |
| MagicGlpReview.md | MagicGlpHarvestor | unmatched — not counted | — | listed in scope table | no |
| MagicGlpReview.md | MagicGlpSwapper | unmatched — not counted | — | listed in scope table | no |
| MagicGlpReview.md | MagicGlpLevSwapper | unmatched — not counted | — | listed in scope table | no |
| MagicGlpReview.md | DegenBox | own contract | DegenBox (selected) `0x7c8fef...431d38` — deployed 2022-06-22 14:12:43+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| base | `0x4a3a6d...eb6a3d` | MintableBurnableERC20 | token | $602.52 | Verified native implementation with $602.52 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xf5bce5...643966` | BentoBoxV1 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0x74c764...46894a` | BentoBoxV1 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0x08b918...63ef63` | CakeStrategy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0x2c9f65...29b131` | CauldronFeeWithdrawer | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x6cbafe...7c8c8f` | CauldronLowRiskV1 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x6ff906...38b91f` | CauldronMediumRiskV1 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x390db1...d18a41` | CauldronV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x35a0dd...a30321` | CauldronV2CheckpointV1 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x003d5a...9eed0f` | CauldronV2Flat | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0x692cf1...c12c90` | CauldronV2MultiChain | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0xc89958...0215e6` | CauldronV2Multichain | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x7ce7d9...064757` | CauldronV3 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x822796...438df5` | CauldronV3_2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | `0x68f498...ff2362` | CauldronV3_2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x00380c...0ac923` | CauldronV4 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x207763...3c1588` | CauldronV4 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x692887...89b684` | CauldronV4 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xd96f48...fc2cce` | DegenBox | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | `0xa93c81...ba1723` | DegenBox | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0x090185...37e5f6` | DegenBox | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | `0x1e188d...b759a5` | ElevatedMinterBurner | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0x79533f...bec951` | ElevatedMinterBurner | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | `0x8e7982...9c20fc` | ElevatedMinterBurner | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| moonriver | `0x6e858b...079728` | ElevatedMinterBurner | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0x26f20d...01b6b3` | ElevatedMinterBurner | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | `0x9ba780...c3b769` | ElevatedMinterBurner | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xb2c3a9...ba48f4` | EthereumWithdrawer | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xdf46f6...045297` | Factory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0x3477df...3c7e75` | GmxGlpRewardHandler | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0x2b02bb...1934fa` | GmxV2CauldronV4 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0x52b277...d097e4` | LzOFTV2FeeHandler | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| linea | `0x41b191...26b35a` | LzOFTV2FeeHandler | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xf35b31...97feb6` | MagicApe | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x99d8a9...1e17f3` | MagicInternetMoneyV1 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x6c843d...45023a` | MagicLP | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xbd2fba...5e6797` | mSpellStaking | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0x1df188...dd9e51` | mSpellStaking | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x406b89...374352` | PrivilegedCauldronV4 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x7202b7...d5b6fe` | Router | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | `0xa3372c...b3b20d` | SolidlyGaugeVolatileLPStrategy | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | `0x6eb170...297c04` | SolidlyLpWrapper | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x26fa3f...a106a9` | sSpellV1 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x53375a...60a9a6` | WhitelistedCauldronV3 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xf75edb...614e46` | WhitelistedCauldronV4 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 58 |
| upstream | 19 |
| standard_library | 1 |
| needs_review | 46 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 2
- Inherited remapped matches: 0
- Address-book scope dispositions: 10 own (3 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 4 ambiguous, 28 unmatched
- Matched-own operational status: 10 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=4
- Match method counts: address=3, temporal_name=2, unique_name=5

Zero-match audit list:

- [9649] 2024-02-06_Abracadabra_LockingMultiRewards.pdf
- [9651] 2024-12-16_Abracadabra_BoundSpell_Report.pdf

Fork inheritance lineage and inherited audits are included when available.
