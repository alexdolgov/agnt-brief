# Agentic Audit Brief: PlutusDAO

## Export Authority

- Production state: **published scope**
- Raw selected rows: 2 across 1 audit(s)
- Eligible audit results: 2 (1 matched; 1 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e9e09d06b414f9cd852c36a58d42ce16279465f2d9791cd2a8178f3f54b89ecd`

## Project Overview

- Project: PlutusDAO (`plutusdao`)
- Website: [https://plutusdao.io](https://plutusdao.io)
- Lifecycle: unknown
- Generated: 2026-07-15T18:30:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: arbitrum, berachain, ethereum
- Contract surface: 128 unique implementations (128 raw deployments)
- Coverage basis: 2/17 confirmed own live verified implementations (11.8%); conservative 11.8% with 0 needs-review implementation(s)
- DeFi Llama TVL: $341,938.89
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for PlutusDAO. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 19 contract row(s) across arbitrum, berachain, ethereum. Structural roles: 18 core, 1 supporting. 1 row(s) use upgradeable patterns.

## Logic Topography

- Exact-run contract rows: 19
- Structural roles: core (18), supporting (1)
- Contract kinds: contract (19)
- Detected standards: ownable (16), erc20 (7), pausable (5), erc20permit (2), ownable2step (2), erc4626 (1)
- Frameworks: openzeppelin (19)
- Upgradeable-pattern rows: 1

## Fork Analysis

0 of 67 contracts are derived from known codebases. 67 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0x162b89...70469e`, chain 1)
- UnnamedContract (`0x595e1c...25a39e`, chain 1)
- UnnamedContract (`0x734dce...606d9d`, chain 1)
- UnnamedContract (`0x9f5a72...b76092`, chain 1)
- UnnamedContract (`0xa7ab9a...f58f52`, chain 1)
- UnnamedContract (`0xf3fb04...52b35e`, chain 1)
- UnnamedContract (`0x021599...bed992`, chain 42161)
- UnnamedContract (`0x1ceab1...046309`, chain 42161)
- UnnamedContract (`0x23b877...20723d`, chain 42161)
- UnnamedContract (`0x2e9ee8...a1c6e1`, chain 42161)
- UnnamedContract (`0x369722...c2d936`, chain 42161)
- UnnamedContract (`0x4a1540...335660`, chain 42161)
- UnnamedContract (`0x4bc614...8711aa`, chain 42161)
- UnnamedContract (`0x4d56d5...272606`, chain 42161)
- UnnamedContract (`0x54e340...431744`, chain 42161)
- UnnamedContract (`0x58bfc9...93fe6a`, chain 42161)
- UnnamedContract (`0x5f05c6...e26b64`, chain 42161)
- UnnamedContract (`0x62c10f...2cc982`, chain 42161)
- UnnamedContract (`0x668bb9...29110e`, chain 42161)
- UnnamedContract (`0x68d6d2...a8a15b`, chain 42161)
- UnnamedContract (`0x6cb810...0d5544`, chain 42161)
- UnnamedContract (`0x6cc0d6...971515`, chain 42161)
- UnnamedContract (`0x73e7c7...b555c8`, chain 42161)
- UnnamedContract (`0x76e89d...bcbe60`, chain 42161)
- UnnamedContract (`0x7f89c8...30bca7`, chain 42161)
- UnnamedContract (`0x8c1ea3...d590a2`, chain 42161)
- UnnamedContract (`0x9e6b74...21fd9b`, chain 42161)
- UnnamedContract (`0xa5c1c5...be1876`, chain 42161)
- UnnamedContract (`0xb27f21...d2662c`, chain 42161)
- UnnamedContract (`0xbbe98d...6053d3`, chain 42161)
- UnnamedContract (`0xbeb981...404a2e`, chain 42161)
- UnnamedContract (`0xc046f4...e34b03`, chain 42161)
- UnnamedContract (`0xce8a50...2beff4`, chain 42161)
- UnnamedContract (`0xd6c9fe...b532da`, chain 42161)
- UnnamedContract (`0xe59dad...0b2b3e`, chain 42161)
- UnnamedContract (`0xebe52c...daed62`, chain 42161)
- UnnamedContract (`0xf4790f...e441b2`, chain 42161)
- UnnamedContract (`0xf84eaa...90d3c1`, chain 42161)
- UnnamedContract (`0x244f42...1c544c`, chain 80094)
- UnnamedContract (`0x28602b...be727a`, chain 80094)
- UnnamedContract (`0x2ed083...a6bf25`, chain 80094)
- UnnamedContract (`0x50ba44...7e78ae`, chain 80094)
- UnnamedContract (`0x6698ed...3d2eac`, chain 80094)
- UnnamedContract (`0x915882...b47524`, chain 80094)
- UnnamedContract (`0x9e6b74...21fd9b`, chain 80094)
- UnnamedContract (`0xbc9875...bbc643`, chain 80094)
- UnnamedContract (`0xc66d1a...6a3c30`, chain 80094)
- UnnamedContract (`0xe8beb1...87efae`, chain 80094)
- UnnamedContract (`0xee33be...74da6a`, chain 80094)
- EpochStakingController (`0xcacf98...e6c9ba`, chain 42161)
- GlpDepositor (`0x13f0d2...47606e`, chain 42161)
- JonesDepositor (`0x66cd8c...c8c706`, chain 42161)
- MasterChef (`0x559347...4cbed5`, chain 42161)
- PendingRewards (`0x605221...1ddd13`, chain 42161)
- PlsArbToken (`0x7a5d19...002907`, chain 42161)
- PlsDpxPlutusChef (`0x20df49...40c1b5`, chain 42161)
- PlsDpxRewardsDistro (`0x38e517...0715ad`, chain 42161)
- PlsDpxToken (`0xf236ea...253ce1`, chain 42161)
- PlsJonesToken (`0xe7f6c3...e34a44`, chain 42161)
- PlsSpaToken (`0x0d111e...bc1ba6`, chain 42161)
- PlutusChef (`0x4e5cf5...1307ce`, chain 42161)
- PlutusEpochStaking (`0x27aaa9...e50c05`, chain 42161)
- PlutusToken (`0x51318b...b6a67f`, chain 42161)
- PlvGlpToken (`0x5326e7...74cff1`, chain 42161)
- SpaDepositor (`0x8c12e3...472129`, chain 42161)
- TeamVester (`0x00e314...e19624`, chain 42161)
- TGEController (`0x195b6e...666d10`, chain 42161)

## Contract Surface Quality

- Logic-topography rows: 19; live-surface rows included: 19 (18 live, 1 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 67/70 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 2/17 (11.8%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 66 own, 3 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 59 discovered implementations shown in the inventory but excluded from coverage (1 third-party/infra; 2 standard proxy/library)
- Proxy deployments represented within implementation groups: 14
- Confirmed-live implementations: 67 of 128 unique; 61 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 2/78
- Verified + Unaudited implementations: 76
- Verified by bytecode match: 0
- Unverified implementations: 50
- Unique implementations: 128
- Raw deployments: 128
- Audits discovered: 2 (2 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 1
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2022-09 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 2 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 2 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| SourceHat | Tier 2 | 2 | 2.6% | 2022-09 |

## Contract Surface

### ✅ Verified + Audited (2)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| GlpDepositor | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-251461 | `0x13f0d2...47606e` | ✅ Audited |
| PlvGlpToken | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-251476 | `0x5326e7...74cff1` | ✅ Audited |

### ⚠️ Verified + Unaudited (76)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| ArbDepositor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x13794d...2c238b` | ⚠️ Unaudited |
| ArbStaker | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | `0x180bb7...eb2c25` | ⚠️ Unaudited |
| BribeDistro | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x11731d...862d9e` | ⚠️ Unaudited |
| Disperse2 | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | arbitrum | n/a | `0x3aed25...1ad3cf` | ⚠️ Unaudited |
| DpxDepositor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x018036...03d919` | ⚠️ Unaudited |
| DpxDepositorV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x548c30...95179f` | ⚠️ Unaudited |
| DpxStaker | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x02b48b...05c476` | ⚠️ Unaudited |
| DpxStakerV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x1a7d37...356585` | ⚠️ Unaudited |
| EpochStakingController | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-251501 | `0xcacf98...e6c9ba` | ⚠️ Unaudited |
| EpochStakingRewards | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x6e1954...a5a988` | ⚠️ Unaudited |
| EpochStakingRewardsRolling | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x50b309...93addd` | ⚠️ Unaudited |
| EpochStakingRewardsRollingV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x355e89...1b3742` | ⚠️ Unaudited |
| EpochStakingRewardsV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x296404...7dbce8` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | external_dependency_or_infra | standard_proxy_or_library (excluded) | 1 | arbitrum | n/a | `0x2a2caf...8b5197` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | external_dependency_or_infra | standard_proxy_or_library (excluded) | 1 | arbitrum | n/a | `0x75c143...72d2e8` | ⚠️ Unaudited |
| ExitHelper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x8686a2...415234` | ⚠️ Unaudited |
| FeeClaimer | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | `0x4ed6bb...d3d3f0` | ⚠️ Unaudited |
| FeeCollector | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x3f80e3...92f919` | ⚠️ Unaudited |
| FeeCollectorV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x84d152...f891eb` | ⚠️ Unaudited |
| FeeCollectorV3 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | `0x9c140c...fed31e` | ⚠️ Unaudited |
| GlpDepositorV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x6c94b2...f01bff` | ⚠️ Unaudited |
| GlpStaker | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x2ab857...b6ea1e` | ⚠️ Unaudited |
| GlpStakerV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | `0xbec763...0f8dd9` | ⚠️ Unaudited |
| GxpToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x6fcce5...747679` | ⚠️ Unaudited |
| JonesDepositor | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-251484 | `0x66cd8c...c8c706` | ⚠️ Unaudited |
| JonesDepositorV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x1f6613...4961a5` | ⚠️ Unaudited |
| JonesLpStaker | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x4d50f5...c154e5` | ⚠️ Unaudited |
| JonesLpStakerV3 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | `0x475e8a...1f9600` | ⚠️ Unaudited |
| JonesStaker | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x208641...2f07f8` | ⚠️ Unaudited |
| LockedStakedPlutusToken | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | `0x14ba16...33f073` | ⚠️ Unaudited |
| MasterChef | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-251478 | `0x559347...4cbed5` | ⚠️ Unaudited |
| PendingRewards | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-251481 | `0x605221...1ddd13` | ⚠️ Unaudited |
| PgSpaToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xc82775...7e9a9a` | ⚠️ Unaudited |
| PlsArbPlutusChef | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x3dc1ea...651c8f` | ⚠️ Unaudited |
| PlsArbStakingHelper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xaca851...400093` | ⚠️ Unaudited |
| PlsArbToken | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-251491 | `0x7a5d19...002907` | ⚠️ Unaudited |
| PlsDpxPlutusChef | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-251465 | `0x20df49...40c1b5` | ⚠️ Unaudited |
| PlsDpxPlutusChefV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x6a17e7...eaf2ad` | ⚠️ Unaudited |
| PlsDpxRewardsDistro | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-251470 | `0x38e517...0715ad` | ⚠️ Unaudited |
| PlsDpxRewardsDistroV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x65ec12...e31e69` | ⚠️ Unaudited |
| PlsDpxToken | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | arbitrum | unit-251507 | `0xf236ea...253ce1` | ⚠️ Unaudited |
| PlsGlpToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x530f1c...86a467` | ⚠️ Unaudited |
| PlsJonesPlutusChef | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x07569a...7e684a` | ⚠️ Unaudited |
| PlsJonesRewardsDistro | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | `0x4a2b62...4a6860` | ⚠️ Unaudited |
| PlsJonesToken | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-251505 | `0xe7f6c3...e34a44` | ⚠️ Unaudited |
| PlsRdntPlutusChef | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x191e96...af4214` | ⚠️ Unaudited |
| PlsRdntRewardsDistro | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x8a8741...a61e33` | ⚠️ Unaudited |
| PlsRdntRewardsDistroV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x18353a...74bb28` | ⚠️ Unaudited |
| PlsRdntToken | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | arbitrum | unit-251462 | `0x1605bb...5bff59` | ⚠️ Unaudited |
| PlsRdntUtils | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x1f3fa6...8d7ac3` | ⚠️ Unaudited |
| PlsSpaPlutusChef | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x54f9fa...b6d271` | ⚠️ Unaudited |
| PlsSpaToken | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-251460 | `0x0d111e...bc1ba6` | ⚠️ Unaudited |
| PlsSpaVoter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x11e5aa...deb2f2` | ⚠️ Unaudited |
| PlutusChef | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-251474 | `0x4e5cf5...1307ce` | ⚠️ Unaudited |
| PlutusChronosVoter | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | `0x5effb8...6470ea` | ⚠️ Unaudited |
| PlutusEpochStaking | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-251467 | `0x27aaa9...e50c05` | ⚠️ Unaudited |
| PlutusEsGmxTreasury | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | `0x4f80b2...5549f3` | ⚠️ Unaudited |
| PlutusGrailVesting | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | `0xb04eaf...7fddcf` | ⚠️ Unaudited |
| PlutusPrivateTGE | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x35cd01...a7b2e0` | ⚠️ Unaudited |
| PlutusToken | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-251475 | `0x51318b...b6a67f` | ⚠️ Unaudited |
| PrivateTgeHelper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xec06e1...ad3427` | ⚠️ Unaudited |
| PrivateTgeRewards | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x6ccd4c...ffd603` | ⚠️ Unaudited |
| PrivateTgeVester | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x04b724...282f04` | ⚠️ Unaudited |
| RdntDepositor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x0ee94f...8ebf48` | ⚠️ Unaudited |
| RdntLpStaker | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x1d18ee...426ead` | ⚠️ Unaudited |
| SimplePlvGlpOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x75e901...c18dac` | ⚠️ Unaudited |
| SpaDepositor | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-251493 | `0x8c12e3...472129` | ⚠️ Unaudited |
| SpaFeeClaimer | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | `0x070344...2ef7a2` | ⚠️ Unaudited |
| SpaStaker | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x0325d0...a02f50` | ⚠️ Unaudited |
| SpaStakerV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x3e40f8...04bd9e` | ⚠️ Unaudited |
| SpaStakerV3 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x084079...1b474a` | ⚠️ Unaudited |
| SpaStakerV4 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | `0x46ac70...824928` | ⚠️ Unaudited |
| TeamVester | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-251458 | `0x00e314...e19624` | ⚠️ Unaudited |
| TGEController | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-251463 | `0x195b6e...666d10` | ⚠️ Unaudited |
| TGEVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xc1d8f4...f9534a` | ⚠️ Unaudited |
| Whitelist | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x16240a...95cf64` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (50)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-251451 | `0x162b89...70469e` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-251452 | `0x595e1c...25a39e` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-251453 | `0x734dce...606d9d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-251454 | `0x9f5a72...b76092` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-251455 | `0xa7ab9a...f58f52` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-251457 | `0xf3fb04...52b35e` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-251459 | `0x021599...bed992` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-251464 | `0x1ceab1...046309` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-251466 | `0x23b877...20723d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-251468 | `0x2e9ee8...a1c6e1` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-251469 | `0x369722...c2d936` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-251471 | `0x4a1540...335660` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-251472 | `0x4bc614...8711aa` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-251473 | `0x4d56d5...272606` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-251477 | `0x54e340...431744` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-251479 | `0x58bfc9...93fe6a` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-251480 | `0x5f05c6...e26b64` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-251482 | `0x62c10f...2cc982` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-251483 | `0x668bb9...29110e` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-251485 | `0x68d6d2...a8a15b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-251486 | `0x6cb810...0d5544` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-251487 | `0x6cc0d6...971515` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | arbitrum | unit-251488 | `0x6dbf21...b6cb51` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-251489 | `0x73e7c7...b555c8` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-251490 | `0x76e89d...bcbe60` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-251492 | `0x7f89c8...30bca7` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-251494 | `0x8c1ea3...d590a2` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-251495 | `0x9e6b74...21fd9b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-251496 | `0xa5c1c5...be1876` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-251497 | `0xb27f21...d2662c` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-251498 | `0xbbe98d...6053d3` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-251499 | `0xbeb981...404a2e` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-251500 | `0xc046f4...e34b03` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-251502 | `0xce8a50...2beff4` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-251503 | `0xd6c9fe...b532da` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-251504 | `0xe59dad...0b2b3e` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-251506 | `0xebe52c...daed62` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-251508 | `0xf4790f...e441b2` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-251509 | `0xf84eaa...90d3c1` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | berachain | unit-251510 | `0x244f42...1c544c` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | berachain | unit-251511 | `0x28602b...be727a` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | berachain | unit-251512 | `0x2ed083...a6bf25` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | berachain | unit-251513 | `0x50ba44...7e78ae` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | berachain | unit-251514 | `0x6698ed...3d2eac` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | berachain | unit-251515 | `0x915882...b47524` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | berachain | unit-251516 | `0x9e6b74...21fd9b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | berachain | unit-251517 | `0xbc9875...bbc643` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | berachain | unit-251518 | `0xc66d1a...6a3c30` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | berachain | unit-251519 | `0xe8beb1...87efae` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | berachain | unit-251520 | `0xee33be...74da6a` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [sourcehat.com/audits/PlvGLP](https://sourcehat.com/audits/PlvGLP) | SourceHat | Audit | 2022-09 | stale | Direct | contract_name | matched | 2 | 0 | 0 | 2 | high |
| [skynet.certik.com/projects/plutusdao](https://skynet.certik.com/projects/plutusdao) | CertiK | Audit | 2022-08 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 2 | high |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [20942] sourcehat.com/audits/PlvGLP — matched: Audit report explicitly lists four contracts in scope: PlsGlpToken, PlvGlpToken, GlpDepositor, GlpStaker. Date found in the summary: 'Date: September 26th, 2022.'
- [20943] skynet.certik.com/projects/plutusdao — no match: Extracted from 'Audited Files/SHA256' section listing two files. Audit date from 'Last Audit was delivered on 8/25/2022'.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| sourcehat.com/audits/PlvGLP | PlsGlpToken | unmatched — not counted | — | listed in scope | no |
| sourcehat.com/audits/PlvGLP | PlvGlpToken | own contract | PlvGlpToken (selected) `0x5326e7...74cff1` — deployed 2022-08-26 14:26:37+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| sourcehat.com/audits/PlvGLP | GlpDepositor | own contract | GlpDepositor (selected) `0x13f0d2...47606e` — deployed 2022-08-26 14:26:37+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| sourcehat.com/audits/PlvGLP | GlpStaker | unmatched — not counted | — | listed in scope | no |
| skynet.certik.com/projects/plutusdao | PlsDpxRewardsDistroV2 | unmatched — not counted | — | listed in audited files | no |
| skynet.certik.com/projects/plutusdao | PlsDpxPlutusChefV2 | unmatched — not counted | — | listed in audited files | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| arbitrum | `0xcacf98...e6c9ba` | EpochStakingController | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0x66cd8c...c8c706` | JonesDepositor | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0x559347...4cbed5` | MasterChef | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0x605221...1ddd13` | PendingRewards | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0x7a5d19...002907` | PlsArbToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0x20df49...40c1b5` | PlsDpxPlutusChef | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0x38e517...0715ad` | PlsDpxRewardsDistro | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0xe7f6c3...e34a44` | PlsJonesToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0x0d111e...bc1ba6` | PlsSpaToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0x4e5cf5...1307ce` | PlutusChef | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0x27aaa9...e50c05` | PlutusEpochStaking | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0x51318b...b6a67f` | PlutusToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0x8c12e3...472129` | SpaDepositor | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0x00e314...e19624` | TeamVester | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0x195b6e...666d10` | TGEController | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 75 |
| upstream | 1 |
| standard_library | 2 |
| needs_review | 50 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Address-book scope dispositions: 2 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 4 unmatched
- Matched-own operational status: 2 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=2
- Match method counts: unique_name=2

Zero-match audit list:

- [20943] skynet.certik.com/projects/plutusdao

Fork inheritance lineage and inherited audits are included when available.
