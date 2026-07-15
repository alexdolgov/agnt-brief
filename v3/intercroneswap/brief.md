# Agentic Audit Brief: Intercroneswap

## Export Authority

- Production state: **blocked no audit authority**
- Raw selected rows: 0 across 0 audit(s)
- Eligible audit results: 0 (0 matched; 0 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `7fbef0dcf68cde7195f117d9b41f1e6d89891da495a42b57ae29b5e338972213`

## Project Overview

- Project: Intercroneswap (`intercroneswap`)
- Website: [http://www.intercroneswap.com](http://www.intercroneswap.com)
- Lifecycle: unknown
- Generated: 2026-07-15T18:00:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: bittorrent, bsc, chain-11111
- Contract surface: 101 unique implementations (101 raw deployments)
- Coverage basis: 0/35 confirmed own live verified implementations (0.0%); conservative 0.0% with 0 needs-review implementation(s)
- DeFi Llama TVL: $255,337.16
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for Intercroneswap. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 35 contract row(s) across bittorrent, bsc, chain-11111. Structural roles: 34 unclassified, 1 core. No upgradeable pattern was identified in these rows.

## Logic Topography

- Exact-run contract rows: 35
- Structural roles: unclassified (34), core (1)
- Contract kinds: contract (35)
- Detected standards: none
- Frameworks: openzeppelin (1)
- Upgradeable-pattern rows: 0

## Fork Analysis

0 of 45 contracts are derived from known codebases. 45 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- {"pair":"PRUN-BNB","days":101} (`0xcf3299...5aed03`, chain 199)
- {"pair":"PRUN-BTT","days":101} (`0x267267...25695f`, chain 199)
- {"pair":"PRUN-ETH","days":101} (`0xe81475...c2bf89`, chain 199)
- {"pair":"PRUN-ICRT","days":101} (`0x1a5d95...e6b685`, chain 199)
- {"pair":"PRUN-PMAN","days":101} (`0xe501d9...4af141`, chain 199)
- {"pair":"PRUN-SHIT","days":101} (`0xcce6f4...6034f4`, chain 199)
- {"pair":"PRUN-TRX","days":101} (`0x6086a0...561db7`, chain 199)
- {"pair":"PRUN-USDTB","days":101} (`0x15df5c...8d38fa`, chain 199)
- {"pair":"PRUN-USDTT","days":101} (`0xfa1344...f71e35`, chain 199)
- {"pair":"PRUN-WBTCE","days":101} (`0xee3368...4f70ca`, chain 199)
- BNB-ADA (`0x590052...5d2de3`, chain 56)
- CHT-BNB (`0x437862...eac026`, chain 56)
- CHT-BTCB (`0xb556d4...1e62f5`, chain 56)
- CHT-ETH (`0x06d6e8...7ec5d0`, chain 56)
- CHT-ICR (`0x234d38...afc0e4`, chain 56)
- CHT-USDT (`0xc4c151...b11fb6`, chain 56)
- ICR-ADA (`0x9e3faa...205b24`, chain 56)
- ICR-ADA (`0xec8e47...554c01`, chain 56)
- ICR-AVAX (`0x0d6c6a...f5ea52`, chain 56)
- ICR-BABYDOGE (`0x55966b...8b2ae3`, chain 56)
- ICR-BFG (`0xd307b2...b7a2f5`, chain 56)
- ICR-BNB (`0x63e557...57d0f7`, chain 56)
- ICR-BNB (`0x9c1f12...276ec4`, chain 56)
- ICR-BSW (`0xbd0a94...84fe55`, chain 56)
- ICR-BUSD (`0xf4088f...5922cd`, chain 56)
- ICR-BUSD (`0xf62f29...8bec42`, chain 56)
- ICR-CAKE (`0x21da49...342db0`, chain 56)
- ICR-CAKE (`0x739c41...3ecf2d`, chain 56)
- ICR-DOT (`0x5e01e4...a98ce8`, chain 56)
- ICR-DOT (`0x628e48...ad2caa`, chain 56)
- ICR-ETH (`0x3734e8...c7c78a`, chain 56)
- ICR-ETH (`0xe3b9c3...b5dab4`, chain 56)
- ICR-JM (`0x5d6263...e34980`, chain 56)
- ICR-MX (`0xe68c66...53edf2`, chain 56)
- ICR-TONCOIN (`0x78580f...2a7817`, chain 56)
- ICR-USDD (`0x2cca36...ef9fbf`, chain 56)
- ICR-USDT (`0x307dfc...ef656b`, chain 56)
- PLZ-BNB (`0x386925...22ef17`, chain 56)
- PLZ-BTCB (`0x607f20...707fff`, chain 56)
- PLZ-BUSD (`0x66cbd6...407db6`, chain 56)
- PLZ-ETH (`0xde577f...580b6a`, chain 56)
- PLZ-ICR (`0x44c3d9...73b8b1`, chain 56)
- PLZ-USDT (`0xdf22ea...c57709`, chain 56)
- StakingRewards (`0x0484b7...35b38d`, chain 56)
- wPUT-ETH (`0x11d36a...d2d6d6`, chain 56)

## Contract Surface Quality

- Indexed contracts: 35; live-surface contracts included: 35 (35 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 45/96 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 0/35 (0.0%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 45 own, 51 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 5 discovered implementations excluded (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 0
- Deployed-live implementations: 45 of 101 unique (rest dead/inactive/uninitialized)
- All verified address-book-owned implementations audited (incl. non-live): 0/35
- Verified + Unaudited implementations: 35
- Verified by bytecode match: 0
- Unverified implementations: 10
- Unique implementations: 101
- Raw deployments: 101
- Audits discovered: 0 (0 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: n/a (unknown)
- Audit staleness (calendar age): 0 fresh, 0 aging, 0 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (40)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| BNB-ADA | unknown | project_anchor | own_supporting | 0 | bsc | unit-389546 | `0x590052...5d2de3` | ⚠️ Unaudited |
| CHT-BNB | unknown | project_anchor | own_supporting | 0 | bsc | unit-389542 | `0x437862...eac026` | ⚠️ Unaudited |
| CHT-BTCB | unknown | project_anchor | own_supporting | 0 | bsc | unit-389562 | `0xb556d4...1e62f5` | ⚠️ Unaudited |
| CHT-ETH | unknown | project_anchor | own_supporting | 0 | bsc | unit-389532 | `0x06d6e8...7ec5d0` | ⚠️ Unaudited |
| CHT-ICR | unknown | project_anchor | own_supporting | 0 | bsc | unit-389537 | `0x234d38...afc0e4` | ⚠️ Unaudited |
| CHT-USDT | unknown | project_anchor | own_supporting | 0 | bsc | unit-389566 | `0xc4c151...b11fb6` | ⚠️ Unaudited |
| ICR | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x4f60ad...971e00` | ⚠️ Unaudited |
| ICR_b | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x9b4da0...315d2f` | ⚠️ Unaudited |
| ICR-ADA | unknown | project_anchor | own_supporting | 0 | bsc | unit-389559 | `0x9e3faa...205b24` | ⚠️ Unaudited |
| ICR-ADA | unknown | project_anchor | own_supporting | 0 | bsc | unit-389572 | `0xec8e47...554c01` | ⚠️ Unaudited |
| ICR-AVAX | unknown | project_anchor | own_supporting | 0 | bsc | unit-389533 | `0x0d6c6a...f5ea52` | ⚠️ Unaudited |
| ICR-BABYDOGE | unknown | project_anchor | own_supporting | 0 | bsc | unit-389545 | `0x55966b...8b2ae3` | ⚠️ Unaudited |
| ICR-BFG | unknown | project_anchor | own_supporting | 0 | bsc | unit-389567 | `0xd307b2...b7a2f5` | ⚠️ Unaudited |
| ICR-BNB | unknown | project_anchor | own_supporting | 0 | bsc | unit-389551 | `0x63e557...57d0f7` | ⚠️ Unaudited |
| ICR-BNB | unknown | project_anchor | own_supporting | 0 | bsc | unit-389558 | `0x9c1f12...276ec4` | ⚠️ Unaudited |
| ICR-BSW | unknown | project_anchor | own_supporting | 0 | bsc | unit-389563 | `0xbd0a94...84fe55` | ⚠️ Unaudited |
| ICR-BUSD | unknown | project_anchor | own_supporting | 0 | bsc | unit-389573 | `0xf4088f...5922cd` | ⚠️ Unaudited |
| ICR-BUSD | unknown | project_anchor | own_supporting | 0 | bsc | unit-389574 | `0xf62f29...8bec42` | ⚠️ Unaudited |
| ICR-CAKE | unknown | project_anchor | own_supporting | 0 | bsc | unit-389536 | `0x21da49...342db0` | ⚠️ Unaudited |
| ICR-CAKE | unknown | project_anchor | own_supporting | 0 | bsc | unit-389554 | `0x739c41...3ecf2d` | ⚠️ Unaudited |
| ICR-DOT | unknown | project_anchor | own_supporting | 0 | bsc | unit-389548 | `0x5e01e4...a98ce8` | ⚠️ Unaudited |
| ICR-DOT | unknown | project_anchor | own_supporting | 0 | bsc | unit-389550 | `0x628e48...ad2caa` | ⚠️ Unaudited |
| ICR-ETH | unknown | project_anchor | own_supporting | 0 | bsc | unit-389540 | `0x3734e8...c7c78a` | ⚠️ Unaudited |
| ICR-ETH | unknown | project_anchor | own_supporting | 0 | bsc | unit-389570 | `0xe3b9c3...b5dab4` | ⚠️ Unaudited |
| ICR-JM | unknown | project_anchor | own_supporting | 0 | bsc | unit-389547 | `0x5d6263...e34980` | ⚠️ Unaudited |
| ICR-MX | unknown | project_anchor | own_supporting | 0 | bsc | unit-389571 | `0xe68c66...53edf2` | ⚠️ Unaudited |
| ICR-TONCOIN | unknown | project_anchor | own_supporting | 0 | bsc | unit-389555 | `0x78580f...2a7817` | ⚠️ Unaudited |
| ICR-USDD | unknown | project_anchor | own_supporting | 0 | bsc | unit-389538 | `0x2cca36...ef9fbf` | ⚠️ Unaudited |
| ICR-USDT | unknown | project_anchor | own_supporting | 0 | bsc | unit-389539 | `0x307dfc...ef656b` | ⚠️ Unaudited |
| InterCrone | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xdc0678...9d06d8` | ⚠️ Unaudited |
| IswapV1Factory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x774433...56632b` | ⚠️ Unaudited |
| IswapV1Router02 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x4fd7d1...d259b3` | ⚠️ Unaudited |
| PLZ-BNB | unknown | project_anchor | own_supporting | 0 | bsc | unit-389541 | `0x386925...22ef17` | ⚠️ Unaudited |
| PLZ-BTCB | unknown | project_anchor | own_supporting | 0 | bsc | unit-389549 | `0x607f20...707fff` | ⚠️ Unaudited |
| PLZ-BUSD | unknown | project_anchor | own_supporting | 0 | bsc | unit-389552 | `0x66cbd6...407db6` | ⚠️ Unaudited |
| PLZ-ETH | unknown | project_anchor | own_supporting | 0 | bsc | unit-389568 | `0xde577f...580b6a` | ⚠️ Unaudited |
| PLZ-ICR | unknown | project_anchor | own_supporting | 0 | bsc | unit-389543 | `0x44c3d9...73b8b1` | ⚠️ Unaudited |
| PLZ-USDT | unknown | project_anchor | own_supporting | 0 | bsc | unit-389569 | `0xdf22ea...c57709` | ⚠️ Unaudited |
| StakingRewards | unknown | project_anchor | own_supporting | 0 | bsc | unit-389531 | `0x0484b7...35b38d` | ⚠️ Unaudited |
| wPUT-ETH | unknown | project_anchor | own_supporting | 0 | bsc | unit-389534 | `0x11d36a...d2d6d6` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (61)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| {"pair":"PRUN-BNB","days":101} | unknown | project_anchor | own_supporting | 0 | bittorrent | unit-389521 | `0xcf3299...5aed03` | ❓ Unverified |
| {"pair":"PRUN-BTT","days":101} | unknown | project_anchor | own_supporting | 0 | bittorrent | unit-389488 | `0x267267...25695f` | ❓ Unverified |
| {"pair":"PRUN-ETH","days":101} | unknown | project_anchor | own_supporting | 0 | bittorrent | unit-389526 | `0xe81475...c2bf89` | ❓ Unverified |
| {"pair":"PRUN-ICRT","days":101} | unknown | project_anchor | own_supporting | 0 | bittorrent | unit-389486 | `0x1a5d95...e6b685` | ❓ Unverified |
| {"pair":"PRUN-PMAN","days":101} | unknown | project_anchor | own_supporting | 0 | bittorrent | unit-389525 | `0xe501d9...4af141` | ❓ Unverified |
| {"pair":"PRUN-SHIT","days":101} | unknown | project_anchor | own_supporting | 0 | bittorrent | unit-389519 | `0xcce6f4...6034f4` | ❓ Unverified |
| {"pair":"PRUN-TRX","days":101} | unknown | project_anchor | own_supporting | 0 | bittorrent | unit-389496 | `0x6086a0...561db7` | ❓ Unverified |
| {"pair":"PRUN-USDTB","days":101} | unknown | project_anchor | own_supporting | 0 | bittorrent | unit-389483 | `0x15df5c...8d38fa` | ❓ Unverified |
| {"pair":"PRUN-USDTT","days":101} | unknown | project_anchor | own_supporting | 0 | bittorrent | unit-389530 | `0xfa1344...f71e35` | ❓ Unverified |
| {"pair":"PRUN-WBTCE","days":101} | unknown | project_anchor | own_supporting | 0 | bittorrent | unit-389528 | `0xee3368...4f70ca` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | unit-389535 | `0x1893c4...76b888` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | unit-389544 | `0x45f106...58bbea` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | unit-389553 | `0x689bdc...d686a7` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | unit-389556 | `0x971930...f00376` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | unit-389557 | `0x9b1bf6...63cac6` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | unit-389560 | `0xaee9b6...696a25` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | unit-389561 | `0xb18e2b...87050d` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | unit-389564 | `0xbd5fec...25c834` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | unit-389565 | `0xc39ae6...4aee82` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bittorrent | unit-389482 | `0x02a379...b4379b` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bittorrent | unit-389484 | `0x180790...2a5993` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bittorrent | unit-389485 | `0x18dab6...884c32` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bittorrent | unit-389487 | `0x232ed6...32f5f1` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bittorrent | unit-389489 | `0x372a56...ca24f1` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bittorrent | unit-389490 | `0x41dafa...3cdf46` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bittorrent | unit-389491 | `0x4319a5...a43931` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bittorrent | unit-389492 | `0x477d1b...f37637` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bittorrent | unit-389493 | `0x4f984b...fe65a4` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bittorrent | unit-389494 | `0x4ff108...39b689` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bittorrent | unit-389495 | `0x5408ef...152c48` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bittorrent | unit-389497 | `0x627a84...54343d` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bittorrent | unit-389498 | `0x66813e...99cca5` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bittorrent | unit-389499 | `0x6a6ce1...ed7511` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bittorrent | unit-389500 | `0x6b3da2...f39db7` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bittorrent | unit-389501 | `0x6d45f2...a04686` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bittorrent | unit-389502 | `0x75c6d7...decce4` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bittorrent | unit-389503 | `0x7da237...4ba009` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bittorrent | unit-389504 | `0x8129fb...1a5d7b` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bittorrent | unit-389505 | `0x89bafb...ad9d5d` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bittorrent | unit-389506 | `0x8ba653...e79592` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bittorrent | unit-389507 | `0x917ccd...fab3ec` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bittorrent | unit-389508 | `0x929c1e...70d583` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bittorrent | unit-389509 | `0x959fe5...876f9f` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bittorrent | unit-389510 | `0x9ee45c...383574` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bittorrent | unit-389511 | `0xa7760a...091eae` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bittorrent | unit-389512 | `0xa8708c...005602` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bittorrent | unit-389513 | `0xb48fad...d4ffb6` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bittorrent | unit-389514 | `0xb7ec7f...d273f7` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bittorrent | unit-389515 | `0xc54214...8741e2` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bittorrent | unit-389516 | `0xc7992e...49ae10` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bittorrent | unit-389517 | `0xca0635...439e2f` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bittorrent | unit-389518 | `0xca996b...f6dda8` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bittorrent | unit-389520 | `0xcf0bfc...9a35dc` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bittorrent | unit-389522 | `0xdb2129...f788a3` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bittorrent | unit-389523 | `0xdce2d3...dd6bfe` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bittorrent | unit-389524 | `0xde3e69...8bd0e4` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bittorrent | unit-389527 | `0xe918d8...f2d56a` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bittorrent | unit-389529 | `0xf06be8...88a726` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | chain-11111 | unit-389479 | `0x462785...edb430` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | chain-11111 | unit-389480 | `0xa03b79...4d993b` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | chain-11111 | unit-389481 | `0xa44ccc...3a4bb6` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

- No persisted address-book scope analysis is available.

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| bsc | `0x0484b7...35b38d` | StakingRewards | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 6 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 95 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Address-book scope dispositions: 0 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 0 unmatched
- Matched-own operational status: 0 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Fork inheritance lineage and inherited audits are included when available.
