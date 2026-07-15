# Agentic Audit Brief: Yamato Protocol

## Export Authority

- Production state: **published scope**
- Raw selected rows: 3 across 1 audit(s)
- Eligible audit results: 3 (1 matched; 2 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e9e09d06b414f9cd852c36a58d42ce16279465f2d9791cd2a8178f3f54b89ecd`

## Project Overview

- Project: Yamato Protocol (`yamato-protocol`)
- Website: [https://app.yamato.fi/#/](https://app.yamato.fi/#/)
- Lifecycle: unknown
- Generated: 2026-07-15T18:30:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: ethereum
- Contract surface: 76 unique implementations (123 raw deployments)
- Coverage basis: 3/4 confirmed own live verified implementations (75.0%); conservative 75.0% with 0 needs-review implementation(s)
- DeFi Llama TVL: $1,058,179.34
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for Yamato Protocol. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 5 contract row(s) across ethereum. Structural roles: 3 core, 1 infra, 1 unclassified. 1 row(s) use upgradeable patterns.

## Logic Topography

- Exact-run contract rows: 5
- Structural roles: core (3), infra (1), unclassified (1)
- Contract kinds: contract (5)
- Detected standards: erc20 (2), erc20permit (2), erc1967proxy (1)
- Frameworks: openzeppelin (4), openzeppelin-upgradeable (1)
- Upgradeable-pattern rows: 1

## Fork Analysis

0 of 4 contracts are derived from known codebases. 4 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- CJPY (`0x1cfa56...298372`, chain 1)
- ERC1967Proxy (`0x02fe72...84f257`, chain 1)
- veYMT (`0x9e3ce7...b66a0c`, chain 1)
- YMT (`0x0f4fc7...4c9c09`, chain 1)

## Contract Surface Quality

- Logic-topography rows: 5; live-surface rows included: 5 (5 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 4/4 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 3/4 (75.0%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 4 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 72 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 27
- Confirmed-live implementations: 4 of 76 unique; 72 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 3/59
- Verified + Unaudited implementations: 56
- Verified by bytecode match: 0
- Unverified implementations: 17
- Unique implementations: 76
- Raw deployments: 123
- Audits discovered: 3 (3 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 1
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2024-08 (aging)
- Audit staleness (calendar age): 0 fresh, 1 aging, 2 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 3 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| BlockApex | Tier 2 | 3 | 5.1% | 2024-08 |

## Contract Surface

### ✅ Verified + Audited (3)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| veYMT | unknown | project_anchor | own_supporting | 0 | ethereum | unit-262585 | `0x9e3ce7...b66a0c` | ✅ Audited |
| YamatoV4 | unknown | project_anchor | own_supporting | 1 | ethereum | unit-262587 | 2 deployments: ethereum `0x02fe72...84f257`; ethereum `0x0bfa59...9a4838` | ✅ Audited |
| YMT | unknown | project_anchor | own_supporting | 0 | ethereum | unit-262582 | `0x0f4fc7...4c9c09` | ✅ Audited |

### ⚠️ Verified + Unaudited (56)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| CJPY | unknown | project_anchor | own_supporting | 0 | ethereum | unit-262583 | `0x1cfa56...298372` | ⚠️ Unaudited |
| CometExt | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 5 deployments: ethereum `0x254b8d...18db1a`; ethereum `0x612a7d...dfb49e`; ethereum `0x89610b...ece558`; ethereum `0xc61799...a2ecb6`; ethereum `0xd0e5a7...8442fc` | ⚠️ Unaudited |
| CometRewards | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa1d458...0b7ac4` | ⚠️ Unaudited |
| CurrencyOSV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe85cb2...418acd` | ⚠️ Unaudited |
| CurrencyOSV3 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x811ce7...039542`; ethereum `0xe69c6b...a3784f` | ⚠️ Unaudited |
| CurveTwocryptoOptimized | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x592878...f211cc` | ⚠️ Unaudited |
| Distributor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa90a01...793b5f` | ⚠️ Unaudited |
| DistributorReceiver | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x17e0a0...d49c0a`; ethereum `0x3d0955...40c6a5` | ⚠️ Unaudited |
| Factory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x3ee095...891243`; ethereum `0xe48acb...0fa44a` | ⚠️ Unaudited |
| FeeDistributorV1 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x0d99bf...17a0c9`; ethereum `0x1d3d35...b8eebf` | ⚠️ Unaudited |
| FeePool | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x03b24f...48168a`; ethereum `0x9823e0...64c869`; ethereum `0xf99e78...408924` | ⚠️ Unaudited |
| FeePoolV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x070877...6582bf`; ethereum `0x290e56...204c3c` | ⚠️ Unaudited |
| GaugeControllerV1 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x54cc8f...3e6b44`; ethereum `0xc1a82f...346722` | ⚠️ Unaudited |
| Kompu | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 8 deployments: ethereum `0x16c95a...599724`; ethereum `0x47affd...e6babf`; ethereum `0x997d45...297e8b`; ethereum `0xa55b56...c6dd13`; ethereum `0xadc2f6...fa6360`; ethereum `0xb69441...37cec8`; ethereum `0xe2854a...620636`; ethereum `0xe9b683...f743fb` | ⚠️ Unaudited |
| Kompu | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x2bf8b0...5d7922`; ethereum `0xf667e3...f0544a` | ⚠️ Unaudited |
| Kompu | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x34aced...f68e1a`; ethereum `0xaa59f5...e7bfa2` | ⚠️ Unaudited |
| Kompu | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x3e7d9c...d26954`; ethereum `0x7a997e...2840e1` | ⚠️ Unaudited |
| Kompu | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x5f3321...074780`; ethereum `0xe0e2d8...389044` | ⚠️ Unaudited |
| Kompu | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x68cbe7...23bf75`; ethereum `0x8baded...811ab0` | ⚠️ Unaudited |
| LinearVesting | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x188a9a...6fcdbe` | ⚠️ Unaudited |
| MainnetBulker | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x7d5a4a...4e47b9`; ethereum `0x8a140f...e4700e` | ⚠️ Unaudited |
| MinterV1 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x5d0da8...6bade4`; ethereum `0x803935...49c9da` | ⚠️ Unaudited |
| MultiplicativePriceFeed | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x96cf27...3390ee` | ⚠️ Unaudited |
| MultiTransfers | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xca078e...0311c1` | ⚠️ Unaudited |
| PledgeLib | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x25026b...8aad07`; ethereum `0x364c7f...464b69`; ethereum `0xfd5fca...ce86bf` | ⚠️ Unaudited |
| PND | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5fff14...2fd002` | ⚠️ Unaudited |
| PoolV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x2d6cda...6638ea`; ethereum `0x9c1f0e...745f0b` | ⚠️ Unaudited |
| PriceFeedV3 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x3f4e4d...6fff2f`; ethereum `0x7d8b9e...df3275` | ⚠️ Unaudited |
| PriorityRegistryV6 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x0c9bdf...f4190b`; ethereum `0xac9f41...019d2d` | ⚠️ Unaudited |
| RewardGaugeV1 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x772b86...1b1118`; ethereum `0xb075e3...35ef10` | ⚠️ Unaudited |
| ScoreRegistry | unknown | non_address_book | non_address_book_inventory (excluded) | 2 | ethereum | n/a | 3 deployments: ethereum `0x02f2ce...aefbeb`; ethereum `0x683da0...06b3b7`; ethereum `0x85d813...b36abe` | ⚠️ Unaudited |
| ScoreWeightController | unknown | non_address_book | non_address_book_inventory (excluded) | 2 | ethereum | n/a | 3 deployments: ethereum `0x6f2d29...6f63e4`; ethereum `0x9e6e32...d769d4`; ethereum `0xcb0c89...ffecee` | ⚠️ Unaudited |
| Standard | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3df8b6...7ed3ef` | ⚠️ Unaudited |
| TemplateV1 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x526b33...b0d646`; ethereum `0x598840...d0ed1d` | ⚠️ Unaudited |
| TemplateV1_5 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7cfb70...3c96f1` | ⚠️ Unaudited |
| TemplateYMWKWithdraw | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3f651a...a11b1c` | ⚠️ Unaudited |
| veYMT | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf13fa0...3cb016` | ⚠️ Unaudited |
| VotingEscrow | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x168c2f...c7d113` | ⚠️ Unaudited |
| YamatoBorrower | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7edfd3...cb4cc1` | ⚠️ Unaudited |
| YamatoBorrowerV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0xb469db...3621d2`; ethereum `0xf63271...8dba54` | ⚠️ Unaudited |
| YamatoDepositor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3fe24a...23aa69` | ⚠️ Unaudited |
| YamatoDepositorV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf42123...d0ae33` | ⚠️ Unaudited |
| YamatoDepositorV3 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x011d33...2b9881`; ethereum `0x511b45...2b5937` | ⚠️ Unaudited |
| YamatoRedeemerV4 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x97150f...a5f60d` | ⚠️ Unaudited |
| YamatoRedeemerV5 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x049833...1d8e81`; ethereum `0xd869dd...53a019` | ⚠️ Unaudited |
| YamatoRepayerV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x955b82...81bb88` | ⚠️ Unaudited |
| YamatoRepayerV3 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x9ab920...aedae8`; ethereum `0xac235b...e6cfe8` | ⚠️ Unaudited |
| YamatoSweeperV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x01a761...413389` | ⚠️ Unaudited |
| YamatoSweeperV3 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x528406...31ec27`; ethereum `0x91dc6c...bd253c` | ⚠️ Unaudited |
| YamatoV3 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdc7cde...2f9da7` | ⚠️ Unaudited |
| YamatoWithdrawerV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1988b0...4a45ea` | ⚠️ Unaudited |
| YamatoWithdrawerV3 | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x5d1094...36ecc4`; ethereum `0x84c854...197505` | ⚠️ Unaudited |
| YMT | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4a232b...16f20e` | ⚠️ Unaudited |
| YmtMinter | unknown | non_address_book | non_address_book_inventory (excluded) | 2 | ethereum | n/a | 3 deployments: ethereum `0x7d7059...d43fff`; ethereum `0x81930e...29529a`; ethereum `0xbf86a0...00f516` | ⚠️ Unaudited |
| YmtVesting | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x5ed64b...2c925f`; ethereum `0x6d6676...05ebae` | ⚠️ Unaudited |
| YMWK | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x15dac0...ec4f87` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (17)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x12318f...f6112b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2170f3...c97b03` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x296ec3...a9c3b5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2eaa42...4cb469` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x36b404...b33add` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3d1e11...ee10c2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3f9c83...15b64e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x565b10...1e6dab` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7bed97...f1363c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x817ffe...4af9dc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8a979c...cc907f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa5398c...8ca550` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbb4025...cf4e95` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd0c89e...30500d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xddf9b0...a31e8e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf18035...7700ce` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf48ac4...36e1fe` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [Yamato Protocol Final Audit.pdf](https://github.com/BlockApex/Audit-Reports/blob/master/Yamato%20Protocol%20Final%20Audit.pdf) | BlockApex | Audit | 2022-09 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 15 | high |
| [Yamato Protocol Final Audit (Extended).pdf](https://github.com/BlockApex/Audit-Reports/blob/master/Yamato%20Protocol%20Final%20Audit%20(Extended).pdf) | BlockApex | Audit | 2023-07 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 5 | high |
| [Yamato Protocol V2 - Final Audit.pdf](https://github.com/BlockApex/Audit-Reports/blob/master/Yamato%20Protocol%20V2%20-%20Final%20Audit.pdf) | BlockApex | Audit | 2024-08 | aging | Direct | n/a | matched | 3 | 1 | 0 | 11 | n/a |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [3069] Yamato Protocol Final Audit.pdf — no match: Extracted contract names from findings and informatory sections; audit date from 'Final Audit Completed: Sep 5th, 2022'.
- [3070] Yamato Protocol Final Audit (Extended).pdf — no match: Main contract PriceFeedV3 and interfaces IPriceFeedV3, IPriceFeedFlexV3, IPriorityRegistryFlexV6, IPriorityRegistryV6 are in scope. Audit date from 'Final Audit (Fixed): July 24th, 2023'.
- [3071] Yamato Protocol V2 - Final Audit.pdf — matched: No reason recorded

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| Yamato Protocol Final Audit.pdf | Currency | unmatched — not counted | — | Critical-risk issue 1 | no |
| Yamato Protocol Final Audit.pdf | UUPSBase | unmatched — not counted | — | High-risk issue 2 | no |
| Yamato Protocol Final Audit.pdf | PoolV2 | unmatched — not counted | — | Medium-risk issue 3 | no |
| Yamato Protocol Final Audit.pdf | YamatoDepositorV2 | unmatched — not counted | — | Medium-risk issues 4 and 5 | no |
| Yamato Protocol Final Audit.pdf | PledgeLib | unmatched — not counted | — | Low-risk issue 6 | no |
| Yamato Protocol Final Audit.pdf | YamatoWithdrawerV2 | unmatched — not counted | — | Low-risk issues 7 and 12 | no |
| Yamato Protocol Final Audit.pdf | YamatoRedeemerV4 | unmatched — not counted | — | Low-risk issues 8 and 9 | no |
| Yamato Protocol Final Audit.pdf | Ownable | unmatched — not counted | — | Low-risk issue 11 | no |
| Yamato Protocol Final Audit.pdf | YamatoStore | unmatched — not counted | — | Low-risk issue 11 and informatory | no |
| Yamato Protocol Final Audit.pdf | YamatoBase | unmatched — not counted | — | Informatory: Mark Variable Visibility Explicitly | no |
| Yamato Protocol Final Audit.pdf | YamatoV3 | unmatched — not counted | — | Informatory: Mark Variable Visibility Explicitly | no |
| Yamato Protocol Final Audit.pdf | PriorityRegistryV6 | unmatched — not counted | — | Informatory: Mark Variable Visibility Explicitly | no |
| Yamato Protocol Final Audit.pdf | PriceFeedV2 | unmatched — not counted | — | Informatory: Mark Variable Visibility Explicitly | no |
| Yamato Protocol Final Audit.pdf | CurrencyOSV2 | unmatched — not counted | — | Informatory: Mark Function Visibility Explicitly | no |
| Yamato Protocol Final Audit.pdf | YamatorRepayerV2 | unmatched — not counted | — | Informatory: In YamatorRepayerV2.sol | no |
| Yamato Protocol Final Audit (Extended).pdf | PriceFeedV3 | unmatched — not counted | — | listed in scope and findings | no |
| Yamato Protocol Final Audit (Extended).pdf | IPriceFeedV3 | unmatched — not counted | — | listed in scope and findings | no |
| Yamato Protocol Final Audit (Extended).pdf | IPriceFeedFlexV3 | unmatched — not counted | — | mentioned in system architecture | no |
| Yamato Protocol Final Audit (Extended).pdf | IPriorityRegistryFlexV6 | unmatched — not counted | — | mentioned in system architecture | no |
| Yamato Protocol Final Audit (Extended).pdf | IPriorityRegistryV6 | unmatched — not counted | — | mentioned in system architecture | no |
| Yamato Protocol V2 - Final Audit.pdf | CurrencyOSV3 | unmatched — not counted | — | — | no |
| Yamato Protocol V2 - Final Audit.pdf | FeePoolV2 | unmatched — not counted | — | — | no |
| Yamato Protocol V2 - Final Audit.pdf | ScoreRegistry | unmatched — not counted | — | — | no |
| Yamato Protocol V2 - Final Audit.pdf | ScoreWeightController | unmatched — not counted | — | — | no |
| Yamato Protocol V2 - Final Audit.pdf | YMT | own contract | YMT (selected) `0x0f4fc7...4c9c09` — deployed 2025-05-26 14:42:11+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Yamato Protocol V2 - Final Audit.pdf | YamatoBorrowerV2 | unmatched — not counted | — | — | no |
| Yamato Protocol V2 - Final Audit.pdf | YamatoDepositorV3 | unmatched — not counted | — | — | no |
| Yamato Protocol V2 - Final Audit.pdf | YamatoRedeemerV5 | unmatched — not counted | — | — | no |
| Yamato Protocol V2 - Final Audit.pdf | YamatoRepayerV3 | unmatched — not counted | — | — | no |
| Yamato Protocol V2 - Final Audit.pdf | YamatoSweeperV3 | unmatched — not counted | — | — | no |
| Yamato Protocol V2 - Final Audit.pdf | YamatoV4 | own proxy deployment | ERC1967Proxy (proxy) (selected) `0x02fe72...84f257` — deployed 2023-07-27 04:06:35+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Yamato Protocol V2 - Final Audit.pdf | YamatoWithdrawerV3 | unmatched — not counted | — | — | no |
| Yamato Protocol V2 - Final Audit.pdf | YmtMinter | unmatched — not counted | — | — | no |
| Yamato Protocol V2 - Final Audit.pdf | veYMT | own contract | veYMT (selected) `0x9e3ce7...b66a0c` — deployed 2025-05-26 14:43:47+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | `0x1cfa56...298372` | CJPY | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 58 |
| upstream | 1 |
| standard_library | 0 |
| needs_review | 17 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 2
- Inherited remapped matches: 0
- Address-book scope dispositions: 3 own (1 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 31 unmatched
- Matched-own operational status: 3 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=2
- Match method counts: unique_name=3

Zero-match audit list:

- [3069] Yamato Protocol Final Audit.pdf
- [3070] Yamato Protocol Final Audit (Extended).pdf

Fork inheritance lineage and inherited audits are included when available.
