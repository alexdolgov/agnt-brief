# Agentic Audit Brief: Intercroneswap

## Export Authority

- Production state: **blocked no audit authority**
- Raw selected rows: 0 across 0 audit(s)
- Eligible audit results: 0 (0 matched; 0 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e9e09d06b414f9cd852c36a58d42ce16279465f2d9791cd2a8178f3f54b89ecd`

## Project Overview

- Project: Intercroneswap (`intercroneswap`)
- Website: [http://www.intercroneswap.com](http://www.intercroneswap.com)
- Lifecycle: unknown
- Generated: 2026-07-15T18:30:00.000Z
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

- {"pair":"PRUN-BNB","days":101} (`0xcf32993e684069de2739b857496c96477b5aed03`, chain 199)
- {"pair":"PRUN-BTT","days":101} (`0x2672678231c26640ee1ae8c7d22e785a0525695f`, chain 199)
- {"pair":"PRUN-ETH","days":101} (`0xe81475a12229bb260e8fc8f1bc2d2a4713c2bf89`, chain 199)
- {"pair":"PRUN-ICRT","days":101} (`0x1a5d95c6bb04555f77356c424a52e463cfe6b685`, chain 199)
- {"pair":"PRUN-PMAN","days":101} (`0xe501d9b85fd796c61cf36bd0e7c1ea12144af141`, chain 199)
- {"pair":"PRUN-SHIT","days":101} (`0xcce6f48f64bc191fe2a329697d3fb4a1636034f4`, chain 199)
- {"pair":"PRUN-TRX","days":101} (`0x6086a0c8fa50c92e10cfe907ea53973dc2561db7`, chain 199)
- {"pair":"PRUN-USDTB","days":101} (`0x15df5c2e1d905ca96cc6488decf44f24c68d38fa`, chain 199)
- {"pair":"PRUN-USDTT","days":101} (`0xfa1344dd7bae7a54b5dcd0817b16de66b8f71e35`, chain 199)
- {"pair":"PRUN-WBTCE","days":101} (`0xee3368ad4aa8000487a3963bf898cde5064f70ca`, chain 199)
- BNB-ADA (`0x590052a2581b38cda9a0f2cba1ea358bc45d2de3`, chain 56)
- CHT-BNB (`0x4378625661c6e28e4e4e0786fcd4ea70b5eac026`, chain 56)
- CHT-BTCB (`0xb556d49e8e683ae30ab6a9bf54e6d7baaf1e62f5`, chain 56)
- CHT-ETH (`0x06d6e83c47c52042a22dcb63782aa580657ec5d0`, chain 56)
- CHT-ICR (`0x234d38a157f6180fbac5a6a9d1b1f4d1bdafc0e4`, chain 56)
- CHT-USDT (`0xc4c151f2e137c2b846239a43eddf177fcab11fb6`, chain 56)
- ICR-ADA (`0x9e3faa5cc98bcfb55892781918fea2c502205b24`, chain 56)
- ICR-ADA (`0xec8e4798c305e3e6834797b4d507ab5344554c01`, chain 56)
- ICR-AVAX (`0x0d6c6a952fa452d98cb57b232797c9404df5ea52`, chain 56)
- ICR-BABYDOGE (`0x55966b39cb04b42cb0e49386b9e78bb2288b2ae3`, chain 56)
- ICR-BFG (`0xd307b21c59d8eb3b1a98b51f2237cdfc9db7a2f5`, chain 56)
- ICR-BNB (`0x63e5578d62f41a682034b17530780f246657d0f7`, chain 56)
- ICR-BNB (`0x9c1f12eced717798395736b607ac959778276ec4`, chain 56)
- ICR-BSW (`0xbd0a94947dcd6cbe98a055c5298e05047784fe55`, chain 56)
- ICR-BUSD (`0xf4088f65b327644875e11c741ce65814db5922cd`, chain 56)
- ICR-BUSD (`0xf62f29ccc1972f78313e72b1c72ee5f87e8bec42`, chain 56)
- ICR-CAKE (`0x21da4984d44f72eb0672b7244538baf164342db0`, chain 56)
- ICR-CAKE (`0x739c415a69bc229320d4b2f97ea40b371c3ecf2d`, chain 56)
- ICR-DOT (`0x5e01e48a103390b0f99a7baaca0ab120f0a98ce8`, chain 56)
- ICR-DOT (`0x628e48f95a3230d9ab0d501178f765949cad2caa`, chain 56)
- ICR-ETH (`0x3734e898e9fcdbe8e481fad1d975093c58c7c78a`, chain 56)
- ICR-ETH (`0xe3b9c300e9ef0bca9b62082a9c2e44ceb4b5dab4`, chain 56)
- ICR-JM (`0x5d62637b30b5cff82e3a2ae5805686f159e34980`, chain 56)
- ICR-MX (`0xe68c661c931d96718f92a031104f89813353edf2`, chain 56)
- ICR-TONCOIN (`0x78580f85f61e7dc1b25dd64f04dc2d208d2a7817`, chain 56)
- ICR-USDD (`0x2cca36ff5d3f9a1290901b7e8e6c255671ef9fbf`, chain 56)
- ICR-USDT (`0x307dfc6c01f8f9d515a3e41fe77e78def0ef656b`, chain 56)
- PLZ-BNB (`0x38692505d759f645d32b0f07a57b0117df22ef17`, chain 56)
- PLZ-BTCB (`0x607f20cb5225e34e869a2e08cfc947cafb707fff`, chain 56)
- PLZ-BUSD (`0x66cbd687402588d45a4338b3e40677bba8407db6`, chain 56)
- PLZ-ETH (`0xde577f2297b03b0b41802ad9341d1243e2580b6a`, chain 56)
- PLZ-ICR (`0x44c3d95b2b7e09db9e6287c043ea9cb3eb73b8b1`, chain 56)
- PLZ-USDT (`0xdf22eaf69a3bcbbe989a666e098e616bf1c57709`, chain 56)
- StakingRewards (`0x0484b79f91f88234e01cd7fd6ceeeb9d5835b38d`, chain 56)
- wPUT-ETH (`0x11d36a5fd2870fbb07e61f300d9f5b3375d2d6d6`, chain 56)

## Contract Surface Quality

- Logic-topography rows: 35; live-surface rows included: 35 (35 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 45/96 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 0/35 (0.0%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 45 own, 51 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 5 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 0
- Confirmed-live implementations: 45 of 101 unique; 56 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 0/40
- Verified + Unaudited implementations: 40
- Verified by bytecode match: 0
- Unverified implementations: 61
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
| BNB-ADA | unknown | project_anchor | own_supporting | 0 | bsc | unit-389546 | `0x590052a2581b38cda9a0f2cba1ea358bc45d2de3` | ⚠️ Unaudited |
| CHT-BNB | unknown | project_anchor | own_supporting | 0 | bsc | unit-389542 | `0x4378625661c6e28e4e4e0786fcd4ea70b5eac026` | ⚠️ Unaudited |
| CHT-BTCB | unknown | project_anchor | own_supporting | 0 | bsc | unit-389562 | `0xb556d49e8e683ae30ab6a9bf54e6d7baaf1e62f5` | ⚠️ Unaudited |
| CHT-ETH | unknown | project_anchor | own_supporting | 0 | bsc | unit-389532 | `0x06d6e83c47c52042a22dcb63782aa580657ec5d0` | ⚠️ Unaudited |
| CHT-ICR | unknown | project_anchor | own_supporting | 0 | bsc | unit-389537 | `0x234d38a157f6180fbac5a6a9d1b1f4d1bdafc0e4` | ⚠️ Unaudited |
| CHT-USDT | unknown | project_anchor | own_supporting | 0 | bsc | unit-389566 | `0xc4c151f2e137c2b846239a43eddf177fcab11fb6` | ⚠️ Unaudited |
| ICR | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x4f60ad2c684296458b12053c0ef402e162971e00` | ⚠️ Unaudited |
| ICR_b | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x9b4da0d77c7d611e8fe0ec9214dd791d05315d2f` | ⚠️ Unaudited |
| ICR-ADA | unknown | project_anchor | own_supporting | 0 | bsc | unit-389559 | `0x9e3faa5cc98bcfb55892781918fea2c502205b24` | ⚠️ Unaudited |
| ICR-ADA | unknown | project_anchor | own_supporting | 0 | bsc | unit-389572 | `0xec8e4798c305e3e6834797b4d507ab5344554c01` | ⚠️ Unaudited |
| ICR-AVAX | unknown | project_anchor | own_supporting | 0 | bsc | unit-389533 | `0x0d6c6a952fa452d98cb57b232797c9404df5ea52` | ⚠️ Unaudited |
| ICR-BABYDOGE | unknown | project_anchor | own_supporting | 0 | bsc | unit-389545 | `0x55966b39cb04b42cb0e49386b9e78bb2288b2ae3` | ⚠️ Unaudited |
| ICR-BFG | unknown | project_anchor | own_supporting | 0 | bsc | unit-389567 | `0xd307b21c59d8eb3b1a98b51f2237cdfc9db7a2f5` | ⚠️ Unaudited |
| ICR-BNB | unknown | project_anchor | own_supporting | 0 | bsc | unit-389551 | `0x63e5578d62f41a682034b17530780f246657d0f7` | ⚠️ Unaudited |
| ICR-BNB | unknown | project_anchor | own_supporting | 0 | bsc | unit-389558 | `0x9c1f12eced717798395736b607ac959778276ec4` | ⚠️ Unaudited |
| ICR-BSW | unknown | project_anchor | own_supporting | 0 | bsc | unit-389563 | `0xbd0a94947dcd6cbe98a055c5298e05047784fe55` | ⚠️ Unaudited |
| ICR-BUSD | unknown | project_anchor | own_supporting | 0 | bsc | unit-389573 | `0xf4088f65b327644875e11c741ce65814db5922cd` | ⚠️ Unaudited |
| ICR-BUSD | unknown | project_anchor | own_supporting | 0 | bsc | unit-389574 | `0xf62f29ccc1972f78313e72b1c72ee5f87e8bec42` | ⚠️ Unaudited |
| ICR-CAKE | unknown | project_anchor | own_supporting | 0 | bsc | unit-389536 | `0x21da4984d44f72eb0672b7244538baf164342db0` | ⚠️ Unaudited |
| ICR-CAKE | unknown | project_anchor | own_supporting | 0 | bsc | unit-389554 | `0x739c415a69bc229320d4b2f97ea40b371c3ecf2d` | ⚠️ Unaudited |
| ICR-DOT | unknown | project_anchor | own_supporting | 0 | bsc | unit-389548 | `0x5e01e48a103390b0f99a7baaca0ab120f0a98ce8` | ⚠️ Unaudited |
| ICR-DOT | unknown | project_anchor | own_supporting | 0 | bsc | unit-389550 | `0x628e48f95a3230d9ab0d501178f765949cad2caa` | ⚠️ Unaudited |
| ICR-ETH | unknown | project_anchor | own_supporting | 0 | bsc | unit-389540 | `0x3734e898e9fcdbe8e481fad1d975093c58c7c78a` | ⚠️ Unaudited |
| ICR-ETH | unknown | project_anchor | own_supporting | 0 | bsc | unit-389570 | `0xe3b9c300e9ef0bca9b62082a9c2e44ceb4b5dab4` | ⚠️ Unaudited |
| ICR-JM | unknown | project_anchor | own_supporting | 0 | bsc | unit-389547 | `0x5d62637b30b5cff82e3a2ae5805686f159e34980` | ⚠️ Unaudited |
| ICR-MX | unknown | project_anchor | own_supporting | 0 | bsc | unit-389571 | `0xe68c661c931d96718f92a031104f89813353edf2` | ⚠️ Unaudited |
| ICR-TONCOIN | unknown | project_anchor | own_supporting | 0 | bsc | unit-389555 | `0x78580f85f61e7dc1b25dd64f04dc2d208d2a7817` | ⚠️ Unaudited |
| ICR-USDD | unknown | project_anchor | own_supporting | 0 | bsc | unit-389538 | `0x2cca36ff5d3f9a1290901b7e8e6c255671ef9fbf` | ⚠️ Unaudited |
| ICR-USDT | unknown | project_anchor | own_supporting | 0 | bsc | unit-389539 | `0x307dfc6c01f8f9d515a3e41fe77e78def0ef656b` | ⚠️ Unaudited |
| InterCrone | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xdc0678e929852aebe68e0ce60f65049b0d9d06d8` | ⚠️ Unaudited |
| IswapV1Factory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x774433016a25e19b2a8d96996c940e326356632b` | ⚠️ Unaudited |
| IswapV1Router02 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x4fd7d13c126ece5c3fe7a839871b242971d259b3` | ⚠️ Unaudited |
| PLZ-BNB | unknown | project_anchor | own_supporting | 0 | bsc | unit-389541 | `0x38692505d759f645d32b0f07a57b0117df22ef17` | ⚠️ Unaudited |
| PLZ-BTCB | unknown | project_anchor | own_supporting | 0 | bsc | unit-389549 | `0x607f20cb5225e34e869a2e08cfc947cafb707fff` | ⚠️ Unaudited |
| PLZ-BUSD | unknown | project_anchor | own_supporting | 0 | bsc | unit-389552 | `0x66cbd687402588d45a4338b3e40677bba8407db6` | ⚠️ Unaudited |
| PLZ-ETH | unknown | project_anchor | own_supporting | 0 | bsc | unit-389568 | `0xde577f2297b03b0b41802ad9341d1243e2580b6a` | ⚠️ Unaudited |
| PLZ-ICR | unknown | project_anchor | own_supporting | 0 | bsc | unit-389543 | `0x44c3d95b2b7e09db9e6287c043ea9cb3eb73b8b1` | ⚠️ Unaudited |
| PLZ-USDT | unknown | project_anchor | own_supporting | 0 | bsc | unit-389569 | `0xdf22eaf69a3bcbbe989a666e098e616bf1c57709` | ⚠️ Unaudited |
| StakingRewards | unknown | project_anchor | own_supporting | 0 | bsc | unit-389531 | `0x0484b79f91f88234e01cd7fd6ceeeb9d5835b38d` | ⚠️ Unaudited |
| wPUT-ETH | unknown | project_anchor | own_supporting | 0 | bsc | unit-389534 | `0x11d36a5fd2870fbb07e61f300d9f5b3375d2d6d6` | ⚠️ Unaudited |

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
| {"pair":"PRUN-BNB","days":101} | unknown | project_anchor | own_supporting | 0 | bittorrent | unit-389521 | `0xcf32993e684069de2739b857496c96477b5aed03` | ❓ Unverified |
| {"pair":"PRUN-BTT","days":101} | unknown | project_anchor | own_supporting | 0 | bittorrent | unit-389488 | `0x2672678231c26640ee1ae8c7d22e785a0525695f` | ❓ Unverified |
| {"pair":"PRUN-ETH","days":101} | unknown | project_anchor | own_supporting | 0 | bittorrent | unit-389526 | `0xe81475a12229bb260e8fc8f1bc2d2a4713c2bf89` | ❓ Unverified |
| {"pair":"PRUN-ICRT","days":101} | unknown | project_anchor | own_supporting | 0 | bittorrent | unit-389486 | `0x1a5d95c6bb04555f77356c424a52e463cfe6b685` | ❓ Unverified |
| {"pair":"PRUN-PMAN","days":101} | unknown | project_anchor | own_supporting | 0 | bittorrent | unit-389525 | `0xe501d9b85fd796c61cf36bd0e7c1ea12144af141` | ❓ Unverified |
| {"pair":"PRUN-SHIT","days":101} | unknown | project_anchor | own_supporting | 0 | bittorrent | unit-389519 | `0xcce6f48f64bc191fe2a329697d3fb4a1636034f4` | ❓ Unverified |
| {"pair":"PRUN-TRX","days":101} | unknown | project_anchor | own_supporting | 0 | bittorrent | unit-389496 | `0x6086a0c8fa50c92e10cfe907ea53973dc2561db7` | ❓ Unverified |
| {"pair":"PRUN-USDTB","days":101} | unknown | project_anchor | own_supporting | 0 | bittorrent | unit-389483 | `0x15df5c2e1d905ca96cc6488decf44f24c68d38fa` | ❓ Unverified |
| {"pair":"PRUN-USDTT","days":101} | unknown | project_anchor | own_supporting | 0 | bittorrent | unit-389530 | `0xfa1344dd7bae7a54b5dcd0817b16de66b8f71e35` | ❓ Unverified |
| {"pair":"PRUN-WBTCE","days":101} | unknown | project_anchor | own_supporting | 0 | bittorrent | unit-389528 | `0xee3368ad4aa8000487a3963bf898cde5064f70ca` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | unit-389535 | `0x1893c45be9134289304a2d3c49152f2d3076b888` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | unit-389544 | `0x45f1061559556fc439afde8d940a59827058bbea` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | unit-389553 | `0x689bdcf79b07670d7ab628f5cd04c70444d686a7` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | unit-389556 | `0x971930763fa9a22827f4a826b50fa52cbcf00376` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | unit-389557 | `0x9b1bf63c86bca2f3abdb1c3178666f1f7563cac6` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | unit-389560 | `0xaee9b66dbd06b708d2ad14aa9d353500fe696a25` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | unit-389561 | `0xb18e2bd11c727cfd3b9c5e05b0711fd62d87050d` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | unit-389564 | `0xbd5fecf482eed300a2821519ca153470a725c834` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | unit-389565 | `0xc39ae6a0db105c5af39d479bfe442d77ce4aee82` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bittorrent | unit-389482 | `0x02a379ce5ec27ef85f305eb4e0207f1fd8b4379b` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bittorrent | unit-389484 | `0x180790a1e7bad832b6a9a863f7042f12832a5993` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bittorrent | unit-389485 | `0x18dab6e7ae225008151501e1e09181f1c7884c32` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bittorrent | unit-389487 | `0x232ed668985cffc340b0e7225f176d561932f5f1` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bittorrent | unit-389489 | `0x372a56fddebfdc9470406bcf2ecb7fc71eca24f1` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bittorrent | unit-389490 | `0x41dafaa9d4d10199ed119b88eb32d621c23cdf46` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bittorrent | unit-389491 | `0x4319a5b6baa07b55077b3b853a4a2f41daa43931` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bittorrent | unit-389492 | `0x477d1b66cd7e342dc09390dd1eee49f872f37637` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bittorrent | unit-389493 | `0x4f984b1a3ddca3bcb2b8ae13d19feba570fe65a4` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bittorrent | unit-389494 | `0x4ff1082ecd7bb5e8a23c3df81d4461b3d539b689` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bittorrent | unit-389495 | `0x5408efe39af0e899527d3f74b0db4199d8152c48` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bittorrent | unit-389497 | `0x627a84554a6d0d305bcb3361b01979ddf654343d` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bittorrent | unit-389498 | `0x66813e3109e7d659998775572b89e3632399cca5` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bittorrent | unit-389499 | `0x6a6ce14261371d4f3b32c9ac9d497df6d4ed7511` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bittorrent | unit-389500 | `0x6b3da2a5a5ce3857e6136d5044f87a57a6f39db7` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bittorrent | unit-389501 | `0x6d45f2023d699b53079cb8439555a597fca04686` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bittorrent | unit-389502 | `0x75c6d70dd6aa973b0aaa3026f901e82c44decce4` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bittorrent | unit-389503 | `0x7da2378cd3638cf5b18e07ad6d9134e8af4ba009` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bittorrent | unit-389504 | `0x8129fb219b3f411e99f7fb9cc2cedffaa11a5d7b` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bittorrent | unit-389505 | `0x89bafba5ad9912e4566b6880b1d9d20372ad9d5d` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bittorrent | unit-389506 | `0x8ba65338e2c7d42cf15eab3837381adfbfe79592` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bittorrent | unit-389507 | `0x917ccd55c5bd21fe3bfd2990e08db85abbfab3ec` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bittorrent | unit-389508 | `0x929c1e1a3ef2ce5698a7475c8526e28ba670d583` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bittorrent | unit-389509 | `0x959fe52e5cf51e86b3c7a8666adbdddef2876f9f` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bittorrent | unit-389510 | `0x9ee45c4ee43dcfbe6ad0abebe5681b2b35383574` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bittorrent | unit-389511 | `0xa7760ab172248f0c1f866e3a9f88be1cf5091eae` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bittorrent | unit-389512 | `0xa8708c0a23eaac82a5f36a75effa042ca5005602` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bittorrent | unit-389513 | `0xb48fadcf00781bfdc93ef7753174c05fbed4ffb6` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bittorrent | unit-389514 | `0xb7ec7ff62aa3ddd1c8d9d03c0434174095d273f7` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bittorrent | unit-389515 | `0xc5421455e4bb4cbc2b560bead8dd3e4e1e8741e2` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bittorrent | unit-389516 | `0xc7992e54d290d5363b1e9204dd57f708f149ae10` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bittorrent | unit-389517 | `0xca06352ee37eeaa2742bc48cec90ed7793439e2f` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bittorrent | unit-389518 | `0xca996b6b93be37dc6293d07d25f0e94df6f6dda8` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bittorrent | unit-389520 | `0xcf0bfc5dd1e7998c59078d4ef7fc132dc29a35dc` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bittorrent | unit-389522 | `0xdb2129f4ab46e67538ec1324c0fdb4c41ff788a3` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bittorrent | unit-389523 | `0xdce2d3cfd132082aedf827145e8bb224ecdd6bfe` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bittorrent | unit-389524 | `0xde3e6929a7d3c97ea14464d2484c3ce4be8bd0e4` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bittorrent | unit-389527 | `0xe918d8fbdb118d7054b06d9d77ca49e977f2d56a` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bittorrent | unit-389529 | `0xf06be8559fe27ee24adce6ed7d702f1c8988a726` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | chain-11111 | unit-389479 | `0x4627852bafc0990223e25e9ac9666bbda1edb430` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | chain-11111 | unit-389480 | `0xa03b7985e65851c495996079cde02608e14d993b` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | chain-11111 | unit-389481 | `0xa44cccd457bbfbd1d3804c2eb866c2097e3a4bb6` | ❓ Unverified |

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
| bsc | `0x0484b79f91f88234e01cd7fd6ceeeb9d5835b38d` | StakingRewards | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

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
