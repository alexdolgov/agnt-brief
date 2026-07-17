# Agentic Audit Brief: Zoth

## Export Authority

- Production state: **published scope**
- Raw selected rows: 1 across 1 audit(s)
- Eligible audit results: 5 (1 matched; 4 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e9e09d06b414f9cd852c36a58d42ce16279465f2d9791cd2a8178f3f54b89ecd`

## Project Overview

- Project: Zoth (`zoth`)
- Website: [https://zoth.io](https://zoth.io)
- Lifecycle: unknown
- Generated: 2026-07-15T18:30:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: avalanche, base, ethereum, manta-pacific, metis
- Contract surface: 47 unique implementations (69 raw deployments)
- Coverage basis: 1/8 confirmed own live verified implementations (12.5%); conservative 12.5% with 0 needs-review implementation(s)
- DeFi Llama TVL: $2,197,730.00
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for Zoth. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 18 contract row(s) across avalanche, base, ethereum, manta-pacific, metis. Structural roles: 11 unclassified, 4 infra, 3 core. 7 row(s) use upgradeable patterns.

## Logic Topography

- Exact-run contract rows: 18
- Structural roles: unclassified (11), infra (4), core (3)
- Contract kinds: contract (18)
- Detected standards: erc1967proxy (5), erc165 (1), erc721 (1)
- Frameworks: openzeppelin (7), openzeppelin-upgradeable (7)
- Upgradeable-pattern rows: 7

## Fork Analysis

0 of 30 contracts are derived from known codebases. 30 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0x2243c2e006103720f0a02bf1971d6495e9cdefff`, chain 1)
- UnnamedContract (`0x2ed553b1d1fc27a7b888e21973311c9b181ca1dc`, chain 1)
- UnnamedContract (`0x3854702034855287be0fb4a040580cb89621290b`, chain 1)
- UnnamedContract (`0x5dafc0ee88997a2a2aa4b8e9c4411fab82fe2b16`, chain 1)
- UnnamedContract (`0x5ec9696b19e06dbfd47808bf314024b5eb32dafa`, chain 1)
- UnnamedContract (`0x6283f77db630d6fe69a454ef6cf626e98b117c9b`, chain 1)
- UnnamedContract (`0x7dc9748da8e762e569f9269f48f69a1a9f8ea761`, chain 1)
- UnnamedContract (`0x7f0cb69fa200807a13e61ebdb0c43d078a6ecfe5`, chain 1)
- UnnamedContract (`0x800bae296599d2cab2202cf7d21de96504b5aca8`, chain 1)
- UnnamedContract (`0x82f3a0392f58c50fa90542519832471bae93e43e`, chain 1)
- UnnamedContract (`0x9716501620cd6e0bd6297efc2559cdca2f941aac`, chain 1)
- UnnamedContract (`0xadb41aee4c5cd373199f3509298824c473f671f7`, chain 1)
- UnnamedContract (`0xbf1060028b212896f799cfbaea1ed4eebd060978`, chain 1)
- UnnamedContract (`0xd7cbaa06d43a248627af105c1944963143e38056`, chain 1)
- UnnamedContract (`0xe81250ed196e45881b78ae92bc978e1de4d61a22`, chain 1)
- UnnamedContract (`0xfed3d6557dc46a1b25d0a6f666513cb33835864b`, chain 1)
- UnnamedContract (`0x2d3d1a6982840dd88bc2380fd557f8a9d5e27a77`, chain 1088)
- AccessManager (`0xb027570ae95a3d546b166d805ecd216d86b7ab18`, chain 1)
- ERC1967Proxyy (`0x061a5839b9057e5ed675c6982fdfab31a3011d95`, chain 1)
- ERC1967Proxyy (`0x255f6bbec8c3310fd78cb679da529da9aa0d25a6`, chain 1)
- ERC1967Proxyy (`0x400b1894b0b68d359622f79e961915b36e454803`, chain 1)
- ERC1967Proxyy (`0x4fb32d9cc9540e002fcf78bfe6ffdcb3aa4008b8`, chain 1)
- ERC1967Proxyy (`0x675d73734546b2f668b27659bebfad7582902a18`, chain 1)
- ERC1967Proxyy (`0x70072cdbf497ce235d3d55695db6842c8a31d36d`, chain 1)
- ERC1967Proxyy (`0xc59f3b833a6366b2fb45008156253f11885f34ec`, chain 1)
- Registry (`0xc3274b69929be2213350cb28d41eed6ded464309`, chain 1)
- USYCVault (`0x598fed1b9e26a9427fa04fa01c4f110545c393b2`, chain 1)
- VaultRegistry (`0x2dfc03b5eca6823bc527e26c4a4b9dc1219dbe1c`, chain 1)
- WithdrawalSystem (`0xe1ad814210e5c95f6c849c7ac08402ab3969c0fb`, chain 1)
- ZeUSD_CDP (`0x1ba928070771d3fb148f37209cf8a6d0fe4507b0`, chain 1)

## Contract Surface Quality

- Logic-topography rows: 18; live-surface rows included: 18 (16 live, 2 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 25/26 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 1/8 (12.5%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 25 own, 1 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 21 discovered implementations shown in the inventory but excluded from coverage (1 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 17
- Confirmed-live implementations: 25 of 47 unique; 22 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 1/25
- Verified + Unaudited implementations: 24
- Verified by bytecode match: 0
- Unverified implementations: 22
- Unique implementations: 47
- Raw deployments: 69
- Audits discovered: 5 (5 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 1
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2026-03 (fresh)
- Audit staleness (calendar age): 3 fresh, 2 aging, 0 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 1 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| SolidityScan | Tier 2 | 1 | 4.0% | 2025-01 |

## Contract Surface

### ✅ Verified + Audited (1)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| ZeUSD | unknown | project_anchor | own_supporting | 1 | ethereum | unit-264005 | 2 deployments: ethereum `0xb16eb11db006230d13fc0d9679e50a5a4d389809`; ethereum `0xf2552a508618b98463192e445def1ddb88b8377d` | ✅ Audited |

### ⚠️ Verified + Unaudited (24)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| AccessManager | governance | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 5 deployments: ethereum `0x062b7697fd492270732295e5486e405a5999c672`; ethereum `0x600b26a360097294bd6af423b7a237bf8b420430`; ethereum `0x7e43e3e643e1087cfcd3929bdaf70141675c8d58`; ethereum `0x80099b3503c4c3df597bce153d901e151643ee02`; ethereum `0xc1ce245cdf41f33b880db1cd3be2fec1fea2be5f` | ⚠️ Unaudited |
| AccessManager | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x19af4ae09e51e59dbfda2146ae9011f77e5fbbd6`; ethereum `0xfafede56cf18c2f75ef19a6b6c70d3f1125d8a6f` | ⚠️ Unaudited |
| AccessManager | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x4daffd1d2952eb68a175cb85cf79b0a9673ebedc`; ethereum `0xc148143a001798e9b03064e303016167a237b934` | ⚠️ Unaudited |
| AccessManager | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x63f4773fffd83a6eaa313194e2e8e111995f84e5`; ethereum `0xd48d7a3af809f31144abe3e14ed38381755a9951` | ⚠️ Unaudited |
| AccessManager | unknown | project_anchor | own_supporting | 1 | ethereum | unit-264002 | 2 deployments: ethereum `0xb027570ae95a3d546b166d805ecd216d86b7ab18`; ethereum `0xc59f3b833a6366b2fb45008156253f11885f34ec` | ⚠️ Unaudited |
| FunctionsAccessControl | governance | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x58722c4f1a8bca491dcf074ae3c6b519cc859cb7` | ⚠️ Unaudited |
| PriceOracle | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 1 | ethereum | unit-263997 | 2 deployments: ethereum `0x0c6c7e5772184e7c26be42282f642beccde5bbb4`; ethereum `0xdd5f6461fe8503b98f0aab53ff390d327515c17f` | ⚠️ Unaudited |
| PriceOracle | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x2756bf902563b6e767a6e9ec20abfab3706715eb` | ⚠️ Unaudited |
| ProxyAdmin | governance | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x5a9916c8b89f4cc97b782d5138ea54a17eb79b84` | ⚠️ Unaudited |
| RedemptionVault | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0x87e86d6930f7e922e02cd92821fbaaf9d5e9b403`; base `0xe644034f52c816bc54d8ab8163390db2ae454734` | ⚠️ Unaudited |
| RedemptionVault | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xbaa2de224e2161cc95d1eb97fa4769a54c81755e` | ⚠️ Unaudited |
| Registry | unknown | project_anchor | own_supporting | 1 | ethereum | unit-264003 | 2 deployments: ethereum `0x675d73734546b2f668b27659bebfad7582902a18`; ethereum `0xc3274b69929be2213350cb28d41eed6ded464309` | ⚠️ Unaudited |
| UpgradeTimelock | governance | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xff082079c027f01d61045b8eceafab92ddfd6856` | ⚠️ Unaudited |
| USYCVault | unknown | project_anchor | own_supporting | 1 | ethereum | unit-264000 | 2 deployments: ethereum `0x255f6bbec8c3310fd78cb679da529da9aa0d25a6`; ethereum `0x598fed1b9e26a9427fa04fa01c4f110545c393b2` | ⚠️ Unaudited |
| VaultRegistry | unknown | project_anchor | own_supporting | 1 | ethereum | unit-263999 | 2 deployments: ethereum `0x2dfc03b5eca6823bc527e26c4a4b9dc1219dbe1c`; ethereum `0x70072cdbf497ce235d3d55695db6842c8a31d36d` | ⚠️ Unaudited |
| WithdrawalSystem | unknown | project_anchor | own_supporting | 1 | ethereum | unit-264004 | 2 deployments: ethereum `0x4fb32d9cc9540e002fcf78bfe6ffdcb3aa4008b8`; ethereum `0xe1ad814210e5c95f6c849c7ac08402ab3969c0fb` | ⚠️ Unaudited |
| ZeUSD_CDP | unknown | project_anchor | own_supporting | 1 | ethereum | unit-263998 | 2 deployments: ethereum `0x1ba928070771d3fb148f37209cf8a6d0fe4507b0`; ethereum `0x400b1894b0b68d359622f79e961915b36e454803` | ⚠️ Unaudited |
| ZeUSD_OFT | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | manta-pacific | n/a | `0x7dc9748da8e762e569f9269f48f69a1a9f8ea761` | ⚠️ Unaudited |
| ZeUSDRouterV2 | unknown | project_anchor | own_supporting | 1 | ethereum | unit-264001 | 2 deployments: ethereum `0x061a5839b9057e5ed675c6982fdfab31a3011d95`; ethereum `0xac6e62717e8803cf119e591a0bf401d504505bd8` | ⚠️ Unaudited |
| ZeUSDRouterV2 | adapter | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x8154db5007d78dd2deb7d4d6940752feb5498551`; ethereum `0xf1fd735f81e306743eff3850a39656d156681f5c` | ⚠️ Unaudited |
| zOPAL | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0x2e9705d95f1624fab9caaba775234571bd557f24`; base `0x79c89e7bc0db947b4194ebf8b35e1e00ad68bccb` | ⚠️ Unaudited |
| zOPAL | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 2 deployments: base `0x83ca3db8d431b769b2260ff2ecd4fa15001203e5`; base `0xe603206d9d1869023b548d2f5daba3a07852a1d8` | ⚠️ Unaudited |
| zOPALDepositVault | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0x06ff0ba6a53a42e20599eddb6bcae481b779a751`; base `0x6578fe7a4a8c0b8c34fc8c85a8f99cc16affe850` | ⚠️ Unaudited |
| ZothAccessControl | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0x11e5c20a11e8b75bb2ae6f136dab1cbb1da9cbb1`; base `0x5325875510f29686553fc213494a6842aefcfa14` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (22)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| Proxy (impl: 0x6f4d7192e66feacf6e3f65cfeae3f69c49ef9b03) | proxy | non_address_book | non_address_book_inventory (excluded) | 1 | avalanche | n/a | `0x7dc9748da8e762e569f9269f48f69a1a9f8ea761` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-263980 | `0x2243c2e006103720f0a02bf1971d6495e9cdefff` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2d3d1a6982840dd88bc2380fd557f8a9d5e27a77` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-263981 | `0x2ed553b1d1fc27a7b888e21973311c9b181ca1dc` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-263982 | `0x3854702034855287be0fb4a040580cb89621290b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-263983 | `0x5dafc0ee88997a2a2aa4b8e9c4411fab82fe2b16` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-263984 | `0x5ec9696b19e06dbfd47808bf314024b5eb32dafa` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-263985 | `0x6283f77db630d6fe69a454ef6cf626e98b117c9b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-263986 | `0x7dc9748da8e762e569f9269f48f69a1a9f8ea761` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-263987 | `0x7f0cb69fa200807a13e61ebdb0c43d078a6ecfe5` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-263988 | `0x800bae296599d2cab2202cf7d21de96504b5aca8` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-263989 | `0x82f3a0392f58c50fa90542519832471bae93e43e` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-263990 | `0x9716501620cd6e0bd6297efc2559cdca2f941aac` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-263991 | `0xadb41aee4c5cd373199f3509298824c473f671f7` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-263992 | `0xbf1060028b212896f799cfbaea1ed4eebd060978` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-263993 | `0xd7cbaa06d43a248627af105c1944963143e38056` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-263994 | `0xe81250ed196e45881b78ae92bc978e1de4d61a22` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-263995 | `0xfed3d6557dc46a1b25d0a6f666513cb33835864b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | metis | unit-263996 | `0x2d3d1a6982840dd88bc2380fd557f8a9d5e27a77` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x15925a7571f5bd7ce67eeeddfaa31136e565683e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x973bd2510d866b1f2494c97ca9fd9595037b2f04` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xb9dd4396f0f849508e96e656af1a10f83ea314c6` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [spaces/mMWQLQN0GHKRXP2us07C/uploads/8csMoFUI4T4MyCctrCfQ/Hacken Zeusd Contracts Dec2024.pdf](https://3583014216-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FmMWQLQN0GHKRXP2us07C%2Fuploads%2F8csMoFUI4T4MyCctrCfQ%2FHacken%20Zeusd%20Contracts%20Dec2024.pdf) | Hacken | Audit | 2025-01 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 11 | high |
| [spaces/mMWQLQN0GHKRXP2us07C/uploads/CIkyRzhjzbJxAdhVDwfV/SolidityScan ZeUSD Contracts Dec2024.pdf](https://3583014216-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FmMWQLQN0GHKRXP2us07C%2Fuploads%2FCIkyRzhjzbJxAdhVDwfV%2FSolidityScan%20ZeUSD%20Contracts%20Dec2024.pdf) | SolidityScan | Audit | 2025-01 | aging | Direct | n/a | matched | 1 | 1 | 0 | 4 | n/a |
| [ENTERSOFT.pdf](https://github.com/0xZothio/zVault/blob/dev/audits/ENTERSOFT.pdf) | ENTERSOFT | Audit | 2026-02 | fresh | Direct | n/a | no match | 0 | 0 | 0 | 30 | n/a |
| [CLAUDE.pdf](https://github.com/0xZothio/zVault/blob/dev/audits/CLAUDE.pdf) | Claude | Audit | 2026-03 | fresh | Direct | n/a | no match | 0 | 0 | 0 | 30 | n/a |
| [EVMBENCH.pdf](https://github.com/0xZothio/zVault/blob/dev/audits/EVMBENCH.pdf) | EVM Bench | Audit | 2026-03 | fresh | Direct | n/a | no match | 0 | 0 | 0 | 30 | n/a |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [2868] spaces/mMWQLQN0GHKRXP2us07C/uploads/8csMoFUI4T4MyCctrCfQ/Hacken Zeusd Contracts Dec2024.pdf — no match: Scope section explicitly lists 11 smart contracts from the repository. Audit date is 02/01/2025 (January 2, 2025).
- [2869] spaces/mMWQLQN0GHKRXP2us07C/uploads/CIkyRzhjzbJxAdhVDwfV/SolidityScan ZeUSD Contracts Dec2024.pdf — matched: No reason recorded
- [2870] ENTERSOFT.pdf — no match: No reason recorded
- [2871] CLAUDE.pdf — no match: No reason recorded
- [2872] EVMBENCH.pdf — no match: No reason recorded

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| spaces/mMWQLQN0GHKRXP2us07C/uploads/8csMoFUI4T4MyCctrCfQ/Hacken Zeusd Contracts Dec2024.pdf | CollateralVault | unmatched — not counted | — | listed in scope | no |
| spaces/mMWQLQN0GHKRXP2us07C/uploads/8csMoFUI4T4MyCctrCfQ/Hacken Zeusd Contracts Dec2024.pdf | ICollateralVault | unmatched — not counted | — | listed in scope | no |
| spaces/mMWQLQN0GHKRXP2us07C/uploads/8csMoFUI4T4MyCctrCfQ/Hacken Zeusd Contracts Dec2024.pdf | IFundVaultV2 | unmatched — not counted | — | listed in scope | no |
| spaces/mMWQLQN0GHKRXP2us07C/uploads/8csMoFUI4T4MyCctrCfQ/Hacken Zeusd Contracts Dec2024.pdf | IPriceOracle | unmatched — not counted | — | listed in scope | no |
| spaces/mMWQLQN0GHKRXP2us07C/uploads/8csMoFUI4T4MyCctrCfQ/Hacken Zeusd Contracts Dec2024.pdf | ISubVault | unmatched — not counted | — | listed in scope | no |
| spaces/mMWQLQN0GHKRXP2us07C/uploads/8csMoFUI4T4MyCctrCfQ/Hacken Zeusd Contracts Dec2024.pdf | IZeUSD | unmatched — not counted | — | listed in scope | no |
| spaces/mMWQLQN0GHKRXP2us07C/uploads/8csMoFUI4T4MyCctrCfQ/Hacken Zeusd Contracts Dec2024.pdf | IZeUSDOFT | unmatched — not counted | — | listed in scope | no |
| spaces/mMWQLQN0GHKRXP2us07C/uploads/8csMoFUI4T4MyCctrCfQ/Hacken Zeusd Contracts Dec2024.pdf | IZeUSDRouter | unmatched — not counted | — | listed in scope | no |
| spaces/mMWQLQN0GHKRXP2us07C/uploads/8csMoFUI4T4MyCctrCfQ/Hacken Zeusd Contracts Dec2024.pdf | DataTypes | unmatched — not counted | — | listed in scope | no |
| spaces/mMWQLQN0GHKRXP2us07C/uploads/8csMoFUI4T4MyCctrCfQ/Hacken Zeusd Contracts Dec2024.pdf | USD0PPSubVault | unmatched — not counted | — | listed in scope | no |
| spaces/mMWQLQN0GHKRXP2us07C/uploads/8csMoFUI4T4MyCctrCfQ/Hacken Zeusd Contracts Dec2024.pdf | ZeUSD_Router | unmatched — not counted | — | listed in scope | no |
| spaces/mMWQLQN0GHKRXP2us07C/uploads/CIkyRzhjzbJxAdhVDwfV/SolidityScan ZeUSD Contracts Dec2024.pdf | LZAdapter | unmatched — not counted | — | — | no |
| spaces/mMWQLQN0GHKRXP2us07C/uploads/CIkyRzhjzbJxAdhVDwfV/SolidityScan ZeUSD Contracts Dec2024.pdf | USYCSubVault | unmatched — not counted | — | — | no |
| spaces/mMWQLQN0GHKRXP2us07C/uploads/CIkyRzhjzbJxAdhVDwfV/SolidityScan ZeUSD Contracts Dec2024.pdf | ZTLNPrimeSubVault | unmatched — not counted | — | — | no |
| spaces/mMWQLQN0GHKRXP2us07C/uploads/CIkyRzhjzbJxAdhVDwfV/SolidityScan ZeUSD Contracts Dec2024.pdf | ZeUSD | own proxy deployment | ERC1967Proxyy (proxy) (selected) `0xb16eb11db006230d13fc0d9679e50a5a4d389809` — deployed 2025-07-08 13:19:23+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| spaces/mMWQLQN0GHKRXP2us07C/uploads/CIkyRzhjzbJxAdhVDwfV/SolidityScan ZeUSD Contracts Dec2024.pdf | ZeUSD_OFT | unmatched — not counted | — | — | no |
| ENTERSOFT.pdf | Blacklistable | unmatched — not counted | — | — | no |
| ENTERSOFT.pdf | DecimalsCorrectionLibrary | unmatched — not counted | — | — | no |
| ENTERSOFT.pdf | DepositVault | unmatched — not counted | — | — | no |
| ENTERSOFT.pdf | ERC1967Proxy | unmatched — not counted | — | — | no |
| ENTERSOFT.pdf | FunctionsAccessControl | unmatched — not counted | — | — | no |
| ENTERSOFT.pdf | Greenlistable | unmatched — not counted | — | — | no |
| ENTERSOFT.pdf | IDataFeed | unmatched — not counted | — | — | no |
| ENTERSOFT.pdf | IDepositVault | unmatched — not counted | — | — | no |
| ENTERSOFT.pdf | IDepositVault copy | unmatched — not counted | — | — | no |
| ENTERSOFT.pdf | IManageableVault | unmatched — not counted | — | — | no |
| ENTERSOFT.pdf | IManageableVaultRedeem | unmatched — not counted | — | — | no |
| ENTERSOFT.pdf | IRedemptionVault | unmatched — not counted | — | — | no |
| ENTERSOFT.pdf | ISanctionsList | unmatched — not counted | — | — | no |
| ENTERSOFT.pdf | IVaultShared | unmatched — not counted | — | — | no |
| ENTERSOFT.pdf | IZToken | unmatched — not counted | — | — | no |
| ENTERSOFT.pdf | ManageableVault | unmatched — not counted | — | — | no |
| ENTERSOFT.pdf | ManageableVaultRedeem | unmatched — not counted | — | — | no |
| ENTERSOFT.pdf | Pausable | unmatched — not counted | — | — | no |
| ENTERSOFT.pdf | PriceOracle | unmatched — not counted | — | — | no |
| ENTERSOFT.pdf | RedemptionVault | unmatched — not counted | — | — | no |
| ENTERSOFT.pdf | WithFunctionsAccessControl | unmatched — not counted | — | — | no |
| ENTERSOFT.pdf | WithSanctionsList | unmatched — not counted | — | — | no |
| ENTERSOFT.pdf | WithZothAccessControl | unmatched — not counted | — | — | no |
| ENTERSOFT.pdf | ZHyperDepositVault | unmatched — not counted | — | — | no |
| ENTERSOFT.pdf | ZHyperZothAccessControlRoles | unmatched — not counted | — | — | no |
| ENTERSOFT.pdf | ZothAccessControl | unmatched — not counted | — | — | no |
| ENTERSOFT.pdf | ZothAccessControlRoles | unmatched — not counted | — | — | no |
| ENTERSOFT.pdf | ZothInitializable | unmatched — not counted | — | — | no |
| ENTERSOFT.pdf | mHYPER | unmatched — not counted | — | — | no |
| ENTERSOFT.pdf | zHYPER | unmatched — not counted | — | — | no |
| CLAUDE.pdf | Blacklistable | unmatched — not counted | — | — | no |
| CLAUDE.pdf | DecimalsCorrectionLibrary | unmatched — not counted | — | — | no |
| CLAUDE.pdf | DepositVault | unmatched — not counted | — | — | no |
| CLAUDE.pdf | ERC1967Proxy | unmatched — not counted | — | — | no |
| CLAUDE.pdf | FunctionsAccessControl | unmatched — not counted | — | — | no |
| CLAUDE.pdf | Greenlistable | unmatched — not counted | — | — | no |
| CLAUDE.pdf | IDataFeed | unmatched — not counted | — | — | no |
| CLAUDE.pdf | IDepositVault | unmatched — not counted | — | — | no |
| CLAUDE.pdf | IManageableVault | unmatched — not counted | — | — | no |
| CLAUDE.pdf | IManageableVaultRedeem | unmatched — not counted | — | — | no |
| CLAUDE.pdf | IRedemptionVault | unmatched — not counted | — | — | no |
| CLAUDE.pdf | ISanctionsList | unmatched — not counted | — | — | no |
| CLAUDE.pdf | IVaultShared | unmatched — not counted | — | — | no |
| CLAUDE.pdf | IZToken | unmatched — not counted | — | — | no |
| CLAUDE.pdf | ManageableVault | unmatched — not counted | — | — | no |
| CLAUDE.pdf | ManageableVaultRedeem | unmatched — not counted | — | — | no |
| CLAUDE.pdf | MockERC20 | unmatched — not counted | — | — | no |
| CLAUDE.pdf | Pausable | unmatched — not counted | — | — | no |
| CLAUDE.pdf | PriceOracle | unmatched — not counted | — | — | no |
| CLAUDE.pdf | RedemptionVault | unmatched — not counted | — | — | no |
| CLAUDE.pdf | TransparentUpgradeableProxy | unmatched — not counted | — | — | no |
| CLAUDE.pdf | WithFunctionsAccessControl | unmatched — not counted | — | — | no |
| CLAUDE.pdf | WithSanctionsList | unmatched — not counted | — | — | no |
| CLAUDE.pdf | WithZothAccessControl | unmatched — not counted | — | — | no |
| CLAUDE.pdf | ZothAccessControl | unmatched — not counted | — | — | no |
| CLAUDE.pdf | ZothAccessControlRoles | unmatched — not counted | — | — | no |
| CLAUDE.pdf | ZothInitializable | unmatched — not counted | — | — | no |
| CLAUDE.pdf | zOPAL | unmatched — not counted | — | — | no |
| CLAUDE.pdf | zOPALDepositVault | unmatched — not counted | — | — | no |
| CLAUDE.pdf | zOPALZothAccessControlRoles | unmatched — not counted | — | — | no |
| EVMBENCH.pdf | Blacklistable | unmatched — not counted | — | — | no |
| EVMBENCH.pdf | DecimalsCorrectionLibrary | unmatched — not counted | — | — | no |
| EVMBENCH.pdf | DepositVault | unmatched — not counted | — | — | no |
| EVMBENCH.pdf | ERC1967Proxy | unmatched — not counted | — | — | no |
| EVMBENCH.pdf | FunctionsAccessControl | unmatched — not counted | — | — | no |
| EVMBENCH.pdf | Greenlistable | unmatched — not counted | — | — | no |
| EVMBENCH.pdf | IDataFeed | unmatched — not counted | — | — | no |
| EVMBENCH.pdf | IDepositVault | unmatched — not counted | — | — | no |
| EVMBENCH.pdf | IManageableVault | unmatched — not counted | — | — | no |
| EVMBENCH.pdf | IManageableVaultRedeem | unmatched — not counted | — | — | no |
| EVMBENCH.pdf | IRedemptionVault | unmatched — not counted | — | — | no |
| EVMBENCH.pdf | ISanctionsList | unmatched — not counted | — | — | no |
| EVMBENCH.pdf | IVaultShared | unmatched — not counted | — | — | no |
| EVMBENCH.pdf | IZToken | unmatched — not counted | — | — | no |
| EVMBENCH.pdf | ManageableVault | unmatched — not counted | — | — | no |
| EVMBENCH.pdf | ManageableVaultRedeem | unmatched — not counted | — | — | no |
| EVMBENCH.pdf | MockERC20 | unmatched — not counted | — | — | no |
| EVMBENCH.pdf | Pausable | unmatched — not counted | — | — | no |
| EVMBENCH.pdf | PriceOracle | unmatched — not counted | — | — | no |
| EVMBENCH.pdf | RedemptionVault | unmatched — not counted | — | — | no |
| EVMBENCH.pdf | TransparentUpgradeableProxy | unmatched — not counted | — | — | no |
| EVMBENCH.pdf | WithFunctionsAccessControl | unmatched — not counted | — | — | no |
| EVMBENCH.pdf | WithSanctionsList | unmatched — not counted | — | — | no |
| EVMBENCH.pdf | WithZothAccessControl | unmatched — not counted | — | — | no |
| EVMBENCH.pdf | ZothAccessControl | unmatched — not counted | — | — | no |
| EVMBENCH.pdf | ZothAccessControlRoles | unmatched — not counted | — | — | no |
| EVMBENCH.pdf | ZothInitializable | unmatched — not counted | — | — | no |
| EVMBENCH.pdf | zOPAL | unmatched — not counted | — | — | no |
| EVMBENCH.pdf | zOPALDepositVault | unmatched — not counted | — | — | no |
| EVMBENCH.pdf | zOPALZothAccessControlRoles | unmatched — not counted | — | — | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | `0xb027570ae95a3d546b166d805ecd216d86b7ab18` | AccessManager | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x675d73734546b2f668b27659bebfad7582902a18` | Registry | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x255f6bbec8c3310fd78cb679da529da9aa0d25a6` | USYCVault | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x2dfc03b5eca6823bc527e26c4a4b9dc1219dbe1c` | VaultRegistry | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x4fb32d9cc9540e002fcf78bfe6ffdcb3aa4008b8` | WithdrawalSystem | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x1ba928070771d3fb148f37209cf8a6d0fe4507b0` | ZeUSD_CDP | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x061a5839b9057e5ed675c6982fdfab31a3011d95` | ZeUSDRouterV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 24 |
| upstream | 0 |
| standard_library | 1 |
| needs_review | 22 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 4
- Inherited remapped matches: 0
- Address-book scope dispositions: 1 own (1 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 105 unmatched
- Matched-own operational status: 1 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=1
- Match method counts: unique_name=1

Zero-match audit list:

- [2868] spaces/mMWQLQN0GHKRXP2us07C/uploads/8csMoFUI4T4MyCctrCfQ/Hacken Zeusd Contracts Dec2024.pdf
- [2870] ENTERSOFT.pdf
- [2871] CLAUDE.pdf
- [2872] EVMBENCH.pdf

Fork inheritance lineage and inherited audits are included when available.
