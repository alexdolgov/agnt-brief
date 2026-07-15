# Agentic Audit Brief: KUMA Protocol

## Export Authority

- Production state: **published scope**
- Raw selected rows: 4 across 1 audit(s)
- Eligible audit results: 3 (1 matched; 2 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `7fbef0dcf68cde7195f117d9b41f1e6d89891da495a42b57ae29b5e338972213`

## Project Overview

- Project: KUMA Protocol (`kuma-protocol`)
- Website: [https://kuma.bond](https://kuma.bond)
- Lifecycle: unknown
- Generated: 2026-07-15T18:00:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: ethereum, linea, mantle, polygon
- Contract surface: 67 unique implementations (69 raw deployments)
- Coverage basis: 4/48 confirmed own live verified implementations (8.3%); conservative 8.3% with 0 needs-review implementation(s)
- DeFi Llama TVL: $3,052,680.37
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for KUMA Protocol. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 79 contract row(s) across ethereum, linea, mantle, polygon. Structural roles: 63 unclassified, 9 supporting, 7 core. 3 row(s) use upgradeable patterns.

## Logic Topography

- Exact-run contract rows: 79
- Structural roles: unclassified (63), supporting (9), core (7)
- Contract kinds: contract (78), abstract (1)
- Detected standards: erc165 (4), erc1967proxy (3), accesscontrol (2), chainlinkaggregator (2), erc20 (2), erc4626 (2), erc721 (2), pausable (2)
- Frameworks: openzeppelin (10), openzeppelin-upgradeable (3), chainlink (1)
- Upgradeable-pattern rows: 3

## Fork Analysis

0 of 64 contracts are derived from known codebases. 64 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0x01d1a8...511a3a`, chain 137)
- UnnamedContract (`0x1a1a40...a70156`, chain 137)
- UnnamedContract (`0x5219bc...1d2247`, chain 137)
- UnnamedContract (`0x05f41f...e599a0`, chain 5000)
- UnnamedContract (`0x11be34...7c97be`, chain 5000)
- UnnamedContract (`0x291cb8...ae299a`, chain 5000)
- UnnamedContract (`0x33bb1a...9fbf35`, chain 5000)
- UnnamedContract (`0x37d1c9...b130a9`, chain 5000)
- UnnamedContract (`0x4520ee...a29c7d`, chain 5000)
- UnnamedContract (`0xabe67b...35f0d0`, chain 5000)
- UnnamedContract (`0xbb4335...cfca42`, chain 5000)
- UnnamedContract (`0xcdf658...9a3b66`, chain 5000)
- UnnamedContract (`0xda9b8d...ec61d9`, chain 5000)
- UnnamedContract (`0xe740e2...ede6be`, chain 5000)
- AccessController (`0x8b853d...30a725`, chain 1)
- AccessController (`0xc7b973...d77c0d`, chain 137)
- AccessController (`0x80a31c...701a40`, chain 59144)
- Blacklist (`0xac4724...c45baa`, chain 1)
- Blacklist (`0x7cdfc6...51f0c0`, chain 137)
- Blacklist (`0xd34a77...86da1e`, chain 59144)
- ERC1967Proxy (`0x01bf66...86cdfd`, chain 1)
- ERC1967Proxy (`0x238134...d9ab0a`, chain 1)
- ERC1967Proxy (`0x400e02...62ad25`, chain 1)
- ERC1967Proxy (`0x45eac9...14d331`, chain 1)
- ERC1967Proxy (`0x6596a0...fd9daf`, chain 1)
- ERC1967Proxy (`0xb1ab37...951cda`, chain 1)
- ERC1967Proxy (`0xcb32e7...222fa1`, chain 1)
- ERC1967Proxy (`0xdc024b...3d7dc9`, chain 1)
- ERC1967Proxy (`0xf2b5c4...f7868e`, chain 1)
- ERC1967Proxy (`0x0ac2e3...514e73`, chain 137)
- ERC1967Proxy (`0x173eb1...f827ef`, chain 137)
- ERC1967Proxy (`0x2cb728...46c6eb`, chain 137)
- ERC1967Proxy (`0x4dba79...19941c`, chain 137)
- ERC1967Proxy (`0x8df37d...28bd69`, chain 137)
- ERC1967Proxy (`0xa66818...7e214a`, chain 137)
- ERC1967Proxy (`0xb5e2e9...7faa36`, chain 137)
- ERC1967Proxy (`0xbcc382...8b4ebc`, chain 137)
- ERC1967Proxy (`0xd567e0...49ddbd`, chain 137)
- ERC1967Proxy (`0x27c57d...6e591b`, chain 59144)
- ERC1967Proxy (`0x41deef...0483ac`, chain 59144)
- ERC1967Proxy (`0x69c6d6...6e27f2`, chain 59144)
- ERC1967Proxy (`0x6a83fb...0c49e0`, chain 59144)
- ERC1967Proxy (`0x704343...e5517c`, chain 59144)
- ERC1967Proxy (`0x7a6aa8...ff3865`, chain 59144)
- GnosisSafeProxy (`0x33da84...e0d1bf`, chain 1)
- GnosisSafeProxy (`0xb55027...33f450`, chain 1)
- GnosisSafeProxy (`0xfef638...3207b6`, chain 5000)
- GnosisSafeProxy (`0x1151d6...642997`, chain 59144)
- GnosisSafeProxy (`0x7cf34a...025432`, chain 59144)
- KUMAAccessController (`0x5fad6f...1163de`, chain 1)
- KUMAAccessController (`0xfe7261...a42a54`, chain 137)
- KUMAAccessController (`0xb9cee0...6a52ae`, chain 59144)
- KUMABondToken (`0x74e9e8...b79a7b`, chain 1)
- KUMABondToken (`0xfff0a9...d13e7a`, chain 137)
- KUMABondToken (`0x3d0a18...3a3a9a`, chain 59144)
- MCAGAggregator (`0x357536...b782aa`, chain 1)
- MCAGAggregator (`0xc28372...03918d`, chain 1)
- MCAGAggregator (`0x13414c...61cba9`, chain 137)
- MCAGAggregator (`0x7e86bc...bbdd94`, chain 137)
- MCAGAggregator (`0x5516c2...444fd1`, chain 59144)
- RateProvider (`0xd8689e...64e842`, chain 1)
- RateProvider (`0x76d8b7...6628e2`, chain 137)
- WrappedRebaseToken (`0xaf4ce7...e57e09`, chain 1)
- WrappedRebaseToken (`0x2f0b43...d7297a`, chain 59144)

## Contract Surface Quality

- Indexed contracts: 79; live-surface contracts included: 79 (50 live, 29 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 62/68 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 4/48 (8.3%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 62 own, 5 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 0 discovered implementations excluded (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 28
- Deployed-live implementations: 62 of 67 unique (rest dead/inactive/uninitialized)
- All verified address-book-owned implementations audited (incl. non-live): 4/48
- Verified + Unaudited implementations: 44
- Verified by bytecode match: 0
- Unverified implementations: 14
- Unique implementations: 67
- Raw deployments: 69
- Audits discovered: 3 (3 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 1
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2023-02 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 2 stale, 1 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 4 match-unverified
- Tier 1 coverage: 8.3% (Code4rena)

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| Code4rena | Tier 1 | 4 | 8.3% | 2023-02 |

## Contract Surface

### ✅ Verified + Audited (4)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| KBCToken | unknown | project_anchor | own_supporting | 1 | ethereum | unit-244494 | `0x238134...d9ab0a` | ✅ Audited |
| KIBToken | unknown | project_anchor | own_supporting | 1 | ethereum | unit-244493 | `0xf2b5c4...f7868e` | ✅ Audited |
| KUMAAddressProvider | unknown | project_anchor | own_supporting | 1 | ethereum | unit-244496 | `0xdc024b...3d7dc9` | ✅ Audited |
| MCAGRateFeed | unknown | project_anchor | own_supporting | 1 | ethereum | unit-244495 | `0x6596a0...fd9daf` | ✅ Audited |

### ⚠️ Verified + Unaudited (49)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| AccessController | unknown | project_anchor | own_supporting | 0 | ethereum | unit-244450 | `0x8b853d...30a725` | ⚠️ Unaudited |
| AccessController | unknown | project_anchor | own_supporting | 0 | polygon | unit-244467 | `0xc7b973...d77c0d` | ⚠️ Unaudited |
| AccessController | unknown | project_anchor | own_supporting | 0 | linea | unit-244486 | `0x80a31c...701a40` | ⚠️ Unaudited |
| Blacklist | unknown | project_anchor | own_supporting | 0 | ethereum | unit-244452 | `0xac4724...c45baa` | ⚠️ Unaudited |
| Blacklist | unknown | project_anchor | own_supporting | 0 | polygon | unit-244462 | `0x7cdfc6...51f0c0` | ⚠️ Unaudited |
| Blacklist | unknown | project_anchor | own_supporting | 0 | linea | unit-244488 | `0xd34a77...86da1e` | ⚠️ Unaudited |
| ERC4626Oracle | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-244451 | `0xa1048e...2c6888` | ⚠️ Unaudited |
| ERC4626Oracle | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | polygon | unit-244465 | `0xabd06d...6afa41` | ⚠️ Unaudited |
| GnosisSafe | governance | project_anchor | own_supporting | 2 | ethereum | unit-244498 (2 proxies) | 2 deployments: ethereum `0x33da84...e0d1bf`; ethereum `0xb55027...33f450` | ⚠️ Unaudited |
| GnosisSafeL2 | governance | project_anchor | own_supporting | 2 | linea | unit-244508 (2 proxies) | 2 deployments: linea `0x1151d6...642997`; linea `0x7cf34a...025432` | ⚠️ Unaudited |
| GnosisSafeProxy | governance | project_anchor | own_supporting | 0 | mantle | unit-244482 | `0xfef638...3207b6` | ⚠️ Unaudited |
| KBCToken | unknown | project_anchor | own_supporting | 1 | polygon | unit-244506 | `0x8df37d...28bd69` | ⚠️ Unaudited |
| KBCToken | unknown | project_anchor | own_supporting | 1 | linea | unit-244510 | `0x6a83fb...0c49e0` | ⚠️ Unaudited |
| KIBTAggregator | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-244456 | `0xdc888b...96cb50` | ⚠️ Unaudited |
| KIBTAggregator | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | polygon | unit-244464 | `0x82c3e5...77b4f0` | ⚠️ Unaudited |
| KIBTAggregator | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | polygon | unit-244466 | `0xae1e83...f77b50` | ⚠️ Unaudited |
| KIBToken | unknown | project_anchor | own_supporting | 1 | ethereum | unit-244490 | `0x01bf66...86cdfd` | ⚠️ Unaudited |
| KIBToken | unknown | project_anchor | own_supporting | 1 | polygon | unit-244507 | `0x2cb728...46c6eb` | ⚠️ Unaudited |
| KIBToken | unknown | project_anchor | own_supporting | 1 | polygon | unit-244499 | `0xa66818...7e214a` | ⚠️ Unaudited |
| KIBToken | unknown | project_anchor | own_supporting | 1 | linea | unit-244514 | `0x7a6aa8...ff3865` | ⚠️ Unaudited |
| KUMAAccessController | governance | project_anchor | own_supporting | 0 | ethereum | unit-244448 | `0x5fad6f...1163de` | ⚠️ Unaudited |
| KUMAAccessController | unknown | project_anchor | own_supporting | 0 | polygon | unit-244468 | `0xfe7261...a42a54` | ⚠️ Unaudited |
| KUMAAccessController | governance | project_anchor | own_supporting | 0 | linea | unit-244487 | `0xb9cee0...6a52ae` | ⚠️ Unaudited |
| KUMAAddressProvider | unknown | project_anchor | own_supporting | 1 | polygon | unit-244502 | `0x4dba79...19941c` | ⚠️ Unaudited |
| KUMAAddressProvider | unknown | project_anchor | own_supporting | 1 | linea | unit-244512 | `0x69c6d6...6e27f2` | ⚠️ Unaudited |
| KUMABondToken | token | project_anchor | own_supporting | 0 | ethereum | unit-244449 | `0x74e9e8...b79a7b` | ⚠️ Unaudited |
| KUMABondToken | unknown | project_anchor | own_supporting | 0 | polygon | unit-244469 | `0xfff0a9...d13e7a` | ⚠️ Unaudited |
| KUMABondToken | token | project_anchor | own_supporting | 0 | linea | unit-244484 | `0x3d0a18...3a3a9a` | ⚠️ Unaudited |
| KUMAFeeCollector | unknown | project_anchor | own_supporting | 1 | ethereum | unit-244497 | `0x400e02...62ad25` | ⚠️ Unaudited |
| KUMAFeeCollector | unknown | project_anchor | own_supporting | 1 | ethereum | unit-244489 | `0x45eac9...14d331` | ⚠️ Unaudited |
| KUMAFeeCollector | unknown | project_anchor | own_supporting | 1 | polygon | unit-244503 | `0xb5e2e9...7faa36` | ⚠️ Unaudited |
| KUMAFeeCollector | unknown | project_anchor | own_supporting | 1 | polygon | unit-244505 | `0xd567e0...49ddbd` | ⚠️ Unaudited |
| KUMAFeeCollector | unknown | project_anchor | own_supporting | 1 | linea | unit-244511 | `0x704343...e5517c` | ⚠️ Unaudited |
| KUMASwap | unknown | project_anchor | own_supporting | 1 | ethereum | unit-244491 | `0xb1ab37...951cda` | ⚠️ Unaudited |
| KUMASwap | unknown | project_anchor | own_supporting | 1 | ethereum | unit-244492 | `0xcb32e7...222fa1` | ⚠️ Unaudited |
| KUMASwap | unknown | project_anchor | own_supporting | 1 | polygon | unit-244500 | `0x0ac2e3...514e73` | ⚠️ Unaudited |
| KUMASwap | unknown | project_anchor | own_supporting | 1 | polygon | unit-244504 | `0xbcc382...8b4ebc` | ⚠️ Unaudited |
| KUMASwap | unknown | project_anchor | own_supporting | 1 | linea | unit-244509 | `0x41deef...0483ac` | ⚠️ Unaudited |
| MCAGAggregator | unknown | project_anchor | own_supporting | 0 | ethereum | unit-244447 | `0x357536...b782aa` | ⚠️ Unaudited |
| MCAGAggregator | unknown | project_anchor | own_supporting | 0 | ethereum | unit-244454 | `0xc28372...03918d` | ⚠️ Unaudited |
| MCAGAggregator | unknown | project_anchor | own_supporting | 0 | polygon | unit-244458 | `0x13414c...61cba9` | ⚠️ Unaudited |
| MCAGAggregator | unknown | project_anchor | own_supporting | 0 | polygon | unit-244463 | `0x7e86bc...bbdd94` | ⚠️ Unaudited |
| MCAGAggregator | unknown | project_anchor | own_supporting | 0 | linea | unit-244485 | `0x5516c2...444fd1` | ⚠️ Unaudited |
| MCAGRateFeed | unknown | project_anchor | own_supporting | 1 | polygon | unit-244501 | `0x173eb1...f827ef` | ⚠️ Unaudited |
| MCAGRateFeed | unknown | project_anchor | own_supporting | 1 | linea | unit-244513 | `0x27c57d...6e591b` | ⚠️ Unaudited |
| RateProvider | unknown | project_anchor | own_supporting | 0 | ethereum | unit-244455 | `0xd8689e...64e842` | ⚠️ Unaudited |
| RateProvider | unknown | project_anchor | own_supporting | 0 | polygon | unit-244461 | `0x76d8b7...6628e2` | ⚠️ Unaudited |
| WrappedRebaseToken | token | project_anchor | own_supporting | 0 | ethereum | unit-244453 | `0xaf4ce7...e57e09` | ⚠️ Unaudited |
| WrappedRebaseToken | token | project_anchor | own_supporting | 0 | linea | unit-244483 | `0x2f0b43...d7297a` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (14)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-244457 | `0x01d1a8...511a3a` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-244459 | `0x1a1a40...a70156` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-244460 | `0x5219bc...1d2247` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | mantle | unit-244470 | `0x05f41f...e599a0` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | mantle | unit-244471 | `0x11be34...7c97be` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | mantle | unit-244472 | `0x291cb8...ae299a` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | mantle | unit-244473 | `0x33bb1a...9fbf35` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | mantle | unit-244474 | `0x37d1c9...b130a9` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | mantle | unit-244475 | `0x4520ee...a29c7d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | mantle | unit-244476 | `0xabe67b...35f0d0` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | mantle | unit-244477 | `0xbb4335...cfca42` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | mantle | unit-244479 | `0xcdf658...9a3b66` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | mantle | unit-244480 | `0xda9b8d...ec61d9` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | mantle | unit-244481 | `0xe740e2...ede6be` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [code4rena.com/reports/2023-02-kuma](https://code4rena.com/reports/2023-02-kuma) | Code4rena | Contest | 2023-02 | stale | Direct | contract_name | matched | 4 | 4 | 0 | 7 | high |
| [www.chainsecurity.com/security-audit/kuma-protocol](https://www.chainsecurity.com/security-audit/kuma-protocol) | ChainSecurity | Audit | n/a | unknown | Direct | contract_name | no match | 0 | 0 | 0 | 3 | low |
| [2023-02-kuma (GitHub directory)](https://github.com/code-423n4/2023-02-kuma) | Code4rena | Contest | 2023-02 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 22 | high |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [2758] code4rena.com/reports/2023-02-kuma — matched: Extracted 11 contracts from scope and findings sections. Audit date from report header.
- [2759] www.chainsecurity.com/security-audit/kuma-protocol — no match: No explicit scope section or file paths found. Contract names inferred from description.
- [11948] 2023-02-kuma (GitHub directory) — no match: Extracted 22 contract names from the scope table (12 contracts + 10 interfaces). Audit end date is February 22, 2023.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| code4rena.com/reports/2023-02-kuma | KBCToken | own proxy deployment | ERC1967Proxy (proxy) (selected) `0x238134...d9ab0a` — deployed 2023-05-11 13:24:11+03 — liveness: live (current_address_book_code)<br>ERC1967Proxy (proxy) (alternative) `0x6a83fb...0c49e0` — deployed 2023-11-09 15:07:47+03 — liveness: live (current_address_book_code)<br>ERC1967Proxy (proxy) (alternative) `0x8df37d...28bd69` — deployed 2023-10-26 19:25:21+03 — liveness: live (current_address_book_code) | deployment-date disambiguation: 2023-05-11 was 43d from audit; next candidate 125d; normalized_full_corpus:project_anchor:matcher_anchor | yes |
| code4rena.com/reports/2023-02-kuma | KIBToken | own proxy deployment | ERC1967Proxy (proxy) (alternative) `0x7a6aa8...ff3865` — deployed 2023-11-09 16:17:47+03 — liveness: live (current_address_book_code)<br>ERC1967Proxy (proxy) (selected) `0xf2b5c4...f7868e` — deployed 2023-06-06 14:51:35+03 — liveness: live (current_address_book_code)<br>ERC1967Proxy (proxy) (alternative) `0xa66818...7e214a` — deployed 2023-11-27 12:00:53+03 — liveness: live (current_address_book_code)<br>ERC1967Proxy (proxy) (alternative) `0x01bf66...86cdfd` — deployed 2023-05-11 13:39:47+03 — liveness: live (current_address_book_code)<br>ERC1967Proxy (proxy) (alternative) `0x2cb728...46c6eb` — deployed 2023-10-27 17:22:40+03 — liveness: live (current_address_book_code) | deployment-date disambiguation: 2023-06-06 was 17d from audit; next candidate 43d; normalized_full_corpus:project_anchor:matcher_anchor | yes |
| code4rena.com/reports/2023-02-kuma | KUMAAddressProvider | own proxy deployment | ERC1967Proxy (proxy) (alternative) `0x69c6d6...6e27f2` — deployed 2023-11-09 15:07:23+03 — liveness: live (current_address_book_code)<br>ERC1967Proxy (proxy) (selected) `0xdc024b...3d7dc9` — deployed 2023-05-11 11:11:47+03 — liveness: live (current_address_book_code)<br>ERC1967Proxy (proxy) (alternative) `0x4dba79...19941c` — deployed 2023-10-26 19:21:19+03 — liveness: live (current_address_book_code) | deployment-date disambiguation: 2023-05-11 was 43d from audit; next candidate 125d; normalized_full_corpus:project_anchor:matcher_anchor | yes |
| code4rena.com/reports/2023-02-kuma | KUMAFeeCollector | ambiguous — not counted | ERC1967Proxy (proxy) (alternative) `0xb5e2e9...7faa36` — deployed 2023-11-27 18:51:04+03 — liveness: live (current_address_book_code)<br>ERC1967Proxy (proxy) (alternative) `0x400e02...62ad25` — deployed 2023-05-11 13:43:35+03 — liveness: live (current_address_book_code)<br>ERC1967Proxy (proxy) (alternative) `0x45eac9...14d331` — deployed 2023-05-15 09:50:47+03 — liveness: live (current_address_book_code)<br>ERC1967Proxy (proxy) (alternative) `0xd567e0...49ddbd` — deployed 2023-10-27 17:25:04+03 — liveness: live (current_address_book_code)<br>ERC1967Proxy (proxy) (alternative) `0x704343...e5517c` — deployed 2023-11-09 16:18:11+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| code4rena.com/reports/2023-02-kuma | KUMASwap | ambiguous — not counted | ERC1967Proxy (proxy) (alternative) `0xb1ab37...951cda` — deployed 2023-05-11 13:48:59+03 — liveness: live (current_address_book_code)<br>ERC1967Proxy (proxy) (alternative) `0x41deef...0483ac` — deployed 2023-11-09 16:14:11+03 — liveness: live (current_address_book_code)<br>ERC1967Proxy (proxy) (alternative) `0x0ac2e3...514e73` — deployed 2023-10-27 17:20:12+03 — liveness: live (current_address_book_code)<br>ERC1967Proxy (proxy) (alternative) `0xcb32e7...222fa1` — deployed 2023-05-15 09:51:11+03 — liveness: live (current_address_book_code)<br>ERC1967Proxy (proxy) (alternative) `0xbcc382...8b4ebc` — deployed 2023-11-27 18:27:10+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| code4rena.com/reports/2023-02-kuma | Blacklist | ambiguous — not counted | Blacklist (alternative) `0x7cdfc6...51f0c0` — deployed 2023-10-26 12:32:02+03 — liveness: live (code_present_context)<br>Blacklist (alternative) `0xd34a77...86da1e` — deployed 2023-07-17 16:25:19+03 — liveness: live (code_present_context)<br>Blacklist (alternative) `0xac4724...c45baa` — deployed 2023-05-10 12:07:11+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| code4rena.com/reports/2023-02-kuma | KYCToken | unmatched — not counted | — | listed in scope and Low Risk section | no |
| code4rena.com/reports/2023-02-kuma | KUMABondToken | ambiguous — not counted | KUMABondToken (alternative) `0x74e9e8...b79a7b` — deployed 2023-05-10 12:08:23+03 — liveness: live (current_address_book_code)<br>KUMABondToken (alternative) `0x3d0a18...3a3a9a` — deployed 2023-07-17 16:30:59+03 — liveness: live (current_address_book_code)<br>KUMABondToken (alternative) `0xfff0a9...d13e7a` — deployed 2023-10-26 12:33:50+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| code4rena.com/reports/2023-02-kuma | MCAGAggregator | ambiguous — not counted | MCAGAggregator (alternative) `0x13414c...61cba9` — deployed 2023-09-12 18:15:57+03 — liveness: live (current_address_book_code)<br>MCAGAggregator (alternative) `0x5516c2...444fd1` — deployed 2023-07-17 16:39:41+03 — liveness: live (current_address_book_code)<br>MCAGAggregator (alternative) `0x357536...b782aa` — deployed 2023-05-15 09:30:23+03 — liveness: live (current_address_book_code)<br>MCAGAggregator (alternative) `0x7e86bc...bbdd94` — deployed 2023-10-26 12:42:35+03 — liveness: live (current_address_book_code)<br>MCAGAggregator (alternative) `0xc28372...03918d` — deployed 2023-05-11 10:41:11+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| code4rena.com/reports/2023-02-kuma | WadRayMath | unmatched — not counted | — | listed in scope and Low Risk section | no |
| code4rena.com/reports/2023-02-kuma | MCAGRateFeed | own proxy deployment | ERC1967Proxy (proxy) (alternative) `0x173eb1...f827ef` — deployed 2023-10-26 19:25:53+03 — liveness: live (current_address_book_code)<br>ERC1967Proxy (proxy) (selected) `0x6596a0...fd9daf` — deployed 2023-05-11 13:29:47+03 — liveness: live (current_address_book_code)<br>ERC1967Proxy (proxy) (alternative) `0x27c57d...6e591b` — deployed 2023-11-09 15:08:11+03 — liveness: live (current_address_book_code) | deployment-date disambiguation: 2023-05-11 was 43d from audit; next candidate 125d; normalized_full_corpus:project_anchor:matcher_anchor | yes |
| www.chainsecurity.com/security-audit/kuma-protocol | KUMABond | unmatched — not counted | — | mentioned as tokenized NFTs | no |
| www.chainsecurity.com/security-audit/kuma-protocol | KIB | unmatched — not counted | — | ERC-20 token mentioned as audited | no |
| www.chainsecurity.com/security-audit/kuma-protocol | DeprecationMode | unmatched — not counted | — | mentioned as safeguard | no |
| 2023-02-kuma (GitHub directory) | KUMAAccessController | ambiguous — not counted | KUMAAccessController (alternative) `0xfe7261...a42a54` — deployed 2023-10-26 19:17:27+03 — liveness: live (current_address_book_code)<br>KUMAAccessController (alternative) `0x5fad6f...1163de` — deployed 2023-05-11 11:11:23+03 — liveness: live (current_address_book_code)<br>KUMAAccessController (alternative) `0xb9cee0...6a52ae` — deployed 2023-11-09 15:06:59+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| 2023-02-kuma (GitHub directory) | AccessController | ambiguous — not counted | AccessController (alternative) `0x8b853d...30a725` — deployed 2023-05-10 12:03:59+03 — liveness: live (code_present_context)<br>AccessController (alternative) `0xc7b973...d77c0d` — deployed 2023-10-26 11:24:13+03 — liveness: live (code_present_context)<br>AccessController (alternative) `0x80a31c...701a40` — deployed 2023-07-17 12:57:53+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| 2023-02-kuma (GitHub directory) | Blacklist | ambiguous — not counted | Blacklist (alternative) `0x7cdfc6...51f0c0` — deployed 2023-10-26 12:32:02+03 — liveness: live (code_present_context)<br>Blacklist (alternative) `0xd34a77...86da1e` — deployed 2023-07-17 16:25:19+03 — liveness: live (code_present_context)<br>Blacklist (alternative) `0xac4724...c45baa` — deployed 2023-05-10 12:07:11+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| 2023-02-kuma (GitHub directory) | KBCToken | ambiguous — not counted | ERC1967Proxy (proxy) (alternative) `0x238134...d9ab0a` — deployed 2023-05-11 13:24:11+03 — liveness: live (current_address_book_code)<br>ERC1967Proxy (proxy) (alternative) `0x6a83fb...0c49e0` — deployed 2023-11-09 15:07:47+03 — liveness: live (current_address_book_code)<br>ERC1967Proxy (proxy) (alternative) `0x8df37d...28bd69` — deployed 2023-10-26 19:25:21+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| 2023-02-kuma (GitHub directory) | MCAGAggregator | ambiguous — not counted | MCAGAggregator (alternative) `0x13414c...61cba9` — deployed 2023-09-12 18:15:57+03 — liveness: live (current_address_book_code)<br>MCAGAggregator (alternative) `0x5516c2...444fd1` — deployed 2023-07-17 16:39:41+03 — liveness: live (current_address_book_code)<br>MCAGAggregator (alternative) `0x357536...b782aa` — deployed 2023-05-15 09:30:23+03 — liveness: live (current_address_book_code)<br>MCAGAggregator (alternative) `0x7e86bc...bbdd94` — deployed 2023-10-26 12:42:35+03 — liveness: live (current_address_book_code)<br>MCAGAggregator (alternative) `0xc28372...03918d` — deployed 2023-05-11 10:41:11+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| 2023-02-kuma (GitHub directory) | MCAGRateFeed | ambiguous — not counted | ERC1967Proxy (proxy) (alternative) `0x173eb1...f827ef` — deployed 2023-10-26 19:25:53+03 — liveness: live (current_address_book_code)<br>ERC1967Proxy (proxy) (alternative) `0x6596a0...fd9daf` — deployed 2023-05-11 13:29:47+03 — liveness: live (current_address_book_code)<br>ERC1967Proxy (proxy) (alternative) `0x27c57d...6e591b` — deployed 2023-11-09 15:08:11+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| 2023-02-kuma (GitHub directory) | KYCToken | unmatched — not counted | — | listed in scope table | no |
| 2023-02-kuma (GitHub directory) | KUMAAddressProvider | ambiguous — not counted | ERC1967Proxy (proxy) (alternative) `0x69c6d6...6e27f2` — deployed 2023-11-09 15:07:23+03 — liveness: live (current_address_book_code)<br>ERC1967Proxy (proxy) (alternative) `0xdc024b...3d7dc9` — deployed 2023-05-11 11:11:47+03 — liveness: live (current_address_book_code)<br>ERC1967Proxy (proxy) (alternative) `0x4dba79...19941c` — deployed 2023-10-26 19:21:19+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| 2023-02-kuma (GitHub directory) | KUMABondToken | ambiguous — not counted | KUMABondToken (alternative) `0x74e9e8...b79a7b` — deployed 2023-05-10 12:08:23+03 — liveness: live (current_address_book_code)<br>KUMABondToken (alternative) `0x3d0a18...3a3a9a` — deployed 2023-07-17 16:30:59+03 — liveness: live (current_address_book_code)<br>KUMABondToken (alternative) `0xfff0a9...d13e7a` — deployed 2023-10-26 12:33:50+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| 2023-02-kuma (GitHub directory) | KUMAFeeCollector | ambiguous — not counted | ERC1967Proxy (proxy) (alternative) `0xb5e2e9...7faa36` — deployed 2023-11-27 18:51:04+03 — liveness: live (current_address_book_code)<br>ERC1967Proxy (proxy) (alternative) `0x400e02...62ad25` — deployed 2023-05-11 13:43:35+03 — liveness: live (current_address_book_code)<br>ERC1967Proxy (proxy) (alternative) `0x45eac9...14d331` — deployed 2023-05-15 09:50:47+03 — liveness: live (current_address_book_code)<br>ERC1967Proxy (proxy) (alternative) `0xd567e0...49ddbd` — deployed 2023-10-27 17:25:04+03 — liveness: live (current_address_book_code)<br>ERC1967Proxy (proxy) (alternative) `0x704343...e5517c` — deployed 2023-11-09 16:18:11+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| 2023-02-kuma (GitHub directory) | KIBToken | ambiguous — not counted | ERC1967Proxy (proxy) (alternative) `0x7a6aa8...ff3865` — deployed 2023-11-09 16:17:47+03 — liveness: live (current_address_book_code)<br>ERC1967Proxy (proxy) (alternative) `0xf2b5c4...f7868e` — deployed 2023-06-06 14:51:35+03 — liveness: live (current_address_book_code)<br>ERC1967Proxy (proxy) (alternative) `0xa66818...7e214a` — deployed 2023-11-27 12:00:53+03 — liveness: live (current_address_book_code)<br>ERC1967Proxy (proxy) (alternative) `0x01bf66...86cdfd` — deployed 2023-05-11 13:39:47+03 — liveness: live (current_address_book_code)<br>ERC1967Proxy (proxy) (alternative) `0x2cb728...46c6eb` — deployed 2023-10-27 17:22:40+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| 2023-02-kuma (GitHub directory) | KUMASwap | ambiguous — not counted | ERC1967Proxy (proxy) (alternative) `0xb1ab37...951cda` — deployed 2023-05-11 13:48:59+03 — liveness: live (current_address_book_code)<br>ERC1967Proxy (proxy) (alternative) `0x41deef...0483ac` — deployed 2023-11-09 16:14:11+03 — liveness: live (current_address_book_code)<br>ERC1967Proxy (proxy) (alternative) `0x0ac2e3...514e73` — deployed 2023-10-27 17:20:12+03 — liveness: live (current_address_book_code)<br>ERC1967Proxy (proxy) (alternative) `0xcb32e7...222fa1` — deployed 2023-05-15 09:51:11+03 — liveness: live (current_address_book_code)<br>ERC1967Proxy (proxy) (alternative) `0xbcc382...8b4ebc` — deployed 2023-11-27 18:27:10+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| 2023-02-kuma (GitHub directory) | IBlacklist | unmatched — not counted | — | listed in scope table | no |
| 2023-02-kuma (GitHub directory) | IMCAGRateFeed | unmatched — not counted | — | listed in scope table | no |
| 2023-02-kuma (GitHub directory) | MCAGAggregatorInterface | unmatched — not counted | — | listed in scope table | no |
| 2023-02-kuma (GitHub directory) | IKYCToken | unmatched — not counted | — | listed in scope table | no |
| 2023-02-kuma (GitHub directory) | IKBCToken | unmatched — not counted | — | listed in scope table | no |
| 2023-02-kuma (GitHub directory) | IKUMAFeeCollector | unmatched — not counted | — | listed in scope table | no |
| 2023-02-kuma (GitHub directory) | IKUMAAddressProvider | unmatched — not counted | — | listed in scope table | no |
| 2023-02-kuma (GitHub directory) | IKUMABondToken | unmatched — not counted | — | listed in scope table | no |
| 2023-02-kuma (GitHub directory) | IKIBToken | unmatched — not counted | — | listed in scope table | no |
| 2023-02-kuma (GitHub directory) | IKUMASwap | unmatched — not counted | — | listed in scope table | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | `0x8b853d...30a725` | AccessController | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | `0xc7b973...d77c0d` | AccessController | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| linea | `0x80a31c...701a40` | AccessController | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xac4724...c45baa` | Blacklist | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | `0x7cdfc6...51f0c0` | Blacklist | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| linea | `0xd34a77...86da1e` | Blacklist | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | `0x8df37d...28bd69` | KBCToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| linea | `0x6a83fb...0c49e0` | KBCToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x01bf66...86cdfd` | KIBToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | `0x2cb728...46c6eb` | KIBToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | `0xa66818...7e214a` | KIBToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| linea | `0x7a6aa8...ff3865` | KIBToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x5fad6f...1163de` | KUMAAccessController | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | `0xfe7261...a42a54` | KUMAAccessController | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| linea | `0xb9cee0...6a52ae` | KUMAAccessController | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | `0x4dba79...19941c` | KUMAAddressProvider | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| linea | `0x69c6d6...6e27f2` | KUMAAddressProvider | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x74e9e8...b79a7b` | KUMABondToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | `0xfff0a9...d13e7a` | KUMABondToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| linea | `0x3d0a18...3a3a9a` | KUMABondToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x400e02...62ad25` | KUMAFeeCollector | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x45eac9...14d331` | KUMAFeeCollector | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | `0xb5e2e9...7faa36` | KUMAFeeCollector | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | `0xd567e0...49ddbd` | KUMAFeeCollector | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| linea | `0x704343...e5517c` | KUMAFeeCollector | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xb1ab37...951cda` | KUMASwap | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xcb32e7...222fa1` | KUMASwap | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | `0x0ac2e3...514e73` | KUMASwap | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | `0xbcc382...8b4ebc` | KUMASwap | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| linea | `0x41deef...0483ac` | KUMASwap | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x357536...b782aa` | MCAGAggregator | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xc28372...03918d` | MCAGAggregator | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | `0x13414c...61cba9` | MCAGAggregator | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | `0x7e86bc...bbdd94` | MCAGAggregator | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| linea | `0x5516c2...444fd1` | MCAGAggregator | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | `0x173eb1...f827ef` | MCAGRateFeed | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| linea | `0x27c57d...6e591b` | MCAGRateFeed | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xd8689e...64e842` | RateProvider | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | `0x76d8b7...6628e2` | RateProvider | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xaf4ce7...e57e09` | WrappedRebaseToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| linea | `0x2f0b43...d7297a` | WrappedRebaseToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 50 |
| upstream | 0 |
| standard_library | 3 |
| needs_review | 14 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 2
- Inherited remapped matches: 0
- Address-book scope dispositions: 4 own (4 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 16 ambiguous, 16 unmatched
- Matched-own operational status: 4 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=2, low=1
- Match method counts: temporal_name=4

Zero-match audit list:

- [2759] www.chainsecurity.com/security-audit/kuma-protocol
- [11948] 2023-02-kuma (GitHub directory)

Fork inheritance lineage and inherited audits are included when available.
