# Agentic Audit Brief: SatLayer

## Export Authority

- Production state: **published scope**
- Raw selected rows: 3 across 3 audit(s)
- Eligible audit results: 12 (3 matched; 9 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e9e09d06b414f9cd852c36a58d42ce16279465f2d9791cd2a8178f3f54b89ecd`

## Project Overview

- Project: SatLayer (`satlayer`)
- Website: [https://satlayer.xyz/](https://satlayer.xyz/)
- Lifecycle: unknown
- Generated: 2026-07-15T18:30:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: base, berachain, bitlayer, bob, bsc, ethereum, sepolia
- Contract surface: 669 unique implementations (773 raw deployments)
- Coverage basis: 3/35 confirmed own live verified implementations (8.6%); conservative 8.6% with 0 needs-review implementation(s)
- DeFi Llama TVL: $176,493.06
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for SatLayer. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 36 contract row(s) across base, berachain, bitlayer, bob, bsc, ethereum, sepolia. Structural roles: 32 core, 3 supporting, 1 infra. 11 row(s) use upgradeable patterns.

## Logic Topography

- Exact-run contract rows: 36
- Structural roles: core (32), supporting (3), infra (1)
- Contract kinds: contract (35), abstract (1)
- Detected standards: ownable (23), erc20 (22), erc1967proxy (11), pausable (4), accesscontrol (1), erc165 (1), ownable2step (1)
- Frameworks: openzeppelin (35), openzeppelin-upgradeable (8)
- Upgradeable-pattern rows: 11

## Fork Analysis

0 of 54 contracts are derived from known codebases. 54 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0x8236a8...634494`, chain 1)
- UnnamedContract (`0xf6718b...28b8a3`, chain 1)
- UnnamedContract (`0xff2858...b5ee5b`, chain 1)
- UnnamedContract (`0xf6718b...28b8a3`, chain 56)
- UnnamedContract (`0x552b0c...42fa05`, chain 8453)
- UnnamedContract (`0x236f8c...803894`, chain 60808)
- UnnamedContract (`0x32fd8e...39fb83`, chain 60808)
- UnnamedContract (`0x4cbe83...98aa09`, chain 60808)
- UnnamedContract (`0x09def5...fbe34b`, chain 80094)
- UnnamedContract (`0x1fcca6...404e1e`, chain 80094)
- UnnamedContract (`0xad9f7d...ca4ec8`, chain 80094)
- UnnamedContract (`0x2e3c78...4a9a1c`, chain 200901)
- UnnamedContract (`0x4fdb05...24b8b6`, chain 200901)
- UnnamedContract (`0x939197...2b593e`, chain 200901)
- UnnamedContract (`0xa1f499...557673`, chain 200901)
- UnnamedContract (`0xf6718b...28b8a3`, chain 200901)
- UnnamedContract (`0xff204e...e4fc5f`, chain 200901)
- UnnamedContract (`0xff6166...6b72a1`, chain 200901)
- BeaconProxy (`0xd9d920...159def`, chain 1)
- BeaconProxy (`0x1346b6...d446a5`, chain 56)
- BeaconProxy (`0x0f6f33...728f3b`, chain 80094)
- BeaconProxy (`0xcc0966...169a8c`, chain 80094)
- BEP20Token (`0x7130d2...3ead9c`, chain 56)
- ERC1967Proxy (`0x51477a...ee5147`, chain 1)
- FBTC (`0xc96de2...d6c364`, chain 1)
- FiatTokenProxy (`0xcbb7c0...ed33bf`, chain 8453)
- PumpToken (`0xf469fb...0a012e`, chain 1)
- ReceiptToken (`0x067e11...67152f`, chain 1)
- ReceiptToken (`0x0c4dd6...3430c7`, chain 1)
- ReceiptToken (`0x17140b...ad24ff`, chain 1)
- ReceiptToken (`0x69223b...82c566`, chain 1)
- ReceiptToken (`0xe2c675...a912dc`, chain 1)
- ReceiptToken (`0xf7de2b...1e076e`, chain 1)
- ReceiptToken (`0x067e11...67152f`, chain 56)
- ReceiptToken (`0x17140b...ad24ff`, chain 56)
- ReceiptToken (`0xe2c675...a912dc`, chain 56)
- ReceiptToken (`0x422d6c...7f9802`, chain 8453)
- ReceiptToken (`0x9ed4b1...165add`, chain 8453)
- ReceiptToken (`0x2a5fc0...f415c9`, chain 80094)
- ReceiptToken (`0x7b4dc4...85705c`, chain 80094)
- ReceiptToken (`0x961395...3ab763`, chain 80094)
- ReceiptToken (`0xd23557...27abc2`, chain 80094)
- ReceiptToken (`0xe70419...48b126`, chain 80094)
- ReceiptToken (`0xff21f4...cfdb9b`, chain 80094)
- SatlayerPool (`0x42a856...102819`, chain 1)
- SatlayerPool (`0x42a856...102819`, chain 56)
- SatlayerPool (`0xb57752...b0b9b3`, chain 8453)
- SatlayerPool (`0x50198b...9bc99d`, chain 80094)
- Token (`0x93f4d0...d21116`, chain 80094)
- TransparentUpgradeableProxy (`0x004e9c...350568`, chain 1)
- TransparentUpgradeableProxy (`0x939197...2b593e`, chain 8453)
- TransparentUpgradeableProxy (`0xc3827a...db6e90`, chain 80094)
- TransparentUpgradeableProxy (`0xecac9c...5c11c1`, chain 80094)
- WBTC (`0x2260fa...c2c599`, chain 1)

## Contract Surface Quality

- Logic-topography rows: 36; live-surface rows included: 36 (36 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 52/60 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 3/35 (8.6%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 52 own, 8 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 609 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 20
- Confirmed-live implementations: 52 of 669 unique; 617 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 3/88
- Verified + Unaudited implementations: 85
- Verified by bytecode match: 0
- Unverified implementations: 581
- Unique implementations: 669
- Raw deployments: 773
- Audits discovered: 12 (12 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 3
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2025-08 (fresh)
- Audit staleness (calendar age): 1 fresh, 9 aging, 1 stale, 1 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 3 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| Dedaub | Tier 2 | 1 | 1.1% | 2025-08 |
| unknown | Tier 2 | 1 | 1.1% | 2024-08 |
| Zellic | Tier 2 | 1 | 1.1% | 2025-01 |

## Contract Surface

### ✅ Verified + Audited (3)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| SatlayerPool | core_logic | project_anchor | own_supporting | 0 | ethereum | unit-253867 | `0x42a856...102819` | ✅ Audited |
| SatlayerPool | core_logic | project_anchor | own_supporting | 0 | berachain | unit-253903 | `0x50198b...9bc99d` | ✅ Audited |
| SLAYToken | token | project_anchor | own_supporting | 1 | ethereum | unit-253915 | `0x51477a...ee5147` | ✅ Audited |

### ⚠️ Verified + Unaudited (85)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| AssetRouter | adapter | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0xb82335...48bd80`; ethereum `0xcd4d55...55a928`; ethereum `0xfc38d4...36972f` | ⚠️ Unaudited |
| Automation | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x53c8bf...97f7e3` | ⚠️ Unaudited |
| BEP20Token | token | project_anchor | own_supporting | 0 | bsc | unit-253894 | `0x7130d2...3ead9c` | ⚠️ Unaudited |
| BEP20Token | token | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xe9e7ce...087d56` | ⚠️ Unaudited |
| brBTC | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | berachain | n/a | `0x939197...2b593e` | ⚠️ Unaudited |
| BridgeV2 | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0xc1fe8a...2059c8`; ethereum `0xc78524...41a235` | ⚠️ Unaudited |
| ERC2612Verifier | periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x045969...9538df` | ⚠️ Unaudited |
| ERC4626VaultWrapper | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 6 deployments: ethereum `0x3f9873...a10fc7`; ethereum `0x89cebc...cee901`; ethereum `0x8b80ca...17fed2`; ethereum `0x9a7ca5...080ed2`; ethereum `0xc337ba...901612`; ethereum `0xeac3f8...d34ce7` | ⚠️ Unaudited |
| FBTC | unknown | project_anchor | own_supporting | 0 | ethereum | unit-253870 | `0xc96de2...d6c364` | ⚠️ Unaudited |
| FBTCPartnerVault | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x512258...8f198c` | ⚠️ Unaudited |
| FeeBoxETH | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0b20d5...4fa7b4` | ⚠️ Unaudited |
| FeeBoxStETH | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x294fe9...4e8313` | ⚠️ Unaudited |
| FiatTokenV2_1 | token | project_anchor | own_supporting | 1 | base | unit-253922 | `0xcbb7c0...ed33bf` | ⚠️ Unaudited |
| GHOEth | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x83291c...4e281f` | ⚠️ Unaudited |
| GMPBasculeV1 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc3ecfe...9338ed` | ⚠️ Unaudited |
| LBTC | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa1bc65...a3845a` | ⚠️ Unaudited |
| LBTC | unknown | project_anchor | own_supporting | 1 | berachain | unit-253919 | `0xecac9c...5c11c1` | ⚠️ Unaudited |
| LBTCOFTAdapter | adapter | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 6 deployments: ethereum `0x1290a6...8f44ad`; ethereum `0x37e92d...7510c0`; ethereum `0x3a7647...d95299`; ethereum `0x6bc15d...9d077f`; ethereum `0xa7c4d9...c0abf7`; ethereum `0xacb11b...126c31` | ⚠️ Unaudited |
| LombardTimeLock | governance | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x055e84...e77e59` | ⚠️ Unaudited |
| LombardTokenPoolV2 | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x61003b...f56095`; ethereum `0x88e186...017bc7`; ethereum `0xba59cf...9842d0` | ⚠️ Unaudited |
| Mailbox | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x052359...2f0080` | ⚠️ Unaudited |
| Manager | governance | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 50 deployments: ethereum `0x039bf3...66d97d`; ethereum `0x0787b6...faf385`; ethereum `0x0a5414...8334df`; ethereum `0x19520c...1e507c`; ethereum `0x1c2431...23c72a`; ethereum `0x1f96e2...f4d319`; ethereum `0x20891e...5b0729`; ethereum `0x2286f5...093db9`; ethereum `0x276e54...64e58c`; ethereum `0x2dc459...e410b0`; ethereum `0x2e9fd0...c86b5f`; ethereum `0x36035d...a637be`; ethereum `0x38f8ba...5be902`; ethereum `0x45e990...218cb3`; ethereum `0x479030...b7a1c5`; ethereum `0x4c907a...53f5a0`; ethereum `0x5085b5...f0f01f`; ethereum `0x5659c8...51d7f5`; ethereum `0x64bed7...3ec07b`; ethereum `0x65e6ef...3c40ae`; ethereum `0x6d425b...07b616`; ethereum `0x6d9366...2c7143`; ethereum `0x70fed1...639bbc`; ethereum `0x727750...e49beb`; ethereum `0x731820...5d1453`; ethereum `0x870f1e...21d4ae`; ethereum `0x88001d...a60b35`; ethereum `0x89f31a...c01dd0`; ethereum `0x8b214d...eb9f9f`; ethereum `0x8c4812...8ef340`; ethereum `0x8cc155...92c768`; ethereum `0x907c63...bcf6d8`; ethereum `0x94bbf9...0b25bd`; ethereum `0x9b88fb...d27302`; ethereum `0xa2858e...1bf37c`; ethereum `0xa5a0ad...df9f20`; ethereum `0xa5d359...a221e7`; ethereum `0xab5866...31ef28`; ethereum `0xac1894...c96065`; ethereum `0xb6e482...33f24c`; ethereum `0xc3d727...9e867a`; ethereum `0xc58dfa...a94e4a`; ethereum `0xc8cbde...6aa92d`; ethereum `0xcf0bd8...e7a802`; ethereum `0xdd77fa...443eb7`; ethereum `0xdf5e9f...2ecad4`; ethereum `0xe5bd9c...43ee46`; ethereum `0xf0ba63...c04d8c`; ethereum `0xf30592...228076`; ethereum `0xf4f0a7...a87446` | ⚠️ Unaudited |
| NativeLBTC | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x6b89d7...df635d`; ethereum `0x6be197...3af7b3` | ⚠️ Unaudited |
| ParaSwapHelper | periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0f00dc...eb2a64` | ⚠️ Unaudited |
| PositionManagementAAVEV3 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x4509c4...f203a4` | ⚠️ Unaudited |
| PositionManagementAAVEV3 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x815a3d...e4103f` | ⚠️ Unaudited |
| ProxyAdmin | governance | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x17c3b6...d551ab` | ⚠️ Unaudited |
| PumpToken | token | project_anchor | own_supporting | 0 | ethereum | unit-253872 | `0xf469fb...0a012e` | ⚠️ Unaudited |
| ReceiptToken | token | project_anchor | own_supporting | 0 | ethereum | unit-253863 | `0x067e11...67152f` | ⚠️ Unaudited |
| ReceiptToken | token | project_anchor | own_supporting | 0 | ethereum | unit-253864 | `0x0c4dd6...3430c7` | ⚠️ Unaudited |
| ReceiptToken | token | project_anchor | own_supporting | 0 | ethereum | unit-253865 | `0x17140b...ad24ff` | ⚠️ Unaudited |
| ReceiptToken | token | project_anchor | own_supporting | 0 | ethereum | unit-253868 | `0x69223b...82c566` | ⚠️ Unaudited |
| ReceiptToken | token | project_anchor | own_supporting | 0 | ethereum | unit-253871 | `0xe2c675...a912dc` | ⚠️ Unaudited |
| ReceiptToken | token | project_anchor | own_supporting | 0 | ethereum | unit-253874 | `0xf7de2b...1e076e` | ⚠️ Unaudited |
| ReceiptToken | token | project_anchor | own_supporting | 0 | bsc | unit-253891 | `0x067e11...67152f` | ⚠️ Unaudited |
| ReceiptToken | token | project_anchor | own_supporting | 0 | bsc | unit-253892 | `0x17140b...ad24ff` | ⚠️ Unaudited |
| ReceiptToken | token | project_anchor | own_supporting | 0 | bsc | unit-253895 | `0xe2c675...a912dc` | ⚠️ Unaudited |
| ReceiptToken | token | project_anchor | own_supporting | 0 | base | unit-253911 | `0x422d6c...7f9802` | ⚠️ Unaudited |
| ReceiptToken | token | project_anchor | own_supporting | 0 | base | unit-253912 | `0x9ed4b1...165add` | ⚠️ Unaudited |
| ReceiptToken | token | project_anchor | own_supporting | 0 | berachain | unit-253902 | `0x2a5fc0...f415c9` | ⚠️ Unaudited |
| ReceiptToken | token | project_anchor | own_supporting | 0 | berachain | unit-253904 | `0x7b4dc4...85705c` | ⚠️ Unaudited |
| ReceiptToken | token | project_anchor | own_supporting | 0 | berachain | unit-253906 | `0x961395...3ab763` | ⚠️ Unaudited |
| ReceiptToken | token | project_anchor | own_supporting | 0 | berachain | unit-253908 | `0xd23557...27abc2` | ⚠️ Unaudited |
| ReceiptToken | token | project_anchor | own_supporting | 0 | berachain | unit-253909 | `0xe70419...48b126` | ⚠️ Unaudited |
| ReceiptToken | token | project_anchor | own_supporting | 0 | berachain | unit-253910 | `0xff21f4...cfdb9b` | ⚠️ Unaudited |
| ReceiverOnMainnet | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x5cc3eb...4a55ac`; ethereum `0x72c992...5afad1`; ethereum `0x9403b7...b1eca5` | ⚠️ Unaudited |
| RedeemOperator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 11 deployments: ethereum `0x0cf918...e7ad5b`; ethereum `0x1198ca...8d8806`; ethereum `0x12f101...fe07f9`; ethereum `0x13be82...7e7b53`; ethereum `0x688a30...5c77a7`; ethereum `0x6c96b1...7632c1`; ethereum `0x7ad781...3ba20e`; ethereum `0x82dc32...0b89a3`; ethereum `0x8b32ad...ecced3`; ethereum `0xb03a7b...c577fa`; ethereum `0xbb0d68...c8bbd5` | ⚠️ Unaudited |
| RewardDistributor | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0xf46a21...ffbbe5` | ⚠️ Unaudited |
| SatlayerPool | core_logic | project_anchor | own_supporting | 0 | bsc | unit-253893 | `0x42a856...102819` | ⚠️ Unaudited |
| SatlayerPool | core_logic | project_anchor | own_supporting | 0 | base | unit-253913 | `0xb57752...b0b9b3` | ⚠️ Unaudited |
| SolvBTCYieldTokenV3_1 | token | project_anchor | own_supporting | 1 | ethereum | unit-253914 | `0xd9d920...159def` | ⚠️ Unaudited |
| SolvBTCYieldTokenV3_1 | token | project_anchor | own_supporting | 1 | bsc | unit-253917 | `0x1346b6...d446a5` | ⚠️ Unaudited |
| SolvBTCYieldTokenV3_1 | token | project_anchor | own_supporting | 2 | berachain | unit-253918 (2 proxies) | 2 deployments: berachain `0x0f6f33...728f3b`; berachain `0xcc0966...169a8c` | ⚠️ Unaudited |
| StakeAndBake | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x9088d8...be497a`; ethereum `0xa25213...673675`; ethereum `0xb492ac...5df7a5` | ⚠️ Unaudited |
| StakeAndBakeNativeToken | token | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0bca0f...7eae88` | ⚠️ Unaudited |
| StakedLBTC | token | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x21f352...083b02`; ethereum `0x8c21ab...760a0a` | ⚠️ Unaudited |
| StakedLBTCOracle | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x5e28ef...1fdc1c`; ethereum `0x6db63b...5c9cd6` | ⚠️ Unaudited |
| StrategyAAVEV3Core | core_logic | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x2563b7...19c800` | ⚠️ Unaudited |
| StrategyAAVEV3Core | core_logic | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x6e3988...14fa99` | ⚠️ Unaudited |
| StrategyAAVEV3Core | core_logic | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x78a1fd...545b39` | ⚠️ Unaudited |
| StrategyAAVEV3Core | core_logic | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0xd4ede7...6cb615` | ⚠️ Unaudited |
| StrategyAAVEV3CoreUSDe | core_logic | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x9ffe77...74b464` | ⚠️ Unaudited |
| StrategyAAVEV3CoreUSDe | core_logic | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0xb3e6fc...764399` | ⚠️ Unaudited |
| StrategyAAVEV3CoreUSDe | core_logic | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0xd16796...352b16` | ⚠️ Unaudited |
| StrategyAvalon | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf42b8e...d5cf00` | ⚠️ Unaudited |
| StrategyBedrock18DEC2025 | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x24a4fb...6d9425`; ethereum `0x74dce5...63f752` | ⚠️ Unaudited |
| StrategyDefault | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 5 deployments: ethereum `0x14302c...a81786`; ethereum `0x72c3a4...0e8714`; ethereum `0x841c46...8e0c47`; ethereum `0xc810a8...b32841`; ethereum `0xe4f81e...79a733` | ⚠️ Unaudited |
| StrategyEuler | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x869620...f683d0` | ⚠️ Unaudited |
| StrategyGHO | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3dff2c...b2bb60` | ⚠️ Unaudited |
| StrategyHyperliquidSTETH | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 4 deployments: ethereum `0x142193...d2cf1e`; ethereum `0x6ab69e...9959e2`; ethereum `0xc6603c...fae257`; ethereum `0xfb8b84...10a7f0` | ⚠️ Unaudited |
| StrategyMellowSteakhouse | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x67c0d2...323ff6` | ⚠️ Unaudited |
| StrategyZero | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf9e1a6...fffdc5` | ⚠️ Unaudited |
| TellerWithMultiAssetSupportDepositor | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x51d9c2...bf1a5f`; ethereum `0xb90a47...26c686` | ⚠️ Unaudited |
| TestBridgeWithHook | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x1c5bb8...fa7b20`; ethereum `0x210a85...143865`; ethereum `0xfbf1d5...de44bd` | ⚠️ Unaudited |
| Token | token | project_anchor | own_supporting | 0 | berachain | unit-253905 | `0x93f4d0...d21116` | ⚠️ Unaudited |
| Token | token | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | 2 deployments: berachain `0xd0ebd9...c07e10`; berachain `0xec901d...0652c3` | ⚠️ Unaudited |
| uniBTC | unknown | project_anchor | own_supporting | 1 | ethereum | unit-253916 | `0x004e9c...350568` | ⚠️ Unaudited |
| uniBTC | unknown | project_anchor | own_supporting | 1 | base | unit-253921 | 2 deployments: base `0x552b0c...42fa05`; base `0x939197...2b593e` | ⚠️ Unaudited |
| uniBTC | unknown | project_anchor | own_supporting | 1 | berachain | unit-253920 | `0xc3827a...db6e90` | ⚠️ Unaudited |
| USDS2USDC2DAI | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4f119f...e60eee` | ⚠️ Unaudited |
| Vault | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 10 deployments: ethereum `0x211ad9...d9b691`; ethereum `0x2adfd4...4e5c60`; ethereum `0x2b3853...4fac0e`; ethereum `0x3f0d9c...113282`; ethereum `0x4b00a9...882da8`; ethereum `0x97832d...31eadd`; ethereum `0xb0ce0c...96c0e5`; ethereum `0xb88edc...24026e`; ethereum `0xd87ecd...5ed555`; ethereum `0xef4508...c03800` | ⚠️ Unaudited |
| VaultStETHWrapper | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x22cdae...2a3d0b` | ⚠️ Unaudited |
| VaultYieldRSETH | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2410e7...edf4bf` | ⚠️ Unaudited |
| WalletFactory | registry | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8b46cb...9cc001` | ⚠️ Unaudited |
| WBTC | token | project_anchor | own_supporting | 0 | ethereum | unit-253866 | `0x2260fa...c2c599` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (581)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x002a37...932066` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x005854...4e0e76` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x00b677...0e6a04` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0186b0...d149c5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x019aa9...4d5b62` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x01b1af...2f7c04` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x032a09...e81a86` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x03a16e...5fa108` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x03c1fa...80de08` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x03c320...c7f8f2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0415a2...44d67f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0415d1...f923a2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x047815...7339b1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x04dddd...77c0ec` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x04e3d1...4d01c1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0695ea...ea3862` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x069e54...d4e77e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x07b2f5...4dbc3e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x09511b...8cab3e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x096f1b...fcf672` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x09826f...6fe392` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0982eb...b9ac2a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0a9ea3...c03bb5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0ab4b6...dd5fef` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0b2166...3fdbe9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0cbee8...b4c54f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0d1862...6f3a1d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0d4974...ae71c0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0e6830...10aa51` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0e9378...1222d1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0ed540...4b079c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x108400...bc5d5f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x108a0c...5fc749` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x11b8d2...5f0745` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x140b58...480a7c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x144f69...0f779b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x14b816...02347d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x16c6b8...518187` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x16d2ca...3a4a76` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x170853...346187` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x17f453...ce22ae` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x183d90...d67223` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x189c0a...7246e4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x195abf...011c73` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x19af8a...d309ca` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1ab34b...27a773` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1b6be5...b0cb4c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1cb9cf...076a9a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1d4dd4...a77ba0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1e448b...85d3da` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1ea243...916cf4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1ec109...f467d8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1eccf9...309582` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1f13d5...dce326` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1f6cdc...cd5f6e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1fcca6...404e1e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x201121...1c8a70` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x21479f...4608ab` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x219000...6f759d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x237978...0f48ec` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x237eff...24912f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x23eb92...8466d3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x24d333...997800` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x24d5a9...943f20` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x24f86a...72b71e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x250d72...5ef8f0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x25e152...7b5327` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x260d55...c8b3d0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x269daf...7f433b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x26bb8e...a77c7b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2778ae...81cb4d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x27a891...2aa8d0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x281b4c...f35dca` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x28b668...162ee9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x28c24f...506157` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2907bc...f845a4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2927d6...6dd459` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2a20f2...59bec8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2a53f9...44b0a8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2b1152...2f7e73` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2b832e...eace48` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2bff7c...9f4bfd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2cd264...d49cfe` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2dbadd...bffd02` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2e54a6...e21782` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2efde9...20e0e3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2f2150...62a4c8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2fc72e...dd190d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2fdc50...c632ba` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x300d5b...95b3b1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x302822...9f8107` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x302d70...23a755` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x312855...3a2b3d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x31c3c3...7c20a5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x330245...c1233f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x336046...e1c310` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x339201...83545d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3498fd...8e613b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x34d16e...bf22c1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x34dff7...2c2d49` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x35e612...84cd51` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x361205...d00c74` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x36f513...3bbb31` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x370cea...7d9ba9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x37c314...3701a2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x37cb97...fe030d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x38b4e0...ede466` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x38e248...15ef15` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3974d9...201dab` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3a4599...b7d5c1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3a9d4b...989d08` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3bfc2d...5325ed` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3c003d...27e777` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3c0edb...201597` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3d086b...2c4a20` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3d09c8...9af680` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3d74e5...afe292` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3d9bcc...5e6083` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3dcb5c...07a891` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3e6598...b92222` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3ed294...0f69f5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3f5d80...947eb8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3f66e3...36a2c7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3fd49a...8f1532` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x40846b...43c316` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x40c684...2a7b30` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x41076d...4b840d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x418ba1...f46ea3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x419e66...63aa6a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x41cd17...0501b5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x42d14e...59fe0f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x42d73c...0c3b8a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x441a28...5ca651` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x44fffb...0efd8e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x45bed9...35d4a8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x47dbd7...ed239e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x47f6f2...4e7637` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x481dc5...f4a893` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x485fd9...03c12e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4957a3...217c73` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x49af17...ac9698` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4a3946...55fc4c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4a522e...2a1c8c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4b32ee...3bb5b5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4c3790...e30f35` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4c380d...4c769e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4c7df2...c93254` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4cd11d...b2246f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4e1fe5...71c19a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4e8e60...f9a427` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5018ca...93e7e9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x502928...83a338` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x508339...9ca0ce` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x50fd70...04c10c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x51d9a3...ff2d45` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x520081...000af4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x527d01...468d72` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x54e5ce...3a01de` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x55957e...2fa5f1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x55ad78...1ed0cc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x573b73...203828` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5764d4...a93329` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x57e0a4...756bd7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x57e849...4d113f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x580445...6cd54f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x59d169...2d5ede` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5a11de...0b4de7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5ad672...8bd561` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5b46d4...564176` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5b6f47...ea36be` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5b9558...ffa2e3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5c2d91...44fa14` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5e1005...61c3e9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5f9e9e...35848d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5fa330...11c64a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5fbceb...733000` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x601396...2e96e8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x601954...ee5374` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x60e97d...b469ba` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x60f898...86a36e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x61420b...4cf51c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x616a41...0cf942` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x616fb2...4b1f97` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x619b3e...4f2b7d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x61b982...5d55fc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x61f85c...d2fbdb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x624907...e41aaf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x63cd34...0c9355` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x640a7a...4d6633` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x641064...572f1a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x64213b...805bd6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x64a53b...9b0bec` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x64c5a4...d1dec0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x64d772...531cb3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x655e9f...b63662` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x65931b...963c99` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x659397...e2d8a4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x65d9e9...edde84` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x67362b...906cec` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x676927...3ac3c1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x677af8...14526a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x67a919...694dd6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x67eb8c...9ef717` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x680417...7b19c8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6945f5...eb5566` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x699f69...c01a8d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6a44c7...13014a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6a66bb...3f90d6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6ad91f...acafb6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6c12a6...2e9022` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6c77bd...c895d1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6c87ac...77e5f9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6c90c7...d44044` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6cdcf1...69ee7a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6d52ed...4dec0b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6dd173...c59cb2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6e055d...5574df` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6e3066...8f800a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6e4b93...47f70b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6f26b0...8404ac` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x700eed...282e14` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x705214...7c022a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x708ea4...d7e397` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x71913b...4aa290` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x71ea0e...e8b3d3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7223d0...b09bd6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x728860...df50d5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x72b65f...cf6fd5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7331c9...e56027` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x736d99...d625f6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7462bc...a4f5d6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x74d2be...54cdbb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x751512...bf8504` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x75a32b...022a32` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x75bd1d...a9edf5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x75e889...f3f342` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x760e92...aaf5b8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x769225...7575b9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x76ba7f...6509ef` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x76f318...4f4364` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x775218...3169b7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x77d22a...04eaad` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x79da44...fb3bfc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x79dd84...e660e8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7a116f...99edc4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7a9ca8...d18e37` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7acd10...e10064` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7afd64...f5da43` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7b4334...b37264` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7ba7c4...60e15e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7be572...b208ea` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7bf41e...1ab3e5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7bfc0e...d9004a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7c5868...3257dd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7c9b07...4a2144` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7cb6bb...5f8797` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7cbc0a...50d5b0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7d713d...2a4c54` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7dc8a3...cf240e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7dec17...f4fc48` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7e8ba2...888445` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7f2d63...879703` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7ff670...66a7f0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x807358...03c3e6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x80d0c5...e8c02e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x813376...053101` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x813d2a...9c2784` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x81c6e8...7ff0a0` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-253869 | `0x8236a8...634494` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x825a56...33b488` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8359b1...98b41c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x836a40...dd042b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x83b15a...45ec17` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x83b5ab...af36f2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x852a51...96b01e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x855bfd...4a75f6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x85a7e1...55441c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8688dd...c678a7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x868e97...cb88c8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x86b104...584c82` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x873ec2...ddc238` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x885083...523f6c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x886f50...b6dc04` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x89ad20...c9758c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x89cc77...6490f5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8a95f2...60d500` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8bb3dc...d266f7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8ce174...15e8ba` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8d34ae...09e37d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8d76e7...3560a2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8ded14...5d526e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8ebc9d...97b34d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8efdb3...427e3d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8fd923...3c8751` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x906369...ec0ae0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x906396...5dfc01` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x907883...14e60e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x910b3c...6b7baf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9152e9...5658b7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x93d3d4...1aca62` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x949f85...4d7391` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x95bba6...7a22ce` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9633d6...864caa` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x966ed7...5f392d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x96b6d0...27d080` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x96de6a...58258a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x97c07d...75b361` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x98a5c6...e55491` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x98d578...c86137` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9931e2...acefa4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x99ac30...41aab0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9a81c5...ddc321` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9aa8b1...d8e544` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9adba7...59dbbe` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9ae1ca...976151` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9b2316...921137` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9c12f9...f561a9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9c3439...f1f715` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9ca9b0...d7ad6b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9cc7c0...6bc1e2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9d0a02...44df70` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9d1301...b8b949` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9d5eb7...c071d3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9dc020...006262` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9e9dc4...9c4365` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9f8a4b...23902b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9fddad...f0a019` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa04a26...522398` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa0ad94...7792c7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa11eba...1a1bea` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa1dc0b...7e0842` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa22772...4c6465` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa23075...738361` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa2b333...6619bb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa2b94c...91945d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa34ecb...1c0d70` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa351e2...12b45f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa3542f...792c80` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa47f02...cddd8f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa53cd3...f759c9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa5815b...bbf023` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa60b87...83cdea` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa79d00...b81895` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa85c89...593a57` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa91355...0ca1bd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa91476...14c2ca` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa99491...0de97c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa9b89d...fcb7b6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa9c55c...b56ff2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xabc15d...1b9f77` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xac7eaa...536bfe` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xacf519...f7e25b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xad47b2...dad8e1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xadc9c9...f4f9a8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xaec1fb...039a3b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xaef755...9216bb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xaf4c09...9e49b7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xafb6a7...012b7b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xafc13b...4aafdb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb0824e...d74131` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb08fbe...1f061e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb13177...b45ba1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb13aa2...08775d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb2afdd...595363` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb32950...2090c4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb37690...748856` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb38bf7...d2eb56` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb39e6f...2019b7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb40db6...aef403` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb44be8...6b3d7b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb713a6...f9d7c8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb7a444...f4552f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb8c0c5...1a5d34` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xba8f17...dd6bcf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbad5e0...f635a3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbae6c9...f34eac` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbbff1b...88013d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbc3a00...3eb6f1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbc8adf...e2ac51` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbd2a1d...d47e18` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbd64ce...a78618` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbd8f3b...5f37b5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbe1501...da1d1b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbf8f3f...61d23a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbfc2d1...93c1ba` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc0069f...ef2294` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc091a0...678ff5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc0c687...622f88` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc11111...2022ad` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc170b0...8d8183` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc397df...6a2aa3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc39e03...1d26fd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc3c02d...5b23e4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc40573...828f2d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc41d5f...ef6ae0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc49e8f...82d0ba` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc4f60c...46cddf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc56da3...225b62` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc57cb3...ff86be` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc5c995...a6351c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc5d7cd...2234f1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc657a0...9e283e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc663f4...2c2e53` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc6cd2a...15507e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc71fb1...d745b8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc74fd7...5a49ca` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc84a1e...74e842` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc8c3ab...3e8b0e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc93616...d493c1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc9d04e...bac360` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc9ecc7...02b02f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xca696a...e0258c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcad311...22a949` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcae91d...8af5f2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcb1b27...ef3a52` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcb742c...0563ed` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcbcd13...7537dd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcc287c...147b96` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcc7e6d...56e20a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcd42b7...5c4a97` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcd9dff...058875` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcdd374...005137` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xce672d...5af2ac` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcedeec...15bf00` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd1216d...6a7186` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd1693b...9ffa3b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd1828c...f92138` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd1d73b...359113` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd1e177...c3c9a9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd2adb1...6851d8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd34f59...399d77` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd3bdd5...5fdc03` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd3d547...b747c9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd4040a...d9f568` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd41985...3f116a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd4cc9b...e0993b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd4e08f...3a6a79` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd52c28...611a38` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd57aaa...58ea35` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd5a1d7...a6898a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd67e5b...1a2d25` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd6ba69...810f20` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd6bc74...b57b98` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd6f481...c46956` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd6f66c...dbb266` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd72c3a...c58f80` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd780e9...cf5626` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd7ad8e...2c335f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd87a19...4ade4e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd8f81c...5d1d56` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xda66c3...dee2e5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdac674...f012db` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdb0aef...db043d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdb9476...f8eebf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdba4c3...a86bed` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdc02f1...662eff` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdc314a...05d5dd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdc77ba...a317a0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdca3ab...66ed84` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdcb3d9...5be940` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdce3d4...8e95eb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdd5507...a0a0fa` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdda8cd...92660b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xddd2aa...255a55` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xde7480...f84352` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdf1913...e31edf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdf41d8...739f0a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe13b6c...db26e3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe170ee...f7f1cc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe18196...7464fe` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe39658...2f92cd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe457e5...13234f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe4794e...3575d7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe52b42...5d2ebd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe5dfce...cd9c8c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe5f5a0...5b0bdf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe7f878...5b4b8f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe83dd7...0243f1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe84082...99a1e1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe9a659...891740` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe9d6d1...943cf1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe9da84...a59fb9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe9ebd6...f6235d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xea5f10...d19a17` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xeacb97...4dc358` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xeae0e3...d698a7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xeb863b...6a55a9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xebc540...59c4ea` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xec5364...66856e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xec55e7...c3197d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xed75d6...82f7c3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xed8143...60d827` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xeec53f...bfe7ab` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xef3fd1...822aca` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xefe4c9...adc1df` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf07f58...f3b72a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf0e48d...c89498` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf12da6...8e82ae` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf12e22...26b491` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf151ff...1f5d48` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf1cc9e...f7924e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf2cc04...ab655b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf2cf49...870dfa` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf2e57e...ff7cdf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf2f5fd...6aa27f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf30c70...8da565` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf31584...a39b3e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf37491...b2e43b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf39e78...112057` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf405fc...20731b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf60cb7...345b85` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf619f3...3790c6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf646c1...aae918` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-253873 | `0xf6718b...28b8a3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf6c57a...798e7a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf703e4...df6681` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf7cb66...12df95` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf7ead3...0c998e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf7eb36...0738d0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf84a84...0ee466` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf8d195...fee542` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf928f6...a0286e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf9dba6...26cc7c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfa0671...a3f7ae` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfa78ea...9b7d02` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfb06bc...b708ea` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfb2d95...580196` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfb41f3...4696fe` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfc3a51...17de71` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfe1f7d...ae09e8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfe5ca0...713969` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfe8bd3...781ded` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-253875 | `0xff2858...b5ee5b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xff4da5...a7a710` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xff61d1...83a4ae` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xff6771...8bcad0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xffe98b...3d2e23` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-253896 | `0xf6718b...28b8a3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x3376eb...61514a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x89b2c7...740aeb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xa16113...2059be` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xd3c8da...b1d58d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xdfc7d2...2b511e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xf97750...31ab18` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bob | unit-253897 | `0x236f8c...803894` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bob | unit-253898 | `0x32fd8e...39fb83` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bob | unit-253899 | `0x4cbe83...98aa09` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x095957...766d71` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | berachain | unit-253900 | `0x09def5...fbe34b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | berachain | unit-253901 | `0x1fcca6...404e1e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x50fa14...1b8190` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x552b0c...42fa05` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x563a27...731fe5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x76b0d2...b0a155` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x8fce81...d1a388` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x9203ce...718031` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0xa93322...4ffadd` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | berachain | unit-253907 | `0xad9f7d...ca4ec8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0xb290be...69ec47` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0xd3c8da...b1d58d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0xd4dfb0...f97782` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0xdf1925...756e59` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0xe0240d...88dea3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0xe1061f...838a8c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0xf6718b...28b8a3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0xf97750...31ab18` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bitlayer | unit-253884 | `0x2e3c78...4a9a1c` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bitlayer | unit-253885 | `0x4fdb05...24b8b6` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bitlayer | unit-253886 | `0x939197...2b593e` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bitlayer | unit-253887 | `0xa1f499...557673` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bitlayer | unit-253888 | `0xf6718b...28b8a3` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bitlayer | unit-253889 | `0xff204e...e4fc5f` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bitlayer | unit-253890 | `0xff6166...6b72a1` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-253876 | `0x06a1dd...07865b` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-253877 | `0x357c34...5c477c` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-253878 | `0x8fed78...05169f` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-253879 | `0xa4da7a...e8ba0b` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-253880 | `0xc2c23c...c8880d` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-253881 | `0xc44031...36c622` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-253882 | `0xcc0ede...573973` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-253883 | `0xfcfd84...3a8466` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [Satlayer_audit_report_2024-08-15.pdf](https://github.com/satlayer/deposit-contract-public/blob/main/audits/Satlayer_audit_report_2024-08-15.pdf) | unknown | Audit | 2024-08 | aging | Direct | contract_name | matched | 1 | 0 | 0 | 1 | high |
| [SatLayer Pool - Zellic Audit Report.pdf](https://github.com/satlayer/deposit-contract-public/blob/main/audits/SatLayer%20Pool%20-%20Zellic%20Audit%20Report.pdf) | Zellic | Audit | 2024-07 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 2 | high |
| [satlayer-sui-asymptotic-20250314.pdf](https://github.com/satlayer/satlayer-sui/blob/main/audits/satlayer-sui-asymptotic-20250314.pdf) | Asymptotic | Audit | n/a | unknown | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |
| [satlayer-core-phase-1-coinspect-20250404.pdf](https://github.com/satlayer/satlayer-bvs/blob/main/docs/public/audits/satlayer-core-phase-1-coinspect-20250404.pdf) | Coinspect | Audit | 2025-04 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 4 | high |
| [satlayer-core-phase-1-dedaub-20250325.pdf](https://github.com/satlayer/satlayer-bvs/blob/main/docs/public/audits/satlayer-core-phase-1-dedaub-20250325.pdf) | Dedaub | Audit | 2025-03 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 6 | high |
| [satlayer-sui-zenith-20250313.pdf](https://github.com/satlayer/satlayer-sui/blob/main/audits/satlayer-sui-zenith-20250313.pdf) | Zenith | Audit | 2025-02 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 2 | high |
| [satlayer-core-phase-2-dedaub-20250620.pdf](https://github.com/satlayer/satlayer-bvs/blob/main/docs/public/audits/satlayer-core-phase-2-dedaub-20250620.pdf) | Dedaub | Audit | 2025-06 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 6 | high |
| [satlayer-evm-dedaub-20250809.pdf](https://github.com/satlayer/satlayer-bvs/blob/main/docs/public/audits/satlayer-evm-dedaub-20250809.pdf) | Dedaub | Audit | 2025-08 | fresh | Direct | contract_name | no match | 0 | 0 | 0 | 14 | high |
| [satlayer-token-dedaub-20250616.pdf](https://github.com/satlayer/satlayer-bvs/blob/main/docs/public/audits/satlayer-token-dedaub-20250616.pdf) | Dedaub | Audit | 2025-06 | aging | Direct | n/a | matched | 1 | 1 | 0 | 0 | n/a |
| [SatLayer Pool - Zellic Audit Report (Patch).pdf](https://github.com/satlayer/deposit-contract-public/blob/main/audits/SatLayer%20Pool%20-%20Zellic%20Audit%20Report%20(Patch).pdf) | Zellic | Audit | 2025-01 | aging | Direct | contract_name | matched | 1 | 0 | 0 | 2 | high |
| [cube-by-satlayer-oak-security-20250410.pdf](https://github.com/satlayer/baby-lst/blob/main/audits/cube-by-satlayer-oak-security-20250410.pdf) | Oak Security | Audit | 2025-04 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 5 | high |
| [cube-by-satlayer-hashlock-20250408.pdf](https://github.com/satlayer/baby-lst/blob/main/audits/cube-by-satlayer-hashlock-20250408.pdf) | Hashlock | Audit | 2025-04 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 5 | high |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [3186] Satlayer_audit_report_2024-08-15.pdf — matched: Two contracts in scope: ReceiptToken.sol and SatlayerPool.sol. Audit date from 'Dates Aug152024'.
- [3187] SatLayer Pool - Zellic Audit Report.pdf — no match: Two contracts in scope: ReceiptToken.sol and SatlayerPool.sol. Audit date from cover page.
- [3188] satlayer-sui-asymptotic-20250314.pdf — no match: The report mentions 'Move smart contract code' and 'Sui blockchain environment' but does not list specific contract names, file paths, or a scope table. No contract names are identifiable.
- [3189] satlayer-core-phase-1-coinspect-20250404.pdf — no match: Scope section lists four crate directories as files in scope. Audit date inferred from 'April 2025' in header, using last day of month.
- [3190] satlayer-core-phase-1-dedaub-20250325.pdf — no match: Scope defined by file tree listing on page 2; contracts are Rust crates/modules, not Solidity contracts.
- [3191] satlayer-sui-zenith-20250313.pdf — no match: Scope lists 'core/sources/*' files; findings reference satlayer_pool.move and lbtc.move.
- [3192] satlayer-core-phase-2-dedaub-20250620.pdf — no match: Scope explicitly lists three crates: bvs-vault-router, bvs-vault-cw20-tokenized, bvs-vault-bank-tokenized. Additional contracts (bvs-vault-tokenized, bvs-vault-base, bvs-registry) are referenced in findings and are part of the audited codebase.
- [3193] satlayer-evm-dedaub-20250809.pdf — no match: All contracts listed in the scope section of the audit report.
- [3194] satlayer-token-dedaub-20250616.pdf — matched: No reason recorded
- [3195] SatLayer Pool - Zellic Audit Report (Patch).pdf — matched: Scope table lists ReceiptToken.sol and SatlayerPool.sol. SatlayerPoolV2 is the updated version of SatlayerPool and is the target of findings.
- [3196] cube-by-satlayer-oak-security-20250410.pdf — no match: All contracts in scope were listed in the 'Codebase Submitted for the Audit' section. Additional contract names extracted from findings.
- [3197] cube-by-satlayer-hashlock-20250408.pdf — no match: Audit scope section lists 5 components with file paths. Audit date is April 2025, mapped to last day of month.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| Satlayer_audit_report_2024-08-15.pdf | ReceiptToken | ambiguous — not counted | ReceiptToken (alternative) `0x422d6c...7f9802` — deployed 2025-08-27 14:33:11+03 — liveness: live (current_address_book_code)<br>ReceiptToken (alternative) `0x7b4dc4...85705c` — deployed 2025-01-26 11:46:51+03 — liveness: live (current_address_book_code)<br>ReceiptToken (alternative) `0x067e11...67152f` — deployed 2024-08-19 22:49:23+03 — liveness: live (current_address_book_code)<br>ReceiptToken (alternative) `0x17140b...ad24ff` — deployed 2024-08-19 22:49:23+03 — liveness: live (current_address_book_code)<br>ReceiptToken (alternative) `0x961395...3ab763` — deployed 2025-01-26 11:46:51+03 — liveness: live (current_address_book_code)<br>ReceiptToken (alternative) `0xe70419...48b126` — deployed 2025-01-26 11:46:51+03 — liveness: live (current_address_book_code)<br>ReceiptToken (alternative) `0x0c4dd6...3430c7` — deployed 2024-08-19 22:49:23+03 — liveness: live (current_address_book_code)<br>ReceiptToken (alternative) `0x17140b...ad24ff` — deployed 2024-09-09 08:17:28+03 — liveness: live (current_address_book_code)<br>ReceiptToken (alternative) `0xe2c675...a912dc` — deployed 2024-09-09 08:17:28+03 — liveness: live (current_address_book_code)<br>ReceiptToken (alternative) `0x2a5fc0...f415c9` — deployed 2025-01-26 11:46:51+03 — liveness: live (current_address_book_code)<br>ReceiptToken (alternative) `0xe2c675...a912dc` — deployed 2024-08-19 22:49:23+03 — liveness: live (current_address_book_code)<br>ReceiptToken (alternative) `0xd23557...27abc2` — deployed 2025-01-26 11:46:51+03 — liveness: live (current_address_book_code)<br>ReceiptToken (alternative) `0x9ed4b1...165add` — deployed 2025-08-27 14:33:11+03 — liveness: live (current_address_book_code)<br>ReceiptToken (alternative) `0x067e11...67152f` — deployed 2024-09-09 08:17:28+03 — liveness: live (current_address_book_code)<br>ReceiptToken (alternative) `0x69223b...82c566` — deployed 2024-08-22 18:49:47+03 — liveness: live (current_address_book_code)<br>ReceiptToken (alternative) `0xf7de2b...1e076e` — deployed 2024-08-21 03:17:47+03 — liveness: live (current_address_book_code)<br>ReceiptToken (alternative) `0xff21f4...cfdb9b` — deployed 2025-06-25 15:58:16+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| Satlayer_audit_report_2024-08-15.pdf | SatlayerPool | own contract | SatlayerPool (selected) `0x42a856...102819` — deployed 2024-08-19 22:49:23+03 — liveness: live (current_address_book_code)<br>SatlayerPool (alternative) `0xb57752...b0b9b3` — deployed 2025-08-27 14:33:11+03 — liveness: live (current_address_book_code)<br>SatlayerPool (alternative) `0x42a856...102819` — deployed 2024-09-09 08:17:28+03 — liveness: live (current_address_book_code)<br>SatlayerPool (alternative) `0x50198b...9bc99d` — deployed 2025-01-26 11:08:14+03 — liveness: live (current_address_book_code) | deployment-date disambiguation: 2024-08-19 was 4d from audit; next candidate 25d; normalized_full_corpus:project_anchor:matcher_anchor | yes |
| SatLayer Pool - Zellic Audit Report.pdf | ReceiptToken | ambiguous — not counted | ReceiptToken (alternative) `0x422d6c...7f9802` — deployed 2025-08-27 14:33:11+03 — liveness: live (current_address_book_code)<br>ReceiptToken (alternative) `0x7b4dc4...85705c` — deployed 2025-01-26 11:46:51+03 — liveness: live (current_address_book_code)<br>ReceiptToken (alternative) `0x067e11...67152f` — deployed 2024-08-19 22:49:23+03 — liveness: live (current_address_book_code)<br>ReceiptToken (alternative) `0x17140b...ad24ff` — deployed 2024-08-19 22:49:23+03 — liveness: live (current_address_book_code)<br>ReceiptToken (alternative) `0x961395...3ab763` — deployed 2025-01-26 11:46:51+03 — liveness: live (current_address_book_code)<br>ReceiptToken (alternative) `0xe70419...48b126` — deployed 2025-01-26 11:46:51+03 — liveness: live (current_address_book_code)<br>ReceiptToken (alternative) `0x0c4dd6...3430c7` — deployed 2024-08-19 22:49:23+03 — liveness: live (current_address_book_code)<br>ReceiptToken (alternative) `0x17140b...ad24ff` — deployed 2024-09-09 08:17:28+03 — liveness: live (current_address_book_code)<br>ReceiptToken (alternative) `0xe2c675...a912dc` — deployed 2024-09-09 08:17:28+03 — liveness: live (current_address_book_code)<br>ReceiptToken (alternative) `0x2a5fc0...f415c9` — deployed 2025-01-26 11:46:51+03 — liveness: live (current_address_book_code)<br>ReceiptToken (alternative) `0xe2c675...a912dc` — deployed 2024-08-19 22:49:23+03 — liveness: live (current_address_book_code)<br>ReceiptToken (alternative) `0xd23557...27abc2` — deployed 2025-01-26 11:46:51+03 — liveness: live (current_address_book_code)<br>ReceiptToken (alternative) `0x9ed4b1...165add` — deployed 2025-08-27 14:33:11+03 — liveness: live (current_address_book_code)<br>ReceiptToken (alternative) `0x067e11...67152f` — deployed 2024-09-09 08:17:28+03 — liveness: live (current_address_book_code)<br>ReceiptToken (alternative) `0x69223b...82c566` — deployed 2024-08-22 18:49:47+03 — liveness: live (current_address_book_code)<br>ReceiptToken (alternative) `0xf7de2b...1e076e` — deployed 2024-08-21 03:17:47+03 — liveness: live (current_address_book_code)<br>ReceiptToken (alternative) `0xff21f4...cfdb9b` — deployed 2025-06-25 15:58:16+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| SatLayer Pool - Zellic Audit Report.pdf | SatlayerPool | ambiguous — not counted | SatlayerPool (alternative) `0x42a856...102819` — deployed 2024-08-19 22:49:23+03 — liveness: live (current_address_book_code)<br>SatlayerPool (alternative) `0xb57752...b0b9b3` — deployed 2025-08-27 14:33:11+03 — liveness: live (current_address_book_code)<br>SatlayerPool (alternative) `0x42a856...102819` — deployed 2024-09-09 08:17:28+03 — liveness: live (current_address_book_code)<br>SatlayerPool (alternative) `0x50198b...9bc99d` — deployed 2025-01-26 11:08:14+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| satlayer-core-phase-1-coinspect-20250404.pdf | bvs-vault-router | unmatched — not counted | — | listed in scope | no |
| satlayer-core-phase-1-coinspect-20250404.pdf | bvs-vault-base | unmatched — not counted | — | listed in scope | no |
| satlayer-core-phase-1-coinspect-20250404.pdf | bvs-vault-bank | unmatched — not counted | — | listed in scope | no |
| satlayer-core-phase-1-coinspect-20250404.pdf | bvs-vault-cw20 | unmatched — not counted | — | listed in scope | no |
| satlayer-core-phase-1-dedaub-20250325.pdf | bvs-library | unmatched — not counted | — | listed in scope file tree | no |
| satlayer-core-phase-1-dedaub-20250325.pdf | bvs-pauser | unmatched — not counted | — | listed in scope file tree | no |
| satlayer-core-phase-1-dedaub-20250325.pdf | bvs-vault-bank | unmatched — not counted | — | listed in scope file tree | no |
| satlayer-core-phase-1-dedaub-20250325.pdf | bvs-vault-base | unmatched — not counted | — | listed in scope file tree | no |
| satlayer-core-phase-1-dedaub-20250325.pdf | bvs-vault-cw20 | unmatched — not counted | — | listed in scope file tree | no |
| satlayer-core-phase-1-dedaub-20250325.pdf | bvs-vault-router | unmatched — not counted | — | listed in scope file tree | no |
| satlayer-sui-zenith-20250313.pdf | satlayer_pool | unmatched — not counted | — | listed in scope and findings | no |
| satlayer-sui-zenith-20250313.pdf | lbtc | unmatched — not counted | — | listed in findings | no |
| satlayer-core-phase-2-dedaub-20250620.pdf | bvs-vault-router | unmatched — not counted | — | listed in scope | no |
| satlayer-core-phase-2-dedaub-20250620.pdf | bvs-vault-cw20-tokenized | unmatched — not counted | — | listed in scope | no |
| satlayer-core-phase-2-dedaub-20250620.pdf | bvs-vault-bank-tokenized | unmatched — not counted | — | listed in scope | no |
| satlayer-core-phase-2-dedaub-20250620.pdf | bvs-vault-tokenized | unmatched — not counted | — | referenced in H1 | no |
| satlayer-core-phase-2-dedaub-20250620.pdf | bvs-vault-base | unmatched — not counted | — | referenced in H1 | no |
| satlayer-core-phase-2-dedaub-20250620.pdf | bvs-registry | unmatched — not counted | — | referenced in H1 and P4 | no |
| satlayer-evm-dedaub-20250809.pdf | ISLAYRegistryV2 | unmatched — not counted | — | listed in scope | no |
| satlayer-evm-dedaub-20250809.pdf | ISLAYRewardsV2 | unmatched — not counted | — | listed in scope | no |
| satlayer-evm-dedaub-20250809.pdf | ISLAYRouterSlashingV2 | unmatched — not counted | — | listed in scope | no |
| satlayer-evm-dedaub-20250809.pdf | ISLAYRouterV2 | unmatched — not counted | — | listed in scope | no |
| satlayer-evm-dedaub-20250809.pdf | ISLAYVaultFactoryV2 | unmatched — not counted | — | listed in scope | no |
| satlayer-evm-dedaub-20250809.pdf | ISLAYVaultV2 | unmatched — not counted | — | listed in scope | no |
| satlayer-evm-dedaub-20250809.pdf | MerkleProof | unmatched — not counted | — | listed in scope | no |
| satlayer-evm-dedaub-20250809.pdf | RelationshipV2 | unmatched — not counted | — | listed in scope | no |
| satlayer-evm-dedaub-20250809.pdf | SLAYBase | unmatched — not counted | — | listed in scope | no |
| satlayer-evm-dedaub-20250809.pdf | SLAYRegistryV2 | unmatched — not counted | — | listed in scope | no |
| satlayer-evm-dedaub-20250809.pdf | SLAYRewardsV2 | unmatched — not counted | — | listed in scope | no |
| satlayer-evm-dedaub-20250809.pdf | SLAYRouterV2 | unmatched — not counted | — | listed in scope | no |
| satlayer-evm-dedaub-20250809.pdf | SLAYVaultFactoryV2 | unmatched — not counted | — | listed in scope | no |
| satlayer-evm-dedaub-20250809.pdf | SLAYVaultV2 | unmatched — not counted | — | listed in scope | no |
| satlayer-token-dedaub-20250616.pdf | SLAYToken | own proxy deployment | ERC1967Proxy (proxy) (selected) `0x51477a...ee5147` — deployed 2025-03-19 13:41:59+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| SatLayer Pool - Zellic Audit Report (Patch).pdf | ReceiptToken | ambiguous — not counted | ReceiptToken (alternative) `0x422d6c...7f9802` — deployed 2025-08-27 14:33:11+03 — liveness: live (current_address_book_code)<br>ReceiptToken (alternative) `0x7b4dc4...85705c` — deployed 2025-01-26 11:46:51+03 — liveness: live (current_address_book_code)<br>ReceiptToken (alternative) `0x067e11...67152f` — deployed 2024-08-19 22:49:23+03 — liveness: live (current_address_book_code)<br>ReceiptToken (alternative) `0x17140b...ad24ff` — deployed 2024-08-19 22:49:23+03 — liveness: live (current_address_book_code)<br>ReceiptToken (alternative) `0x961395...3ab763` — deployed 2025-01-26 11:46:51+03 — liveness: live (current_address_book_code)<br>ReceiptToken (alternative) `0xe70419...48b126` — deployed 2025-01-26 11:46:51+03 — liveness: live (current_address_book_code)<br>ReceiptToken (alternative) `0x0c4dd6...3430c7` — deployed 2024-08-19 22:49:23+03 — liveness: live (current_address_book_code)<br>ReceiptToken (alternative) `0x17140b...ad24ff` — deployed 2024-09-09 08:17:28+03 — liveness: live (current_address_book_code)<br>ReceiptToken (alternative) `0xe2c675...a912dc` — deployed 2024-09-09 08:17:28+03 — liveness: live (current_address_book_code)<br>ReceiptToken (alternative) `0x2a5fc0...f415c9` — deployed 2025-01-26 11:46:51+03 — liveness: live (current_address_book_code)<br>ReceiptToken (alternative) `0xe2c675...a912dc` — deployed 2024-08-19 22:49:23+03 — liveness: live (current_address_book_code)<br>ReceiptToken (alternative) `0xd23557...27abc2` — deployed 2025-01-26 11:46:51+03 — liveness: live (current_address_book_code)<br>ReceiptToken (alternative) `0x9ed4b1...165add` — deployed 2025-08-27 14:33:11+03 — liveness: live (current_address_book_code)<br>ReceiptToken (alternative) `0x067e11...67152f` — deployed 2024-09-09 08:17:28+03 — liveness: live (current_address_book_code)<br>ReceiptToken (alternative) `0x69223b...82c566` — deployed 2024-08-22 18:49:47+03 — liveness: live (current_address_book_code)<br>ReceiptToken (alternative) `0xf7de2b...1e076e` — deployed 2024-08-21 03:17:47+03 — liveness: live (current_address_book_code)<br>ReceiptToken (alternative) `0xff21f4...cfdb9b` — deployed 2025-06-25 15:58:16+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| SatLayer Pool - Zellic Audit Report (Patch).pdf | SatlayerPool | own contract | SatlayerPool (alternative) `0x42a856...102819` — deployed 2024-08-19 22:49:23+03 — liveness: live (current_address_book_code)<br>SatlayerPool (alternative) `0xb57752...b0b9b3` — deployed 2025-08-27 14:33:11+03 — liveness: live (current_address_book_code)<br>SatlayerPool (alternative) `0x42a856...102819` — deployed 2024-09-09 08:17:28+03 — liveness: live (current_address_book_code)<br>SatlayerPool (selected) `0x50198b...9bc99d` — deployed 2025-01-26 11:08:14+03 — liveness: live (current_address_book_code) | deployment-date disambiguation: 2025-01-26 was 10d from audit; next candidate 129d; normalized_full_corpus:project_anchor:matcher_anchor | yes |
| SatLayer Pool - Zellic Audit Report (Patch).pdf | SatlayerPoolV2 | unmatched — not counted | — | mentioned as updated version of SatlayerPool in scope | no |
| cube-by-satlayer-oak-security-20250410.pdf | lst_staking_hub | unmatched — not counted | — | listed in scope and detailed findings | no |
| cube-by-satlayer-oak-security-20250410.pdf | lst_token | unmatched — not counted | — | mentioned in findings | no |
| cube-by-satlayer-oak-security-20250410.pdf | lst_validators_registry | unmatched — not counted | — | listed in scope and detailed findings | no |
| cube-by-satlayer-oak-security-20250410.pdf | lst_reward_dispatcher | unmatched — not counted | — | mentioned in findings | no |
| cube-by-satlayer-oak-security-20250410.pdf | lst_common | unmatched — not counted | — | mentioned in findings | no |
| cube-by-satlayer-hashlock-20250408.pdf | lst_reward_dispatcher | unmatched — not counted | — | listed in scope as Component 1 | no |
| cube-by-satlayer-hashlock-20250408.pdf | lst_staking_hub | unmatched — not counted | — | listed in scope as Component 2 | no |
| cube-by-satlayer-hashlock-20250408.pdf | lst_token | unmatched — not counted | — | listed in scope as Component 3 | no |
| cube-by-satlayer-hashlock-20250408.pdf | lst_validators_registry | unmatched — not counted | — | listed in scope as Component 4 | no |
| cube-by-satlayer-hashlock-20250408.pdf | lst_common | unmatched — not counted | — | listed in scope as Component 5 | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| bsc | `0x7130d2...3ead9c` | BEP20Token | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xc96de2...d6c364` | FBTC | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0xcbb7c0...ed33bf` | FiatTokenV2_1 | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| berachain | `0xecac9c...5c11c1` | LBTC | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xf469fb...0a012e` | PumpToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x067e11...67152f` | ReceiptToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x0c4dd6...3430c7` | ReceiptToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x17140b...ad24ff` | ReceiptToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x69223b...82c566` | ReceiptToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xe2c675...a912dc` | ReceiptToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xf7de2b...1e076e` | ReceiptToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0x067e11...67152f` | ReceiptToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0x17140b...ad24ff` | ReceiptToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0xe2c675...a912dc` | ReceiptToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0x422d6c...7f9802` | ReceiptToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0x9ed4b1...165add` | ReceiptToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| berachain | `0x2a5fc0...f415c9` | ReceiptToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| berachain | `0x7b4dc4...85705c` | ReceiptToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| berachain | `0x961395...3ab763` | ReceiptToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| berachain | `0xd23557...27abc2` | ReceiptToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| berachain | `0xe70419...48b126` | ReceiptToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| berachain | `0xff21f4...cfdb9b` | ReceiptToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0x42a856...102819` | SatlayerPool | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0xb57752...b0b9b3` | SatlayerPool | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xd9d920...159def` | SolvBTCYieldTokenV3_1 | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0x1346b6...d446a5` | SolvBTCYieldTokenV3_1 | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| berachain | `0x0f6f33...728f3b` | SolvBTCYieldTokenV3_1 | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| berachain | `0x93f4d0...d21116` | Token | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x004e9c...350568` | uniBTC | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| berachain | `0xc3827a...db6e90` | uniBTC | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x2260fa...c2c599` | WBTC | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 86 |
| upstream | 0 |
| standard_library | 1 |
| needs_review | 582 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 9
- Inherited remapped matches: 0
- Address-book scope dispositions: 3 own (1 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 4 ambiguous, 43 unmatched
- Matched-own operational status: 3 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=10, low=1
- Match method counts: temporal_name=2, unique_name=1

Zero-match audit list:

- [3187] SatLayer Pool - Zellic Audit Report.pdf
- [3188] satlayer-sui-asymptotic-20250314.pdf
- [3189] satlayer-core-phase-1-coinspect-20250404.pdf
- [3190] satlayer-core-phase-1-dedaub-20250325.pdf
- [3191] satlayer-sui-zenith-20250313.pdf
- [3192] satlayer-core-phase-2-dedaub-20250620.pdf
- [3193] satlayer-evm-dedaub-20250809.pdf
- [3196] cube-by-satlayer-oak-security-20250410.pdf
- [3197] cube-by-satlayer-hashlock-20250408.pdf

Fork inheritance lineage and inherited audits are included when available.
