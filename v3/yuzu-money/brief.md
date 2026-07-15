# Agentic Audit Brief: Yuzu Money

## Export Authority

- Production state: **published scope**
- Raw selected rows: 8 across 3 audit(s)
- Eligible audit results: 6 (3 matched; 3 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e9e09d06b414f9cd852c36a58d42ce16279465f2d9791cd2a8178f3f54b89ecd`

## Project Overview

- Project: Yuzu Money (`yuzu-money`)
- Website: [https://app.yuzu.money](https://app.yuzu.money)
- Lifecycle: unknown
- Generated: 2026-07-15T18:30:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: ethereum, hyperliquid, monad, pharos, plasma
- Contract surface: 24 unique implementations (31 raw deployments)
- Coverage basis: 3/3 confirmed own live verified implementations (100.0%); conservative 100.0% with 0 needs-review implementation(s)
- DeFi Llama TVL: $55,226,801.02
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for Yuzu Money. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 6 contract row(s) across ethereum, hyperliquid, monad, pharos, plasma. Structural roles: 5 unclassified, 1 core. 1 row(s) use upgradeable patterns.

## Logic Topography

- Exact-run contract rows: 6
- Structural roles: unclassified (5), core (1)
- Contract kinds: contract (6)
- Detected standards: erc20 (1), erc20permit (1), erc4626 (1), ownable (1), ownable2step (1), pausable (1)
- Frameworks: openzeppelin (1), openzeppelin-upgradeable (1)
- Upgradeable-pattern rows: 1

## Fork Analysis

0 of 14 contracts are derived from known codebases. 14 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0x387167...e44aba`, chain 1)
- UnnamedContract (`0x6dff69...a35d12`, chain 1)
- UnnamedContract (`0xb2429b...69f851`, chain 1)
- UnnamedContract (`0x484be0...d4e73f`, chain 143)
- UnnamedContract (`0xb37476...0b0984`, chain 143)
- UnnamedContract (`0xc9ea90...80a7da`, chain 143)
- UnnamedContract (`0x34c07f...f112e4`, chain 999)
- UnnamedContract (`0x8cbafe...8dcc51`, chain 999)
- UnnamedContract (`0xf72ce3...8da72f`, chain 999)
- UnnamedContract (`0x54df79...828934`, chain 1672)
- UnnamedContract (`0x0cddd7...1859e8`, chain 9745)
- UnnamedContract (`0x57b269...bac5e5`, chain 9745)
- UnnamedContract (`0x9dcb0d...373858`, chain 9745)
- StakedYuzuUSDV2 (`0xa39825...e5e9c8`, chain 9745)

## Contract Surface Quality

- Logic-topography rows: 6; live-surface rows included: 6 (6 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 16/16 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 3/3 (100.0%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 16 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 8 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 8
- Confirmed-live implementations: 16 of 24 unique; 8 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 3/11
- Verified + Unaudited implementations: 8
- Verified by bytecode match: 0
- Unverified implementations: 13
- Unique implementations: 24
- Raw deployments: 31
- Audits discovered: 6 (6 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 3
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2026-01 (fresh)
- Audit staleness (calendar age): 6 fresh, 0 aging, 0 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 3 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| Pashov Audit Group | Tier 2 | 3 | 27.3% | 2026-01 |
| Dedaub | Tier 2 | 2 | 18.2% | 2026-01 |

## Contract Surface

### ✅ Verified + Audited (3)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| StakedYuzuUSDV2 | unknown | project_anchor | own_supporting | 1 | plasma | unit-398369 | 2 deployments: plasma `0xa39825...e5e9c8`; plasma `0xc8a8df...0a1bf6` | ✅ Audited |
| YuzuILPV2 | unknown | project_anchor | own_supporting | 1 | plasma | unit-398367 | 2 deployments: plasma `0x326839...9309bc`; plasma `0xebfc8c...b50dca` | ✅ Audited |
| YuzuUSDV2 | unknown | project_anchor | own_supporting | 1 | plasma | unit-398368 | 2 deployments: plasma `0x32d7d5...bf5cfe`; plasma `0x6695c0...7926dc` | ✅ Audited |

### ⚠️ Verified + Unaudited (8)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| ProxyAdmin | governance | non_address_book | non_address_book_inventory (excluded) | 0 | plasma | n/a | `0x44f6e9...fb7e71` | ⚠️ Unaudited |
| PSM | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | plasma | n/a | 2 deployments: plasma `0x2aa939...199dea`; plasma `0x933069...c863b2` | ⚠️ Unaudited |
| PSM | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | plasma | n/a | `0x7000b8...957544` | ⚠️ Unaudited |
| StakedYuzuUSD | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | plasma | n/a | 2 deployments: plasma `0x3fdd8e...d9e589`; plasma `0xb14e7d...32160f` | ⚠️ Unaudited |
| StakedYuzuUSDV2 | token | non_address_book | non_address_book_inventory (excluded) | 0 | plasma | n/a | `0x926b29...130ec8` | ⚠️ Unaudited |
| TokenizedVault | core_logic | non_address_book | non_address_book_inventory (excluded) | 1 | plasma | n/a | `0x517677...1e3eec` | ⚠️ Unaudited |
| YuzuILP | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | plasma | n/a | 2 deployments: plasma `0x7e8bc5...249281`; plasma `0xa5913f...b51531` | ⚠️ Unaudited |
| YuzuUSD | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | plasma | n/a | 2 deployments: plasma `0x8e6026...9cc340`; plasma `0x90b1bc...674d85` | ⚠️ Unaudited |

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
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-398354 | `0x387167...e44aba` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-398355 | `0x6dff69...a35d12` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-398356 | `0xb2429b...69f851` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | monad | unit-398357 | `0x484be0...d4e73f` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | monad | unit-398358 | `0xb37476...0b0984` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | monad | unit-398359 | `0xc9ea90...80a7da` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | hyperliquid | unit-398364 | `0x34c07f...f112e4` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | hyperliquid | unit-398365 | `0x8cbafe...8dcc51` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | hyperliquid | unit-398366 | `0xf72ce3...8da72f` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | pharos | unit-398360 | `0x54df79...828934` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | plasma | unit-398361 | `0x0cddd7...1859e8` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | plasma | unit-398362 | `0x57b269...bac5e5` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | plasma | unit-398363 | `0x9dcb0d...373858` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [YuzuUSD-security-review_2025-08-28.pdf](https://github.com/pashov/audits/blob/master/team/pdf/YuzuUSD-security-review_2025-08-28.pdf) | Pashov Audit Group | Audit | 2025-08 | fresh | Direct | contract_name | no match | 0 | 0 | 0 | 6 | high |
| [dedaub.com/audits/yuzu-money/yuzuusd-october-6-2025](https://dedaub.com/audits/yuzu-money/yuzuusd-october-6-2025) | Dedaub | Audit | 2025-08 | fresh | Direct | contract_name | no match | 0 | 0 | 0 | 5 | high |
| [YuzuUSD-security-review_2026-01-14.pdf](https://github.com/pashov/audits/blob/5911d22f3575a90650b2a6c22758a8f1712b8880/team/pdf/YuzuUSD-security-review_2026-01-14.pdf) | Pashov Audit Group | Audit | 2025-10 | fresh | Direct | contract_name | matched | 3 | 3 | 0 | 21 | high |
| [dedaub.com/audits/yuzu-money/yuzuusd-psm-february-09-2026](https://dedaub.com/audits/yuzu-money/yuzuusd-psm-february-09-2026) | Dedaub | Audit | 2026-01 | fresh | Direct | contract_name | matched | 2 | 2 | 0 | 4 | high |
| [YuzuUSD-security-review_2025-08-28.md](https://github.com/pashov/audits/blob/master/team/md/YuzuUSD-security-review_2025-08-28.md) | Pashov Audit Group | Audit | 2025-08 | fresh | Direct | contract_name | no match | 0 | 0 | 0 | 6 | high |
| [YuzuUSD-security-review_2026-01-14.md](https://github.com/pashov/audits/blob/master/team/md/YuzuUSD-security-review_2026-01-14.md) | Pashov Audit Group | Audit | 2026-01 | fresh | Direct | contract_name | matched | 3 | 3 | 0 | 21 | high |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [11732] YuzuUSD-security-review_2025-08-28.pdf — no match: Scope section lists 6 contracts: YuzuUSD.sol, YuzuILP.sol, StakedYuzuUSD.sol, YuzuIssuer.sol, YuzuOrderBook.sol, YuzuProto.sol. Audit date is September 1st 2025 (end date of timeline).
- [11733] dedaub.com/audits/yuzu-money/yuzuusd-october-6-2025 — no match: Contracts extracted from audit report text; file paths not provided.
- [11734] YuzuUSD-security-review_2026-01-14.pdf — matched: All contracts listed in the Scope section of the audit report.
- [11735] dedaub.com/audits/yuzu-money/yuzuusd-psm-february-09-2026 — matched: Extracted contract names from findings and context; audit date from report submission date.
- [11736] YuzuUSD-security-review_2025-08-28.md — no match: Scope section lists 6 contracts and interfaces/ directory. No audit date found in the provided text.
- [11737] YuzuUSD-security-review_2026-01-14.md — matched: Scope section explicitly lists all contracts in scope. No audit date found in the provided text.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| YuzuUSD-security-review_2025-08-28.pdf | YuzuUSD | unmatched — not counted | — | listed in scope | no |
| YuzuUSD-security-review_2025-08-28.pdf | YuzuILP | unmatched — not counted | — | listed in scope | no |
| YuzuUSD-security-review_2025-08-28.pdf | StakedYuzuUSD | unmatched — not counted | — | listed in scope | no |
| YuzuUSD-security-review_2025-08-28.pdf | YuzuIssuer | unmatched — not counted | — | listed in scope | no |
| YuzuUSD-security-review_2025-08-28.pdf | YuzuOrderBook | unmatched — not counted | — | listed in scope | no |
| YuzuUSD-security-review_2025-08-28.pdf | YuzuProto | unmatched — not counted | — | listed in scope | no |
| dedaub.com/audits/yuzu-money/yuzuusd-october-6-2025 | YuzuUSD | unmatched — not counted | — | mentioned as main token contract | no |
| dedaub.com/audits/yuzu-money/yuzuusd-october-6-2025 | StakedYuzuUSD | unmatched — not counted | — | mentioned as ERC4626 vault | no |
| dedaub.com/audits/yuzu-money/yuzuusd-october-6-2025 | YuzuILP | unmatched — not counted | — | Insurance Liquidity Pool contract | no |
| dedaub.com/audits/yuzu-money/yuzuusd-october-6-2025 | YuzuProto | unmatched — not counted | — | base contract for token contracts | no |
| dedaub.com/audits/yuzu-money/yuzuusd-october-6-2025 | IYuzuILPDefinitions | unmatched — not counted | — | interface defining errors | no |
| YuzuUSD-security-review_2026-01-14.pdf | IYuzuIssuer | unmatched — not counted | — | listed in scope | no |
| YuzuUSD-security-review_2026-01-14.pdf | IYuzuIssuerDefinitions | unmatched — not counted | — | listed in scope | no |
| YuzuUSD-security-review_2026-01-14.pdf | IYuzuOrderBookDefinitions | unmatched — not counted | — | listed in scope | no |
| YuzuUSD-security-review_2026-01-14.pdf | IYuzuProto | unmatched — not counted | — | listed in scope | no |
| YuzuUSD-security-review_2026-01-14.pdf | IYuzuProtoDefinitions | unmatched — not counted | — | listed in scope | no |
| YuzuUSD-security-review_2026-01-14.pdf | IPSM | unmatched — not counted | — | listed in scope | no |
| YuzuUSD-security-review_2026-01-14.pdf | IPSMDefinitions | unmatched — not counted | — | listed in scope | no |
| YuzuUSD-security-review_2026-01-14.pdf | IStakedYuzuUSD | unmatched — not counted | — | listed in scope | no |
| YuzuUSD-security-review_2026-01-14.pdf | IStakedYuzuUSDDefinitions | unmatched — not counted | — | listed in scope | no |
| YuzuUSD-security-review_2026-01-14.pdf | IYuzuILP | unmatched — not counted | — | listed in scope | no |
| YuzuUSD-security-review_2026-01-14.pdf | IYuzuILPDefinitions | unmatched — not counted | — | listed in scope | no |
| YuzuUSD-security-review_2026-01-14.pdf | IYuzuUSD | unmatched — not counted | — | listed in scope | no |
| YuzuUSD-security-review_2026-01-14.pdf | ProtoOVaultComposer | unmatched — not counted | — | listed in scope | no |
| YuzuUSD-security-review_2026-01-14.pdf | PSMOVaultComposer | unmatched — not counted | — | listed in scope | no |
| YuzuUSD-security-review_2026-01-14.pdf | YuzuIssuer | unmatched — not counted | — | listed in scope | no |
| YuzuUSD-security-review_2026-01-14.pdf | YuzuOrderBook | unmatched — not counted | — | listed in scope | no |
| YuzuUSD-security-review_2026-01-14.pdf | YuzuProto | unmatched — not counted | — | listed in scope | no |
| YuzuUSD-security-review_2026-01-14.pdf | YuzuProtoV2 | unmatched — not counted | — | listed in scope | no |
| YuzuUSD-security-review_2026-01-14.pdf | PSM | unmatched — not counted | — | listed in scope | no |
| YuzuUSD-security-review_2026-01-14.pdf | StakedYuzuUSD | unmatched — not counted | — | listed in scope | no |
| YuzuUSD-security-review_2026-01-14.pdf | StakedYuzuUSDV2 | own proxy deployment | TransparentUpgradeableProxy (proxy) (selected) `0xc8a8df...0a1bf6` — deployed 2025-10-10 16:10:10+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| YuzuUSD-security-review_2026-01-14.pdf | YuzuILP | unmatched — not counted | — | listed in scope | no |
| YuzuUSD-security-review_2026-01-14.pdf | YuzuILPV2 | own proxy deployment | TransparentUpgradeableProxy (proxy) (selected) `0xebfc8c...b50dca` — deployed 2025-10-10 16:10:08+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| YuzuUSD-security-review_2026-01-14.pdf | YuzuUSDV2 | own proxy deployment | TransparentUpgradeableProxy (proxy) (selected) `0x6695c0...7926dc` — deployed 2025-10-10 16:10:05+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| dedaub.com/audits/yuzu-money/yuzuusd-psm-february-09-2026 | YuzuProtoV2 | unmatched — not counted | — | mentioned in L1 finding | no |
| dedaub.com/audits/yuzu-money/yuzuusd-psm-february-09-2026 | PSM | unmatched — not counted | — | mentioned in L1 finding and centralization note | no |
| dedaub.com/audits/yuzu-money/yuzuusd-psm-february-09-2026 | StakedYuzuUSD | unmatched — not counted | — | mentioned in L2 finding | no |
| dedaub.com/audits/yuzu-money/yuzuusd-psm-february-09-2026 | StakedYuzuUSDV2 | own proxy deployment | TransparentUpgradeableProxy (proxy) (selected) `0xc8a8df...0a1bf6` — deployed 2025-10-10 16:10:10+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| dedaub.com/audits/yuzu-money/yuzuusd-psm-february-09-2026 | YuzuUSDV2 | own proxy deployment | TransparentUpgradeableProxy (proxy) (selected) `0x6695c0...7926dc` — deployed 2025-10-10 16:10:05+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| dedaub.com/audits/yuzu-money/yuzuusd-psm-february-09-2026 | IStakedYuzuUSDV2Definitions | unmatched — not counted | — | mentioned in L2 finding | no |
| YuzuUSD-security-review_2025-08-28.md | YuzuUSD | unmatched — not counted | — | listed in scope | no |
| YuzuUSD-security-review_2025-08-28.md | YuzuILP | unmatched — not counted | — | listed in scope | no |
| YuzuUSD-security-review_2025-08-28.md | StakedYuzuUSD | unmatched — not counted | — | listed in scope | no |
| YuzuUSD-security-review_2025-08-28.md | YuzuIssuer | unmatched — not counted | — | listed in scope | no |
| YuzuUSD-security-review_2025-08-28.md | YuzuOrderBook | unmatched — not counted | — | listed in scope | no |
| YuzuUSD-security-review_2025-08-28.md | YuzuProto | unmatched — not counted | — | listed in scope | no |
| YuzuUSD-security-review_2026-01-14.md | IYuzuIssuer | unmatched — not counted | — | listed in scope | no |
| YuzuUSD-security-review_2026-01-14.md | IYuzuIssuerDefinitions | unmatched — not counted | — | listed in scope | no |
| YuzuUSD-security-review_2026-01-14.md | IYuzuOrderBookDefinitions | unmatched — not counted | — | listed in scope | no |
| YuzuUSD-security-review_2026-01-14.md | IYuzuProto | unmatched — not counted | — | listed in scope | no |
| YuzuUSD-security-review_2026-01-14.md | IYuzuProtoDefinitions | unmatched — not counted | — | listed in scope | no |
| YuzuUSD-security-review_2026-01-14.md | IPSM | unmatched — not counted | — | listed in scope | no |
| YuzuUSD-security-review_2026-01-14.md | IPSMDefinitions | unmatched — not counted | — | listed in scope | no |
| YuzuUSD-security-review_2026-01-14.md | IStakedYuzuUSD | unmatched — not counted | — | listed in scope | no |
| YuzuUSD-security-review_2026-01-14.md | IStakedYuzuUSDDefinitions | unmatched — not counted | — | listed in scope | no |
| YuzuUSD-security-review_2026-01-14.md | IYuzuILP | unmatched — not counted | — | listed in scope | no |
| YuzuUSD-security-review_2026-01-14.md | IYuzuILPDefinitions | unmatched — not counted | — | listed in scope | no |
| YuzuUSD-security-review_2026-01-14.md | IYuzuUSD | unmatched — not counted | — | listed in scope | no |
| YuzuUSD-security-review_2026-01-14.md | ProtoOVaultComposer | unmatched — not counted | — | listed in scope | no |
| YuzuUSD-security-review_2026-01-14.md | PSMOVaultComposer | unmatched — not counted | — | listed in scope | no |
| YuzuUSD-security-review_2026-01-14.md | YuzuIssuer | unmatched — not counted | — | listed in scope | no |
| YuzuUSD-security-review_2026-01-14.md | YuzuOrderBook | unmatched — not counted | — | listed in scope | no |
| YuzuUSD-security-review_2026-01-14.md | YuzuProto | unmatched — not counted | — | listed in scope | no |
| YuzuUSD-security-review_2026-01-14.md | YuzuProtoV2 | unmatched — not counted | — | listed in scope | no |
| YuzuUSD-security-review_2026-01-14.md | PSM | unmatched — not counted | — | listed in scope | no |
| YuzuUSD-security-review_2026-01-14.md | StakedYuzuUSD | unmatched — not counted | — | listed in scope | no |
| YuzuUSD-security-review_2026-01-14.md | StakedYuzuUSDV2 | own proxy deployment | TransparentUpgradeableProxy (proxy) (selected) `0xc8a8df...0a1bf6` — deployed 2025-10-10 16:10:10+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| YuzuUSD-security-review_2026-01-14.md | YuzuILP | unmatched — not counted | — | listed in scope | no |
| YuzuUSD-security-review_2026-01-14.md | YuzuILPV2 | own proxy deployment | TransparentUpgradeableProxy (proxy) (selected) `0xebfc8c...b50dca` — deployed 2025-10-10 16:10:08+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| YuzuUSD-security-review_2026-01-14.md | YuzuUSDV2 | own proxy deployment | TransparentUpgradeableProxy (proxy) (selected) `0x6695c0...7926dc` — deployed 2025-10-10 16:10:05+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 10 |
| upstream | 0 |
| standard_library | 1 |
| needs_review | 13 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 3
- Inherited remapped matches: 0
- Address-book scope dispositions: 8 own (8 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 63 unmatched
- Matched-own operational status: 8 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=6
- Match method counts: unique_name=8

Zero-match audit list:

- [11732] YuzuUSD-security-review_2025-08-28.pdf
- [11733] dedaub.com/audits/yuzu-money/yuzuusd-october-6-2025
- [11736] YuzuUSD-security-review_2025-08-28.md

Fork inheritance lineage and inherited audits are included when available.
