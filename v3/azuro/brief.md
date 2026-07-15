# Agentic Audit Brief: Azuro

## Export Authority

- Production state: **published scope**
- Raw selected rows: 2 across 2 audit(s)
- Eligible audit results: 3 (2 matched; 1 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `7fbef0dcf68cde7195f117d9b41f1e6d89891da495a42b57ae29b5e338972213`

## Project Overview

- Project: Azuro (`azuro`)
- Website: [https://azuro.org](https://azuro.org)
- Lifecycle: active (Tier 0, 85.7% below peak)
- Generated: 2026-07-15T18:00:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: arbitrum, base, bsc, gnosis, linea, optimism, polygon, polygon-amoy
- Contract surface: 103 unique implementations (103 raw deployments)
- Coverage basis: 0/11 confirmed own live verified implementations (0.0%); conservative 0.0% with 0 needs-review implementation(s)
- DeFi Llama TVL: $1,479,725.96
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for Azuro. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 16 contract row(s) across arbitrum, base, bsc, gnosis, linea, optimism, polygon, polygon-amoy. Structural roles: 8 unclassified, 6 core, 2 supporting. 5 row(s) use upgradeable patterns.

## Logic Topography

- Exact-run contract rows: 16
- Structural roles: unclassified (8), core (6), supporting (2)
- Contract kinds: contract (16)
- Detected standards: ownable (3), erc1967proxy (2)
- Frameworks: openzeppelin (5), openzeppelin-upgradeable (4), uniswap (3)
- Upgradeable-pattern rows: 5

## Fork Analysis

0 of 92 contracts are derived from known codebases. 92 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0x420000...000006`, chain 10)
- UnnamedContract (`0xed5760...a877e1`, chain 56)
- UnnamedContract (`0x0223ff...6f1500`, chain 100)
- UnnamedContract (`0x043a70...5f8448`, chain 100)
- UnnamedContract (`0x0c2f50...7f6dbd`, chain 100)
- UnnamedContract (`0x0e00e6...e448f2`, chain 100)
- UnnamedContract (`0x12d5e6...f5a1ef`, chain 100)
- UnnamedContract (`0x14564e...5393bb`, chain 100)
- UnnamedContract (`0x204e73...c843ed`, chain 100)
- UnnamedContract (`0x25de22...cdc891`, chain 100)
- UnnamedContract (`0x319c39...5ea8f4`, chain 100)
- UnnamedContract (`0x3a1c66...080251`, chain 100)
- UnnamedContract (`0x3ebf1a...4dd94e`, chain 100)
- UnnamedContract (`0x40eb85...4d8b32`, chain 100)
- UnnamedContract (`0x67fca8...a56d17`, chain 100)
- UnnamedContract (`0x687627...42043a`, chain 100)
- UnnamedContract (`0x7c9c7b...604eaf`, chain 100)
- UnnamedContract (`0x7f3f3f...4091ef`, chain 100)
- UnnamedContract (`0x8ea1a7...619c03`, chain 100)
- UnnamedContract (`0x936c02...93fcfe`, chain 100)
- UnnamedContract (`0x9407b5...b11413`, chain 100)
- UnnamedContract (`0x943dd8...7d2172`, chain 100)
- UnnamedContract (`0xa3a1b4...2858bf`, chain 100)
- UnnamedContract (`0xb2eea9...d2fda2`, chain 100)
- UnnamedContract (`0xbdbf71...823fc0`, chain 100)
- UnnamedContract (`0xc6c6b2...2def08`, chain 100)
- UnnamedContract (`0xd7cd93...999089`, chain 100)
- UnnamedContract (`0xdbc3be...3b0f7c`, chain 100)
- UnnamedContract (`0xeb7cda...1d97e7`, chain 100)
- UnnamedContract (`0xf4cfe9...d1f629`, chain 100)
- UnnamedContract (`0xf8e7f2...2e0150`, chain 100)
- UnnamedContract (`0x0dee52...360a00`, chain 137)
- UnnamedContract (`0x0fa7fb...5de1b8`, chain 137)
- UnnamedContract (`0x19373b...b0a125`, chain 137)
- UnnamedContract (`0x1a0612...e69d2c`, chain 137)
- UnnamedContract (`0x3a3470...aeabd9`, chain 137)
- UnnamedContract (`0x6a5410...54fe9f`, chain 137)
- UnnamedContract (`0x7043e4...c11b36`, chain 137)
- UnnamedContract (`0x76c3b2...3591c2`, chain 137)
- UnnamedContract (`0x795b48...6dce92`, chain 137)
- UnnamedContract (`0x7a1c3f...b7265b`, chain 137)
- UnnamedContract (`0x8ed729...f01ed7`, chain 137)
- UnnamedContract (`0x92a4e8...e07613`, chain 137)
- UnnamedContract (`0x97d26f...dea178`, chain 137)
- UnnamedContract (`0xa40f8d...5bfcf7`, chain 137)
- UnnamedContract (`0xc38955...cdcd04`, chain 137)
- UnnamedContract (`0xc6bb81...40207d`, chain 137)
- UnnamedContract (`0xde3e9a...a0203d`, chain 137)
- UnnamedContract (`0xf9548b...972ac7`, chain 137)
- UnnamedContract (`0x17fee9...c9bfc3`, chain 8453)
- UnnamedContract (`0x1df819...ff9977`, chain 8453)
- UnnamedContract (`0x1ed736...63af87`, chain 8453)
- UnnamedContract (`0x2c5dbf...45a39f`, chain 8453)
- UnnamedContract (`0x4731bb...e382ed`, chain 8453)
- UnnamedContract (`0x582570...f974eb`, chain 8453)
- UnnamedContract (`0x6e1784...3cacb9`, chain 8453)
- UnnamedContract (`0x9ce099...07314e`, chain 8453)
- UnnamedContract (`0xba390f...6c7a0c`, chain 8453)
- UnnamedContract (`0xe9f7e1...ee8537`, chain 8453)
- UnnamedContract (`0xf22e9e...237db1`, chain 8453)
- UnnamedContract (`0xf32840...b7df90`, chain 8453)
- UnnamedContract (`0xf40cf1...f4640d`, chain 8453)
- UnnamedContract (`0xf5a6b7...6aa3fc`, chain 8453)
- UnnamedContract (`0x0a6294...1dce12`, chain 42161)
- UnnamedContract (`0x20513b...e90038`, chain 42161)
- UnnamedContract (`0x23724e...fd9a1a`, chain 42161)
- UnnamedContract (`0x3d25be...0a44d0`, chain 42161)
- UnnamedContract (`0x526f1f...fb9d75`, chain 42161)
- UnnamedContract (`0x57c762...5e9470`, chain 42161)
- UnnamedContract (`0x752735...1039ef`, chain 42161)
- UnnamedContract (`0x8a4be2...c859bf`, chain 42161)
- UnnamedContract (`0xa35ad8...c05027`, chain 42161)
- UnnamedContract (`0xa938ff...c9b498`, chain 42161)
- UnnamedContract (`0xb66773...87bd28`, chain 42161)
- UnnamedContract (`0xe40fde...42ed6f`, chain 42161)
- UnnamedContract (`0x0e64f9...605327`, chain 59144)
- UnnamedContract (`0x3e00fa...4dc9de`, chain 59144)
- UnnamedContract (`0x401858...eddc3c`, chain 59144)
- UnnamedContract (`0x4d19c9...84ae9b`, chain 59144)
- UnnamedContract (`0x761376...d135bb`, chain 59144)
- UnnamedContract (`0x85bb5b...8390af`, chain 59144)
- UnnamedContract (`0xb9e4cb...097f09`, chain 59144)
- UnnamedContract (`0xc11f8a...e422d3`, chain 59144)
- UnnamedContract (`0xc2f789...f363b2`, chain 59144)
- UnnamedContract (`0xc36522...bd8eee`, chain 59144)
- UnnamedContract (`0xe810af...dddd8a`, chain 59144)
- Relayer (`0x8da05c...abba9d`, chain 56)
- TransparentUpgradeableProxy (`0xfd086b...9fcbb9`, chain 42161)
- TransparentUpgradeableProxy (`0xa21943...e12b93`, chain 59144)
- UChildERC20Proxy (`0xc2132d...b58e8f`, chain 137)
- WETH9 (`0x420000...000006`, chain 8453)
- WXDAI (`0xe91d15...63a97d`, chain 100)

## Contract Surface Quality

- Indexed contracts: 16; live-surface contracts included: 16 (11 live, 5 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 97/152 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 0/11 (0.0%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 97 own, 6 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 0 discovered implementations excluded (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 8
- Deployed-live implementations: 97 of 103 unique (rest dead/inactive/uninitialized)
- All verified address-book-owned implementations audited (incl. non-live): 0/11
- Verified + Unaudited implementations: 11
- Verified by bytecode match: 0
- Unverified implementations: 86
- Unique implementations: 103
- Raw deployments: 103
- Audits discovered: 3 (3 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 2
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2025-04 (aging)
- Audit staleness (calendar age): 0 fresh, 1 aging, 1 stale, 1 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 1 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (11)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| ArbitrumExtensionV2 | adapter | project_anchor | own_supporting | 1 | arbitrum | unit-228606 | `0xfd086b...9fcbb9` | ⚠️ Unaudited |
| CashOut | unknown | project_anchor | own_supporting | 1 | polygon | unit-228603 | `0x4a2bb4...d19095` | ⚠️ Unaudited |
| CashOut | unknown | project_anchor | own_supporting | 1 | base | unit-228609 | `0x6edff2...af14be` | ⚠️ Unaudited |
| CustomBridgedToken | operational_periphery | project_anchor | own_supporting | 1 | linea | unit-228607 | `0xa21943...e12b93` | ⚠️ Unaudited |
| PayMaster | unknown | project_anchor | own_supporting | 1 | polygon | unit-228602 | `0xed5760...a877e1` | ⚠️ Unaudited |
| Relayer | unknown | project_anchor | own_supporting | 0 | bsc | unit-228549 | `0x8da05c...abba9d` | ⚠️ Unaudited |
| Relayer | unknown | project_anchor | own_supporting | 1 | polygon | unit-228605 | `0x8da05c...abba9d` | ⚠️ Unaudited |
| Relayer | unknown | project_anchor | own_supporting | 1 | base | unit-228608 | `0xd2d508...3e73b5` | ⚠️ Unaudited |
| UChildUSDT0 | token | project_anchor | own_supporting | 1 | polygon | unit-228604 | `0xc2132d...b58e8f` | ⚠️ Unaudited |
| WETH9 | token | project_anchor | own_supporting | 0 | base | unit-228578 | `0x420000...000006` | ⚠️ Unaudited |
| WXDAI | unknown | project_anchor | own_supporting | 0 | gnosis | unit-228490 | `0xe91d15...63a97d` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (92)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-228456 | `0x420000...000006` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-228551 | `0xed5760...a877e1` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | gnosis | unit-228464 | `0x0223ff...6f1500` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | gnosis | unit-228465 | `0x043a70...5f8448` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | gnosis | unit-228466 | `0x0c2f50...7f6dbd` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | gnosis | unit-228467 | `0x0e00e6...e448f2` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | gnosis | unit-228468 | `0x12d5e6...f5a1ef` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | gnosis | unit-228469 | `0x14564e...5393bb` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | gnosis | unit-228470 | `0x204e73...c843ed` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | gnosis | unit-228471 | `0x25de22...cdc891` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | gnosis | unit-228472 | `0x319c39...5ea8f4` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | gnosis | unit-228473 | `0x3a1c66...080251` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | gnosis | unit-228474 | `0x3ebf1a...4dd94e` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | gnosis | unit-228475 | `0x40eb85...4d8b32` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | gnosis | unit-228476 | `0x67fca8...a56d17` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | gnosis | unit-228477 | `0x687627...42043a` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | gnosis | unit-228478 | `0x7c9c7b...604eaf` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | gnosis | unit-228479 | `0x7f3f3f...4091ef` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | gnosis | unit-228480 | `0x8ea1a7...619c03` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | gnosis | unit-228481 | `0x936c02...93fcfe` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | gnosis | unit-228482 | `0x9407b5...b11413` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | gnosis | unit-228483 | `0x943dd8...7d2172` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | gnosis | unit-228484 | `0xa3a1b4...2858bf` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | gnosis | unit-228485 | `0xb2eea9...d2fda2` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | gnosis | unit-228486 | `0xbdbf71...823fc0` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | gnosis | unit-228487 | `0xc6c6b2...2def08` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | gnosis | unit-228488 | `0xd7cd93...999089` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | gnosis | unit-228489 | `0xdbc3be...3b0f7c` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | gnosis | unit-228491 | `0xeb7cda...1d97e7` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | gnosis | unit-228492 | `0xf4cfe9...d1f629` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | gnosis | unit-228493 | `0xf8e7f2...2e0150` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-228496 | `0x0dee52...360a00` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-228497 | `0x0fa7fb...5de1b8` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-228498 | `0x19373b...b0a125` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-228499 | `0x1a0612...e69d2c` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-228504 | `0x3a3470...aeabd9` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-228508 | `0x6a5410...54fe9f` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-228509 | `0x7043e4...c11b36` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-228510 | `0x76c3b2...3591c2` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-228511 | `0x795b48...6dce92` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-228512 | `0x7a1c3f...b7265b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-228514 | `0x8ed729...f01ed7` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-228515 | `0x92a4e8...e07613` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-228516 | `0x97d26f...dea178` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-228517 | `0xa40f8d...5bfcf7` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-228519 | `0xc38955...cdcd04` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-228520 | `0xc6bb81...40207d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-228523 | `0xde3e9a...a0203d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-228524 | `0xf9548b...972ac7` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-228570 | `0x17fee9...c9bfc3` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-228572 | `0x1df819...ff9977` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-228573 | `0x1ed736...63af87` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-228574 | `0x2c5dbf...45a39f` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-228580 | `0x4731bb...e382ed` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-228583 | `0x582570...f974eb` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-228586 | `0x6e1784...3cacb9` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-228590 | `0x9ce099...07314e` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-228592 | `0xba390f...6c7a0c` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-228595 | `0xe9f7e1...ee8537` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-228596 | `0xf22e9e...237db1` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-228597 | `0xf32840...b7df90` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-228598 | `0xf40cf1...f4640d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-228600 | `0xf5a6b7...6aa3fc` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-228525 | `0x0a6294...1dce12` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-228528 | `0x20513b...e90038` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-228529 | `0x23724e...fd9a1a` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-228530 | `0x3d25be...0a44d0` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-228531 | `0x526f1f...fb9d75` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-228532 | `0x57c762...5e9470` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-228533 | `0x752735...1039ef` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-228535 | `0x8a4be2...c859bf` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-228538 | `0xa35ad8...c05027` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-228539 | `0xa938ff...c9b498` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-228540 | `0xb66773...87bd28` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-228541 | `0xe40fde...42ed6f` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | linea | unit-228553 | `0x0e64f9...605327` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | linea | unit-228554 | `0x3e00fa...4dc9de` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | linea | unit-228555 | `0x401858...eddc3c` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | linea | unit-228556 | `0x4d19c9...84ae9b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | linea | unit-228557 | `0x761376...d135bb` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | linea | unit-228558 | `0x85bb5b...8390af` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | linea | unit-228559 | `0xb9e4cb...097f09` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | linea | unit-228560 | `0xc11f8a...e422d3` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | linea | unit-228561 | `0xc2f789...f363b2` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | linea | unit-228562 | `0xc36522...bd8eee` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | linea | unit-228563 | `0xe810af...dddd8a` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | polygon-amoy | unit-228564 | `0x668f94...3b4317` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | polygon-amoy | unit-228565 | `0x86e04a...8b8fa1` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | polygon-amoy | unit-228566 | `0xaf1836...3a404d` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | polygon-amoy | unit-228567 | `0xc91534...60b9c4` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | polygon-amoy | unit-228568 | `0xdf7199...3d0295` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | polygon-amoy | unit-228569 | `0xefc8b0...923b18` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [gem.azuro.org/hub/blockchains/audits](https://gem.azuro.org/hub/blockchains/audits) | unknown | Audit | 2025-04 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 1 | medium |
| [Azuro Security Analysis by Pessimistic (3).pdf](https://github.com/Azuro-protocol/Bug-Bounty/blob/main/audit-reports/Azuro%20Security%20Analysis%20by%20Pessimistic%20(3).pdf) | Pessimistic | Audit | 2022-04 | stale | Direct | contract_name | matched | 1 | 0 | 0 | 3 | high |
| [azuro-v1-audit-report-prelim.pdf](https://github.com/Azuro-protocol/Bug-Bounty/blob/main/audit-reports/azuro-v1-audit-report-prelim.pdf) | Unknown | Audit | n/a | unknown | Direct | contract_name | matched | 1 | 0 | 0 | 7 | high |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [3481] gem.azuro.org/hub/blockchains/audits — no match: Only PayMaster contract explicitly mentioned in scope. Audit date inferred from 'April 2025' as end of month.
- [14913] Azuro Security Analysis by Pessimistic (3).pdf — matched: Contracts identified from manual analysis sections: Core, LP, AzuroBet, LiquidityTree. Audit date from cover page.
- [14914] azuro-v1-audit-report-prelim.pdf — matched: All contracts and interfaces listed in the scope section of the report.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| gem.azuro.org/hub/blockchains/audits | PayMaster | ambiguous — not counted | 0x3ebf1a… (alternative) `0x3ebf1a...4dd94e` — deployed 2025-04-24 17:39:05+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0xed5760...a877e1` — deployed 2025-04-24 14:23:35+03 — liveness: live (current_address_book_code)<br>0xed5760… (alternative) `0xed5760...a877e1` — deployed 2025-12-22 12:35:25+03 — liveness: live (current_address_book_code)<br>0x943dd8… (alternative) `0x943dd8...7d2172` — deployed 2025-04-18 22:34:50+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| Azuro Security Analysis by Pessimistic (3).pdf | Core | own contract | 0x319c39… (selected) `0x319c39...5ea8f4` — deployed 2023-08-28 12:16:45+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Azuro Security Analysis by Pessimistic (3).pdf | LP | ambiguous — not counted | 0x795b48… (alternative) `0x795b48...6dce92` — deployed 2023-01-27 00:41:06+03 — liveness: live (current_address_book_code)<br>0x1ed736… (alternative) `0x1ed736...63af87` — liveness: live (current_address_book_code)<br>0xeb7cda… (alternative) `0xeb7cda...1d97e7` — liveness: live (current_address_book_code)<br>0xf22e9e… (alternative) `0xf22e9e...237db1` — liveness: live (current_address_book_code)<br>0xc36522… (alternative) `0xc36522...bd8eee` — liveness: live (current_address_book_code)<br>0x0fa7fb… (alternative) `0x0fa7fb...5de1b8` — liveness: live (current_address_book_code)<br>0x57c762… (alternative) `0x57c762...5e9470` — liveness: live (current_address_book_code)<br>0x7043e4… (alternative) `0x7043e4...c11b36` — liveness: live (current_address_book_code)<br>0x204e73… (alternative) `0x204e73...c843ed` — liveness: live (current_address_book_code)<br>0x17fee9… (alternative) `0x17fee9...c9bfc3` — deployed 2025-01-17 12:19:13+03 — liveness: live (current_address_book_code)<br>0x0c2f50… (alternative) `0x0c2f50...7f6dbd` — liveness: live (current_address_book_code)<br>0x20513b… (alternative) `0x20513b...e90038` — liveness: live (current_address_book_code)<br>0x687627… (alternative) `0x687627...42043a` — deployed 2023-01-18 15:24:05+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| Azuro Security Analysis by Pessimistic (3).pdf | AzuroBet | ambiguous — not counted | 0x8ed729… (alternative) `0x8ed729...f01ed7` — liveness: live (current_address_book_code)<br>0xa3a1b4… (alternative) `0xa3a1b4...2858bf` — liveness: live (current_address_book_code)<br>0xbdbf71… (alternative) `0xbdbf71...823fc0` — deployed 2023-01-18 15:23:25+03 — liveness: live (current_address_book_code)<br>0xd7cd93… (alternative) `0xd7cd93...999089` — liveness: live (current_address_book_code)<br>0xb66773… (alternative) `0xb66773...87bd28` — liveness: live (current_address_book_code)<br>0xf32840… (alternative) `0xf32840...b7df90` — liveness: live (current_address_book_code)<br>0xb9e4cb… (alternative) `0xb9e4cb...097f09` — liveness: live (current_address_book_code)<br>0x9407b5… (alternative) `0x9407b5...b11413` — deployed 2025-04-18 22:33:25+03 — liveness: live (current_address_book_code)<br>0x2c5dbf… (alternative) `0x2c5dbf...45a39f` — deployed 2025-01-17 12:19:03+03 — liveness: live (current_address_book_code)<br>0xa35ad8… (alternative) `0xa35ad8...c05027` — liveness: live (current_address_book_code)<br>0x7a1c3f… (alternative) `0x7a1c3f...b7265b` — liveness: live (current_address_book_code)<br>0xc2f789… (alternative) `0xc2f789...f363b2` — liveness: live (current_address_book_code)<br>0x9ce099… (alternative) `0x9ce099...07314e` — liveness: live (current_address_book_code)<br>0x97d26f… (alternative) `0x97d26f...dea178` — deployed 2023-01-27 00:39:16+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| Azuro Security Analysis by Pessimistic (3).pdf | LiquidityTree | unmatched — not counted | — | mentioned as contract in scope | no |
| azuro-v1-audit-report-prelim.pdf | AzuroBet | ambiguous — not counted | 0x8ed729… (alternative) `0x8ed729...f01ed7` — liveness: live (current_address_book_code)<br>0xa3a1b4… (alternative) `0xa3a1b4...2858bf` — liveness: live (current_address_book_code)<br>0xbdbf71… (alternative) `0xbdbf71...823fc0` — deployed 2023-01-18 15:23:25+03 — liveness: live (current_address_book_code)<br>0xd7cd93… (alternative) `0xd7cd93...999089` — liveness: live (current_address_book_code)<br>0xb66773… (alternative) `0xb66773...87bd28` — liveness: live (current_address_book_code)<br>0xf32840… (alternative) `0xf32840...b7df90` — liveness: live (current_address_book_code)<br>0xb9e4cb… (alternative) `0xb9e4cb...097f09` — liveness: live (current_address_book_code)<br>0x9407b5… (alternative) `0x9407b5...b11413` — deployed 2025-04-18 22:33:25+03 — liveness: live (current_address_book_code)<br>0x2c5dbf… (alternative) `0x2c5dbf...45a39f` — deployed 2025-01-17 12:19:03+03 — liveness: live (current_address_book_code)<br>0xa35ad8… (alternative) `0xa35ad8...c05027` — liveness: live (current_address_book_code)<br>0x7a1c3f… (alternative) `0x7a1c3f...b7265b` — liveness: live (current_address_book_code)<br>0xc2f789… (alternative) `0xc2f789...f363b2` — liveness: live (current_address_book_code)<br>0x9ce099… (alternative) `0x9ce099...07314e` — liveness: live (current_address_book_code)<br>0x97d26f… (alternative) `0x97d26f...dea178` — deployed 2023-01-27 00:39:16+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| azuro-v1-audit-report-prelim.pdf | Core | own contract | 0x319c39… (selected) `0x319c39...5ea8f4` — deployed 2023-08-28 12:16:45+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| azuro-v1-audit-report-prelim.pdf | LP | ambiguous — not counted | 0x795b48… (alternative) `0x795b48...6dce92` — deployed 2023-01-27 00:41:06+03 — liveness: live (current_address_book_code)<br>0x1ed736… (alternative) `0x1ed736...63af87` — liveness: live (current_address_book_code)<br>0xeb7cda… (alternative) `0xeb7cda...1d97e7` — liveness: live (current_address_book_code)<br>0xf22e9e… (alternative) `0xf22e9e...237db1` — liveness: live (current_address_book_code)<br>0xc36522… (alternative) `0xc36522...bd8eee` — liveness: live (current_address_book_code)<br>0x0fa7fb… (alternative) `0x0fa7fb...5de1b8` — liveness: live (current_address_book_code)<br>0x57c762… (alternative) `0x57c762...5e9470` — liveness: live (current_address_book_code)<br>0x7043e4… (alternative) `0x7043e4...c11b36` — liveness: live (current_address_book_code)<br>0x204e73… (alternative) `0x204e73...c843ed` — liveness: live (current_address_book_code)<br>0x17fee9… (alternative) `0x17fee9...c9bfc3` — deployed 2025-01-17 12:19:13+03 — liveness: live (current_address_book_code)<br>0x0c2f50… (alternative) `0x0c2f50...7f6dbd` — liveness: live (current_address_book_code)<br>0x20513b… (alternative) `0x20513b...e90038` — liveness: live (current_address_book_code)<br>0x687627… (alternative) `0x687627...42043a` — deployed 2023-01-18 15:24:05+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| azuro-v1-audit-report-prelim.pdf | Math | unmatched — not counted | — | listed in scope | no |
| azuro-v1-audit-report-prelim.pdf | LiquidityTree | unmatched — not counted | — | listed in scope | no |
| azuro-v1-audit-report-prelim.pdf | IAzuroBet | unmatched — not counted | — | listed in scope | no |
| azuro-v1-audit-report-prelim.pdf | ICore | unmatched — not counted | — | listed in scope | no |
| azuro-v1-audit-report-prelim.pdf | ILP | unmatched — not counted | — | listed in scope | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| bsc | `0x8da05c...abba9d` | Relayer | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 1 |
| upstream | 3 |
| standard_library | 7 |
| needs_review | 92 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Address-book scope dispositions: 2 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 5 ambiguous, 6 unmatched
- Matched-own operational status: 2 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=2, medium=1
- Match method counts: unique_name=2

Zero-match audit list:

- [3481] gem.azuro.org/hub/blockchains/audits

Fork inheritance lineage and inherited audits are included when available.
