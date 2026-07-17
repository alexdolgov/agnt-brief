# Agentic Audit Brief: GoPlus Security

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

- Project: GoPlus Security (`goplus-security`)
- Website: [https://gopluslabs.io](https://gopluslabs.io)
- Lifecycle: unknown
- Generated: 2026-07-15T18:30:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: arbitrum, base, bsc, ethereum
- Contract surface: 58 unique implementations (96 raw deployments)
- Coverage basis: not assessable — No confirmed own live-verified denominator is available.
- DeFi Llama TVL: $25,546,188.00
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

No contract logic was present for GoPlus Security in the closed normalized topography run; this brief does not infer a protocol purpose from missing code.

### Architecture

The activated project remains an explicit cohort member with an empty normalized logic-topography closure.

## Logic Topography

- Exact-run contract rows: 0
- Structural roles: none
- Contract kinds: none
- Detected standards: none
- Frameworks: none
- Upgradeable-pattern rows: 0

## Fork Analysis

0 of 14 contracts are derived from known codebases. 14 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0x0845f9c8b6a6d7c7535475ea5f7f9aec07cd7184`, chain 1)
- UnnamedContract (`0x0a33f7ad41a2ed3510ef5a65b6b4397c6307e410`, chain 1)
- UnnamedContract (`0x24bfd4c4ecd2b6d08231891d218b077f0cd35024`, chain 1)
- UnnamedContract (`0x35e575e1aae5e22300dd516a995ab9ccb5b5fa07`, chain 1)
- UnnamedContract (`0x4eaa7ca2991256ac3cc3e6e38e775729bd517e0e`, chain 1)
- UnnamedContract (`0x6915dde03ff4f34cfb614ed2e64b50e74a6cdd3a`, chain 1)
- UnnamedContract (`0x7ed92f181c787e4b89871f826550d70923e3ddb0`, chain 1)
- UnnamedContract (`0x91228c6361997a5a4da1a01eddb2f6b604536a32`, chain 1)
- UnnamedContract (`0xa3f64d3102a035db35c42a9001bbc83e08c7a366`, chain 1)
- UnnamedContract (`0xbe5efb78869e0de135350e813065ac1d81a2e1fd`, chain 1)
- UnnamedContract (`0xc2547047d15c8eabb02e744b4e3ccbf73e064253`, chain 1)
- UnnamedContract (`0xd55bda80d67b0fc64181f746136a97c3625cf17f`, chain 1)
- UnnamedContract (`0xd5d7fb4647ce79740e6e83819efdf43fa74f8c31`, chain 1)
- UnnamedContract (`0xe96a246a0f582b8354b98fb311ee34d141d35c6b`, chain 1)

## Contract Surface Quality

- Logic-topography rows: 0; live-surface rows included: 0 (0 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 14/32 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: not assessable
- Coverage assessment: not_assessable (low confidence) — No confirmed own live-verified denominator is available.
- Address-book implementation classification: 14 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 44 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 1 standard proxy/library)
- Proxy deployments represented within implementation groups: 2
- Confirmed-live implementations: 14 of 58 unique; 44 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 0/30
- Verified + Unaudited implementations: 30
- Verified by bytecode match: 0
- Unverified implementations: 28
- Unique implementations: 58
- Raw deployments: 96
- Audits discovered: 1 (1 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2025-01 (aging)
- Audit staleness (calendar age): 0 fresh, 1 aging, 0 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (30)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| BaseCoinBondCallback | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 3 deployments: bsc `0x3dac57a43e729908602dfde7bba7355b7fcf4568`; bsc `0x9d5e67a6aab94f5557cd5434dc1bf441480acd45`; bsc `0xcc27c182bdd2a986830854fb56885cd56d6c0e27` | ⚠️ Unaudited |
| Bond | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 3 deployments: bsc `0x09beddae85a9b5ada57a5bd7979bb7b3dd08b538`; bsc `0xa5678f0e0441710ae974c9a197ed33be0aadf7ac`; bsc `0xb5ecc4a5023840a284987f2e91aac24e25ad1237` | ⚠️ Unaudited |
| BondFixedExpiryTeller | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x8c439e28788ae4a398b9153bdeb804f5821cd731` | ⚠️ Unaudited |
| BondFixedTermTeller | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 3 deployments: bsc `0x74a3555e5819e174aa19d2d34530fd45064be077`; bsc `0xaa5cd63ed1dd43211937e7540fc7c87a2203a32a`; bsc `0xce56bc5c07d04afa93b3d9ae3e8ac0c5810d837d` | ⚠️ Unaudited |
| FiatTokenV2_2 | token | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0xa0b86991c6218b36c1d19d4a2e9eb0ce3606eb48` | ⚠️ Unaudited |
| GnosisSafeL2 | governance | non_address_book | standard_proxy_or_library (excluded) | 1 | bsc | n/a | `0x34ebddd30ccbd3f1e385b41bdadb30412323e34f` | ⚠️ Unaudited |
| GPS | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x0c1dc73159e30c4b06170f2593d3118968a0dca5` | ⚠️ Unaudited |
| INUKO | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xea51801b8f5b88543ddad3d1727400c15b209d8f` | ⚠️ Unaudited |
| InukoBondCallback | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x2435c2bafc8c94cda5d5f67222b32905d15af105` | ⚠️ Unaudited |
| InverseBond | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xe693519cf534c167b7166d8c17234a1b0a01dd47` | ⚠️ Unaudited |
| LockFactory | registry | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 5 deployments: bsc `0x1ecb68eac981a1e51c68fac9a866e724fc1716c0`; bsc `0x4f26fa33bce395d50671cbc8c7a5d3c55a95519e`; bsc `0xad7590728471eb9b2704053d560e7aa06c036141`; bsc `0xf5cdadd3cb89a69ab72da3cfd93c505c1b9fcca1`; base `0x043f4036202c54da27583a996a8c4b9471931a64` | ⚠️ Unaudited |
| PCSInfinityCLLiquidityLocker | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 3 deployments: bsc `0x69b6e90981ebd92e667bbf10ed506ddca003202d`; bsc `0x83eab398539af72bf0f0f6a2aa5814d76a53f7d7`; bsc `0xa2e0bdb444ebf2318ef5f6fd27fb7489b21de859` | ⚠️ Unaudited |
| PriceBasedTokenLock | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x41f3e9948d4e97e547d800acfd31df9fd741e41b` | ⚠️ Unaudited |
| PriceOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x9b5ea2612a2b9d6c8aff33c549d5a89fe0afe873` | ⚠️ Unaudited |
| PriceOracleV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 6 deployments: bsc `0x03fea9ce48489480d2c028803127d1d3542f2263`; bsc `0x19f2fea21afe95a2b5ab86210bb46ed36418ed43`; bsc `0x2465aefee3ea53432ba11677c70340cac980f05e`; bsc `0x5226cba094bef40d21e807d8416e86ecd4e30180`; bsc `0x5660416b141f4e23fb4afb67aa5ff1af6b793e6d`; bsc `0xf5efc4a8fd82cef03d34ae0ed0c31a9566ce4e44` | ⚠️ Unaudited |
| RenCrowdsale | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5a779aaeb53d2cba1755442c38dd6721c0cb31d0` | ⚠️ Unaudited |
| RepublicToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x408e41876cccdc0f92210600ef50372656052a38` | ⚠️ Unaudited |
| RevenuePool | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x648d7f4ad39186949e37e9223a152435ab97706c` | ⚠️ Unaudited |
| SafeTokenFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 4 deployments: ethereum `0x0d648ed434f95f812e6a0e9b74825bad03579027`; bsc `0x0d648ed434f95f812e6a0e9b74825bad03579027`; base `0x0d648ed434f95f812e6a0e9b74825bad03579027`; arbitrum `0x0d648ed434f95f812e6a0e9b74825bad03579027` | ⚠️ Unaudited |
| SecHubFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x9c6b00f2afcccd9c26565646d063e9baead5552b` | ⚠️ Unaudited |
| SecWareFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xc1efad66c0b0685a188b6b31ac08616b19eebef5` | ⚠️ Unaudited |
| SecWareRouter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x0dd6d9c60bc6799acaad9be3ff9c583259cddfca` | ⚠️ Unaudited |
| SecWareRouterV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 2 deployments: bsc `0x492de7004a0a841e8a083422d4abe9a426cf6afe`; bsc `0x76b49af932d9dfb85bc979557f87bde3e6c7c4bd` | ⚠️ Unaudited |
| StakingLock | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 3 deployments: bsc `0x19c34d93f6cef657491fc3469e8d40f0600a2b8c`; bsc `0xeca8d71c1f667f5c122b72af5f6e87b1dcffee78`; bsc `0xf83ade339f903c53a9613d3aed107f6ada31087f` | ⚠️ Unaudited |
| TimeLockedWallet | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x62d55e1d648dc1076b5e273018122607d9666bea` | ⚠️ Unaudited |
| TokenLocker | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 5 deployments: ethereum `0xf17a08a7d41f53b24ad07eb322cbbda2ebdec04b`; bsc `0x7aa03d4b9051cf299e7a2272953d0590fee485a4`; bsc `0xf17a08a7d41f53b24ad07eb322cbbda2ebdec04b`; base `0xf17a08a7d41f53b24ad07eb322cbbda2ebdec04b`; arbitrum `0xf17a08a7d41f53b24ad07eb322cbbda2ebdec04b` | ⚠️ Unaudited |
| TokenTemplate | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 4 deployments: ethereum `0x24a9eb23de8e6f59bdb981b03e847f0f3abbfa0d`; bsc `0x24a9eb23de8e6f59bdb981b03e847f0f3abbfa0d`; base `0x24a9eb23de8e6f59bdb981b03e847f0f3abbfa0d`; arbitrum `0x24a9eb23de8e6f59bdb981b03e847f0f3abbfa0d` | ⚠️ Unaudited |
| UniV3LPLocker | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 5 deployments: ethereum `0x25c9c4b56e820e0dea438b145284f02d9ca9bd52`; bsc `0x0a478109e214433bc1e4211465e0586db2f101ea`; bsc `0x25c9c4b56e820e0dea438b145284f02d9ca9bd52`; base `0x25c9c4b56e820e0dea438b145284f02d9ca9bd52`; arbitrum `0x25c9c4b56e820e0dea438b145284f02d9ca9bd52` | ⚠️ Unaudited |
| UniV4LiquidityLocker | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 5 deployments: ethereum `0x83eab398539af72bf0f0f6a2aa5814d76a53f7d7`; ethereum `0xe7873eb8dda56ed49e51c87185ebcb93958e76f2`; base `0x41f3e9948d4e97e547d800acfd31df9fd741e41b`; base `0x4f26fa33bce395d50671cbc8c7a5d3c55a95519e`; base `0xf5cdadd3cb89a69ab72da3cfd93c505c1b9fcca1` | ⚠️ Unaudited |
| WETH9 | token | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (28)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-387060 | `0x0845f9c8b6a6d7c7535475ea5f7f9aec07cd7184` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-387061 | `0x0a33f7ad41a2ed3510ef5a65b6b4397c6307e410` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-387063 | `0x24bfd4c4ecd2b6d08231891d218b077f0cd35024` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x29ec7b081ac6fa37d47e65c465d27ba6fdcc3c62` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-387065 | `0x35e575e1aae5e22300dd516a995ab9ccb5b5fa07` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-387067 | `0x4eaa7ca2991256ac3cc3e6e38e775729bd517e0e` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-387072 | `0x6915dde03ff4f34cfb614ed2e64b50e74a6cdd3a` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-387075 | `0x7ed92f181c787e4b89871f826550d70923e3ddb0` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-387077 | `0x91228c6361997a5a4da1a01eddb2f6b604536a32` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9a4cd44c1a55cfda565430dee9bfb54f2aacfd6a` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-387078 | `0xa3f64d3102a035db35c42a9001bbc83e08c7a366` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-387083 | `0xbe5efb78869e0de135350e813065ac1d81a2e1fd` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-387084 | `0xc2547047d15c8eabb02e744b4e3ccbf73e064253` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-387086 | `0xd55bda80d67b0fc64181f746136a97c3625cf17f` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-387087 | `0xd5d7fb4647ce79740e6e83819efdf43fa74f8c31` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-387089 | `0xe96a246a0f582b8354b98fb311ee34d141d35c6b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xefa9409f6fd1f8baca0bb067773af0a9316de484` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x03b95716e39bc4b554fb25feb62ceeda59c440ba` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x08aa221235c6a811f842bf6219119591ee22420c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x0a6d51e54e9b1918b72d8c02d6fad24dbc0054ee` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x50727f960148fe4f22a8fff844698b461ac24197` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x71fed2e47c3ce5122fbcd23cf272ee5e4175cffd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x9594fc5cf4385ed250f9310845844756209489fb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xaf41fa6e62c4eef52eeb1f49a08397db20da9e29` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xb988ba68ddd327bad7588b0bfc164f48f14db763` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xc0d55dbafce4b2d4aedb6c406452292bfb13660c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xc75cd11ccc9459e9a740b177316b2d0cdb4ccb63` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xd9a67130e419a00c5d284b1c3b94b74b7011f156` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [SlowMist Audit Report - GoPlus Security(GPS).pdf (also discovered via alternate URL)](https://raw.githubusercontent.com/GoPlusSecurity/GPS-AUDIT/main/SlowMist%20Audit%20Report%20-%20GoPlus%20Security(GPS).pdf) | SlowMist | Audit | 2025-01 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 1 | high |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [21282] SlowMist Audit Report - GoPlus Security(GPS).pdf — no match: Only one contract GPS is in scope, as shown in the source code snippet.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| SlowMist Audit Report - GoPlus Security(GPS).pdf | GPS | unmatched — not counted | — | contract GPS is ERC20, ERC20Permit | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 29 |
| upstream | 0 |
| standard_library | 1 |
| needs_review | 28 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Address-book scope dispositions: 0 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 1 unmatched
- Matched-own operational status: 0 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=1
- Match method counts: n/a

Zero-match audit list:

- [21282] SlowMist Audit Report - GoPlus Security(GPS).pdf

Fork inheritance lineage and inherited audits are included when available.
