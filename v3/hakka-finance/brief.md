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

- UnnamedContract (`0xae95d3198d602acfb18f9188d733d710e14a27dd`, chain 1)
- UnnamedContract (`0xb8b84ce0cade916988bd129eafd7934ade5fa6a9`, chain 1)
- UnnamedContract (`0x1d1eb8e8293222e1a29d2c0e4ce6c0acfd89aaac`, chain 56)
- UnnamedContract (`0x978338a9d2d0aa2ff388d3dc98b9bf25bff5efb4`, chain 137)
- blackholeswap (`0x35101c731b1548b5e48bb23f99edbc2f5c341935`, chain 1)
- blackholeswap (`0x75192d6f3d51554cc2ee7b40c3aac5f97934ce7e`, chain 56)
- BPool (`0x1b8874baceaafba9ea194a625d12e8b270d77016`, chain 1)
- Burner (`0xde02313f8bf17f31380c63e41cdecee98bc2b16d`, chain 1)
- GnosisSafeProxy (`0xb44c87181fb2ae4a7794a67c833c09e58a46eaa8`, chain 137)
- GuildBank (`0x83d0d842e6db3b020f384a2af11bd14787bec8e7`, chain 1)
- Hakka (`0x0e29e5abbb5fd88e28b2d355774e73bd47de3bcd`, chain 1)
- HakkaHarvester (`0x3792ee68e736b8214d4edc91b1b3340b525e00bf`, chain 56)
- HakkaHarvester (`0x4d5054708982e96f284d02c7a46f31d6f7291c56`, chain 56)
- HakkaHarvester (`0x6a3093dc9097fe54c02ffaeb64b6e3a52f4642c8`, chain 56)
- HakkaHarvester (`0x8ba1c31cb3c51889c5699fb8121e3c01dbc53b96`, chain 56)
- HakkaHarvester (`0x992c0170e5f0352a8af39d95dc15fb5edced852c`, chain 56)
- HakkaHarvester (`0xcb2131c9d1381c38282c006eaa56de26bd99888e`, chain 56)
- HakkaRewards1 (`0x6b1ecbbd69eeaf8d089bdce4daaa4165f8c3ff11`, chain 1)
- HakkaRewards2 (`0x6ee6683cb9b44810369c873679f8073bcbe52f27`, chain 1)
- HakkaRewards3 (`0x3792ee68e736b8214d4edc91b1b3340b525e00bf`, chain 1)
- HakkaRewards4 (`0x3bd145f66203b19ce7bedaac9a8147e08ea64645`, chain 1)
- HakkaRewards5 (`0x0aa6c4ff04e4e6512c5348f4b04685af2cd11058`, chain 1)
- HakkaRewardsVesting (`0xf4d1f9674c8e9f29a69dc2e6f841292e675b7977`, chain 1)
- HakkaRewardsVesting (`0x79eb6f02e9ac26a6fbc4e73dee0b8991d0c55f4a`, chain 56)
- ImpermanentGain (`0xbf00da4ff7d13d678a0e897c683e79e99b64b6ab`, chain 1)
- Pot (`0xfd091f4d523f9741aa0712e57bd590ff2f30bd94`, chain 56)
- sHakka (`0xd9958826bce875a75cc1789d5929459e6ff15040`, chain 1)
- TFToken (`0xbdda9670bc2a672c36cce0102ce8c69b12e9dee3`, chain 1)
- ThreeFMutual (`0x66be1bc6c6af47900bbd4f3711801be6c2c6cb32`, chain 1)
- TokenFactory (`0x47ca2166a5b837e891e6e64e780d1b43fc0a4e95`, chain 137)
- UniswapV2Pair (`0x9c5999653f44672336c2ef0a0008587fa8b9957e`, chain 1)
- VestingVault (`0x51f12323820b3c0077864990d9e6ad9604238ed6`, chain 1)
- VestingVault (`0x6dbff20caff68b99b1e67b50d14a9d7bbdfa94dc`, chain 56)
- VestingVault (`0xec4b77e7369325b52a1f9d1ae080b59954b8001a`, chain 137)

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
| blackholeswap | unknown | project_anchor | own_supporting | 0 | ethereum | unit-387188 | `0x35101c731b1548b5e48bb23f99edbc2f5c341935` | ✅ Audited |
| GuildBank | unknown | project_anchor | own_supporting | 0 | ethereum | unit-387196 | `0x83d0d842e6db3b020f384a2af11bd14787bec8e7` | ✅ Audited |
| Hakka | unknown | project_anchor | own_supporting | 0 | ethereum | unit-387184 | `0x0e29e5abbb5fd88e28b2d355774e73bd47de3bcd` | ✅ Audited |
| HakkaRewardsVesting | unknown | project_anchor | own_supporting | 0 | bsc | unit-387214 | `0x79eb6f02e9ac26a6fbc4e73dee0b8991d0c55f4a` | ✅ Audited |
| ImpermanentGain | unknown | project_anchor | own_supporting | 0 | ethereum | unit-387201 | `0xbf00da4ff7d13d678a0e897c683e79e99b64b6ab` | ✅ Audited |
| ThankYouToken | unknown | project_anchor | own_supporting | 0 | ethereum | unit-387195 | `0x7f8093f5f49a9d7f0334f8017ff777f1893032d5` | ✅ Audited |
| TokenFactory | registry | project_anchor | own_supporting | 0 | polygon | unit-387205 | `0x47ca2166a5b837e891e6e64e780d1b43fc0a4e95` | ✅ Audited |
| VestingVault | operational_periphery | project_anchor | own_supporting | 0 | bsc | unit-387212 | `0x6dbff20caff68b99b1e67b50d14a9d7bbdfa94dc` | ✅ Audited |

### ⚠️ Verified + Unaudited (58)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| ABDKMath64x64 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 3 deployments: ethereum `0xe7e73e8faa16b8bb551567bdd43314009e15724a`; bsc `0x6fa4970ae0a9fb50f7d8026830d2526db7e7e201`; polygon `0x93fff45473205b6dd7df0b92a1c3935d41c6d714` | ⚠️ Unaudited |
| Agency | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7bc360ebd65efa503ff189a0f81f61f85d310ec3` | ⚠️ Unaudited |
| Airdrop | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xda54678fd782a162a2bae0ea9e250a325c4f6de9` | ⚠️ Unaudited |
| bhsAlpha | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x11baffebd829b490cf077ce7ef7700dd3cb1e534` | ⚠️ Unaudited |
| blackholeswap | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 3 deployments: ethereum `0x592ad4f444faa8155cfd946c3c4bed1b6ba76853`; ethereum `0xd1cce7b01f1c814381a7f55921196f9f12e4ebad`; bsc `0x47ca2166a5b837e891e6e64e780d1b43fc0a4e95` | ⚠️ Unaudited |
| blackholeswap | unknown | project_anchor | own_supporting | 0 | bsc | unit-387213 | `0x75192d6f3d51554cc2ee7b40c3aac5f97934ce7e` | ⚠️ Unaudited |
| BPool | core_logic | project_anchor | own_supporting | 0 | ethereum | unit-387186 | `0x1b8874baceaafba9ea194a625d12e8b270d77016` | ⚠️ Unaudited |
| Burner | unknown | project_anchor | own_supporting | 0 | ethereum | unit-387203 | `0xde02313f8bf17f31380c63e41cdecee98bc2b16d` | ⚠️ Unaudited |
| DepositaryReceipt | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x575a7e0fba8357b3061bc6ee2397f17e46dec326` | ⚠️ Unaudited |
| DummyModel | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb8d16160c67b416d0c9c29f179edbcf1b58c1b65` | ⚠️ Unaudited |
| FlashMigrator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x228679770b2d8a281a466765ba55e0dfd8441ae6` | ⚠️ Unaudited |
| FulcrumEmergencyEjection | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 4 deployments: ethereum `0x47ca2166a5b837e891e6e64e780d1b43fc0a4e95`; ethereum `0xb54f0b588a9f2dbe44459ae1fec37d62e50dee41`; ethereum `0xca3b60a6cf9c48eb8c31fa1c13efee576893c499`; ethereum `0xec4b77e7369325b52a1f9d1ae080b59954b8001a` | ⚠️ Unaudited |
| Game | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | 2 deployments: ethereum `0x938c66e7ec8eb3f98dd5203dc03cbdd0e0749999`; polygon `0x6d386a9bef0ad385a9f13ad6bb36280545892b7c` | ⚠️ Unaudited |
| GnosisSafeL2 | governance | project_anchor | own_supporting | 1 | polygon | unit-387219 | `0xb44c87181fb2ae4a7794a67c833c09e58a46eaa8` | ⚠️ Unaudited |
| GuildBank | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x1e20b7d24d429b0de705d3ff8b88ec651d28a935`; ethereum `0xd0533664013a82c31584b7ffdb215139f38ad77a` | ⚠️ Unaudited |
| HakkaHarvester | unknown | project_anchor | own_supporting | 0 | bsc | unit-387209 | `0x3792ee68e736b8214d4edc91b1b3340b525e00bf` | ⚠️ Unaudited |
| HakkaHarvester | unknown | project_anchor | own_supporting | 0 | bsc | unit-387210 | `0x4d5054708982e96f284d02c7a46f31d6f7291c56` | ⚠️ Unaudited |
| HakkaHarvester | unknown | project_anchor | own_supporting | 0 | bsc | unit-387211 | `0x6a3093dc9097fe54c02ffaeb64b6e3a52f4642c8` | ⚠️ Unaudited |
| HakkaHarvester | unknown | project_anchor | own_supporting | 0 | bsc | unit-387215 | `0x8ba1c31cb3c51889c5699fb8121e3c01dbc53b96` | ⚠️ Unaudited |
| HakkaHarvester | unknown | project_anchor | own_supporting | 0 | bsc | unit-387216 | `0x992c0170e5f0352a8af39d95dc15fb5edced852c` | ⚠️ Unaudited |
| HakkaHarvester | unknown | project_anchor | own_supporting | 0 | bsc | unit-387217 | `0xcb2131c9d1381c38282c006eaa56de26bd99888e` | ⚠️ Unaudited |
| HakkaIntelligence | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 9 deployments: bsc `0x0a3e364ee37bac9e6aff9e864e65b4603d5bc5d4`; bsc `0x119220321e4967632eafa002788fecc41ba3a578`; bsc `0x2b46919537f58ee04e04fa5db4170bb4e5090e20`; bsc `0x4eda33ea48052006850966fc1182cf46f325501d`; bsc `0x517ef6281a9b3dc4ef6b0318bc5edfdcf677d29d`; bsc `0xcb118979bbd0c5fd4141df3b73ff1a8ee990c5e2`; bsc `0xd8b3ff98025cf203ba6d7bb2d25dbeef9539e6fb`; polygon `0xe3476ea2a0f98463f1742f8f208a40a8ca8d99bb`; polygon `0xfa9e6187a3c8c7bba7710aa8d8c22702865f69d3` | ⚠️ Unaudited |
| HakkaIntelligenceAlpha | unknown | project_anchor | own_supporting | 0 | ethereum | unit-387185 | `0x0f2fd95c221770d108acd5363d25b06bdc43140b` | ⚠️ Unaudited |
| HakkaRewards1 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x047c216ebe3fa55544e04a72264e1016531a6d6f` | ⚠️ Unaudited |
| HakkaRewards1 | unknown | project_anchor | own_supporting | 0 | ethereum | unit-387193 | `0x6b1ecbbd69eeaf8d089bdce4daaa4165f8c3ff11` | ⚠️ Unaudited |
| HakkaRewards2 | unknown | project_anchor | own_supporting | 0 | ethereum | unit-387194 | `0x6ee6683cb9b44810369c873679f8073bcbe52f27` | ⚠️ Unaudited |
| HakkaRewards2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdfe604f4e08f51fae0aa2eb3f4d8d659e618b16a` | ⚠️ Unaudited |
| HakkaRewards3 | unknown | project_anchor | own_supporting | 0 | ethereum | unit-387189 | `0x3792ee68e736b8214d4edc91b1b3340b525e00bf` | ⚠️ Unaudited |
| HakkaRewards4 | unknown | project_anchor | own_supporting | 0 | ethereum | unit-387190 | `0x3bd145f66203b19ce7bedaac9a8147e08ea64645` | ⚠️ Unaudited |
| HakkaRewards5 | unknown | project_anchor | own_supporting | 0 | ethereum | unit-387183 | `0x0aa6c4ff04e4e6512c5348f4b04685af2cd11058` | ⚠️ Unaudited |
| HakkaRewardsVesting | operational_periphery | project_anchor | own_supporting | 0 | ethereum | unit-387204 | `0xf4d1f9674c8e9f29a69dc2e6f841292e675b7977` | ⚠️ Unaudited |
| HakkaRewardsVesting | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | 20 deployments: ethereum `0x38ddc71bc1bfe2bc0d3c51e863a7ec3c6a9826ea`; ethereum `0x735a80510536a9a18c8824f40dbc92824640c95a`; bsc `0x4e353c2ccc7dfb6a4d3ea7802ddeba226574702e`; bsc `0x64a7b6f1a014156415b214e14eb7477c3a3aceae`; polygon `0x022977346c7fbbe7c004cbb77e0583c1759e3bdc`; polygon `0x25a1f8f0b666e5c17e91cf9f5322aad0780b588e`; polygon `0x3d14c8cee44183232805a3e933937e35a8be8114`; polygon `0x459fb73f0b9be0caa85fcbdf151eab2d1269823a`; polygon `0x4d5054708982e96f284d02c7a46f31d6f7291c56`; polygon `0x51de1eef029b5cc1ef359e62aa98101f56f29be6`; polygon `0x5dd2777c42c34ed155fd3cc063a956d03f92448f`; polygon `0x6fa4970ae0a9fb50f7d8026830d2526db7e7e201`; polygon `0x87c2829ccd44d2a96e76e1d3bf56d504d5cb1536`; polygon `0x9933ad4d38702cdc28c5db2f421f1f02cf530780`; polygon `0xb9407bd5086b77e5fbd2e8a2c53778ccfac356e4`; polygon `0xc231f05dcaf9a87f1706fc8c3b54ba8fc3b05ee1`; polygon `0xc7596671f9aca915b9c73c428f264f9aa2405db3`; polygon `0xda54678fd782a162a2bae0ea9e250a325c4f6de9`; polygon `0xf55eabb6b9460badb569b5bff0ad0efdf2264d5a`; polygon `0xf8b5351f4bcbf6321cab7911d775da3fac3b5410` | ⚠️ Unaudited |
| HakkaVotingPower | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6aec511339052dae3dc7b1ba0f4aa5f0b171d04d` | ⚠️ Unaudited |
| IGainDelta | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xedf19abb3c9459f29d8baf27d633d912b9c33567` | ⚠️ Unaudited |
| iGainFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | 2 deployments: polygon `0x3234142ad5e32c38fefaaa6e7714495f56147d51`; polygon `0xc28b6ead7145218cb2b98d7b07e07c67f1ddf832` | ⚠️ Unaudited |
| IGainIL | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xe69cb8e21d20b196717072364718812dc0bf38bb` | ⚠️ Unaudited |
| iGainLPProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | 7 deployments: polygon `0x1e86c712cc92ebd1304dcefba5f2fdf99bc99087`; polygon `0x5268d6559ac3ce7c5979777523f62eb1c9adbd83`; polygon `0x64e99c3226cfbd93b16ea13f1c8b102919221d06`; polygon `0x7457a1c2ba37d54277bd10d9f5b89675466c706c`; polygon `0x7f82f36e8e0a95eaf73219f4085245f0bbb177ae`; polygon `0xdaff37c6397f1916af8352fae36749d88e0b298e`; polygon `0xecfbaf0a61ab6fd205be472231a876f685425f97` | ⚠️ Unaudited |
| ImpermanentGain | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xc9d710cde965521944bcb4d4ef73ada6113fae27` | ⚠️ Unaudited |
| InsuranceImprovementProposal | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x1b092450998c7e7eee91678a1d9cd6b7c7d44308`; ethereum `0x616305e016b0539b8a550c9ecafe66bdb88956b2` | ⚠️ Unaudited |
| InsuranceImprovementProposalProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x5dd2777c42c34ed155fd3cc063a956d03f92448f`; ethereum `0x9933ad4d38702cdc28c5db2f421f1f02cf530780` | ⚠️ Unaudited |
| keeper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | 2 deployments: bsc `0x51f12323820b3c0077864990d9e6ad9604238ed6`; polygon `0x130047c65a24636f82913f426ea7a8d9bdfc873e` | ⚠️ Unaudited |
| Pot | unknown | project_anchor | own_supporting | 0 | bsc | unit-387218 | `0xfd091f4d523f9741aa0712e57bd590ff2f30bd94` | ⚠️ Unaudited |
| proxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | 16 deployments: polygon `0x0a74c392c47bbdd9471763b56a09854c9dfa14d9`; polygon `0x3a6734a7654007aa0cb36574ecae2fa8014bec3d`; polygon `0x3d5fd76d445fac4244fa62d93365c4c116a47291`; polygon `0x66be1bc6c6af47900bbd4f3711801be6c2c6cb32`; polygon `0x7e628e39f47f7dd1640be630766ac1a1d67d7192`; polygon `0x83cd28501f1079c7647471a7da7619fafd29e2af`; polygon `0x8677653f5c35562bb15327899000f34b4d7bf99a`; polygon `0x8a6f73c9d7cbc3ebd35dfd613b57eea87f9515ab`; polygon `0x9ea10c3f3b8f4d89593ed129b43ba0a598c4c25b`; polygon `0xaafe8143f0421afe34e131c66641bdee5af49b8d`; polygon `0xc40705c809bc6bb783c8bad4ba807fe453cf1483`; polygon `0xdf5d6754598d14500fef5831c0faa40a0af6eb55`; polygon `0xe74bc70baa2d23eb3758a3b12c2ccad16882bcc5`; polygon `0xea6cb5e80a3f8b07fcc76d7dad2f6f794185d293`; polygon `0xf543aa9612282b044cd71a6ee4cb816c45aaa97d`; polygon `0xfd091f4d523f9741aa0712e57bd590ff2f30bd94` | ⚠️ Unaudited |
| registry | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xc6d4910f9129feffdd4416a4e2cd4f44016f16ce` | ⚠️ Unaudited |
| sHakka | unknown | project_anchor | own_supporting | 0 | ethereum | unit-387202 | `0xd9958826bce875a75cc1789d5929459e6ff15040` | ⚠️ Unaudited |
| sHakka | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 3 deployments: ethereum `0xb925863a15ebdeae1a638bf2b6fd00d4db897a62`; bsc `0x51de1eef029b5cc1ef359e62aa98101f56f29be6`; polygon `0x7f8093f5f49a9d7f0334f8017ff777f1893032d5` | ⚠️ Unaudited |
| SquidFarmer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4eda33ea48052006850966fc1182cf46f325501d` | ⚠️ Unaudited |
| stakingRateModel | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 4 deployments: ethereum `0x3474b74139c192d0781812ca70cc410d19cb6a2d`; ethereum `0x6d04ba022718fd6a3585d1d0b334608c48c741b2`; bsc `0x9155e3be31a527b2e22673541409d8ffff4389ca`; polygon `0xfbf484b9727ac6771fe921ba79a8163ccb83571c` | ⚠️ Unaudited |
| tCDP | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xda4c9ee8373fd1095379a3dd457a0c78968aaf03` | ⚠️ Unaudited |
| TFToken | token | project_anchor | own_supporting | 0 | ethereum | unit-387200 | `0xbdda9670bc2a672c36cce0102ce8c69b12e9dee3` | ⚠️ Unaudited |
| ThreeFMutual | unknown | project_anchor | own_supporting | 0 | ethereum | unit-387192 | `0x66be1bc6c6af47900bbd4f3711801be6c2c6cb32` | ⚠️ Unaudited |
| TokenFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 2 deployments: ethereum `0x2efc352936d5c52b3ee061367c834bf768f11715`; bsc `0x1794ad747340ccf7ae9d7d61c728aa7be1822606` | ⚠️ Unaudited |
| Underwriter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe58cde3cbeecc8d9306f482729084b909afa2357` | ⚠️ Unaudited |
| UniswapV2Pair | unknown | project_anchor | own_supporting | 0 | ethereum | unit-387197 | `0x9c5999653f44672336c2ef0a0008587fa8b9957e` | ⚠️ Unaudited |
| VestingVault | operational_periphery | project_anchor | own_supporting | 0 | ethereum | unit-387191 | `0x51f12323820b3c0077864990d9e6ad9604238ed6` | ⚠️ Unaudited |
| VestingVault | operational_periphery | project_anchor | own_supporting | 0 | polygon | unit-387207 | `0xec4b77e7369325b52a1f9d1ae080b59954b8001a` | ⚠️ Unaudited |
| votingPowerViewer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x07224029d06a6973c93480a251862861416c583c` | ⚠️ Unaudited |
| WorldCupOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | 8 deployments: polygon `0x08639094885d654d1b6f45f3dc43055a4c1c0d96`; polygon `0x0d8042ad5b9e7f6275e46e7bec2a342e2cdb7dfe`; polygon `0x2f5b7d30116c04015303d5fd846b88df1bb96d0b`; polygon `0x45544d2f3ccc5c0697315cdf2a22bf8d52db6ff6`; polygon `0x576968dd6c21ab898e07bb2262dbd60b1cc2e374`; polygon `0xad9cadac49d3416e63c9a7152399e98ee63e226c`; polygon `0xd02ef1c56c1f2f054751b914c0e810a08f9a38cc`; polygon `0xe88147ced70a20e87e70ba696ff7c0c238e20298` | ⚠️ Unaudited |

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
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0a3e364ee37bac9e6aff9e864e65b4603d5bc5d4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5113dbe8c1fa6e5397f0b3b00e890e7fa1139089` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-387198 | `0xae95d3198d602acfb18f9188d733d710e14a27dd` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-387199 | `0xb8b84ce0cade916988bd129eafd7934ade5fa6a9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc2f08a9e8ce03b7f2f706a97b7cd8472b60fa7b5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x15fb145319351458ab5d608c705cf3a0adf49064` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-387208 | `0x1d1eb8e8293222e1a29d2c0e4ce6c0acfd89aaac` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x2d4eb3b4882b2b8ac33eec408ded865f24652faa` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x5113dbe8c1fa6e5397f0b3b00e890e7fa1139089` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x7a602e72e1b94cf3fcd85a0f9bdb25f3c86a3ba2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x350ebf46bd072b1a92cdfa97cfda5a29e90a39ad` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-387206 | `0x978338a9d2d0aa2ff388d3dc98b9bf25bff5efb4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xc441d00a10ec8efece3fc3308f42c036ac268f3b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xda40f33e32418048d6088b07f057348125251a6b` | ❓ Unverified |

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
| Hakka Finance Urban Giggle Audit.pdf | ThankYouToken | own contract | ThankYouToken (selected) `0x7f8093f5f49a9d7f0334f8017ff777f1893032d5` — deployed 2020-11-19 20:47:28+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Hakka Finance Urban Giggle Audit.pdf | VestingVault | own contract | VestingVault (alternative) `0x51f12323820b3c0077864990d9e6ad9604238ed6` — deployed 2020-12-08 18:09:38+03 — liveness: live (current_address_book_code)<br>VestingVault (selected) `0x6dbff20caff68b99b1e67b50d14a9d7bbdfa94dc` — deployed 2021-02-26 20:47:58+03 — liveness: live (code_present_context)<br>VestingVault (alternative) `0xec4b77e7369325b52a1f9d1ae080b59954b8001a` — deployed 2022-01-11 14:34:06+03 — liveness: live (current_address_book_code) | deployment-date disambiguation: 2021-02-26 was 56d from audit; next candidate 136d; normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Hakka Finance Urban Giggle Audit.pdf | VestingRewardContract | unmatched — not counted | — | mentioned in Overview as a product: Vesting Reward Contract | no |
| Hakka Finance Urban Giggle Audit.pdf | HakkaIntelligence | unmatched — not counted | — | mentioned in Overview as a product: Hakka Intelligence | no |
| Hakka Finance Urban Giggle Audit.pdf | ImpermanentGain | own contract | ImpermanentGain (selected) `0xbf00da4ff7d13d678a0e897c683e79e99b64b6ab` — deployed 2021-01-16 22:54:17+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Hakka Finance Vault contract wHakka audit.pdf | wHakka | unmatched — not counted | — | listed in scope | no |
| Hakka Finance Vault contract wHakka audit.pdf | Ownable | unmatched — not counted | — | referenced in findings | no |
| Hakka Finance Vault contract wHakka audit.pdf | ERC20 | unmatched — not counted | — | referenced in findings | no |
| Hakka Finance Vault contract wHakka audit.pdf | IERC20 | unmatched — not counted | — | referenced in findings | no |
| Hakka_Finance_iGain_V2_Audit_Report.pdf | IGainBase | unmatched — not counted | — | mentioned as base contract in overview | no |
| Hakka_Finance_iGain_V2_Audit_Report.pdf | IGainIL | unmatched — not counted | — | mentioned as contract inheriting IGainBase | no |
| Hakka_Finance_iGain_V2_Audit_Report.pdf | IGainAAVEIRS | unmatched — not counted | — | listed in findings files affected | no |
| Hakka_Finance_iGain_V2_Audit_Report.pdf | TokenFactory | own contract | TokenFactory (selected) `0x47ca2166a5b837e891e6e64e780d1b43fc0a4e95` — deployed 2022-01-11 18:37:20+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Hakka_Finance_iGain_V2_Audit_Report.pdf | IGainYearnIRS | unmatched — not counted | — | listed in findings files affected | no |
| Hakka_Finance_iGain_V2_Audit_Report.pdf | IGainDelta | unmatched — not counted | — | listed in findings files affected | no |
| PeckShield-Audit-Report-Hakka-3FMutual-v1.0 (1).pdf | 3FMutual | unmatched — not counted | — | — | no |
| PeckShield-Audit-Report-Hakka-3FMutual-v1.0 (1).pdf | InsuranceImprovementProposalProxy | unmatched — not counted | — | — | no |
| PeckShield-Audit-Report-Hakka-3FMutual-v1.0 (1).pdf | Ownable | unmatched — not counted | — | — | no |
| PeckShield-Audit-Report-Hakka-3FMutual-v1.0 (1).pdf | SafeMath | unmatched — not counted | — | — | no |
| PeckShield-Audit-Report-Hakka-3FMutual-v1.0 (1).pdf | Underwriter | unmatched — not counted | — | — | no |
| PeckShield-Audit-Report-Urban-Giggle-v1.0.pdf | HakkaIntelligence | unmatched — not counted | — | — | no |
| PeckShield-Audit-Report-Urban-Giggle-v1.0.pdf | HakkaRewardsVesting | own contract | HakkaRewardsVesting (selected) `0x79eb6f02e9ac26a6fbc4e73dee0b8991d0c55f4a` — deployed 2021-03-02 16:31:52+03 — liveness: live (current_address_book_code)<br>HakkaRewardsVesting (alternative) `0xf4d1f9674c8e9f29a69dc2e6f841292e675b7977` — deployed 2021-04-17 02:45:52+03 — liveness: live (current_address_book_code) | deployment-date disambiguation: 2021-03-02 was 1d from audit; next candidate 47d; normalized_full_corpus:project_anchor:matcher_anchor | yes |
| PeckShield-Audit-Report-Urban-Giggle-v1.0.pdf | ImpermanentGain | own contract | ImpermanentGain (selected) `0xbf00da4ff7d13d678a0e897c683e79e99b64b6ab` — deployed 2021-01-16 22:54:17+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| PeckShield-Audit-Report-Urban-Giggle-v1.0.pdf | VestingVault | own contract | VestingVault (alternative) `0x51f12323820b3c0077864990d9e6ad9604238ed6` — deployed 2020-12-08 18:09:38+03 — liveness: live (current_address_book_code)<br>VestingVault (selected) `0x6dbff20caff68b99b1e67b50d14a9d7bbdfa94dc` — deployed 2021-02-26 20:47:58+03 — liveness: live (code_present_context)<br>VestingVault (alternative) `0xec4b77e7369325b52a1f9d1ae080b59954b8001a` — deployed 2022-01-11 14:34:06+03 — liveness: live (current_address_book_code) | deployment-date disambiguation: 2021-02-26 was 3d from audit; next candidate 83d; normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Smart Contract Security Audit Report - BlackHoleSwap.pdf | GuildBank | own contract | GuildBank (selected) `0x83d0d842e6db3b020f384a2af11bd14787bec8e7` — deployed 2020-08-24 00:30:46+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Smart Contract Security Audit Report - BlackHoleSwap.pdf | Hakka | own contract | Hakka (selected) `0x0e29e5abbb5fd88e28b2d355774e73bd47de3bcd` — deployed 2020-04-14 19:30:41+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Smart Contract Security Audit Report - BlackHoleSwap.pdf | blackholeswapV1 | unmatched — not counted | — | — | no |
| peckshield-audit-report-hakka-blackholeswap-v1.0-p1.pdf | BlackHoleSwap | own contract | blackholeswap (alternative) `0x75192d6f3d51554cc2ee7b40c3aac5f97934ce7e` — deployed 2021-02-20 18:16:54+03 — liveness: live (code_present_context)<br>blackholeswap (selected) `0x35101c731b1548b5e48bb23f99edbc2f5c341935` — deployed 2020-08-16 01:04:07+03 — liveness: live (code_present_context) | deployment-date disambiguation: 2020-08-16 was 16d from audit; next candidate 172d; normalized_full_corpus:project_anchor:matcher_anchor | yes |
| peckshield-audit-report-hakka-blackholeswap-v1.0-p1.pdf | Hakka | own contract | Hakka (selected) `0x0e29e5abbb5fd88e28b2d355774e73bd47de3bcd` — deployed 2020-04-14 19:30:41+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| peckshield-audit-report-hakka-blackholeswap-v1.0-p1.pdf | Ownable.sol | unmatched — not counted | — | — | no |
| peckshield-audit-report-hakka-blackholeswap-v1.0-p1.pdf | SafeMath | unmatched — not counted | — | — | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| bsc | `0x75192d6f3d51554cc2ee7b40c3aac5f97934ce7e` | blackholeswap | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x1b8874baceaafba9ea194a625d12e8b270d77016` | BPool | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xde02313f8bf17f31380c63e41cdecee98bc2b16d` | Burner | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0x3792ee68e736b8214d4edc91b1b3340b525e00bf` | HakkaHarvester | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0x4d5054708982e96f284d02c7a46f31d6f7291c56` | HakkaHarvester | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0x6a3093dc9097fe54c02ffaeb64b6e3a52f4642c8` | HakkaHarvester | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0x8ba1c31cb3c51889c5699fb8121e3c01dbc53b96` | HakkaHarvester | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0x992c0170e5f0352a8af39d95dc15fb5edced852c` | HakkaHarvester | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0xcb2131c9d1381c38282c006eaa56de26bd99888e` | HakkaHarvester | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x0f2fd95c221770d108acd5363d25b06bdc43140b` | HakkaIntelligenceAlpha | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x6b1ecbbd69eeaf8d089bdce4daaa4165f8c3ff11` | HakkaRewards1 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x6ee6683cb9b44810369c873679f8073bcbe52f27` | HakkaRewards2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x3792ee68e736b8214d4edc91b1b3340b525e00bf` | HakkaRewards3 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x3bd145f66203b19ce7bedaac9a8147e08ea64645` | HakkaRewards4 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x0aa6c4ff04e4e6512c5348f4b04685af2cd11058` | HakkaRewards5 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xf4d1f9674c8e9f29a69dc2e6f841292e675b7977` | HakkaRewardsVesting | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0xfd091f4d523f9741aa0712e57bd590ff2f30bd94` | Pot | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xd9958826bce875a75cc1789d5929459e6ff15040` | sHakka | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xbdda9670bc2a672c36cce0102ce8c69b12e9dee3` | TFToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x66be1bc6c6af47900bbd4f3711801be6c2c6cb32` | ThreeFMutual | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x51f12323820b3c0077864990d9e6ad9604238ed6` | VestingVault | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | `0xec4b77e7369325b52a1f9d1ae080b59954b8001a` | VestingVault | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

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
