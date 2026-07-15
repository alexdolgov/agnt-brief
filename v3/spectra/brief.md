# Agentic Audit Brief: Spectra

## Export Authority

- Production state: **published scope**
- Raw selected rows: 1 across 1 audit(s)
- Eligible audit results: 7 (1 matched; 6 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `7fbef0dcf68cde7195f117d9b41f1e6d89891da495a42b57ae29b5e338972213`

## Project Overview

- Project: Spectra (`spectra`)
- Website: [https://www.spectra.finance](https://www.spectra.finance)
- Lifecycle: unknown
- Generated: 2026-07-15T18:00:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: arbitrum, avalanche, base, bsc, ethereum, hyperliquid, optimism, sonic
- Contract surface: 107 unique implementations (107 raw deployments)
- Coverage basis: 1/7 confirmed own live verified implementations (14.3%); conservative 14.3% with 0 needs-review implementation(s)
- DeFi Llama TVL: $41,523,304.00
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for Spectra. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 10 contract row(s) across arbitrum, avalanche, base, bsc, ethereum, hyperliquid, optimism, sonic. Structural roles: 9 supporting, 1 core. 3 row(s) use upgradeable patterns.

## Logic Topography

- Exact-run contract rows: 10
- Structural roles: supporting (9), core (1)
- Contract kinds: contract (10)
- Detected standards: erc1967proxy (2), multicall (1)
- Frameworks: openzeppelin (3), openzeppelin-upgradeable (2)
- Upgradeable-pattern rows: 3

## Fork Analysis

0 of 73 contracts are derived from known codebases. 73 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0x16b282...e1f6b8`, chain 1)
- UnnamedContract (`0x22af2e...95f69c`, chain 1)
- UnnamedContract (`0x46500e...ca7e9f`, chain 1)
- UnnamedContract (`0x4973b5...1da02e`, chain 1)
- UnnamedContract (`0x63d5dd...29eade`, chain 1)
- UnnamedContract (`0x6a8922...2b478b`, chain 1)
- UnnamedContract (`0x7ea309...bd1852`, chain 1)
- UnnamedContract (`0xc03309...e28e6d`, chain 1)
- UnnamedContract (`0xd68839...2b28a3`, chain 1)
- UnnamedContract (`0xdbe5b6...aa8d84`, chain 1)
- UnnamedContract (`0xe9888a...9b696c`, chain 1)
- UnnamedContract (`0x0458c0...949eb1`, chain 10)
- UnnamedContract (`0x248f43...619cd5`, chain 10)
- UnnamedContract (`0x2811b3...bac642`, chain 10)
- UnnamedContract (`0x3945ce...8b8bf5`, chain 10)
- UnnamedContract (`0x3edfac...f90bad`, chain 10)
- UnnamedContract (`0x4eafef...125cb7`, chain 10)
- UnnamedContract (`0x786da1...ace378`, chain 10)
- UnnamedContract (`0x8a9229...292119`, chain 10)
- UnnamedContract (`0xd733e5...03f0d2`, chain 10)
- UnnamedContract (`0x248f43...619cd5`, chain 56)
- UnnamedContract (`0x2811b3...bac642`, chain 56)
- UnnamedContract (`0x4973b5...1da02e`, chain 56)
- UnnamedContract (`0x4bab31...d9bafa`, chain 56)
- UnnamedContract (`0x63a642...95d6b4`, chain 56)
- UnnamedContract (`0x64fcc3...5d4e51`, chain 56)
- UnnamedContract (`0x8a9229...292119`, chain 56)
- UnnamedContract (`0xb385af...ea2ce1`, chain 56)
- UnnamedContract (`0xd733e5...03f0d2`, chain 56)
- UnnamedContract (`0x100f22...c9fa79`, chain 146)
- UnnamedContract (`0x1f98f0...22f88b`, chain 146)
- UnnamedContract (`0x332266...e67703`, chain 146)
- UnnamedContract (`0x55076e...b986f8`, chain 146)
- UnnamedContract (`0x8f2ce1...02c3b8`, chain 146)
- UnnamedContract (`0x938d49...6707c1`, chain 146)
- UnnamedContract (`0xb827e9...6af40b`, chain 146)
- UnnamedContract (`0xbe6271...560bff`, chain 146)
- UnnamedContract (`0xcb671f...e9d3fb`, chain 146)
- UnnamedContract (`0x35726a...59f46d`, chain 999)
- UnnamedContract (`0x6bd93e...47bbf9`, chain 999)
- UnnamedContract (`0x765883...81cce1`, chain 999)
- UnnamedContract (`0x8a9229...292119`, chain 999)
- UnnamedContract (`0xb827e9...6af40b`, chain 999)
- UnnamedContract (`0xba4f8e...b66ccd`, chain 999)
- UnnamedContract (`0xd187cb...52d4a5`, chain 999)
- UnnamedContract (`0x22af2e...95f69c`, chain 8453)
- UnnamedContract (`0x4973b5...1da02e`, chain 8453)
- UnnamedContract (`0x63d5dd...29eade`, chain 8453)
- UnnamedContract (`0x64fcc3...5d4e51`, chain 8453)
- UnnamedContract (`0x6a8922...2b478b`, chain 8453)
- UnnamedContract (`0x786da1...ace378`, chain 8453)
- UnnamedContract (`0xa2c9da...031ac1`, chain 8453)
- UnnamedContract (`0xa9c6a0...d9c3e6`, chain 8453)
- UnnamedContract (`0xbb024f...adc7a0`, chain 8453)
- UnnamedContract (`0xc03309...e28e6d`, chain 8453)
- UnnamedContract (`0xdbe5b6...aa8d84`, chain 8453)
- UnnamedContract (`0x38b9b4...21786c`, chain 42161)
- UnnamedContract (`0x4973b5...1da02e`, chain 42161)
- UnnamedContract (`0x4bab31...d9bafa`, chain 42161)
- UnnamedContract (`0x4eafef...125cb7`, chain 42161)
- UnnamedContract (`0x51c002...700f20`, chain 42161)
- UnnamedContract (`0x64fcc3...5d4e51`, chain 42161)
- UnnamedContract (`0x7256ef...961aac`, chain 42161)
- UnnamedContract (`0x786da1...ace378`, chain 42161)
- UnnamedContract (`0x9055eb...1c62d4`, chain 42161)
- UnnamedContract (`0xa355dd...c560be`, chain 42161)
- AccessManager (`0x071350...6ce0a0`, chain 999)
- GnosisSafeProxy (`0xf8576b...156470`, chain 10)
- GnosisSafeProxy (`0x589269...1db6c2`, chain 146)
- GnosisSafeProxy (`0xe59d75...02cc7c`, chain 8453)
- GnosisSafeProxy (`0x417c59...8fe381`, chain 42161)
- Proxy (`0xdbbfc0...2de9e7`, chain 1)
- RouterUtil (`0xf19eaa...2b5420`, chain 999)

## Contract Surface Quality

- Indexed contracts: 10; live-surface contracts included: 10 (7 live, 3 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 73/121 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 1/7 (14.3%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 73 own, 34 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 0 discovered implementations excluded (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 7
- Deployed-live implementations: 73 of 107 unique (rest dead/inactive/uninitialized)
- All verified address-book-owned implementations audited (incl. non-live): 1/7
- Verified + Unaudited implementations: 6
- Verified by bytecode match: 0
- Unverified implementations: 66
- Unique implementations: 107
- Raw deployments: 107
- Audits discovered: 7 (7 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 1
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2025-12 (fresh)
- Audit staleness (calendar age): 2 fresh, 0 aging, 2 stale, 3 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 1 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| unknown | Tier 2 | 1 | 14.3% | 2024-03 |

## Contract Surface

### ✅ Verified + Audited (1)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| RouterUtil | adapter | project_anchor | own_supporting | 0 | hyperliquid | unit-256467 | `0xf19eaa...2b5420` | ✅ Audited |

### ⚠️ Verified + Unaudited (9)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| AccessManager | governance | project_anchor | own_supporting | 0 | hyperliquid | unit-256459 | `0x071350...6ce0a0` | ⚠️ Unaudited |
| CampaignManager | core_logic | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 1 | base | unit-256473 | `0x392fca...dd2954` | ⚠️ Unaudited |
| GnosisSafe | governance | project_anchor | own_supporting | 1 | ethereum | unit-256469 | `0xdbbfc0...2de9e7` | ⚠️ Unaudited |
| GnosisSafeL2 | governance | project_anchor | own_supporting | 1 | optimism | unit-256470 | `0xf8576b...156470` | ⚠️ Unaudited |
| GnosisSafeL2 | governance | project_anchor | own_supporting | 1 | base | unit-256474 | `0xe59d75...02cc7c` | ⚠️ Unaudited |
| GnosisSafeL2 | governance | project_anchor | own_supporting | 1 | arbitrum | unit-256472 | `0x417c59...8fe381` | ⚠️ Unaudited |
| GnosisSafeProxy | governance | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-256384 | `0xe59d75...02cc7c` | ⚠️ Unaudited |
| SafeL2 | unknown | project_anchor | own_supporting | 1 | sonic | unit-256471 | `0x589269...1db6c2` | ⚠️ Unaudited |
| SpectraWrappedBedrockUniETH | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 1 | ethereum | unit-256468 | `0x248f43...619cd5` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (97)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-256354 | `0x100f22...c9fa79` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-256355 | `0x16b282...e1f6b8` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-256356 | `0x1f98f0...22f88b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-256357 | `0x22af2e...95f69c` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-256358 | `0x2811b3...bac642` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-256359 | `0x332266...e67703` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-256360 | `0x46500e...ca7e9f` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-256361 | `0x4973b5...1da02e` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-256362 | `0x4bab31...d9bafa` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-256363 | `0x55076e...b986f8` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-256365 | `0x63a642...95d6b4` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-256366 | `0x63d5dd...29eade` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-256367 | `0x64fcc3...5d4e51` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-256368 | `0x6a8922...2b478b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-256370 | `0x7ea309...bd1852` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-256371 | `0x8a9229...292119` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-256373 | `0x938d49...6707c1` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-256374 | `0xa9c6a0...d9c3e6` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-256375 | `0xb385af...ea2ce1` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-256376 | `0xb827e9...6af40b` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-256377 | `0xbb024f...adc7a0` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-256378 | `0xbe6271...560bff` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-256379 | `0xc03309...e28e6d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-256381 | `0xd68839...2b28a3` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-256382 | `0xd733e5...03f0d2` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-256383 | `0xdbe5b6...aa8d84` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-256385 | `0xe9888a...9b696c` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-256386 | `0x0458c0...949eb1` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-256387 | `0x248f43...619cd5` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-256388 | `0x2811b3...bac642` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-256389 | `0x3945ce...8b8bf5` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-256390 | `0x3edfac...f90bad` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-256391 | `0x4eafef...125cb7` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-256392 | `0x786da1...ace378` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-256393 | `0x8a9229...292119` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-256394 | `0xd733e5...03f0d2` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | unit-256416 | `0x09176e...9682b7` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | unit-256418 | `0x22cdf5...9c2701` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-256419 | `0x248f43...619cd5` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-256420 | `0x2811b3...bac642` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-256422 | `0x4973b5...1da02e` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-256423 | `0x4bab31...d9bafa` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-256425 | `0x63a642...95d6b4` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-256426 | `0x64fcc3...5d4e51` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | unit-256427 | `0x6cba82...e4dd05` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-256428 | `0x8a9229...292119` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | unit-256429 | `0x90f584...efe38a` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-256431 | `0xb385af...ea2ce1` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-256432 | `0xd733e5...03f0d2` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | sonic | unit-256395 | `0x100f22...c9fa79` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | sonic | unit-256396 | `0x1f98f0...22f88b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | sonic | unit-256397 | `0x332266...e67703` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | sonic | unit-256398 | `0x392fca...dd2954` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | sonic | unit-256399 | `0x55076e...b986f8` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | sonic | unit-256400 | `0x8f2ce1...02c3b8` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | sonic | unit-256401 | `0x938d49...6707c1` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | sonic | unit-256402 | `0xb827e9...6af40b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | sonic | unit-256403 | `0xbe6271...560bff` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | sonic | unit-256404 | `0xcb671f...e9d3fb` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | hyperliquid | unit-256460 | `0x35726a...59f46d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | hyperliquid | unit-256461 | `0x6bd93e...47bbf9` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | hyperliquid | unit-256462 | `0x765883...81cce1` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | hyperliquid | unit-256463 | `0x8a9229...292119` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | hyperliquid | unit-256464 | `0xb827e9...6af40b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | hyperliquid | unit-256465 | `0xba4f8e...b66ccd` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | hyperliquid | unit-256466 | `0xd187cb...52d4a5` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | base | unit-256433 | `0x09176e...9682b7` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | base | unit-256434 | `0x15e4f4...303bc7` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-256435 | `0x22af2e...95f69c` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | base | unit-256436 | `0x22cdf5...9c2701` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-256439 | `0x4973b5...1da02e` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-256441 | `0x63d5dd...29eade` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-256442 | `0x64fcc3...5d4e51` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-256443 | `0x6a8922...2b478b` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | base | unit-256444 | `0x6cba82...e4dd05` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-256446 | `0x786da1...ace378` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | base | unit-256447 | `0x9055eb...1c62d4` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | base | unit-256448 | `0x90f584...efe38a` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | base | unit-256449 | `0x938d49...6707c1` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-256450 | `0xa2c9da...031ac1` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | base | unit-256451 | `0xa3eea1...ca445d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-256452 | `0xa9c6a0...d9c3e6` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | base | unit-256454 | `0xb385af...ea2ce1` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-256456 | `0xbb024f...adc7a0` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-256457 | `0xc03309...e28e6d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-256458 | `0xdbe5b6...aa8d84` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-256405 | `0x38b9b4...21786c` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-256406 | `0x4973b5...1da02e` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-256407 | `0x4bab31...d9bafa` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-256408 | `0x4eafef...125cb7` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-256409 | `0x51c002...700f20` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-256410 | `0x64fcc3...5d4e51` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-256411 | `0x7256ef...961aac` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-256412 | `0x786da1...ace378` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-256413 | `0x9055eb...1c62d4` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-256414 | `0xa355dd...c560be` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | avalanche | unit-256415 | `0xacf339...516602` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [Spectra-security-review.pdf](https://raw.githubusercontent.com/pashov/audits/bed0a845f5af0047206ce423d111673183dba1e9/team/pdf/Spectra-security-review.pdf) | unknown | Audit | 2024-03 | stale | Direct | n/a | matched | 1 | 0 | 0 | 7 | n/a |
| [spaces/aSE6NakmHsqUzyells7H/uploads/oaRoctf29lEXC7Gi2dy6/MetaVault - Spectra Finance Audit - Sherlock.pdf](https://1608032478-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FaSE6NakmHsqUzyells7H%2Fuploads%2FoaRoctf29lEXC7Gi2dy6%2FMetaVault%20-%20Spectra%20Finance%20Audit%20-%20Sherlock.pdf) | Sherlock | Contest | 2025-09 | fresh | Direct | n/a | no match | 0 | 0 | 0 | 6 | n/a |
| [spaces/aSE6NakmHsqUzyells7H/uploads/vuzYJLjktAmIGOhM9sKL/MetaVault Bridge - Spectra Finance Audit - Sherlock.pdf](https://1608032478-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FaSE6NakmHsqUzyells7H%2Fuploads%2FvuzYJLjktAmIGOhM9sKL%2FMetaVault%20Bridge%20-%20Spectra%20Finance%20Audit%20-%20Sherlock.pdf) | Sherlock | Contest | 2025-12 | fresh | Direct | n/a | no match | 0 | 0 | 0 | 5 | n/a |
| [code4rena.com/reports/2024-02-spectra](https://code4rena.com/reports/2024-02-spectra) | Code4rena | Contest | 2024-02 | stale | Direct | n/a | no match | 0 | 0 | 0 | 7 | n/a |
| [4naly3er-report.md](https://github.com/code-423n4/2024-02-spectra/blob/main/4naly3er-report.md) | 4naly3er | Audit | n/a | unknown | Direct | n/a | no match | 0 | 0 | 0 | 7 | n/a |
| [bot-report.json](https://github.com/code-423n4/2024-02-spectra/blob/main/bot-report.json) | bot | Audit | n/a | unknown | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |
| [bot-report.md](https://github.com/code-423n4/2024-02-spectra/blob/main/bot-report.md) | bot | Audit | n/a | unknown | Direct | n/a | no match | 0 | 0 | 0 | 7 | n/a |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [11679] Spectra-security-review.pdf — matched: No reason recorded
- [11680] spaces/aSE6NakmHsqUzyells7H/uploads/oaRoctf29lEXC7Gi2dy6/MetaVault - Spectra Finance Audit - Sherlock.pdf — no match: No reason recorded
- [11681] spaces/aSE6NakmHsqUzyells7H/uploads/vuzYJLjktAmIGOhM9sKL/MetaVault Bridge - Spectra Finance Audit - Sherlock.pdf — no match: No reason recorded
- [11682] code4rena.com/reports/2024-02-spectra — no match: No reason recorded
- [11684] 4naly3er-report.md — no match: No reason recorded
- [11685] bot-report.json — no match: The provided text is a large JSON object containing hashes and metadata, not an audit report. No contract names, scope sections, or audit dates are identifiable.
- [11686] bot-report.md — no match: No reason recorded

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| Spectra-security-review.pdf | Commands | unmatched — not counted | — | — | no |
| Spectra-security-review.pdf | Constants | unmatched — not counted | — | — | no |
| Spectra-security-review.pdf | CurvePoolUtil | unmatched — not counted | — | — | no |
| Spectra-security-review.pdf | Dispatcher | unmatched — not counted | — | — | no |
| Spectra-security-review.pdf | Factory | unmatched — not counted | — | — | no |
| Spectra-security-review.pdf | Registry | unmatched — not counted | — | — | no |
| Spectra-security-review.pdf | Router | unmatched — not counted | — | — | no |
| Spectra-security-review.pdf | RouterUtil | own contract | RouterUtil (selected) `0xf19eaa...2b5420` — deployed 2025-06-21 18:06:00+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| spaces/aSE6NakmHsqUzyells7H/uploads/oaRoctf29lEXC7Gi2dy6/MetaVault - Spectra Finance Audit - Sherlock.pdf | CurveLiquidityZap | unmatched — not counted | — | — | no |
| spaces/aSE6NakmHsqUzyells7H/uploads/oaRoctf29lEXC7Gi2dy6/MetaVault - Spectra Finance Audit - Sherlock.pdf | MetaVaultWrapper | unmatched — not counted | — | — | no |
| spaces/aSE6NakmHsqUzyells7H/uploads/oaRoctf29lEXC7Gi2dy6/MetaVault - Spectra Finance Audit - Sherlock.pdf | MetavaultsRegistry | unmatched — not counted | — | — | no |
| spaces/aSE6NakmHsqUzyells7H/uploads/oaRoctf29lEXC7Gi2dy6/MetaVault - Spectra Finance Audit - Sherlock.pdf | PTZap | unmatched — not counted | — | — | no |
| spaces/aSE6NakmHsqUzyells7H/uploads/oaRoctf29lEXC7Gi2dy6/MetaVault - Spectra Finance Audit - Sherlock.pdf | PoolGatekeeper | unmatched — not counted | — | — | no |
| spaces/aSE6NakmHsqUzyells7H/uploads/oaRoctf29lEXC7Gi2dy6/MetaVault - Spectra Finance Audit - Sherlock.pdf | PrincipalTokenGatekeeper | unmatched — not counted | — | — | no |
| spaces/aSE6NakmHsqUzyells7H/uploads/vuzYJLjktAmIGOhM9sKL/MetaVault Bridge - Spectra Finance Audit - Sherlock.pdf | BaseBridgeInterface | unmatched — not counted | — | — | no |
| spaces/aSE6NakmHsqUzyells7H/uploads/vuzYJLjktAmIGOhM9sKL/MetaVault Bridge - Spectra Finance Audit - Sherlock.pdf | BridgeCCTP | unmatched — not counted | — | — | no |
| spaces/aSE6NakmHsqUzyells7H/uploads/vuzYJLjktAmIGOhM9sKL/MetaVault Bridge - Spectra Finance Audit - Sherlock.pdf | BridgeDeBridge | unmatched — not counted | — | — | no |
| spaces/aSE6NakmHsqUzyells7H/uploads/vuzYJLjktAmIGOhM9sKL/MetaVault Bridge - Spectra Finance Audit - Sherlock.pdf | BridgeGatekeeper | unmatched — not counted | — | — | no |
| spaces/aSE6NakmHsqUzyells7H/uploads/vuzYJLjktAmIGOhM9sKL/MetaVault Bridge - Spectra Finance Audit - Sherlock.pdf | MetavaultsRegistry | unmatched — not counted | — | — | no |
| code4rena.com/reports/2024-02-spectra | AMBeacon | unmatched — not counted | — | — | no |
| code4rena.com/reports/2024-02-spectra | AMProxyAdmin | unmatched — not counted | — | — | no |
| code4rena.com/reports/2024-02-spectra | AMTransparentUpgradeableProxy | unmatched — not counted | — | — | no |
| code4rena.com/reports/2024-02-spectra | PrincipalToken | unmatched — not counted | — | — | no |
| code4rena.com/reports/2024-02-spectra | PrincipalTokenUtil | unmatched — not counted | — | — | no |
| code4rena.com/reports/2024-02-spectra | RayMath | unmatched — not counted | — | — | no |
| code4rena.com/reports/2024-02-spectra | YieldToken | unmatched — not counted | — | — | no |
| 4naly3er-report.md | AMBeacon | unmatched — not counted | — | — | no |
| 4naly3er-report.md | AMProxyAdmin | unmatched — not counted | — | — | no |
| 4naly3er-report.md | AMTransparentUpgradeableProxy | unmatched — not counted | — | — | no |
| 4naly3er-report.md | PrincipalToken | unmatched — not counted | — | — | no |
| 4naly3er-report.md | PrincipalTokenUtil | unmatched — not counted | — | — | no |
| 4naly3er-report.md | RayMath | unmatched — not counted | — | — | no |
| 4naly3er-report.md | YieldToken | unmatched — not counted | — | — | no |
| bot-report.md | AMBeacon | unmatched — not counted | — | — | no |
| bot-report.md | AMProxyAdmin | unmatched — not counted | — | — | no |
| bot-report.md | AMTransparentUpgradeableProxy | unmatched — not counted | — | — | no |
| bot-report.md | PrincipalToken | unmatched — not counted | — | — | no |
| bot-report.md | PrincipalTokenUtil | unmatched — not counted | — | — | no |
| bot-report.md | RayMath | unmatched — not counted | — | — | no |
| bot-report.md | YieldToken | unmatched — not counted | — | — | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| hyperliquid | `0x071350...6ce0a0` | AccessManager | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 4 |
| upstream | 0 |
| standard_library | 6 |
| needs_review | 97 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 6
- Inherited remapped matches: 0
- Address-book scope dispositions: 1 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 39 unmatched
- Matched-own operational status: 1 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: low=1
- Match method counts: unique_name=1

Zero-match audit list:

- [11680] spaces/aSE6NakmHsqUzyells7H/uploads/oaRoctf29lEXC7Gi2dy6/MetaVault - Spectra Finance Audit - Sherlock.pdf
- [11681] spaces/aSE6NakmHsqUzyells7H/uploads/vuzYJLjktAmIGOhM9sKL/MetaVault Bridge - Spectra Finance Audit - Sherlock.pdf
- [11682] code4rena.com/reports/2024-02-spectra
- [11684] 4naly3er-report.md
- [11685] bot-report.json
- [11686] bot-report.md

Fork inheritance lineage and inherited audits are included when available.
