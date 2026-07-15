# Agentic Audit Brief: Harmonix Finance

## Export Authority

- Production state: **published scope**
- Raw selected rows: 2 across 2 audit(s)
- Eligible audit results: 4 (2 matched; 2 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e9e09d06b414f9cd852c36a58d42ce16279465f2d9791cd2a8178f3f54b89ecd`

## Project Overview

- Project: Harmonix Finance (`harmonix-finance`)
- Website: [https://app.harmonix.fi](https://app.harmonix.fi)
- Lifecycle: unknown
- Generated: 2026-07-15T18:30:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: arbitrum, base, ethereum, hyperliquid
- Contract surface: 300 unique implementations (522 raw deployments)
- Coverage basis: 1/3 confirmed own live verified implementations (33.3%); conservative 33.3% with 0 needs-review implementation(s)
- DeFi Llama TVL: $5,180,091.31
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## ⚠️ Limited Contract Surface

This brief covers only 3 contract implementation(s). The pipeline may not have discovered all deployed contracts for this project.
Coverage assessment and audit matching are based on this incomplete surface.

## Project Description

This brief describes the observed EVM deployment and audit surface for Harmonix Finance. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 4 contract row(s) across arbitrum, ethereum, hyperliquid. Structural roles: 2 supporting, 1 infra, 1 unclassified. 3 row(s) use upgradeable patterns.

## Logic Topography

- Exact-run contract rows: 4
- Structural roles: supporting (2), infra (1), unclassified (1)
- Contract kinds: contract (4)
- Detected standards: erc1967proxy (3)
- Frameworks: openzeppelin (3)
- Upgradeable-pattern rows: 3

## Fork Analysis

0 of 5 contracts are derived from known codebases. 5 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0xe4ba90...9268ea`, chain 999)
- UnnamedContract (`0x889991...fdf773`, chain 42161)
- ERC1967Proxy (`0x1368ee...eebc42`, chain 999)
- ERC1967Proxy (`0xfde5b0...8d725c`, chain 999)
- TransparentUpgradeableProxy (`0xf12f87...9b00e3`, chain 42161)

## Contract Surface Quality

- Logic-topography rows: 4; live-surface rows included: 4 (4 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 3/3 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 1/3 (33.3%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 3 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 297 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 2 standard proxy/library)
- Proxy deployments represented within implementation groups: 209
- Confirmed-live implementations: 3 of 300 unique; 297 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 1/172
- Verified + Unaudited implementations: 171
- Verified by bytecode match: 0
- Unverified implementations: 128
- Unique implementations: 300
- Raw deployments: 522
- Audits discovered: 4 (4 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 2
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2025-09 (fresh)
- Audit staleness (calendar age): 1 fresh, 2 aging, 1 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 1 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| Hyperliquid | Tier 2 | 1 | 0.6% | 2025-05 |
| Zenith | Tier 2 | 1 | 0.6% | 2025-09 |

## Contract Surface

### ✅ Verified + Audited (1)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| FundContract | unknown | project_anchor | own_supporting | 1 | hyperliquid | unit-387221 | 2 deployments: hyperliquid `0x1108fe...47be55`; hyperliquid `0xfde5b0...8d725c` | ✅ Audited |

### ⚠️ Verified + Unaudited (171)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| AccessManager | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | hyperliquid | n/a | 2 deployments: hyperliquid `0x05a626...5e72f7`; hyperliquid `0x41e146...22419c` | ⚠️ Unaudited |
| AccessManager | governance | non_address_book | non_address_book_inventory (excluded) | 1 | hyperliquid | n/a | 2 deployments: hyperliquid `0x28257c...7d3808`; hyperliquid `0x408e48...9bf97c` | ⚠️ Unaudited |
| AssetVault | unknown | non_address_book | non_address_book_inventory (excluded) | 4 | hyperliquid | n/a | 5 deployments: hyperliquid `0x25b4dc...dbbdfb`; hyperliquid `0x31aaa5...3d77e1`; hyperliquid `0x77a1b9...8e81f5`; hyperliquid `0x7db7bc...71f166`; hyperliquid `0xee09a7...bd7cbe` | ⚠️ Unaudited |
| AssetVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | `0xe65a60...850f55` | ⚠️ Unaudited |
| AsyncRequestManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | 2 deployments: hyperliquid `0x59e4e1...154331`; hyperliquid `0xd6c452...b93d46` | ⚠️ Unaudited |
| ClaimReward | unknown | non_address_book | non_address_book_inventory (excluded) | 3 | hyperliquid | n/a | 4 deployments: hyperliquid `0x04b7b5...945e97`; hyperliquid `0xbef024...98fbc0`; hyperliquid `0xc3d0ed...b38889`; hyperliquid `0xe0a8d9...864045` | ⚠️ Unaudited |
| ClaimReward | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | `0xaeeaa1...3882d4` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | hyperliquid | n/a | 2 deployments: hyperliquid `0x057f4e...a310f8`; hyperliquid `0x3d9148...dc1eaa` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | hyperliquid | n/a | 2 deployments: hyperliquid `0x1357a7...03552a`; hyperliquid `0x69051e...c58518` | ⚠️ Unaudited |
| ERC1967Proxy | proxy | project_anchor | own_supporting | 1 | hyperliquid | unit-387222 | 2 deployments: hyperliquid `0x1368ee...eebc42`; hyperliquid `0xe4ba90...9268ea` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | hyperliquid | n/a | 2 deployments: hyperliquid `0x24e1cd...188043`; hyperliquid `0xf463c9...ddd986` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | hyperliquid | n/a | 2 deployments: hyperliquid `0x276787...31b844`; hyperliquid `0xfaefcd...698722` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | non_address_book | non_address_book_inventory (excluded) | 2 | hyperliquid | n/a | 3 deployments: hyperliquid `0x2ca5cf...d77291`; hyperliquid `0x33a821...e2537f`; hyperliquid `0x4d9cb8...994032` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | hyperliquid | n/a | 2 deployments: hyperliquid `0x2fef70...0c565c`; hyperliquid `0x8e40b4...a88fa8` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | hyperliquid | n/a | `0x307825...6f0a50` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | hyperliquid | n/a | 2 deployments: hyperliquid `0x310484...4c7f42`; hyperliquid `0xd040c6...de73b6` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | hyperliquid | n/a | 2 deployments: hyperliquid `0x31b626...88cb5c`; hyperliquid `0x5533b7...19b87c` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | hyperliquid | n/a | 2 deployments: hyperliquid `0x380c52...bde06e`; hyperliquid `0x586c80...4b2f0c` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | hyperliquid | n/a | 2 deployments: hyperliquid `0x388238...462d7f`; hyperliquid `0xdb0036...ad3bca` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | hyperliquid | n/a | 2 deployments: hyperliquid `0x47b100...ce4a9f`; hyperliquid `0xde3524...ed215e` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | non_address_book | non_address_book_inventory (excluded) | 2 | hyperliquid | n/a | 3 deployments: hyperliquid `0x59fddf...4e9736`; hyperliquid `0x5da664...a33268`; hyperliquid `0xeeb9c3...06e2c1` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | hyperliquid | n/a | 2 deployments: hyperliquid `0x5bb6b9...c5ced0`; hyperliquid `0x98870d...634205` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | hyperliquid | n/a | 2 deployments: hyperliquid `0x6c17d3...039f17`; hyperliquid `0x6d5eba...a33280` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | hyperliquid | n/a | 2 deployments: hyperliquid `0x6e850b...fc824e`; hyperliquid `0xe9552e...1a2366` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | non_address_book | non_address_book_inventory (excluded) | 2 | hyperliquid | n/a | 3 deployments: hyperliquid `0x72dd37...290f29`; hyperliquid `0x9ff5cb...fa7ee6`; hyperliquid `0xf8c853...b166a3` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | hyperliquid | n/a | 2 deployments: hyperliquid `0x79325d...fb7093`; hyperliquid `0x81e31e...3e0ec8` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | hyperliquid | n/a | 2 deployments: hyperliquid `0x7cee01...1bb021`; hyperliquid `0x941e59...9a1b9e` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | hyperliquid | n/a | 2 deployments: hyperliquid `0x7d0a42...3d6337`; hyperliquid `0xf6808d...610051` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | hyperliquid | n/a | 2 deployments: hyperliquid `0x83ff30...4e328e`; hyperliquid `0x99e38e...e18398` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | hyperliquid | n/a | 2 deployments: hyperliquid `0x84a081...468537`; hyperliquid `0xb7bf0f...578c36` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | hyperliquid | n/a | 2 deployments: hyperliquid `0x8ad875...7f2623`; hyperliquid `0x9a2b46...317a42` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | hyperliquid | n/a | 2 deployments: hyperliquid `0xa19140...0326f0`; hyperliquid `0xeebbf3...9745ee` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | hyperliquid | n/a | 2 deployments: hyperliquid `0xabf874...1d62ac`; hyperliquid `0xaf74f3...e7e1b1` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | hyperliquid | n/a | 2 deployments: hyperliquid `0xacf32f...261588`; hyperliquid `0xb2cda4...57d6cf` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | hyperliquid | n/a | 2 deployments: hyperliquid `0xb0820f...9fbc40`; hyperliquid `0xdc2338...ee8cf8` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | hyperliquid | n/a | 2 deployments: hyperliquid `0xb8f440...4d650d`; hyperliquid `0xf5704a...9cab46` | ⚠️ Unaudited |
| FundContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | 6 deployments: hyperliquid `0x02513f...c2db7f`; hyperliquid `0x74bd05...e6f286`; hyperliquid `0x7a428b...6e6341`; hyperliquid `0x8c03fc...e01dce`; hyperliquid `0xe7ac6c...e9227c`; hyperliquid `0xed76bd...99ba97` | ⚠️ Unaudited |
| FundContract | unknown | non_address_book | non_address_book_inventory (excluded) | 2 | hyperliquid | n/a | 3 deployments: hyperliquid `0x2aaa1e...3c62c3`; hyperliquid `0xb8e91f...843064`; hyperliquid `0xe82152...8413c1` | ⚠️ Unaudited |
| FundContract | unknown | non_address_book | non_address_book_inventory (excluded) | 3 | hyperliquid | n/a | 4 deployments: hyperliquid `0x3e79f3...f8cc41`; hyperliquid `0x5b85ac...0d3b0a`; hyperliquid `0xb3f282...12cab7`; hyperliquid `0xba0557...b8863b` | ⚠️ Unaudited |
| FundContract | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | hyperliquid | n/a | 2 deployments: hyperliquid `0x55a463...cadcdd`; hyperliquid `0xd54fae...f5e7b4` | ⚠️ Unaudited |
| FundNavFeed | unknown | non_address_book | non_address_book_inventory (excluded) | 2 | hyperliquid | n/a | 3 deployments: hyperliquid `0x26493d...d67077`; hyperliquid `0x3bed7e...c13643`; hyperliquid `0x9f39f5...8c289c` | ⚠️ Unaudited |
| FundNavFeed | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | `0x2bdcb3...8ffa80` | ⚠️ Unaudited |
| FundVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | 2 deployments: hyperliquid `0x17f615...2df097`; hyperliquid `0x181cde...a1c1b0` | ⚠️ Unaudited |
| FundVault | unknown | non_address_book | non_address_book_inventory (excluded) | 2 | hyperliquid | n/a | 3 deployments: hyperliquid `0x55b71e...0e0cfe`; hyperliquid `0xabe515...333535`; hyperliquid `0xb6335c...47ddb6` | ⚠️ Unaudited |
| GoldLinkVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xdd1ac3...d28cb9` | ⚠️ Unaudited |
| HaForDefiStrategy | unknown | non_address_book | non_address_book_inventory (excluded) | 2 | hyperliquid | n/a | 2 deployments: hyperliquid `0x1f808f...c5d173`; hyperliquid `0x7f6fdd...81a93a` | ⚠️ Unaudited |
| HaForDefiStrategy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | hyperliquid | n/a | 2 deployments: hyperliquid `0x4c5754...43dc0c`; hyperliquid `0xe6d168...452f80` | ⚠️ Unaudited |
| HaForwardDestinationStrategy | unknown | non_address_book | non_address_book_inventory (excluded) | 2 | hyperliquid | n/a | 3 deployments: hyperliquid `0x23be71...37c072`; hyperliquid `0x8ea4ff...3dd712`; hyperliquid `0xacde7a...38e0c1` | ⚠️ Unaudited |
| HAR | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | hyperliquid | n/a | 2 deployments: hyperliquid `0x391121...a2af18`; hyperliquid `0xdceabc...f92744` | ⚠️ Unaudited |
| HarmonixStakingUpgradeable | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | hyperliquid | n/a | 2 deployments: hyperliquid `0x02a1d5...f00520`; hyperliquid `0x9938db...32be1c` | ⚠️ Unaudited |
| HarmonixStakingUpgradeable | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | hyperliquid | n/a | 2 deployments: hyperliquid `0x06adea...031def`; hyperliquid `0xa5b21f...32a3d0` | ⚠️ Unaudited |
| HarmonixStakingUpgradeable | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | hyperliquid | n/a | 2 deployments: hyperliquid `0x0d4033...2cc429`; hyperliquid `0xf25d52...eb4e80` | ⚠️ Unaudited |
| HarmonixStakingUpgradeable | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | hyperliquid | n/a | 2 deployments: hyperliquid `0x1e1ca9...e4e602`; hyperliquid `0x6f58cb...cb8571` | ⚠️ Unaudited |
| HarmonixStakingUpgradeable | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | hyperliquid | n/a | 2 deployments: hyperliquid `0x28e0f1...111dfa`; hyperliquid `0x9ff6ed...578a21` | ⚠️ Unaudited |
| HarmonixStakingUpgradeable | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | hyperliquid | n/a | 2 deployments: hyperliquid `0x48898c...f35c94`; hyperliquid `0x884c96...372b15` | ⚠️ Unaudited |
| HarmonixStakingUpgradeable | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | hyperliquid | n/a | 2 deployments: hyperliquid `0x4a06e9...5227a1`; hyperliquid `0xbbb6b5...0f16a6` | ⚠️ Unaudited |
| HarmonixStakingUpgradeable | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | hyperliquid | n/a | 2 deployments: hyperliquid `0x56d782...1579e2`; hyperliquid `0xcbf856...64bbe9` | ⚠️ Unaudited |
| HarmonixStakingUpgradeable | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | hyperliquid | n/a | 2 deployments: hyperliquid `0x5979aa...3f49e2`; hyperliquid `0xc34a47...5935c8` | ⚠️ Unaudited |
| HarmonixStakingUpgradeable | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | hyperliquid | n/a | 2 deployments: hyperliquid `0x5bd4dd...cd9b09`; hyperliquid `0xf414b6...b1ea15` | ⚠️ Unaudited |
| HarmonixStakingUpgradeable | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | hyperliquid | n/a | 2 deployments: hyperliquid `0x605646...bc8fef`; hyperliquid `0xfe05fa...6095d6` | ⚠️ Unaudited |
| HarmonixStakingUpgradeable | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | hyperliquid | n/a | 2 deployments: hyperliquid `0x65b0a6...ae035f`; hyperliquid `0x99ced1...f10505` | ⚠️ Unaudited |
| HarmonixStakingUpgradeable | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | hyperliquid | n/a | 2 deployments: hyperliquid `0x6fab94...bdf59b`; hyperliquid `0xf4e681...bd9d4d` | ⚠️ Unaudited |
| HarmonixStakingUpgradeable | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | hyperliquid | n/a | 2 deployments: hyperliquid `0x7d852a...d4b40d`; hyperliquid `0xaffbc8...77e8ce` | ⚠️ Unaudited |
| HarmonixStakingUpgradeable | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | hyperliquid | n/a | 2 deployments: hyperliquid `0x95f283...6c6f97`; hyperliquid `0xef84f7...c256f6` | ⚠️ Unaudited |
| HarmonixStakingUpgradeable | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | hyperliquid | n/a | 2 deployments: hyperliquid `0xae24f8...90b136`; hyperliquid `0xc8bdf4...2f8016` | ⚠️ Unaudited |
| HarmonixStakingUpgradeable | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | hyperliquid | n/a | 2 deployments: hyperliquid `0xbdf77a...80b5d5`; hyperliquid `0xc60719...364fa1` | ⚠️ Unaudited |
| HarmonixStakingUpgradeable | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | hyperliquid | n/a | 2 deployments: hyperliquid `0xf1c57e...0c6a65`; hyperliquid `0xfeda37...9b4d55` | ⚠️ Unaudited |
| HarmonixStakingWithHooks | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | 2 deployments: hyperliquid `0x5b4441...679b34`; hyperliquid `0xe5f96f...46a6c4` | ⚠️ Unaudited |
| HaTimelockController | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | 8 deployments: hyperliquid `0x066aa0...6b847e`; hyperliquid `0x08f5e6...eba2ed`; hyperliquid `0x10b320...12660c`; hyperliquid `0x3673aa...7febc2`; hyperliquid `0x64c4a7...96f40f`; hyperliquid `0x64e0b9...6ae90a`; hyperliquid `0x66ffd5...736b9a`; hyperliquid `0x975bc7...88564e` | ⚠️ Unaudited |
| HaVaultReader | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | 4 deployments: hyperliquid `0x232c52...2c950c`; hyperliquid `0x52b0f4...288b23`; hyperliquid `0xaf4187...2fcbb9`; hyperliquid `0xce416b...d5b27b` | ⚠️ Unaudited |
| HaVaultReader | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | hyperliquid | n/a | 2 deployments: hyperliquid `0x3a0b0e...436f52`; hyperliquid `0x8210b8...1bc4ec` | ⚠️ Unaudited |
| HaVaultReader | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | hyperliquid | n/a | 2 deployments: hyperliquid `0x66341e...046fe9`; hyperliquid `0x8bb3a6...e78473` | ⚠️ Unaudited |
| HaVaultReader | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | hyperliquid | n/a | 2 deployments: hyperliquid `0x76994f...988bdc`; hyperliquid `0xb95803...b35ddd` | ⚠️ Unaudited |
| HaVaultReader | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | hyperliquid | n/a | 2 deployments: hyperliquid `0xb80235...6ba14c`; hyperliquid `0xf37741...c4ee92` | ⚠️ Unaudited |
| HyperCorePriceFeed | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | hyperliquid | n/a | 2 deployments: hyperliquid `0x699704...c45dbb`; hyperliquid `0xe19085...110eef` | ⚠️ Unaudited |
| HyperCorePriceFeed | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | 2 deployments: hyperliquid `0xc73e33...5a44f4`; hyperliquid `0xfa4721...53e93c` | ⚠️ Unaudited |
| KelpRestakingDeltaNeutralVault | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x09f2b4...4429df` | ⚠️ Unaudited |
| KelpRestakingDeltaNeutralVault | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | `0x3c610c...779058` | ⚠️ Unaudited |
| KelpRestakingDeltaNeutralVault | unknown | non_address_book | non_address_book_inventory (excluded) | 2 | arbitrum | n/a | 2 deployments: arbitrum `0x554ef8...815d95`; arbitrum `0x9e2d37...2ea13a` | ⚠️ Unaudited |
| KelpRestakingDeltaNeutralVault | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | `0xa50169...116b20` | ⚠️ Unaudited |
| KelpRestakingDeltaNeutralVault | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | `0xbbff0a...07f855` | ⚠️ Unaudited |
| KelpRestakingDeltaNeutralVault | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | `0xfadf54...d2ac61` | ⚠️ Unaudited |
| MockERC20 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | 2 deployments: hyperliquid `0x699a2b...7333db`; hyperliquid `0xe36f84...ad9ada` | ⚠️ Unaudited |
| MultiVestingDistributorMock | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | `0x30c9fc...a2111f` | ⚠️ Unaudited |
| MultiVestingDistributorMock | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | hyperliquid | n/a | 2 deployments: hyperliquid `0x45de26...a27f0f`; hyperliquid `0x8d8c70...d4b24a` | ⚠️ Unaudited |
| MultiVestingDistributorMock | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | hyperliquid | n/a | 2 deployments: hyperliquid `0x7bc78c...ad335f`; hyperliquid `0x7ee84a...e912b6` | ⚠️ Unaudited |
| NavAggregateModel | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | hyperliquid | n/a | 2 deployments: hyperliquid `0x8e9e87...301d30`; hyperliquid `0xa3f4f7...387514` | ⚠️ Unaudited |
| PendleHedgeVault | unknown | non_address_book | non_address_book_inventory (excluded) | 3 | arbitrum | n/a | 3 deployments: arbitrum `0x0110bb...bfabe0`; arbitrum `0x561b08...9979fc`; arbitrum `0xc0fa1d...cb50ee` | ⚠️ Unaudited |
| PoolFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0xc7c8cd...a9473b`; ethereum `0xe18567...c4a9c3` | ⚠️ Unaudited |
| PoolFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | 2 deployments: arbitrum `0x727446...2e6285`; arbitrum `0x81302b...1b70c1` | ⚠️ Unaudited |
| PoolFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xde80f4...ba5d98` | ⚠️ Unaudited |
| PriceFeed | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | hyperliquid | n/a | 2 deployments: hyperliquid `0x389c28...991df8`; hyperliquid `0xcd66bc...91ea65` | ⚠️ Unaudited |
| ProxyAdmin | governance | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | `0x7c95d4...706ada` | ⚠️ Unaudited |
| ShareToken | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | hyperliquid | n/a | 2 deployments: hyperliquid `0x581f83...4e79fc`; hyperliquid `0xfa2f2f...9e0f5d` | ⚠️ Unaudited |
| ShareToken | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | hyperliquid | n/a | 2 deployments: hyperliquid `0x7c8516...288aee`; hyperliquid `0xc70882...8e98c4` | ⚠️ Unaudited |
| TimelockController | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | `0xd057ae...a98168` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0xcf8be3...dbc820`; ethereum `0xe1a201...9db69b` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 11 | hyperliquid | n/a | 12 deployments: hyperliquid `0x053a18...f70faa`; hyperliquid `0x069b24...6dd472`; hyperliquid `0x2cbce1...b38dba`; hyperliquid `0x56edc8...e41898`; hyperliquid `0x6c8023...c3497b`; hyperliquid `0x807c47...b22c5b`; hyperliquid `0x8276e1...b386c9`; hyperliquid `0x933e97...65d270`; hyperliquid `0xa6ccd0...6cfe2c`; hyperliquid `0xc13a77...18b799`; hyperliquid `0xd031ad...888cd4`; hyperliquid `0xd8e0aa...720da7` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | hyperliquid | n/a | 2 deployments: hyperliquid `0x05e3b8...828f04`; hyperliquid `0xa56c9b...19687d` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | hyperliquid | n/a | 2 deployments: hyperliquid `0x0aa13b...e53180`; hyperliquid `0x15d21b...b176b2` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 2 | hyperliquid | n/a | 3 deployments: hyperliquid `0x0c7612...c089c4`; hyperliquid `0xa4ceed...1f67a7`; hyperliquid `0xe0446f...405613` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | hyperliquid | n/a | 2 deployments: hyperliquid `0x10f4a5...8fbe0d`; hyperliquid `0xef447e...babb3b` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | hyperliquid | n/a | 2 deployments: hyperliquid `0x16ab14...99d754`; hyperliquid `0xf58fbd...bdb0d0` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | hyperliquid | n/a | 2 deployments: hyperliquid `0x16cde7...39ad82`; hyperliquid `0xd4e0bb...b0ef28` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | hyperliquid | n/a | 2 deployments: hyperliquid `0x176458...4aab17`; hyperliquid `0xbbb276...5a8fb9` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 3 | hyperliquid | n/a | 4 deployments: hyperliquid `0x179348...bb22c6`; hyperliquid `0xa45541...dfb899`; hyperliquid `0xcca4cf...30f8f5`; hyperliquid `0xebf181...2249d8` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 3 | hyperliquid | n/a | 4 deployments: hyperliquid `0x19de72...e3d344`; hyperliquid `0x6f62bb...0b5d8d`; hyperliquid `0x74a055...a3ca90`; hyperliquid `0x998103...f48867` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 4 | hyperliquid | n/a | 5 deployments: hyperliquid `0x206e19...15da40`; hyperliquid `0x3ed61e...edf014`; hyperliquid `0x585740...dfa1dd`; hyperliquid `0x6bc7a3...88525b`; hyperliquid `0xcc33ab...b58223` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | hyperliquid | n/a | 2 deployments: hyperliquid `0x2dd5f1...41607f`; hyperliquid `0xfec8f5...a17da8` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 2 | hyperliquid | n/a | 3 deployments: hyperliquid `0x39a7d3...6e99da`; hyperliquid `0x82d8a0...4a799d`; hyperliquid `0x8bf477...c2d4eb` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 4 | hyperliquid | n/a | 5 deployments: hyperliquid `0x3c298b...6eba5d`; hyperliquid `0x4b4532...1a9630`; hyperliquid `0x76b009...4c69d6`; hyperliquid `0xe67fd0...fa9c5a`; hyperliquid `0xef16af...320d1f` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 8 | hyperliquid | n/a | 9 deployments: hyperliquid `0x3c5374...4493fd`; hyperliquid `0x48e94d...ea9b82`; hyperliquid `0x95b08e...3f9dd1`; hyperliquid `0x9e780b...490dba`; hyperliquid `0xa855f9...43fa58`; hyperliquid `0xb618a0...7fe3e7`; hyperliquid `0xcbd7d9...045bc4`; hyperliquid `0xd844fb...b3fbe8`; hyperliquid `0xe695af...a9445f` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | hyperliquid | n/a | 2 deployments: hyperliquid `0x3d5556...e90b11`; hyperliquid `0x9f255e...b6a17e` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 3 | hyperliquid | n/a | 4 deployments: hyperliquid `0x49005d...6f5816`; hyperliquid `0x9128a2...c6a3d6`; hyperliquid `0xa5b788...ec5583`; hyperliquid `0xa950a8...2aa037` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | hyperliquid | n/a | 2 deployments: hyperliquid `0x496d50...6f2f40`; hyperliquid `0x49be29...4eb8d8` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | hyperliquid | n/a | 2 deployments: hyperliquid `0x4c81e8...2792ca`; hyperliquid `0xcbb9e4...b43656` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | hyperliquid | n/a | 2 deployments: hyperliquid `0x4dc4ad...ce3b3b`; hyperliquid `0x74aa6a...2bab4a` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | hyperliquid | n/a | 2 deployments: hyperliquid `0x509110...270ca4`; hyperliquid `0xbb9655...462325` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | hyperliquid | n/a | 2 deployments: hyperliquid `0x543303...dadac4`; hyperliquid `0x8a59df...845a4d` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 2 | hyperliquid | n/a | 3 deployments: hyperliquid `0x5736fd...4bf3a5`; hyperliquid `0xde38ed...d218ff`; hyperliquid `0xeec3ef...30799e` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | hyperliquid | n/a | 2 deployments: hyperliquid `0x5df933...73b451`; hyperliquid `0x8085c6...0f5e28` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 2 | hyperliquid | n/a | 3 deployments: hyperliquid `0x61d077...77b0b5`; hyperliquid `0xee6286...63d9f6`; hyperliquid `0xf768d0...f0f2d0` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | hyperliquid | n/a | 2 deployments: hyperliquid `0x65d389...aa5d34`; hyperliquid `0xe4d49e...d7ccb6` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | hyperliquid | n/a | 2 deployments: hyperliquid `0x70725d...857f1a`; hyperliquid `0xcafd6e...9990fc` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | hyperliquid | n/a | 2 deployments: hyperliquid `0x74487e...6fa10f`; hyperliquid `0xf377f2...52e6c1` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | hyperliquid | n/a | 2 deployments: hyperliquid `0x7d6659...50ecca`; hyperliquid `0xf05a94...1b58c0` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | hyperliquid | n/a | 2 deployments: hyperliquid `0x8576c0...53d233`; hyperliquid `0xeff352...7d8aad` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | hyperliquid | n/a | 2 deployments: hyperliquid `0x94c000...2a1d4a`; hyperliquid `0xdc7ad6...60d135` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | hyperliquid | n/a | 2 deployments: hyperliquid `0x9fdb47...c92d8d`; hyperliquid `0xbeb903...e891df` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | hyperliquid | n/a | 2 deployments: hyperliquid `0xcda710...5c1642`; hyperliquid `0xd8fb7e...97b3bc` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | 2 deployments: arbitrum `0x05427a...4db7c5`; arbitrum `0x9efd0b...80253c` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | 2 deployments: arbitrum `0x067610...f44aa2`; arbitrum `0x1ef01c...dc31a8` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | 2 deployments: arbitrum `0x0866af...11334e`; arbitrum `0x8005bf...191e37` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | 2 deployments: arbitrum `0x09873c...44cdf1`; arbitrum `0x2cbb40...268177` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | 2 deployments: arbitrum `0x13f093...8f3a4c`; arbitrum `0xefaebf...82aafb` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | 2 deployments: arbitrum `0x1453b9...cca767`; arbitrum `0x1d47ca...8e3688` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | 2 deployments: arbitrum `0x14d9ed...a5e1df`; arbitrum `0x4ff8d6...abbba7` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | 2 deployments: arbitrum `0x1ea6bf...07ae7f`; arbitrum `0x236a88...cdf331` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | 2 deployments: arbitrum `0x27c6cf...384499`; arbitrum `0x917d63...d3a538` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 2 | arbitrum | n/a | 3 deployments: arbitrum `0x299ebc...a200f1`; arbitrum `0x8f1cb3...de2b87`; arbitrum `0xee1607...51702a` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | 2 deployments: arbitrum `0x3363a8...420135`; arbitrum `0xc5b144...3eb261` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | 2 deployments: arbitrum `0x3447c5...023ab4`; arbitrum `0xc0e2b9...72e5aa` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | 2 deployments: arbitrum `0x346c29...22e322`; arbitrum `0x3c983b...6fc407` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 2 | arbitrum | n/a | 3 deployments: arbitrum `0x3b584a...48affd`; arbitrum `0x59f3f6...3679af`; arbitrum `0xc2b64d...efe6dd` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | 2 deployments: arbitrum `0x3cfd18...d2bcf4`; arbitrum `0x72b054...179b9d` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | 2 deployments: arbitrum `0x488440...7efce1`; arbitrum `0xbd8c05...7e8d34` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | 2 deployments: arbitrum `0x4d5d7d...b1ec86`; arbitrum `0xc03226...e6f6ff` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 2 | arbitrum | n/a | 3 deployments: arbitrum `0x50e2d3...f06482`; arbitrum `0x74cf10...f7f4a2`; arbitrum `0xe46c3b...000705` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | 2 deployments: arbitrum `0x55e5ce...bad344`; arbitrum `0xc60d4c...b0604d` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | 2 deployments: arbitrum `0x58ec43...f553e8`; arbitrum `0x843329...49090b` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | 2 deployments: arbitrum `0x613545...155c23`; arbitrum `0xabc7ec...1e2316` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | 2 deployments: arbitrum `0x63cbb4...ba953f`; arbitrum `0xb39a04...356e13` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | 2 deployments: arbitrum `0x66299c...50e436`; arbitrum `0xc61c90...e4ac73` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | 2 deployments: arbitrum `0x69753e...7b8944`; arbitrum `0xc75dee...dc3b74` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | 2 deployments: arbitrum `0x6a0755...f04a13`; arbitrum `0xc5463b...9f3080` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | 2 deployments: arbitrum `0x75fa7c...62c2c6`; arbitrum `0xdabb35...75171c` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | 2 deployments: arbitrum `0x7a74a0...396a64`; arbitrum `0xc5d824...a64d1b` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | 2 deployments: arbitrum `0x7d79c8...4a09a3`; arbitrum `0xda6b3c...99a2d0` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | 2 deployments: arbitrum `0x862102...96c200`; arbitrum `0xc00e16...aea7b3` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | project_anchor | own_supporting | 1 | arbitrum | unit-387220 | 2 deployments: arbitrum `0x889991...fdf773`; arbitrum `0xf12f87...9b00e3` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | 2 deployments: arbitrum `0x89c45b...c81cd4`; arbitrum `0xd85cea...d0cb71` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | 2 deployments: arbitrum `0x988297...8cd9ce`; arbitrum `0xa28557...d1dc98` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | 2 deployments: arbitrum `0x9e5785...42898c`; arbitrum `0xc96648...66d2c2` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | 2 deployments: arbitrum `0xc2f10f...9f87ea`; arbitrum `0xca5bff...c9cce5` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | proxy | non_address_book | standard_proxy_or_library (excluded) | 1 | arbitrum | n/a | `0xc71ba0...bc590b` | ⚠️ Unaudited |
| VaultManager | unknown | non_address_book | non_address_book_inventory (excluded) | 2 | hyperliquid | n/a | 3 deployments: hyperliquid `0x30454c...9ef4a5`; hyperliquid `0xa6a24e...8d96d2`; hyperliquid `0xe17545...b34edf` | ⚠️ Unaudited |
| VaultManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | 2 deployments: hyperliquid `0x379877...3a856b`; hyperliquid `0x3b5e19...0e3c60` | ⚠️ Unaudited |
| VaultManager | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | hyperliquid | n/a | 2 deployments: hyperliquid `0x48dc37...525a60`; hyperliquid `0xd1c8dc...23ebcb` | ⚠️ Unaudited |
| VaultManagerAdmin | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | 3 deployments: hyperliquid `0x115e77...69582c`; hyperliquid `0x43e123...5ad877`; hyperliquid `0x54439b...48dd72` | ⚠️ Unaudited |
| VaultManagerAdmin | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | hyperliquid | n/a | 2 deployments: hyperliquid `0x2e2b6b...0d9db5`; hyperliquid `0x437c94...66e4ba` | ⚠️ Unaudited |
| VaultManagerAdmin | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | hyperliquid | n/a | 2 deployments: hyperliquid `0x6bf8b2...40b9dc`; hyperliquid `0x6dca76...3380a2` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (128)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x083050...59ab73` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1bcf1f...ffbc44` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3893b2...1455fb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4577f6...5fd0a8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x62cc48...d58265` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6c3c1a...714d62` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x725004...a246a5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xaed44e...bf31f5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe4ae01...0a71ff` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf36c7d...5c46b3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfce1db...1e197b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | `0x068759...1d33ef` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | `0x143a2d...2d7c66` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | `0x18f79c...880f13` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | `0x256a50...d1195d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | `0x2b2f1b...8c6f87` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | `0x2f5d93...c80820` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | `0x310ed3...1321fb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | `0x358ac2...0f0fce` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | `0x3b76ba...3a0621` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | `0x406f26...385054` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | `0x4d312e...a06df5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | `0x523bd6...cf979c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | `0x594d7b...69850a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | `0x5b0e7f...b2c995` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | `0x650ea9...c98cc5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | `0x68aa54...8cc4eb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | `0x68ad5a...3afd88` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | `0x6b2b46...5bebc4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | `0x6bd6a0...baf0b1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | `0x6e2f4f...90608e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | `0x6ea74d...34a4e8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | `0x75c80a...1efe4d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | `0x75d13b...ab997c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | `0x7b5e2d...ff2f82` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | `0x7d05a1...97df74` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | `0x7d507d...b6d273` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | `0x8290ef...a8bc82` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | `0x868ddb...512b60` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | `0x884a7e...ac7338` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | `0x8ae11b...c08b59` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | `0x8ce286...a0a400` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | `0x8e153f...87ceb4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | `0x92ae81...9f62e7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | `0xa3af27...c22086` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | `0xb003ff...36fa3e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | `0xb16fd8...205b6f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | `0xb869de...8573b7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | `0xc6fbb0...d5468e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | `0xd734ef...f3b0e3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | `0xde1f97...8dc75c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | `0xde3201...57d228` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | `0xde3e20...c963e2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | `0xe6d860...d0eb5d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | `0xea2c3f...3f0b4f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | `0xeb4a4b...b00fcf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | `0xf2a7e3...00206b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | `0xf3e5e2...1dafc2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x0530f9...f0805d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x092ece...1b40a6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x0f812e...aeeb07` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x14352d...d0e164` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x17ee33...fe87fd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x1dff18...5506da` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x1eaf47...ce057d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x2614dd...567fe8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x26c45f...61055b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x2a1745...104ee9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x2d0741...5b54bf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x3056d6...0d78a9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x347eae...0ade91` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x36dd11...464f08` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x37ff35...01704b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x3d502f...cfd685` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x4325d1...15962f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x43aeef...640695` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x4b2365...6fea36` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x4d2000...340e65` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x4eadd7...5b93ad` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x5dc9e7...f24312` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x5dcd79...b607b4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x616e10...afd5b2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x68387f...af7a03` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x6f7a38...3da3be` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x730922...3b54f3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x730be4...62f6e5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x7689ba...ab133a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x76c43c...d2b327` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x86c3f3...8894d2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x88c66b...e994c4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x88d4b2...f939a7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x8ad3e1...dda865` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x8c488f...6833b8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x8d7c63...d8c9f8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x9032c1...45c9c8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x95c40e...3fddf6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x97d501...4c5086` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x9b30af...3b1181` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x9be0ec...e86993` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x9f907c...06eb2f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xa48391...114dac` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xa6dc78...74d19b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xaae0ab...f058c9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xab0776...89bfdd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xabdd30...291e9f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xaed44e...bf31f5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xaf89e8...4062fe` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xb2db8e...0ad762` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xb30693...8e8855` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xb916a2...83bf18` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xba5f28...8a0293` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xbca7c5...d4b7b6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xbf2ff9...8d4c10` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xc1169a...9dcf4e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xc17f76...1ce559` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xc25987...d32d85` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xc5b919...55c514` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xc927fe...1e14c0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xd0f26d...44e2c7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xd46cf5...372699` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xe1568a...0781b5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xe1a201...9db69b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xebd56c...4fe5e3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xf37b1a...1ea557` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xf40859...d4c83c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xf7c693...0566aa` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xfc1dcc...e3e010` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xfe0dcb...18eb25` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [Harmonix Finance - Zenith Audit Report.pdf](https://github.com/harmonixfi/core-smart-contract/blob/main/audits/Harmonix%20Finance%20-%20Zenith%20Audit%20Report.pdf) | Zenith | Audit | 2025-09 | fresh | Direct | contract_name | matched | 1 | 1 | 0 | 2 | high |
| [HarmonixFinance-Hyperliquid-Security-Review.pdf](https://github.com/harmonixfi/core-smart-contract/blob/main/audits/HarmonixFinance-Hyperliquid-Security-Review.pdf) | Hyperliquid | Audit | 2025-05 | aging | Direct | contract_name | matched | 1 | 1 | 0 | 2 | high |
| [Verichains Public Report - HarmonixFinance.pdf](https://github.com/harmonixfi/core-smart-contract/blob/main/audits/Verichains%20Public%20Report%20-%20HarmonixFinance.pdf) | Verichains | Audit | 2024-06 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 16 | high |
| [Verichains Public Report - Kelp Delta.pdf](https://github.com/harmonixfi/core-smart-contract/blob/main/audits/Verichains%20Public%20Report%20-%20Kelp%20Delta.pdf) | Verichains | Audit | 2024-08 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 9 | high |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [14729] Harmonix Finance - Zenith Audit Report.pdf — matched: Scope section explicitly lists three files: balanceContract.sol, fundContract.sol, fundStorage.sol. Audit dates: September 19 to September 24, 2025.
- [14730] HarmonixFinance-Hyperliquid-Security-Review.pdf — matched: Scope section explicitly lists three contracts: BalanceContract, FundContract, FundStorage. Audit date is 9 May 2025 from the cover page.
- [14731] Verichains Public Report - HarmonixFinance.pdf — no match: All contracts listed in the scope table (Section 1.2) are extracted. The audit date is from the cover page and executive summary.
- [14732] Verichains Public Report - Kelp Delta.pdf — no match: Extracted 9 contracts from scope table and findings. Audit date from cover page and version history.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| Harmonix Finance - Zenith Audit Report.pdf | balanceContract | unmatched — not counted | — | listed in scope table | no |
| Harmonix Finance - Zenith Audit Report.pdf | fundContract | own proxy deployment | ERC1967Proxy (proxy) (selected) `0xfde5b0...8d725c` — deployed 2025-06-25 17:40:00+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Harmonix Finance - Zenith Audit Report.pdf | fundStorage | unmatched — not counted | — | listed in scope table | no |
| HarmonixFinance-Hyperliquid-Security-Review.pdf | BalanceContract | unmatched — not counted | — | listed in scope table | no |
| HarmonixFinance-Hyperliquid-Security-Review.pdf | FundContract | own proxy deployment | ERC1967Proxy (proxy) (selected) `0xfde5b0...8d725c` — deployed 2025-06-25 17:40:00+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| HarmonixFinance-Hyperliquid-Security-Review.pdf | FundStorage | unmatched — not counted | — | listed in scope table | no |
| Verichains Public Report - HarmonixFinance.pdf | Aevo | unmatched — not counted | — | listed in scope table | no |
| Verichains Public Report - HarmonixFinance.pdf | CamelotLiquidity | unmatched — not counted | — | listed in scope table | no |
| Verichains Public Report - HarmonixFinance.pdf | CamelotSwap | unmatched — not counted | — | listed in scope table | no |
| Verichains Public Report - HarmonixFinance.pdf | Uniswap | unmatched — not counted | — | listed in scope table | no |
| Verichains Public Report - HarmonixFinance.pdf | PriceConsumer | unmatched — not counted | — | listed in scope table | no |
| Verichains Public Report - HarmonixFinance.pdf | RockOnyxAccessControl | unmatched — not counted | — | listed in scope table | no |
| Verichains Public Report - HarmonixFinance.pdf | TransferHelper | unmatched — not counted | — | listed in scope table | no |
| Verichains Public Report - HarmonixFinance.pdf | BaseSwap | unmatched — not counted | — | listed in scope table | no |
| Verichains Public Report - HarmonixFinance.pdf | FullMath | unmatched — not counted | — | listed in scope table | no |
| Verichains Public Report - HarmonixFinance.pdf | LiquidityAmounts | unmatched — not counted | — | listed in scope table | no |
| Verichains Public Report - HarmonixFinance.pdf | ShareMath | unmatched — not counted | — | listed in scope table | no |
| Verichains Public Report - HarmonixFinance.pdf | RockOnyxEthLiquidityStrategy | unmatched — not counted | — | listed in scope table | no |
| Verichains Public Report - HarmonixFinance.pdf | RockOnyxOptionsStrategy | unmatched — not counted | — | listed in scope table | no |
| Verichains Public Report - HarmonixFinance.pdf | RockOynxUsdLiquidityStrategy | unmatched — not counted | — | listed in scope table | no |
| Verichains Public Report - HarmonixFinance.pdf | BaseRockOnyxOptionWheelVault | unmatched — not counted | — | listed in scope table | no |
| Verichains Public Report - HarmonixFinance.pdf | RockOnyxUSDTVault | unmatched — not counted | — | listed in scope table | no |
| Verichains Public Report - Kelp Delta.pdf | BaseDeltaNeutralVault | unmatched — not counted | — | listed in scope table and mentioned in findings | no |
| Verichains Public Report - Kelp Delta.pdf | BaseSwapVault | unmatched — not counted | — | listed in scope table | no |
| Verichains Public Report - Kelp Delta.pdf | BaseRestakingStrategy | unmatched — not counted | — | listed in scope table | no |
| Verichains Public Report - Kelp Delta.pdf | PerpDexStrategy | unmatched — not counted | — | listed in scope table | no |
| Verichains Public Report - Kelp Delta.pdf | KelpRestakingDeltaNeutralVault | unmatched — not counted | — | listed in scope table | no |
| Verichains Public Report - Kelp Delta.pdf | KelpZircuitRestakingStrategy | unmatched — not counted | — | listed in scope table | no |
| Verichains Public Report - Kelp Delta.pdf | Uniswap | unmatched — not counted | — | mentioned in finding 2.2.5 | no |
| Verichains Public Report - Kelp Delta.pdf | BaseSwapAggregator | unmatched — not counted | — | mentioned in finding 2.2.8 | no |
| Verichains Public Report - Kelp Delta.pdf | RockOnyxAccessControl | unmatched — not counted | — | mentioned in finding 2.2.14 | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 65 |
| upstream | 7 |
| standard_library | 53 |
| needs_review | 175 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 2
- Inherited remapped matches: 0
- Address-book scope dispositions: 2 own (2 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 29 unmatched
- Matched-own operational status: 2 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=4
- Match method counts: unique_name=2

Zero-match audit list:

- [14731] Verichains Public Report - HarmonixFinance.pdf
- [14732] Verichains Public Report - Kelp Delta.pdf

Fork inheritance lineage and inherited audits are included when available.
