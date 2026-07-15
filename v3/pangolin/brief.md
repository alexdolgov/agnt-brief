# Agentic Audit Brief: Pangolin

## Export Authority

- Production state: **published scope**
- Raw selected rows: 17 across 6 audit(s)
- Eligible audit results: 13 (6 matched; 7 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e9e09d06b414f9cd852c36a58d42ce16279465f2d9791cd2a8178f3f54b89ecd`

## Project Overview

- Project: Pangolin (`pangolin`)
- Website: [https://pangolin.exchange](https://pangolin.exchange)
- Lifecycle: unknown
- Generated: 2026-07-15T18:30:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: avalanche, flare, hedera, monad, songbird
- Contract surface: 201 unique implementations (244 raw deployments)
- Coverage basis: 10/16 confirmed own live verified implementations (62.5%); conservative 62.5% with 0 needs-review implementation(s)
- DeFi Llama TVL: $2,337,252.00
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for Pangolin. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 7 contract row(s) across avalanche, flare, hedera, monad, songbird. Structural roles: 4 core, 3 supporting. No upgradeable pattern was identified in these rows.

## Logic Topography

- Exact-run contract rows: 7
- Structural roles: core (4), supporting (3)
- Contract kinds: contract (7)
- Detected standards: ownable (2), accesscontrol (1), erc165 (1), erc20 (1), pausable (1)
- Frameworks: openzeppelin (6), boringcrypto (1), foundry (1)
- Upgradeable-pattern rows: 0

## Fork Analysis

0 of 58 contracts are derived from known codebases. 58 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0x12245b...92ff40`, chain 14)
- UnnamedContract (`0x290593...c46cf3`, chain 14)
- UnnamedContract (`0x5d29ad...25501c`, chain 14)
- UnnamedContract (`0xa981cb...7e2308`, chain 14)
- UnnamedContract (`0xb5010d...501c73`, chain 14)
- UnnamedContract (`0xbfe137...43d79a`, chain 14)
- UnnamedContract (`0xe19a6a...f8cb60`, chain 14)
- UnnamedContract (`0xe68839...685d51`, chain 14)
- UnnamedContract (`0x3b8377...c26cf6`, chain 19)
- UnnamedContract (`0x6591cf...a6fb0f`, chain 19)
- UnnamedContract (`0x7428a0...fae777`, chain 19)
- UnnamedContract (`0x764891...0642b7`, chain 19)
- UnnamedContract (`0x784076...052ca6`, chain 19)
- UnnamedContract (`0xa2e6ef...cbb1aa`, chain 19)
- UnnamedContract (`0xb29877...aa5ff4`, chain 19)
- UnnamedContract (`0xb66e62...f329fb`, chain 19)
- UnnamedContract (`0xe18dfc...06dc94`, chain 19)
- UnnamedContract (`0x03bab1...19b87f`, chain 143)
- UnnamedContract (`0x04a003...a5b137`, chain 143)
- UnnamedContract (`0x0660bb...da91aa`, chain 143)
- UnnamedContract (`0x2a7f28...888ebe`, chain 143)
- UnnamedContract (`0x598484...8466d2`, chain 143)
- UnnamedContract (`0x7f877e...eb0bcd`, chain 143)
- UnnamedContract (`0xc2fc48...980f18`, chain 143)
- UnnamedContract (`0xe73e3e...04025f`, chain 143)
- UnnamedContract (`0x000000...1a8837`, chain 295)
- UnnamedContract (`0x000000...1a88b2`, chain 295)
- UnnamedContract (`0x000000...1a88b5`, chain 295)
- UnnamedContract (`0x000000...1a88bc`, chain 295)
- UnnamedContract (`0x000000...1a88c9`, chain 295)
- UnnamedContract (`0x000000...1a88db`, chain 295)
- UnnamedContract (`0x000000...1a8957`, chain 295)
- UnnamedContract (`0x1128f2...8b8256`, chain 43114)
- UnnamedContract (`0x27ecb0...e41ab8`, chain 43114)
- UnnamedContract (`0x5485a0...22547f`, chain 43114)
- UnnamedContract (`0x5dfe6d...44cac1`, chain 43114)
- UnnamedContract (`0x7528b8...a7e315`, chain 43114)
- UnnamedContract (`0x7d115c...0694a2`, chain 43114)
- UnnamedContract (`0xa86522...983822`, chain 43114)
- UnnamedContract (`0xae9d04...664d9f`, chain 43114)
- UnnamedContract (`0xb87a8a...d505aa`, chain 43114)
- UnnamedContract (`0xf40937...f06a7f`, chain 43114)
- Airdrop (`0x0c58c2...3902d9`, chain 43114)
- CommunityTreasury (`0x650f58...a72358`, chain 43114)
- FeeCollector (`0xac61fd...6f43a7`, chain 43114)
- GovernorAlpha (`0xb0ff2b...f43ee1`, chain 43114)
- LiquidityPoolManagerV2 (`0x912b5d...397994`, chain 43114)
- MiniChefV2 (`0x1f806f...98e928`, chain 43114)
- MultiSigWalletWithDailyLimit (`0x6cdd4b...379185`, chain 43114)
- MultiSigWalletWithDailyLimit (`0x8d2e50...bf51f2`, chain 43114)
- MultiSigWalletWithDailyLimit (`0xa4cb6e...5cc1e6`, chain 43114)
- PangolinFactory (`0xefa94d...e9fd88`, chain 43114)
- PangolinRouter (`0xe54ca8...c89106`, chain 43114)
- PangolinV3Factory (`0x44805f...5b0e0e`, chain 143)
- Png (`0x60781c...aca982`, chain 43114)
- StakingRewards (`0x88afda...a0135b`, chain 43114)
- Timelock (`0xeb5c91...4b1ff8`, chain 43114)
- TreasuryVester (`0x6747ac...12acee`, chain 43114)

## Contract Surface Quality

- Logic-topography rows: 7; live-surface rows included: 7 (7 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 58/62 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 10/16 (62.5%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 58 own, 2 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 141 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 1
- Confirmed-live implementations: 58 of 201 unique; 143 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 10/31
- Verified + Unaudited implementations: 21
- Verified by bytecode match: 0
- Unverified implementations: 170
- Unique implementations: 201
- Raw deployments: 244
- Audits discovered: 13 (13 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 6
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2025-04 (aging)
- Audit staleness (calendar age): 0 fresh, 1 aging, 12 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 2 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 10 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| Halborn | Tier 2 | 10 | 32.3% | 2022-04 |

## Contract Surface

### ✅ Verified + Audited (10)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| Airdrop | unknown | project_anchor | own_supporting | 0 | avalanche | unit-391103 | `0x0c58c2...3902d9` | ✅ Audited |
| CommunityTreasury | unknown | project_anchor | own_supporting | 0 | avalanche | unit-391111 | `0x650f58...a72358` | ✅ Audited |
| FeeCollector | unknown | project_anchor | own_supporting | 0 | avalanche | unit-391122 | `0xac61fd...6f43a7` | ✅ Audited |
| GovernorAlpha | governance | project_anchor | own_supporting | 0 | avalanche | unit-391124 | `0xb0ff2b...f43ee1` | ✅ Audited |
| LiquidityPoolManagerV2 | unknown | project_anchor | own_supporting | 0 | avalanche | unit-391119 | `0x912b5d...397994` | ✅ Audited |
| MiniChefV2 | unknown | project_anchor | own_supporting | 0 | avalanche | unit-391105 | `0x1f806f...98e928` | ✅ Audited |
| Png | unknown | project_anchor | own_supporting | 0 | avalanche | unit-391110 | `0x60781c...aca982` | ✅ Audited |
| StakingRewards | unknown | project_anchor | own_supporting | 0 | avalanche | unit-391117 | `0x88afda...a0135b` | ✅ Audited |
| Timelock | unknown | project_anchor | own_supporting | 0 | avalanche | unit-391128 | `0xeb5c91...4b1ff8` | ✅ Audited |
| TreasuryVester | unknown | project_anchor | own_supporting | 0 | avalanche | unit-391112 | `0x6747ac...12acee` | ✅ Audited |

### ⚠️ Verified + Unaudited (21)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| ForwarderLogic | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xca3fc8...cb3642` | ⚠️ Unaudited |
| Governance | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xfdccf6...93f8c0` | ⚠️ Unaudited |
| MiniChefV2Zapper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x61d9c0...ae0ecf` | ⚠️ Unaudited |
| Multicall | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x4a48fc...ef398d` | ⚠️ Unaudited |
| MultiSigWalletWithDailyLimit | unknown | project_anchor | own_supporting | 0 | avalanche | unit-391113 | `0x6cdd4b...379185` | ⚠️ Unaudited |
| MultiSigWalletWithDailyLimit | unknown | project_anchor | own_supporting | 0 | avalanche | unit-391118 | `0x8d2e50...bf51f2` | ⚠️ Unaudited |
| MultiSigWalletWithDailyLimit | unknown | project_anchor | own_supporting | 0 | avalanche | unit-391120 | `0xa4cb6e...5cc1e6` | ⚠️ Unaudited |
| PangolinBridgeMigrationRouter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x4b23aa...f7483c` | ⚠️ Unaudited |
| PangolinFactory | registry | project_anchor | own_supporting | 0 | avalanche | unit-391129 | `0xefa94d...e9fd88` | ⚠️ Unaudited |
| PangolinPair | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | 2 deployments: avalanche `0x0e0100...3a9665`; avalanche `0xbd918e...1970d9` | ⚠️ Unaudited |
| PangolinRouter | adapter | project_anchor | own_supporting | 0 | avalanche | unit-391127 | `0xe54ca8...c89106` | ⚠️ Unaudited |
| PangolinRouterSupportingFees | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xefd958...41007f` | ⚠️ Unaudited |
| PangolinV3Factory | unknown | project_anchor | own_supporting | 0 | monad | unit-391081 | `0x44805f...5b0e0e` | ⚠️ Unaudited |
| PangolinV3Pool | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | 5 deployments: avalanche `0x11476e...0c3e20`; avalanche `0x115040...b2f456`; avalanche `0x6dd86c...c2a2d4`; avalanche `0xb1c039...6c0872`; avalanche `0xfc2bb1...b2e722` | ⚠️ Unaudited |
| PangolinV3Rewarder | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | 3 deployments: avalanche `0x4e8b94...bd0427`; avalanche `0x4fdf9a...7ba14a`; avalanche `0xba19af...ac2f1c` | ⚠️ Unaudited |
| PGLCollector | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | avalanche | n/a | 2 deployments: avalanche `0x20456f...6e4e66`; avalanche `0xdfb836...296b28` | ⚠️ Unaudited |
| Redeemer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x64fee0...63f78a` | ⚠️ Unaudited |
| RewarderViaMultiplier | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | 35 deployments: avalanche `0x09a057...626e25`; avalanche `0x13b58a...fd0b65`; avalanche `0x13e349...73c738`; avalanche `0x16ca58...e03d87`; avalanche `0x26aaab...b0a34b`; avalanche `0x309f3d...ab1d8c`; avalanche `0x344c5a...8ea0b8`; avalanche `0x34595b...7b2158`; avalanche `0x39ccaf...0a280b`; avalanche `0x4b94cc...6eaa78`; avalanche `0x4e11b9...9aa3d8`; avalanche `0x4f7301...996775`; avalanche `0x510bb2...2677f9`; avalanche `0x621c32...c626ed`; avalanche `0x68ed58...bfa4d5`; avalanche `0x6b5f9c...9e08f4`; avalanche `0x6e2b03...febf77`; avalanche `0x6e7eb7...04365b`; avalanche `0x7a5962...56d791`; avalanche `0x87bc67...644e59`; avalanche `0x8a0a93...00e6a0`; avalanche `0x8fc464...9fee38`; avalanche `0x95850d...cfc5de`; avalanche `0x99b9af...da1867`; avalanche `0x9e8857...5d269d`; avalanche `0xb0f89f...d134fa`; avalanche `0xb3e913...fae25f`; avalanche `0xb9d42d...d3d632`; avalanche `0xbe0935...4c3cd8`; avalanche `0xce6726...fa185c`; avalanche `0xdf6e2c...f2d36d`; avalanche `0xe13eec...c6d4cf`; avalanche `0xea4ee2...4060a0`; avalanche `0xeaa3ad...5cdd18`; avalanche `0xeb0370...8e6281` | ⚠️ Unaudited |
| Router | adapter | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x757121...a6baa2` | ⚠️ Unaudited |
| Splitter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x53c3d8...9f91f4` | ⚠️ Unaudited |
| StakingRewardsV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | 2 deployments: avalanche `0x0693ea...83317f`; avalanche `0x7bca92...c52b02` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (170)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | flare | unit-391069 | `0x12245b...92ff40` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | flare | unit-391070 | `0x290593...c46cf3` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | flare | unit-391071 | `0x5d29ad...25501c` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | flare | unit-391072 | `0xa981cb...7e2308` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | flare | unit-391073 | `0xb5010d...501c73` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | flare | unit-391074 | `0xbfe137...43d79a` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | flare | unit-391075 | `0xe19a6a...f8cb60` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | flare | unit-391076 | `0xe68839...685d51` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | songbird | unit-391086 | `0x3b8377...c26cf6` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | songbird | unit-391087 | `0x6591cf...a6fb0f` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | songbird | unit-391088 | `0x7428a0...fae777` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | songbird | unit-391089 | `0x764891...0642b7` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | songbird | unit-391090 | `0x784076...052ca6` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | songbird | unit-391091 | `0xa2e6ef...cbb1aa` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | songbird | unit-391092 | `0xb29877...aa5ff4` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | songbird | unit-391093 | `0xb66e62...f329fb` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | songbird | unit-391094 | `0xe18dfc...06dc94` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | monad | unit-391077 | `0x03bab1...19b87f` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | monad | unit-391078 | `0x04a003...a5b137` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | monad | unit-391079 | `0x0660bb...da91aa` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | monad | unit-391080 | `0x2a7f28...888ebe` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | monad | unit-391082 | `0x598484...8466d2` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | monad | unit-391083 | `0x7f877e...eb0bcd` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | monad | unit-391084 | `0xc2fc48...980f18` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | monad | unit-391085 | `0xe73e3e...04025f` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | hedera | unit-391095 | `0x000000...1a8837` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | hedera | unit-391096 | `0x000000...1a88b2` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | hedera | unit-391097 | `0x000000...1a88b5` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | hedera | unit-391098 | `0x000000...1a88bc` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | hedera | unit-391099 | `0x000000...1a88c9` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | hedera | unit-391100 | `0x000000...1a88db` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | hedera | unit-391101 | `0x000000...1a8957` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x034e7f...1f9b57` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | avalanche | unit-391102 | `0x051911...219476` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x069970...842a25` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x0d065c...eb43c6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x0df7c5...e9587a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x0e7c2e...b21126` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x100b96...17cf98` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x10d3fb...cbf013` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | avalanche | unit-391104 | `0x1128f2...8b8256` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x11e9e5...6d51c9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x1242e0...c1f194` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x134451...8ad953` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x148aa9...07702b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x19d024...0567e7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x1b1b3f...fda672` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x1defb0...c3a61b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x231b55...3d3954` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x268c3b...c2de1a` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | avalanche | unit-391106 | `0x27ecb0...e41ab8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x2824b0...6d0c0a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x28f044...0b32b1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x2dc19e...4ae62c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x2e303b...c74e3d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x2e9433...a96efa` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x2f62fb...7680e3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x358dab...b81eef` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x383615...4a024c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x39b304...811ced` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x3b5c65...f9e73f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x3c4a7b...132599` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x3cbcc8...a39b89` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x3cc533...d46587` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x3ccc87...4d7f3b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x3d9b0f...97340d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x408e9b...e14cd8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x415ef3...d3b2ee` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x43d5fa...84f7b2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x4443cb...00eea5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x44edf5...698710` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x450500...422603` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x46308b...2cad8a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x4b3d00...533c28` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x4b597e...01f28f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x4b6248...b719fc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x5047c4...1c5aa3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x517312...1cac63` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x52ee57...81d89c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x544cd7...16cfa8` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | avalanche | unit-391108 | `0x5485a0...22547f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x5789f5...67c0e0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x588922...9d3ebf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x5d8265...8aa587` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | avalanche | unit-391109 | `0x5dfe6d...44cac1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x5e35df...63a93c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x5f9bf3...c9cdb3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x612856...a7b6f6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x61e0e3...f13d2b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x62b187...c77706` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x6410f5...51da61` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x6948ac...a5ddb0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x6bfdcd...62c9d5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x6c0a7e...ec665a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x6e53c8...51e381` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x73cd05...ddf17b` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | avalanche | unit-391114 | `0x749115...d10a1f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x74b863...900927` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | avalanche | unit-391115 | `0x7528b8...a7e315` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x760e25...b1c585` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x7b72ba...53727e` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | avalanche | unit-391116 | `0x7d115c...0694a2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x7e8040...97baec` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x80c4cc...98eab4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x81b2b1...5ef0d1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x828963...542776` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x89357b...82c8b5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x896e09...615b8f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x8ae5d4...d2d0f1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x8c34cb...875850` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x8f2846...4d39d9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x900e16...3bc62f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x914556...9c65aa` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x92f6f6...bed970` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x972664...6f2223` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x9cf0ad...d9fc51` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xa05c4d...129d5c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xa159e6...dc30de` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xa1d3cd...f9fc6c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xa21fb9...ddaf19` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xa286da...93edbf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xa54fdc...403880` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xa6a5ec...1631a9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xa6d2f4...6f007a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xa6d6eb...2dd2f9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xa73b18...9826db` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xa7625c...781828` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | avalanche | unit-391121 | `0xa86522...983822` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xa9847d...ada2f8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xabde60...fcc214` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xabf4fd...4e17c2` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | avalanche | unit-391123 | `0xae9d04...664d9f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xaf48b2...e3c678` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xb0a532...661703` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xb213bf...f1ab63` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xb3dba8...84fca9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xb444ac...e69ae5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xb5191f...64a6af` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xb6142d...4ca923` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xb6b208...376d32` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | avalanche | unit-391125 | `0xb87a8a...d505aa` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xb8eabc...24689e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xb93900...df5dc5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xbbcb4c...006b70` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xbc9bb2...4f9a59` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xbd60c5...05bbd1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xbdffe4...ce7a35` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xbf32df...34d28c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xc155b1...bc45e8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xc44ca8...c186ae` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xc74e23...654adf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xc90dfa...cbb8a7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xd09b07...0c1755` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xd2517d...50058e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xd2f89c...e59fa0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xd56b82...d85fb4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xdf3723...544273` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xe338d3...aedf48` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xe4a010...d377d3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xe54e3b...951ab7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xe5614c...ebf60c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xe5d35e...88260b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xe66ddf...d408e7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xf3a4d0...e703ea` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | avalanche | unit-391130 | `0xf40937...f06a7f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xfa05ef...6ea7fe` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xfa9a92...668bfc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xfcb81f...42fb27` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xfdd994...3159b6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xfe04c4...10eeb1` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [paladinsec.co/projects/pangolin](https://paladinsec.co/projects/pangolin) | Paladin | Audit | 2025-04 | aging | Direct | address | matched | 2 | 0 | 0 | 1 | high |
| [Pangolin_AVALabs_Zap_Smart_Contract_Security_Audit_Report_Halborn.pdf](https://github.com/pangolindex/exchange-contracts/blob/main/audits/Pangolin_AVALabs_Zap_Smart_Contract_Security_Audit_Report_Halborn.pdf) | Halborn | Audit | 2021-08 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 2 | high |
| [Pangolin_AllocationVester_Smart_Contract_Security_Audit_Report_Halborn_Final.pdf](https://github.com/pangolindex/exchange-contracts/blob/main/audits/Pangolin_AllocationVester_Smart_Contract_Security_Audit_Report_Halborn_Final.pdf) | Halborn | Audit | 2022-03 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 1 | high |
| [Pangolin_DaaS_Audit_Report_Omniscia_Final.pdf](https://github.com/pangolindex/exchange-contracts/blob/main/audits/Pangolin_DaaS_Audit_Report_Omniscia_Final.pdf) | Omniscia | Audit | 2022-08 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 2 | high |
| [Pangolin_Exchange_Smart_Contract_Security_Audit_Report_Halborn_Final.pdf](https://github.com/pangolindex/exchange-contracts/blob/main/audits/Pangolin_Exchange_Smart_Contract_Security_Audit_Report_Halborn_Final.pdf) | Halborn | Audit | 2022-03 | stale | Direct | n/a | matched | 3 | 0 | 0 | 1 | n/a |
| [Pangolin_Fee_Collector_Smart_Contract_Security_Audit_Report_Halborn_Final.pdf](https://github.com/pangolindex/exchange-contracts/blob/main/audits/Pangolin_Fee_Collector_Smart_Contract_Security_Audit_Report_Halborn_Final.pdf) | Halborn | Audit | 2021-12 | stale | Direct | n/a | matched | 1 | 0 | 0 | 0 | n/a |
| [Pangolin_Fee_Collector_v2_Smart_Contract_Security_Audit_Report_Halborn_Final.pdf](https://github.com/pangolindex/exchange-contracts/blob/main/audits/Pangolin_Fee_Collector_v2_Smart_Contract_Security_Audit_Report_Halborn_Final.pdf) | Halborn | Audit | 2022-04 | stale | Direct | n/a | matched | 1 | 0 | 0 | 0 | n/a |
| [Pangolin_MiniChefV2Zapper_Smart_Contract_Security_Audit_Report_Halborn_Final.pdf](https://github.com/pangolindex/exchange-contracts/blob/main/audits/Pangolin_MiniChefV2Zapper_Smart_Contract_Security_Audit_Report_Halborn_Final.pdf) | Halborn | Audit | 2022-02 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 1 | high |
| [Pangolin_RewarderViaMultiplier_Smart_Contract_Security_Audit_Report_Halborn_Final.pdf](https://github.com/pangolindex/exchange-contracts/blob/main/audits/Pangolin_RewarderViaMultiplier_Smart_Contract_Security_Audit_Report_Halborn_Final.pdf) | Halborn | Audit | 2022-01 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 1 | high |
| [Pangolin_Smart_Contract_Security_Audit_Report_Halborn_Final.pdf](https://github.com/pangolindex/exchange-contracts/blob/main/audits/Pangolin_Smart_Contract_Security_Audit_Report_Halborn_Final.pdf) | Halborn | Audit | 2021-10 | stale | Direct | n/a | matched | 9 | 0 | 0 | 5 | n/a |
| [Pangolin_Staking_Positions_Audit_Report_by_WatchPug-1.pdf](https://github.com/pangolindex/exchange-contracts/blob/main/audits/Pangolin_Staking_Positions_Audit_Report_by_WatchPug-1.pdf) | WatchPug | Audit | 2022-08 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 2 | high |
| [Pangolin_Staking_Positions_Audit_Report_by_WatchPug-2.pdf](https://github.com/pangolindex/exchange-contracts/blob/main/audits/Pangolin_Staking_Positions_Audit_Report_by_WatchPug-2.pdf) | WatchPug | Audit | 2023-01 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 2 | high |
| [Pangolin_Fee_Collector_Smart_Contract_Security_Audit_Report_Halborn_Draft.pdf](https://github.com/pangolindex/exchange-contracts/blob/main/audits/Pangolin_Fee_Collector_Smart_Contract_Security_Audit_Report_Halborn_Draft.pdf) | Halborn | Audit | 2021-12 | stale | Direct | n/a | matched | 1 | 0 | 0 | 0 | n/a |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [2689] paladinsec.co/projects/pangolin — matched: Extracted from the 'Contracts Audited' section of the Pangolin audit report page.
- [2690] Pangolin_AVALabs_Zap_Smart_Contract_Security_Audit_Report_Halborn.pdf — no match: Scope section explicitly lists PangolinBridgeMigrationRouter.sol and BridgeToken.sol as in-scope. Audit date is the end date of engagement: August 12th, 2021.
- [2691] Pangolin_AllocationVester_Smart_Contract_Security_Audit_Report_Halborn_Final.pdf — no match: Only one contract in scope: AllocationVester.sol. Audit date is the end date of engagement (March 30th, 2022).
- [2692] Pangolin_DaaS_Audit_Report_Omniscia_Final.pdf — no match: Contracts in scope: PangolinLibrary8.sol and PangolinRouterSupportingFees.sol. Audit date found in header: '08 01 2022'.
- [2693] Pangolin_Exchange_Smart_Contract_Security_Audit_Report_Halborn_Final.pdf — matched: No reason recorded
- [2695] Pangolin_Fee_Collector_Smart_Contract_Security_Audit_Report_Halborn_Final.pdf — matched: No reason recorded
- [2696] Pangolin_Fee_Collector_v2_Smart_Contract_Security_Audit_Report_Halborn_Final.pdf — matched: No reason recorded
- [2697] Pangolin_MiniChefV2Zapper_Smart_Contract_Security_Audit_Report_Halborn_Final.pdf — no match: Only one contract in scope: MiniChefV2Zapper.sol. Audit date is the end date of engagement (February 9th, 2022).
- [2698] Pangolin_RewarderViaMultiplier_Smart_Contract_Security_Audit_Report_Halborn_Final.pdf — no match: Only one contract in scope: RewarderViaMultiplier.sol. Audit date is the end date of the engagement (January 11th, 2022).
- [2699] Pangolin_Smart_Contract_Security_Audit_Report_Halborn_Final.pdf — matched: No reason recorded
- [2700] Pangolin_Staking_Positions_Audit_Report_by_WatchPug-1.pdf — no match: Audit report for Pangolin Staking Positions. Main contract is PangoChef.sol, with PangoChefFunding.sol referenced in a finding. Date from delivery date.
- [2701] Pangolin_Staking_Positions_Audit_Report_by_WatchPug-2.pdf — no match: The audit report covers the PangoChef contract and the SafeExternalCalls contract (which is defined in the same file). The audit date is explicitly stated as Jan 25, 2023.
- [15165] Pangolin_Fee_Collector_Smart_Contract_Security_Audit_Report_Halborn_Draft.pdf — matched: No reason recorded

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| paladinsec.co/projects/pangolin | PangolinV3Factory | own contract | 0x1128f2… (selected) `0x1128f2...8b8256` — deployed 2025-04-04 17:44:53+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| paladinsec.co/projects/pangolin | PangolinV3Pool | unmatched — not counted | — | listed as deployed by PangolinV3Factory | no |
| paladinsec.co/projects/pangolin | NonfungiblePositionManager | own contract | 0xf40937… (selected) `0xf40937...f06a7f` — deployed 2025-04-04 17:45:15+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Pangolin_AVALabs_Zap_Smart_Contract_Security_Audit_Report_Halborn.pdf | PangolinBridgeMigrationRouter | unmatched — not counted | — | listed in scope section | no |
| Pangolin_AVALabs_Zap_Smart_Contract_Security_Audit_Report_Halborn.pdf | BridgeToken | unmatched — not counted | — | listed in scope section | no |
| Pangolin_AllocationVester_Smart_Contract_Security_Audit_Report_Halborn_Final.pdf | AllocationVester | unmatched — not counted | — | Listed in scope section: 'AllocationVester.sol' | no |
| Pangolin_DaaS_Audit_Report_Omniscia_Final.pdf | PangolinLibrary8 | unmatched — not counted | — | listed in scope | no |
| Pangolin_DaaS_Audit_Report_Omniscia_Final.pdf | PangolinRouterSupportingFees | unmatched — not counted | — | listed in scope | no |
| Pangolin_Exchange_Smart_Contract_Security_Audit_Report_Halborn_Final.pdf | Airdrop.sol | own contract | Airdrop (selected) `0x0c58c2...3902d9` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Pangolin_Exchange_Smart_Contract_Security_Audit_Report_Halborn_Final.pdf | PNG.sol | own contract | Png (selected) `0x60781c...aca982` — deployed 2021-02-08 23:15:07+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Pangolin_Exchange_Smart_Contract_Security_Audit_Report_Halborn_Final.pdf | RevenueDistributor.sol | unmatched — not counted | — | — | no |
| Pangolin_Exchange_Smart_Contract_Security_Audit_Report_Halborn_Final.pdf | TreasuryVester.sol | own contract | TreasuryVester (selected) `0x6747ac...12acee` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Pangolin_Fee_Collector_Smart_Contract_Security_Audit_Report_Halborn_Final.pdf | FeeCollector | own contract | FeeCollector (selected) `0xac61fd...6f43a7` — deployed 2022-04-28 22:56:23+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Pangolin_Fee_Collector_v2_Smart_Contract_Security_Audit_Report_Halborn_Final.pdf | FeeCollector | own contract | FeeCollector (selected) `0xac61fd...6f43a7` — deployed 2022-04-28 22:56:23+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Pangolin_MiniChefV2Zapper_Smart_Contract_Security_Audit_Report_Halborn_Final.pdf | MiniChefV2Zapper | unmatched — not counted | — | listed in scope section | no |
| Pangolin_RewarderViaMultiplier_Smart_Contract_Security_Audit_Report_Halborn_Final.pdf | RewarderViaMultiplier | unmatched — not counted | — | listed in scope section 1.4 | no |
| Pangolin_Smart_Contract_Security_Audit_Report_Halborn_Final.pdf | Airdrop | own contract | Airdrop (selected) `0x0c58c2...3902d9` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Pangolin_Smart_Contract_Security_Audit_Report_Halborn_Final.pdf | CommunityTreasury | own contract | CommunityTreasury (selected) `0x650f58...a72358` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Pangolin_Smart_Contract_Security_Audit_Report_Halborn_Final.pdf | GovernorAlpha | own contract | GovernorAlpha (selected) `0xb0ff2b...f43ee1` — deployed 2021-04-03 00:59:20+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Pangolin_Smart_Contract_Security_Audit_Report_Halborn_Final.pdf | LiquidityPoolManager | unmatched — not counted | — | — | no |
| Pangolin_Smart_Contract_Security_Audit_Report_Halborn_Final.pdf | LiquidityPoolManagerV2 | own contract | LiquidityPoolManagerV2 (selected) `0x912b5d...397994` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Pangolin_Smart_Contract_Security_Audit_Report_Halborn_Final.pdf | MiniChefV2 | own contract | MiniChefV2 (selected) `0x1f806f...98e928` — deployed 2021-11-15 20:38:55+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Pangolin_Smart_Contract_Security_Audit_Report_Halborn_Final.pdf | PNG | own contract | Png (selected) `0x60781c...aca982` — deployed 2021-02-08 23:15:07+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Pangolin_Smart_Contract_Security_Audit_Report_Halborn_Final.pdf | PangolinVoteCalculator | unmatched — not counted | — | — | no |
| Pangolin_Smart_Contract_Security_Audit_Report_Halborn_Final.pdf | RewarderComplex | unmatched — not counted | — | — | no |
| Pangolin_Smart_Contract_Security_Audit_Report_Halborn_Final.pdf | RewarderSimple | unmatched — not counted | — | — | no |
| Pangolin_Smart_Contract_Security_Audit_Report_Halborn_Final.pdf | StakingRewards | own contract | StakingRewards (selected) `0x88afda...a0135b` — deployed 2021-12-02 04:24:31+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Pangolin_Smart_Contract_Security_Audit_Report_Halborn_Final.pdf | Timelock | own contract | Timelock (selected) `0xeb5c91...4b1ff8` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Pangolin_Smart_Contract_Security_Audit_Report_Halborn_Final.pdf | TreasuryVester | own contract | TreasuryVester (selected) `0x6747ac...12acee` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Pangolin_Smart_Contract_Security_Audit_Report_Halborn_Final.pdf | TreasuryVesterProxy | unmatched — not counted | — | — | no |
| Pangolin_Staking_Positions_Audit_Report_by_WatchPug-1.pdf | PangoChef | unmatched — not counted | — | listed in scope and findings | no |
| Pangolin_Staking_Positions_Audit_Report_by_WatchPug-1.pdf | PangoChefFunding | unmatched — not counted | — | mentioned in finding WP-G5 | no |
| Pangolin_Staking_Positions_Audit_Report_by_WatchPug-2.pdf | PangoChef | unmatched — not counted | — | listed in scope and findings | no |
| Pangolin_Staking_Positions_Audit_Report_by_WatchPug-2.pdf | SafeExternalCalls | unmatched — not counted | — | mentioned in finding WP-G2 as a contract within the codebase | no |
| Pangolin_Fee_Collector_Smart_Contract_Security_Audit_Report_Halborn_Draft.pdf | FeeCollector | own contract | FeeCollector (selected) `0xac61fd...6f43a7` — deployed 2022-04-28 22:56:23+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| avalanche | `0xefa94d...e9fd88` | PangolinFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | `0xe54ca8...c89106` | PangolinRouter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 21 |
| upstream | 0 |
| standard_library | 1 |
| needs_review | 179 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 7
- Inherited remapped matches: 0
- Address-book scope dispositions: 17 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 18 unmatched
- Matched-own operational status: 17 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=8
- Match method counts: address=2, unique_name=15

Zero-match audit list:

- [2690] Pangolin_AVALabs_Zap_Smart_Contract_Security_Audit_Report_Halborn.pdf
- [2691] Pangolin_AllocationVester_Smart_Contract_Security_Audit_Report_Halborn_Final.pdf
- [2692] Pangolin_DaaS_Audit_Report_Omniscia_Final.pdf
- [2697] Pangolin_MiniChefV2Zapper_Smart_Contract_Security_Audit_Report_Halborn_Final.pdf
- [2698] Pangolin_RewarderViaMultiplier_Smart_Contract_Security_Audit_Report_Halborn_Final.pdf
- [2700] Pangolin_Staking_Positions_Audit_Report_by_WatchPug-1.pdf
- [2701] Pangolin_Staking_Positions_Audit_Report_by_WatchPug-2.pdf

Fork inheritance lineage and inherited audits are included when available.
