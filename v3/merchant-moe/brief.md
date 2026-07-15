# Agentic Audit Brief: Merchant Moe

## Export Authority

- Production state: **published scope**
- Raw selected rows: 13 across 1 audit(s)
- Eligible audit results: 1 (1 matched; 0 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e9e09d06b414f9cd852c36a58d42ce16279465f2d9791cd2a8178f3f54b89ecd`

## Project Overview

- Project: Merchant Moe (`merchant-moe`)
- Website: [https://merchantmoe.com/](https://merchantmoe.com/)
- Lifecycle: unknown
- Generated: 2026-07-15T18:30:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: mantle
- Contract surface: 73 unique implementations (146 raw deployments)
- Coverage basis: 13/17 confirmed own live verified implementations (76.5%); conservative 76.5% with 0 needs-review implementation(s)
- DeFi Llama TVL: $19,069,354.00
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for Merchant Moe. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 19 contract row(s) across mantle. Structural roles: 12 core, 7 supporting. 10 row(s) use upgradeable patterns.

## Logic Topography

- Exact-run contract rows: 19
- Structural roles: core (12), supporting (7)
- Contract kinds: contract (19)
- Detected standards: ownable (12), ownable2step (11), erc20 (2), erc20permit (2), accesscontrol (1), erc165 (1)
- Frameworks: openzeppelin (18), openzeppelin-upgradeable (10)
- Upgradeable-pattern rows: 10

## Fork Analysis

1 of 19 contracts are derived from known codebases. 18 contracts have no detected origin.

### Forked Contracts

**LBFactory** (`0xa66306...104054`, chain 5000)
Origin: lynx (`0x39d966...d6ee43`)
Containment: 100.0% - 28 functions inherited
Centroid audit status: pending_validation

Additions (unaudited): none

Removals (removed from original): none

### Original Contracts (no fork detected - full audit scope)

- JoeStaking (`0x7fb0fc...53d303`, chain 5000)
- JoeStakingRewarder (`0x1d1632...f08dd6`, chain 5000)
- LBRouter (`0x013e13...d21e3a`, chain 5000)
- MasterChef (`0xd4bd5e...523dcc`, chain 5000)
- MasterChefRewarder (`0xcc076c...d2e938`, chain 5000)
- Moe (`0x4515a4...dc00c9`, chain 5000)
- MoeFactory (`0x5bef01...4bedec`, chain 5000)
- MoePair (`0x08477e...69c28b`, chain 5000)
- MoeRouter (`0xeaee7e...e7232a`, chain 5000)
- MoeStaking (`0xe92249...1fa793`, chain 5000)
- OdosRouterV2 (`0xd9f4e8...c26745`, chain 5000)
- RewarderFactory (`0x18d3f4...890025`, chain 5000)
- Router (`0x45a62b...e2c86b`, chain 5000)
- StableMoe (`0x5ab84d...daac02`, chain 5000)
- TransparentUpgradeableProxy2Step (`0xb3938e...07e116`, chain 5000)
- TransparentUpgradeableProxy2Step (`0xb5bd28...cba22d`, chain 5000)
- VeMoe (`0x240616...f14ef1`, chain 5000)
- VeMoeRewarder (`0x151b82...d6aea8`, chain 5000)

## Contract Surface Quality

- Logic-topography rows: 19; live-surface rows included: 19 (19 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 17/17 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 13/17 (76.5%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 17 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 56 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 7
- Confirmed-live implementations: 17 of 73 unique; 56 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 13/46
- Verified + Unaudited implementations: 33
- Verified by bytecode match: 0
- Unverified implementations: 27
- Unique implementations: 73
- Raw deployments: 146
- Audits discovered: 1 (1 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 1
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2023-12 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 1 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 13 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| Paladin | Tier 2 | 13 | 28.3% | 2023-12 |

## Contract Surface

### ✅ Verified + Audited (13)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| JoeStaking | unknown | project_anchor | own_supporting | 0 | mantle | unit-266943 | `0x7fb0fc...53d303` | ✅ Audited |
| JoeStakingRewarder | unknown | project_anchor | own_supporting | 0 | mantle | unit-266938 | `0x1d1632...f08dd6` | ✅ Audited |
| MasterChef | unknown | project_anchor | own_supporting | 0 | mantle | unit-266946 | `0xd4bd5e...523dcc` | ✅ Audited |
| MasterChefRewarder | unknown | project_anchor | own_supporting | 0 | mantle | unit-266945 | `0xcc076c...d2e938` | ✅ Audited |
| Moe | unknown | project_anchor | own_supporting | 0 | mantle | unit-266940 | `0x4515a4...dc00c9` | ✅ Audited |
| MoeFactory | unknown | project_anchor | own_supporting | 0 | mantle | unit-266942 | `0x5bef01...4bedec` | ✅ Audited |
| MoePair | unknown | project_anchor | own_supporting | 0 | mantle | unit-266935 | `0x08477e...69c28b` | ✅ Audited |
| MoeRouter | adapter | project_anchor | own_supporting | 0 | mantle | unit-266948 | `0xeaee7e...e7232a` | ✅ Audited |
| MoeStaking | unknown | project_anchor | own_supporting | 1 | mantle | unit-266950 | 2 deployments: mantle `0xb3938e...07e116`; mantle `0xe92249...1fa793` | ✅ Audited |
| RewarderFactory | unknown | project_anchor | own_supporting | 0 | mantle | unit-266937 | `0x18d3f4...890025` | ✅ Audited |
| StableMoe | unknown | project_anchor | own_supporting | 1 | mantle | unit-266949 | 2 deployments: mantle `0x5ab84d...daac02`; mantle `0xb5bd28...cba22d` | ✅ Audited |
| VeMoe | unknown | project_anchor | own_supporting | 0 | mantle | unit-266939 | `0x240616...f14ef1` | ✅ Audited |
| VeMoeRewarder | unknown | project_anchor | own_supporting | 0 | mantle | unit-266936 | `0x151b82...d6aea8` | ✅ Audited |

### ⚠️ Verified + Unaudited (33)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| FakeOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0xa489e9...fb8467` | ⚠️ Unaudited |
| FeeCollector | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x97c62c...658b63` | ⚠️ Unaudited |
| FeeConverterOdos | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | 2 deployments: mantle `0xae6321...307298`; mantle `0xf4a929...124e8c` | ⚠️ Unaudited |
| FeeManager | governance | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x982ce5...929b12` | ⚠️ Unaudited |
| ForwarderLogic | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | 2 deployments: mantle `0xb07877...83c146`; mantle `0xc04f29...ce8430` | ⚠️ Unaudited |
| JoeDexLens | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | mantle | n/a | 2 deployments: mantle `0x0f60a6...61effa`; mantle `0x511914...7a86b3` | ⚠️ Unaudited |
| JoeStaking | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | mantle | n/a | `0x79f316...b69d44` | ⚠️ Unaudited |
| JoeStakingRewarder | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | 2 deployments: mantle `0x1fadd2...ff6c93`; mantle `0xed6436...f17f92` | ⚠️ Unaudited |
| LBFactory | registry | project_anchor | own_supporting | 0 | mantle | unit-266944 | `0xa66306...104054` | ⚠️ Unaudited |
| LBPair | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0xf6863d...2ddb3b` | ⚠️ Unaudited |
| LBQuoter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0xe25dc2...16f46d` | ⚠️ Unaudited |
| LBRouter | adapter | project_anchor | own_supporting | 0 | mantle | unit-266934 | `0x013e13...d21e3a` | ⚠️ Unaudited |
| LBRouter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0xafb85a...0e782a` | ⚠️ Unaudited |
| MasterChef | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | 6 deployments: mantle `0x0ca2d3...fd2739`; mantle `0x10cc20...a3e9e6`; mantle `0x3fef7c...9a871e`; mantle `0x76d8d0...9b0cb5`; mantle `0xace736...dc79b3`; mantle `0xeb1d08...73ce2a` | ⚠️ Unaudited |
| MasterChef | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | mantle | n/a | `0xa756f7...1955b5` | ⚠️ Unaudited |
| MasterChefRewarder | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | 7 deployments: mantle `0x2759a5...0a2678`; mantle `0x3b3a66...9a5181`; mantle `0x4141be...11b61a`; mantle `0x6b9b71...132b33`; mantle `0x75f0d0...5a0875`; mantle `0xb02e02...7167fd`; mantle `0xf5d738...310012` | ⚠️ Unaudited |
| Moe | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x8764ab...161494` | ⚠️ Unaudited |
| MoeFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | 2 deployments: mantle `0xc850df...92c5d2`; mantle `0xea2a8c...6846e0` | ⚠️ Unaudited |
| MoeHelper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | 2 deployments: mantle `0x3f0e20...78ca90`; mantle `0xfe8b6a...2d2d7a` | ⚠️ Unaudited |
| MoeLens | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | 3 deployments: mantle `0x768571...c8de7a`; mantle `0xaa61e8...7698ba`; mantle `0xdab599...da1f55` | ⚠️ Unaudited |
| MoePair | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0xcb61a1...c8468b` | ⚠️ Unaudited |
| MoeQuoter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | 3 deployments: mantle `0x1d0657...5be1a4`; mantle `0x1e47b3...31e99d`; mantle `0x72b507...2b59f4` | ⚠️ Unaudited |
| MoeRouter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | 2 deployments: mantle `0xaf6278...ffdeb8`; mantle `0xf311d5...376ce5` | ⚠️ Unaudited |
| OdosRouterV2 | adapter | project_anchor | own_supporting | 0 | mantle | unit-266947 | `0xd9f4e8...c26745` | ⚠️ Unaudited |
| ProxyAdmin | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x7dc21a...40c579` | ⚠️ Unaudited |
| ProxyAdmin2Step | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | 2 deployments: mantle `0x886523...f6af2a`; mantle `0xc96543...c06429` | ⚠️ Unaudited |
| RewarderFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | mantle | n/a | `0xe283db...848943` | ⚠️ Unaudited |
| Router | adapter | project_anchor | own_supporting | 0 | mantle | unit-266941 | `0x45a62b...e2c86b` | ⚠️ Unaudited |
| RouterLogic | adapter | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | 2 deployments: mantle `0x4e2abc...63ff20`; mantle `0xb35033...dff9cf` | ⚠️ Unaudited |
| VeMoe | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x4ceabd...920e4c` | ⚠️ Unaudited |
| VeMoe | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | mantle | n/a | `0x55160b...01dee7` | ⚠️ Unaudited |
| VeMoeRewarder | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | 6 deployments: mantle `0x247af2...bfdcf1`; mantle `0x7399aa...55b1e5`; mantle `0x8eb084...1ee254`; mantle `0xa3a1a6...2daaa5`; mantle `0xbbf381...28136c`; mantle `0xda781a...84f2c4` | ⚠️ Unaudited |
| VestingContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | 43 deployments: mantle `0x057b2f...d47494`; mantle `0x0a7a82...712048`; mantle `0x1549de...2a14f6`; mantle `0x183d63...c1b02c`; mantle `0x1c6c83...0c87e8`; mantle `0x1fbfc1...1e9fec`; mantle `0x315299...05a8c5`; mantle `0x3905f5...c157cd`; mantle `0x3f6cc1...eec185`; mantle `0x428177...deb515`; mantle `0x4a984b...e8cb8e`; mantle `0x4d46b8...70f0b5`; mantle `0x50554c...c62fe7`; mantle `0x55d86a...7bb554`; mantle `0x55e583...83b689`; mantle `0x55edc7...993fbb`; mantle `0x60fded...332d7c`; mantle `0x62fb9b...314a75`; mantle `0x70cd9e...be6c2f`; mantle `0x7520ae...267c85`; mantle `0x78bb8f...02894f`; mantle `0x7c7018...02dd8b`; mantle `0x82e8ae...d6855b`; mantle `0x83d76d...e64d0b`; mantle `0x8d8d3b...1b00ce`; mantle `0x920803...a925da`; mantle `0x9b5b4c...93de31`; mantle `0x9b86c2...80300f`; mantle `0xa0e97c...89dde1`; mantle `0xb342bf...695554`; mantle `0xb9e9dc...98f4c4`; mantle `0xb9f72c...512295`; mantle `0xc20ba4...43dc9f`; mantle `0xd9ecef...726ef0`; mantle `0xe273bf...6f9c22`; mantle `0xe4d55a...b9c747`; mantle `0xe660b7...d544a9`; mantle `0xe88778...5d2948`; mantle `0xeff8ee...047c1c`; mantle `0xfbdd09...8161f0`; mantle `0xfd0adb...01a291`; mantle `0xfd4085...4afde3`; mantle `0xffdeab...741602` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (27)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x031839...b89eef` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x0980d1...658aa6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x1f8642...a0bf68` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x227dfd...742e5f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x28104d...f33f95` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x2d8879...72f414` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x4e3288...5d92bf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x4e9042...b1f5a7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x501b8a...316c85` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x5cf0dc...c0049e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x654677...2944c1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x7097f0...e61476` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x794373...941579` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x7d2b63...523b76` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x85bd14...5fdba9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x88de50...a3e9fc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x8c5ee2...af58ab` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x8d3d65...ef103a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x926faa...8911bf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0xa669e7...be4e13` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0xac041d...5f2e9d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0xb9db0d...950515` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0xca4239...fe9680` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0xcefcc8...ca9159` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0xcf5540...772559` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0xcfe3d3...493e5e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0xd804ba...8105fc` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [paladinsec.co/projects/merchant-moe](https://paladinsec.co/projects/merchant-moe) | Paladin | Audit | 2023-12 | stale | Direct | address | matched | 13 | 0 | 0 | 8 | high |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [3948] paladinsec.co/projects/merchant-moe — matched: Contracts audited listed with addresses; dependencies also included as they are part of the scope.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| paladinsec.co/projects/merchant-moe | Moe | own contract | Moe (selected) `0x4515a4...dc00c9` — deployed 2023-12-20 04:53:12+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| paladinsec.co/projects/merchant-moe | MasterChef | own contract | MasterChef (selected) `0xd4bd5e...523dcc` — deployed 2023-12-20 04:53:42+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| paladinsec.co/projects/merchant-moe | MoeStaking | own contract | MoeStaking (selected) `0xe92249...1fa793` — deployed 2023-12-20 04:53:52+03 — liveness: live (proxy_unit_reachable) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| paladinsec.co/projects/merchant-moe | StableMoe | own contract | StableMoe (selected) `0x5ab84d...daac02` — deployed 2023-12-20 04:54:12+03 — liveness: live (proxy_unit_reachable) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| paladinsec.co/projects/merchant-moe | VeMoe | own contract | VeMoe (selected) `0x240616...f14ef1` — deployed 2023-12-20 04:54:07+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| paladinsec.co/projects/merchant-moe | BaseRewarder | unmatched — not counted | — | listed as dependency | no |
| paladinsec.co/projects/merchant-moe | MasterChefRewarder | own contract | MasterChefRewarder (selected) `0xcc076c...d2e938` — deployed 2023-12-20 04:53:22+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| paladinsec.co/projects/merchant-moe | VeMoeRewarder | own contract | VeMoeRewarder (selected) `0x151b82...d6aea8` — deployed 2023-12-20 04:53:27+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| paladinsec.co/projects/merchant-moe | MoeFactory | own contract | MoeFactory (selected) `0x5bef01...4bedec` — deployed 2023-12-23 15:39:54+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| paladinsec.co/projects/merchant-moe | MoeERC20 | unmatched — not counted | — | listed as dependency | no |
| paladinsec.co/projects/merchant-moe | MoePair | own contract | MoePair (selected) `0x08477e...69c28b` — deployed 2023-12-23 15:39:54+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| paladinsec.co/projects/merchant-moe | MoeRouter | own contract | MoeRouter (selected) `0xeaee7e...e7232a` — deployed 2023-12-23 15:39:54+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| paladinsec.co/projects/merchant-moe | MoeLibrary | unmatched — not counted | — | listed as dependency | no |
| paladinsec.co/projects/merchant-moe | Amounts | unmatched — not counted | — | listed as dependency | no |
| paladinsec.co/projects/merchant-moe | Math | unmatched — not counted | — | listed as dependency | no |
| paladinsec.co/projects/merchant-moe | Constants | unmatched — not counted | — | listed as dependency | no |
| paladinsec.co/projects/merchant-moe | Rewarder | unmatched — not counted | — | listed as dependency | no |
| paladinsec.co/projects/merchant-moe | JoeStaking | own contract | JoeStaking (selected) `0x7fb0fc...53d303` — deployed 2023-12-20 04:53:57+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| paladinsec.co/projects/merchant-moe | JoeStakingRewarder | own contract | JoeStakingRewarder (selected) `0x1d1632...f08dd6` — deployed 2023-12-20 04:53:17+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| paladinsec.co/projects/merchant-moe | RewarderFactory | own contract | RewarderFactory (selected) `0x18d3f4...890025` — deployed 2023-12-20 04:53:37+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| paladinsec.co/projects/merchant-moe | VestingContract | unmatched — not counted | — | listed in scope | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| mantle | `0xa66306...104054` | LBFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| mantle | `0x013e13...d21e3a` | LBRouter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| mantle | `0xd9f4e8...c26745` | OdosRouterV2 | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| mantle | `0x45a62b...e2c86b` | Router | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 45 |
| upstream | 0 |
| standard_library | 1 |
| needs_review | 27 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Address-book scope dispositions: 13 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 8 unmatched
- Matched-own operational status: 13 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=1
- Match method counts: address=13

Fork inheritance lineage and inherited audits are included when available.
