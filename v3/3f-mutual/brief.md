# Agentic Audit Brief: 3F Mutual

## Export Authority

- Production state: **published scope**
- Raw selected rows: 0 across 0 audit(s)
- Eligible audit results: 2 (0 matched; 2 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e9e09d06b414f9cd852c36a58d42ce16279465f2d9791cd2a8178f3f54b89ecd`

## Project Overview

- Project: 3F Mutual (`3f-mutual`)
- Website: [https://3fmutual.com/](https://3fmutual.com/)
- Lifecycle: active (Tier 0, 67.4% below peak)
- Generated: 2026-07-15T18:30:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: bsc, ethereum, polygon
- Contract surface: 64 unique implementations (73 raw deployments)
- Coverage basis: 0/16 confirmed own live verified implementations (0.0%); conservative 0.0% with 0 needs-review implementation(s)
- DeFi Llama TVL: $3,010,576.51
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for 3F Mutual. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 16 contract row(s) across bsc, ethereum, polygon. Structural roles: 12 core, 2 supporting, 2 unclassified. No upgradeable pattern was identified in these rows.

## Logic Topography

- Exact-run contract rows: 16
- Structural roles: core (12), supporting (2), unclassified (2)
- Contract kinds: contract (16)
- Detected standards: ownable (6), erc20 (4)
- Frameworks: openzeppelin (13)
- Upgradeable-pattern rows: 0

## Fork Analysis

0 of 36 contracts are derived from known codebases. 36 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0x1b8874baceaafba9ea194a625d12e8b270d77016`, chain 1)
- UnnamedContract (`0x9c5999653f44672336c2ef0a0008587fa8b9957e`, chain 1)
- UnnamedContract (`0xae95d3198d602acfb18f9188d733d710e14a27dd`, chain 1)
- UnnamedContract (`0xb8b84ce0cade916988bd129eafd7934ade5fa6a9`, chain 1)
- UnnamedContract (`0xde02313f8bf17f31380c63e41cdecee98bc2b16d`, chain 1)
- UnnamedContract (`0x1d1eb8e8293222e1a29d2c0e4ce6c0acfd89aaac`, chain 56)
- UnnamedContract (`0x3792ee68e736b8214d4edc91b1b3340b525e00bf`, chain 56)
- UnnamedContract (`0x4d5054708982e96f284d02c7a46f31d6f7291c56`, chain 56)
- UnnamedContract (`0x6a3093dc9097fe54c02ffaeb64b6e3a52f4642c8`, chain 56)
- UnnamedContract (`0x6dbff20caff68b99b1e67b50d14a9d7bbdfa94dc`, chain 56)
- UnnamedContract (`0x75192d6f3d51554cc2ee7b40c3aac5f97934ce7e`, chain 56)
- UnnamedContract (`0x79eb6f02e9ac26a6fbc4e73dee0b8991d0c55f4a`, chain 56)
- UnnamedContract (`0x8ba1c31cb3c51889c5699fb8121e3c01dbc53b96`, chain 56)
- UnnamedContract (`0x992c0170e5f0352a8af39d95dc15fb5edced852c`, chain 56)
- UnnamedContract (`0xcb2131c9d1381c38282c006eaa56de26bd99888e`, chain 56)
- UnnamedContract (`0xfd091f4d523f9741aa0712e57bd590ff2f30bd94`, chain 56)
- UnnamedContract (`0x47ca2166a5b837e891e6e64e780d1b43fc0a4e95`, chain 137)
- UnnamedContract (`0x978338a9d2d0aa2ff388d3dc98b9bf25bff5efb4`, chain 137)
- UnnamedContract (`0xb44c87181fb2ae4a7794a67c833c09e58a46eaa8`, chain 137)
- UnnamedContract (`0xec4b77e7369325b52a1f9d1ae080b59954b8001a`, chain 137)
- blackholeswap (`0x35101c731b1548b5e48bb23f99edbc2f5c341935`, chain 1)
- GuildBank (`0x83d0d842e6db3b020f384a2af11bd14787bec8e7`, chain 1)
- Hakka (`0x0e29e5abbb5fd88e28b2d355774e73bd47de3bcd`, chain 1)
- HakkaIntelligenceAlpha (`0x0f2fd95c221770d108acd5363d25b06bdc43140b`, chain 1)
- HakkaRewards1 (`0x6b1ecbbd69eeaf8d089bdce4daaa4165f8c3ff11`, chain 1)
- HakkaRewards2 (`0x6ee6683cb9b44810369c873679f8073bcbe52f27`, chain 1)
- HakkaRewards3 (`0x3792ee68e736b8214d4edc91b1b3340b525e00bf`, chain 1)
- HakkaRewards4 (`0x3bd145f66203b19ce7bedaac9a8147e08ea64645`, chain 1)
- HakkaRewards5 (`0x0aa6c4ff04e4e6512c5348f4b04685af2cd11058`, chain 1)
- HakkaRewardsVesting (`0xf4d1f9674c8e9f29a69dc2e6f841292e675b7977`, chain 1)
- ImpermanentGain (`0xbf00da4ff7d13d678a0e897c683e79e99b64b6ab`, chain 1)
- sHakka (`0xd9958826bce875a75cc1789d5929459e6ff15040`, chain 1)
- TFToken (`0xbdda9670bc2a672c36cce0102ce8c69b12e9dee3`, chain 1)
- ThankYouToken (`0x7f8093f5f49a9d7f0334f8017ff777f1893032d5`, chain 1)
- ThreeFMutual (`0x66be1bc6c6af47900bbd4f3711801be6c2c6cb32`, chain 1)
- VestingVault (`0x51f12323820b3c0077864990d9e6ad9604238ed6`, chain 1)

## Contract Surface Quality

- Logic-topography rows: 16; live-surface rows included: 16 (16 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 36/37 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 0/16 (0.0%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 36 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 28 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 0
- Confirmed-live implementations: 36 of 64 unique; 28 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 0/41
- Verified + Unaudited implementations: 41
- Verified by bytecode match: 0
- Unverified implementations: 23
- Unique implementations: 64
- Raw deployments: 73
- Audits discovered: 1 (1 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2020-09 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 1 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (41)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| ABDKMath64x64 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe7e73e8faa16b8bb551567bdd43314009e15724a` | ⚠️ Unaudited |
| Agency | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7bc360ebd65efa503ff189a0f81f61f85d310ec3` | ⚠️ Unaudited |
| Airdrop | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xda54678fd782a162a2bae0ea9e250a325c4f6de9` | ⚠️ Unaudited |
| bhsAlpha | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x11baffebd829b490cf077ce7ef7700dd3cb1e534` | ⚠️ Unaudited |
| blackholeswap | unknown | project_anchor | own_supporting | 0 | ethereum | unit-378321 | `0x35101c731b1548b5e48bb23f99edbc2f5c341935` | ⚠️ Unaudited |
| blackholeswap | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x592ad4f444faa8155cfd946c3c4bed1b6ba76853`; ethereum `0xd1cce7b01f1c814381a7f55921196f9f12e4ebad` | ⚠️ Unaudited |
| DepositaryReceipt | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x575a7e0fba8357b3061bc6ee2397f17e46dec326` | ⚠️ Unaudited |
| DummyModel | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb8d16160c67b416d0c9c29f179edbcf1b58c1b65` | ⚠️ Unaudited |
| FlashMigrator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x228679770b2d8a281a466765ba55e0dfd8441ae6` | ⚠️ Unaudited |
| FulcrumEmergencyEjection | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 4 deployments: ethereum `0x47ca2166a5b837e891e6e64e780d1b43fc0a4e95`; ethereum `0xb54f0b588a9f2dbe44459ae1fec37d62e50dee41`; ethereum `0xca3b60a6cf9c48eb8c31fa1c13efee576893c499`; ethereum `0xec4b77e7369325b52a1f9d1ae080b59954b8001a` | ⚠️ Unaudited |
| Game | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x938c66e7ec8eb3f98dd5203dc03cbdd0e0749999` | ⚠️ Unaudited |
| GuildBank | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x1e20b7d24d429b0de705d3ff8b88ec651d28a935`; ethereum `0xd0533664013a82c31584b7ffdb215139f38ad77a` | ⚠️ Unaudited |
| GuildBank | unknown | project_anchor | own_supporting | 0 | ethereum | unit-378329 | `0x83d0d842e6db3b020f384a2af11bd14787bec8e7` | ⚠️ Unaudited |
| Hakka | unknown | project_anchor | own_supporting | 0 | ethereum | unit-378317 | `0x0e29e5abbb5fd88e28b2d355774e73bd47de3bcd` | ⚠️ Unaudited |
| HakkaIntelligenceAlpha | unknown | project_anchor | own_supporting | 0 | ethereum | unit-378318 | `0x0f2fd95c221770d108acd5363d25b06bdc43140b` | ⚠️ Unaudited |
| HakkaRewards1 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x047c216ebe3fa55544e04a72264e1016531a6d6f` | ⚠️ Unaudited |
| HakkaRewards1 | unknown | project_anchor | own_supporting | 0 | ethereum | unit-378326 | `0x6b1ecbbd69eeaf8d089bdce4daaa4165f8c3ff11` | ⚠️ Unaudited |
| HakkaRewards2 | unknown | project_anchor | own_supporting | 0 | ethereum | unit-378327 | `0x6ee6683cb9b44810369c873679f8073bcbe52f27` | ⚠️ Unaudited |
| HakkaRewards2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdfe604f4e08f51fae0aa2eb3f4d8d659e618b16a` | ⚠️ Unaudited |
| HakkaRewards3 | unknown | project_anchor | own_supporting | 0 | ethereum | unit-378322 | `0x3792ee68e736b8214d4edc91b1b3340b525e00bf` | ⚠️ Unaudited |
| HakkaRewards4 | unknown | project_anchor | own_supporting | 0 | ethereum | unit-378323 | `0x3bd145f66203b19ce7bedaac9a8147e08ea64645` | ⚠️ Unaudited |
| HakkaRewards5 | unknown | project_anchor | own_supporting | 0 | ethereum | unit-378316 | `0x0aa6c4ff04e4e6512c5348f4b04685af2cd11058` | ⚠️ Unaudited |
| HakkaRewardsVesting | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x38ddc71bc1bfe2bc0d3c51e863a7ec3c6a9826ea`; ethereum `0x735a80510536a9a18c8824f40dbc92824640c95a` | ⚠️ Unaudited |
| HakkaRewardsVesting | operational_periphery | project_anchor | own_supporting | 0 | ethereum | unit-378337 | `0xf4d1f9674c8e9f29a69dc2e6f841292e675b7977` | ⚠️ Unaudited |
| HakkaVotingPower | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6aec511339052dae3dc7b1ba0f4aa5f0b171d04d` | ⚠️ Unaudited |
| ImpermanentGain | unknown | project_anchor | own_supporting | 0 | ethereum | unit-378334 | `0xbf00da4ff7d13d678a0e897c683e79e99b64b6ab` | ⚠️ Unaudited |
| InsuranceImprovementProposal | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x1b092450998c7e7eee91678a1d9cd6b7c7d44308`; ethereum `0x616305e016b0539b8a550c9ecafe66bdb88956b2` | ⚠️ Unaudited |
| InsuranceImprovementProposalProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x5dd2777c42c34ed155fd3cc063a956d03f92448f`; ethereum `0x9933ad4d38702cdc28c5db2f421f1f02cf530780` | ⚠️ Unaudited |
| sHakka | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb925863a15ebdeae1a638bf2b6fd00d4db897a62` | ⚠️ Unaudited |
| sHakka | unknown | project_anchor | own_supporting | 0 | ethereum | unit-378335 | `0xd9958826bce875a75cc1789d5929459e6ff15040` | ⚠️ Unaudited |
| SquidFarmer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4eda33ea48052006850966fc1182cf46f325501d` | ⚠️ Unaudited |
| stakingRateModel | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x3474b74139c192d0781812ca70cc410d19cb6a2d`; ethereum `0x6d04ba022718fd6a3585d1d0b334608c48c741b2` | ⚠️ Unaudited |
| tCDP | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xda4c9ee8373fd1095379a3dd457a0c78968aaf03` | ⚠️ Unaudited |
| TFToken | token | project_anchor | own_supporting | 0 | ethereum | unit-378333 | `0xbdda9670bc2a672c36cce0102ce8c69b12e9dee3` | ⚠️ Unaudited |
| ThankYouToken | unknown | project_anchor | own_supporting | 0 | ethereum | unit-378328 | `0x7f8093f5f49a9d7f0334f8017ff777f1893032d5` | ⚠️ Unaudited |
| ThreeFMutual | unknown | project_anchor | own_supporting | 0 | ethereum | unit-378325 | `0x66be1bc6c6af47900bbd4f3711801be6c2c6cb32` | ⚠️ Unaudited |
| TokenFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2efc352936d5c52b3ee061367c834bf768f11715` | ⚠️ Unaudited |
| Underwriter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe58cde3cbeecc8d9306f482729084b909afa2357` | ⚠️ Unaudited |
| Vat | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x35d1b3f3d7966a1dfe207aa4514c12a259a0492b` | ⚠️ Unaudited |
| VestingVault | operational_periphery | project_anchor | own_supporting | 0 | ethereum | unit-378324 | `0x51f12323820b3c0077864990d9e6ad9604238ed6` | ⚠️ Unaudited |
| votingPowerViewer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x07224029d06a6973c93480a251862861416c583c` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (23)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0a3e364ee37bac9e6aff9e864e65b4603d5bc5d4` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-378319 | `0x1b8874baceaafba9ea194a625d12e8b270d77016` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5113dbe8c1fa6e5397f0b3b00e890e7fa1139089` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-378330 | `0x9c5999653f44672336c2ef0a0008587fa8b9957e` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-378331 | `0xae95d3198d602acfb18f9188d733d710e14a27dd` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-378332 | `0xb8b84ce0cade916988bd129eafd7934ade5fa6a9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc2f08a9e8ce03b7f2f706a97b7cd8472b60fa7b5` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-378336 | `0xde02313f8bf17f31380c63e41cdecee98bc2b16d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-378342 | `0x1d1eb8e8293222e1a29d2c0e4ce6c0acfd89aaac` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-378343 | `0x3792ee68e736b8214d4edc91b1b3340b525e00bf` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-378344 | `0x4d5054708982e96f284d02c7a46f31d6f7291c56` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-378345 | `0x6a3093dc9097fe54c02ffaeb64b6e3a52f4642c8` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-378346 | `0x6dbff20caff68b99b1e67b50d14a9d7bbdfa94dc` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-378347 | `0x75192d6f3d51554cc2ee7b40c3aac5f97934ce7e` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-378348 | `0x79eb6f02e9ac26a6fbc4e73dee0b8991d0c55f4a` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-378349 | `0x8ba1c31cb3c51889c5699fb8121e3c01dbc53b96` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-378350 | `0x992c0170e5f0352a8af39d95dc15fb5edced852c` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-378351 | `0xcb2131c9d1381c38282c006eaa56de26bd99888e` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-378352 | `0xfd091f4d523f9741aa0712e57bd590ff2f30bd94` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-378338 | `0x47ca2166a5b837e891e6e64e780d1b43fc0a4e95` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-378339 | `0x978338a9d2d0aa2ff388d3dc98b9bf25bff5efb4` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-378340 | `0xb44c87181fb2ae4a7794a67c833c09e58a46eaa8` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-378341 | `0xec4b77e7369325b52a1f9d1ae080b59954b8001a` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [PeckShield-Audit-Report-Hakka-3FMutual-v1.0 (1).pdf (also discovered via alternate URL)](https://raw.githubusercontent.com/hakkafinance/audit-reports/main/PeckShield-Audit-Report-Hakka-3FMutual-v1.0%20(1).pdf) | PeckShield | Audit | 2020-09 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 5 | high |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [21315] PeckShield-Audit-Report-Hakka-3FMutual-v1.0 (1).pdf — no match: Audit report for 3FMutual by PeckShield. Scope includes main contract 3FMutual, Underwriter, SafeMath, InsuranceImprovementProposalProxy, and Ownable. Audit date is September 10, 2020.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| PeckShield-Audit-Report-Hakka-3FMutual-v1.0 (1).pdf | 3FMutual | unmatched — not counted | — | main contract, target of findings PVE-003, PVE-004, PVE-005 | no |
| PeckShield-Audit-Report-Hakka-3FMutual-v1.0 (1).pdf | Underwriter | unmatched — not counted | — | target of finding PVE-001 | no |
| PeckShield-Audit-Report-Hakka-3FMutual-v1.0 (1).pdf | SafeMath | unmatched — not counted | — | target of finding PVE-001 | no |
| PeckShield-Audit-Report-Hakka-3FMutual-v1.0 (1).pdf | InsuranceImprovementProposalProxy | unmatched — not counted | — | target of finding PVE-002 | no |
| PeckShield-Audit-Report-Hakka-3FMutual-v1.0 (1).pdf | Ownable | unmatched — not counted | — | target of finding PVE-002 | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | `0x83d0d842e6db3b020f384a2af11bd14787bec8e7` | GuildBank | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x0f2fd95c221770d108acd5363d25b06bdc43140b` | HakkaIntelligenceAlpha | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x6b1ecbbd69eeaf8d089bdce4daaa4165f8c3ff11` | HakkaRewards1 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x6ee6683cb9b44810369c873679f8073bcbe52f27` | HakkaRewards2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x3792ee68e736b8214d4edc91b1b3340b525e00bf` | HakkaRewards3 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x3bd145f66203b19ce7bedaac9a8147e08ea64645` | HakkaRewards4 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x0aa6c4ff04e4e6512c5348f4b04685af2cd11058` | HakkaRewards5 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xbf00da4ff7d13d678a0e897c683e79e99b64b6ab` | ImpermanentGain | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xbdda9670bc2a672c36cce0102ce8c69b12e9dee3` | TFToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x7f8093f5f49a9d7f0334f8017ff777f1893032d5` | ThankYouToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x66be1bc6c6af47900bbd4f3711801be6c2c6cb32` | ThreeFMutual | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x51f12323820b3c0077864990d9e6ad9604238ed6` | VestingVault | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 35 |
| upstream | 1 |
| standard_library | 0 |
| needs_review | 28 |

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

- [21315] PeckShield-Audit-Report-Hakka-3FMutual-v1.0 (1).pdf

Fork inheritance lineage and inherited audits are included when available.
