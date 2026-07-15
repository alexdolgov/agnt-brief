# Agentic Audit Brief: BabyDogeCoin

## Export Authority

- Production state: **published scope**
- Raw selected rows: 0 across 0 audit(s)
- Eligible audit results: 1 (0 matched; 1 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e9e09d06b414f9cd852c36a58d42ce16279465f2d9791cd2a8178f3f54b89ecd`

⚠️ Lifecycle status: DECLINING - TVL dropped 5.9% over 90 days

## Project Overview

- Project: BabyDogeCoin (`babydogecoin`)
- Website: [https://swap.babydoge.com/](https://swap.babydoge.com/)
- Lifecycle: declining (Tier 1, declining)
- Generated: 2026-07-15T18:30:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: bsc, ethereum
- Contract surface: 59 unique implementations (157 raw deployments)
- Coverage basis: 0/2 confirmed own live verified implementations (0.0%); conservative 0.0% with 0 needs-review implementation(s)
- DeFi Llama TVL: $1,875,233.00
- On-chain TVL (included contracts): $121,443,880.55
- TVL by chain: Bsc $121,443,880.55

## Project Description

This brief describes the observed EVM deployment and audit surface for BabyDogeCoin. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 2 contract row(s) across bsc, ethereum. Structural roles: 1 supporting, 1 unclassified. No upgradeable pattern was identified in these rows.

## Logic Topography

- Exact-run contract rows: 2
- Structural roles: supporting (1), unclassified (1)
- Contract kinds: contract (2)
- Detected standards: none
- Frameworks: openzeppelin (1)
- Upgradeable-pattern rows: 0

## Fork Analysis

0 of 2 contracts are derived from known codebases. 2 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0xbb4cdb...bc095c`, chain 56)
- BabyDogeRouter (`0xc9a0f6...af3c47`, chain 56)

## Contract Surface Quality

- Logic-topography rows: 2; live-surface rows included: 2 (2 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 3/3 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 0/2 (0.0%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 3 own, 1 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 55 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 3
- Confirmed-live implementations: 3 of 59 unique; 56 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 0/46
- Verified + Unaudited implementations: 46
- Verified by bytecode match: 0
- Unverified implementations: 13
- Unique implementations: 59
- Raw deployments: 157
- Audits discovered: 1 (1 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2025-08 (fresh)
- Audit staleness (calendar age): 1 fresh, 0 aging, 0 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage
- Note: This protocol is classified as [declining]. ASD of n/a represents exposure in a protocol with declining activity.

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (46)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| CoinToken | token | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xc74867...02e8de` | ⚠️ Unaudited |
| AddRemoveLiquidityForFeeOnTransferTokens | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x986967...0a6c8e` | ⚠️ Unaudited |
| BabyDoge | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd9f092...e32fae` | ⚠️ Unaudited |
| BabyDoge3DNFT | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0xbfafd5...5fe7f6`; ethereum `0xd260c7...10570a` | ⚠️ Unaudited |
| BabyDogeDoggies | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 5 deployments: bsc `0x0bc19e...c38982`; bsc `0x59e3e5...cd603a`; bsc `0x7257e6...4016ef`; bsc `0xabe197...0b36fb`; bsc `0xafdf2e...b0e22d` | ⚠️ Unaudited |
| BabyDogeFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x3cda75...501d68` | ⚠️ Unaudited |
| BabyDogeFactory | unknown | project_anchor | own_supporting | 0 | bsc | unit-380084 | `0x4693b6...f43137` | ⚠️ Unaudited |
| BabyDogeLocker | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 2 deployments: bsc `0x36b343...4541be`; bsc `0xc91172...215592` | ⚠️ Unaudited |
| BabyDogeNFTMarketPlace | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 6 deployments: bsc `0x0c0676...cef3a5`; bsc `0x100bf9...9aff41`; bsc `0x2aecff...834199`; bsc `0x442fe7...0e2abe`; bsc `0xec3c3a...04a950`; bsc `0xf34582...566bb3` | ⚠️ Unaudited |
| BabyDogePair | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x6e0d52...10652d` | ⚠️ Unaudited |
| BabyDogeRouter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x4c4c9b...a314e9` | ⚠️ Unaudited |
| BabyDogeRouter | adapter | project_anchor | own_supporting | 0 | bsc | unit-380086 | `0xc9a0f6...af3c47` | ⚠️ Unaudited |
| BabyDogeV2Factory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 2 deployments: bsc `0x29809a...1b3284`; bsc `0x750dc7...3dfd49` | ⚠️ Unaudited |
| BabyDogeV2Router02 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 3 deployments: bsc `0x5b883f...8cddd6`; bsc `0x9dc017...72ac59`; bsc `0xefef4e...19d82c` | ⚠️ Unaudited |
| Balance | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x6d5dea...41b3d0` | ⚠️ Unaudited |
| BbdNftStaking | token | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xee1f84...75c9f8` | ⚠️ Unaudited |
| BNBWrapper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xc7ac77...8c29c8` | ⚠️ Unaudited |
| BurnPortal | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xbb667d...4e0396` | ⚠️ Unaudited |
| BuyBackFeeManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 14 deployments: bsc `0x01f3a3...264c0a`; bsc `0x218c4c...f7882c`; bsc `0x256a07...7885e3`; bsc `0x2986c5...f5710f`; bsc `0x2fe5f9...3d0489`; bsc `0x401de9...955153`; bsc `0x560ad6...102931`; bsc `0x5abc57...20702a`; bsc `0x62e919...2c0b76`; bsc `0xb1739c...302f3e`; bsc `0xbda7c4...f29c74`; bsc `0xc8d3dc...00ba80`; bsc `0xe7c35e...2df1c4`; bsc `0xef09ad...3ff171` | ⚠️ Unaudited |
| ChessBetting | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 2 deployments: bsc `0x48ff73...ef72b8`; bsc `0xbdc4eb...0ffcbc` | ⚠️ Unaudited |
| console | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5faef6...134a9d` | ⚠️ Unaudited |
| DoggieFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xc23197...ab1a68` | ⚠️ Unaudited |
| DoggieFactoryV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 3 deployments: bsc `0x048e7f...7443ef`; bsc `0x1c9330...e652a0`; bsc `0x5cf2f6...afc2ae` | ⚠️ Unaudited |
| DoggieFactoryV3 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 6 deployments: bsc `0x1581ff...c17add`; bsc `0x7f7b84...d93ed7`; bsc `0x99a651...8794ab`; bsc `0xb5ed15...869c8d`; bsc `0xc45f23...134b3c`; bsc `0xde0520...3a9e80` | ⚠️ Unaudited |
| DoggieMintingStation | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 4 deployments: bsc `0x210756...e83a5e`; bsc `0x6ce1a3...47525e`; bsc `0xdb5d0f...6d5752`; bsc `0xe681f0...343f14` | ⚠️ Unaudited |
| FarmDeployer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 4 deployments: bsc `0x1ca60d...260b30`; bsc `0x210dbf...49d5b2`; bsc `0x69616b...a21050`; bsc `0xc3c548...fde155` | ⚠️ Unaudited |
| FarmDeployer20 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 9 deployments: bsc `0x08f9eb...f0b685`; bsc `0x1690f4...0eecea`; bsc `0x17fc39...502e83`; bsc `0x4841f4...9a2648`; bsc `0x4b1496...9525d9`; bsc `0xaf7ad0...fab7ac`; bsc `0xc20475...ac4e28`; bsc `0xd9d967...04ce53`; bsc `0xe6de34...1f3374` | ⚠️ Unaudited |
| FarmDeployer20FixEnd | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 8 deployments: bsc `0x103def...f31b9d`; bsc `0x284670...0c3a67`; bsc `0x630757...e06bb7`; bsc `0x708173...84a0ae`; bsc `0x96b527...9e6db3`; bsc `0xb9fdf4...653e9c`; bsc `0xd50076...862749`; bsc `0xe6180f...fc4c11` | ⚠️ Unaudited |
| FarmDeployer721 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 8 deployments: bsc `0x0579db...778644`; bsc `0x2003e0...7f0196`; bsc `0x559a1b...291425`; bsc `0x65f9d9...509a15`; bsc `0xa04fb9...247d44`; bsc `0xb15429...49300c`; bsc `0xb9e324...03698a`; bsc `0xda907b...158f52` | ⚠️ Unaudited |
| FarmDeployer721FixEnd | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 7 deployments: bsc `0x3f8278...e5ebf8`; bsc `0x89ea62...eb1c4d`; bsc `0xacab3a...2b5654`; bsc `0xbd6fed...46a645`; bsc `0xc2e2aa...4d2405`; bsc `0xe88f66...ec731e`; bsc `0xe9a142...c0276a` | ⚠️ Unaudited |
| FarmDeployerAdmin | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 2 deployments: bsc `0xac6c6c...b0693a`; bsc `0xbb41e9...f19543` | ⚠️ Unaudited |
| FarmsManager | unknown | non_address_book | non_address_book_inventory (excluded) | 2 | bsc | n/a | 2 deployments: bsc `0x9d304b...f97983`; bsc `0xacde45...b17f0c` | ⚠️ Unaudited |
| FarmZAP | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x451583...06f762` | ⚠️ Unaudited |
| Greeter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x159478...9ce9df` | ⚠️ Unaudited |
| LPZap | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xff5737...1226ba` | ⚠️ Unaudited |
| Migrator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 7 deployments: bsc `0x052a3f...6dd111`; bsc `0x2fd02c...881069`; bsc `0x46b954...df0e59`; bsc `0x5740d7...019094`; bsc `0x5c588d...7621df`; bsc `0x9ce45d...ffe796`; bsc `0xfb03a4...b61be1` | ⚠️ Unaudited |
| MintableERC20 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xb7b9f2...d1414b` | ⚠️ Unaudited |
| PancakeZapV1 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 2 deployments: bsc `0x2cea54...b907d9`; bsc `0x4be970...3197eb` | ⚠️ Unaudited |
| PinkLock | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x6348ad...a05bac` | ⚠️ Unaudited |
| ProfileManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xf5a2cb...6edd69` | ⚠️ Unaudited |
| RouterFeeSetter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 4 deployments: bsc `0x6b2ce3...a4c967`; bsc `0x72fae1...39afbf`; bsc `0xb8b61f...12d790`; bsc `0xc5ab74...4aa2d1` | ⚠️ Unaudited |
| SafeDogTestToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 5 deployments: bsc `0x0267bb...de591f`; bsc `0x85de4c...c8948e`; bsc `0x9e60c7...d5b08c`; bsc `0xc5bf37...7b62ef`; bsc `0xe81cea...1f9010` | ⚠️ Unaudited |
| SlippageCalculator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xf8f7ca...0c8fbf` | ⚠️ Unaudited |
| SmartChefFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 3 deployments: bsc `0x0608b0...ba7aff`; bsc `0x7751d1...79dfcb`; bsc `0x78d5ef...55c61e` | ⚠️ Unaudited |
| TokenLock | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 2 deployments: bsc `0x1e8fda...0b3b3e`; bsc `0x4ca341...033a1d` | ⚠️ Unaudited |
| TreasuryFeeManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 11 deployments: bsc `0x01fef8...9f83ff`; bsc `0x1551ea...2b5209`; bsc `0x1b6878...fcb6a8`; bsc `0x2cd856...517b12`; bsc `0x3aea91...19c64f`; bsc `0x495795...d0a920`; bsc `0x784810...79458f`; bsc `0x8bff3b...7ee81b`; bsc `0x8e0d30...e185c4`; bsc `0xc535c5...b1381f`; bsc `0xcf4b5e...e562a0` | ⚠️ Unaudited |

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
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4a0c81...636f06` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | n/a | `0x000000...000000` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x06d972...1579bb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x0b6997...a900eb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x22b75c...e45d71` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x2bc67f...085ae5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x4a0c81...636f06` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x4fc9d5...1c7608` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x89d3af...22fb4f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xa1c14e...b700c2` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-380085 | `0xbb4cdb...bc095c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xe1b202...603572` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xe6616d...da1ca9` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [skynet.certik.com/projects/baby-doge-coin](https://skynet.certik.com/projects/baby-doge-coin) | CertiK | Audit | 2025-08 | fresh | Direct | contract_name | no match | 0 | 0 | 0 | 2 | medium |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [2926] skynet.certik.com/projects/baby-doge-coin — no match: Extracted from 'Audited Files/SHA256' section listing two contracts. Date from 'Last Audit was delivered on 8/7/2025'.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| skynet.certik.com/projects/baby-doge-coin | FarmDeployer721 | unmatched — not counted | — | listed in audited files | no |
| skynet.certik.com/projects/baby-doge-coin | ERC20FarmFixEnd | unmatched — not counted | — | listed in audited files | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| bsc | `0x4693b6...f43137` | BabyDogeFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0xc9a0f6...af3c47` | BabyDogeRouter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 46 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 13 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Address-book scope dispositions: 0 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 2 unmatched
- Matched-own operational status: 0 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: medium=1
- Match method counts: n/a

Zero-match audit list:

- [2926] skynet.certik.com/projects/baby-doge-coin

Fork inheritance lineage and inherited audits are included when available.
