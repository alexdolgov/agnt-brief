# Agentic Audit Brief: SwissBorg

## Export Authority

- Production state: **published scope**
- Raw selected rows: 2 across 1 audit(s)
- Eligible audit results: 1 (1 matched; 0 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e9e09d06b414f9cd852c36a58d42ce16279465f2d9791cd2a8178f3f54b89ecd`

## Project Overview

- Project: SwissBorg (`swissborg`)
- Website: [https://swissborg.com](https://swissborg.com)
- Lifecycle: unknown
- Generated: 2026-07-15T18:30:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: arbitrum, avalanche, berachain, bsc, ethereum, gnosis, moonbeam, optimism, polygon, sei, sepolia, sonic
- Contract surface: 73 unique implementations (76 raw deployments)
- Coverage basis: 2/6 confirmed own live verified implementations (33.3%); conservative 33.3% with 0 needs-review implementation(s)
- DeFi Llama TVL: $746,029,108.38
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for SwissBorg. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 6 contract row(s) across ethereum, sepolia. Structural roles: 2 core, 2 infra, 2 supporting. 4 row(s) use upgradeable patterns.

## Logic Topography

- Exact-run contract rows: 6
- Structural roles: core (2), infra (2), supporting (2)
- Contract kinds: contract (4), abstract (2)
- Detected standards: erc1967proxy (4), erc20 (1), erc20permit (1), ownable (1), pausable (1)
- Frameworks: openzeppelin (4), openzeppelin-upgradeable (4)
- Upgradeable-pattern rows: 4

## Fork Analysis

0 of 11 contracts are derived from known codebases. 11 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0xac15982ca8a8e8bac738fe492b84d8761b4384a3`, chain 1)
- UnnamedContract (`0xba9d4199fab4f26efe3551d490e3821486f135ba`, chain 1)
- UnnamedContract (`0xd048a8d52da402611a0c5eb6f7388ffc41cd1417`, chain 1)
- UnnamedContract (`0xf0de6a331ab2ee4199d81462e740bc38e6f879c0`, chain 1)
- UnnamedContract (`0xfb976ea3ae9bfe4bc36fb7078e0b32e579463e96`, chain 1)
- ChsbToBorgMigrator (`0x62931ef690876142114ecf5aa52cf0fbbe5e910b`, chain 1)
- ChsbToBorgMigratorV2 (`0xaa854688caab725fe17b7d21b46fda5af365985a`, chain 1)
- GnosisSafe (`0x259c444b50e3ab173c4f850bb40d85a9ea0230f3`, chain 1)
- NttManager (`0x66a28b080918184851774a89ab94850a41f6a1e5`, chain 1)
- SwissBorgToken (`0x64d0f55cd8c7133a9d7102b13987235f486f2224`, chain 1)
- WormholeTransceiver (`0x45e581d6841f0a99fc34f70871ef56b353813ddb`, chain 1)

## Contract Surface Quality

- Logic-topography rows: 6; live-surface rows included: 6 (6 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 8/14 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 2/6 (33.3%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 8 own, 4 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 61 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 4
- Confirmed-live implementations: 8 of 73 unique; 65 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 2/62
- Verified + Unaudited implementations: 60
- Verified by bytecode match: 0
- Unverified implementations: 11
- Unique implementations: 73
- Raw deployments: 76
- Audits discovered: 1 (1 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 1
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2023-08 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 1 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 2 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| Hacken | Tier 2 | 2 | 3.2% | 2023-08 |

## Contract Surface

### ✅ Verified + Audited (2)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| ChsbToBorgMigrator | unknown | project_anchor | own_supporting | 0 | ethereum | unit-393614 | `0x62931ef690876142114ecf5aa52cf0fbbe5e910b` | ✅ Audited |
| SwissBorgToken | unknown | project_anchor | own_supporting | 0 | ethereum | unit-393615 | `0x64d0f55cd8c7133a9d7102b13987235f486f2224` | ✅ Audited |

### ⚠️ Verified + Unaudited (60)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| AIR | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x85a0d3ff89813f17a968572e28af3d132aafc234` | ⚠️ Unaudited |
| ArmorCeramics | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x19da36dcf89327b2cc3d477b97dba499576f8e60` | ⚠️ Unaudited |
| Asset | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x000b2d5a56e8b2eacd8c9d9a6ead8d044fed87ac` | ⚠️ Unaudited |
| AssetProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x02086ce6fde7c1adf67140830972a3378bdb1b3a` | ⚠️ Unaudited |
| AssetWithCompliance | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2af703b86b8ccf30040d82b088b73842573d3d9c` | ⚠️ Unaudited |
| AssetWithWhitelist | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0c8f3d80103181fb6a68229bcb8b410b831a4e45` | ⚠️ Unaudited |
| Aura | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x49d51a0a38706a95ae6129f177bd293e8087e0f9` | ⚠️ Unaudited |
| AVtest | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7a16a48435d90580e9f54ff83b472413dfafe846` | ⚠️ Unaudited |
| BLOK | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xffc7a65176b532db7e1ac26c522ca07123f952e1` | ⚠️ Unaudited |
| ChsbToBorgMigratorV2 | unknown | project_anchor | own_supporting | 1 | ethereum | unit-393627 | 2 deployments: ethereum `0xaa854688caab725fe17b7d21b46fda5af365985a`; ethereum `0xfb976ea3ae9bfe4bc36fb7078e0b32e579463e96` | ⚠️ Unaudited |
| Coinoplex | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x567f4f0b0b5209644c0390f7860c7859b0f82a90` | ⚠️ Unaudited |
| CREDITCOIN | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5e51f6841d2f188c42c7c33a6a5e77fb05cfbabe` | ⚠️ Unaudited |
| CryptallionToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8574634a96bc7e56847c7df729c8acdbbea37681` | ⚠️ Unaudited |
| CryptykTokens | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x42a501903afaa1086b5975773375c80e363f4063` | ⚠️ Unaudited |
| EmphyCoin | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x50ee674689d75c0f88e8f83cfe8c4b69e8fd590d` | ⚠️ Unaudited |
| ETERBASE | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x49a1cbb5d28cdedd55b7daa627f658fbd8cf1d23` | ⚠️ Unaudited |
| FluxCoin | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x282eaf0c93b535731c1a2ef26a568e6131980c4a` | ⚠️ Unaudited |
| GLOBO | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5f3b30ecb4048eca205ce90a93f9949f74df3d8b` | ⚠️ Unaudited |
| GloboX | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x13eedd9cd79b55719fa1e656fbedc800d7f3d5f9` | ⚠️ Unaudited |
| GnosisSafe | unknown | project_anchor | own_supporting | 1 | ethereum | unit-393625 | `0x259c444b50e3ab173c4f850bb40d85a9ea0230f3` | ⚠️ Unaudited |
| HealthCareToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x446c9033e7516d820cc9a2ce2d0b7328b579406f` | ⚠️ Unaudited |
| InspeerTest | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc34e97712376ec830591e4dfd2efe8a8981143e2` | ⚠️ Unaudited |
| IOTW | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4fe327c5a809fa721d47b80c5038a0b393e61305` | ⚠️ Unaudited |
| K2G | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x926703fb558f46331b6a06322bcf9e9d017fe6ec` | ⚠️ Unaudited |
| Mark | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf453b5b9d4e0b5c62ffb256bb2378cc2bc8e8a89` | ⚠️ Unaudited |
| MarkOwnership | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0285d3178199d95602fe37a6f797e0036af62bc9` | ⚠️ Unaudited |
| MITIO | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xba4f403fceda8eb77d95810a7db12399bf843b7e` | ⚠️ Unaudited |
| MRKOwnership | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6722b7ef27c774f7cacdea9e98a47641521c69fe` | ⚠️ Unaudited |
| MRVL | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd10d9a35e84c4c04d46938276e40939b2bedeb25` | ⚠️ Unaudited |
| NttManager | unknown | project_anchor | own_supporting | 1 | ethereum | unit-393624 | 2 deployments: ethereum `0x66a28b080918184851774a89ab94850a41f6a1e5`; ethereum `0xd048a8d52da402611a0c5eb6f7388ffc41cd1417` | ⚠️ Unaudited |
| OpenGoodsToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4adbfb956bdb58e84a700b62a2bd8b4d5a302b80` | ⚠️ Unaudited |
| OptheriumToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0b34a04b77aa9bd2c07ef365c05f7d0234c95630` | ⚠️ Unaudited |
| OrderbookBTC | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0cbeae4005826a63153875d0fbbfe8a91736bd76` | ⚠️ Unaudited |
| OrderbookPresaleToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb048bad454a993537caed5a7917e7c944a720848` | ⚠️ Unaudited |
| OrderbookProfitShare | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3fd5219b7280291dd83beb8baff96d15f22aab49` | ⚠️ Unaudited |
| OrderbookUSD | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xca075cf7496d7fee464ceb98ccfbd3b6408bdf63` | ⚠️ Unaudited |
| PEXToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x55c2a0c171d920843560594de3d6eecc09efc098` | ⚠️ Unaudited |
| RAISON | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb0ed9d9495971a23fd5f0b9244b3dbbb402707ee` | ⚠️ Unaudited |
| RedCat | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfe056d5c08c349beabc0369b79319636b0bf5d94` | ⚠️ Unaudited |
| REDL | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x90b567371fbb8f1637d0f41aeee420031b1ea63a` | ⚠️ Unaudited |
| REMME | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x83984d6142934bb535793a82adb0a46ef0f66b6d` | ⚠️ Unaudited |
| Reputy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9a540227a22f99ceb492e3c4935176a1e2364a4c` | ⚠️ Unaudited |
| RetailGlobalToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x55f551ea41f7a8025412acbbc26701f968bdb4d5` | ⚠️ Unaudited |
| SIXAToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6ccc23875503c5a1cd901b3006bdb5eb84c17433` | ⚠️ Unaudited |
| SyncFab | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6710c63432a2de02954fc0f851db07146a6c0312` | ⚠️ Unaudited |
| Terra | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcaf187eb618d2335b4130d784a697be96f4b07b9` | ⚠️ Unaudited |
| Test | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc574d5f8f7e79c8a9c1d077be9154131aea84139` | ⚠️ Unaudited |
| TEST135 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x537f77a805e81a7072fcb1b365727087b3496ddc` | ⚠️ Unaudited |
| TestArmorToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x584beba37d962edd0fb4b16b10771d146dc516c3` | ⚠️ Unaudited |
| TheDealCoin | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8458d484572ceb89ce70eebbe17dc84707b241ed` | ⚠️ Unaudited |
| TokenForTelevision | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa838be6e4b760e6061d4732d6b9f11bf578f9a76` | ⚠️ Unaudited |
| TraderStars | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcdb2f2d5a5483be5dbe56234ca222eb4e1a8591d` | ⚠️ Unaudited |
| TransceiverStructs | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4e404415af8a8a9de725c4f9d3426e79e1571f7c` | ⚠️ Unaudited |
| TrustMeUpCoin | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4e734332e8a6ee5ff779f8b7349d6b449ff97092` | ⚠️ Unaudited |
| UBTFreeze | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd6b6a6258a521036dfa4b2c1b8b633ae89bb8f53` | ⚠️ Unaudited |
| UnicornSPXSecurityToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x38d3d9abbdba8305ebb8b72996efe55bf785aed0` | ⚠️ Unaudited |
| VaultbankToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe63ba55d9365ca962ec49d1c0e42a44109bf09d4` | ⚠️ Unaudited |
| VOLUM | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf1c460ae47e06be0756f9a1831467ff2f5fa4ecc` | ⚠️ Unaudited |
| WormholeTransceiver | unknown | project_anchor | own_supporting | 1 | ethereum | unit-393626 | 2 deployments: ethereum `0x45e581d6841f0a99fc34f70871ef56b353813ddb`; ethereum `0xf0de6a331ab2ee4199d81462e740bc38e6f879c0` | ⚠️ Unaudited |
| Zichain | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa48778849bf4ecee7a9de39e394930787717c2b5` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (11)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3c0801025be09463476359fb4c85eb2f2577d4e7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x679cfb1c44ff46d8847ff339a1654bf38a551efe` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x70ae3b93a49ca26abf80d8b26d5cf58087dc1bd5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7d4e1c945651017ecb1911d037d6186671fe0b43` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-393617 | `0xac15982ca8a8e8bac738fe492b84d8761b4384a3` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-393618 | `0xba9d4199fab4f26efe3551d490e3821486f135ba` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc5a86570bb55c1109c92a9523f93fe6a89de2c77` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-393619 | `0x3c0801025be09463476359fb4c85eb2f2577d4e7` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-393620 | `0x679cfb1c44ff46d8847ff339a1654bf38a551efe` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-393621 | `0x70ae3b93a49ca26abf80d8b26d5cf58087dc1bd5` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-393623 | `0xc5a86570bb55c1109c92a9523f93fe6a89de2c77` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [Rendered PDF capture](https://311270402-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2F20eavHG09ovQxEkHaAac%2Fuploads%2Fhp0mS4vGccH5stGdNAhQ%2FSwissborg_SC-Audit-Report_22.08.2023_SA-1552.pdf) | Hacken | Audit | 2023-08 | stale | Direct | contract_name | matched | 2 | 0 | 0 | 0 | high |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [24525] Rendered PDF capture — matched: Two contracts in scope: ChsbToBorgMigrator and SwissBorgToken. Audit date from cover page: 22 Aug, 2023.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| Rendered PDF capture | ChsbToBorgMigrator | own contract | ChsbToBorgMigrator (selected) `0x62931ef690876142114ecf5aa52cf0fbbe5e910b` — deployed 2023-10-10 10:27:11+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Rendered PDF capture | SwissBorgToken | own contract | SwissBorgToken (selected) `0x64d0f55cd8c7133a9d7102b13987235f486f2224` — deployed 2023-08-23 09:36:23+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | `0xaa854688caab725fe17b7d21b46fda5af365985a` | ChsbToBorgMigratorV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x66a28b080918184851774a89ab94850a41f6a1e5` | NttManager | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 60 |
| upstream | 1 |
| standard_library | 1 |
| needs_review | 11 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Address-book scope dispositions: 2 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 0 unmatched
- Matched-own operational status: 2 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=1
- Match method counts: unique_name=2

Fork inheritance lineage and inherited audits are included when available.
