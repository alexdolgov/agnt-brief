# Agentic Audit Brief: Intercroneswap

## Export Authority

- Production state: **blocked no audit authority**
- Raw selected rows: 0 across 0 audit(s)
- Eligible audit results: 0 (0 matched; 0 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `f59b0c07e38ecec2d34eb2896e4262470519ed280e5a0a28b0f46fc69c79a374`

## Project Overview

- Project: Intercroneswap (`intercroneswap`)
- Website: [http://www.intercroneswap.com](http://www.intercroneswap.com)
- Lifecycle: unknown
- Generated: 2026-07-24T14:10:00.000Z
- Pipeline run: brief-deployer-expansion-all-20260724-v1
- Chains: bittorrent, bsc, chain-11111
- Contract surface: 217 unique implementations (217 raw deployments)
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
- Outside the address book: 121 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 0
- Confirmed-live implementations: 45 of 217 unique; 172 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 0/40
- Verified + Unaudited implementations: 40
- Verified by bytecode match: 0
- Unverified implementations: 177
- Unique implementations: 217
- Raw deployments: 217
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

### ❓ Unverified (177)

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
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x08cfb6822e220638664324215537b332e0d92627` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x0c5c76139820ee1deb4bc38bb1c121ac57b04c86` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x0cb217680cf4abe861c340e437b7a9356c2c3afa` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x0cee0dfb5c680e3ccaa46fa28d5057f204e24f0a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x10e148ab2d525e32127a4e69e00ccd55525a7d5c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x156c75dde7bfe09d43a5e987e9e8ea010e9bca8a` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | unit-389535 | `0x1893c45be9134289304a2d3c49152f2d3076b888` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x1d0a89c260547c3912b3d35b69418b518530bd6a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x252cd063341a1a47933086b93f85417c09c54aec` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x2dc1a19bd778bcfe5769aca5b126c961ae11965c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x323e416ecdbc3c14b4225aa522b92027948fd329` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x34ddc608155d4ebb0a8113c7e79d73dcfb64e346` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x44c23d9fec74d428fc993f33bd85b794ebf82f0f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x44db28bbefcee4a74494d80f891e0a56466415ee` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | unit-389544 | `0x45f1061559556fc439afde8d940a59827058bbea` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x46df17c86c28644752c82e46edd04bf427f699e7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x47cf14a857e9949a084fcd322d430b40f72e5c57` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | unit-389553 | `0x689bdcf79b07670d7ab628f5cd04c70444d686a7` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | unit-389556 | `0x971930763fa9a22827f4a826b50fa52cbcf00376` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | unit-389557 | `0x9b1bf63c86bca2f3abdb1c3178666f1f7563cac6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xa72546ddbd75fb4f0176edba30cc42c31c27b452` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xa8559997f7eec03fcfaaff66c5c013dbad6aa8c2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xaaf1ddcc3f6a8d442fc4a5f44dc1a15c3d6e9d1e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xacf3093c3e8d63e51f9b901f1297c569161fb40c` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | unit-389560 | `0xaee9b66dbd06b708d2ad14aa9d353500fe696a25` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | unit-389561 | `0xb18e2bd11c727cfd3b9c5e05b0711fd62d87050d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xb31e0302b1f320411a3119b1ec52eb50a2d07406` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xb69016afded339c99829ac1340b050e04c08e722` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | unit-389564 | `0xbd5fecf482eed300a2821519ca153470a725c834` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xc0fb56252e8048f45d2b091d1f142c9d27ec0cb2` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | unit-389565 | `0xc39ae6a0db105c5af39d479bfe442d77ce4aee82` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xc434f4b99fef2f84b3931552289c404b4ae1f41d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xcbda27d7f16c71aa2b4d1a1309fd26eae4d63c4a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xcbde162c98db6a84d39f4bb57d95737b3b98f77d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xd16eab700f90c383519c90617431bd8a9786e64e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xd5b886001b05ed794a6b3f7c56131b413e95c13b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xdd4da8c3ddc8fcd9250cd3574bbf813ce62d64cf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xdf58005e82ef5edaa79e1d5d3bd062982cc04d67` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xe74624540df853f2ad54b2a131f39edc49e330db` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xe8b5cf1324f0933fabbe940e30330ce34160eefb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xf7a7efb3920407114028a9fd7c29e5b0d3ea7620` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xfa306dc202cafbc5e9de65fb2c05fc63992b65ca` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xfa51b0746eb96debc619fd2ea88d5d8b43bd8230` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bittorrent | unit-389482 | `0x02a379ce5ec27ef85f305eb4e0207f1fd8b4379b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bittorrent | n/a | `0x0385026a5a017ca3d2aa9e8dd1eb3a97a08998fd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bittorrent | n/a | `0x0445f72e4dcade5e8f25266373f0f901890041bf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bittorrent | n/a | `0x09537fbf3f24be7d6b70118007d9d293a51df735` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bittorrent | n/a | `0x096c64d79a85c8fd2e963c4abd9373301d2cf801` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bittorrent | n/a | `0x0a2d4ec7f62bf5b9471acaf60640bdb1141d593d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bittorrent | n/a | `0x0cee0dfb5c680e3ccaa46fa28d5057f204e24f0a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bittorrent | n/a | `0x0ded6990eaf3a13b33ec9dfa10edca5ae2004122` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bittorrent | n/a | `0x10d1e2763b2296caa6f5399a6aee5b3bd87be537` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bittorrent | unit-389484 | `0x180790a1e7bad832b6a9a863f7042f12832a5993` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bittorrent | unit-389485 | `0x18dab6e7ae225008151501e1e09181f1c7884c32` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bittorrent | n/a | `0x1a0e048d7504dff32550e0e6f2717901957abd99` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bittorrent | n/a | `0x1d3782e419ac917d1efd438fc2e0487ed5c0a982` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bittorrent | n/a | `0x1fe260d42451f4b81105f1ddd556be0f53ec2b82` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bittorrent | n/a | `0x2061042a1e0ca352995e85b3f7ebfc1c257bd256` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bittorrent | unit-389487 | `0x232ed668985cffc340b0e7225f176d561932f5f1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bittorrent | n/a | `0x242f7dfbb29d80403b0721c9eac1f8461371ae77` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bittorrent | n/a | `0x252cd063341a1a47933086b93f85417c09c54aec` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bittorrent | n/a | `0x25f0f976093f3d10e99e00b297f716cbd27560f7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bittorrent | n/a | `0x26b89a80a3b70bae4a3b0de0adfb9af49c5437dc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bittorrent | n/a | `0x289d9b7e395fe01c394bdfb02e1f31735260aee5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bittorrent | n/a | `0x296c2e715820aac57406c8dc8b7992c0413fda03` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bittorrent | n/a | `0x29c106dbdb7cae728fc5fd69dd45aeb9da1ff20b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bittorrent | n/a | `0x2dc1a19bd778bcfe5769aca5b126c961ae11965c` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bittorrent | unit-389489 | `0x372a56fddebfdc9470406bcf2ecb7fc71eca24f1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bittorrent | n/a | `0x40269acfd57bd3aab55f1ba872cd0416e13375cf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bittorrent | n/a | `0x41066ab881d5e14b5acca26df37b0243233ed310` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bittorrent | unit-389490 | `0x41dafaa9d4d10199ed119b88eb32d621c23cdf46` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bittorrent | unit-389491 | `0x4319a5b6baa07b55077b3b853a4a2f41daa43931` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bittorrent | unit-389492 | `0x477d1b66cd7e342dc09390dd1eee49f872f37637` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bittorrent | n/a | `0x48f7ee0216ae130f99ece77a533fd7cbdc39c0a8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bittorrent | n/a | `0x4c3440641546db982cbea844efbe0df702a07558` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bittorrent | n/a | `0x4f60ad2c684296458b12053c0ef402e162971e00` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bittorrent | unit-389493 | `0x4f984b1a3ddca3bcb2b8ae13d19feba570fe65a4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bittorrent | n/a | `0x4fd7d13c126ece5c3fe7a839871b242971d259b3` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bittorrent | unit-389494 | `0x4ff1082ecd7bb5e8a23c3df81d4461b3d539b689` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bittorrent | unit-389495 | `0x5408efe39af0e899527d3f74b0db4199d8152c48` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bittorrent | n/a | `0x5918ff0510906ab4f835ed1a4c74e59036caab12` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bittorrent | n/a | `0x592ed927106ee111a04d9578f9e48271d68777fb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bittorrent | n/a | `0x5e7d6380fb6e73e534449fbbb86be5bec6041926` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bittorrent | n/a | `0x5f4f1a36b7c141a12817580bc35277955c0afd78` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bittorrent | n/a | `0x5f5f9e980f17cab8285a48bbc702a79ea70542d6` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bittorrent | unit-389497 | `0x627a84554a6d0d305bcb3361b01979ddf654343d` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bittorrent | unit-389498 | `0x66813e3109e7d659998775572b89e3632399cca5` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bittorrent | unit-389499 | `0x6a6ce14261371d4f3b32c9ac9d497df6d4ed7511` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bittorrent | n/a | `0x6ae3f5f6d6bc0167ca8387bc43bd89529be5b8cc` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bittorrent | unit-389500 | `0x6b3da2a5a5ce3857e6136d5044f87a57a6f39db7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bittorrent | n/a | `0x6cd51ec935e597969ac929d7b3eae518292d67fc` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bittorrent | unit-389501 | `0x6d45f2023d699b53079cb8439555a597fca04686` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bittorrent | n/a | `0x6ebd0f9c317751a5d30bae382e63ad07a720eada` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bittorrent | n/a | `0x6fa376da6d6d7b8f499eeb29ae07bccc3e3dd6e5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bittorrent | n/a | `0x7451b54d20b63a79acbea8587884969f8ca8c7a7` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bittorrent | unit-389502 | `0x75c6d70dd6aa973b0aaa3026f901e82c44decce4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bittorrent | n/a | `0x781823d0dac8bf3d541524c29cbb9f8466d0cea6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bittorrent | n/a | `0x7a9cd2bc234f89cb5cc1ed5b9b7a50ae5b823608` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bittorrent | n/a | `0x7b3c311cba2061a501c952aedfffc4c0dc3f195b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bittorrent | n/a | `0x7d4c1e1b6762c47168ba7cbe8d38ec56868671a0` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bittorrent | unit-389503 | `0x7da2378cd3638cf5b18e07ad6d9134e8af4ba009` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bittorrent | n/a | `0x7e87f0744932f9645c7e6f913bba0471b04fabf9` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bittorrent | unit-389504 | `0x8129fb219b3f411e99f7fb9cc2cedffaa11a5d7b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bittorrent | n/a | `0x815617ed6f908034552a005bce34c6c301cfb011` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bittorrent | n/a | `0x854093eca5467e603c739b3fc6da858599c1ea07` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bittorrent | unit-389505 | `0x89bafba5ad9912e4566b6880b1d9d20372ad9d5d` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bittorrent | unit-389506 | `0x8ba65338e2c7d42cf15eab3837381adfbfe79592` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bittorrent | n/a | `0x8cd98bc20221db1084ce8ecdf436136d00c86bbc` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bittorrent | unit-389507 | `0x917ccd55c5bd21fe3bfd2990e08db85abbfab3ec` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bittorrent | n/a | `0x9283767ec4ab3b4605d1789bfb1a30aff084acd7` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bittorrent | unit-389508 | `0x929c1e1a3ef2ce5698a7475c8526e28ba670d583` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bittorrent | n/a | `0x942606289446e8048a53ffe9adddea2b76558d0f` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bittorrent | unit-389509 | `0x959fe52e5cf51e86b3c7a8666adbdddef2876f9f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bittorrent | n/a | `0x95cebb711940a146c9189b9d305e83bd8ddebde0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bittorrent | n/a | `0x975335918ae802320e4b9cd618d6d31f350814e6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bittorrent | n/a | `0x984f9861dca08831c71ffb58066d7e8395665442` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bittorrent | n/a | `0x994f5aeb3c76b120ab581cd9daaef31a92c2ba47` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bittorrent | n/a | `0x9a0f6e4764a616b1344be1906ff8ab16903803be` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bittorrent | n/a | `0x9ea51d690710ed2125093f9bd80041133606a879` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bittorrent | unit-389510 | `0x9ee45c4ee43dcfbe6ad0abebe5681b2b35383574` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bittorrent | n/a | `0xa152c2f83dab4037680fe39e8c02b3bd5e4d8e15` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bittorrent | n/a | `0xa37850a0ec050748d3b4a6f8232c591251361edd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bittorrent | n/a | `0xa392cf8ea9d77cbbad3d90432f86e1adb5f78c76` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bittorrent | n/a | `0xa3a761a6760d7838acf0512ee96886e3c3a1224d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bittorrent | n/a | `0xa3a8ca23b6a74b250e400e414461ecf05115de62` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bittorrent | n/a | `0xa4d920fb1e334afc3ad252e564385ff26c5132b7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bittorrent | n/a | `0xa74e0313590ff2a84964ddef93cd8640fbf1fec7` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bittorrent | unit-389511 | `0xa7760ab172248f0c1f866e3a9f88be1cf5091eae` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bittorrent | unit-389512 | `0xa8708c0a23eaac82a5f36a75effa042ca5005602` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bittorrent | n/a | `0xaafd2936b1fca9621728bdb8ce4c8be093ac8caf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bittorrent | n/a | `0xb18e2bd11c727cfd3b9c5e05b0711fd62d87050d` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bittorrent | unit-389513 | `0xb48fadcf00781bfdc93ef7753174c05fbed4ffb6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bittorrent | n/a | `0xb5ed8537073c26dca129031b89e0049c8bfd474d` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bittorrent | unit-389514 | `0xb7ec7ff62aa3ddd1c8d9d03c0434174095d273f7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bittorrent | n/a | `0xbb5bc3db6ed51f34b8ae88652b6384ce67751588` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bittorrent | n/a | `0xbc2e6d7d57e47c03e8bfe1e96b57d1d52600fbed` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bittorrent | n/a | `0xbc373a8bb177ddbb09275f7f6c52f3bf70cbf50b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bittorrent | n/a | `0xc1aff4de92981a6ac6e8a0fca8dee1ffaab8df1b` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bittorrent | unit-389515 | `0xc5421455e4bb4cbc2b560bead8dd3e4e1e8741e2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bittorrent | n/a | `0xc671b12b9ceb70cab0b097521a4be1e759b23cd8` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bittorrent | unit-389516 | `0xc7992e54d290d5363b1e9204dd57f708f149ae10` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bittorrent | n/a | `0xc9d6cf0a868089ff117430da0b877b90c92e74a4` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bittorrent | unit-389517 | `0xca06352ee37eeaa2742bc48cec90ed7793439e2f` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bittorrent | unit-389518 | `0xca996b6b93be37dc6293d07d25f0e94df6f6dda8` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bittorrent | unit-389520 | `0xcf0bfc5dd1e7998c59078d4ef7fc132dc29a35dc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bittorrent | n/a | `0xd16418951c6f6c6da0fe3dde969220673b518e55` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bittorrent | n/a | `0xd6cca2aea965e660fb258e6814349ab8545e43ac` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bittorrent | n/a | `0xd929057bc905208e9a015fc1f2c7fcf8ba2496f8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bittorrent | n/a | `0xda66632ce7f71b684dae83857a0558e80478eaa7` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bittorrent | unit-389522 | `0xdb2129f4ab46e67538ec1324c0fdb4c41ff788a3` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bittorrent | unit-389523 | `0xdce2d3cfd132082aedf827145e8bb224ecdd6bfe` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bittorrent | n/a | `0xdd6cbc7733f3df37b137579fc2817e2a48fde5bc` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bittorrent | unit-389524 | `0xde3e6929a7d3c97ea14464d2484c3ce4be8bd0e4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bittorrent | n/a | `0xe07e0b7debd93db3e9a65af1af677263aafad52d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bittorrent | n/a | `0xe1da8a0a7e91903a4f41cc6d388db5ca4917e784` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bittorrent | n/a | `0xe7eed7e917c3d1e62c7eb0ec48b93d688ba20b39` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bittorrent | n/a | `0xe8b5cf1324f0933fabbe940e30330ce34160eefb` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bittorrent | unit-389527 | `0xe918d8fbdb118d7054b06d9d77ca49e977f2d56a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bittorrent | n/a | `0xe92d97358202237429af533e2c22c31c265a8a29` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bittorrent | n/a | `0xeffacb19e4717055a6ab4f460f7e1434afef02e5` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bittorrent | unit-389529 | `0xf06be8559fe27ee24adce6ed7d702f1c8988a726` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bittorrent | n/a | `0xf7a7efb3920407114028a9fd7c29e5b0d3ea7620` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bittorrent | n/a | `0xfab99595472e09b318fe34339d1bce85d781f5ef` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bittorrent | n/a | `0xfe58c27e08765328ada835d63586ca57074ab52a` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | chain-11111 | unit-389479 | `0x4627852bafc0990223e25e9ac9666bbda1edb430` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | chain-11111 | unit-389480 | `0xa03b7985e65851c495996079cde02608e14d993b` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | chain-11111 | unit-389481 | `0xa44cccd457bbfbd1d3804c2eb866c2097e3a4bb6` | ❓ Unverified |

## Deployer Expansion Inventory

These rows are additive inventory from `project_contracts.discovery_source=deployer_expansion`; they do not change scope matching, coverage, or logic topography in this brief.

- Source: `project_contracts.discovery_source=deployer_expansion`
- Decision run: `deployer-candidate-production-20260712`
- Total contracts: 116
- Live contracts: 0
- Unknown liveness contracts: 116
- Source-verified contracts: 0
- Currently scope-matched contracts retained as-is: 0
- Contract rows sorted by chain, deployer, classification, contract name, then address.
- Classification counts: unverified unclassified=116

| Chain | Classification | Contract | Address-Book Class | Role | Liveness | Source | Decision | Deployer |
|---|---|---|---|---|---|---|---|---|
| bittorrent | unverified unclassified | UnnamedContract<br>`0x0445f72e4dcade5e8f25266373f0f901890041bf` | non_address_book | unknown | unknown | unverified | n/a | `0x28e91d93bb30ab309d2a43f2f0f48c9b89e564f6` |
| bittorrent | unverified unclassified | UnnamedContract<br>`0x2061042a1e0ca352995e85b3f7ebfc1c257bd256` | non_address_book | unknown | unknown | unverified | n/a | `0x28e91d93bb30ab309d2a43f2f0f48c9b89e564f6` |
| bittorrent | unverified unclassified | UnnamedContract<br>`0x242f7dfbb29d80403b0721c9eac1f8461371ae77` | non_address_book | unknown | unknown | unverified | n/a | `0x28e91d93bb30ab309d2a43f2f0f48c9b89e564f6` |
| bittorrent | unverified unclassified | UnnamedContract<br>`0x48f7ee0216ae130f99ece77a533fd7cbdc39c0a8` | non_address_book | unknown | unknown | unverified | n/a | `0x28e91d93bb30ab309d2a43f2f0f48c9b89e564f6` |
| bittorrent | unverified unclassified | UnnamedContract<br>`0x6fa376da6d6d7b8f499eeb29ae07bccc3e3dd6e5` | non_address_book | unknown | unknown | unverified | n/a | `0x28e91d93bb30ab309d2a43f2f0f48c9b89e564f6` |
| bittorrent | unverified unclassified | UnnamedContract<br>`0x7e87f0744932f9645c7e6f913bba0471b04fabf9` | non_address_book | unknown | unknown | unverified | n/a | `0x28e91d93bb30ab309d2a43f2f0f48c9b89e564f6` |
| bittorrent | unverified unclassified | UnnamedContract<br>`0x942606289446e8048a53ffe9adddea2b76558d0f` | non_address_book | unknown | unknown | unverified | n/a | `0x28e91d93bb30ab309d2a43f2f0f48c9b89e564f6` |
| bittorrent | unverified unclassified | UnnamedContract<br>`0x09537fbf3f24be7d6b70118007d9d293a51df735` | non_address_book | unknown | unknown | unverified | n/a | `0x913aacbf524636e923d30e05d0ac3b4c93372ed1` |
| bittorrent | unverified unclassified | UnnamedContract<br>`0x096c64d79a85c8fd2e963c4abd9373301d2cf801` | non_address_book | unknown | unknown | unverified | n/a | `0x913aacbf524636e923d30e05d0ac3b4c93372ed1` |
| bittorrent | unverified unclassified | UnnamedContract<br>`0x0a2d4ec7f62bf5b9471acaf60640bdb1141d593d` | non_address_book | unknown | unknown | unverified | n/a | `0x913aacbf524636e923d30e05d0ac3b4c93372ed1` |
| bittorrent | unverified unclassified | UnnamedContract<br>`0x0cee0dfb5c680e3ccaa46fa28d5057f204e24f0a` | non_address_book | unknown | unknown | unverified | n/a | `0x913aacbf524636e923d30e05d0ac3b4c93372ed1` |
| bittorrent | unverified unclassified | UnnamedContract<br>`0x10d1e2763b2296caa6f5399a6aee5b3bd87be537` | non_address_book | unknown | unknown | unverified | n/a | `0x913aacbf524636e923d30e05d0ac3b4c93372ed1` |
| bittorrent | unverified unclassified | UnnamedContract<br>`0x1fe260d42451f4b81105f1ddd556be0f53ec2b82` | non_address_book | unknown | unknown | unverified | n/a | `0x913aacbf524636e923d30e05d0ac3b4c93372ed1` |
| bittorrent | unverified unclassified | UnnamedContract<br>`0x252cd063341a1a47933086b93f85417c09c54aec` | non_address_book | unknown | unknown | unverified | n/a | `0x913aacbf524636e923d30e05d0ac3b4c93372ed1` |
| bittorrent | unverified unclassified | UnnamedContract<br>`0x26b89a80a3b70bae4a3b0de0adfb9af49c5437dc` | non_address_book | unknown | unknown | unverified | n/a | `0x913aacbf524636e923d30e05d0ac3b4c93372ed1` |
| bittorrent | unverified unclassified | UnnamedContract<br>`0x296c2e715820aac57406c8dc8b7992c0413fda03` | non_address_book | unknown | unknown | unverified | n/a | `0x913aacbf524636e923d30e05d0ac3b4c93372ed1` |
| bittorrent | unverified unclassified | UnnamedContract<br>`0x2dc1a19bd778bcfe5769aca5b126c961ae11965c` | non_address_book | unknown | unknown | unverified | n/a | `0x913aacbf524636e923d30e05d0ac3b4c93372ed1` |
| bittorrent | unverified unclassified | UnnamedContract<br>`0x40269acfd57bd3aab55f1ba872cd0416e13375cf` | non_address_book | unknown | unknown | unverified | n/a | `0x913aacbf524636e923d30e05d0ac3b4c93372ed1` |
| bittorrent | unverified unclassified | UnnamedContract<br>`0x41066ab881d5e14b5acca26df37b0243233ed310` | non_address_book | unknown | unknown | unverified | n/a | `0x913aacbf524636e923d30e05d0ac3b4c93372ed1` |
| bittorrent | unverified unclassified | UnnamedContract<br>`0x4c3440641546db982cbea844efbe0df702a07558` | non_address_book | unknown | unknown | unverified | n/a | `0x913aacbf524636e923d30e05d0ac3b4c93372ed1` |
| bittorrent | unverified unclassified | UnnamedContract<br>`0x4f60ad2c684296458b12053c0ef402e162971e00` | non_address_book | unknown | unknown | unverified | n/a | `0x913aacbf524636e923d30e05d0ac3b4c93372ed1` |
| bittorrent | unverified unclassified | UnnamedContract<br>`0x4fd7d13c126ece5c3fe7a839871b242971d259b3` | non_address_book | unknown | unknown | unverified | n/a | `0x913aacbf524636e923d30e05d0ac3b4c93372ed1` |
| bittorrent | unverified unclassified | UnnamedContract<br>`0x5918ff0510906ab4f835ed1a4c74e59036caab12` | non_address_book | unknown | unknown | unverified | n/a | `0x913aacbf524636e923d30e05d0ac3b4c93372ed1` |
| bittorrent | unverified unclassified | UnnamedContract<br>`0x592ed927106ee111a04d9578f9e48271d68777fb` | non_address_book | unknown | unknown | unverified | n/a | `0x913aacbf524636e923d30e05d0ac3b4c93372ed1` |
| bittorrent | unverified unclassified | UnnamedContract<br>`0x5e7d6380fb6e73e534449fbbb86be5bec6041926` | non_address_book | unknown | unknown | unverified | n/a | `0x913aacbf524636e923d30e05d0ac3b4c93372ed1` |
| bittorrent | unverified unclassified | UnnamedContract<br>`0x5f4f1a36b7c141a12817580bc35277955c0afd78` | non_address_book | unknown | unknown | unverified | n/a | `0x913aacbf524636e923d30e05d0ac3b4c93372ed1` |
| bittorrent | unverified unclassified | UnnamedContract<br>`0x6ae3f5f6d6bc0167ca8387bc43bd89529be5b8cc` | non_address_book | unknown | unknown | unverified | n/a | `0x913aacbf524636e923d30e05d0ac3b4c93372ed1` |
| bittorrent | unverified unclassified | UnnamedContract<br>`0x6ebd0f9c317751a5d30bae382e63ad07a720eada` | non_address_book | unknown | unknown | unverified | n/a | `0x913aacbf524636e923d30e05d0ac3b4c93372ed1` |
| bittorrent | unverified unclassified | UnnamedContract<br>`0x7451b54d20b63a79acbea8587884969f8ca8c7a7` | non_address_book | unknown | unknown | unverified | n/a | `0x913aacbf524636e923d30e05d0ac3b4c93372ed1` |
| bittorrent | unverified unclassified | UnnamedContract<br>`0x7b3c311cba2061a501c952aedfffc4c0dc3f195b` | non_address_book | unknown | unknown | unverified | n/a | `0x913aacbf524636e923d30e05d0ac3b4c93372ed1` |
| bittorrent | unverified unclassified | UnnamedContract<br>`0x815617ed6f908034552a005bce34c6c301cfb011` | non_address_book | unknown | unknown | unverified | n/a | `0x913aacbf524636e923d30e05d0ac3b4c93372ed1` |
| bittorrent | unverified unclassified | UnnamedContract<br>`0x854093eca5467e603c739b3fc6da858599c1ea07` | non_address_book | unknown | unknown | unverified | n/a | `0x913aacbf524636e923d30e05d0ac3b4c93372ed1` |
| bittorrent | unverified unclassified | UnnamedContract<br>`0x9283767ec4ab3b4605d1789bfb1a30aff084acd7` | non_address_book | unknown | unknown | unverified | n/a | `0x913aacbf524636e923d30e05d0ac3b4c93372ed1` |
| bittorrent | unverified unclassified | UnnamedContract<br>`0x9ea51d690710ed2125093f9bd80041133606a879` | non_address_book | unknown | unknown | unverified | n/a | `0x913aacbf524636e923d30e05d0ac3b4c93372ed1` |
| bittorrent | unverified unclassified | UnnamedContract<br>`0xa152c2f83dab4037680fe39e8c02b3bd5e4d8e15` | non_address_book | unknown | unknown | unverified | n/a | `0x913aacbf524636e923d30e05d0ac3b4c93372ed1` |
| bittorrent | unverified unclassified | UnnamedContract<br>`0xa3a761a6760d7838acf0512ee96886e3c3a1224d` | non_address_book | unknown | unknown | unverified | n/a | `0x913aacbf524636e923d30e05d0ac3b4c93372ed1` |
| bittorrent | unverified unclassified | UnnamedContract<br>`0xa74e0313590ff2a84964ddef93cd8640fbf1fec7` | non_address_book | unknown | unknown | unverified | n/a | `0x913aacbf524636e923d30e05d0ac3b4c93372ed1` |
| bittorrent | unverified unclassified | UnnamedContract<br>`0xb18e2bd11c727cfd3b9c5e05b0711fd62d87050d` | non_address_book | unknown | unknown | unverified | n/a | `0x913aacbf524636e923d30e05d0ac3b4c93372ed1` |
| bittorrent | unverified unclassified | UnnamedContract<br>`0xb5ed8537073c26dca129031b89e0049c8bfd474d` | non_address_book | unknown | unknown | unverified | n/a | `0x913aacbf524636e923d30e05d0ac3b4c93372ed1` |
| bittorrent | unverified unclassified | UnnamedContract<br>`0xbb5bc3db6ed51f34b8ae88652b6384ce67751588` | non_address_book | unknown | unknown | unverified | n/a | `0x913aacbf524636e923d30e05d0ac3b4c93372ed1` |
| bittorrent | unverified unclassified | UnnamedContract<br>`0xbc2e6d7d57e47c03e8bfe1e96b57d1d52600fbed` | non_address_book | unknown | unknown | unverified | n/a | `0x913aacbf524636e923d30e05d0ac3b4c93372ed1` |
| bittorrent | unverified unclassified | UnnamedContract<br>`0xbc373a8bb177ddbb09275f7f6c52f3bf70cbf50b` | non_address_book | unknown | unknown | unverified | n/a | `0x913aacbf524636e923d30e05d0ac3b4c93372ed1` |
| bittorrent | unverified unclassified | UnnamedContract<br>`0xc1aff4de92981a6ac6e8a0fca8dee1ffaab8df1b` | non_address_book | unknown | unknown | unverified | n/a | `0x913aacbf524636e923d30e05d0ac3b4c93372ed1` |
| bittorrent | unverified unclassified | UnnamedContract<br>`0xc671b12b9ceb70cab0b097521a4be1e759b23cd8` | non_address_book | unknown | unknown | unverified | n/a | `0x913aacbf524636e923d30e05d0ac3b4c93372ed1` |
| bittorrent | unverified unclassified | UnnamedContract<br>`0xc9d6cf0a868089ff117430da0b877b90c92e74a4` | non_address_book | unknown | unknown | unverified | n/a | `0x913aacbf524636e923d30e05d0ac3b4c93372ed1` |
| bittorrent | unverified unclassified | UnnamedContract<br>`0xd6cca2aea965e660fb258e6814349ab8545e43ac` | non_address_book | unknown | unknown | unverified | n/a | `0x913aacbf524636e923d30e05d0ac3b4c93372ed1` |
| bittorrent | unverified unclassified | UnnamedContract<br>`0xda66632ce7f71b684dae83857a0558e80478eaa7` | non_address_book | unknown | unknown | unverified | n/a | `0x913aacbf524636e923d30e05d0ac3b4c93372ed1` |
| bittorrent | unverified unclassified | UnnamedContract<br>`0xdd6cbc7733f3df37b137579fc2817e2a48fde5bc` | non_address_book | unknown | unknown | unverified | n/a | `0x913aacbf524636e923d30e05d0ac3b4c93372ed1` |
| bittorrent | unverified unclassified | UnnamedContract<br>`0xe07e0b7debd93db3e9a65af1af677263aafad52d` | non_address_book | unknown | unknown | unverified | n/a | `0x913aacbf524636e923d30e05d0ac3b4c93372ed1` |
| bittorrent | unverified unclassified | UnnamedContract<br>`0xe7eed7e917c3d1e62c7eb0ec48b93d688ba20b39` | non_address_book | unknown | unknown | unverified | n/a | `0x913aacbf524636e923d30e05d0ac3b4c93372ed1` |
| bittorrent | unverified unclassified | UnnamedContract<br>`0xe8b5cf1324f0933fabbe940e30330ce34160eefb` | non_address_book | unknown | unknown | unverified | n/a | `0x913aacbf524636e923d30e05d0ac3b4c93372ed1` |
| bittorrent | unverified unclassified | UnnamedContract<br>`0xf7a7efb3920407114028a9fd7c29e5b0d3ea7620` | non_address_book | unknown | unknown | unverified | n/a | `0x913aacbf524636e923d30e05d0ac3b4c93372ed1` |
| bittorrent | unverified unclassified | UnnamedContract<br>`0xfab99595472e09b318fe34339d1bce85d781f5ef` | non_address_book | unknown | unknown | unverified | n/a | `0x913aacbf524636e923d30e05d0ac3b4c93372ed1` |
| bittorrent | unverified unclassified | UnnamedContract<br>`0xfe58c27e08765328ada835d63586ca57074ab52a` | non_address_book | unknown | unknown | unverified | n/a | `0x913aacbf524636e923d30e05d0ac3b4c93372ed1` |
| bittorrent | unverified unclassified | UnnamedContract<br>`0x289d9b7e395fe01c394bdfb02e1f31735260aee5` | non_address_book | unknown | unknown | unverified | n/a | `0xb46afe0a5339c415d9934cfbab1ca5384c7d4e51` |
| bittorrent | unverified unclassified | UnnamedContract<br>`0x8cd98bc20221db1084ce8ecdf436136d00c86bbc` | non_address_book | unknown | unknown | unverified | n/a | `0xb46afe0a5339c415d9934cfbab1ca5384c7d4e51` |
| bittorrent | unverified unclassified | UnnamedContract<br>`0xe1da8a0a7e91903a4f41cc6d388db5ca4917e784` | non_address_book | unknown | unknown | unverified | n/a | `0xb46afe0a5339c415d9934cfbab1ca5384c7d4e51` |
| bittorrent | unverified unclassified | UnnamedContract<br>`0xe92d97358202237429af533e2c22c31c265a8a29` | non_address_book | unknown | unknown | unverified | n/a | `0xb46afe0a5339c415d9934cfbab1ca5384c7d4e51` |
| bittorrent | unverified unclassified | UnnamedContract<br>`0x0385026a5a017ca3d2aa9e8dd1eb3a97a08998fd` | non_address_book | unknown | unknown | unverified | n/a | `0xb6ac943bb1f3beb33e92b9819bc81557d4f92ece` |
| bittorrent | unverified unclassified | UnnamedContract<br>`0x0ded6990eaf3a13b33ec9dfa10edca5ae2004122` | non_address_book | unknown | unknown | unverified | n/a | `0xb6ac943bb1f3beb33e92b9819bc81557d4f92ece` |
| bittorrent | unverified unclassified | UnnamedContract<br>`0x1a0e048d7504dff32550e0e6f2717901957abd99` | non_address_book | unknown | unknown | unverified | n/a | `0xb6ac943bb1f3beb33e92b9819bc81557d4f92ece` |
| bittorrent | unverified unclassified | UnnamedContract<br>`0x1d3782e419ac917d1efd438fc2e0487ed5c0a982` | non_address_book | unknown | unknown | unverified | n/a | `0xb6ac943bb1f3beb33e92b9819bc81557d4f92ece` |
| bittorrent | unverified unclassified | UnnamedContract<br>`0x25f0f976093f3d10e99e00b297f716cbd27560f7` | non_address_book | unknown | unknown | unverified | n/a | `0xb6ac943bb1f3beb33e92b9819bc81557d4f92ece` |
| bittorrent | unverified unclassified | UnnamedContract<br>`0x29c106dbdb7cae728fc5fd69dd45aeb9da1ff20b` | non_address_book | unknown | unknown | unverified | n/a | `0xb6ac943bb1f3beb33e92b9819bc81557d4f92ece` |
| bittorrent | unverified unclassified | UnnamedContract<br>`0x5f5f9e980f17cab8285a48bbc702a79ea70542d6` | non_address_book | unknown | unknown | unverified | n/a | `0xb6ac943bb1f3beb33e92b9819bc81557d4f92ece` |
| bittorrent | unverified unclassified | UnnamedContract<br>`0x6cd51ec935e597969ac929d7b3eae518292d67fc` | non_address_book | unknown | unknown | unverified | n/a | `0xb6ac943bb1f3beb33e92b9819bc81557d4f92ece` |
| bittorrent | unverified unclassified | UnnamedContract<br>`0x781823d0dac8bf3d541524c29cbb9f8466d0cea6` | non_address_book | unknown | unknown | unverified | n/a | `0xb6ac943bb1f3beb33e92b9819bc81557d4f92ece` |
| bittorrent | unverified unclassified | UnnamedContract<br>`0x7a9cd2bc234f89cb5cc1ed5b9b7a50ae5b823608` | non_address_book | unknown | unknown | unverified | n/a | `0xb6ac943bb1f3beb33e92b9819bc81557d4f92ece` |
| bittorrent | unverified unclassified | UnnamedContract<br>`0x7d4c1e1b6762c47168ba7cbe8d38ec56868671a0` | non_address_book | unknown | unknown | unverified | n/a | `0xb6ac943bb1f3beb33e92b9819bc81557d4f92ece` |
| bittorrent | unverified unclassified | UnnamedContract<br>`0x95cebb711940a146c9189b9d305e83bd8ddebde0` | non_address_book | unknown | unknown | unverified | n/a | `0xb6ac943bb1f3beb33e92b9819bc81557d4f92ece` |
| bittorrent | unverified unclassified | UnnamedContract<br>`0x975335918ae802320e4b9cd618d6d31f350814e6` | non_address_book | unknown | unknown | unverified | n/a | `0xb6ac943bb1f3beb33e92b9819bc81557d4f92ece` |
| bittorrent | unverified unclassified | UnnamedContract<br>`0x984f9861dca08831c71ffb58066d7e8395665442` | non_address_book | unknown | unknown | unverified | n/a | `0xb6ac943bb1f3beb33e92b9819bc81557d4f92ece` |
| bittorrent | unverified unclassified | UnnamedContract<br>`0x994f5aeb3c76b120ab581cd9daaef31a92c2ba47` | non_address_book | unknown | unknown | unverified | n/a | `0xb6ac943bb1f3beb33e92b9819bc81557d4f92ece` |
| bittorrent | unverified unclassified | UnnamedContract<br>`0x9a0f6e4764a616b1344be1906ff8ab16903803be` | non_address_book | unknown | unknown | unverified | n/a | `0xb6ac943bb1f3beb33e92b9819bc81557d4f92ece` |
| bittorrent | unverified unclassified | UnnamedContract<br>`0xa37850a0ec050748d3b4a6f8232c591251361edd` | non_address_book | unknown | unknown | unverified | n/a | `0xb6ac943bb1f3beb33e92b9819bc81557d4f92ece` |
| bittorrent | unverified unclassified | UnnamedContract<br>`0xa392cf8ea9d77cbbad3d90432f86e1adb5f78c76` | non_address_book | unknown | unknown | unverified | n/a | `0xb6ac943bb1f3beb33e92b9819bc81557d4f92ece` |
| bittorrent | unverified unclassified | UnnamedContract<br>`0xa3a8ca23b6a74b250e400e414461ecf05115de62` | non_address_book | unknown | unknown | unverified | n/a | `0xb6ac943bb1f3beb33e92b9819bc81557d4f92ece` |
| bittorrent | unverified unclassified | UnnamedContract<br>`0xa4d920fb1e334afc3ad252e564385ff26c5132b7` | non_address_book | unknown | unknown | unverified | n/a | `0xb6ac943bb1f3beb33e92b9819bc81557d4f92ece` |
| bittorrent | unverified unclassified | UnnamedContract<br>`0xaafd2936b1fca9621728bdb8ce4c8be093ac8caf` | non_address_book | unknown | unknown | unverified | n/a | `0xb6ac943bb1f3beb33e92b9819bc81557d4f92ece` |
| bittorrent | unverified unclassified | UnnamedContract<br>`0xd16418951c6f6c6da0fe3dde969220673b518e55` | non_address_book | unknown | unknown | unverified | n/a | `0xb6ac943bb1f3beb33e92b9819bc81557d4f92ece` |
| bittorrent | unverified unclassified | UnnamedContract<br>`0xd929057bc905208e9a015fc1f2c7fcf8ba2496f8` | non_address_book | unknown | unknown | unverified | n/a | `0xb6ac943bb1f3beb33e92b9819bc81557d4f92ece` |
| bittorrent | unverified unclassified | UnnamedContract<br>`0xeffacb19e4717055a6ab4f460f7e1434afef02e5` | non_address_book | unknown | unknown | unverified | n/a | `0xb6ac943bb1f3beb33e92b9819bc81557d4f92ece` |
| bsc | unverified unclassified | UnnamedContract<br>`0x08cfb6822e220638664324215537b332e0d92627` | non_address_book | unknown | unknown | unverified | n/a | `0x913aacbf524636e923d30e05d0ac3b4c93372ed1` |
| bsc | unverified unclassified | UnnamedContract<br>`0x0cb217680cf4abe861c340e437b7a9356c2c3afa` | non_address_book | unknown | unknown | unverified | n/a | `0x913aacbf524636e923d30e05d0ac3b4c93372ed1` |
| bsc | unverified unclassified | UnnamedContract<br>`0x0cee0dfb5c680e3ccaa46fa28d5057f204e24f0a` | non_address_book | unknown | unknown | unverified | n/a | `0x913aacbf524636e923d30e05d0ac3b4c93372ed1` |
| bsc | unverified unclassified | UnnamedContract<br>`0x156c75dde7bfe09d43a5e987e9e8ea010e9bca8a` | non_address_book | unknown | unknown | unverified | n/a | `0x913aacbf524636e923d30e05d0ac3b4c93372ed1` |
| bsc | unverified unclassified | UnnamedContract<br>`0x252cd063341a1a47933086b93f85417c09c54aec` | non_address_book | unknown | unknown | unverified | n/a | `0x913aacbf524636e923d30e05d0ac3b4c93372ed1` |
| bsc | unverified unclassified | UnnamedContract<br>`0x2dc1a19bd778bcfe5769aca5b126c961ae11965c` | non_address_book | unknown | unknown | unverified | n/a | `0x913aacbf524636e923d30e05d0ac3b4c93372ed1` |
| bsc | unverified unclassified | UnnamedContract<br>`0x323e416ecdbc3c14b4225aa522b92027948fd329` | non_address_book | unknown | unknown | unverified | n/a | `0x913aacbf524636e923d30e05d0ac3b4c93372ed1` |
| bsc | unverified unclassified | UnnamedContract<br>`0x44c23d9fec74d428fc993f33bd85b794ebf82f0f` | non_address_book | unknown | unknown | unverified | n/a | `0x913aacbf524636e923d30e05d0ac3b4c93372ed1` |
| bsc | unverified unclassified | UnnamedContract<br>`0x44db28bbefcee4a74494d80f891e0a56466415ee` | non_address_book | unknown | unknown | unverified | n/a | `0x913aacbf524636e923d30e05d0ac3b4c93372ed1` |
| bsc | unverified unclassified | UnnamedContract<br>`0x46df17c86c28644752c82e46edd04bf427f699e7` | non_address_book | unknown | unknown | unverified | n/a | `0x913aacbf524636e923d30e05d0ac3b4c93372ed1` |
| bsc | unverified unclassified | UnnamedContract<br>`0x47cf14a857e9949a084fcd322d430b40f72e5c57` | non_address_book | unknown | unknown | unverified | n/a | `0x913aacbf524636e923d30e05d0ac3b4c93372ed1` |
| bsc | unverified unclassified | UnnamedContract<br>`0xa72546ddbd75fb4f0176edba30cc42c31c27b452` | non_address_book | unknown | unknown | unverified | n/a | `0x913aacbf524636e923d30e05d0ac3b4c93372ed1` |
| bsc | unverified unclassified | UnnamedContract<br>`0xa8559997f7eec03fcfaaff66c5c013dbad6aa8c2` | non_address_book | unknown | unknown | unverified | n/a | `0x913aacbf524636e923d30e05d0ac3b4c93372ed1` |
| bsc | unverified unclassified | UnnamedContract<br>`0xaaf1ddcc3f6a8d442fc4a5f44dc1a15c3d6e9d1e` | non_address_book | unknown | unknown | unverified | n/a | `0x913aacbf524636e923d30e05d0ac3b4c93372ed1` |
| bsc | unverified unclassified | UnnamedContract<br>`0xacf3093c3e8d63e51f9b901f1297c569161fb40c` | non_address_book | unknown | unknown | unverified | n/a | `0x913aacbf524636e923d30e05d0ac3b4c93372ed1` |
| bsc | unverified unclassified | UnnamedContract<br>`0xb31e0302b1f320411a3119b1ec52eb50a2d07406` | non_address_book | unknown | unknown | unverified | n/a | `0x913aacbf524636e923d30e05d0ac3b4c93372ed1` |
| bsc | unverified unclassified | UnnamedContract<br>`0xc0fb56252e8048f45d2b091d1f142c9d27ec0cb2` | non_address_book | unknown | unknown | unverified | n/a | `0x913aacbf524636e923d30e05d0ac3b4c93372ed1` |
| bsc | unverified unclassified | UnnamedContract<br>`0xcbda27d7f16c71aa2b4d1a1309fd26eae4d63c4a` | non_address_book | unknown | unknown | unverified | n/a | `0x913aacbf524636e923d30e05d0ac3b4c93372ed1` |
| bsc | unverified unclassified | UnnamedContract<br>`0xcbde162c98db6a84d39f4bb57d95737b3b98f77d` | non_address_book | unknown | unknown | unverified | n/a | `0x913aacbf524636e923d30e05d0ac3b4c93372ed1` |
| bsc | unverified unclassified | UnnamedContract<br>`0xd16eab700f90c383519c90617431bd8a9786e64e` | non_address_book | unknown | unknown | unverified | n/a | `0x913aacbf524636e923d30e05d0ac3b4c93372ed1` |
| bsc | unverified unclassified | UnnamedContract<br>`0xd5b886001b05ed794a6b3f7c56131b413e95c13b` | non_address_book | unknown | unknown | unverified | n/a | `0x913aacbf524636e923d30e05d0ac3b4c93372ed1` |
| bsc | unverified unclassified | UnnamedContract<br>`0xdd4da8c3ddc8fcd9250cd3574bbf813ce62d64cf` | non_address_book | unknown | unknown | unverified | n/a | `0x913aacbf524636e923d30e05d0ac3b4c93372ed1` |
| bsc | unverified unclassified | UnnamedContract<br>`0xdf58005e82ef5edaa79e1d5d3bd062982cc04d67` | non_address_book | unknown | unknown | unverified | n/a | `0x913aacbf524636e923d30e05d0ac3b4c93372ed1` |
| bsc | unverified unclassified | UnnamedContract<br>`0xe8b5cf1324f0933fabbe940e30330ce34160eefb` | non_address_book | unknown | unknown | unverified | n/a | `0x913aacbf524636e923d30e05d0ac3b4c93372ed1` |
| bsc | unverified unclassified | UnnamedContract<br>`0xf7a7efb3920407114028a9fd7c29e5b0d3ea7620` | non_address_book | unknown | unknown | unverified | n/a | `0x913aacbf524636e923d30e05d0ac3b4c93372ed1` |
| bsc | unverified unclassified | UnnamedContract<br>`0xfa306dc202cafbc5e9de65fb2c05fc63992b65ca` | non_address_book | unknown | unknown | unverified | n/a | `0x913aacbf524636e923d30e05d0ac3b4c93372ed1` |
| bsc | unverified unclassified | UnnamedContract<br>`0xfa51b0746eb96debc619fd2ea88d5d8b43bd8230` | non_address_book | unknown | unknown | unverified | n/a | `0x913aacbf524636e923d30e05d0ac3b4c93372ed1` |
| bsc | unverified unclassified | UnnamedContract<br>`0x0c5c76139820ee1deb4bc38bb1c121ac57b04c86` | non_address_book | unknown | unknown | unverified | n/a | `0xcb2d58115038d095bf69d62a4f46228f5a98147a` |
| bsc | unverified unclassified | UnnamedContract<br>`0x10e148ab2d525e32127a4e69e00ccd55525a7d5c` | non_address_book | unknown | unknown | unverified | n/a | `0xcb2d58115038d095bf69d62a4f46228f5a98147a` |
| bsc | unverified unclassified | UnnamedContract<br>`0x1d0a89c260547c3912b3d35b69418b518530bd6a` | non_address_book | unknown | unknown | unverified | n/a | `0xcb2d58115038d095bf69d62a4f46228f5a98147a` |
| bsc | unverified unclassified | UnnamedContract<br>`0x34ddc608155d4ebb0a8113c7e79d73dcfb64e346` | non_address_book | unknown | unknown | unverified | n/a | `0xcb2d58115038d095bf69d62a4f46228f5a98147a` |
| bsc | unverified unclassified | UnnamedContract<br>`0xb69016afded339c99829ac1340b050e04c08e722` | non_address_book | unknown | unknown | unverified | n/a | `0xcb2d58115038d095bf69d62a4f46228f5a98147a` |
| bsc | unverified unclassified | UnnamedContract<br>`0xc434f4b99fef2f84b3931552289c404b4ae1f41d` | non_address_book | unknown | unknown | unverified | n/a | `0xcb2d58115038d095bf69d62a4f46228f5a98147a` |
| bsc | unverified unclassified | UnnamedContract<br>`0xe74624540df853f2ad54b2a131f39edc49e330db` | non_address_book | unknown | unknown | unverified | n/a | `0xcb2d58115038d095bf69d62a4f46228f5a98147a` |

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
| needs_review | 211 |

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
