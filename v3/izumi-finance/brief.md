# Agentic Audit Brief: iZUMi Finance

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

- Project: iZUMi Finance (`izumi-finance`)
- Website: [https://izumi.finance/home](https://izumi.finance/home)
- Lifecycle: unknown
- Generated: 2026-07-15T18:30:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: arbitrum, aurora, base, blast, bsc, cronos, ethereum, kava, linea, manta-pacific, mantle, mode, polygon, scroll, zklink-nova, zksync-era
- Contract surface: 204 unique implementations (387 raw deployments)
- Coverage basis: not assessable — No eligible owned address-book contracts are available for an operational-liveness denominator.
- DeFi Llama TVL: $3,493,250.00
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## ⚠️ Limited Contract Surface

The closed normalized authority records no EVM contract logic or eligible security audit for this project. This is an explicit cohort state, not a skipped export.

## Project Description

No contract logic was present for iZUMi Finance in the closed normalized topography run; this brief does not infer a protocol purpose from missing code.

### Architecture

The activated project remains an explicit cohort member with an empty normalized logic-topography closure.

## Logic Topography

- Exact-run contract rows: 0
- Structural roles: none
- Contract kinds: none
- Detected standards: none
- Frameworks: none
- Upgradeable-pattern rows: 0

## Contract Surface Quality

- Operational liveness prerequisite: not_applicable; 0/0 eligible owned address-book contracts resolved from completed operational-liveness snapshots.
- Logic-topography rows: 0; live/inactive and live-deployment-unit totals are withheld until liveness completes.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: not assessable
- Coverage assessment: not_assessable (low confidence) — No eligible owned address-book contracts are available for an operational-liveness denominator.
- Address-book implementation classification: 0 own, 1 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 203 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 12
- Operational liveness: not_applicable; 0/0 eligible owned address-book contracts resolved. Deployed-live counts are withheld from coverage.
- All block-explorer-verified implementations audited (incl. non-live): 0/38
- Verified + Unaudited implementations: 38
- Verified by bytecode match: 0
- Unverified implementations: 166
- Unique implementations: 204
- Raw deployments: 387
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

### ⚠️ Verified + Unaudited (38)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| ArbitrumLiquidityManagerAccessControl | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x19647d...2b0ed4` | ⚠️ Unaudited |
| ArbitrumNonfungiblePositionManagerAccessControl | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x77c2c2...9bfb17` | ⚠️ Unaudited |
| Box | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 6 deployments: ethereum `0x34bc1b...c71406`; bsc `0x05dcaf...643f60`; bsc `0xa7b45d...e83068`; polygon `0x14323a...4d1be2`; arbitrum `0x032b24...a246d7`; arbitrum `0x3ef68d...f88bc4` | ⚠️ Unaudited |
| DynamicRange | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x80d7ef...b30f4c` | ⚠️ Unaudited |
| FixRange | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 4 deployments: bsc `0x1b8c94...376ae7`; bsc `0x50e024...b1064e`; bsc `0xada24c...0160a1`; bsc `0xc49874...170c22` | ⚠️ Unaudited |
| FlashModule | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 10 deployments: ethereum `0x110de3...17887d`; bsc `0x110de3...17887d`; bsc `0x77ab29...06cbb0`; bsc `0x79d175...153e39`; polygon `0x2db0af...efd3d7`; manta-pacific `0xbd6aba...dfb5df`; mode `0xbd6aba...dfb5df`; arbitrum `0x2c6df0...1f770f`; arbitrum `0x4a41eb...aae41c`; arbitrum `0xbd6aba...dfb5df` | ⚠️ Unaudited |
| GnosisSafeL2 | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | scroll | unit-243215 | `0x87cc9d...f64e14` | ⚠️ Unaudited |
| iZiSwapClassicFactory | registry | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | 4 deployments: base `0xbd3bd9...8cfad8`; base `0xd7de11...993de0`; linea `0x156d8a...eae9e9`; linea `0xcfd8a0...847399` | ⚠️ Unaudited |
| iZiSwapClassicRouter02 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 4 deployments: base `0x93c22f...ff9581`; base `0xcfd8a0...847399`; linea `0xad1f11...cdc16f`; linea `0xe78e74...ecf212` | ⚠️ Unaudited |
| iZiSwapFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 14 deployments: ethereum `0x1502d0...251728`; bsc `0x1502d0...251728`; bsc `0x4a41eb...aae41c`; bsc `0x6a7cdd...acd6f2`; bsc `0x93bb94...844422`; bsc `0xd7de11...993de0`; polygon `0x3ef68d...f88bc4`; polygon `0xca7e21...096037`; base `0x8c7d30...1ebb08`; mode `0x8c7d30...1ebb08`; arbitrum `0x14323a...4d1be2`; arbitrum `0x45e5f2...27c218`; arbitrum `0x8c7d30...1ebb08`; arbitrum `0xcfd8a0...847399` | ⚠️ Unaudited |
| izumiToken | token | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9ad372...c5c200` | ⚠️ Unaudited |
| LimitOrderManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 15 deployments: ethereum `0x02f55d...43bdb2`; bsc `0x19647d...2b0ed4`; bsc `0x19b683...54d663`; bsc `0x1cb600...24319c`; bsc `0x45e5f2...27c218`; bsc `0x72fafc...d2f201`; bsc `0x9bf839...51612b`; polygon `0x25c030...b03e31`; polygon `0x34bc1b...c71406`; manta-pacific `0x02f55d...43bdb2`; arbitrum `0x1502d0...251728`; arbitrum `0x156d8a...eae9e9`; arbitrum `0xca7e21...096037`; linea `0x1502d0...251728`; linea `0x25c030...b03e31` | ⚠️ Unaudited |
| LimitOrderManager | governance | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | `0x1502d0...251728` | ⚠️ Unaudited |
| LimitOrderModule | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | 10 deployments: ethereum `0x8c7d30...1ebb08`; bsc `0x32d02f...ad2b55`; bsc `0x344add...2ce7f7`; bsc `0xb8ddaf...3fa61f`; polygon `0x02f55d...43bdb2`; manta-pacific `0xe96526...008768`; mode `0xe96526...008768`; arbitrum `0x04830c...2c9148`; arbitrum `0x6a7cdd...acd6f2`; arbitrum `0xe96526...008768` | ⚠️ Unaudited |
| LimitOrderWithSwapManager | governance | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 6 deployments: bsc `0x25fbb4...2e6573`; polygon `0x1d3773...8bfc1b`; manta-pacific `0x2db0af...efd3d7`; base `0x19b683...54d663`; arbitrum `0x3a2932...ce2492`; arbitrum `0xe78e74...ecf212` | ⚠️ Unaudited |
| LiquidityManager | governance | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 23 deployments: ethereum `0x19b683...54d663`; bsc `0x33531b...aacaaf`; bsc `0x3a2932...ce2492`; bsc `0x4ed4a5...1f1bcb`; bsc `0x65b4f6...f69397`; bsc `0x93c22f...ff9581`; bsc `0xac9788...3a4b29`; bsc `0xbf55ef...c9f453`; bsc `0xd55a07...6d7541`; bsc `0xe4a0b2...85b9dd`; bsc `0xfb653d...4f5caf`; polygon `0x1cb600...24319c`; polygon `0x33531b...aacaaf`; manta-pacific `0x19b683...54d663`; mantle `0x1502d0...251728`; mantle `0x93c22f...ff9581`; base `0x110de3...17887d`; mode `0x19b683...54d663`; arbitrum `0x110de3...17887d`; arbitrum `0x611575...f78f0c`; arbitrum `0xad1f11...cdc16f`; linea `0x110de3...17887d`; scroll `0x1502d0...251728` | ⚠️ Unaudited |
| LiquidityManager | governance | non_address_book | non_address_book_inventory (excluded) | 1 | linea | n/a | `0x1cb600...24319c` | ⚠️ Unaudited |
| LiquidityModule | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | 8 deployments: ethereum `0xbd6aba...dfb5df`; bsc `0x88867b...7068e4`; bsc `0xf42c48...ab8496`; bsc `0xf4efdb...1e38c7`; polygon `0x19b683...54d663`; arbitrum `0x3f5591...51db18`; arbitrum `0x77ab29...06cbb0`; arbitrum `0xf4efdb...1e38c7` | ⚠️ Unaudited |
| Locker | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 8 deployments: bsc `0x5c8e52...33e2c6`; manta-pacific `0x1d3773...8bfc1b`; base `0x1cb600...24319c`; mode `0xb8ddaf...3fa61f`; arbitrum `0x795fa4...b3c838`; linea `0x93c22f...ff9581`; blast `0x89b866...eaf263`; blast `0xea5a9e...e3187d` | ⚠️ Unaudited |
| MultiContractCall | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xa1189a...279672` | ⚠️ Unaudited |
| Quoter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 16 deployments: ethereum `0x3ef68d...f88bc4`; bsc `0x0e79c2...6cfe84`; bsc `0x12a764...e2639f`; bsc `0x1d3773...8bfc1b`; bsc `0x2db0af...efd3d7`; bsc `0x41be13...a6e597`; bsc `0x64b005...6b8e02`; bsc `0xf34096...a21880`; polygon `0x04830c...2c9148`; polygon `0xe68056...6a1347`; manta-pacific `0x33531b...aacaaf`; base `0x2db0af...efd3d7`; arbitrum `0x02f55d...43bdb2`; arbitrum `0x25c030...b03e31`; arbitrum `0x96539f...4ae4a5`; linea `0x2db0af...efd3d7` | ⚠️ Unaudited |
| Quoter | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | linea | n/a | `0xe68056...6a1347` | ⚠️ Unaudited |
| QuoterWithLim | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 11 deployments: ethereum `0x33531b...aacaaf`; bsc `0xdce9a4...726542`; polygon `0x2c6df0...1f770f`; polygon `0xe4a0b2...85b9dd`; manta-pacific `0x34bc1b...c71406`; base `0x3ef68d...f88bc4`; arbitrum `0x1d3773...8bfc1b`; arbitrum `0x2db0af...efd3d7`; arbitrum `0x64b005...6b8e02`; linea `0x3ef68d...f88bc4`; linea `0xe4a0b2...85b9dd` | ⚠️ Unaudited |
| Swap | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | `0xbd3bd9...8cfad8` | ⚠️ Unaudited |
| Swap | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | `0xedf202...5aa4b8` | ⚠️ Unaudited |
| Swap | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 20 deployments: ethereum `0x2db0af...efd3d7`; bsc `0x032b24...a246d7`; bsc `0x04830c...2c9148`; bsc `0x34bc1b...c71406`; bsc `0x3ef68d...f88bc4`; bsc `0x5b60e5...995725`; bsc `0x5f6af6...b847eb`; bsc `0x73ecb5...eed298`; polygon `0x032b24...a246d7`; polygon `0x3f5591...51db18`; polygon `0xb8ddaf...3fa61f`; manta-pacific `0x3ef68d...f88bc4`; mantle `0x1d3773...8bfc1b`; mantle `0x25c030...b03e31`; base `0x02f55d...43bdb2`; mode `0x3ef68d...f88bc4`; arbitrum `0x19b683...54d663`; arbitrum `0x1cb600...24319c`; arbitrum `0xd7de11...993de0`; linea `0x02f55d...43bdb2` | ⚠️ Unaudited |
| Swap | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | `0x01fdea...1bed0e` | ⚠️ Unaudited |
| Swap | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | linea | n/a | `0x032b24...a246d7` | ⚠️ Unaudited |
| SwapProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 4 deployments: ethereum `0x04830c...2c9148`; bsc `0xade484...87893c`; bsc `0xce326a...526a74`; arbitrum `0xe4a0b2...85b9dd` | ⚠️ Unaudited |
| SwapProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x2c6df0...1f770f` | ⚠️ Unaudited |
| SwapProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | `0x61a411...579aea` | ⚠️ Unaudited |
| SwapProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | `0xf2bd60...916985` | ⚠️ Unaudited |
| SwapProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | `0xf9db6b...79b21a` | ⚠️ Unaudited |
| SwapRouter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 5 deployments: bsc `0x816836...c342d7`; polygon `0xf42c48...ab8496`; base `0x4a41eb...aae41c`; arbitrum `0x1b8c94...376ae7`; linea `0x9bf839...51612b` | ⚠️ Unaudited |
| SwapX2YModule | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | 16 deployments: ethereum `0xf4efdb...1e38c7`; bsc `0x2c6df0...1f770f`; bsc `0x77c2c2...9bfb17`; bsc `0xe96526...008768`; polygon `0x110de3...17887d`; polygon `0x32d02f...ad2b55`; polygon `0x4d4673...a87bfe`; polygon `0x8c7d30...1ebb08`; polygon `0xbd6aba...dfb5df`; polygon `0xe96526...008768`; polygon `0xf4efdb...1e38c7`; manta-pacific `0x4d4673...a87bfe`; mode `0x4d4673...a87bfe`; arbitrum `0x33531b...aacaaf`; arbitrum `0x4d4673...a87bfe`; arbitrum `0x88867b...7068e4` | ⚠️ Unaudited |
| SwapY2XModule | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 10 deployments: ethereum `0xe96526...008768`; bsc `0x14323a...4d1be2`; bsc `0xbd6aba...dfb5df`; bsc `0xbf8f8e...24b188`; polygon `0x1502d0...251728`; manta-pacific `0x32d02f...ad2b55`; mode `0x32d02f...ad2b55`; arbitrum `0x32d02f...ad2b55`; arbitrum `0x34bc1b...c71406`; arbitrum `0xb8ddaf...3fa61f` | ⚠️ Unaudited |
| UniversalSwapRouter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 2 deployments: base `0x12a764...e2639f`; base `0xad1f11...cdc16f` | ⚠️ Unaudited |
| veiZi | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0xb56a45...7fcd00` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (166)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x02f55d...43bdb2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x0d77e4...3ed61d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x0de540...5f13a5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x10bba9...11fcd8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x1eaa94...0eeb19` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x20804c...9a383d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x25c030...b03e31` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x294ad7...f2c479` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x2e2abb...4a8810` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x33817f...e06992` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x37a75e...eb2a45` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x3cf497...702c75` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x3dc5cb...91e941` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x3f5591...51db18` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x414322...1e1ef0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x42180b...179afd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x4b0ec5...5d0bb7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x4d4673...a87bfe` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x611575...f78f0c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x759424...257ad7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x7cbf7b...9c89f0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x7eac05...ecd376` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x81e3ee...fc0f40` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x84fbff...80c099` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x85e2d3...a13ed0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x8c7d30...1ebb08` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x98fcda...320a8d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xa29e33...63093c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xa85e50...66623d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xad1f11...cdc16f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xb922af...dd05be` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xc32dad...aeb34c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xca7e21...096037` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xcd65d4...53164c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xcf680a...8d0399` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xcfd8a0...847399` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xd0bbdc...13dbb2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xda6dbe...b7fbe2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xde547f...0496c8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xe4ebc5...5c51a6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xe68056...6a1347` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x19647d...2b0ed4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x3a2932...ce2492` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x45e5f2...27c218` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x4a41eb...aae41c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x611575...f78f0c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x6a7cdd...acd6f2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x77ab29...06cbb0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x77c2c2...9bfb17` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xbf8f8e...24b188` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | manta-pacific | n/a | `0x3f5591...51db18` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | manta-pacific | n/a | `0x8c7d30...1ebb08` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | manta-pacific | n/a | `0xf4efdb...1e38c7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | zksync-era | n/a | `0x43ff8a...c8839a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | zksync-era | n/a | `0x483fde...ccd1f1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | zksync-era | n/a | `0x6ac81d...c16b97` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | zksync-era | n/a | `0x943ac2...00f894` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | zksync-era | n/a | `0xe36caa...ca8149` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | kava | n/a | 8 deployments: cronos `0x33531b...aacaaf`; kava `0x078f71...90604b`; kava `0x138262...1aa84f`; kava `0x19b683...54d663`; kava `0x469a50...b6bb4a`; kava `0x98a3a1...783613`; kava `0xe96356...7a62a1`; kava `0xfe1c50...b1b86a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x01fdea...1bed0e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x02f55d...43bdb2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x032b24...a246d7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x19b683...54d663` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x1b8c94...376ae7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x1cb600...24319c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x2db0af...efd3d7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x32d02f...ad2b55` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x33531b...aacaaf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x34bc1b...c71406` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x35f106...2b7345` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x3a2932...ce2492` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x3ef68d...f88bc4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x3f5591...51db18` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x45e5f2...27c218` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x4a41eb...aae41c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x4d4673...a87bfe` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x50e024...b1064e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x611575...f78f0c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x64b005...6b8e02` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x6a7cdd...acd6f2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x77ab29...06cbb0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x88867b...7068e4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x8c7d30...1ebb08` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x96539f...4ae4a5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0xada24c...0160a1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0xb8ddaf...3fa61f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0xbd3bd9...8cfad8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0xbd6aba...dfb5df` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0xca7e21...096037` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0xe4a0b2...85b9dd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0xe68056...6a1347` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0xe96526...008768` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0xf4efdb...1e38c7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x156d8a...eae9e9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x1d3773...8bfc1b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x25c030...b03e31` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x32d02f...ad2b55` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x33531b...aacaaf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x344add...2ce7f7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x45e5f2...27c218` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x4d4673...a87bfe` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x6a7cdd...acd6f2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x77ab29...06cbb0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x77c2c2...9bfb17` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x9bf839...51612b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xbd6aba...dfb5df` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xbf8f8e...24b188` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xe96526...008768` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xf4efdb...1e38c7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mode | n/a | `0x02f55d...43bdb2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mode | n/a | `0x110de3...17887d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mode | n/a | `0x2db0af...efd3d7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mode | n/a | `0x33531b...aacaaf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mode | n/a | `0x34bc1b...c71406` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mode | n/a | `0x3f5591...51db18` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mode | n/a | `0x611575...f78f0c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mode | n/a | `0xf42c48...ab8496` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mode | n/a | `0xf4efdb...1e38c7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x12a764...e2639f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x249b55...37aa88` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x35f106...2b7345` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x50e024...b1064e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x93c22f...ff9581` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x95ef3f...4b0a78` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x9bf839...51612b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xa1189a...279672` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xac9788...3a4b29` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xada24c...0160a1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xbd3bd9...8cfad8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xbfc452...1d3607` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xc49874...170c22` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x19647d...2b0ed4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x19b683...54d663` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x1d3773...8bfc1b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x32d02f...ad2b55` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x33531b...aacaaf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x34bc1b...c71406` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x3a2932...ce2492` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x45e5f2...27c218` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x4a41eb...aae41c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x4d4673...a87bfe` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x64b005...6b8e02` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x6a7cdd...acd6f2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x77ab29...06cbb0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x88867b...7068e4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x8c7d30...1ebb08` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0xb8ddaf...3fa61f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0xbd3bd9...8cfad8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0xbd6aba...dfb5df` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0xe96526...008768` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0xf4efdb...1e38c7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0x108dfe...4cc1fd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0x16ee1f...ed8ddd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0x199689...d492bc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0x2ade4e...006807` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0x3252da...c74f09` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0x5162f2...28ff2d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0x5e7902...d0731b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0x7e9733...65f624` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0x8015d2...a63d2d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0xa176d2...3da513` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0xa3f50f...7a1c50` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0xaef41d...3b1bec` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0xc825c1...cbe822` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0xd413b4...b60a9f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0xf52804...8f7ab9` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

- No persisted address-book scope analysis is available.

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 37 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 167 |

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
