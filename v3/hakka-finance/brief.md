# Agentic Audit Brief: Hakka Finance

## Export Authority

- Production state: **published scope**
- Raw selected rows: 11 across 5 audit(s)
- Eligible audit results: 8 (5 matched; 3 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e9e09d06b414f9cd852c36a58d42ce16279465f2d9791cd2a8178f3f54b89ecd`

## Project Overview

- Project: Hakka Finance (`hakka-finance`)
- Website: [https://hakka.finance/](https://hakka.finance/)
- Lifecycle: unknown
- Generated: 2026-07-15T18:30:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: bsc, ethereum, polygon
- Contract surface: 80 unique implementations (154 raw deployments)
- Coverage basis: 8/32 confirmed own live verified implementations (25.0%); conservative 25.0% with 0 needs-review implementation(s)
- DeFi Llama TVL: $3,500,084.12
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for Hakka Finance. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 32 contract row(s) across bsc, ethereum, polygon. Structural roles: 17 core, 8 unclassified, 7 supporting. No upgradeable pattern was identified in these rows.

## Logic Topography

- Exact-run contract rows: 32
- Structural roles: core (17), unclassified (8), supporting (7)
- Contract kinds: contract (32)
- Detected standards: ownable (8), erc20 (7), erc20permit (1)
- Frameworks: openzeppelin (21)
- Upgradeable-pattern rows: 0

## Fork Analysis

0 of 34 contracts are derived from known codebases. 34 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0xae95d3...4a27dd`, chain 1)
- UnnamedContract (`0xb8b84c...5fa6a9`, chain 1)
- UnnamedContract (`0x1d1eb8...89aaac`, chain 56)
- UnnamedContract (`0x978338...f5efb4`, chain 137)
- blackholeswap (`0x35101c...341935`, chain 1)
- blackholeswap (`0x75192d...34ce7e`, chain 56)
- BPool (`0x1b8874...d77016`, chain 1)
- Burner (`0xde0231...c2b16d`, chain 1)
- GnosisSafeProxy (`0xb44c87...46eaa8`, chain 137)
- GuildBank (`0x83d0d8...bec8e7`, chain 1)
- Hakka (`0x0e29e5...de3bcd`, chain 1)
- HakkaHarvester (`0x3792ee...5e00bf`, chain 56)
- HakkaHarvester (`0x4d5054...291c56`, chain 56)
- HakkaHarvester (`0x6a3093...4642c8`, chain 56)
- HakkaHarvester (`0x8ba1c3...c53b96`, chain 56)
- HakkaHarvester (`0x992c01...ed852c`, chain 56)
- HakkaHarvester (`0xcb2131...99888e`, chain 56)
- HakkaRewards1 (`0x6b1ecb...c3ff11`, chain 1)
- HakkaRewards2 (`0x6ee668...e52f27`, chain 1)
- HakkaRewards3 (`0x3792ee...5e00bf`, chain 1)
- HakkaRewards4 (`0x3bd145...a64645`, chain 1)
- HakkaRewards5 (`0x0aa6c4...d11058`, chain 1)
- HakkaRewardsVesting (`0xf4d1f9...5b7977`, chain 1)
- HakkaRewardsVesting (`0x79eb6f...c55f4a`, chain 56)
- ImpermanentGain (`0xbf00da...64b6ab`, chain 1)
- Pot (`0xfd091f...30bd94`, chain 56)
- sHakka (`0xd99588...f15040`, chain 1)
- TFToken (`0xbdda96...e9dee3`, chain 1)
- ThreeFMutual (`0x66be1b...c6cb32`, chain 1)
- TokenFactory (`0x47ca21...0a4e95`, chain 137)
- UniswapV2Pair (`0x9c5999...b9957e`, chain 1)
- VestingVault (`0x51f123...238ed6`, chain 1)
- VestingVault (`0x6dbff2...fa94dc`, chain 56)
- VestingVault (`0xec4b77...b8001a`, chain 137)

## Contract Surface Quality

- Logic-topography rows: 32; live-surface rows included: 32 (32 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 36/37 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 8/32 (25.0%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 36 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 44 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 1
- Confirmed-live implementations: 36 of 80 unique; 44 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 8/66
- Verified + Unaudited implementations: 58
- Verified by bytecode match: 0
- Unverified implementations: 14
- Unique implementations: 80
- Raw deployments: 154
- Audits discovered: 8 (8 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 5
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2022-01 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 7 stale, 1 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 8 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| PeckShield | Tier 2 | 5 | 7.6% | 2021-03 |
| unknown | Tier 2 | 4 | 6.1% | 2022-01 |
| yAudit | Tier 2 | 2 | 3.0% | 2020-09 |

## Contract Surface

### ✅ Verified + Audited (8)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| blackholeswap | unknown | project_anchor | own_supporting | 0 | ethereum | unit-387188 | `0x35101c...341935` | ✅ Audited |
| GuildBank | unknown | project_anchor | own_supporting | 0 | ethereum | unit-387196 | `0x83d0d8...bec8e7` | ✅ Audited |
| Hakka | unknown | project_anchor | own_supporting | 0 | ethereum | unit-387184 | `0x0e29e5...de3bcd` | ✅ Audited |
| HakkaRewardsVesting | unknown | project_anchor | own_supporting | 0 | bsc | unit-387214 | `0x79eb6f...c55f4a` | ✅ Audited |
| ImpermanentGain | unknown | project_anchor | own_supporting | 0 | ethereum | unit-387201 | `0xbf00da...64b6ab` | ✅ Audited |
| ThankYouToken | unknown | project_anchor | own_supporting | 0 | ethereum | unit-387195 | `0x7f8093...3032d5` | ✅ Audited |
| TokenFactory | registry | project_anchor | own_supporting | 0 | polygon | unit-387205 | `0x47ca21...0a4e95` | ✅ Audited |
| VestingVault | operational_periphery | project_anchor | own_supporting | 0 | bsc | unit-387212 | `0x6dbff2...fa94dc` | ✅ Audited |

### ⚠️ Verified + Unaudited (58)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| ABDKMath64x64 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 3 deployments: ethereum `0xe7e73e...15724a`; bsc `0x6fa497...e7e201`; polygon `0x93fff4...c6d714` | ⚠️ Unaudited |
| Agency | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7bc360...310ec3` | ⚠️ Unaudited |
| Airdrop | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xda5467...4f6de9` | ⚠️ Unaudited |
| bhsAlpha | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x11baff...b1e534` | ⚠️ Unaudited |
| blackholeswap | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 3 deployments: ethereum `0x592ad4...a76853`; ethereum `0xd1cce7...e4ebad`; bsc `0x47ca21...0a4e95` | ⚠️ Unaudited |
| blackholeswap | unknown | project_anchor | own_supporting | 0 | bsc | unit-387213 | `0x75192d...34ce7e` | ⚠️ Unaudited |
| BPool | core_logic | project_anchor | own_supporting | 0 | ethereum | unit-387186 | `0x1b8874...d77016` | ⚠️ Unaudited |
| Burner | unknown | project_anchor | own_supporting | 0 | ethereum | unit-387203 | `0xde0231...c2b16d` | ⚠️ Unaudited |
| DepositaryReceipt | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x575a7e...dec326` | ⚠️ Unaudited |
| DummyModel | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb8d161...8c1b65` | ⚠️ Unaudited |
| FlashMigrator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x228679...441ae6` | ⚠️ Unaudited |
| FulcrumEmergencyEjection | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 4 deployments: ethereum `0x47ca21...0a4e95`; ethereum `0xb54f0b...0dee41`; ethereum `0xca3b60...93c499`; ethereum `0xec4b77...b8001a` | ⚠️ Unaudited |
| Game | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | 2 deployments: ethereum `0x938c66...749999`; polygon `0x6d386a...892b7c` | ⚠️ Unaudited |
| GnosisSafeL2 | governance | project_anchor | own_supporting | 1 | polygon | unit-387219 | `0xb44c87...46eaa8` | ⚠️ Unaudited |
| GuildBank | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x1e20b7...28a935`; ethereum `0xd05336...8ad77a` | ⚠️ Unaudited |
| HakkaHarvester | unknown | project_anchor | own_supporting | 0 | bsc | unit-387209 | `0x3792ee...5e00bf` | ⚠️ Unaudited |
| HakkaHarvester | unknown | project_anchor | own_supporting | 0 | bsc | unit-387210 | `0x4d5054...291c56` | ⚠️ Unaudited |
| HakkaHarvester | unknown | project_anchor | own_supporting | 0 | bsc | unit-387211 | `0x6a3093...4642c8` | ⚠️ Unaudited |
| HakkaHarvester | unknown | project_anchor | own_supporting | 0 | bsc | unit-387215 | `0x8ba1c3...c53b96` | ⚠️ Unaudited |
| HakkaHarvester | unknown | project_anchor | own_supporting | 0 | bsc | unit-387216 | `0x992c01...ed852c` | ⚠️ Unaudited |
| HakkaHarvester | unknown | project_anchor | own_supporting | 0 | bsc | unit-387217 | `0xcb2131...99888e` | ⚠️ Unaudited |
| HakkaIntelligence | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 9 deployments: bsc `0x0a3e36...5bc5d4`; bsc `0x119220...a3a578`; bsc `0x2b4691...090e20`; bsc `0x4eda33...25501d`; bsc `0x517ef6...77d29d`; bsc `0xcb1189...90c5e2`; bsc `0xd8b3ff...39e6fb`; polygon `0xe3476e...8d99bb`; polygon `0xfa9e61...5f69d3` | ⚠️ Unaudited |
| HakkaIntelligenceAlpha | unknown | project_anchor | own_supporting | 0 | ethereum | unit-387185 | `0x0f2fd9...43140b` | ⚠️ Unaudited |
| HakkaRewards1 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x047c21...1a6d6f` | ⚠️ Unaudited |
| HakkaRewards1 | unknown | project_anchor | own_supporting | 0 | ethereum | unit-387193 | `0x6b1ecb...c3ff11` | ⚠️ Unaudited |
| HakkaRewards2 | unknown | project_anchor | own_supporting | 0 | ethereum | unit-387194 | `0x6ee668...e52f27` | ⚠️ Unaudited |
| HakkaRewards2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdfe604...18b16a` | ⚠️ Unaudited |
| HakkaRewards3 | unknown | project_anchor | own_supporting | 0 | ethereum | unit-387189 | `0x3792ee...5e00bf` | ⚠️ Unaudited |
| HakkaRewards4 | unknown | project_anchor | own_supporting | 0 | ethereum | unit-387190 | `0x3bd145...a64645` | ⚠️ Unaudited |
| HakkaRewards5 | unknown | project_anchor | own_supporting | 0 | ethereum | unit-387183 | `0x0aa6c4...d11058` | ⚠️ Unaudited |
| HakkaRewardsVesting | operational_periphery | project_anchor | own_supporting | 0 | ethereum | unit-387204 | `0xf4d1f9...5b7977` | ⚠️ Unaudited |
| HakkaRewardsVesting | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | 20 deployments: ethereum `0x38ddc7...9826ea`; ethereum `0x735a80...40c95a`; bsc `0x4e353c...74702e`; bsc `0x64a7b6...3aceae`; polygon `0x022977...9e3bdc`; polygon `0x25a1f8...0b588e`; polygon `0x3d14c8...be8114`; polygon `0x459fb7...69823a`; polygon `0x4d5054...291c56`; polygon `0x51de1e...f29be6`; polygon `0x5dd277...92448f`; polygon `0x6fa497...e7e201`; polygon `0x87c282...cb1536`; polygon `0x9933ad...530780`; polygon `0xb9407b...c356e4`; polygon `0xc231f0...b05ee1`; polygon `0xc75966...405db3`; polygon `0xda5467...4f6de9`; polygon `0xf55eab...264d5a`; polygon `0xf8b535...3b5410` | ⚠️ Unaudited |
| HakkaVotingPower | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6aec51...71d04d` | ⚠️ Unaudited |
| IGainDelta | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xedf19a...c33567` | ⚠️ Unaudited |
| iGainFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | 2 deployments: polygon `0x323414...147d51`; polygon `0xc28b6e...ddf832` | ⚠️ Unaudited |
| IGainIL | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xe69cb8...bf38bb` | ⚠️ Unaudited |
| iGainLPProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | 7 deployments: polygon `0x1e86c7...c99087`; polygon `0x5268d6...adbd83`; polygon `0x64e99c...221d06`; polygon `0x7457a1...6c706c`; polygon `0x7f82f3...b177ae`; polygon `0xdaff37...0b298e`; polygon `0xecfbaf...425f97` | ⚠️ Unaudited |
| ImpermanentGain | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xc9d710...3fae27` | ⚠️ Unaudited |
| InsuranceImprovementProposal | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x1b0924...d44308`; ethereum `0x616305...8956b2` | ⚠️ Unaudited |
| InsuranceImprovementProposalProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x5dd277...92448f`; ethereum `0x9933ad...530780` | ⚠️ Unaudited |
| keeper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | 2 deployments: bsc `0x51f123...238ed6`; polygon `0x130047...fc873e` | ⚠️ Unaudited |
| Pot | unknown | project_anchor | own_supporting | 0 | bsc | unit-387218 | `0xfd091f...30bd94` | ⚠️ Unaudited |
| proxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | 16 deployments: polygon `0x0a74c3...fa14d9`; polygon `0x3a6734...4bec3d`; polygon `0x3d5fd7...a47291`; polygon `0x66be1b...c6cb32`; polygon `0x7e628e...7d7192`; polygon `0x83cd28...29e2af`; polygon `0x867765...7bf99a`; polygon `0x8a6f73...9515ab`; polygon `0x9ea10c...c4c25b`; polygon `0xaafe81...f49b8d`; polygon `0xc40705...cf1483`; polygon `0xdf5d67...f6eb55`; polygon `0xe74bc7...82bcc5`; polygon `0xea6cb5...85d293`; polygon `0xf543aa...aaa97d`; polygon `0xfd091f...30bd94` | ⚠️ Unaudited |
| registry | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xc6d491...6f16ce` | ⚠️ Unaudited |
| sHakka | unknown | project_anchor | own_supporting | 0 | ethereum | unit-387202 | `0xd99588...f15040` | ⚠️ Unaudited |
| sHakka | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 3 deployments: ethereum `0xb92586...897a62`; bsc `0x51de1e...f29be6`; polygon `0x7f8093...3032d5` | ⚠️ Unaudited |
| SquidFarmer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4eda33...25501d` | ⚠️ Unaudited |
| stakingRateModel | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 4 deployments: ethereum `0x3474b7...cb6a2d`; ethereum `0x6d04ba...c741b2`; bsc `0x9155e3...4389ca`; polygon `0xfbf484...83571c` | ⚠️ Unaudited |
| tCDP | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xda4c9e...8aaf03` | ⚠️ Unaudited |
| TFToken | token | project_anchor | own_supporting | 0 | ethereum | unit-387200 | `0xbdda96...e9dee3` | ⚠️ Unaudited |
| ThreeFMutual | unknown | project_anchor | own_supporting | 0 | ethereum | unit-387192 | `0x66be1b...c6cb32` | ⚠️ Unaudited |
| TokenFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 2 deployments: ethereum `0x2efc35...f11715`; bsc `0x1794ad...822606` | ⚠️ Unaudited |
| Underwriter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe58cde...fa2357` | ⚠️ Unaudited |
| UniswapV2Pair | unknown | project_anchor | own_supporting | 0 | ethereum | unit-387197 | `0x9c5999...b9957e` | ⚠️ Unaudited |
| VestingVault | operational_periphery | project_anchor | own_supporting | 0 | ethereum | unit-387191 | `0x51f123...238ed6` | ⚠️ Unaudited |
| VestingVault | operational_periphery | project_anchor | own_supporting | 0 | polygon | unit-387207 | `0xec4b77...b8001a` | ⚠️ Unaudited |
| votingPowerViewer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x072240...6c583c` | ⚠️ Unaudited |
| WorldCupOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | 8 deployments: polygon `0x086390...1c0d96`; polygon `0x0d8042...db7dfe`; polygon `0x2f5b7d...b96d0b`; polygon `0x45544d...db6ff6`; polygon `0x576968...c2e374`; polygon `0xad9cad...3e226c`; polygon `0xd02ef1...9a38cc`; polygon `0xe88147...e20298` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (14)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0a3e36...5bc5d4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5113db...139089` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-387198 | `0xae95d3...4a27dd` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-387199 | `0xb8b84c...5fa6a9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc2f08a...0fa7b5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x15fb14...f49064` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-387208 | `0x1d1eb8...89aaac` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x2d4eb3...652faa` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x5113db...139089` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x7a602e...6a3ba2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x350ebf...0a39ad` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-387206 | `0x978338...f5efb4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xc441d0...268f3b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xda40f3...251a6b` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [Hakka Finance Urban Giggle Audit.pdf](https://github.com/hakkafinance/audit-reports/blob/main/Hakka%20Finance%20Urban%20Giggle%20Audit.pdf) | unknown | Audit | 2021-04 | stale | Direct | contract_name | matched | 3 | 0 | 0 | 2 | high |
| [Hakka Finance Vault contract wHakka audit.pdf](https://github.com/hakkafinance/audit-reports/blob/main/Hakka%20Finance%20Vault%20contract%20wHakka%20audit.pdf) | unknown | Audit | 2021-04 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 4 | high |
| [Hakka_Finance_iGain_V2_Audit_Report.pdf](https://github.com/hakkafinance/audit-reports/blob/main/Hakka_Finance_iGain_V2_Audit_Report.pdf) | unknown | Audit | 2022-01 | stale | Direct | contract_name | matched | 1 | 0 | 0 | 5 | high |
| [PeckShield-Audit-Report-Hakka-3FMutual-v1.0 (1).pdf](https://github.com/hakkafinance/audit-reports/blob/main/PeckShield-Audit-Report-Hakka-3FMutual-v1.0%20(1).pdf) | PeckShield | Audit | 2020-09 | stale | Direct | n/a | no match | 0 | 0 | 0 | 5 | n/a |
| [PeckShield-Audit-Report-Urban-Giggle-v1.0.pdf](https://github.com/hakkafinance/audit-reports/blob/main/PeckShield-Audit-Report-Urban-Giggle-v1.0.pdf) | PeckShield | Audit | 2021-03 | stale | Direct | n/a | matched | 3 | 0 | 0 | 1 | n/a |
| [Smart Contract Security Audit Report - BlackHoleSwap.pdf](https://github.com/hakkafinance/audit-reports/blob/main/Smart%20Contract%20Security%20Audit%20Report%20-%20BlackHoleSwap.pdf) | yAudit | Audit | 2020-09 | stale | Direct | n/a | matched | 2 | 0 | 0 | 1 | n/a |
| [peckshield-audit-report-hakka-blackholeswap-v1.0-p1.pdf](https://github.com/hakkafinance/audit-reports/blob/main/peckshield-audit-report-hakka-blackholeswap-v1.0-p1.pdf) | PeckShield | Audit | 2020-09 | stale | Direct | n/a | matched | 2 | 0 | 0 | 2 | n/a |
| [audit-reports (GitHub directory)](https://github.com/hakkafinance/audit-reports) | unknown | Audit | n/a | unknown | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [2556] Hakka Finance Urban Giggle Audit.pdf — matched: Scope section states all .sol files in the codebase were considered. Five products are listed in Overview. No specific file paths given.
- [2557] Hakka Finance Vault contract wHakka audit.pdf — no match: Audit report for Hakka Finance Vault contract wHakka.sol. Scope explicitly mentions wHakka.sol. Other contracts (Ownable, ERC20, IERC20) are inherited or referenced in findings. Date is April 2021, approximated to last day of month.
- [2558] Hakka_Finance_iGain_V2_Audit_Report.pdf — matched: Scope mentioned v2 folder of iGain codebase; contracts extracted from overview and findings sections.
- [2559] PeckShield-Audit-Report-Hakka-3FMutual-v1.0 (1).pdf — no match: No reason recorded
- [2560] PeckShield-Audit-Report-Urban-Giggle-v1.0.pdf — matched: No reason recorded
- [2561] Smart Contract Security Audit Report - BlackHoleSwap.pdf — matched: No reason recorded
- [2562] peckshield-audit-report-hakka-blackholeswap-v1.0-p1.pdf — matched: No reason recorded
- [14453] audit-reports (GitHub directory) — no match: The provided text is a GitHub repository page listing audit report PDFs, not the actual audit report content. No contract names or scope details are extractable.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| Hakka Finance Urban Giggle Audit.pdf | ThankYouToken | own contract | ThankYouToken (selected) `0x7f8093...3032d5` — deployed 2020-11-19 20:47:28+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Hakka Finance Urban Giggle Audit.pdf | VestingVault | own contract | VestingVault (alternative) `0x51f123...238ed6` — deployed 2020-12-08 18:09:38+03 — liveness: live (current_address_book_code)<br>VestingVault (selected) `0x6dbff2...fa94dc` — deployed 2021-02-26 20:47:58+03 — liveness: live (code_present_context)<br>VestingVault (alternative) `0xec4b77...b8001a` — deployed 2022-01-11 14:34:06+03 — liveness: live (current_address_book_code) | deployment-date disambiguation: 2021-02-26 was 56d from audit; next candidate 136d; normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Hakka Finance Urban Giggle Audit.pdf | VestingRewardContract | unmatched — not counted | — | mentioned in Overview as a product: Vesting Reward Contract | no |
| Hakka Finance Urban Giggle Audit.pdf | HakkaIntelligence | unmatched — not counted | — | mentioned in Overview as a product: Hakka Intelligence | no |
| Hakka Finance Urban Giggle Audit.pdf | ImpermanentGain | own contract | ImpermanentGain (selected) `0xbf00da...64b6ab` — deployed 2021-01-16 22:54:17+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Hakka Finance Vault contract wHakka audit.pdf | wHakka | unmatched — not counted | — | listed in scope | no |
| Hakka Finance Vault contract wHakka audit.pdf | Ownable | unmatched — not counted | — | referenced in findings | no |
| Hakka Finance Vault contract wHakka audit.pdf | ERC20 | unmatched — not counted | — | referenced in findings | no |
| Hakka Finance Vault contract wHakka audit.pdf | IERC20 | unmatched — not counted | — | referenced in findings | no |
| Hakka_Finance_iGain_V2_Audit_Report.pdf | IGainBase | unmatched — not counted | — | mentioned as base contract in overview | no |
| Hakka_Finance_iGain_V2_Audit_Report.pdf | IGainIL | unmatched — not counted | — | mentioned as contract inheriting IGainBase | no |
| Hakka_Finance_iGain_V2_Audit_Report.pdf | IGainAAVEIRS | unmatched — not counted | — | listed in findings files affected | no |
| Hakka_Finance_iGain_V2_Audit_Report.pdf | TokenFactory | own contract | TokenFactory (selected) `0x47ca21...0a4e95` — deployed 2022-01-11 18:37:20+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Hakka_Finance_iGain_V2_Audit_Report.pdf | IGainYearnIRS | unmatched — not counted | — | listed in findings files affected | no |
| Hakka_Finance_iGain_V2_Audit_Report.pdf | IGainDelta | unmatched — not counted | — | listed in findings files affected | no |
| PeckShield-Audit-Report-Hakka-3FMutual-v1.0 (1).pdf | 3FMutual | unmatched — not counted | — | — | no |
| PeckShield-Audit-Report-Hakka-3FMutual-v1.0 (1).pdf | InsuranceImprovementProposalProxy | unmatched — not counted | — | — | no |
| PeckShield-Audit-Report-Hakka-3FMutual-v1.0 (1).pdf | Ownable | unmatched — not counted | — | — | no |
| PeckShield-Audit-Report-Hakka-3FMutual-v1.0 (1).pdf | SafeMath | unmatched — not counted | — | — | no |
| PeckShield-Audit-Report-Hakka-3FMutual-v1.0 (1).pdf | Underwriter | unmatched — not counted | — | — | no |
| PeckShield-Audit-Report-Urban-Giggle-v1.0.pdf | HakkaIntelligence | unmatched — not counted | — | — | no |
| PeckShield-Audit-Report-Urban-Giggle-v1.0.pdf | HakkaRewardsVesting | own contract | HakkaRewardsVesting (selected) `0x79eb6f...c55f4a` — deployed 2021-03-02 16:31:52+03 — liveness: live (current_address_book_code)<br>HakkaRewardsVesting (alternative) `0xf4d1f9...5b7977` — deployed 2021-04-17 02:45:52+03 — liveness: live (current_address_book_code) | deployment-date disambiguation: 2021-03-02 was 1d from audit; next candidate 47d; normalized_full_corpus:project_anchor:matcher_anchor | yes |
| PeckShield-Audit-Report-Urban-Giggle-v1.0.pdf | ImpermanentGain | own contract | ImpermanentGain (selected) `0xbf00da...64b6ab` — deployed 2021-01-16 22:54:17+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| PeckShield-Audit-Report-Urban-Giggle-v1.0.pdf | VestingVault | own contract | VestingVault (alternative) `0x51f123...238ed6` — deployed 2020-12-08 18:09:38+03 — liveness: live (current_address_book_code)<br>VestingVault (selected) `0x6dbff2...fa94dc` — deployed 2021-02-26 20:47:58+03 — liveness: live (code_present_context)<br>VestingVault (alternative) `0xec4b77...b8001a` — deployed 2022-01-11 14:34:06+03 — liveness: live (current_address_book_code) | deployment-date disambiguation: 2021-02-26 was 3d from audit; next candidate 83d; normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Smart Contract Security Audit Report - BlackHoleSwap.pdf | GuildBank | own contract | GuildBank (selected) `0x83d0d8...bec8e7` — deployed 2020-08-24 00:30:46+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Smart Contract Security Audit Report - BlackHoleSwap.pdf | Hakka | own contract | Hakka (selected) `0x0e29e5...de3bcd` — deployed 2020-04-14 19:30:41+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Smart Contract Security Audit Report - BlackHoleSwap.pdf | blackholeswapV1 | unmatched — not counted | — | — | no |
| peckshield-audit-report-hakka-blackholeswap-v1.0-p1.pdf | BlackHoleSwap | own contract | blackholeswap (alternative) `0x75192d...34ce7e` — deployed 2021-02-20 18:16:54+03 — liveness: live (code_present_context)<br>blackholeswap (selected) `0x35101c...341935` — deployed 2020-08-16 01:04:07+03 — liveness: live (code_present_context) | deployment-date disambiguation: 2020-08-16 was 16d from audit; next candidate 172d; normalized_full_corpus:project_anchor:matcher_anchor | yes |
| peckshield-audit-report-hakka-blackholeswap-v1.0-p1.pdf | Hakka | own contract | Hakka (selected) `0x0e29e5...de3bcd` — deployed 2020-04-14 19:30:41+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| peckshield-audit-report-hakka-blackholeswap-v1.0-p1.pdf | Ownable.sol | unmatched — not counted | — | — | no |
| peckshield-audit-report-hakka-blackholeswap-v1.0-p1.pdf | SafeMath | unmatched — not counted | — | — | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| bsc | `0x75192d...34ce7e` | blackholeswap | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x1b8874...d77016` | BPool | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xde0231...c2b16d` | Burner | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0x3792ee...5e00bf` | HakkaHarvester | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0x4d5054...291c56` | HakkaHarvester | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0x6a3093...4642c8` | HakkaHarvester | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0x8ba1c3...c53b96` | HakkaHarvester | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0x992c01...ed852c` | HakkaHarvester | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0xcb2131...99888e` | HakkaHarvester | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x0f2fd9...43140b` | HakkaIntelligenceAlpha | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x6b1ecb...c3ff11` | HakkaRewards1 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x6ee668...e52f27` | HakkaRewards2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x3792ee...5e00bf` | HakkaRewards3 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x3bd145...a64645` | HakkaRewards4 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x0aa6c4...d11058` | HakkaRewards5 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xf4d1f9...5b7977` | HakkaRewardsVesting | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0xfd091f...30bd94` | Pot | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xd99588...f15040` | sHakka | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xbdda96...e9dee3` | TFToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x66be1b...c6cb32` | ThreeFMutual | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x51f123...238ed6` | VestingVault | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | `0xec4b77...b8001a` | VestingVault | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 63 |
| upstream | 1 |
| standard_library | 2 |
| needs_review | 14 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 3
- Inherited remapped matches: 0
- Address-book scope dispositions: 11 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 20 unmatched
- Matched-own operational status: 11 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=3, low=1
- Match method counts: temporal_name=4, unique_name=7

Zero-match audit list:

- [2557] Hakka Finance Vault contract wHakka audit.pdf
- [2559] PeckShield-Audit-Report-Hakka-3FMutual-v1.0 (1).pdf
- [14453] audit-reports (GitHub directory)

Fork inheritance lineage and inherited audits are included when available.
