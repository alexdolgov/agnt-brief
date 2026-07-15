# Agentic Audit Brief: Universe XYZ

## Export Authority

- Production state: **published scope**
- Raw selected rows: 9 across 2 audit(s)
- Eligible audit results: 3 (2 matched; 1 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e9e09d06b414f9cd852c36a58d42ce16279465f2d9791cd2a8178f3f54b89ecd`

## Project Overview

- Project: Universe XYZ (`universe-xyz`)
- Website: [https://universe.xyz/](https://universe.xyz/)
- Lifecycle: unknown
- Generated: 2026-07-15T18:30:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: ethereum
- Contract surface: 50 unique implementations (236 raw deployments)
- Coverage basis: 5/15 confirmed own live verified implementations (33.3%); conservative 33.3% with 0 needs-review implementation(s)
- DeFi Llama TVL: $1,590,712.63
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for Universe XYZ. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 15 contract row(s) across ethereum. Structural roles: 7 unclassified, 5 core, 3 supporting. No upgradeable pattern was identified in these rows.

## Logic Topography

- Exact-run contract rows: 15
- Structural roles: unclassified (7), core (5), supporting (3)
- Contract kinds: contract (15)
- Detected standards: ownable (2), erc165 (1)
- Frameworks: openzeppelin (6)
- Upgradeable-pattern rows: 0

## Fork Analysis

0 of 13 contracts are derived from known codebases. 13 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0x7263ca...cdf003`, chain 1)
- UnnamedContract (`0x8aa438...4f1f0d`, chain 1)
- CommunityVault (`0xc6f269...f9bd8e`, chain 1)
- Rewards (`0xf306ad...c31205`, chain 1)
- Staking (`0x2d6157...ba0c09`, chain 1)
- Supernova (`0x7b8660...872962`, chain 1)
- YieldFarmGenericToken (`0x0ef485...0ea0c7`, chain 1)
- YieldFarmGenericToken (`0x1d59a8...d7fc8f`, chain 1)
- YieldFarmGenericToken (`0x1f926b...d0185e`, chain 1)
- YieldFarmGenericToken (`0x49e01d...9fdf29`, chain 1)
- YieldFarmGenericToken (`0x4c82b9...2811a9`, chain 1)
- YieldFarmGenericToken (`0x9f8b01...7ea659`, chain 1)
- YieldFarmGenericToken (`0xe3e186...7a5f32`, chain 1)

## Contract Surface Quality

- Logic-topography rows: 15; live-surface rows included: 15 (15 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 16/22 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 5/15 (33.3%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 16 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 34 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 5
- Confirmed-live implementations: 16 of 50 unique; 34 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 5/37
- Verified + Unaudited implementations: 32
- Verified by bytecode match: 0
- Unverified implementations: 13
- Unique implementations: 50
- Raw deployments: 236
- Audits discovered: 3 (3 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 2
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2022-03 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 3 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 5 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| Quantstamp | Tier 2 | 5 | 13.5% | 2021-02 |
| Haechi | Tier 2 | 4 | 10.8% | 2021-01 |

## Contract Surface

### ✅ Verified + Audited (5)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| DiamondCutFacet | unknown | project_anchor | own_supporting | 0 | ethereum | unit-395318 | `0x441710...41a68e` | ✅ Audited |
| DiamondLoupeFacet | unknown | project_anchor | own_supporting | 0 | ethereum | unit-395326 | `0x75e333...801ec3` | ✅ Audited |
| Governance | unknown | project_anchor | own_supporting | 0 | ethereum | unit-395332 | `0xa8047c...b272c2` | ✅ Audited |
| OwnershipFacet | unknown | project_anchor | own_supporting | 0 | ethereum | unit-395321 | `0x5c7cb1...3e75cc` | ✅ Audited |
| Rewards | unknown | project_anchor | own_supporting | 0 | ethereum | unit-395340 | `0xf306ad...c31205` | ✅ Audited |

### ⚠️ Verified + Unaudited (32)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| Artifaqt | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x34d565...5e1d34` | ⚠️ Unaudited |
| BarnBridgeToken | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0391d2...37750f` | ⚠️ Unaudited |
| CommunityVault | unknown | project_anchor | own_supporting | 0 | ethereum | unit-395334 | `0xc6f269...f9bd8e` | ⚠️ Unaudited |
| DevFund | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf1e72f...b083d7` | ⚠️ Unaudited |
| EscrowedIlluvium2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7e77dc...f1b068` | ⚠️ Unaudited |
| HolderToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5e4e66...fd04f4` | ⚠️ Unaudited |
| IlluvinatiCouncil | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xaebd9b...52dc69` | ⚠️ Unaudited |
| IlluviumERC20 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x767fe9...d7ca0e` | ⚠️ Unaudited |
| IlluviumIDOCollection | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4222b2...161e52` | ⚠️ Unaudited |
| IlluviumNFT | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x384aa0...af9fdf`; ethereum `0xb90161...cbf8b9` | ⚠️ Unaudited |
| ILVPool | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6b7220...e201c6` | ⚠️ Unaudited |
| ILVPool | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x7f5f85...34291d`; ethereum `0xdb0a2a...f20cb3` | ⚠️ Unaudited |
| MerkleDistributor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa904f2...a8c79a` | ⚠️ Unaudited |
| MockedPool | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa1b1c0...e5a8c6` | ⚠️ Unaudited |
| NFTClaimManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3fa9f4...aa9c4c` | ⚠️ Unaudited |
| NFTDisperser | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf5df4f...b3233c` | ⚠️ Unaudited |
| PoolFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x53aff3...56d6e1`; ethereum `0x9dca38...94597c` | ⚠️ Unaudited |
| PreIlluvium | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0xabdef6...78f11f`; ethereum `0xc657f5...536d36` | ⚠️ Unaudited |
| Staking | unknown | project_anchor | own_supporting | 0 | ethereum | unit-395317 | `0x2d6157...ba0c09` | ⚠️ Unaudited |
| Supernova | unknown | project_anchor | own_supporting | 1 | ethereum | unit-395342 | 2 deployments: ethereum `0x7b8660...872962`; ethereum `0x8aa438...4f1f0d` | ⚠️ Unaudited |
| SushiLPPool | core_logic | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0xe98477...571cc2` | ⚠️ Unaudited |
| UniswapV2Pair | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbbbdb1...14d69a` | ⚠️ Unaudited |
| Vesting | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 174 deployments: ethereum `0x0321d9...5352f8`; ethereum `0x036654...fded99`; ethereum `0x04f1dc...e521f2`; ethereum `0x074bbf...461249`; ethereum `0x07afd4...10a7cc`; ethereum `0x098400...7fb963`; ethereum `0x0c19ef...268d2c`; ethereum `0x0c638d...38531e`; ethereum `0x0cd11e...3c8a1d`; ethereum `0x0cda7f...06157a`; ethereum `0x0d90a3...69601c`; ethereum `0x0ed3b3...b9a8c3`; ethereum `0x0faea9...0bc70f`; ethereum `0x10f27e...8c35cc`; ethereum `0x111316...5ee755`; ethereum `0x1133b8...7f6490`; ethereum `0x11dd9d...dcb414`; ethereum `0x14dbff...fb9ccf`; ethereum `0x14f768...88cb34`; ethereum `0x1531d9...8a988e`; ethereum `0x1568b2...2323de`; ethereum `0x15b789...993386`; ethereum `0x15c936...44ae0a`; ethereum `0x16d85c...f7674d`; ethereum `0x18c520...e7e7c5`; ethereum `0x191e56...bd5a3e`; ethereum `0x19b135...ee853e`; ethereum `0x1cc631...f1eea3`; ethereum `0x1fdc8d...dc00f7`; ethereum `0x2181d9...d1d1be`; ethereum `0x222c14...00f822`; ethereum `0x230407...5c4f20`; ethereum `0x25ea79...10b242`; ethereum `0x26e116...deead1`; ethereum `0x29c956...99f9ae`; ethereum `0x2b014d...4f88d1`; ethereum `0x2e7f9b...9ea347`; ethereum `0x2f25c2...dadfe9`; ethereum `0x2f5007...b65676`; ethereum `0x3363fa...f8a5dc`; ethereum `0x3395c2...ec63e0`; ethereum `0x3736ce...f10214`; ethereum `0x386153...2e47ab`; ethereum `0x3a50b4...b74d8f`; ethereum `0x3ac7c6...94ce29`; ethereum `0x3bc624...938a76`; ethereum `0x3d282d...9a9b86`; ethereum `0x3d44a1...aa4a13`; ethereum `0x3e26b6...79caa8`; ethereum `0x3f2de6...acce7c`; ethereum `0x40fcb9...cd44d1`; ethereum `0x41092c...75d757`; ethereum `0x4243b2...f2955b`; ethereum `0x454e0e...e7bda9`; ethereum `0x45b90e...9c6039`; ethereum `0x4808a6...db7486`; ethereum `0x486597...b75958`; ethereum `0x4955ca...8242db`; ethereum `0x4cc488...fe1807`; ethereum `0x4d0640...c9e8ab`; ethereum `0x4d116d...5d1b78`; ethereum `0x51022e...46d607`; ethereum `0x5384b6...450630`; ethereum `0x54ae04...2b49cb`; ethereum `0x5520a5...ca2060`; ethereum `0x559896...4d0ec2`; ethereum `0x55a8e6...bc2976`; ethereum `0x5f6a1e...2749cc`; ethereum `0x63ed6e...b7c206`; ethereum `0x640d37...e0ff7a`; ethereum `0x642bbe...6e050e`; ethereum `0x646d08...b43a0c`; ethereum `0x64ddfc...3d6c3c`; ethereum `0x64f9f2...b50a15`; ethereum `0x6592fb...a4115b`; ethereum `0x6b0f2f...7510f7`; ethereum `0x6b91b1...fd56eb`; ethereum `0x6b96e1...1bb61f`; ethereum `0x6c1320...ebef85`; ethereum `0x6cf3da...aaa110`; ethereum `0x6d8537...e7123f`; ethereum `0x705804...0a68f3`; ethereum `0x709d44...f6cef8`; ethereum `0x72af11...8fa1b4`; ethereum `0x7336af...f2f191`; ethereum `0x73e68b...34930b`; ethereum `0x7800cd...31751e`; ethereum `0x783cf9...90e42f`; ethereum `0x786ee8...eb190a`; ethereum `0x7ba699...e9290c`; ethereum `0x7bd02b...b9ac45`; ethereum `0x7d0fe8...90ee4a`; ethereum `0x7d2691...f8aeda`; ethereum `0x82bcd4...a9ff83`; ethereum `0x831512...b45765`; ethereum `0x846f0d...d54451`; ethereum `0x852077...d69b9c`; ethereum `0x853448...7ac342`; ethereum `0x85409f...d019f3`; ethereum `0x854a23...e9e9ca`; ethereum `0x889a70...c47b95`; ethereum `0x8957ec...0ce2b8`; ethereum `0x8a77cd...314007`; ethereum `0x8b5381...8cccb4`; ethereum `0x8c9596...690efc`; ethereum `0x90ea42...c68aca`; ethereum `0x910fa9...1a0785`; ethereum `0x965e03...8257f0`; ethereum `0x99cd8c...bc31f5`; ethereum `0x9c9cbc...b9991a`; ethereum `0x9d063c...43b0c7`; ethereum `0xa1bbad...043841`; ethereum `0xa2e754...3351e5`; ethereum `0xa3e080...d94353`; ethereum `0xa5d9b8...a315db`; ethereum `0xa9a534...b61e85`; ethereum `0xaaff4c...917c5b`; ethereum `0xac5451...a3a36c`; ethereum `0xad6eb0...16c75a`; ethereum `0xb19683...437bae`; ethereum `0xb43b25...9373ac`; ethereum `0xb7d407...6209a7`; ethereum `0xb9adef...d39af1`; ethereum `0xb9c6a6...7d685c`; ethereum `0xbb4b3f...e06173`; ethereum `0xbb773d...0ab3c6`; ethereum `0xbf1ac0...d1e194`; ethereum `0xc0e835...ca275a`; ethereum `0xc25045...d60154`; ethereum `0xc387dc...b4ef87`; ethereum `0xc77719...955961`; ethereum `0xc94c55...d62201`; ethereum `0xca46fd...1ded64`; ethereum `0xce49e2...62b7b4`; ethereum `0xd0bd07...b6937d`; ethereum `0xd0f6a8...4c85f6`; ethereum `0xd292c5...97e95c`; ethereum `0xd39795...225882`; ethereum `0xd480c9...7a98fc`; ethereum `0xd5ca08...9c6e32`; ethereum `0xd6173b...4c3cc4`; ethereum `0xd756ea...7fe2a6`; ethereum `0xd847d7...5608c5`; ethereum `0xdb87d2...e735c0`; ethereum `0xdc6a0c...14e2c8`; ethereum `0xdd510b...b50d3e`; ethereum `0xdd6506...b1d4d7`; ethereum `0xdd76ea...68de6f`; ethereum `0xded5c1...c9f690`; ethereum `0xdf206f...dba130`; ethereum `0xdf42c0...cdd5b3`; ethereum `0xdfb512...955f27`; ethereum `0xe050e0...877793`; ethereum `0xe24dde...0dd847`; ethereum `0xe6fa7c...ea2935`; ethereum `0xe7ca02...d2b0f9`; ethereum `0xe83aab...3b74f3`; ethereum `0xe9d10f...f9b433`; ethereum `0xea0c0c...41d036`; ethereum `0xead154...ced8ba`; ethereum `0xed15b1...778618`; ethereum `0xef2439...5e7f4c`; ethereum `0xef2abb...0c26e5`; ethereum `0xf081ee...18b764`; ethereum `0xf25ecb...f05b3e`; ethereum `0xf2bdbe...c27c68`; ethereum `0xf386cc...aef64a`; ethereum `0xf38cc3...b13abf`; ethereum `0xf4a302...ec56b9`; ethereum `0xf4ab19...69da18`; ethereum `0xf8a3d8...f97454`; ethereum `0xf8e6c7...69024f`; ethereum `0xfea490...e057e1`; ethereum `0xffa1cd...16980e` | ⚠️ Unaudited |
| VotingIlluvium | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 9 deployments: ethereum `0x035dc7...b08207`; ethereum `0x04da3f...21392c`; ethereum `0x19ac50...413945`; ethereum `0x2e15ea...14b71b`; ethereum `0x487e58...173032`; ethereum `0x5f04ca...436418`; ethereum `0x98c7c1...ca0c76`; ethereum `0xbf9a92...8ce17e`; ethereum `0xe8d3c5...73fb00` | ⚠️ Unaudited |
| XYZToken | token | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x618679...fa2883` | ⚠️ Unaudited |
| YieldFarmGenericToken | unknown | project_anchor | own_supporting | 0 | ethereum | unit-395314 | `0x0ef485...0ea0c7` | ⚠️ Unaudited |
| YieldFarmGenericToken | unknown | project_anchor | own_supporting | 0 | ethereum | unit-395315 | `0x1d59a8...d7fc8f` | ⚠️ Unaudited |
| YieldFarmGenericToken | unknown | project_anchor | own_supporting | 0 | ethereum | unit-395316 | `0x1f926b...d0185e` | ⚠️ Unaudited |
| YieldFarmGenericToken | unknown | project_anchor | own_supporting | 0 | ethereum | unit-395319 | `0x49e01d...9fdf29` | ⚠️ Unaudited |
| YieldFarmGenericToken | unknown | project_anchor | own_supporting | 0 | ethereum | unit-395320 | `0x4c82b9...2811a9` | ⚠️ Unaudited |
| YieldFarmGenericToken | unknown | project_anchor | own_supporting | 0 | ethereum | unit-395330 | `0x9f8b01...7ea659` | ⚠️ Unaudited |
| YieldFarmGenericToken | unknown | project_anchor | own_supporting | 0 | ethereum | unit-395339 | `0xe3e186...7a5f32` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (13)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x088823...cae7b8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x10033f...24130c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1b7138...b8a8f3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1db797...b888c3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x257377...9fc96e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2d07e1...1d4340` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4d50a5...54e45e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6a897e...42cfc7` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-395323 | `0x7263ca...cdf003` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8b42d3...4c2419` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa305cd...a3dc70` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xae37e6...59e819` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd293ed...8ce487` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [HAECHI-DAO.pdf](https://github.com/UniverseXYZ/xyzDAO-PM/blob/master/audits/HAECHI-DAO.pdf) | Haechi | Audit | 2021-01 | stale | Direct | contract_name | matched | 4 | 0 | 0 | 9 | high |
| [PerfectAbstractions-Marketplace-Audit.pdf](https://github.com/UniverseXYZ/xyzDAO-PM/blob/master/audits/PerfectAbstractions-Marketplace-Audit.pdf) | Perfect Abstractions | Audit | 2022-03 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 27 | high |
| [Quantstamp-DAO.pdf](https://github.com/UniverseXYZ/xyzDAO-PM/blob/master/audits/Quantstamp-DAO.pdf) | Quantstamp | Audit | 2021-02 | stale | Direct | n/a | matched | 5 | 0 | 0 | 22 | n/a |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [14702] HAECHI-DAO.pdf — matched: Contracts listed in 'Contracts Subject to Audit' section. Date from cover page.
- [14703] PerfectAbstractions-Marketplace-Audit.pdf — no match: All contracts listed in the scope section of the audit report.
- [14704] Quantstamp-DAO.pdf — matched: No reason recorded

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| HAECHI-DAO.pdf | Barn | unmatched — not counted | — | listed in scope | no |
| HAECHI-DAO.pdf | Reward | unmatched — not counted | — | listed in scope | no |
| HAECHI-DAO.pdf | Parameters | unmatched — not counted | — | listed in scope | no |
| HAECHI-DAO.pdf | Bridge | unmatched — not counted | — | listed in scope | no |
| HAECHI-DAO.pdf | Governance | own contract | Governance (selected) `0xa8047c...b272c2` — deployed 2021-05-25 12:02:34+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| HAECHI-DAO.pdf | BarnFacet | unmatched — not counted | — | listed in scope | no |
| HAECHI-DAO.pdf | DiamondCutFacet | own contract | DiamondCutFacet (selected) `0x441710...41a68e` — deployed 2021-05-25 12:39:25+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| HAECHI-DAO.pdf | DiamondLoupeFacet | own contract | DiamondLoupeFacet (selected) `0x75e333...801ec3` — deployed 2021-05-25 12:40:53+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| HAECHI-DAO.pdf | OwnershipFacet | own contract | OwnershipFacet (selected) `0x5c7cb1...3e75cc` — deployed 2021-05-25 12:42:11+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| HAECHI-DAO.pdf | LibBarnStorage | unmatched — not counted | — | listed in scope | no |
| HAECHI-DAO.pdf | LibDiamond | unmatched — not counted | — | listed in scope | no |
| HAECHI-DAO.pdf | LibDiamondStorage | unmatched — not counted | — | listed in scope | no |
| HAECHI-DAO.pdf | LibOwnership | unmatched — not counted | — | listed in scope | no |
| PerfectAbstractions-Marketplace-Audit.pdf | UniverseMarketplaceCore | unmatched — not counted | — | listed in scope | no |
| PerfectAbstractions-Marketplace-Audit.pdf | UniverseMarketplace | unmatched — not counted | — | listed in scope | no |
| PerfectAbstractions-Marketplace-Audit.pdf | ERC721FloorBidMatcher | unmatched — not counted | — | listed in scope | no |
| PerfectAbstractions-Marketplace-Audit.pdf | TransferProxy | unmatched — not counted | — | listed in scope | no |
| PerfectAbstractions-Marketplace-Audit.pdf | ERC721LazyMintTransferProxy | unmatched — not counted | — | listed in scope | no |
| PerfectAbstractions-Marketplace-Audit.pdf | ERC20TransferProxy | unmatched — not counted | — | listed in scope | no |
| PerfectAbstractions-Marketplace-Audit.pdf | SimpleTransferManager | unmatched — not counted | — | listed in scope | no |
| PerfectAbstractions-Marketplace-Audit.pdf | UniverseTransferManager | unmatched — not counted | — | listed in scope | no |
| PerfectAbstractions-Marketplace-Audit.pdf | TransferExecutor | unmatched — not counted | — | listed in scope | no |
| PerfectAbstractions-Marketplace-Audit.pdf | ERC2981Royalties | unmatched — not counted | — | listed in scope | no |
| PerfectAbstractions-Marketplace-Audit.pdf | HasSecondarySaleFees | unmatched — not counted | — | listed in scope | no |
| PerfectAbstractions-Marketplace-Audit.pdf | RoyaltiesRegistry | unmatched — not counted | — | listed in scope | no |
| PerfectAbstractions-Marketplace-Audit.pdf | OrderValidator | unmatched — not counted | — | listed in scope | no |
| PerfectAbstractions-Marketplace-Audit.pdf | OperatorRole | unmatched — not counted | — | listed in scope | no |
| PerfectAbstractions-Marketplace-Audit.pdf | BpLibrary | unmatched — not counted | — | listed in scope | no |
| PerfectAbstractions-Marketplace-Audit.pdf | LibAsset | unmatched — not counted | — | listed in scope | no |
| PerfectAbstractions-Marketplace-Audit.pdf | LibERC1155LazyMint | unmatched — not counted | — | listed in scope | no |
| PerfectAbstractions-Marketplace-Audit.pdf | LibERC721LazyMint | unmatched — not counted | — | listed in scope | no |
| PerfectAbstractions-Marketplace-Audit.pdf | LibFeeSide | unmatched — not counted | — | listed in scope | no |
| PerfectAbstractions-Marketplace-Audit.pdf | LibFill | unmatched — not counted | — | listed in scope | no |
| PerfectAbstractions-Marketplace-Audit.pdf | LibMath | unmatched — not counted | — | listed in scope | no |
| PerfectAbstractions-Marketplace-Audit.pdf | LibOrder | unmatched — not counted | — | listed in scope | no |
| PerfectAbstractions-Marketplace-Audit.pdf | LibOrderData | unmatched — not counted | — | listed in scope | no |
| PerfectAbstractions-Marketplace-Audit.pdf | LibPart | unmatched — not counted | — | listed in scope | no |
| PerfectAbstractions-Marketplace-Audit.pdf | LibSignature | unmatched — not counted | — | listed in scope | no |
| PerfectAbstractions-Marketplace-Audit.pdf | LibTransfer | unmatched — not counted | — | listed in scope | no |
| PerfectAbstractions-Marketplace-Audit.pdf | AssetMatcher | unmatched — not counted | — | listed in scope | no |
| Quantstamp-DAO.pdf | Barn | unmatched — not counted | — | — | no |
| Quantstamp-DAO.pdf | BarnFacet | unmatched — not counted | — | — | no |
| Quantstamp-DAO.pdf | BarnMock | unmatched — not counted | — | — | no |
| Quantstamp-DAO.pdf | Bridge | unmatched — not counted | — | — | no |
| Quantstamp-DAO.pdf | ChangeRewardsFacet | unmatched — not counted | — | — | no |
| Quantstamp-DAO.pdf | DiamondCutFacet | own contract | DiamondCutFacet (selected) `0x441710...41a68e` — deployed 2021-05-25 12:39:25+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Quantstamp-DAO.pdf | DiamondLoupeFacet | own contract | DiamondLoupeFacet (selected) `0x75e333...801ec3` — deployed 2021-05-25 12:40:53+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Quantstamp-DAO.pdf | ERC20Mock | unmatched — not counted | — | — | no |
| Quantstamp-DAO.pdf | Governance | own contract | Governance (selected) `0xa8047c...b272c2` — deployed 2021-05-25 12:02:34+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Quantstamp-DAO.pdf | IBarn | unmatched — not counted | — | — | no |
| Quantstamp-DAO.pdf | IBridge | unmatched — not counted | — | — | no |
| Quantstamp-DAO.pdf | IDiamondCut | unmatched — not counted | — | — | no |
| Quantstamp-DAO.pdf | IDiamondLoupe | unmatched — not counted | — | — | no |
| Quantstamp-DAO.pdf | IERC165 | unmatched — not counted | — | — | no |
| Quantstamp-DAO.pdf | IERC173 | unmatched — not counted | — | — | no |
| Quantstamp-DAO.pdf | IRewards | unmatched — not counted | — | — | no |
| Quantstamp-DAO.pdf | LibBarnStorage | unmatched — not counted | — | — | no |
| Quantstamp-DAO.pdf | LibDiamond | unmatched — not counted | — | — | no |
| Quantstamp-DAO.pdf | LibDiamondStorage | unmatched — not counted | — | — | no |
| Quantstamp-DAO.pdf | LibOwnership | unmatched — not counted | — | — | no |
| Quantstamp-DAO.pdf | MulticallMock | unmatched — not counted | — | — | no |
| Quantstamp-DAO.pdf | OwnershipFacet | own contract | OwnershipFacet (selected) `0x5c7cb1...3e75cc` — deployed 2021-05-25 12:42:11+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Quantstamp-DAO.pdf | Parameters | unmatched — not counted | — | — | no |
| Quantstamp-DAO.pdf | Rewards | own contract | Rewards (selected) `0xf306ad...c31205` — deployed 2021-05-25 12:45:05+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Quantstamp-DAO.pdf | RewardsMock | unmatched — not counted | — | — | no |
| Quantstamp-DAO.pdf | Test1Facet | unmatched — not counted | — | — | no |
| Quantstamp-DAO.pdf | Test2Facet | unmatched — not counted | — | — | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | `0xc6f269...f9bd8e` | CommunityVault | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x2d6157...ba0c09` | Staking | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x7b8660...872962` | Supernova | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x0ef485...0ea0c7` | YieldFarmGenericToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x1d59a8...d7fc8f` | YieldFarmGenericToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x1f926b...d0185e` | YieldFarmGenericToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x49e01d...9fdf29` | YieldFarmGenericToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x4c82b9...2811a9` | YieldFarmGenericToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x9f8b01...7ea659` | YieldFarmGenericToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xe3e186...7a5f32` | YieldFarmGenericToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 35 |
| upstream | 2 |
| standard_library | 0 |
| needs_review | 13 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Address-book scope dispositions: 9 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 58 unmatched
- Matched-own operational status: 9 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=2
- Match method counts: unique_name=9

Zero-match audit list:

- [14703] PerfectAbstractions-Marketplace-Audit.pdf

Fork inheritance lineage and inherited audits are included when available.
