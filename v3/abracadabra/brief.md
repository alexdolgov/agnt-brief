# Agentic Audit Brief: Abracadabra

## Export Authority

- Production state: **published scope**
- Raw selected rows: 10 across 3 audit(s)
- Eligible audit results: 5 (3 matched; 2 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e9e09d06b414f9cd852c36a58d42ce16279465f2d9791cd2a8178f3f54b89ecd`

⚠️ Lifecycle status: DEAD - TVL dropped 54.6% over 90 days

## Project Overview

- Project: Abracadabra (`abracadabra`)
- Website: [https://abracadabra.money](https://abracadabra.money)
- Lifecycle: dead (Tier 1, dead)
- Generated: 2026-07-15T18:30:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: arbitrum, avalanche, base, blast, bsc, ethereum, fantom, kava, linea, moonriver, optimism, polygon
- Contract surface: 699 unique implementations (1918 raw deployments)
- Coverage basis: 10/89 confirmed own live verified implementations (11.2%); conservative 11.2% with 0 needs-review implementation(s)
- DeFi Llama TVL: $4,638,464.02
- On-chain TVL (included contracts): $776,457,863.62
- TVL by chain: Arbitrum $554,026,938.15 | Ethereum $203,036,115.80 | Avalanche $15,212,296.76 | Bsc $2,148,371.15 | Optimism $1,789,911.16 | Blast $223,338.03 | Polygon $20,290.04 | Base $602.52

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

- Logic-topography rows: 127; live-surface rows included: 127 (122 live, 5 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 151/208 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 10/89 (11.2%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 120 own, 4 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 575 discovered implementations shown in the inventory but excluded from coverage (1 third-party/infra; 2 standard proxy/library)
- Proxy deployments represented within implementation groups: 28
- Confirmed-live implementations: 121 of 699 unique; 578 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 10/502
- Verified + Unaudited implementations: 490
- Verified by bytecode match: 2
- Unverified implementations: 197
- Unique implementations: 699
- Raw deployments: 1918
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
| unknown | Tier 2 | 9 | 1.8% | 2024-12 |
| Guardian | Tier 2 | 1 | 0.2% | 2023-11 |

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
| MagicGlpRewardHandler | unknown | project_anchor | own_supporting | 1 | arbitrum | unit-378957 | 2 deployments: arbitrum `0x41b8db...300026`; arbitrum `0x856674...f54214` | ✅ Audited |
| MagicLP | unknown | project_anchor | own_supporting | 1 | arbitrum | unit-378955 | 2 deployments: arbitrum `0x2958db...6fc6bb`; arbitrum `0x8d0cd3...1fec73` | ✅ Audited |
| Router | adapter | project_anchor | own_supporting | 0 | arbitrum | unit-378850 | `0x63d8e7...e09f01` | ✅ Audited |
| Spell | unknown | project_anchor | own_supporting | 0 | ethereum | unit-378738 | `0x090185...37e5f6` | ✅ Audited |

### ⚠️ Verified + Unaudited (490)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| StandardArbERC20 | token | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | `0x2f2a25...fc5b0f` | ⚠️ Unaudited |
| MarketToken | token | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 7 deployments: arbitrum `0x09400d...af03c9`; arbitrum `0x450bb6...2ac541`; arbitrum `0x47c031...170703`; arbitrum `0x70d955...ee6336`; arbitrum `0x7c11f7...6b9a77`; arbitrum `0x7f1fa2...18455c`; arbitrum `0xc25cef...7e5407` | ⚠️ Unaudited |
| FantomToken | token | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x4e1536...717870`; ethereum `0x80d6c1...48c582`; ethereum `0xdcc584...2cd329` | ⚠️ Unaudited |
| cvxCrvToken | token | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x62b9c7...810aa7` | ⚠️ Unaudited |
| LUSDToken | token | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5f9880...568ba0` | ⚠️ Unaudited |
| BaseRewardPool | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3fe656...a7587e` | ⚠️ Unaudited |
| LayerZeroToken | token | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x698588...3271cd`; arbitrum `0x698588...3271cd` | ⚠️ Unaudited |
| LQTYToken | token | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6dea81...88c54d` | ⚠️ Unaudited |
| JoeToken | token | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x6e84a6...bc0fdd` | ⚠️ Unaudited |
| AlToken | token | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbc6da0...3660e9` | ⚠️ Unaudited |
| AlchemixToken | token | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdbdb4d...90c8df` | ⚠️ Unaudited |
| cvxRewardPool | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcf50b8...139332` | ⚠️ Unaudited |
| AnyswapV5ERC20 | token | project_anchor | own_supporting | 0 | arbitrum | unit-378860 | `0xfea7a6...7d6c2a` | ⚠️ Unaudited |
| DepositToken | token | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x903c99...3b61fb` | ⚠️ Unaudited |
| AnyswapV5ERC20 | token | project_anchor | own_supporting | 0 | bsc | unit-378882 | `0xfe19f0...f433ba` | ⚠️ Unaudited |
| cvxFpisToken | token | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa28473...427df6` | ⚠️ Unaudited |
| AnyswapV6ERC20 | token | project_anchor | own_supporting | 0 | optimism | unit-378810 | `0xb153fb...c57901` | ⚠️ Unaudited |
| Pool | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x38ea45...0bd783`; ethereum `0xdf0770...32ff56` | ⚠️ Unaudited |
| AnyswapV5ERC20 | token | project_anchor | own_supporting | 0 | avalanche | unit-378862 | `0x130966...b8c18d` | ⚠️ Unaudited |
| cvxFxsToken | token | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfeef77...4bdf74` | ⚠️ Unaudited |
| JCollateralCapErc20Delegate | token | non_address_book | non_address_book_inventory (excluded) | 9 | avalanche | n/a | 9 deployments: avalanche `0x29472d...328db2`; avalanche `0x3fe38b...a9eb1f`; avalanche `0x585e7b...b96c15`; avalanche `0x8b650e...1e4448`; avalanche `0x929f5c...4633fa`; avalanche `0xbfdbe3...3c76e0`; avalanche `0xc14678...8da696`; avalanche `0xc988c1...a7ca19`; avalanche `0xed6aaf...f637ac` | ⚠️ Unaudited |
| MintableBurnableERC20 | token | project_anchor | own_supporting | 0 | blast | unit-378915 | `0x76da31...8374c1` | ⚠️ Unaudited |
| StandardArbERC20 | token | project_anchor | own_supporting | 1 | arbitrum | unit-378956 | `0x3e6648...15d2af` | ⚠️ Unaudited |
| AnyswapV5ERC20 | token | project_anchor | own_supporting | 0 | polygon | unit-378815 | `0x49a040...c47242` | ⚠️ Unaudited |
| JoeHatToken | token | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x82fe03...62077c` | ⚠️ Unaudited |
| StabilityPool | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x66017d...5a21bb` | ⚠️ Unaudited |
| BorrowerOperations | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x24179c...83e007` | ⚠️ Unaudited |
| mSpellStaking | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 5 deployments: arbitrum `0x694808...4b99ff`; arbitrum `0x6cc0cd...8ae668`; avalanche `0xa3c893...a92a12`; avalanche `0xbd8447...f955af`; avalanche `0xc1f186...c3ec70` | ⚠️ Unaudited |
| Booster | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0xd8bd5c...f28659`; ethereum `0xf403c1...8aae31` | ⚠️ Unaudited |
| MintableBurnableERC20 | token | project_anchor | own_supporting | 0 | base | unit-378952 | `0x4a3a6d...eb6a3d` | ⚠️ Unaudited |
| ActivePool | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdf9eb2...fe3d7f` | ⚠️ Unaudited |
| CollSurplusPool | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3d32e8...ce5521` | ⚠️ Unaudited |
| AbraOFTUpgradeable | unknown | non_address_book | non_address_book_inventory (excluded) | 3 | arbitrum | n/a | 6 deployments: arbitrum `0x051ae6...f88b0b`; arbitrum `0x51c07f...033fae`; arbitrum `0x5db2df...f6226b`; arbitrum `0x9473b1...6a7cf6`; arbitrum `0xa21143...a084a6`; arbitrum `0xfc1f2a...f73f83` | ⚠️ Unaudited |
| AdvancedWithdrawer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x215061...e8f633` | ⚠️ Unaudited |
| AdventureGold | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x32353a...489a20` | ⚠️ Unaudited |
| aeWETH | token | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | `0x82af49...3fbab1` | ⚠️ Unaudited |
| AltExercisepOLY | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x053449...daa729` | ⚠️ Unaudited |
| AnyswapV5ERC20 | token | project_anchor | own_supporting | 0 | moonriver | unit-378811 | `0x0cae51...de3adb` | ⚠️ Unaudited |
| ArbEthLevSwapper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xc9facf...591918` | ⚠️ Unaudited |
| ArbEthSwapper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x4c56db...c07e17` | ⚠️ Unaudited |
| AVAXLevSwapperV1 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x69bfea...58c7b1` | ⚠️ Unaudited |
| AvaxLPOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | 4 deployments: avalanche `0x3e6ef9...67d853`; avalanche `0x6e4358...b7f442`; avalanche `0xe2601e...aeb7dd`; avalanche `0xed5d79...756f8e` | ⚠️ Unaudited |
| AVAXOracleV1 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x082454...6ff63a` | ⚠️ Unaudited |
| AvaxSwapperV1 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x2b7275...8f36a8` | ⚠️ Unaudited |
| AvaxUsdtLevSwapper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x8cee5b...25fb62` | ⚠️ Unaudited |
| AvaxUsdtOracleV1 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xd43f26...0c0559` | ⚠️ Unaudited |
| AvaxUsdtSwapper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x9ca03f...ca921d` | ⚠️ Unaudited |
| BackingRefill | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc448b2...a09d8c` | ⚠️ Unaudited |
| BadBuildersClubSoulbound | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x2d1e2e...ac6a42` | ⚠️ Unaudited |
| BatchSender | periphery | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 2 deployments: arbitrum `0x1070f7...fe17e8`; arbitrum `0x5179d7...3107a6` | ⚠️ Unaudited |
| BentoBoxV1 | unknown | project_anchor | own_supporting | 1 | ethereum | unit-378954 | `0xf5bce5...643966` | ⚠️ Unaudited |
| BentoBoxV1 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0xb734c2...cc812d` | ⚠️ Unaudited |
| BentoBoxV1 | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-378853 | `0x74c764...46894a` | ⚠️ Unaudited |
| BentoBoxV1 | unknown | project_anchor | own_supporting | 0 | avalanche | unit-378874 | `0xf4f463...d1d18f` | ⚠️ Unaudited |
| BlastMIMSwapFactory | registry | project_anchor | own_supporting | 0 | blast | unit-378920 | `0x7e0536...b84908` | ⚠️ Unaudited |
| BlastMIMSwapRouter | adapter | project_anchor | own_supporting | 0 | blast | unit-378924 | `0x85faaf...57b705` | ⚠️ Unaudited |
| BnbStaking | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x555ea7...6dcb5a` | ⚠️ Unaudited |
| BoostedMasterChefJoe | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | 3 deployments: avalanche `0x217945...8266e9`; avalanche `0x846a4c...bfff23`; avalanche `0xbb28e0...0a7ad0` | ⚠️ Unaudited |
| BoringHelperV1 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 6 deployments: ethereum `0x11ca53...7996e6`; arbitrum `0x37b328...e924f8`; avalanche `0x1dd4d8...ab5741`; avalanche `0xce63ec...412c5e`; avalanche `0xdc0730...4a7c62`; avalanche `0xe35e9c...9a386f` | ⚠️ Unaudited |
| CakeStrategy | unknown | project_anchor | own_supporting | 0 | bsc | unit-378875 | `0x08b918...63ef63` | ⚠️ Unaudited |
| CakeStrategyV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x617161...a3b3aa` | ⚠️ Unaudited |
| CakeToken | token | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 3 deployments: bsc `0x0e09fa...81ce82`; bsc `0x46e358...b42cf4`; bsc `0xe17a47...7f978b` | ⚠️ Unaudited |
| CauldronFeeWithdrawer | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 11 deployments: ethereum `0x9cc903...27d482`; ethereum `0xb3602d...c92b76`; optimism `0x5efc10...ecc2e0`; bsc `0xabbd4a...ab4cfc`; arbitrum `0x0f1b89...06b7b7`; arbitrum `0xcf4f8e...83067f`; avalanche `0x4b4c27...108940`; avalanche `0x64422a...1a7fb7`; avalanche `0x727f73...b0c89e`; avalanche `0xa262f3...d20ee7`; blast `0x4bca9e...b366b5` | ⚠️ Unaudited |
| CauldronFeeWithdrawer | operational_periphery | project_anchor | own_supporting | 0 | arbitrum | unit-378847 | `0x2c9f65...29b131` | ⚠️ Unaudited |
| CauldronLib | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 9 deployments: ethereum `0x785afa...5faa35`; arbitrum `0x116899...2aac10`; arbitrum `0x2be431...f361b0`; arbitrum `0x4f5126...3268a7`; arbitrum `0x5d28da...7620b4`; arbitrum `0xc1f186...c3ec70`; arbitrum `0xdbbd96...dce280`; arbitrum `0xef633d...7ed5ee`; arbitrum `0xff498b...baf30b` | ⚠️ Unaudited |
| CauldronLowRiskV1 | unknown | project_anchor | own_supporting | 0 | ethereum | unit-378757 | `0x6cbafe...7c8c8f` | ⚠️ Unaudited |
| CauldronMediumRiskV1 | unknown | project_anchor | own_supporting | 0 | ethereum | unit-378758 | 3 deployments: ethereum `0x6ff906...38b91f`; ethereum `0xbb02a8...b090f3`; ethereum `0xffbf48...3d9ae6` | ⚠️ Unaudited |
| CauldronOwner | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 22 deployments: ethereum `0x0fc9ce...70cb44`; ethereum `0x30b9de...be9529`; ethereum `0x352360...f56f36`; ethereum `0x8f788f...cba812`; ethereum `0xc77931...d35a25`; moonriver `0x16950c...dd44eb`; moonriver `0x358a42...cf3289`; moonriver `0x633516...6caae4`; moonriver `0x635693...e7d3be`; moonriver `0x8e534c...e6d534`; moonriver `0x9b0f76...ff5fd3`; arbitrum `0x0588ef...e7f843`; arbitrum `0x144eee...3164a8`; arbitrum `0x1e52a8...ab736b`; arbitrum `0x342098...c740fb`; arbitrum `0x4a8b22...f832fa`; arbitrum `0x5fc912...4b68ec`; arbitrum `0xaf2fbb...2d0b86`; arbitrum `0xb4c482...978ba7`; arbitrum `0xbf58ad...dabbfd`; arbitrum `0xe7b98b...4bc4bc`; avalanche `0x793a15...54442d` | ⚠️ Unaudited |
| CauldronRegistry | registry | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 3 deployments: arbitrum `0x60ba38...bcf8ba`; arbitrum `0xc95c39...c2a189`; arbitrum `0xfcf3d7...022d13` | ⚠️ Unaudited |
| CauldronRewarder | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 4 deployments: arbitrum `0x6b44d9...b68793`; arbitrum `0x6e8093...08d9aa`; arbitrum `0xd487a2...dbd543`; arbitrum `0xe788ab...08ee6c` | ⚠️ Unaudited |
| CauldronUtils | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x40e1a0...46c405` | ⚠️ Unaudited |
| CauldronV2 | unknown | project_anchor | own_supporting | 0 | ethereum | unit-378747 | 6 deployments: ethereum `0x390db1...d18a41`; ethereum `0x59e908...2e573f`; ethereum `0x5ec47e...192498`; ethereum `0xbc36fd...14dd63`; ethereum `0xcfc571...e74636`; ethereum `0xf179fe...98ed37` | ⚠️ Unaudited |
| CauldronV2CheckpointV1 | unknown | project_anchor | own_supporting | 0 | ethereum | unit-378746 | 2 deployments: ethereum `0x35a0dd...a30321`; ethereum `0x4eaed7...e4b3a0` | ⚠️ Unaudited |
| CauldronV2Flat | unknown | project_anchor | own_supporting | 0 | ethereum | unit-378736 | 12 deployments: ethereum `0x003d5a...9eed0f`; ethereum `0x05500e...6e7c27`; ethereum `0x0bca8e...d401c1`; ethereum `0x252dcf...32eae4`; ethereum `0x6371ef...3b7985`; ethereum `0x7b7473...c39020`; ethereum `0x920d9b...953f9f`; ethereum `0x9617b6...795341`; ethereum `0x98a84e...b6b99f`; ethereum `0xc1879b...b592ce`; ethereum `0xc319ee...57e7da`; ethereum `0xebfde8...e93f0a` | ⚠️ Unaudited |
| CauldronV2MultiChain | unknown | project_anchor | own_supporting | 0 | bsc | unit-378879 | 2 deployments: bsc `0x692cf1...c12c90`; bsc `0xf80494...a93319` | ⚠️ Unaudited |
| CauldronV2Multichain | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x99d8a9...1e17f3` | ⚠️ Unaudited |
| CauldronV2Multichain | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-378858 | `0xc89958...0215e6` | ⚠️ Unaudited |
| CauldronV2Multichain | unknown | project_anchor | own_supporting | 0 | avalanche | unit-378861 | 5 deployments: avalanche `0x0a1e6a...b1cf3d`; avalanche `0x2450bf...e68d07`; avalanche `0x3b63f8...ad964b`; avalanche `0x95cce6...b54210`; avalanche `0xacc682...9f28e3` | ⚠️ Unaudited |
| CauldronV2Multichain | unknown | project_anchor | own_supporting | 0 | avalanche | unit-378866 | 3 deployments: avalanche `0x35fa7a...d6bb21`; avalanche `0x3cfed0...30d2a2`; avalanche `0x56984f...6ba49d` | ⚠️ Unaudited |
| CauldronV3 | unknown | project_anchor | own_supporting | 0 | ethereum | unit-378762 | 3 deployments: ethereum `0x7ce7d9...064757`; ethereum `0xc6b2b3...09001e`; ethereum `0xd31e19...dc7324` | ⚠️ Unaudited |
| CauldronV3 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | 8 deployments: ethereum `0x3e2a2b...eb493e`; ethereum `0x95fdc9...7d0f0f`; ethereum `0xc33d23...927202`; arbitrum `0x233332...accb9c`; avalanche `0x177a24...7de3f7`; avalanche `0x735007...b1bc25`; avalanche `0xa32d03...6fd918`; avalanche `0xf24f4c...c878cf` | ⚠️ Unaudited |
| CauldronV3_1 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | 6 deployments: optimism `0xacdd6e...a7a97b`; optimism `0xc7a161...cd8d8c`; arbitrum `0xd98bfb...3384ee`; avalanche `0x16ebac...08ea75`; avalanche `0xced9e3...6b1340`; avalanche `0xd8af15...5f9a40` | ⚠️ Unaudited |
| CauldronV3_2 | unknown | project_anchor | own_supporting | 0 | ethereum | unit-378765 | `0x822796...438df5` | ⚠️ Unaudited |
| CauldronV3_2 | unknown | project_anchor | own_supporting | 0 | optimism | unit-378803 | `0x68f498...ff2362` | ⚠️ Unaudited |
| CauldronV3_2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | 2 deployments: ethereum `0xe19b0d...61a12c`; optimism `0xb69578...cc5e02` | ⚠️ Unaudited |
| CauldronV4 | unknown | project_anchor | own_supporting | 0 | ethereum | unit-378735 | 21 deployments: ethereum `0x00380c...0ac923`; ethereum `0x38e7d1...4a41bb`; ethereum `0x43243f...4054a5`; ethereum `0xa84101...4c3b9d`; ethereum `0xc4113a...517c77`; ethereum `0xe8ed74...5bf341`; moonriver `0x2f1ba2...178f89`; moonriver `0x3477df...3c7e75`; moonriver `0x8d99a1...d0da30`; moonriver `0x9affe9...59fbc4`; moonriver `0xe8de4c...fc916a`; arbitrum `0x303a59...bbc0b9`; arbitrum `0x49de72...c8fa57`; arbitrum `0x6b04c5...3dacb6`; arbitrum `0x780db9...d0c320`; arbitrum `0xdf46f6...045297`; arbitrum `0xe05811...3a194e`; arbitrum `0xed50bb...4c14de`; arbitrum `0xee22ba...14eb16`; arbitrum `0xef2acb...04e16e`; avalanche `0x17b205...6f5341` | ⚠️ Unaudited |
| CauldronV4 | unknown | project_anchor | own_supporting | 0 | ethereum | unit-378740 | `0x207763...3c1588` | ⚠️ Unaudited |
| CauldronV4 | unknown | project_anchor | own_supporting | 0 | ethereum | unit-378755 | 3 deployments: ethereum `0x692887...89b684`; ethereum `0x7259e1...1a6a90`; ethereum `0x7d8df3...b90815` | ⚠️ Unaudited |
| CauldronV4 | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | arbitrum | unit-378849 | `0x569813...0406d5` | ⚠️ Unaudited |
| CauldronV4WithRewarder | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 12 deployments: arbitrum `0x247d7e...1ad85f`; arbitrum `0x565195...a0f194`; arbitrum `0x79533f...bec951`; arbitrum `0x967dbc...ffe9ec`; arbitrum `0x96bac9...a8ca62`; arbitrum `0x98bf3e...0d3ede`; arbitrum `0xa3c893...a92a12`; arbitrum `0xac6c43...13d512`; arbitrum `0xc435cc...25534f`; arbitrum `0xcd959b...500c5c`; arbitrum `0xd404be...4cedec`; arbitrum `0xe45217...5fad2b` | ⚠️ Unaudited |
| CauldronZodiacActions | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x4b67a9...ea81f9` | ⚠️ Unaudited |
| CheckpointCauldronV4 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf36a10...deb23b` | ⚠️ Unaudited |
| ClaimZap | adapter | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3f29cb...cf2516` | ⚠️ Unaudited |
| Cliff | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | 2 deployments: avalanche `0xaff905...2d4f34`; avalanche `0xc13b1c...7f6796` | ⚠️ Unaudited |
| Contract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 13 deployments: ethereum `0x0f8d24...fd5a40`; ethereum `0x1ba40e...ac3c6e`; ethereum `0x52d75b...d449d3`; ethereum `0x9fe1d1...5c8bb7`; ethereum `0xaf6ae1...96c7ff`; ethereum `0xb6a2f5...7fd638`; ethereum `0xed6987...d8ab90`; arbitrum `0x0d62f9...53c4f7`; arbitrum `0x1b77fd...73315b`; arbitrum `0x41d5a0...c601af`; arbitrum `0xb3a7e6...4182d3`; arbitrum `0xc7e542...b3f094`; arbitrum `0xda0b69...d22179` | ⚠️ Unaudited |
| ConvexStakingWrapperAbra | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x4985cc...cc8c20`; ethereum `0x9447c1...4c5646`; ethereum `0xd92494...e51008` | ⚠️ Unaudited |
| CrvDepositor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x801459...dc86ae` | ⚠️ Unaudited |
| CustomMasterChefJoeV2Timelock | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xadaf18...e6e398` | ⚠️ Unaudited |
| CvxCrvStakingWrapper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xaa0c3f...dbe434` | ⚠️ Unaudited |
| CvxDistribution | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x449f2f...d1ddc6` | ⚠️ Unaudited |
| cvxFpisStaking | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfa87db...6bc483` | ⚠️ Unaudited |
| cvxFxsStaking | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x49b4d1...37e31a` | ⚠️ Unaudited |
| CvxLocker | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd18140...94af50` | ⚠️ Unaudited |
| CvxLockerV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x72a193...2db86e` | ⚠️ Unaudited |
| DegenBox | unknown | project_anchor | own_supporting | 0 | ethereum | unit-378784 | `0xd96f48...fc2cce` | ⚠️ Unaudited |
| DegenBox | unknown | project_anchor | own_supporting | 0 | optimism | unit-378809 | `0xa93c81...ba1723` | ⚠️ Unaudited |
| DegenBox | unknown | project_anchor | own_supporting | 0 | bsc | unit-378876 | `0x090185...37e5f6` | ⚠️ Unaudited |
| DegenBox | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | 10 deployments: optimism `0x233332...accb9c`; optimism `0xb3f5c7...a26753`; polygon `0x7a3b79...080449`; polygon `0xe56f37...d60b42`; moonriver `0x0d2a51...e59449`; base `0x6e4358...b7f442`; base `0xa3372c...b3b20d`; arbitrum `0x268ab9...c54be4`; arbitrum `0xfd7234...5745f5`; avalanche `0xd825d0...b0e6a4` | ⚠️ Unaudited |
| DegenBox | unknown | project_anchor | own_supporting | 0 | avalanche | unit-378863 | `0x1fc83f...aae530` | ⚠️ Unaudited |
| DegenBoxERC20VaultWrapper | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | 6 deployments: optimism `0x19c08f...7d0fd7`; optimism `0x1fff78...28635a`; optimism `0xd8cbd5...03993b`; optimism `0xf4b368...90349e`; arbitrum `0x384419...f302a3`; arbitrum `0xa30093...57e743` | ⚠️ Unaudited |
| DegenBoxERC4626Wrapper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 12 deployments: ethereum `0x358435...bd4eb2`; ethereum `0x36c19d...5f3e56`; ethereum `0x3f6ec9...238ac0`; ethereum `0xb0deb9...727af1`; arbitrum `0x0f8d24...fd5a40`; arbitrum `0x3c34bc...9b4187`; arbitrum `0x565ade...17c10b`; arbitrum `0x65c6b4...5c51ec`; arbitrum `0x71c726...688d6b`; arbitrum `0x72db70...e5760d`; arbitrum `0x920a01...4dd8af`; arbitrum `0xda93e1...84bcc5` | ⚠️ Unaudited |
| DegenBoxHelper | periphery | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 2 deployments: ethereum `0x3aecb0...f700a1`; arbitrum `0x129149...54ea45` | ⚠️ Unaudited |
| DegenBoxOwner | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x0d2a51...e59449` | ⚠️ Unaudited |
| DegenBoxTokenWrapper | token | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 2 deployments: arbitrum `0xd3a238...a263c7`; arbitrum `0xdd45c6...85dba5` | ⚠️ Unaudited |
| Distributor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x472cfd...24b85d`; ethereum `0x73cfe6...d2bb1e`; ethereum `0xc58e92...7d3ce6` | ⚠️ Unaudited |
| DynamicLPStrategy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x0d2a51...e59449` | ⚠️ Unaudited |
| ElevatedMinterBurner | unknown | project_anchor | own_supporting | 0 | bsc | unit-378880 | `0x79533f...bec951` | ⚠️ Unaudited |
| ElevatedMinterBurner | unknown | project_anchor | own_supporting | 0 | polygon | unit-378816 | `0x8e7982...9c20fc` | ⚠️ Unaudited |
| ElevatedMinterBurner | unknown | project_anchor | own_supporting | 0 | moonriver | n/a | 25 deployments: optimism `0x155fca...8c432f`; optimism `0x1e188d...b759a5`; optimism `0x7ad0e5...1eaaa7`; optimism `0x8e266f...0878bc`; optimism `0xcf4f8e...83067f`; optimism `0xf24f4c...c878cf`; bsc `0xd4d19f...bf4c4b`; polygon `0x4d526f...b64f52`; polygon `0x76c936...c02c19`; moonriver `0x08b918...63ef63`; moonriver `0x458aeb...7b1540`; moonriver `0x52b277...d097e4`; moonriver `0x97471c...17d954`; moonriver `0xb3f5c7...a26753`; moonriver `0xc7a161...cd8d8c`; moonriver `0xd2221c...f74bf5`; arbitrum `0x52d75b...d449d3`; avalanche `0x2fdc60...5e58ce`; avalanche `0x611200...e59f7f`; avalanche `0x7707b4...d6704f`; avalanche `0x7bc6ce...2398fb`; avalanche `0x7c6e8a...4aaeb7`; avalanche `0x9d6cb1...ca89fc`; avalanche `0xcdadbe...9c6cad`; avalanche `0xe5317d...95cbf5` | ⚠️ Unaudited |
| ElevatedMinterBurner | unknown | project_anchor | own_supporting | 0 | moonriver | unit-378813 | `0x6e858b...079728` | ⚠️ Unaudited |
| ElevatedMinterBurner | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-378844 | `0x26f20d...01b6b3` | ⚠️ Unaudited |
| ElevatedMinterBurner | unknown | project_anchor | own_supporting | 0 | avalanche | unit-378871 | `0x9ba780...c3b769` | ⚠️ Unaudited |
| ENAOFT | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x58538e...9c0133` | ⚠️ Unaudited |
| EpochBasedRewardDistributor | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 5 deployments: arbitrum `0x0c93b8...e82995`; arbitrum `0x0eb142...60f8d0`; arbitrum `0x2050b2...cfe747`; arbitrum `0x4f1135...761ce1`; arbitrum `0xfe0d82...a5558c` | ⚠️ Unaudited |
| ERC1967Factory | registry | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 2 deployments: arbitrum `0x83aadf...66b4b6`; arbitrum `0x93428a...718906` | ⚠️ Unaudited |
| ERC20Mock | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | 2 deployments: avalanche `0x72281a...106587`; avalanche `0x9e6cab...c05b09` | ⚠️ Unaudited |
| ERC20Oracle | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 2 deployments: arbitrum `0x2f32c6...723162`; arbitrum `0xddcb7b...0703bb` | ⚠️ Unaudited |
| ERC20VaultOracle | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x2977e3...bbd982` | ⚠️ Unaudited |
| ERC4626LevSwapper | adapter | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 7 deployments: ethereum `0xaa0500...450c87`; ethereum `0xb9143a...108e7c`; ethereum `0xc47c19...f4a56c`; ethereum `0xc7f6b1...182077`; ethereum `0xd22b27...984add`; ethereum `0xf236c2...c2f923`; ethereum `0xfcf3d7...022d13` | ⚠️ Unaudited |
| ERC4626Oracle | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 9 deployments: ethereum `0x03621c...e4e1f9`; ethereum `0x1bc14e...fb6299`; ethereum `0x1db6ae...119138`; ethereum `0x760c0d...2c5c6f`; ethereum `0x7c200a...b941ae`; ethereum `0x9753f3...004443`; ethereum `0x9c4cf0...6b803a`; ethereum `0xeb5830...3db291`; ethereum `0xeb75c5...b7195b` | ⚠️ Unaudited |
| ERC4626Swapper | adapter | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 5 deployments: ethereum `0x144d5b...384e9f`; ethereum `0x93ef8e...5407cd`; ethereum `0xb9516c...4f7b3d`; ethereum `0xc0e99a...3744ca`; ethereum `0xcfec59...4428a5` | ⚠️ Unaudited |
| EsGMX | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xf42ae1...a426ca` | ⚠️ Unaudited |
| EthereumWithdrawer | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2612c7...3706f6` | ⚠️ Unaudited |
| EthereumWithdrawer | operational_periphery | project_anchor | own_supporting | 0 | ethereum | unit-378771 | `0xb2c3a9...ba48f4` | ⚠️ Unaudited |
| ExercisepOLY | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x06843e...c50315` | ⚠️ Unaudited |
| Extract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 8 deployments: ethereum `0x2050b2...cfe747`; ethereum `0x376e01...f2ff7e`; ethereum `0x4eb8db...b201dc`; ethereum `0x531208...90c07c`; ethereum `0xd67d17...d7019d`; ethereum `0xe446e1...36f2e5`; ethereum `0xe71896...b609ad`; ethereum `0xe93046...2510dd` | ⚠️ Unaudited |
| Factory | registry | project_anchor | own_supporting | 0 | ethereum | unit-378786 | `0xdf46f6...045297` | ⚠️ Unaudited |
| Factory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | 2 deployments: base `0x9620a2...7c0999`; linea `0x697778...7d3755` | ⚠️ Unaudited |
| FastPriceFeed | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x11d628...f43bb7` | ⚠️ Unaudited |
| FeeBridge | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd43024...1410e9` | ⚠️ Unaudited |
| FeeDepositV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7a527d...a0d769` | ⚠️ Unaudited |
| FeeRateModel | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 6 deployments: ethereum `0x410195...256344`; base `0x358a42...cf3289`; arbitrum `0x648360...768155`; arbitrum `0x68e786...320a3e`; arbitrum `0xf0f110...3bb3b3`; linea `0x91701a...9f59bc` | ⚠️ Unaudited |
| FeeRateModelImpl | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 4 deployments: ethereum `0xcc3d99...0e9935`; base `0x9affe9...59fbc4`; arbitrum `0x223d9b...8fb0c9`; linea `0x418ade...a64470` | ⚠️ Unaudited |
| FixedPriceOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | 4 deployments: avalanche `0x116899...2aac10`; blast `0x12ea78...9f3e98`; blast `0x2bcccb...7ca327`; blast `0x5fbaf1...421d5d` | ⚠️ Unaudited |
| Foo | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | 12 deployments: avalanche `0x04bc95...792722`; avalanche `0x238693...e56a46`; avalanche `0x4a9aa1...0d2abc`; avalanche `0x4c67a4...6e8c72`; avalanche `0x8beff7...3a2997`; avalanche `0x8c63cd...bed669`; avalanche `0x8f5e56...d520f6`; avalanche `0x931c3a...0c0e6f`; avalanche `0x9d01d5...09618d`; avalanche `0xd2969a...5affcf`; avalanche `0xe8d3e9...2d3e87`; avalanche `0xed172b...b8b838` | ⚠️ Unaudited |
| Foobar | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 5 deployments: arbitrum `0x016797...5be9cc`; arbitrum `0x074776...7c170e`; arbitrum `0x526a17...acdfdd`; arbitrum `0x68a8b7...8ac357`; arbitrum `0x7ad0e5...1eaaa7` | ⚠️ Unaudited |
| FTT | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x50d1c9...55a4c9` | ⚠️ Unaudited |
| FTT3MonthUnlock | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x46c68e...e5c83a`; ethereum `0x600d08...0b7862` | ⚠️ Unaudited |
| FTT3YearUnlock | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd76901...28bb83` | ⚠️ Unaudited |
| GizerItems | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6c0f03...fd4602` | ⚠️ Unaudited |
| GizerToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x5db2d4...87b59b`; ethereum `0x89afa6...5d9289`; ethereum `0xe638dc...f46d8e` | ⚠️ Unaudited |
| GLP | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x4277f8...1ac258` | ⚠️ Unaudited |
| GlpManager | governance | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 2 deployments: arbitrum `0x321f65...e22649`; arbitrum `0x3963ff...32ec18` | ⚠️ Unaudited |
| GLPOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 4 deployments: arbitrum `0x1dde35...c38d28`; arbitrum `0x445918...125582`; arbitrum `0x791aab...91dcc1`; arbitrum `0x8bee5d...9cf528` | ⚠️ Unaudited |
| GlpVaultHarvestor | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 4 deployments: arbitrum `0x03ac08...60ad69`; arbitrum `0x08bd2c...01d4a8`; arbitrum `0xe553fb...555b47`; arbitrum `0xedea45...36ad51` | ⚠️ Unaudited |
| GLPVaultLevSwapper | adapter | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 2 deployments: arbitrum `0x8e266f...0878bc`; arbitrum `0x9b27a4...15fb45` | ⚠️ Unaudited |
| GLPVaultOracle | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 3 deployments: arbitrum `0x2d0d6e...ba343f`; arbitrum `0x56fa1d...635c43`; arbitrum `0xb19935...0250fe` | ⚠️ Unaudited |
| GLPVaultSwapper | adapter | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 2 deployments: arbitrum `0x535c8f...e8ccfb`; arbitrum `0xef05d8...90d881` | ⚠️ Unaudited |
| GlpWrapperHarvestor | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 3 deployments: arbitrum `0x635693...e7d3be`; arbitrum `0x8e534c...e6d534`; arbitrum `0xf9ce23...a0de62` | ⚠️ Unaudited |
| GLPWrapperLevSwapper | adapter | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x8beff7...3a2997` | ⚠️ Unaudited |
| GLPWrapperSwapper | adapter | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 2 deployments: arbitrum `0xa7b619...d54daa`; arbitrum `0xb09efc...7243f6` | ⚠️ Unaudited |
| GmOracleWithAggregator | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 24 deployments: arbitrum `0x139a65...90a6ef`; arbitrum `0x149a01...d5081b`; arbitrum `0x1efde9...2c0c98`; arbitrum `0x290ba9...aadc1b`; arbitrum `0x2cecb3...f56321`; arbitrum `0x3b4a99...40f84a`; arbitrum `0x3e60da...3791ab`; arbitrum `0x3e8171...68d317`; arbitrum `0x593aec...84b86d`; arbitrum `0x647524...602253`; arbitrum `0x72c6a9...cf4c9e`; arbitrum `0x7541f0...ceb3da`; arbitrum `0x8a1967...e565a8`; arbitrum `0x8f7ba7...a46dd6`; arbitrum `0xaa5c57...9585dd`; arbitrum `0xaadfa5...5c5d8a`; arbitrum `0xabb326...007a97`; arbitrum `0xb65b26...77db95`; arbitrum `0xb6b8bc...94305b`; arbitrum `0xba5994...086194`; arbitrum `0xca0d42...3704da`; arbitrum `0xd9e4c7...740dc7`; arbitrum `0xf4dcb8...4571aa`; arbitrum `0xfacf64...a49b35` | ⚠️ Unaudited |
| GmStrategy | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 30 deployments: arbitrum `0x0d609c...2ac801`; arbitrum `0x0e3a79...1c61fe`; arbitrum `0x120ed2...a09889`; arbitrum `0x19366c...14d9e5`; arbitrum `0x1c72ca...3d95fa`; arbitrum `0x25ac30...4cdaf4`; arbitrum `0x3142ab...a178f1`; arbitrum `0x394d8b...55f220`; arbitrum `0x39c54b...b39001`; arbitrum `0x3c47e7...807d03`; arbitrum `0x4ae146...41a3cd`; arbitrum `0x552f8a...e27941`; arbitrum `0x60a816...cfad30`; arbitrum `0x6eddfd...d7cc16`; arbitrum `0x7c37de...8ffeb8`; arbitrum `0x892ddc...4ee27c`; arbitrum `0x90d1d2...d1f173`; arbitrum `0x9256fc...938b93`; arbitrum `0x9f026f...2c1639`; arbitrum `0xa438a6...7bc3fc`; arbitrum `0xb24e69...c5cd59`; arbitrum `0xb4fc7b...cd1373`; arbitrum `0xc3e835...f45572`; arbitrum `0xcbc235...ea78a4`; arbitrum `0xd46d42...dc44f0`; arbitrum `0xd9c7e2...a6a3c6`; arbitrum `0xe88c07...7ec555`; arbitrum `0xea3bd3...207d8a`; arbitrum `0xf4a1a6...95a288`; arbitrum `0xf53a00...c06b80` | ⚠️ Unaudited |
| GMX | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xfc5a1a...35ad0a` | ⚠️ Unaudited |
| GmxGlpRewardHandler | unknown | project_anchor | own_supporting | 1 | arbitrum | unit-378958 | 2 deployments: arbitrum `0x3477df...3c7e75`; arbitrum `0x8d99a1...d0da30` | ⚠️ Unaudited |
| GmxGlpRewardHandler | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xf4b368...90349e` | ⚠️ Unaudited |
| GmxGlpVault | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 3 deployments: arbitrum `0x51b2ba...556173`; arbitrum `0x8833c3...42225c`; arbitrum `0x94ea01...3a00f4` | ⚠️ Unaudited |
| GmxGlpVaultRewardHandler | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 3 deployments: arbitrum `0x3bc211...72efec`; arbitrum `0x7357b2...3fdf75`; arbitrum `0x854a86...cf10a3` | ⚠️ Unaudited |
| GmxGlpWrapper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xd8cbd5...03993b` | ⚠️ Unaudited |
| GmxLens | periphery | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 12 deployments: arbitrum `0x0bfc4d...bacffb`; arbitrum `0x418a23...5e38bb`; arbitrum `0x66499d...bc1f1a`; arbitrum `0x6fedbe...83c4b4`; arbitrum `0x714085...a2cd74`; arbitrum `0x72015e...52dfcb`; arbitrum `0x8c63cd...bed669`; arbitrum `0xabbd4a...ab4cfc`; arbitrum `0xd93809...3b4674`; arbitrum `0xf30596...18a225`; arbitrum `0xf6939a...adb75c`; avalanche `0x1589de...788c69` | ⚠️ Unaudited |
| GmxV2CauldronOrderAgent | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 21 deployments: arbitrum `0x0155b6...c83203`; arbitrum `0x0ad2ce...ca1954`; arbitrum `0x10b37a...ce1615`; arbitrum `0x153ecd...07fc17`; arbitrum `0x1ae691...a1ec69`; arbitrum `0x1b6552...750f36`; arbitrum `0x2d9b2d...04056c`; arbitrum `0x49676b...969757`; arbitrum `0x5389e3...fc674e`; arbitrum `0x59eea3...90677c`; arbitrum `0x5b82fa...50e684`; arbitrum `0x6b101c...6987ff`; arbitrum `0x71f94a...cf15bb`; arbitrum `0x8e2c80...2cd862`; arbitrum `0x8e4a11...50ae4a`; arbitrum `0xa822ae...24aa5e`; arbitrum `0xcfd3c2...22e8b3`; arbitrum `0xecabba...32b076`; arbitrum `0xede9a6...1c21aa`; arbitrum `0xf48959...67124a`; arbitrum `0xf6e2a4...2734a8` | ⚠️ Unaudited |
| GmxV2CauldronRouterOrder | adapter | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 20 deployments: arbitrum `0x02a97f...59414a`; arbitrum `0x1ce8ec...418f27`; arbitrum `0x3a5770...d0574e`; arbitrum `0x4b0004...338790`; arbitrum `0x6c1ef1...f6df76`; arbitrum `0x709aa6...00bf7c`; arbitrum `0x73962c...b5ca5f`; arbitrum `0x760c0d...2c5c6f`; arbitrum `0x8764f8...d7682a`; arbitrum `0x8b14ff...28854a`; arbitrum `0x94ea6b...e00fc2`; arbitrum `0x992b72...efabcb`; arbitrum `0x9d9826...7bf712`; arbitrum `0xa6032f...81ed3e`; arbitrum `0xb01a7a...8e2167`; arbitrum `0xb14e4e...5d6989`; arbitrum `0xb621b8...18faac`; arbitrum `0xba95c5...390b43`; arbitrum `0xcde8ed...4c42b7`; arbitrum `0xede6ec...bc4fe5` | ⚠️ Unaudited |
| GmxV2CauldronV4 | unknown | project_anchor | own_supporting | 0 | arbitrum | n/a | 15 deployments: arbitrum `0x017ccd...ed6bdb`; arbitrum `0x0c8913...166b9b`; arbitrum `0x1b867b...a67043`; arbitrum `0x2b02bb...1934fa`; arbitrum `0x4809cb...34e5cc`; arbitrum `0x4f9737...e40741`; arbitrum `0x625fe7...74bd61`; arbitrum `0x66805f...996c6a`; arbitrum `0x74322f...410359`; arbitrum `0x7962ac...5404fb`; arbitrum `0x9ff8b4...e94831`; arbitrum `0xa6299c...c6b210`; arbitrum `0xb3d722...47f2f0`; arbitrum `0xd7659d...6d552a`; arbitrum `0xf69553...a2bd5e` | ⚠️ Unaudited |
| GMXV2Experiment_OrderAgent | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 3 deployments: arbitrum `0x6ac116...e0746d`; arbitrum `0x704df2...9ab431`; arbitrum `0x7ad66f...1fdead` | ⚠️ Unaudited |
| GMXV2Experiment_RouterOrder | adapter | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 3 deployments: arbitrum `0x3b0eca...08eee5`; arbitrum `0x8d9e68...616e59`; arbitrum `0x9cab9f...359439` | ⚠️ Unaudited |
| GnosisSafe | governance | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0xdf2c27...1e126b` | ⚠️ Unaudited |
| GnosisSafeL2 | governance | non_address_book | standard_proxy_or_library (excluded) | 1 | arbitrum | n/a | `0xa71a02...b7174c` | ⚠️ Unaudited |
| GnosisSafeProxy | governance | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xae4d3a...a543ca` | ⚠️ Unaudited |
| Harvester | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6d6bca...86e1e7` | ⚠️ Unaudited |
| ImplementatonV1 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 2 deployments: arbitrum `0x430ab8...bc603a`; arbitrum `0xe0e091...f0cc32` | ⚠️ Unaudited |
| ImplementatonV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 2 deployments: arbitrum `0x096d6a...021c42`; arbitrum `0x89be82...794729` | ⚠️ Unaudited |
| InchSpellSwapper | adapter | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdfe1a5...a52111` | ⚠️ Unaudited |
| Incrementer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x3eddac...50015d`; ethereum `0x5ee7ca...1a2a5a`; ethereum `0xed175a...0d2403` | ⚠️ Unaudited |
| IndaHashToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb5c2ea...f78212` | ⚠️ Unaudited |
| IndirectOFTV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | 26 deployments: optimism `0xac9c9b...d8324f`; optimism `0xb7ddfa...a57754`; optimism `0xe685a3...bdb0ca`; bsc `0x70b868...6a7493`; bsc `0xf76da2...ae20fc`; polygon `0x563111...fc537b`; polygon `0x7c8fef...431d38`; polygon `0xa6247e...b3c15e`; moonriver `0x9031c0...b3d8f7`; moonriver `0xa93c81...ba1723`; moonriver `0xae031b...8bbe90`; moonriver `0xb9565f...4f265a`; moonriver `0xbb7211...6409d5`; moonriver `0xee2f02...8f143a`; moonriver `0xfbf7db...33a586`; arbitrum `0x3b47e8...94fbe9`; arbitrum `0xfcd8d8...a1a2d9`; avalanche `0x0703ea...bdce5c`; avalanche `0x12445a...0c5652`; avalanche `0x225c5e...60f96f`; avalanche `0x384528...d206fd`; avalanche `0x4b8750...57b2db`; avalanche `0x762d06...6e596e`; avalanche `0x9edc38...88fd2b`; avalanche `0xe0e091...f0cc32`; avalanche `0xf8c54f...06650c` | ⚠️ Unaudited |
| InterestRateCalculatorV2 | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1972b5...bc14f7` | ⚠️ Unaudited |
| InterestStrategy | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x186d76...9fd1af`; ethereum `0x7386fd...d8867c`; ethereum `0xcc0d7a...e9c6c5` | ⚠️ Unaudited |
| InterestStrategyLens | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x14741c...20088f`; ethereum `0xfd2387...17787b` | ⚠️ Unaudited |
| InverseOracle | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | 18 deployments: ethereum `0x0edce6...cb0036`; ethereum `0x683e54...886296`; ethereum `0xba8f89...7f77e4`; ethereum `0xeb91a1...b8a2f8`; ethereum `0xff2f96...8639c3`; optimism `0x0bf531...e63d66`; arbitrum `0x2901c6...4a6563`; arbitrum `0x30fbce...9e0da9`; arbitrum `0x4871be...d025ac`; arbitrum `0x7eab65...dbe869`; arbitrum `0x87b2d5...80134d`; arbitrum `0x8b35b1...6c7e8d`; arbitrum `0xb1c7b1...5c9267`; arbitrum `0xc7e87e...8208f6`; arbitrum `0xc88725...f272df`; arbitrum `0xd14537...6ac10f`; arbitrum `0xed7646...78664e`; arbitrum `0xfb5753...c6c07f` | ⚠️ Unaudited |
| InverseOracle | operational_periphery | project_anchor | own_supporting | 0 | blast | unit-378931 | `0xb2c3a9...ba48f4` | ⚠️ Unaudited |
| InvertedLPOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | 3 deployments: optimism `0xdfa94f...ca293d`; avalanche `0x3edf40...bebfe9`; avalanche `0xf1f201...8ad227` | ⚠️ Unaudited |
| JCollateralCapErc20Delegate | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | 36 deployments: avalanche `0x125cf8...84b4d2`; avalanche `0x1adbde...330024`; avalanche `0x28adbb...a7a0a3`; avalanche `0x296731...f9bd20`; avalanche `0x2e3a35...7975e2`; avalanche `0x2ed5cd...ff11bd`; avalanche `0x320448...6cccee`; avalanche `0x3ac928...16b974`; avalanche `0x3b34e1...185ecc`; avalanche `0x4a586d...a4d271`; avalanche `0x564780...bbacd0`; avalanche `0x5f2a43...083ae6`; avalanche `0x647da9...92cf2b`; avalanche `0x6b5a37...93a86b`; avalanche `0x6caf40...9d51c5`; avalanche `0x737fdf...fddf34`; avalanche `0x7a17fb...bf3421`; avalanche `0x81516e...23f592`; avalanche `0x838549...aa34cd`; avalanche `0x83c672...c6ea8a`; avalanche `0x8cc49b...d8a98a`; avalanche `0x97e3a6...213612`; avalanche `0x9c1e13...da9e8e`; avalanche `0xb2bb1e...7e5e8b`; avalanche `0xbb95aa...d7b337`; avalanche `0xc17f99...f9a47a`; avalanche `0xcd85fe...7348ad`; avalanche `0xcf62b6...94429b`; avalanche `0xd1bb83...9fbe3f`; avalanche `0xd7c246...8c3ed5`; avalanche `0xea5e11...cbbf51`; avalanche `0xeb41c9...1b1df8`; avalanche `0xebea85...60e62e`; avalanche `0xeed14f...54847c`; avalanche `0xf65a08...503d42`; avalanche `0xf88d8e...50317c` | ⚠️ Unaudited |
| JCollateralCapErc20Delegate | token | non_address_book | non_address_book_inventory (excluded) | 1 | avalanche | n/a | `0xce095a...6a75ea` | ⚠️ Unaudited |
| JCollateralCapErc20Delegator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x102011...ae0fbf` | ⚠️ Unaudited |
| JoeBar | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x57319d...fd4f33` | ⚠️ Unaudited |
| JoeDynamicSubLPStrategy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xaf2fbb...2d0b86` | ⚠️ Unaudited |
| JoeFactory | registry | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | 2 deployments: avalanche `0x9ad6c3...0cfa10`; avalanche `0xe2ecc2...e75eb8` | ⚠️ Unaudited |
| JoeLens | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xfdf50f...8a47cc` | ⚠️ Unaudited |
| JoeMaker | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | 2 deployments: avalanche `0x4247c5...bcdcfe`; avalanche `0x861726...b65856` | ⚠️ Unaudited |
| JoeMakerV3 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xdb5b4c...a475d3` | ⚠️ Unaudited |
| JoePair | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | 3 deployments: avalanche `0x781655...fd755d`; avalanche `0xa389f9...e3ddb1`; avalanche `0xed8cbd...7a6256` | ⚠️ Unaudited |
| JoeRoll | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xacff0f...0bcb58` | ⚠️ Unaudited |
| JoeRouter02 | adapter | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x60ae61...0933d4` | ⚠️ Unaudited |
| Joetroller | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | 2 deployments: avalanche `0x1ed836...92cfcb`; avalanche `0x8b33e8...3d99b7` | ⚠️ Unaudited |
| Joetroller | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | avalanche | n/a | `0xdc1368...a1edac` | ⚠️ Unaudited |
| JUSDCAggregator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x387d95...ea9b4d` | ⚠️ Unaudited |
| JWrappedNativeDelegate | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | 3 deployments: avalanche `0x267a45...149df5`; avalanche `0x81b539...3d9136`; avalanche `0xd915fd...015531` | ⚠️ Unaudited |
| JWrappedNativeDelegate | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | avalanche | n/a | `0xc22f01...4ec29e` | ⚠️ Unaudited |
| KashiPairMediumRiskV1 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x74a81c...e51e65`; arbitrum `0xa010ee...1f5d3e` | ⚠️ Unaudited |
| LevelFinanceStakingLens | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 2 deployments: bsc `0x0bf531...e63d66`; bsc `0x4437db...c52709` | ⚠️ Unaudited |
| LevSwapperTester | adapter | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9ab1a9...d39a32` | ⚠️ Unaudited |
| LiquityStabilityPoolStrategy | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x0e58a7...d6444d`; ethereum `0x1edc13...bc755c`; ethereum `0x808e62...47f0d0` | ⚠️ Unaudited |
| LockingMultiRewards | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 11 deployments: arbitrum `0x13e17f...321b20`; arbitrum `0x20f2b9...39646f`; arbitrum `0x852563...4371ca`; arbitrum `0x8d476a...8c7b2b`; arbitrum `0x8d8bdf...268e90`; arbitrum `0x9512b9...6984e6`; arbitrum `0x98164d...e02d0a`; arbitrum `0x99be6b...669b5d`; arbitrum `0xd30c93...c1ba7b`; arbitrum `0xe06d95...bd73b6`; arbitrum `0xe71896...b609ad` | ⚠️ Unaudited |
| LPChainlinkOracleV1 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | 2 deployments: avalanche `0x04a34f...3e31d6`; avalanche `0x279d54...6800a3` | ⚠️ Unaudited |
| LPResolver | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | 2 deployments: avalanche `0x04df48...092682`; avalanche `0x107cca...d1dea6` | ⚠️ Unaudited |
| LPStrategy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | 6 deployments: avalanche `0x006d8e...f938c5`; avalanche `0x438383...dc953d`; avalanche `0x663ef4...1aeb38`; avalanche `0x87a5bf...0c2e82`; avalanche `0xa6247e...b3c15e`; avalanche `0xad2f28...eb030d` | ⚠️ Unaudited |
| LQTYStaking | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4f9fbb...fc605d` | ⚠️ Unaudited |
| LzIndirectOFTV2 | unknown | project_anchor | own_supporting | 0 | optimism | unit-378801 | `0x48686c...e74339` | ⚠️ Unaudited |
| LzIndirectOFTV2 | unknown | project_anchor | own_supporting | 0 | bsc | unit-378878 | `0x41d5a0...c601af` | ⚠️ Unaudited |
| LzIndirectOFTV2 | unknown | project_anchor | own_supporting | 0 | polygon | unit-378817 | `0xca0d86...e05533` | ⚠️ Unaudited |
| LzIndirectOFTV2 | unknown | project_anchor | own_supporting | 0 | moonriver | unit-378814 | `0xef2dbd...4f0195` | ⚠️ Unaudited |
| LzIndirectOFTV2 | unknown | project_anchor | own_supporting | 0 | base | unit-378951 | `0x403595...91d262` | ⚠️ Unaudited |
| LzIndirectOFTV2 | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-378857 | `0x957a8a...0b7090` | ⚠️ Unaudited |
| LzIndirectOFTV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | 16 deployments: optimism `0x610e59...3f4ad4`; optimism `0xa3ba21...5cb11d`; optimism `0xa9ba98...53fac0`; optimism `0xf1f201...8ad227`; bsc `0x854a86...cf10a3`; bsc `0xab137b...138ee6`; polygon `0x1ca9f1...4a0ea8`; polygon `0xf4b368...90349e`; moonriver `0x15f57f...1bc298`; moonriver `0x438383...dc953d`; arbitrum `0x2fdc60...5e58ce`; arbitrum `0x9d1608...5a894b`; arbitrum `0xb94d20...846e91`; avalanche `0x0c1108...df2a3c`; avalanche `0x56d924...50e475`; linea `0x403595...91d262` | ⚠️ Unaudited |
| LzIndirectOFTV2 | unknown | project_anchor | own_supporting | 0 | avalanche | unit-378873 | `0xb3a661...1b130d` | ⚠️ Unaudited |
| LzIndirectOFTV2 | unknown | project_anchor | own_supporting | 0 | linea | unit-378884 | `0x60bbef...25a097` | ⚠️ Unaudited |
| LzIndirectOFTV2 | unknown | project_anchor | own_supporting | 0 | blast | unit-378938 | `0xca8a20...91f018` | ⚠️ Unaudited |
| LzOFTV2FeeHandler | unknown | project_anchor | own_supporting | 0 | base | unit-378953 | `0x52b277...d097e4` | ⚠️ Unaudited |
| LzOFTV2FeeHandler | unknown | project_anchor | own_supporting | 0 | linea | unit-378883 | `0x41b191...26b35a` | ⚠️ Unaudited |
| LzOFTV2FeeHandler | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | 2 deployments: ethereum `0xac5e47...152006`; linea `0x52b277...d097e4` | ⚠️ Unaudited |
| LzOFTV2FeeHandler | unknown | project_anchor | own_supporting | 0 | blast | unit-378905 | `0x630fc1...819d7e` | ⚠️ Unaudited |
| LzProxyOFTV2 | unknown | project_anchor | own_supporting | 0 | ethereum | n/a | 6 deployments: ethereum `0x0f51cc...3d86ea`; ethereum `0x439a5f...f83c10`; ethereum `0x64535e...87e093`; ethereum `0x8d0ac6...0a84e4`; ethereum `0xc12357...bacdb6`; ethereum `0xe708c1...d3a714` | ⚠️ Unaudited |
| LzReceiver | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 3 deployments: arbitrum `0x2f2eb5...fb0b40`; arbitrum `0x5aa097...c2ba07`; arbitrum `0x630dfe...d1b3c5` | ⚠️ Unaudited |
| LzSender | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | 3 deployments: avalanche `0x0fb878...2e9be0`; avalanche `0x290ba9...aadc1b`; avalanche `0xafae61...d16373` | ⚠️ Unaudited |
| MagicApe | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x713ead...718140` | ⚠️ Unaudited |
| MagicApe | unknown | project_anchor | own_supporting | 0 | ethereum | unit-378791 | `0xf35b31...97feb6` | ⚠️ Unaudited |
| MagicApeHarvestor | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x5226d8...0465bf`; ethereum `0x598330...eb3525` | ⚠️ Unaudited |
| MagicApeOracle | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x4b4c27...108940`; ethereum `0xed7062...bba5c1` | ⚠️ Unaudited |
| MagicCRV | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 6 deployments: ethereum `0x0c963a...b91886`; ethereum `0x247d7e...1ad85f`; ethereum `0x49af41...5ec911`; ethereum `0x597d51...1d42db`; ethereum `0x793172...9418c7`; ethereum `0x98bf3e...0d3ede` | ⚠️ Unaudited |
| MagicGlp | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | 2 deployments: avalanche `0x5efc10...ecc2e0`; avalanche `0xde3f63...0c9198` | ⚠️ Unaudited |
| MagicGlpHarvestor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | 7 deployments: arbitrum `0x588d40...991d17`; arbitrum `0x919fe3...a02b3f`; arbitrum `0xc99a48...39c139`; arbitrum `0xdb4f80...38567e`; avalanche `0x05b3b9...7335b0`; avalanche `0x338f3e...88a335`; avalanche `0xdcb9bd...fa0bf1` | ⚠️ Unaudited |
| MagicGlpLevSwapper | adapter | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 5 deployments: arbitrum `0x11cb89...406797`; arbitrum `0x1aeddd...48ace2`; arbitrum `0x49bd7d...7b13f3`; arbitrum `0xde36de...9bd7ed`; arbitrum `0xea06ac...1313a6` | ⚠️ Unaudited |
| MagicGlpOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | 2 deployments: arbitrum `0xa0fc5f...599a4b`; avalanche `0x985f9a...a38545` | ⚠️ Unaudited |
| MagicGlpRewardHandler | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | 2 deployments: avalanche `0x52d75b...d449d3`; avalanche `0xf4f7be...7b8596` | ⚠️ Unaudited |
| MagicGlpSwapper | adapter | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 6 deployments: arbitrum `0x08a47f...074db4`; arbitrum `0x238693...e56a46`; arbitrum `0x48686c...e74339`; arbitrum `0x89963a...1d14d3`; arbitrum `0xa91973...2f65e9`; arbitrum `0xeb07b2...b478d9` | ⚠️ Unaudited |
| MagicInternetMoneyV1 | unknown | project_anchor | own_supporting | 0 | ethereum | unit-378770 | `0x99d8a9...1e17f3` | ⚠️ Unaudited |
| MagicLevel | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 9 deployments: bsc `0x0253db...c14e16`; bsc `0x23a22b...afd309`; bsc `0x2906ae...cf0fc5`; bsc `0x6e9368...9500ef`; bsc `0x75adc3...9501b7`; bsc `0x87ac70...b8af75`; bsc `0xc094c2...cc1a39`; bsc `0xd825d0...b0e6a4`; bsc `0xd8cbd5...03993b` | ⚠️ Unaudited |
| MagicLevelHarvestor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 5 deployments: bsc `0x35467b...806eaa`; bsc `0x418ade...a64470`; bsc `0x630fc1...819d7e`; bsc `0x640605...b76521`; bsc `0xa32d03...6fd918` | ⚠️ Unaudited |
| MagicLevelOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 9 deployments: bsc `0x006d8e...f938c5`; bsc `0x0df56a...38a181`; bsc `0x358a42...cf3289`; bsc `0x789004...f0c952`; bsc `0x7c8fef...431d38`; bsc `0x8e534c...e6d534`; bsc `0xb76403...2cc9d1`; bsc `0xbc7fa5...3d7920`; bsc `0xdea1b4...3e9d70` | ⚠️ Unaudited |
| MagicLevelRewardHandler | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 3 deployments: bsc `0x60bbef...25a097`; bsc `0xaf2fbb...2d0b86`; bsc `0xba7fd9...24a582` | ⚠️ Unaudited |
| MagicLP | unknown | project_anchor | own_supporting | 0 | ethereum | unit-378756 | `0x6c843d...45023a` | ⚠️ Unaudited |
| MagicLP | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 4 deployments: base `0x75097b...686074`; arbitrum `0x522cba...8f1fad`; arbitrum `0x61ff8a...53253a`; linea `0xa3372c...b3b20d` | ⚠️ Unaudited |
| MagicUSD0pp | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x034de9...fe907a`; ethereum `0x73075f...2c1c99`; ethereum `0xdb36f6...749963` | ⚠️ Unaudited |
| MagicUSD0ppHarvester | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x0f9af7...fb108b`; ethereum `0x800146...ec0aab` | ⚠️ Unaudited |
| MagicUSD0ppOracle | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x21713c...b98d7c`; ethereum `0xaab7e5...6fd97d` | ⚠️ Unaudited |
| Market | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 3 deployments: base `0x25c27f...28e022`; base `0x85e8a3...59f490`; base `0xa6247e...b3c15e` | ⚠️ Unaudited |
| MarketFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 3 deployments: base `0x14d6df...ad213e`; base `0x438383...dc953d`; base `0x978d34...2a006c` | ⚠️ Unaudited |
| MarketLens | periphery | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 2 deployments: arbitrum `0x870729...3022c2`; arbitrum `0xc4ee49...48ad4d` | ⚠️ Unaudited |
| MasterChef | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 3 deployments: bsc `0x4e585c...0e764d`; bsc `0x73feaa...c9e24e`; bsc `0x91dc89...c3e756` | ⚠️ Unaudited |
| MasterChefJoeV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xd6a4f1...f53052` | ⚠️ Unaudited |
| MasterChefJoeV3 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | 2 deployments: avalanche `0x188bed...c18f00`; avalanche `0x3eb4ec...6e8945` | ⚠️ Unaudited |
| MasterChefLPStrategy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xe8d682...0e4770` | ⚠️ Unaudited |
| MasterContractOwner | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x16ebac...08ea75` | ⚠️ Unaudited |
| MathLib | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x503d14...c13b4c` | ⚠️ Unaudited |
| Maximillion | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xe5cdda...7ab7e7` | ⚠️ Unaudited |
| MerkleDistributor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xedd1cb...115e34` | ⚠️ Unaudited |
| MigrationStrategy | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 8 deployments: ethereum `0x0704a2...e0ddd6`; ethereum `0x3ba00b...1df1b0`; ethereum `0x41febf...bbb679`; ethereum `0x507e4c...0ec94e`; ethereum `0x5e8f81...567682`; ethereum `0x8d8bdf...268e90`; ethereum `0xa03afd...40bf23`; ethereum `0xbbf9fd...fc9162` | ⚠️ Unaudited |
| MimAvaxLevSwapper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | 2 deployments: avalanche `0xba7fd9...24a582`; avalanche `0xfdf2c2...1a58d7` | ⚠️ Unaudited |
| MimAvaxOracleV1 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | 2 deployments: avalanche `0x4437db...c52709`; avalanche `0xd96f48...fc2cce` | ⚠️ Unaudited |
| MimAvaxSwapper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | 2 deployments: avalanche `0xbc00ca...c39614`; avalanche `0xd74773...58135d` | ⚠️ Unaudited |
| MimCauldronDistributor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 11 deployments: arbitrum `0x19de60...a558b0`; arbitrum `0x1fff78...28635a`; arbitrum `0x5be2c1...d95a15`; arbitrum `0x642c3b...d3411d`; arbitrum `0x66436c...19765d`; arbitrum `0x9620a2...7c0999`; arbitrum `0xb099cc...8ed258`; arbitrum `0xba9167...783a7e`; arbitrum `0xc4e343...7c33ba`; arbitrum `0xc5c015...783191`; arbitrum `0xe2601e...aeb7dd` | ⚠️ Unaudited |
| MimCauldronDistributorLens | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 4 deployments: arbitrum `0x05e46f...65b76d`; arbitrum `0x70c874...22d026`; arbitrum `0x9b0b1c...a3f583`; arbitrum `0x9b2794...b6bdcc` | ⚠️ Unaudited |
| MintableBaseToken | token | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 2 deployments: arbitrum `0x352471...486921`; arbitrum `0x626010...95a954` | ⚠️ Unaudited |
| MintableBurnableERC20 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 3 deployments: base `0x0b938c...d348dd`; base `0x6bf837...341d12`; linea `0x4a3a6d...eb6a3d` | ⚠️ Unaudited |
| MintableBurnableERC20 | token | project_anchor | own_supporting | 0 | linea | unit-378885 | `0xdd3b80...c9429a` | ⚠️ Unaudited |
| MintableBurnableUpgradeableERC20 | token | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 7 deployments: ethereum `0xb5e02d...7443e4`; arbitrum `0x099b75...44d88a`; arbitrum `0x174a48...d2d938`; arbitrum `0x746bd2...11e042`; arbitrum `0x7dc6e6...1f2879`; arbitrum `0xd6c71c...665268`; avalanche `0xd1140b...acf528` | ⚠️ Unaudited |
| MockTreasury | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdb682f...c8ed20` | ⚠️ Unaudited |
| mSpellReporter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | 19 deployments: arbitrum `0x1fc83f...aae530`; arbitrum `0x20cb52...de9430`; arbitrum `0x35f78e...638053`; arbitrum `0x3817c8...98d988`; arbitrum `0x3fc446...a28edd`; arbitrum `0x59b3d5...fecd45`; arbitrum `0x5f468e...90882d`; arbitrum `0x738694...c0423f`; arbitrum `0xef9c97...15d70b`; avalanche `0x07aa38...c6e9fc`; avalanche `0x14d358...81a2dd`; avalanche `0x15a2a9...54cd46`; avalanche `0x32596b...0f5c85`; avalanche `0x476b1e...a85c1f`; avalanche `0x565195...a0f194`; avalanche `0x5d28da...7620b4`; avalanche `0x78a538...17cccf`; avalanche `0xd2b62a...48cf28`; avalanche `0xf8beb5...de90c7` | ⚠️ Unaudited |
| mSpellReporterManual | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 4 deployments: arbitrum `0x648af2...a27793`; arbitrum `0xf33eb6...1d2d85`; avalanche `0x75e142...69ec10`; avalanche `0x96bac9...a8ca62` | ⚠️ Unaudited |
| MSpellSender | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9cab9f...359439` | ⚠️ Unaudited |
| mSpellStaking | token | project_anchor | own_supporting | 0 | ethereum | unit-378773 | `0xbd2fba...5e6797` | ⚠️ Unaudited |
| mSpellStaking | token | project_anchor | own_supporting | 0 | arbitrum | unit-378843 | `0x1df188...dd9e51` | ⚠️ Unaudited |
| MSpellStakingHub | token | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 3 deployments: arbitrum `0x3b9e7f...f7f764`; arbitrum `0xa39cee...5ef606`; arbitrum `0xcfbe02...29e73b` | ⚠️ Unaudited |
| MSpellStakingSpoke | token | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x3886a6...f5f755`; ethereum `0xb5980e...f65ec5`; ethereum `0xbbb3bc...39900a` | ⚠️ Unaudited |
| MultiRewards | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 5 deployments: ethereum `0xafe0bb...2c47db`; arbitrum `0x280c64...b11f97`; arbitrum `0x3886a6...f5f755`; arbitrum `0xc30911...1cd652`; arbitrum `0xdc9bc3...ceee96` | ⚠️ Unaudited |
| MultiRewardsClaimingHandler | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 6 deployments: arbitrum `0x15838e...6d7f85`; arbitrum `0x3877ef...43a943`; arbitrum `0x46cc17...d0d32b`; arbitrum `0x766cb0...d677d3`; arbitrum `0xa40bcb...7789bd`; arbitrum `0xc699e7...3110c4` | ⚠️ Unaudited |
| MultiRewardsStaking | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x6d2070...8988cd` | ⚠️ Unaudited |
| MultiSigWalletWithTimeLock | governance | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8392f6...57e225` | ⚠️ Unaudited |
| MyContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 2 deployments: arbitrum `0x64a743...bc0c42`; arbitrum `0x9cc903...27d482` | ⚠️ Unaudited |
| NegativeInterestStrategy | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa5abd0...a1c6e7` | ⚠️ Unaudited |
| NullValueCalculator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0d1c9b...26254f` | ⚠️ Unaudited |
| OFTWrapper | unknown | project_anchor | own_supporting | 0 | ethereum | unit-378744 | `0x287176...784adc` | ⚠️ Unaudited |
| OFTWrapper | unknown | project_anchor | own_supporting | 0 | optimism | unit-378799 | `0x287176...784adc` | ⚠️ Unaudited |
| OFTWrapper | unknown | project_anchor | own_supporting | 0 | bsc | unit-378877 | `0x287176...784adc` | ⚠️ Unaudited |
| OFTWrapper | unknown | project_anchor | own_supporting | 0 | polygon | unit-378818 | `0xe1261e...6dfd4c` | ⚠️ Unaudited |
| OFTWrapper | unknown | project_anchor | own_supporting | 0 | moonriver | unit-378812 | `0x287176...784adc` | ⚠️ Unaudited |
| OFTWrapper | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-378845 | `0x287176...784adc` | ⚠️ Unaudited |
| OFTWrapper | unknown | project_anchor | own_supporting | 0 | avalanche | unit-378865 | `0x287176...784adc` | ⚠️ Unaudited |
| OlympusBondDepository | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 12 deployments: ethereum `0x28aac7...4cd8f0`; ethereum `0x48d4ad...c276a7`; ethereum `0x539b6c...4a3776`; ethereum `0x575409...97381c`; ethereum `0x6a01e5...49f219`; ethereum `0x8510c8...ec2514`; ethereum `0x8ba0ab...13b0ce`; ethereum `0x956c43...78c151`; ethereum `0x996668...3a1626`; ethereum `0xc20cff...5a02f7`; ethereum `0xd03056...0ff045`; ethereum `0xd215d1...6cb580` | ⚠️ Unaudited |
| OlympusBondingCalculator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcaaa6a...fa571a` | ⚠️ Unaudited |
| OlympusStaking | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x416f96...757b3e`; ethereum `0xfd31c7...36566a` | ⚠️ Unaudited |
| OlympusTreasury | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x31f8cc...c846e8` | ⚠️ Unaudited |
| OnsenAllocator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x031650...682ffc` | ⚠️ Unaudited |
| OrderBook | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x09f77e...8a2acb` | ⚠️ Unaudited |
| PancakeFactory | registry | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xbcfccb...952812` | ⚠️ Unaudited |
| PancakeRouter | adapter | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x05ff2b...608c7f` | ⚠️ Unaudited |
| PangolinDynamicSubLPStrategy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xe05811...3a194e` | ⚠️ Unaudited |
| PeggedOracleV1 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6cbfbb...001564` | ⚠️ Unaudited |
| PLPOracle | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 9 deployments: ethereum `0x02d4c5...407fbf`; ethereum `0x2bcccb...7ca327`; ethereum `0x85e8a3...59f490`; ethereum `0x9d7268...fe4de6`; ethereum `0xbc00ca...c39614`; ethereum `0xd825d0...b0e6a4`; ethereum `0xdfe08d...ad58e5`; ethereum `0xe5683f...1017ec`; ethereum `0xfe0f13...95ca02` | ⚠️ Unaudited |
| PoolBridge | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe66db0...1cdcb8` | ⚠️ Unaudited |
| PoolManagerV4 | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6d3a38...b423de` | ⚠️ Unaudited |
| PopsicleUSDCUSDTLevSwapper | adapter | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbc7fa5...3d7920` | ⚠️ Unaudited |
| PopsicleUSDCUSDTSwapper | adapter | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfa85b0...572950` | ⚠️ Unaudited |
| PopsicleUSDCUSTLevSwapper | adapter | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8176c5...b59982` | ⚠️ Unaudited |
| PopsicleUSDCUSTSwapper | adapter | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2b95bf...b79676` | ⚠️ Unaudited |
| PopsicleUSDCWETHLevSwapper | adapter | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x041467...1acead`; ethereum `0x2ca12e...ae7531` | ⚠️ Unaudited |
| PopsicleUSDCWETHOracle | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x0d5204...a5a38a`; ethereum `0x7c8fef...431d38` | ⚠️ Unaudited |
| PopsicleUSDCWETHSwapper | adapter | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x0e0e2c...556a57`; ethereum `0xc97c7f...28d474` | ⚠️ Unaudited |
| PopsicleUSTUSDTLevSwapper | adapter | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6e9368...9500ef` | ⚠️ Unaudited |
| PopsicleUSTUSDTSwapper | adapter | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc2141d...fc1e7c` | ⚠️ Unaudited |
| PopsicleWBTCWETHLevSwapper | adapter | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x64c655...2af8c4`; ethereum `0x6eb170...297c04` | ⚠️ Unaudited |
| PopsicleWBTCWETHSwapper | adapter | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0xa1cdf7...fef5c1`; ethereum `0xf82397...58bbfa` | ⚠️ Unaudited |
| PopsicleWETHUSDTLevSwapper | adapter | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x2906ae...cf0fc5`; ethereum `0x9ca03f...ca921d` | ⚠️ Unaudited |
| PopsicleWETHUSDTSwapper | adapter | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0xad2f28...eb030d`; ethereum `0xbd73aa...8ca32a` | ⚠️ Unaudited |
| PositionManager | governance | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x75e42e...8a4a0c` | ⚠️ Unaudited |
| PositionRouter | adapter | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xb87a43...b09868` | ⚠️ Unaudited |
| PotionPointRedeemer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x225859...9e6bbc` | ⚠️ Unaudited |
| PrecompileTester | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | 12 deployments: avalanche `0x2cc9be...298109`; avalanche `0x377aa0...39e709`; avalanche `0x3a062d...fcb19c`; avalanche `0x48686c...e74339`; avalanche `0x51d22d...d299d5`; avalanche `0x651c44...c8064e`; avalanche `0x870729...3022c2`; avalanche `0x97cdab...61bbf0`; avalanche `0xa877be...3dc23e`; avalanche `0xb13352...e3a00f`; avalanche `0xb597fb...aea876`; avalanche `0xd93809...3b4674` | ⚠️ Unaudited |
| PriceFeedTimelock | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x7b1ffd...d43a8b` | ⚠️ Unaudited |
| PriceOracleProxyUSD | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | 4 deployments: avalanche `0x107b31...b8555a`; avalanche `0x99f873...ec2bd3`; avalanche `0xd7ae65...10bc2e`; avalanche `0xe34309...114482` | ⚠️ Unaudited |
| PrivateMultiRewardsStaking | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 14 deployments: arbitrum `0x18f7cc...d32d31`; arbitrum `0x366ac6...e9f18b`; arbitrum `0x3bf887...f56836`; arbitrum `0x5b51f2...17e263`; arbitrum `0x8fac04...111482`; arbitrum `0xa2af3e...e8128e`; arbitrum `0xa5e1a7...d31ba6`; arbitrum `0xa7940d...01c295`; arbitrum `0xaf4fdc...1a74cb`; arbitrum `0xc35553...149718`; arbitrum `0xe5e501...3888ec`; arbitrum `0xe6f823...9017e7`; arbitrum `0xeb0dea...8c5680`; arbitrum `0xf9398c...8c7eea` | ⚠️ Unaudited |
| PrivateRouter | adapter | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | 6 deployments: ethereum `0x9b6f6c...d7ad51`; base `0x635693...e7d3be`; arbitrum `0xe046ac...482bed`; linea `0xaf2fbb...2d0b86`; blast `0x19c08f...7d0fd7`; blast `0xa98973...0a63ac` | ⚠️ Unaudited |
| PrivilegedCauldronV4 | unknown | project_anchor | own_supporting | 0 | ethereum | unit-378748 | 2 deployments: ethereum `0x406b89...374352`; ethereum `0x85f60d...25c405` | ⚠️ Unaudited |
| PrivilegedCauldronV4 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 5 deployments: ethereum `0x40d95c...5b87a3`; ethereum `0x6bcd99...45cda2`; ethereum `0xc6d3b8...0dc20d`; ethereum `0xce450a...30865b`; ethereum `0xed5106...760e09` | ⚠️ Unaudited |
| PrivilegedCheckpointCauldronV4 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x289424...b134ed`; ethereum `0x46f54d...9ff82c` | ⚠️ Unaudited |
| ProxyAdmin | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | 6 deployments: ethereum `0x1ac267...5757a1`; arbitrum `0x90da0a...46d379`; arbitrum `0xee5ff6...820580`; arbitrum `0xf762bc...4de4cf`; arbitrum `0xff11d8...ed448f`; avalanche `0x1035b0...c3d784` | ⚠️ Unaudited |
| ProxyOFTV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x195dda...f5bece`; ethereum `0x3a5770...d0574e` | ⚠️ Unaudited |
| ProxyOracle | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 104 deployments: ethereum `0x098857...0c1743`; ethereum `0x0a81e2...61a7f6`; ethereum `0x0df56a...38a181`; ethereum `0x105cc8...db36ff`; ethereum `0x1888c9...437c5d`; ethereum `0x1e5763...0d620b`; ethereum `0x3379c4...0f2f7c`; ethereum `0x39dba7...d51be1`; ethereum `0x3cc89e...02459d`; ethereum `0x3e8171...68d317`; ethereum `0x40cc67...8279a9`; ethereum `0x416c83...9038a7`; ethereum `0x52b277...d097e4`; ethereum `0x5516d8...94f6f2`; ethereum `0x563111...fc537b`; ethereum `0x64422a...1a7fb7`; ethereum `0x66a809...ff0a11`; ethereum `0x72c6a9...cf4c9e`; ethereum `0x73d322...907992`; ethereum `0x76c936...c02c19`; ethereum `0x7d7656...fabcd8`; ethereum `0x87a5bf...0c2e82`; ethereum `0x8cbc6f...d61ddc`; ethereum `0x9141fd...9cadb7`; ethereum `0x96a5b3...1395a0`; ethereum `0xa32d03...6fd918`; ethereum `0xa996a3...01bceb`; ethereum `0xaf6a78...f0cf7b`; ethereum `0xc8c18c...0bc603`; ethereum `0xca7d4d...d5beb3`; ethereum `0xe11d52...421a52`; ethereum `0xed5d79...756f8e`; optimism `0x041467...1acead`; optimism `0x8cee5b...25fb62`; optimism `0xbd73aa...8ca32a`; optimism `0xc845c5...e9d2ba`; bsc `0x1409df...171172`; bsc `0x4d526f...b64f52`; bsc `0x75097b...686074`; bsc `0x93503a...2e3409`; bsc `0x978d34...2a006c`; bsc `0xc2758b...e1de26`; bsc `0xdd45c6...85dba5`; bsc `0xfa85b0...572950`; bsc `0xfe0f13...95ca02`; arbitrum `0x033487...372ef9`; arbitrum `0x048fcf...d26fb4`; arbitrum `0x0cbaa5...382a54`; arbitrum `0x0d5204...a5a38a`; arbitrum `0x0e1ea2...b5bc85`; arbitrum `0x1ba40e...ac3c6e`; arbitrum `0x1fb195...d9f99e`; arbitrum `0x2f614a...0f3b0c`; arbitrum `0x309d15...250ea3`; arbitrum `0x3204bd...ffa1be`; arbitrum `0x322a76...2316f0`; arbitrum `0x38a67c...4375ed`; arbitrum `0x3e4216...8a5c12`; arbitrum `0x4a4d9a...af5ce2`; arbitrum `0x4bf0f7...63f0e4`; arbitrum `0x4ed093...2f284c`; arbitrum `0x56ac5f...ea949f`; arbitrum `0x576432...32865e`; arbitrum `0x666523...f67579`; arbitrum `0x681e0e...0d8c93`; arbitrum `0x76a313...81b9b0`; arbitrum `0x7a377f...a11c71`; arbitrum `0x8ef051...b4e026`; arbitrum `0x964734...4ac3ea`; arbitrum `0x9e7af8...b84592`; arbitrum `0xa245cf...916a25`; arbitrum `0xa6138e...ff8185`; arbitrum `0xc1cd2b...849ce3`; arbitrum `0xcfb7be...7a824f`; arbitrum `0xd136a8...20b98e`; arbitrum `0xd1631d...6c41a5`; arbitrum `0xd63537...47e5c3`; arbitrum `0xd6b8bd...5dc591`; arbitrum `0xe03df6...6e43ef`; arbitrum `0xe322cb...0da3e8`; arbitrum `0xe45ea4...71921b`; arbitrum `0xe8579c...642498`; arbitrum `0xe94c44...4551da`; arbitrum `0xe9986e...253271`; arbitrum `0xea9554...83f48f`; arbitrum `0xed7062...bba5c1`; arbitrum `0xf3dd60...2efc53`; avalanche `0x0cc938...20a3e2`; avalanche `0x0e1ea2...b5bc85`; avalanche `0x15f57f...1bc298`; avalanche `0x1e2157...adc7ac`; avalanche `0x2ca12e...ae7531`; avalanche `0x3cc89e...02459d`; avalanche `0x59b3d5...fecd45`; avalanche `0x694808...4b99ff`; avalanche `0x7aaa36...24f0a9`; avalanche `0x7e0f0c...6d3aeb`; avalanche `0xa02de9...d034bb`; avalanche `0xb69c15...9a8276`; avalanche `0xde99f8...1b31c3`; avalanche `0xf8b72e...a2a71d`; blast `0x2612c7...3706f6`; blast `0x70becf...0ec575`; blast `0xf675bb...3b3d87` | ⚠️ Unaudited |
| PythAggregator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 5 deployments: ethereum `0xec5b37...7082d3`; arbitrum `0x176e4c...34738b`; arbitrum `0x43676b...e1565a`; arbitrum `0x46d9f5...e057de`; arbitrum `0xe03d24...e2c0d7` | ⚠️ Unaudited |
| R256 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5b2d94...91c86a` | ⚠️ Unaudited |
| R256Basic | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcb8a52...3246c3` | ⚠️ Unaudited |
| Reader | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x22199a...cae489` | ⚠️ Unaudited |
| Receiver | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xc9c33a...a49794` | ⚠️ Unaudited |
| RedeemHelper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe1e838...0b819e` | ⚠️ Unaudited |
| RedstoneAggregator | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | blast | unit-378925 | `0x86e761...bd385b` | ⚠️ Unaudited |
| ReferralStorage | token | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xe6fab3...06e99d` | ⚠️ Unaudited |
| Registry | registry | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 2 deployments: arbitrum `0xb53762...b49292`; arbitrum `0xed6987...d8ab90` | ⚠️ Unaudited |
| RescueSwapperFunds | adapter | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc799d2...457bed` | ⚠️ Unaudited |
| RevertingToken | token | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 2 deployments: arbitrum `0x1aa92d...a0d3e0`; arbitrum `0xa9ada7...096270` | ⚠️ Unaudited |
| RewardDistributor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | 6 deployments: arbitrum `0x5c04a1...90150d`; arbitrum `0x986b4e...7f43aa`; avalanche `0x227449...a14885`; avalanche `0x45b2c4...420324`; avalanche `0x7dcdb8...ec03b6`; avalanche `0xe72438...4d3f99` | ⚠️ Unaudited |
| Rewarder | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x3bab72...45ed2a` | ⚠️ Unaudited |
| RewardHarvester | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 6 deployments: ethereum `0x71c726...688d6b`; ethereum `0x79533f...bec951`; ethereum `0x7e0f0c...6d3aeb`; ethereum `0xa45440...0854ea`; ethereum `0xb7ddfa...a57754`; ethereum `0xe685a3...bdb0ca` | ⚠️ Unaudited |
| RewardRouterV2 | adapter | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 4 deployments: arbitrum `0x159854...a3ce9b`; arbitrum `0x5e4766...5694a1`; arbitrum `0xa906f3...f8d8f1`; arbitrum `0xb95db5...d271f5` | ⚠️ Unaudited |
| RewardTracker | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 5 deployments: arbitrum `0x0755d3...1e5e93`; arbitrum `0x1addd8...4c8903`; arbitrum `0x4e971a...5400b6`; arbitrum `0x908c4d...c59dd4`; arbitrum `0xd2d116...2a728f` | ⚠️ Unaudited |
| Router | adapter | project_anchor | own_supporting | 0 | ethereum | unit-378759 | `0x7202b7...d5b6fe` | ⚠️ Unaudited |
| Router | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | 2 deployments: arbitrum `0xabbc5f...2f4064`; linea `0x0d2a51...e59449` | ⚠️ Unaudited |
| SdeusdPermissionedSwapper | adapter | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbf2121...1ab2a9` | ⚠️ Unaudited |
| SDEUSDSwapper | adapter | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 6 deployments: ethereum `0x15be4a...3c94fa`; ethereum `0x2fa679...31ea87`; ethereum `0x5fc912...4b68ec`; ethereum `0x64d416...108180`; ethereum `0xb4c482...978ba7`; ethereum `0xc0a86c...e07d3d` | ⚠️ Unaudited |
| ShortsTrackerTimelock | governance | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x79b6ee...5c6c2a` | ⚠️ Unaudited |
| SikobaContinuousSale | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4994e8...fff697` | ⚠️ Unaudited |
| SikobaPresale | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x812ade...5f2d03` | ⚠️ Unaudited |
| SikobaToken | token | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6b4008...f81765` | ⚠️ Unaudited |
| SimpleRewarderPerSec | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | 9 deployments: avalanche `0x05d06a...5a3388`; avalanche `0x0babed...ab3689`; avalanche `0x692782...8e8551`; avalanche `0x88e026...5dda60`; avalanche `0x89ecdd...033f00`; avalanche `0x9f509a...5b896c`; avalanche `0xd0c23f...0c2fa1`; avalanche `0xe73477...628cd3`; avalanche `0xeb1f56...6e0b55` | ⚠️ Unaudited |
| SimpleSLPTWAP0OracleV1 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x66f03b...236065` | ⚠️ Unaudited |
| SimpleSLPTWAP1OracleV1 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0d51b5...89266f` | ⚠️ Unaudited |
| sko_ping | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5d4c2f...3683fc` | ⚠️ Unaudited |
| SkoSaleMVP | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb11d6e...fd176f` | ⚠️ Unaudited |
| SmartChef | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 4 deployments: bsc `0x0c3d68...8e4528`; bsc `0x2dcf4c...5b66cf`; bsc `0xa5137e...30964e`; bsc `0xce54ba...dd8d9a` | ⚠️ Unaudited |
| SolidlyGaugeVolatileLPStrategy | operational_periphery | project_anchor | own_supporting | 0 | optimism | unit-378808 | `0xa3372c...b3b20d` | ⚠️ Unaudited |
| SolidlyGaugeVolatileLPStrategy | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xc2fdef...b22a2b` | ⚠️ Unaudited |
| SolidlyLikeVolatileLPLevSwapper | adapter | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | 2 deployments: optimism `0x3a163e...63b7f9`; optimism `0xb69c15...9a8276` | ⚠️ Unaudited |
| SolidlyLikeVolatileLPSwapper | adapter | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | 2 deployments: optimism `0x601c56...e305db`; optimism `0x70b868...6a7493` | ⚠️ Unaudited |
| SolidlyLpWrapper | unknown | project_anchor | own_supporting | 0 | optimism | unit-378805 | `0x6eb170...297c04` | ⚠️ Unaudited |
| SolidlyStrategyLens | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | 5 deployments: optimism `0x59be9f...b11bda`; optimism `0x640605...b76521`; optimism `0x8bee5d...9cf528`; optimism `0x8e24bc...d9d419`; optimism `0xe8681a...c18726` | ⚠️ Unaudited |
| sOlympus | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x04f269...52111f`; ethereum `0xaec116...189376` | ⚠️ Unaudited |
| SpellGovernor | governance | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 2 deployments: arbitrum `0x4bdc6f...9dd71e`; arbitrum `0xdc1db4...96549f` | ⚠️ Unaudited |
| SpellPowerStaking | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 8 deployments: arbitrum `0x196b73...448ca1`; arbitrum `0x3b6bbc...8cb34f`; arbitrum `0x609f4c...42fd72`; arbitrum `0x8b8718...68b884`; arbitrum `0x9961bf...f9fc02`; arbitrum `0xa5901a...72397e`; arbitrum `0xe0f829...45abd6`; arbitrum `0xfa9956...9ce385` | ⚠️ Unaudited |
| SpellTimelock | governance | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 4 deployments: ethereum `0xce1cc7...146848`; arbitrum `0x557234...7eac2d`; arbitrum `0xe2be92...192238`; arbitrum `0xfce52f...4688c2` | ⚠️ Unaudited |
| sSpellV1 | unknown | project_anchor | own_supporting | 0 | ethereum | unit-378743 | `0x26fa3f...a106a9` | ⚠️ Unaudited |
| StakedGlp | token | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 2 deployments: arbitrum `0x2f546a...3e89ae`; arbitrum `0x5402b5...0cffdf` | ⚠️ Unaudited |
| StakingHelper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0xa55ce3...790915`; ethereum `0xc8c436...7a612d` | ⚠️ Unaudited |
| StakingPools | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xab8e74...d7deca` | ⚠️ Unaudited |
| StakingWarmup | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x2882a5...07c5f1`; ethereum `0xd175a8...0d3345` | ⚠️ Unaudited |
| stdeUSD | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x5c5b19...198326` | ⚠️ Unaudited |
| StrategyExecutor | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 8 deployments: ethereum `0x3de40d...985cd0`; ethereum `0x5d30dc...eee9ca`; ethereum `0x762d06...6e596e`; ethereum `0x7bc6ce...2398fb`; ethereum `0xb07657...d5bdf8`; optimism `0x7e0536...b84908`; optimism `0xd69e75...137cd9`; optimism `0xfd2281...820d58` | ⚠️ Unaudited |
| SushiBar | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x879824...ff4272` | ⚠️ Unaudited |
| SwapperTester | adapter | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 4 deployments: ethereum `0x3a062d...fcb19c`; avalanche `0x526a17...acdfdd`; avalanche `0x7ad0e5...1eaaa7`; avalanche `0xd8284e...d9e020` | ⚠️ Unaudited |
| SwapperTesterV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x0c963a...b91886` | ⚠️ Unaudited |
| SyrupBar | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x009cf7...cea9b0` | ⚠️ Unaudited |
| TestContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | 23 deployments: polygon `0x0bfc4d...bacffb`; polygon `0x29be26...454dce`; polygon `0x3a163e...63b7f9`; polygon `0x3aff99...a1384b`; polygon `0x49af41...5ec911`; polygon `0x601c56...e305db`; polygon `0x6c4649...b0b548`; polygon `0x70b868...6a7493`; polygon `0x72015e...52dfcb`; polygon `0x7e0f0c...6d3aeb`; polygon `0x98bf3e...0d3ede`; polygon `0xac6c43...13d512`; polygon `0xb69c15...9a8276`; polygon `0xea0610...cc7d43`; polygon `0xf6939a...adb75c`; arbitrum `0x119f99...7b8889`; arbitrum `0x2f3dba...3eda2c`; arbitrum `0x316f7b...16617e`; arbitrum `0x333e28...a3b5e8`; arbitrum `0x4b4fe5...478f8f`; arbitrum `0xf10ec6...f13f50`; blast `0xdea1b4...3e9d70`; blast `0xfc301d...554fc9` | ⚠️ Unaudited |
| TestForMelen | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x09f5e0...878679` | ⚠️ Unaudited |
| TestForMelen2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1bc998...8074cc` | ⚠️ Unaudited |
| Timelock | governance | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 9 deployments: ethereum `0xdf4364...d5ed30`; arbitrum `0x09fec9...240126`; arbitrum `0x460e1a...82bc6e`; arbitrum `0x4e3974...098eb6`; arbitrum `0x5cf5e6...615f42`; arbitrum `0x9fd825...fdaa44`; arbitrum `0xaa50bd...b6a597`; arbitrum `0xe7e740...cf4858`; arbitrum `0xf3cf3d...7b2350` | ⚠️ Unaudited |
| TimePower | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x184a07...8733cf` | ⚠️ Unaudited |
| TimeToken | token | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x869d1b...ae8917` | ⚠️ Unaudited |
| TokenLevSwapper | adapter | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 14 deployments: ethereum `0xd877a7...faad7e`; arbitrum `0x2d99d2...fb62d0`; arbitrum `0x46c49e...433801`; arbitrum `0x4b4c27...108940`; arbitrum `0x7724e9...9d5733`; arbitrum `0x795c11...bcb2a9`; arbitrum `0xa11656...c82cf0`; arbitrum `0xa73353...008ec6`; arbitrum `0xc8ef84...fde5bf`; arbitrum `0xcf2aa3...e64ee4`; arbitrum `0xd1140b...acf528`; arbitrum `0xe2c632...15dd74`; arbitrum `0xe8b450...1c6716`; arbitrum `0xfb0a77...1fcc87` | ⚠️ Unaudited |
| TokenLocker | token | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 5 deployments: arbitrum `0x1092b0...acd674`; arbitrum `0x18168e...0c8c62`; arbitrum `0x6e74cd...f13da1`; arbitrum `0x882d37...58419b`; arbitrum `0xf6a75b...b481c3` | ⚠️ Unaudited |
| TokenManager | governance | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xdddc54...5ea96a` | ⚠️ Unaudited |
| TokenMigrator | token | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x310e83...3539a7` | ⚠️ Unaudited |
| TokenMintERC20Token | token | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x95ad61...64c4ce` | ⚠️ Unaudited |
| TokenOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | 4 deployments: optimism `0xae031b...8bbe90`; optimism `0xd7f347...695718`; avalanche `0x588d40...991d17`; avalanche `0x9cd243...b3d664` | ⚠️ Unaudited |
| TokenSwapper | adapter | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 15 deployments: ethereum `0x5f8a40...1e2fe5`; ethereum `0x827170...d93f67`; ethereum `0xd39418...4c14a8`; arbitrum `0x05803a...0184cc`; arbitrum `0x0a3b95...057665`; arbitrum `0x16310c...afb4ff`; arbitrum `0x2783f6...0845b7`; arbitrum `0x401071...d67b6d`; arbitrum `0x45c208...99a126`; arbitrum `0x988d95...ad7b70`; arbitrum `0xab0fbe...992116`; arbitrum `0xad633c...882395`; arbitrum `0xc704f5...f9f077`; arbitrum `0xf47ef4...ac3547`; arbitrum `0xf88d7b...b7df85` | ⚠️ Unaudited |
| TokenVesting | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | 126 deployments: avalanche `0x0147c0...0ef296`; avalanche `0x01b269...2145e3`; avalanche `0x02d632...cab641`; avalanche `0x0473f2...2465a9`; avalanche `0x0584e6...2fd302`; avalanche `0x072c47...6f97f6`; avalanche `0x076917...72cd75`; avalanche `0x089ec7...c22dcc`; avalanche `0x0a3b77...972c0e`; avalanche `0x0a64e8...3b0d7b`; avalanche `0x0cc47a...66a557`; avalanche `0x0f9e96...06e27b`; avalanche `0x0fb72b...faf162`; avalanche `0x0fefca...fb54b0`; avalanche `0x10f672...cb5029`; avalanche `0x123780...dfb337`; avalanche `0x132492...ce10d3`; avalanche `0x14d458...664301`; avalanche `0x14f28f...36e08a`; avalanche `0x156539...0feae4`; avalanche `0x16f419...8ed79e`; avalanche `0x1771ba...dba954`; avalanche `0x1a7727...4c30a9`; avalanche `0x1b2d91...9b440c`; avalanche `0x1fcfde...5501ad`; avalanche `0x23eb41...18f628`; avalanche `0x25dd4a...29d7cc`; avalanche `0x2a834d...086401`; avalanche `0x2aa5ee...75d2da`; avalanche `0x2cd215...1de38b`; avalanche `0x2d92ee...e048eb`; avalanche `0x31ba32...d859ce`; avalanche `0x357211...f67b1c`; avalanche `0x386fbf...122329`; avalanche `0x3c3246...0354ec`; avalanche `0x3c9211...d7b5d9`; avalanche `0x3cb560...eaad04`; avalanche `0x3ccfc1...2f8e24`; avalanche `0x3dca53...a60a63`; avalanche `0x3e6125...01acd1`; avalanche `0x3e9263...ff864d`; avalanche `0x43feff...682414`; avalanche `0x444d68...6890fe`; avalanche `0x45acb6...587d87`; avalanche `0x4d0b73...377313`; avalanche `0x4e931f...112538`; avalanche `0x52d69a...5ea435`; avalanche `0x5410c2...e4c118`; avalanche `0x5caaf1...006e22`; avalanche `0x5d57f6...899c7c`; avalanche `0x5da155...5405ca`; avalanche `0x5f0902...865095`; avalanche `0x5fe9ad...5ec7ec`; avalanche `0x61ecdb...ff90e2`; avalanche `0x627237...7e9f80`; avalanche `0x650967...76f430`; avalanche `0x66b145...f3142d`; avalanche `0x66fa31...7efb63`; avalanche `0x670968...198eec`; avalanche `0x68b28f...264bff`; avalanche `0x6af7e2...eec3a5`; avalanche `0x6baa88...3a4db8`; avalanche `0x6d3431...368edb`; avalanche `0x6ee70b...031ec7`; avalanche `0x703473...b96460`; avalanche `0x70466e...ad27cc`; avalanche `0x70a5e4...be307b`; avalanche `0x70f7d4...5ac7da`; avalanche `0x73cd07...6e9ca0`; avalanche `0x763dc8...e64864`; avalanche `0x76eaa1...f63008`; avalanche `0x770b6e...b264f3`; avalanche `0x7a609a...dc490e`; avalanche `0x7d0a30...311326`; avalanche `0x7e4d8a...31c1d4`; avalanche `0x7e9499...22063f`; avalanche `0x7ef4e0...b975e0`; avalanche `0x7fa453...bcb6fe`; avalanche `0x810998...cbf66d`; avalanche `0x815cbe...a2c9ee`; avalanche `0x81a003...98237e`; avalanche `0x8637eb...08636d`; avalanche `0x868848...43cc3b`; avalanche `0x872f15...f8030f`; avalanche `0x895a53...1c02e7`; avalanche `0x8b58a5...662afc`; avalanche `0x90bbc3...1f6fce`; avalanche `0x927be1...50848b`; avalanche `0x948cf2...566e8f`; avalanche `0x952d82...56d57e`; avalanche `0x96a6b2...c20718`; avalanche `0x971156...997c50`; avalanche `0x99727c...f4e01e`; avalanche `0x9b711b...f3bc5c`; avalanche `0x9c5b9e...0e135d`; avalanche `0x9eb54a...793200`; avalanche `0x9f8c00...b7c983`; avalanche `0x9fcb6b...63fa1c`; avalanche `0xa526c8...419d97`; avalanche `0xafb2aa...c7fe8b`; avalanche `0xb2d98a...191cf1`; avalanche `0xb31a19...0dfec0`; avalanche `0xb3d05b...b8a30e`; avalanche `0xb7b46f...693e26`; avalanche `0xb864ba...3d274e`; avalanche `0xc3e997...2b3429`; avalanche `0xc6001b...669249`; avalanche `0xc698d4...74673c`; avalanche `0xcbaf30...c15965`; avalanche `0xcdac33...30fbeb`; avalanche `0xd60366...fa5360`; avalanche `0xdc0d42...a187a7`; avalanche `0xddf06d...a4fd9d`; avalanche `0xde8cb3...79d652`; avalanche `0xdf1339...ef8fe7`; avalanche `0xdf781b...242aa4`; avalanche `0xe5ba4d...cd298b`; avalanche `0xea347e...d6d0c3`; avalanche `0xec8184...dd7d1a`; avalanche `0xf19c35...ecb452`; avalanche `0xf2eb59...734279`; avalanche `0xfa4329...6abf9b`; avalanche `0xfa4ceb...0a1846`; avalanche `0xfb0586...1a3fe9`; avalanche `0xfc22e8...d56a25`; avalanche `0xfc2f38...747bbb` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | 2 deployments: avalanche `0x2f4391...bb5140`; avalanche `0x592f70...419f37` | ⚠️ Unaudited |
| TreasuryLend | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x04dd97...bd207f` | ⚠️ Unaudited |
| TreasuryManager | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xeb8121...6de6b3` | ⚠️ Unaudited |
| TreasurySwap | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa25b17...e74316` | ⚠️ Unaudited |
| TripleSlopeRateModel | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | 3 deployments: avalanche `0x3c5486...f73682`; avalanche `0x82ea6f...08038e`; avalanche `0xe6ffd9...f3ba6e` | ⚠️ Unaudited |
| TroveManager | governance | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa39739...cf4bb2` | ⚠️ Unaudited |
| UmbrellaAggregator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | 3 deployments: linea `0x15f57f...1bc298`; linea `0x23a22b...afd309`; linea `0xe47018...c202ef` | ⚠️ Unaudited |
| Unipool | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd37a77...bdf0d5` | ⚠️ Unaudited |
| UniswapV2Pair | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xcbb424...f62339` | ⚠️ Unaudited |
| UpperBoundedInverseOracle | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xecabba...32b076` | ⚠️ Unaudited |
| UsdcAvaxLevSwapper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | 3 deployments: avalanche `0x2af303...94b357`; avalanche `0x38a67c...4375ed`; avalanche `0xc845c5...e9d2ba` | ⚠️ Unaudited |
| UsdcAvaxLPOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | 2 deployments: avalanche `0x648af2...a27793`; avalanche `0xef9c97...15d70b` | ⚠️ Unaudited |
| UsdcAvaxOracleV1 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | 3 deployments: avalanche `0x08b918...63ef63`; avalanche `0x471ee7...f6fceb`; avalanche `0xb9565f...4f265a` | ⚠️ Unaudited |
| UsdcAvaxSwapper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | 3 deployments: avalanche `0x20cb52...de9430`; avalanche `0x4ec000...bef901`; avalanche `0x6eb170...297c04` | ⚠️ Unaudited |
| UsdceAvaxLevSwapperV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x7d7656...fabcd8` | ⚠️ Unaudited |
| UsdceAvaxSwapperV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x6da650...4c98ae` | ⚠️ Unaudited |
| UsdceAvaxSwapperV3 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x0b76af...804750` | ⚠️ Unaudited |
| USTMiddleLayer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3844a2...b18bff` | ⚠️ Unaudited |
| USTStrategyV2 | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf4eff9...0b1417` | ⚠️ Unaudited |
| USTStrategyV3 | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9cd243...b3d664` | ⚠️ Unaudited |
| Utilities | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf37c41...64b503` | ⚠️ Unaudited |
| Vault | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x489ee0...097c4a` | ⚠️ Unaudited |
| VeJoeStaking | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | avalanche | n/a | 2 deployments: avalanche `0x4b4e08...7fbc17`; avalanche `0xdefdbe...e4e933` | ⚠️ Unaudited |
| VelodromeVolatileLpHarvester | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x2af303...94b357` | ⚠️ Unaudited |
| VelodromeVolatileLPLevSwapper | adapter | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | 2 deployments: optimism `0x98bf3e...0d3ede`; optimism `0xf76da2...ae20fc` | ⚠️ Unaudited |
| VelodromeVolatileLPSwapper | adapter | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | 3 deployments: optimism `0x198892...741b6e`; optimism `0x79533f...bec951`; optimism `0xac6c43...13d512` | ⚠️ Unaudited |
| Vester | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 3 deployments: arbitrum `0x199070...363004`; arbitrum `0x7c100c...df49b2`; arbitrum `0xa75287...72042e` | ⚠️ Unaudited |
| Vyper_contract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 23 deployments: ethereum `0x1635b5...5846c3`; ethereum `0x27b7b1...6f07d7`; ethereum `0x2f50d5...5846bb`; ethereum `0x575ccd...318e2c`; ethereum `0x5f18c7...b973a9`; ethereum `0x5f3b5d...94e2a2`; ethereum `0x5faf6a...e52d8e`; ethereum `0x64e3c2...ac041d`; ethereum `0x6c3f90...e6e490`; ethereum `0x705350...55410f`; ethereum `0x7ca5b0...1d7575`; ethereum `0x7da96a...8d87a7`; ethereum `0x807819...b6abf3`; ethereum `0xa258c4...4d168c`; ethereum `0xa90996...857849`; ethereum `0xa9fe46...2f5b28`; ethereum `0xb1f2cd...202cac`; ethereum `0xbc89cd...ca8f53`; ethereum `0xd061d6...c2fce0`; ethereum `0xd533a9...34cd52`; ethereum `0xda8164...970c95`; ethereum `0xdcd90c...0b4325`; ethereum `0xe14d13...097db1` | ⚠️ Unaudited |
| WAVAX | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xb31f66...fd66c7` | ⚠️ Unaudited |
| WBNB | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xbb4cdb...bc095c` | ⚠️ Unaudited |
| WBTC | token | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2260fa...c2c599` | ⚠️ Unaudited |
| WETH9 | token | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc02aaa...756cc2` | ⚠️ Unaudited |
| WETHRebasing | token | non_address_book | non_address_book_inventory (excluded) | 1 | blast | n/a | `0x430000...000004` | ⚠️ Unaudited |
| WhitelistedCauldronV3 | unknown | project_anchor | own_supporting | 0 | ethereum | unit-378751 | `0x53375a...60a9a6` | ⚠️ Unaudited |
| WhitelistedCauldronV3 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | 3 deployments: avalanche `0x3e3728...773c1d`; avalanche `0xe8681a...c18726`; avalanche `0xe9c057...2d04ff` | ⚠️ Unaudited |
| WhitelistedCauldronV4 | unknown | project_anchor | own_core | 0 | ethereum | n/a | 2 deployments: ethereum `0x1062eb...495b72`; ethereum `0xf75edb...614e46` | ⚠️ Unaudited |
| WhitelistedCheckpointCauldronV4 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x333e28...a3b5e8`; ethereum `0x42bb6d...de3e92` | ⚠️ Unaudited |
| Whitelister | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4809cb...34e5cc` | ⚠️ Unaudited |
| wMEMO | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x0da672...e5bb3b` | ⚠️ Unaudited |
| wMEMOLevSwapper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | 3 deployments: avalanche `0x2be431...f361b0`; avalanche `0x3fc446...a28edd`; avalanche `0x738694...c0423f` | ⚠️ Unaudited |
| wMemoOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | 6 deployments: avalanche `0x26fa3f...a106a9`; avalanche `0x41d65c...29df42`; avalanche `0x4c56db...c07e17`; avalanche `0x99d8a9...1e17f3`; avalanche `0xb099cc...8ed258`; avalanche `0xc9facf...591918` | ⚠️ Unaudited |
| wMEMOSwapper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | 5 deployments: avalanche `0x13f193...24ddab`; avalanche `0x1df188...dd9e51`; avalanche `0x3bab72...45ed2a`; avalanche `0x469a99...c0b3d3`; avalanche `0xe788ab...08ee6c` | ⚠️ Unaudited |
| wOHM | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xca7654...8e3e65` | ⚠️ Unaudited |
| WrappedKRT | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcaaff7...65bff1` | ⚠️ Unaudited |
| WrappedLuna | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd28777...c91ea9` | ⚠️ Unaudited |
| WrappedmAAPL | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0xc199e7...df0d42`; ethereum `0xd36932...d15a84` | ⚠️ Unaudited |
| WrappedmAMZN | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0cae9e...b9caa7` | ⚠️ Unaudited |
| WrappedmBABA | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x56aa29...c0af72` | ⚠️ Unaudited |
| WrappedmGOOGL | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x59a921...653442` | ⚠️ Unaudited |
| WrappedmIAU | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1d3504...91f373` | ⚠️ Unaudited |
| WrappedMIR | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x09a3ec...f2e608` | ⚠️ Unaudited |
| WrappedmMSFT | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x41bbed...852bd7` | ⚠️ Unaudited |
| WrappedmNFLX | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc8d674...0f9dcd` | ⚠️ Unaudited |
| WrappedMNT | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x156b36...4bde45` | ⚠️ Unaudited |
| WrappedmQQQ | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x13b02c...f57d15` | ⚠️ Unaudited |
| WrappedmSLV | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9d1555...166676` | ⚠️ Unaudited |
| WrappedmTSLA | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x21ca39...66fd63` | ⚠️ Unaudited |
| WrappedmTWTR | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xedb041...78cca9` | ⚠️ Unaudited |
| WrappedmUSO | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x31c631...356991`; ethereum `0x4fd69d...50f214` | ⚠️ Unaudited |
| WrappedmVIXY | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf72fcd...33fc86` | ⚠️ Unaudited |
| WrappedSDT | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x676ad1...f39ee5` | ⚠️ Unaudited |
| WrappedUST | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa47c8b...661acd` | ⚠️ Unaudited |
| wsOHM | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x583043...d57d4f`; ethereum `0xfb53b3...24e3e8` | ⚠️ Unaudited |
| XJoeLevSwapper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xc022ab...32b888` | ⚠️ Unaudited |
| xJoeOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | 2 deployments: avalanche `0xf33eb6...1d2d85`; avalanche `0xf675bb...3b3d87` | ⚠️ Unaudited |
| XJOEStrategy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x244baf...92285b` | ⚠️ Unaudited |
| XJoeSwapper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x303a59...bbc0b9` | ⚠️ Unaudited |
| YVCrvStETHOracleV3 | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x54bc88...0db16e`; ethereum `0xacc35d...051f7e` | ⚠️ Unaudited |
| YVCVXETHLevSwapper | adapter | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe34515...d56417` | ⚠️ Unaudited |
| YVCVXETHOracle | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x991536...f889f3` | ⚠️ Unaudited |
| YVCVXETHSwapper | adapter | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf80a7b...8321bb` | ⚠️ Unaudited |
| YVDAILevSwapper | adapter | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd8af15...5f9a40` | ⚠️ Unaudited |
| YVDAIOracle | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xab137b...138ee6` | ⚠️ Unaudited |
| YVDAISwapper | adapter | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdb3a46...f7fb57` | ⚠️ Unaudited |
| YVMIM3CRVLevSwapper | adapter | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9b2794...b6bdcc` | ⚠️ Unaudited |
| YVMIM3CRVOracle | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x547fd2...64d45f` | ⚠️ Unaudited |
| YVMIM3CRVSwapper | adapter | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x05e46f...65b76d` | ⚠️ Unaudited |
| Zap | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x2c7b8e...d02027` | ⚠️ Unaudited |
| ZeroXGLPWrapperLevSwapper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 3 deployments: arbitrum `0x3f16df...22d71b`; arbitrum `0x983ca3...962037`; arbitrum `0xacb2e2...a4be05` | ⚠️ Unaudited |
| ZeroXGLPWrapperSwapper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 3 deployments: arbitrum `0x0b7bc6...7e26b3`; arbitrum `0x668931...20b8fe`; arbitrum `0x7f5402...4cfe11` | ⚠️ Unaudited |
| ZeroXSolidlyLikeVolatileLPLevSwapper | adapter | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | 4 deployments: optimism `0x5fbaf1...421d5d`; optimism `0x6e4358...b7f442`; optimism `0x70becf...0ec575`; optimism `0x7c8fef...431d38` | ⚠️ Unaudited |
| ZeroXSolidlyLikeVolatileLPSwapper | adapter | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x741a23...ace36e` | ⚠️ Unaudited |
| ZeroXTokenLevSwapper | adapter | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x29cf11...bd20ff`; ethereum `0x3b47e8...94fbe9` | ⚠️ Unaudited |
| ZeroXTokenSwapper | adapter | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x26f20d...01b6b3`; ethereum `0x6655bd...4aed2b` | ⚠️ Unaudited |
| Zorro01Token | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdd716b...2eb744` | ⚠️ Unaudited |
| Zorro02Token | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdba3c9...d8ddd8` | ⚠️ Unaudited |
| ZZZToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9bca93...42f4a2` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (2)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| FeeHandler | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | 9 deployments: ethereum `0x1d1b15...1fd82b`; ethereum `0xe4aec8...393037`; optimism `0x0b79a1...82a012`; optimism `0x6efdd3...e8f491`; arbitrum `0x34e197...75da14`; arbitrum `0xa9ea2b...9347bb`; arbitrum `0xaf068f...0b9059`; arbitrum `0xe66be9...3754a2`; arbitrum `0xe73988...6f3faf` | ⚠️ Unaudited (bytecode match) |
| Implementation | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x58b49e...72e1a9`; arbitrum `0xcdde93...9dbb95` | ⚠️ Unaudited (bytecode match) |

### ❓ Unverified (197)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-378742 | `0x257101...8b34e0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x31edd3...112560` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-378745 | `0x341029...3dd9bf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x450bb6...2ac541` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-378752 | `0x551a7c...fc5147` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x625fe7...74bd61` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6b04c5...3dacb6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x780db9...d0c320` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7c11f7...6b9a77` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-378764 | `0x806e16...54050e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x92ab2e...1e0c79` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9d01d5...09618d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9ff8b4...e94831` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb13352...e3a00f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc79486...05af78` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd59619...a730f7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xed27b3...566e38` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfce0b2...13f71f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x12ea78...9f3e98` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x2b95bf...b79676` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x38091a...0a584a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x3eb5fc...fe7e93` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x60bbef...25a097` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x789004...f0c952` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x8176c5...b59982` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x86e761...bd385b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x8cbc6f...d61ddc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x93503a...2e3409` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xb0da6e...b5ed2b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xb2c3a9...ba48f4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xd076f5...75dc49` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xd825d0...b0e6a4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xdd3b80...c9429a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xef2dbd...4f0195` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xf675bb...3b3d87` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x394473...33e28e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x70035e...cc6d6e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x9e006a...fb0ae8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xbbb2aa...6974fd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x08b918...63ef63` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x0df56a...38a181` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xb3f5c7...a26753` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xc7a161...cd8d8c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | fantom | n/a | `0x090185...37e5f6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | fantom | n/a | 10 deployments: fantom `0x0dec85...cefaf0`; fantom `0x21be37...1a4c83`; fantom `0x6f86e6...456efc`; fantom `0xa48d95...de7598`; fantom `0xb32b31...ea0488`; fantom `0xf68b78...dd567f`; kava `0x3a2761...77c367`; kava `0x729d88...936e30`; kava `0xaad094...80a41a`; kava `0xd6b8bd...5dc591` | ❓ Unverified |
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
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0x1d7ca6...ef22c1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0x218c3c...61a4c0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0x2c78f1...3aa07e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0x340fe1...7b717a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0xc1be9a...4602c4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0xd67de0...850454` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | moonriver | n/a | `0xe0ce60...2a1109` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | kava | n/a | `0x090185...37e5f6` | ❓ Unverified |
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
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xacdd6e...a7a97b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xc7a161...cd8d8c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x0bfcd5...5745eb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x173e60...c42eeb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x193d7e...e2dae8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x205d52...d7e0f5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x24a760...d3116c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x2791af...8182b5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x292a6f...5b3f0a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x2d4b38...e7c045` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x3816a8...d37f50` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x469a99...c0b3d3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x4a9cb5...c7c7d2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x585a94...2fbe23` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x5abce3...a4f949` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x790c86...222aa3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x7e174e...56b1e5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x860d84...7dc7ed` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x943807...bbfb60` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x94635b...53f41d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x9d4f0d...c43f14` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xb345e5...3b4408` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xba1acf...c1a0eb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xbe7d59...0922ef` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xbfa496...cd3b12` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xc25ad0...95abbe` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xc9fdb5...1206a6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xd8284e...d9e020` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xe931cd...ad56f6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xfb81be...245437` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x05300c...4d6df6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x07dfe5...25a922` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x0b94d3...de5864` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x0e0e2c...556a57` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x0e1ec3...18ad6e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x11cb89...406797` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x160bb4...c9b38f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x16c553...a1ecc0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x18ce97...5d8b83` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x195759...1298a5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x1a6708...8f0849` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x1af353...2d232c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x1c4b41...62c452` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x250a0a...a109b2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x2518a3...95610d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x2bcccb...7ca327` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x2f1ba2...178f89` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x33fa3d...eb35c2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x3a0fa8...cef572` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x3bcda0...54f1c9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x41d5a0...c601af` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x47d99d...044f0a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x491a25...0dad5c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x4acc99...ae7f2c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x54fe8e...c86fb0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x563111...fc537b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x587b32...1f41c8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x5b4dfd...fef862` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x5bbfa5...13fe20` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x5cfca5...4c6b9c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x5e1e12...a424ea` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x623877...c2f037` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x64c655...2af8c4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x65f17e...5d0ac7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x66a809...ff0a11` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x6b516b...5adbc9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x6c6f89...ee6459` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x77b995...6403e6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x7aca03...0a9e53` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x7d9d90...e87740` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x8165aa...aec225` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x859ae8...02b834` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x867c10...8a3067` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x884d2e...9d0861` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x8e7982...9c20fc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x931b5d...5989ba` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x959c61...5bb378` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x9732d3...8ad7c9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x997fba...2bb073` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xa1246c...5f83fc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xa2008a...a840d8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xa49fac...a38f53` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xa4e65d...7c55fe` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xa60ef5...28b9d8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xa66876...dad569` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xa71a7c...2959fe` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xaeee31...aaf61c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xb06b46...16bce3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xb5a917...27f800` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xbaf1a2...8cb510` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xbb09ac...9bfec4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xbb83b6...72d204` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xbc05fb...ac21e8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xbc7fa5...3d7920` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xbf7023...d0aa78` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xc35660...2350bd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xc63085...9158e6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xc7d35c...395be5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xcb2804...7088bb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xd12cf5...1e3075` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xd19dac...9c9c04` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xdad1d7...881ac3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xdc3b37...8a1e1a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xe59bb0...04d0d7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xe8a191...529707` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xef2dbd...4f0195` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xf47b8c...d61dc6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xf975aa...68ecbd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xfa85b0...572950` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xfdebd1...b8bb26` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0x233332...accb9c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0x471ee7...f6fceb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0x617161...a3b3aa` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | blast | unit-378910 | `0x6e4358...b7f442` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | blast | unit-378912 | `0x7202b7...d5b6fe` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | blast | unit-378914 | `0x741a23...ace36e` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | blast | unit-378930 | `0xa3372c...b3b20d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0xb9565f...4f265a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0xc7a161...cd8d8c` | ❓ Unverified |
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
| bsc | `0x79533f...bec951` | ElevatedMinterBurner | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | `0x8e7982...9c20fc` | ElevatedMinterBurner | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| moonriver | `0x08b918...63ef63` | ElevatedMinterBurner | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| moonriver | `0x6e858b...079728` | ElevatedMinterBurner | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0x26f20d...01b6b3` | ElevatedMinterBurner | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | `0x9ba780...c3b769` | ElevatedMinterBurner | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xb2c3a9...ba48f4` | EthereumWithdrawer | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xdf46f6...045297` | Factory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0x3477df...3c7e75` | GmxGlpRewardHandler | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0x017ccd...ed6bdb` | GmxV2CauldronV4 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
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
| ethereum | `0x1062eb...495b72` | WhitelistedCauldronV4 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 399 |
| upstream | 55 |
| standard_library | 14 |
| needs_review | 231 |

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
