# Agentic Audit Brief: StakeStone

## Export Authority

- Production state: **published scope**
- Raw selected rows: 10 across 6 audit(s)
- Eligible audit results: 27 (6 matched; 21 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e9e09d06b414f9cd852c36a58d42ce16279465f2d9791cd2a8178f3f54b89ecd`

## Project Overview

- Project: StakeStone (`stakestone`)
- Website: [https://stakestone.io](https://stakestone.io)
- Lifecycle: unknown
- Generated: 2026-07-15T18:30:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: base, berachain, bsc, ethereum, linea, mantle, merlin, scroll
- Contract surface: 206 unique implementations (276 raw deployments)
- Coverage basis: 4/13 confirmed own live verified implementations (30.8%); conservative 30.8% with 0 needs-review implementation(s)
- DeFi Llama TVL: $17,184,100.03
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for StakeStone. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 23 contract row(s) across base, berachain, bsc, ethereum, linea, mantle, merlin, scroll. Structural roles: 15 core, 5 supporting, 3 unclassified. No upgradeable pattern was identified in these rows.

## Logic Topography

- Exact-run contract rows: 23
- Structural roles: core (15), supporting (5), unclassified (3)
- Contract kinds: contract (23)
- Detected standards: erc165 (15), accesscontrol (10), erc20 (9), ownable (8)
- Frameworks: openzeppelin (19), layerzero (5), uniswap-v3 (5)
- Upgradeable-pattern rows: 0

## Fork Analysis

0 of 19 contracts are derived from known codebases. 19 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0x2fde62...c1264c`, chain 5000)
- UnnamedContract (`0xe630ab...e85525`, chain 534352)
- Proposal (`0x3aa067...9aff9b`, chain 1)
- Stone (`0x712298...45bd3c`, chain 1)
- StoneBTC (`0x094c0e...b07624`, chain 1)
- StoneBTC (`0x154695...33dd7d`, chain 56)
- StoneBTCLayerZeroAdapter (`0x3f690f...8ca57f`, chain 1)
- StoneBTCLayerZeroAdapter (`0x712298...45bd3c`, chain 56)
- StoneBTCLayerZeroAdapter (`0x4f9f13...918501`, chain 534352)
- StoneBTCVault (`0x7dbac0...09108d`, chain 1)
- StoneBTCVault (`0x3aa067...9aff9b`, chain 56)
- StoneCross (`0x801375...747bf7`, chain 56)
- StoneCross (`0xd2012f...c728c6`, chain 8453)
- StoneCross (`0x93f4d0...d21116`, chain 59144)
- StoneVault (`0xa62f9c...b90572`, chain 1)
- StrategyController (`0x396abf...a017b2`, chain 1)
- Token (`0x8b4e28...1d7c0b`, chain 56)
- Token (`0xec901d...0652c3`, chain 80094)
- UnnamedContract (`0xb5d8b1...24e2cf`, chain 4200)

## Contract Surface Quality

- Logic-topography rows: 23; live-surface rows included: 23 (18 live, 5 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 21/29 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 4/13 (30.8%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 16 own, 13 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 177 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 0
- Confirmed-live implementations: 21 of 206 unique; 185 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 4/81
- Verified + Unaudited implementations: 77
- Verified by bytecode match: 0
- Unverified implementations: 125
- Unique implementations: 206
- Raw deployments: 276
- Audits discovered: 23 (23 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 6
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2025-10 (fresh)
- Audit staleness (calendar age): 1 fresh, 7 aging, 14 stale, 1 unknown
- Coverage code basis (deployed vs audited code): 2 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 2 match-unverified
- Tier 1 coverage: 30.8% (SlowMist)

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| SlowMist | Tier 1 | 4 | 4.9% | 2025-04 |
| Secure3 | Tier 2 | 1 | 1.2% | 2025-10 |
| Veridise | Tier 2 | 1 | 1.2% | 2023-12 |

## Contract Surface

### ✅ Verified + Audited (4)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| Stone | unknown | project_anchor | own_supporting | 0 | ethereum | unit-257025 | `0x712298...45bd3c` | ✅ Audited |
| StoneBTC | unknown | project_anchor | own_supporting | 0 | bsc | unit-257037 | `0x154695...33dd7d` | ✅ Audited |
| StoneBTCVault | core_logic | project_anchor | own_supporting | 0 | bsc | unit-257038 | `0x3aa067...9aff9b` | ✅ Audited |
| Token | token | project_anchor | own_supporting | 0 | berachain | unit-257043 | `0xec901d...0652c3` | ✅ Audited |

### ⚠️ Verified + Unaudited (77)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| AccessRegistry | registry | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x728da6...d75c19`; bsc `0x8449e6...6b223d` | ⚠️ Unaudited |
| AssetRouter | adapter | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0xb82335...48bd80`; ethereum `0xcd4d55...55a928`; ethereum `0xfc38d4...36972f` | ⚠️ Unaudited |
| AssetsRouter | adapter | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x219e15...eadfb6` | ⚠️ Unaudited |
| AssetsVault | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-257030 | `0x948571...7e9ad9` | ⚠️ Unaudited |
| AssetVault | core_logic | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-257018 | `0x1fc603...628226` | ⚠️ Unaudited |
| AsyncDistributor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xed15e5...8656cb` | ⚠️ Unaudited |
| AsyncVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x693a06...2e58da` | ⚠️ Unaudited |
| BeraStoneRateAdapter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x48d74b...b8a664` | ⚠️ Unaudited |
| BevmDepositBridge | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x53dde9...df6c7f` | ⚠️ Unaudited |
| BridgeV2 | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0xc1fe8a...2059c8`; ethereum `0xc78524...41a235` | ⚠️ Unaudited |
| DepositBridge | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x1b70ff...1df54e`; ethereum `0xdaf169...98cf07`; ethereum `0xfb4cb3...909a03` | ⚠️ Unaudited |
| DepositHelper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 4 deployments: ethereum `0x1565db...531a76`; ethereum `0x27ad26...716440`; ethereum `0xc40329...d92671`; ethereum `0xea96d9...38db19` | ⚠️ Unaudited |
| DepositVault | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x749342...8ed2cc` | ⚠️ Unaudited |
| DepositWrapper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2aca0c...343357` | ⚠️ Unaudited |
| EigenLSTRestaking | token | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x87d004...256982` | ⚠️ Unaudited |
| ERC4626VaultWrapper | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 6 deployments: ethereum `0x3f9873...a10fc7`; ethereum `0x89cebc...cee901`; ethereum `0x8b80ca...17fed2`; ethereum `0x9a7ca5...080ed2`; ethereum `0xc337ba...901612`; ethereum `0xeac3f8...d34ce7` | ⚠️ Unaudited |
| Escrow | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2fa6f0...6d9d2d` | ⚠️ Unaudited |
| FBTCPartnerVault | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x512258...8f198c` | ⚠️ Unaudited |
| GenesisExpedition | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 6 deployments: bsc `0x1f3994...8b1bf4`; bsc `0x2a6dc7...165c3c`; bsc `0x9f269f...8d69b4`; bsc `0xdcb29a...aa5bbb`; bsc `0xe33da1...20f1db`; bsc `0xe9f292...b7d2ea` | ⚠️ Unaudited |
| GMPBasculeV1 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc3ecfe...9338ed` | ⚠️ Unaudited |
| LBTC | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa1bc65...a3845a` | ⚠️ Unaudited |
| LBTCOFTAdapter | adapter | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 6 deployments: ethereum `0x1290a6...8f44ad`; ethereum `0x37e92d...7510c0`; ethereum `0x3a7647...d95299`; ethereum `0x6bc15d...9d077f`; ethereum `0xa7c4d9...c0abf7`; ethereum `0xacb11b...126c31` | ⚠️ Unaudited |
| Locker | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa0fde8...0db2fb` | ⚠️ Unaudited |
| LombardTimeLock | governance | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x055e84...e77e59` | ⚠️ Unaudited |
| LombardTokenPoolV2 | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x61003b...f56095`; ethereum `0x88e186...017bc7`; ethereum `0xba59cf...9842d0` | ⚠️ Unaudited |
| Mailbox | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x052359...2f0080` | ⚠️ Unaudited |
| MellowDepositWstETHStrategy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe9b7cc...34d574` | ⚠️ Unaudited |
| MiningPool | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-257029 | `0x8f5420...de709b` | ⚠️ Unaudited |
| MiningPool | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcf9f37...c1cd0d` | ⚠️ Unaudited |
| Minter | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-257032 | `0xec306e...133b17` | ⚠️ Unaudited |
| NativeLBTC | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x6b89d7...df635d`; ethereum `0x6be197...3af7b3` | ⚠️ Unaudited |
| NativeLendingETHStrategy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2d7086...daa376` | ⚠️ Unaudited |
| NoDelayTimelockController | governance | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x00e723...6a3d82`; ethereum `0xa6b4bf...c71c7c` | ⚠️ Unaudited |
| OneDayDelayTimelockController | governance | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5eddcf...86de9a` | ⚠️ Unaudited |
| OracleConfigurator | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-257024 | `0x6cd42e...495fb1` | ⚠️ Unaudited |
| OracleConfigurator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8636dd...cfef6c` | ⚠️ Unaudited |
| OracleRegistry | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa77cf3...fd9196` | ⚠️ Unaudited |
| ParamRegistry | registry | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1fa8e2...125e23` | ⚠️ Unaudited |
| Proposal | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-257021 | `0x3aa067...9aff9b` | ⚠️ Unaudited |
| ReferralRegistry | registry | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 6 deployments: bsc `0x1a24e3...92bd4e`; bsc `0xa3ac2f...fab007`; bsc `0xa52248...9f448d`; bsc `0xe38f0d...049af6`; bsc `0xf00142...e5cba9`; bsc `0xfa10ce...beda58` | ⚠️ Unaudited |
| RewardDistributor | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 6 deployments: bsc `0x46319f...f59fd0`; bsc `0x5502fd...b3c1d9`; bsc `0x84c58b...d1fc5f`; bsc `0xc2f513...1d35cb`; berachain `0xd4dfb0...f97782`; berachain `0xf46a21...ffbbe5` | ⚠️ Unaudited |
| SBTCBeraVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 4 deployments: ethereum `0x437c88...6be43f`; ethereum `0x5502fd...b3c1d9`; ethereum `0x5ae986...5bab2f`; ethereum `0xf401cc...4deec7` | ⚠️ Unaudited |
| StakeAndBake | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x9088d8...be497a`; ethereum `0xa25213...673675`; ethereum `0xb492ac...5df7a5` | ⚠️ Unaudited |
| StakeAndBakeNativeToken | token | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0bca0f...7eae88` | ⚠️ Unaudited |
| StakedLBTC | token | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x21f352...083b02`; ethereum `0x8c21ab...760a0a` | ⚠️ Unaudited |
| StakedLBTCOracle | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x5e28ef...1fdc1c`; ethereum `0x6db63b...5c9cd6` | ⚠️ Unaudited |
| StakeStoneRewardDistributor | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfd9779...b866cf` | ⚠️ Unaudited |
| STO | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x1d8871...b4534d`; ethereum `0x9ffc17...0af371` | ⚠️ Unaudited |
| StoneBeraVault | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8f88ae...b577f0` | ⚠️ Unaudited |
| StoneBTC | unknown | project_anchor | own_supporting | 0 | ethereum | unit-257016 | `0x094c0e...b07624` | ⚠️ Unaudited |
| StoneBTC | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 5 deployments: ethereum `0x6c344c...9f7822`; ethereum `0xdc939b...e03cd0`; bsc `0x342198...6cb20b`; bsc `0xa0a291...202c7f`; bsc `0xd081be...e9c08d` | ⚠️ Unaudited |
| StoneBTCLayerZeroAdapter | adapter | project_anchor | own_supporting | 0 | ethereum | unit-257022 | `0x3f690f...8ca57f` | ⚠️ Unaudited |
| StoneBTCLayerZeroAdapter | adapter | project_anchor | own_supporting | 0 | bsc | unit-257039 | `0x712298...45bd3c` | ⚠️ Unaudited |
| StoneBTCLayerZeroAdapter | adapter | project_anchor | own_supporting | 0 | scroll | unit-257035 | `0x4f9f13...918501` | ⚠️ Unaudited |
| StoneBTCOFT | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9bcf92...b9dc66` | ⚠️ Unaudited |
| StoneBTCVault | core_logic | project_anchor | own_supporting | 0 | ethereum | unit-257026 | `0x7dbac0...09108d` | ⚠️ Unaudited |
| StoneCarnival | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4d831e...2e3dd0` | ⚠️ Unaudited |
| StoneCarnivalETH | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x42af99...15754b`; ethereum `0xb3fc73...b54541` | ⚠️ Unaudited |
| StoneCross | unknown | project_anchor | own_supporting | 0 | bsc | unit-257040 | `0x801375...747bf7` | ⚠️ Unaudited |
| StoneCross | unknown | project_anchor | own_supporting | 0 | base | unit-257044 | `0xd2012f...c728c6` | ⚠️ Unaudited |
| StoneCross | unknown | project_anchor | own_supporting | 0 | linea | unit-257042 | `0x93f4d0...d21116` | ⚠️ Unaudited |
| StoneOFT | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0a265b...56a976` | ⚠️ Unaudited |
| StoneOFT | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-257027 | `0x823513...388d67` | ⚠️ Unaudited |
| StoneOracle | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2c1d3d...f531e5` | ⚠️ Unaudited |
| STONEUSDStaking | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 4 deployments: bsc `0x18eb3e...525fe6`; bsc `0x4dff4a...9426d2`; bsc `0x5cd3cc...fe632f`; bsc `0x8dd2aa...125968` | ⚠️ Unaudited |
| StoneVault | core_logic | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-257031 | `0xa62f9c...b90572` | ⚠️ Unaudited |
| StoryPreDepositVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0xb13819...75654c`; ethereum `0xb31089...257ddb` | ⚠️ Unaudited |
| STOStaking | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 4 deployments: bsc `0x3a6dae...7e28c9`; bsc `0x627a17...580b06`; bsc `0xaee118...fa225d`; bsc `0xc716b7...a52f21` | ⚠️ Unaudited |
| StrategyController | core_logic | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-257020 | `0x396abf...a017b2` | ⚠️ Unaudited |
| TellerWithMultiAssetSupportDepositor | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x51d9c2...bf1a5f`; ethereum `0xb90a47...26c686` | ⚠️ Unaudited |
| ThreeDaysDelayTimelockController | governance | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbc29f7...031ae6` | ⚠️ Unaudited |
| Token | token | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-257023 | `0x6a6e3a...38721e` | ⚠️ Unaudited |
| Token | token | project_anchor | own_supporting | 0 | bsc | unit-257041 | `0x8b4e28...1d7c0b` | ⚠️ Unaudited |
| Token | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | 12 deployments: ethereum `0x0de028...731ee4`; ethereum `0x17091b...08d168`; ethereum `0x2ea783...626b74`; ethereum `0x97ad75...07a706`; ethereum `0xb28ecf...91b1a7`; ethereum `0xc620cb...ca75fa`; ethereum `0xd7f311...e9ea38`; ethereum `0xfd47eb...8bda70`; bsc `0xdaf169...98cf07`; berachain `0x095957...766d71`; berachain `0x93f4d0...d21116`; berachain `0xd0ebd9...c07e10` | ⚠️ Unaudited |
| VeSTO | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf0abc5...6828c2` | ⚠️ Unaudited |
| WETHOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb09b4e...cb6628` | ⚠️ Unaudited |
| WithdrawController | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x081d90...db0b29` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (125)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x009a0d...4136a9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x02f790...90743b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0d6c5d...4b490a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0e8061...1b10d9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0fac52...9ce43a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0fee4d...fb1ec1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x10fb71...7e0344` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x11b4fd...e781c5` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-257017 | `0x129e49...b82cf9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x154695...33dd7d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x22ba12...cdea35` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x23d7c4...b3d57e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2744f1...235fd2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x280cc0...c0457e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2b1d94...47ec8d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2d209b...93b727` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-257019 | `0x2d83f5...4c32f3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2f453d...2cd192` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3035ad...e06fd1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x318cd2...8e7b8d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x342198...6cb20b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x363d20...234202` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x38d98f...4db5d6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4dc916...f7986f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4f9f9c...260fa7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x502f17...0da29e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x561f09...91dc0e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x58fb2f...4e9b41` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x595d20...2c1546` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x60de74...7e156b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6109b5...cb52fc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x612ab7...638da1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x66e53e...09d3c4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6a2adb...dde52b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6d23c3...7e2b4a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7061bb...4e51ec` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7356c5...d594de` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7519af...9e6151` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x754938...a37f84` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x78787f...a7eebe` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x78cb7b...ee3947` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x78ed45...62828b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7bf51c...36af9d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7cf9e2...91d75f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7f0dcb...3c3f0b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7f60e6...fc8ab7` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-257028 | `0x8236a8...634494` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x82bd64...e4fd9a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x83c9c3...dc779e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x856edf...1ec3d1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8613d5...4ba3e4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x88bcc9...958354` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8b4e28...1d7c0b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8c17d2...c16115` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8f4998...622180` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x91063e...d00d24` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x916f46...d8a3ba` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9221fb...b236f9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x94cabf...c44341` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x958e01...f7dd8d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x99d45e...655ed1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9e5059...d7791b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa0a291...202c7f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa11e34...5f72bc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa23cb5...ed334f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa56248...148cc7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa66723...301836` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xacb52b...727d2f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xae0d7c...2ec429` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xaff83f...c52c46` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb0824e...d74131` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb30510...f8d24a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb34706...bad586` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb6f77e...df233d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb8ea9f...9947cf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb9d5d6...21e9fe` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbb5895...9d9450` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbbe90e...2b88e2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbc84ff...cb38ef` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc697a6...9872a6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc6f830...84c853` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc8b62e...7db057` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcb8b64...16e90c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd081be...e9c08d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd0a81d...a6c61d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd0ebd9...c07e10` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd4dfb0...f97782` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd5bb23...c4574f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd682c2...2206e0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd80060...5ae48b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdcd0c0...d3608a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdf7e63...4b2cf7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe578ac...81d9fa` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe84a28...e0ad68` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe942cd...deb93e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe94bf3...e007c8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf10044...d9980b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf16709...f78e90` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf4c1c7...eb5c48` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf60b39...3eb460` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf7d904...76199a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf97c47...85290b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfaac8b...d05545` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfb153d...f9164f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfc5ed9...d69b3a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfe6577...a60465` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x1b70ff...1df54e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x2bc323...097cc3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x4dc916...f7986f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x6109b5...cb52fc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x7f60e6...fc8ab7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x8f88ae...b577f0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x97ad75...07a706` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xa3e904...bc47c5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xc6f830...84c853` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xfb4cb3...909a03` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | merlin | unit-257033 | `0xb5d8b1...24e2cf` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | mantle | unit-257034 | `0x2fde62...c1264c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x801375...747bf7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x2aca0c...343357` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x97ad75...07a706` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xa62f9c...b90572` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xdaf169...98cf07` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x801375...747bf7` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | scroll | unit-257036 | `0xe630ab...e85525` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [Stone Bera Vault - SlowMist Audit Report.pdf](https://github.com/slowmist/Knowledge-Base/blob/master/open-report-V2/smart-contract/Stone%20Bera%20Vault%20-%20SlowMist%20Audit%20Report.pdf) | SlowMist | Audit | 2024-12 | aging | Direct | contract_name | matched | 1 | 0 | 0 | 6 | high |
| [STONE BTC - SlowMist Audit Report_en-us.pdf](https://github.com/slowmist/Knowledge-Base/blob/master/open-report-V2/smart-contract/STONE%20BTC%20-%20SlowMist%20Audit%20Report_en-us.pdf) | SlowMist | Audit | 2024-09 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 4 | high |
| [STONE BTC Vault - SlowMist Audit Report.pdf](https://github.com/slowmist/Knowledge-Base/blob/master/open-report-V2/smart-contract/STONE%20BTC%20Vault%20-%20SlowMist%20Audit%20Report.pdf) | SlowMist | Audit | 2024-10 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 8 | high |
| [index.html (also discovered via alternate URL)](https://certificate.quantstamp.com/full/stake-stone-tokenized-vault/aa7fd663-908f-49c5-bb62-eac2463f57f1/index.html) | Quantstamp | Audit | n/a | unknown | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |
| [**Link:** <> (also discovered via alternate URL)](https://github.com/slowmist/Knowledge-Base/blob/master/open-report-V2/smart-contract/SlowMist%20Audit%20Report%20-%20StakeStone%20-%20Restaking_en-us.pdf) | SlowMist | Audit | 2024-03 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 5 | high |
| [**Link:** <>\ (also discovered via alternate URL)](https://github.com/slowmist/Knowledge-Base/blob/master/open-report-V2/smart-contract/SlowMist_Audit_Report_StakeStone_NativeLendingETHStrategy%26Symbi_en-us.pdf) | SlowMist | Audit | 2024-06 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 2 | high |
| [<>](https://github.com/slowmist/Knowledge-Base/blob/master/open-report-V2/smart-contract/SlowMist_Audit_Report_StakeStone_SymbioticDepositWBETHStrategy_en-us.pdf) | SlowMist | Audit | 2024-07 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 1 | high |
| [<>](https://github.com/slowmist/Knowledge-Base/blob/master/open-report-V2/smart-contract/SBTC%20Bera%20Vault%20-%20SlowMist%20Audit%20Report.pdf) | SlowMist | Audit | 2024-12 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 1 | high |
| [Rendered PDF capture](https://3335806686-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FCQc6hVwS1NTaUDN4XLdQ%2Fuploads%2F4QRxWHR92kPuv1t3HJxn%2FStakeStone%20Tokenized%20Vault%20-%20Report.pdf) | Secure3 | Audit | 2025-10 | fresh | Direct | contract_name | no match | 0 | 0 | 0 | 21 | high |
| [Rendered PDF capture](https://3335806686-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FCQc6hVwS1NTaUDN4XLdQ%2Fuploads%2FrOtzZvGDMtPpY3slhFyh%2FStakeStone_Final_Report.pdf) | Secure3 | Audit | 2024-07 | stale | Direct | contract_name | matched | 1 | 0 | 0 | 15 | high |
| [Rendered PDF capture](https://3335806686-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FCQc6hVwS1NTaUDN4XLdQ%2Fuploads%2F1jDHW15wSaMaAYlhsgJd%2FSlowMist%20Audit%20Report%20-%20StakeStone.pdf) | SlowMist | Audit | 2023-12 | stale | Direct | address | matched | 3 | 0 | 0 | 10 | high |
| [Rendered PDF capture](https://3335806686-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FCQc6hVwS1NTaUDN4XLdQ%2Fuploads%2FCYIX4PcaObV8cl40ejdE%2FSlowMist%20Audit%20Report%20-%20EigenLSTRestaking.pdf) | SlowMist | Audit | 2024-05 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 1 | high |
| [SlowMist Audit Report - StakeStone_en-us.pdf](https://github.com/slowmist/Knowledge-Base/blob/master/open-report-V2/smart-contract/SlowMist%20Audit%20Report%20-%20StakeStone_en-us.pdf) | SlowMist | Audit | 2023-12 | stale | Direct | address | matched | 3 | 0 | 0 | 10 | high |
| [SlowMist_Audit_Report_StakeStone_MellowDepositWstETHStrategy_en-us.pdf](https://github.com/slowmist/Knowledge-Base/blob/master/open-report-V2/smart-contract/SlowMist_Audit_Report_StakeStone_MellowDepositWstETHStrategy_en-us.pdf) | SlowMist | Audit | 2024-07 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 1 | high |
| [StakeStone DAO - SlowMist Audit Report.pdf](https://github.com/slowmist/Knowledge-Base/blob/master/open-report-V2/smart-contract/StakeStone%20DAO%20-%20SlowMist%20Audit%20Report.pdf) | SlowMist | Audit | 2025-04 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 4 | high |
| [SlowMist Audit Report - StakeStone - Restaking_en-us.pdf](https://3335806686-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FCQc6hVwS1NTaUDN4XLdQ%2Fuploads%2FqBfJB4MR0ZwSpCdrto6b%2FSlowMist%20Audit%20Report%20-%20StakeStone%20-%20Restaking_en-us.pdf) | SlowMist | Audit | 2024-03 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 5 | high |
| [SlowMist_Audit_Report_StakeStone_NativeLendingETHStrategy&Symbi (3).pdf](https://3335806686-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FCQc6hVwS1NTaUDN4XLdQ%2Fuploads%2FSgVpK5T5WWpoj9mwS3bm%2FSlowMist_Audit_Report_StakeStone_NativeLendingETHStrategy%26Symbi%20(3).pdf) | SlowMist | Audit | 2024-06 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 2 | high |
| [SlowMist_Audit_Report_StakeStone_SymbioticDepositWBETHStrategy.pdf](https://3335806686-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FCQc6hVwS1NTaUDN4XLdQ%2Fuploads%2FF43Hk4K2PyIWiakMaSlw%2FSlowMist_Audit_Report_StakeStone_SymbioticDepositWBETHStrategy.pdf) | SlowMist | Audit | 2024-07 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 1 | high |
| [StakestoneEigenlayerHelper_Secure3_Audit_Report.pdf](https://3335806686-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FCQc6hVwS1NTaUDN4XLdQ%2Fuploads%2FRBZCoEprwlIAe7kN2nhn%2FStakestoneEigenlayerHelper_Secure3_Audit_Report.pdf) | Secure3 | Audit | 2024-03 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 5 | high |
| [StakeStone_final_Secure3_Audit_Report.pdf](https://3335806686-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FCQc6hVwS1NTaUDN4XLdQ%2Fuploads%2FVPMwYQsoShkgFtcw3SbM%2FStakeStone_final_Secure3_Audit_Report.pdf) | Secure3 | Audit | 2023-08 | stale | Direct | contract_name | matched | 1 | 0 | 0 | 26 | high |
| [VAR_StakeStone_231208-Final.pdf](https://3335806686-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FCQc6hVwS1NTaUDN4XLdQ%2Fuploads%2FBP2QLRtKlu74IXditjFj%2FVAR_StakeStone_231208-Final.pdf) | Veridise | Audit | 2023-12 | stale | Direct | contract_name | matched | 1 | 0 | 0 | 9 | high |
| [STONE BTC Vault - SlowMist Audit Report.pdf](https://3335806686-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FCQc6hVwS1NTaUDN4XLdQ%2Fuploads%2F8Lx18BRXLLbxnX2zC78t%2FSTONE%20BTC%20Vault%20-%20SlowMist%20Audit%20Report.pdf) | SlowMist | Audit | 2024-10 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 8 | high |
| [StakeStone DAO - SlowMist Audit Report (4).pdf](https://3335806686-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FCQc6hVwS1NTaUDN4XLdQ%2Fuploads%2F0Mb2Btl5gyYFsESugiux%2FStakeStone%20DAO%20-%20SlowMist%20Audit%20Report%20(4).pdf) | SlowMist | Audit | 2025-04 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 4 | high |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [18261] Stone Bera Vault - SlowMist Audit Report.pdf — matched: Contracts extracted from visibility description and findings sections. Audit date from audit result table (end date of range).
- [18262] STONE BTC - SlowMist Audit Report_en-us.pdf — no match: Contracts extracted from Code Overview section and vulnerability descriptions. Audit date from Audit Result table: 2024.08.30 - 2024.09.03, using end date.
- [18263] STONE BTC Vault - SlowMist Audit Report.pdf — no match: Contracts extracted from code overview and vulnerability descriptions. Audit date from audit result table: 2024.10.09 - 2024.10.12, using end date.
- [18264] index.html — no match: The provided text is incomplete and does not contain any contract names or audit details.
- [18266] **Link:** <> — no match: Scope explicitly listed in section 4.1 Contracts Description. Audit date from section 5 Audit Result: 2024.03.07 - 2024.03.11, using end date.
- [18267] **Link:** <>\ — no match: Audit scope explicitly states two staking strategies: NativeLendingETHStrategy and SymbioticDepositWstETHStrategy. Audit date is 2024.06.24.
- [18268] <> — no match: Only one contract in scope: SymbioticDepositWBETHStrategy. Audit date from executive summary and audit result table.
- [18269] <> — no match: Only one contract, SBTCBeraVault, is in scope. Audit date range is 2024.12.23 - 2024.12.24, using end date.
- [18273] Rendered PDF capture — no match: Extracted 21 contract names from the 'Scope Files Included' section. Audit date from changelog: '2025-10-14 - Final report'.
- [18274] Rendered PDF capture — matched: Scope defined as all contracts in contracts/* directory. Extracted contract names from file paths and findings. Audit date from changelog: 2024-07-25 final report.
- [18275] Rendered PDF capture — matched: Extracted contracts from scope listing and file paths. Audit date from audit result table: 2023.12.07 - 2023.12.18, using end date.
- [18276] Rendered PDF capture — no match: Only one contract, EigenLSTRestaking, is in scope. Audit date is the end date of the audit period (2024.05.06 - 2024.05.07).
- [18278] SlowMist Audit Report - StakeStone_en-us.pdf — matched: Extracted from audit report scope section listing file paths and addresses. Also included contracts from governance, interfaces, libraries, token directories as per scope.
- [18279] SlowMist_Audit_Report_StakeStone_MellowDepositWstETHStrategy_en-us.pdf — no match: Only one contract in scope: MellowDepositWstETHStrategy. Audit date is 2024.07.19 from executive summary.
- [18280] StakeStone DAO - SlowMist Audit Report.pdf — no match: Audit scope explicitly lists files: IVeSTO.sol, STO.sol, VeSTO.sol, Escrow.sol. Audit date range given as 2025.03.28 - 2025.04.01, using end date.
- [18282] SlowMist Audit Report - StakeStone - Restaking_en-us.pdf — no match: Scope explicitly listed in section 4.1 Contracts Description. Audit date from section 5 Audit Result: 2024.03.07 - 2024.03.11, using end date.
- [18283] SlowMist_Audit_Report_StakeStone_NativeLendingETHStrategy&Symbi (3).pdf — no match: Two contracts explicitly in scope: NativeLendingETHStrategy and SymbioticDepositWstETHStrategy. Audit date from executive summary.
- [18284] SlowMist_Audit_Report_StakeStone_SymbioticDepositWBETHStrategy.pdf — no match: Only one contract in scope: SymbioticDepositWBETHStrategy. Audit date is 2024.07.08.
- [18285] StakestoneEigenlayerHelper_Secure3_Audit_Report.pdf — no match: Extracted 5 contracts from the scope table on page 5. Audit date found on cover page: 'Mar 18th, 2024'.
- [18287] StakeStone_final_Secure3_Audit_Report.pdf — matched: All contracts listed in the Audit Scope section with file paths and SHA256 hashes were extracted. The audit date is from the cover page: 'Aug 14th, 2023'.
- [18288] VAR_StakeStone_231208-Final.pdf — matched: Scope defined in Section 3.2: contracts folder, excluding strategies/*, mock/*, and mining/* except DepositBridge.sol. All contracts in scope are listed.
- [18289] STONE BTC Vault - SlowMist Audit Report.pdf — no match: Contracts extracted from code overview and vulnerability descriptions. Audit date from audit result table: 2024.10.09 - 2024.10.12, using end date.
- [18290] StakeStone DAO - SlowMist Audit Report (4).pdf — no match: Scope explicitly lists files: IVeSTO.sol, STO.sol, VeSTO.sol, Escrow.sol. Audit date range given as 2025.03.28 - 2025.04.01, using end date.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| Stone Bera Vault - SlowMist Audit Report.pdf | StoneBeraVault | unmatched — not counted | — | listed in scope and findings | no |
| Stone Bera Vault - SlowMist Audit Report.pdf | Token | own contract | Token (selected) `0xec901d...0652c3` — deployed 2025-01-24 04:32:48+03 — liveness: live (current_address_book_code)<br>Token (alternative) `0x8b4e28...1d7c0b` — deployed 2025-12-09 02:44:13+03 — liveness: live (current_address_book_code) | deployment-date disambiguation: 2025-01-24 was 43d from audit; next candidate 362d; normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Stone Bera Vault - SlowMist Audit Report.pdf | DepositWrapper | unmatched — not counted | — | listed in scope and findings | no |
| Stone Bera Vault - SlowMist Audit Report.pdf | OracleConfigurator | unmatched — not counted | — | listed in scope and findings | no |
| Stone Bera Vault - SlowMist Audit Report.pdf | Oracle | unmatched — not counted | — | listed in scope and findings | no |
| Stone Bera Vault - SlowMist Audit Report.pdf | StoneOracle | unmatched — not counted | — | listed in scope and findings | no |
| Stone Bera Vault - SlowMist Audit Report.pdf | WETHOracle | unmatched — not counted | — | listed in scope and findings | no |
| STONE BTC - SlowMist Audit Report_en-us.pdf | StoneBTC | ambiguous — not counted | StoneBTC (alternative) `0x094c0e...b07624` — deployed 2024-09-24 16:28:11+03 — liveness: live (code_present_context)<br>StoneBTC (alternative) `0x154695...33dd7d` — deployed 2024-09-24 16:20:06+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| STONE BTC - SlowMist Audit Report_en-us.pdf | StoneBTCLayerZeroAdapter | ambiguous — not counted | StoneBTCLayerZeroAdapter (alternative) `0x712298...45bd3c` — deployed 2024-09-24 16:20:09+03 — liveness: live (current_address_book_code)<br>StoneBTCLayerZeroAdapter (alternative) `0x4f9f13...918501` — deployed 2024-09-24 16:32:18+03 — liveness: live (current_address_book_code)<br>StoneBTCLayerZeroAdapter (alternative) `0x3f690f...8ca57f` — deployed 2024-09-24 16:28:11+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| STONE BTC - SlowMist Audit Report_en-us.pdf | StoneBTCVault | ambiguous — not counted | StoneBTCVault (alternative) `0x7dbac0...09108d` — deployed 2024-10-08 23:10:11+03 — liveness: live (current_address_book_code)<br>StoneBTCVault (alternative) `0x3aa067...9aff9b` — deployed 2024-09-24 16:26:36+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| STONE BTC - SlowMist Audit Report_en-us.pdf | Proposal | unmatched — not counted | — | listed in code overview | no |
| STONE BTC Vault - SlowMist Audit Report.pdf | AssetVault | unmatched — not counted | — | listed in scope and code overview | no |
| STONE BTC Vault - SlowMist Audit Report.pdf | OracleConfigurator | unmatched — not counted | — | listed in scope and code overview | no |
| STONE BTC Vault - SlowMist Audit Report.pdf | Oracle | unmatched — not counted | — | listed in code overview | no |
| STONE BTC Vault - SlowMist Audit Report.pdf | Token | ambiguous — not counted | Token (alternative) `0xec901d...0652c3` — deployed 2025-01-24 04:32:48+03 — liveness: live (current_address_book_code)<br>Token (alternative) `0x8b4e28...1d7c0b` — deployed 2025-12-09 02:44:13+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| STONE BTC Vault - SlowMist Audit Report.pdf | ChainlinkOracle | unmatched — not counted | — | listed in code overview | no |
| STONE BTC Vault - SlowMist Audit Report.pdf | BTCPeggedOracle | unmatched — not counted | — | listed in code overview | no |
| STONE BTC Vault - SlowMist Audit Report.pdf | WithdrawalProcessor | unmatched — not counted | — | listed in code overview | no |
| STONE BTC Vault - SlowMist Audit Report.pdf | WithdrawalQueue | unmatched — not counted | — | listed in code overview | no |
| **Link:** <> | Account | unmatched — not counted | — | listed in scope | no |
| **Link:** <> | EigenNativeRestakingStrategy | unmatched — not counted | — | listed in scope | no |
| **Link:** <> | IBatchDeposit | unmatched — not counted | — | listed in scope | no |
| **Link:** <> | IEigenPod | unmatched — not counted | — | listed in scope | no |
| **Link:** <> | IEigenPodManager | unmatched — not counted | — | listed in scope | no |
| **Link:** <>\ | NativeLendingETHStrategy | unmatched — not counted | — | Listed in scope and audited contracts. | no |
| **Link:** <>\ | SymbioticDepositWstETHStrategy | unmatched — not counted | — | Listed in scope and audited contracts. | no |
| <> | SymbioticDepositWBETHStrategy | unmatched — not counted | — | listed in scope and visibility table | no |
| <> | SBTCBeraVault | unmatched — not counted | — | listed in scope and audited | no |
| Rendered PDF capture | AccessRegistry | unmatched — not counted | — | listed in scope | no |
| Rendered PDF capture | AssetsRouter | unmatched — not counted | — | listed in scope | no |
| Rendered PDF capture | DepositVault | unmatched — not counted | — | listed in scope | no |
| Rendered PDF capture | ParamRegistry | unmatched — not counted | — | listed in scope | no |
| Rendered PDF capture | Token | ambiguous — not counted | Token (alternative) `0xec901d...0652c3` — deployed 2025-01-24 04:32:48+03 — liveness: live (current_address_book_code)<br>Token (alternative) `0x8b4e28...1d7c0b` — deployed 2025-12-09 02:44:13+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| Rendered PDF capture | WithdrawController | unmatched — not counted | — | listed in scope | no |
| Rendered PDF capture | Constants | unmatched — not counted | — | listed in scope | no |
| Rendered PDF capture | IAccessRegistry | unmatched — not counted | — | listed in scope | no |
| Rendered PDF capture | IAssetsRouter | unmatched — not counted | — | listed in scope | no |
| Rendered PDF capture | IDepositVault | unmatched — not counted | — | listed in scope | no |
| Rendered PDF capture | IOracleFeed | unmatched — not counted | — | listed in scope | no |
| Rendered PDF capture | IOracleRegistry | unmatched — not counted | — | listed in scope | no |
| Rendered PDF capture | IParamRegistry | unmatched — not counted | — | listed in scope | no |
| Rendered PDF capture | IWithdrawController | unmatched — not counted | — | listed in scope | no |
| Rendered PDF capture | Errors | unmatched — not counted | — | listed in scope | no |
| Rendered PDF capture | ChainlinkOracleFeed | unmatched — not counted | — | listed in scope | no |
| Rendered PDF capture | OracleFeed | unmatched — not counted | — | listed in scope | no |
| Rendered PDF capture | OracleRegistry | unmatched — not counted | — | listed in scope | no |
| Rendered PDF capture | NoDelayTimelockController | unmatched — not counted | — | listed in scope | no |
| Rendered PDF capture | OneDayDelayTimelockController | unmatched — not counted | — | listed in scope | no |
| Rendered PDF capture | ThreeDaysDelayTimelockController | unmatched — not counted | — | listed in scope | no |
| Rendered PDF capture | StoneVault | unmatched — not counted | — | listed in scope and findings | no |
| Rendered PDF capture | AssetsVault | unmatched — not counted | — | listed in scope and findings | no |
| Rendered PDF capture | Proposal | unmatched — not counted | — | listed in scope and findings | no |
| Rendered PDF capture | StrategyController | unmatched — not counted | — | listed in scope and findings | no |
| Rendered PDF capture | Stone | own contract | Stone (selected) `0x712298...45bd3c` — deployed 2023-09-24 09:10:11+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Rendered PDF capture | Minter | unmatched — not counted | — | listed in scope and findings | no |
| Rendered PDF capture | NativeLendingETHStrategy | unmatched — not counted | — | listed in scope and findings | no |
| Rendered PDF capture | SymbioticDepositWstETHStrategy | unmatched — not counted | — | listed in scope and findings | no |
| Rendered PDF capture | EigenLSTRestaking | unmatched — not counted | — | listed in scope and findings | no |
| Rendered PDF capture | SwappingAggregator | unmatched — not counted | — | listed in scope and findings | no |
| Rendered PDF capture | Account | unmatched — not counted | — | listed in scope and findings | no |
| Rendered PDF capture | Strategy | unmatched — not counted | — | listed in scope and findings | no |
| Rendered PDF capture | StrategyV2 | unmatched — not counted | — | listed in scope and findings | no |
| Rendered PDF capture | EigenStrategy | unmatched — not counted | — | listed in scope and findings | no |
| Rendered PDF capture | StoneOFT | unmatched — not counted | — | listed in scope and findings | no |
| Rendered PDF capture | L2Stone | unmatched — not counted | — | listed in scope and findings | no |
| Rendered PDF capture | AssetsVault | unmatched — not counted | — | listed in scope | no |
| Rendered PDF capture | StoneVault | unmatched — not counted | — | listed in scope | no |
| Rendered PDF capture | DepositBridge | unmatched — not counted | — | listed in scope | no |
| Rendered PDF capture | RETHHoldingStrategy | unmatched — not counted | — | listed in scope | no |
| Rendered PDF capture | SFraxETHHoldingStrategy | unmatched — not counted | — | listed in scope | no |
| Rendered PDF capture | STETHHoldingStrategy | unmatched — not counted | — | listed in scope | no |
| Rendered PDF capture | Strategy | unmatched — not counted | — | listed in scope | no |
| Rendered PDF capture | StrategyController | unmatched — not counted | — | listed in scope | no |
| Rendered PDF capture | SwappingAggregator | own contract | StoneBTC (selected) `0x154695...33dd7d` — deployed 2024-09-24 16:20:06+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Rendered PDF capture | Minter | unmatched — not counted | — | listed in scope | no |
| Rendered PDF capture | Stone | own contract | StoneBTCLayerZeroAdapter (alternative) `0x712298...45bd3c` — deployed 2024-09-24 16:20:09+03 — liveness: live (current_address_book_code)<br>Stone (selected) `0x712298...45bd3c` — deployed 2023-09-24 09:10:11+03 — liveness: live (current_address_book_code) | deployment-date disambiguation: 2023-09-24 was 85d from audit; next candidate 281d; normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Rendered PDF capture | StoneCross | ambiguous — not counted | StoneCross (alternative) `0x93f4d0...d21116` — deployed 2023-09-24 11:23:13+03 — liveness: live (current_address_book_code)<br>StoneCross (alternative) `0xd2012f...c728c6` — deployed 2023-09-27 09:04:23+03 — liveness: live (current_address_book_code)<br>StoneCross (alternative) `0x801375...747bf7` — deployed 2023-09-27 09:08:17+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| Rendered PDF capture | Proposal | own contract | StoneBTCVault (selected) `0x3aa067...9aff9b` — deployed 2024-09-24 16:26:36+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Rendered PDF capture | EigenLSTRestaking | unmatched — not counted | — | listed in scope and code overview | no |
| SlowMist Audit Report - StakeStone_en-us.pdf | AssetsVault | unmatched — not counted | — | listed in scope section | no |
| SlowMist Audit Report - StakeStone_en-us.pdf | StoneVault | unmatched — not counted | — | listed in scope section | no |
| SlowMist Audit Report - StakeStone_en-us.pdf | DepositBridge | unmatched — not counted | — | listed in scope section | no |
| SlowMist Audit Report - StakeStone_en-us.pdf | RETHHoldingStrategy | unmatched — not counted | — | listed in scope section | no |
| SlowMist Audit Report - StakeStone_en-us.pdf | SFraxETHHoldingStrategy | unmatched — not counted | — | listed in scope section | no |
| SlowMist Audit Report - StakeStone_en-us.pdf | STETHHoldingStrategy | unmatched — not counted | — | listed in scope section | no |
| SlowMist Audit Report - StakeStone_en-us.pdf | Strategy | unmatched — not counted | — | listed in scope section | no |
| SlowMist Audit Report - StakeStone_en-us.pdf | StrategyController | unmatched — not counted | — | listed in scope section | no |
| SlowMist Audit Report - StakeStone_en-us.pdf | SwappingAggregator | own contract | StoneBTC (selected) `0x154695...33dd7d` — deployed 2024-09-24 16:20:06+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| SlowMist Audit Report - StakeStone_en-us.pdf | Minter | unmatched — not counted | — | listed in scope section | no |
| SlowMist Audit Report - StakeStone_en-us.pdf | Stone | own contract | StoneBTCLayerZeroAdapter (alternative) `0x712298...45bd3c` — deployed 2024-09-24 16:20:09+03 — liveness: live (current_address_book_code)<br>Stone (selected) `0x712298...45bd3c` — deployed 2023-09-24 09:10:11+03 — liveness: live (current_address_book_code) | deployment-date disambiguation: 2023-09-24 was 85d from audit; next candidate 281d; normalized_full_corpus:project_anchor:matcher_anchor | yes |
| SlowMist Audit Report - StakeStone_en-us.pdf | StoneCross | ambiguous — not counted | StoneCross (alternative) `0x93f4d0...d21116` — deployed 2023-09-24 11:23:13+03 — liveness: live (current_address_book_code)<br>StoneCross (alternative) `0xd2012f...c728c6` — deployed 2023-09-27 09:04:23+03 — liveness: live (current_address_book_code)<br>StoneCross (alternative) `0x801375...747bf7` — deployed 2023-09-27 09:08:17+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| SlowMist Audit Report - StakeStone_en-us.pdf | Proposal | own contract | StoneBTCVault (selected) `0x3aa067...9aff9b` — deployed 2024-09-24 16:26:36+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| SlowMist_Audit_Report_StakeStone_MellowDepositWstETHStrategy_en-us.pdf | MellowDepositWstETHStrategy | unmatched — not counted | — | listed in scope and audit methodology | no |
| StakeStone DAO - SlowMist Audit Report.pdf | STO | unmatched — not counted | — | listed in scope | no |
| StakeStone DAO - SlowMist Audit Report.pdf | VeSTO | unmatched — not counted | — | listed in scope | no |
| StakeStone DAO - SlowMist Audit Report.pdf | Escrow | unmatched — not counted | — | listed in scope | no |
| StakeStone DAO - SlowMist Audit Report.pdf | IVeSTO | unmatched — not counted | — | listed in scope | no |
| SlowMist Audit Report - StakeStone - Restaking_en-us.pdf | Account | unmatched — not counted | — | listed in scope | no |
| SlowMist Audit Report - StakeStone - Restaking_en-us.pdf | EigenNativeRestakingStrategy | unmatched — not counted | — | listed in scope | no |
| SlowMist Audit Report - StakeStone - Restaking_en-us.pdf | IBatchDeposit | unmatched — not counted | — | listed in scope | no |
| SlowMist Audit Report - StakeStone - Restaking_en-us.pdf | IEigenPod | unmatched — not counted | — | listed in scope | no |
| SlowMist Audit Report - StakeStone - Restaking_en-us.pdf | IEigenPodManager | unmatched — not counted | — | listed in scope | no |
| SlowMist_Audit_Report_StakeStone_NativeLendingETHStrategy&Symbi (3).pdf | NativeLendingETHStrategy | unmatched — not counted | — | Listed in scope and described in report | no |
| SlowMist_Audit_Report_StakeStone_NativeLendingETHStrategy&Symbi (3).pdf | SymbioticDepositWstETHStrategy | unmatched — not counted | — | Listed in scope and described in report | no |
| SlowMist_Audit_Report_StakeStone_SymbioticDepositWBETHStrategy.pdf | SymbioticDepositWBETHStrategy | unmatched — not counted | — | listed in scope and visibility table | no |
| StakestoneEigenlayerHelper_Secure3_Audit_Report.pdf | IBatchDeposit | unmatched — not counted | — | listed in scope table | no |
| StakestoneEigenlayerHelper_Secure3_Audit_Report.pdf | IEigenPod | unmatched — not counted | — | listed in scope table | no |
| StakestoneEigenlayerHelper_Secure3_Audit_Report.pdf | IEigenPodManager | unmatched — not counted | — | listed in scope table | no |
| StakestoneEigenlayerHelper_Secure3_Audit_Report.pdf | Account | unmatched — not counted | — | listed in scope table | no |
| StakestoneEigenlayerHelper_Secure3_Audit_Report.pdf | EigenNativeRestakingStrategy | unmatched — not counted | — | listed in scope table | no |
| StakeStone_final_Secure3_Audit_Report.pdf | StoneVault | unmatched — not counted | — | listed in scope | no |
| StakeStone_final_Secure3_Audit_Report.pdf | StrategyController | unmatched — not counted | — | listed in scope | no |
| StakeStone_final_Secure3_Audit_Report.pdf | SwappingAggregator | unmatched — not counted | — | listed in scope | no |
| StakeStone_final_Secure3_Audit_Report.pdf | BalancerLPAuraStrategy | unmatched — not counted | — | listed in scope | no |
| StakeStone_final_Secure3_Audit_Report.pdf | Proposal | unmatched — not counted | — | listed in scope | no |
| StakeStone_final_Secure3_Audit_Report.pdf | STETHHoldingStrategy | unmatched — not counted | — | listed in scope | no |
| StakeStone_final_Secure3_Audit_Report.pdf | SFraxETHHoldingStrategy | unmatched — not counted | — | listed in scope | no |
| StakeStone_final_Secure3_Audit_Report.pdf | RETHHoldingStrategy | unmatched — not counted | — | listed in scope | no |
| StakeStone_final_Secure3_Audit_Report.pdf | Stone | own contract | Stone (selected) `0x712298...45bd3c` — deployed 2023-09-24 09:10:11+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| StakeStone_final_Secure3_Audit_Report.pdf | Strategy | unmatched — not counted | — | listed in scope | no |
| StakeStone_final_Secure3_Audit_Report.pdf | IStableSwap | unmatched — not counted | — | listed in scope | no |
| StakeStone_final_Secure3_Audit_Report.pdf | StoneCross | ambiguous — not counted | StoneCross (alternative) `0x93f4d0...d21116` — deployed 2023-09-24 11:23:13+03 — liveness: live (current_address_book_code)<br>StoneCross (alternative) `0xd2012f...c728c6` — deployed 2023-09-27 09:04:23+03 — liveness: live (current_address_book_code)<br>StoneCross (alternative) `0x801375...747bf7` — deployed 2023-09-27 09:08:17+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| StakeStone_final_Secure3_Audit_Report.pdf | ILidoWithdrawalQueue | unmatched — not counted | — | listed in scope | no |
| StakeStone_final_Secure3_Audit_Report.pdf | AssetsVault | unmatched — not counted | — | listed in scope | no |
| StakeStone_final_Secure3_Audit_Report.pdf | IBalancerVault | unmatched — not counted | — | listed in scope | no |
| StakeStone_final_Secure3_Audit_Report.pdf | Minter | unmatched — not counted | — | listed in scope | no |
| StakeStone_final_Secure3_Audit_Report.pdf | VaultMath | unmatched — not counted | — | listed in scope | no |
| StakeStone_final_Secure3_Audit_Report.pdf | ISfrxETH | unmatched — not counted | — | listed in scope | no |
| StakeStone_final_Secure3_Audit_Report.pdf | IBooster | unmatched — not counted | — | listed in scope | no |
| StakeStone_final_Secure3_Audit_Report.pdf | IAuraRewardPool | unmatched — not counted | — | listed in scope | no |
| StakeStone_final_Secure3_Audit_Report.pdf | IRocketTokenRETH | unmatched — not counted | — | listed in scope | no |
| StakeStone_final_Secure3_Audit_Report.pdf | IFrxETHMinter | unmatched — not counted | — | listed in scope | no |
| StakeStone_final_Secure3_Audit_Report.pdf | ILido | unmatched — not counted | — | listed in scope | no |
| StakeStone_final_Secure3_Audit_Report.pdf | IWETH9 | unmatched — not counted | — | listed in scope | no |
| StakeStone_final_Secure3_Audit_Report.pdf | IWstETH | unmatched — not counted | — | listed in scope | no |
| StakeStone_final_Secure3_Audit_Report.pdf | IComposableStablePool | unmatched — not counted | — | listed in scope | no |
| StakeStone_final_Secure3_Audit_Report.pdf | IRocketDepositPool | unmatched — not counted | — | listed in scope | no |
| VAR_StakeStone_231208-Final.pdf | StoneVault | unmatched — not counted | — | Listed in scope and mentioned throughout report | no |
| VAR_StakeStone_231208-Final.pdf | StrategyController | unmatched — not counted | — | Listed in scope and mentioned in findings | no |
| VAR_StakeStone_231208-Final.pdf | AssetsVault | unmatched — not counted | — | Listed in scope and mentioned in findings | no |
| VAR_StakeStone_231208-Final.pdf | Minter | unmatched — not counted | — | Listed in scope and mentioned in findings | no |
| VAR_StakeStone_231208-Final.pdf | Stone | own contract | Stone (selected) `0x712298...45bd3c` — deployed 2023-09-24 09:10:11+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| VAR_StakeStone_231208-Final.pdf | StoneCross | ambiguous — not counted | StoneCross (alternative) `0x93f4d0...d21116` — deployed 2023-09-24 11:23:13+03 — liveness: live (current_address_book_code)<br>StoneCross (alternative) `0xd2012f...c728c6` — deployed 2023-09-27 09:04:23+03 — liveness: live (current_address_book_code)<br>StoneCross (alternative) `0x801375...747bf7` — deployed 2023-09-27 09:08:17+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| VAR_StakeStone_231208-Final.pdf | Proposal | unmatched — not counted | — | Listed in scope and mentioned in findings | no |
| VAR_StakeStone_231208-Final.pdf | BalancerLPAuraStrategy | unmatched — not counted | — | Mentioned in finding V-STN-VUL-005 | no |
| VAR_StakeStone_231208-Final.pdf | RETHBalancerAuraStrategy | unmatched — not counted | — | Mentioned in finding V-STN-VUL-005 | no |
| VAR_StakeStone_231208-Final.pdf | DepositBridge | unmatched — not counted | — | Explicitly included in scope (excluded other mining files) | no |
| STONE BTC Vault - SlowMist Audit Report.pdf | AssetVault | unmatched — not counted | — | listed in scope and code overview | no |
| STONE BTC Vault - SlowMist Audit Report.pdf | OracleConfigurator | unmatched — not counted | — | listed in scope and code overview | no |
| STONE BTC Vault - SlowMist Audit Report.pdf | Oracle | unmatched — not counted | — | listed in scope and code overview | no |
| STONE BTC Vault - SlowMist Audit Report.pdf | Token | ambiguous — not counted | Token (alternative) `0xec901d...0652c3` — deployed 2025-01-24 04:32:48+03 — liveness: live (current_address_book_code)<br>Token (alternative) `0x8b4e28...1d7c0b` — deployed 2025-12-09 02:44:13+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| STONE BTC Vault - SlowMist Audit Report.pdf | ChainlinkOracle | unmatched — not counted | — | listed in scope and code overview | no |
| STONE BTC Vault - SlowMist Audit Report.pdf | BTCPeggedOracle | unmatched — not counted | — | listed in scope and code overview | no |
| STONE BTC Vault - SlowMist Audit Report.pdf | WithdrawalProcessor | unmatched — not counted | — | listed in scope and code overview | no |
| STONE BTC Vault - SlowMist Audit Report.pdf | WithdrawalQueue | unmatched — not counted | — | listed in scope and code overview | no |
| StakeStone DAO - SlowMist Audit Report (4).pdf | STO | unmatched — not counted | — | listed in scope | no |
| StakeStone DAO - SlowMist Audit Report (4).pdf | VeSTO | unmatched — not counted | — | listed in scope | no |
| StakeStone DAO - SlowMist Audit Report (4).pdf | Escrow | unmatched — not counted | — | listed in scope | no |
| StakeStone DAO - SlowMist Audit Report (4).pdf | IVeSTO | unmatched — not counted | — | listed in scope | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | `0x094c0e...b07624` | StoneBTC | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x3f690f...8ca57f` | StoneBTCLayerZeroAdapter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0x712298...45bd3c` | StoneBTCLayerZeroAdapter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| scroll | `0x4f9f13...918501` | StoneBTCLayerZeroAdapter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x7dbac0...09108d` | StoneBTCVault | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0x801375...747bf7` | StoneCross | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0xd2012f...c728c6` | StoneCross | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| linea | `0x93f4d0...d21116` | StoneCross | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0x8b4e28...1d7c0b` | Token | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 80 |
| upstream | 1 |
| standard_library | 0 |
| needs_review | 125 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 17
- Inherited remapped matches: 0
- Address-book scope dispositions: 10 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 10 ambiguous, 139 unmatched
- Matched-own operational status: 10 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=22, low=1
- Match method counts: address=4, temporal_name=3, unique_name=3

Zero-match audit list:

- [18262] STONE BTC - SlowMist Audit Report_en-us.pdf
- [18263] STONE BTC Vault - SlowMist Audit Report.pdf
- [18264] index.html
- [18266] **Link:** <>
- [18267] **Link:** <>\
- [18268] <>
- [18269] <>
- [18273] Rendered PDF capture
- [18276] Rendered PDF capture
- [18279] SlowMist_Audit_Report_StakeStone_MellowDepositWstETHStrategy_en-us.pdf
- [18280] StakeStone DAO - SlowMist Audit Report.pdf
- [18282] SlowMist Audit Report - StakeStone - Restaking_en-us.pdf
- [18283] SlowMist_Audit_Report_StakeStone_NativeLendingETHStrategy&Symbi (3).pdf
- [18284] SlowMist_Audit_Report_StakeStone_SymbioticDepositWBETHStrategy.pdf
- [18285] StakestoneEigenlayerHelper_Secure3_Audit_Report.pdf
- [18289] STONE BTC Vault - SlowMist Audit Report.pdf
- [18290] StakeStone DAO - SlowMist Audit Report (4).pdf

Fork inheritance lineage and inherited audits are included when available.
