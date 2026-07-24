# Agentic Audit Brief: iZUMi Finance

## Export Authority

- Production state: **blocked no audit authority**
- Raw selected rows: 0 across 0 audit(s)
- Eligible audit results: 0 (0 matched; 0 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e40c73181a386361babecc6895e0f6c5587548f92814db09f88491f8b4a38d92`

## Project Overview

- Project: iZUMi Finance (`izumi-finance`)
- Website: [https://izumi.finance/home](https://izumi.finance/home)
- Lifecycle: unknown
- Generated: 2026-07-24T14:10:00.000Z
- Pipeline run: brief-deployer-expansion-all-20260724-v1
- Chains: arbitrum, aurora, base, blast, bsc, cronos, ethereum, kava, linea, manta-pacific, mantle, mode, polygon, scroll, zklink-nova, zksync-era
- Contract surface: 222 unique implementations (405 raw deployments)
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
- Outside the address book: 221 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 12
- Operational liveness: not_applicable; 0/0 eligible owned address-book contracts resolved. Deployed-live counts are withheld from coverage.
- All block-explorer-verified implementations audited (incl. non-live): 0/38
- Verified + Unaudited implementations: 38
- Verified by bytecode match: 0
- Unverified implementations: 184
- Unique implementations: 222
- Raw deployments: 405
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
| ArbitrumLiquidityManagerAccessControl | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x19647d5f84308ee780cc5e3da6e4aee8e12b0ed4` | ⚠️ Unaudited |
| ArbitrumNonfungiblePositionManagerAccessControl | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x77c2c2ece8f323abb6753b85d6b71c82039bfb17` | ⚠️ Unaudited |
| Box | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 6 deployments: ethereum `0x34bc1b87f60e0a30c0e24fd7abada70436c71406`; bsc `0x05dcaf89dfa5a09d832ac4e7fe01f75e82643f60`; bsc `0xa7b45d3546b736b04cf80aa5dd10d46c38e83068`; polygon `0x14323afbc2b82fe58f0d9c203830ee969b4d1be2`; arbitrum `0x032b241de86a8660f1ae0691a4760b426ea246d7`; arbitrum `0x3ef68d3f7664b2805d4e88381b64868a56f88bc4` | ⚠️ Unaudited |
| DynamicRange | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x80d7ef6767bc99520a74592afdd0c2a3b1b30f4c` | ⚠️ Unaudited |
| FixRange | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 4 deployments: bsc `0x1b8c940be8a5a9f1abd9c24ea337978f44376ae7`; bsc `0x50e024bd504f066fd7f343d6d048f4bd97b1064e`; bsc `0xada24c4d35252001dd0947570e85de01650160a1`; bsc `0xc4987497deddd529e689809ad213cc7645170c22` | ⚠️ Unaudited |
| FlashModule | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 10 deployments: ethereum `0x110de362cc436d7f54210f96b8c7652c2617887d`; bsc `0x110de362cc436d7f54210f96b8c7652c2617887d`; bsc `0x77ab297da4f3667059ef0c32f5bc657f1006cbb0`; bsc `0x79d175ef5fbe31b5d84b3ee359fcbbb466153e39`; polygon `0x2db0afd0045f3518c77ec6591a542e326befd3d7`; manta-pacific `0xbd6aba1ef82a4cd6e15cb05e95f433ef48dfb5df`; mode `0xbd6aba1ef82a4cd6e15cb05e95f433ef48dfb5df`; arbitrum `0x2c6df0fdbce9d2ded2b52a117126f2dc991f770f`; arbitrum `0x4a41ebea62e7ab70413356d30df73ca803aae41c`; arbitrum `0xbd6aba1ef82a4cd6e15cb05e95f433ef48dfb5df` | ⚠️ Unaudited |
| GnosisSafeL2 | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | scroll | unit-243215 | `0x87cc9dcafe74a3cf333f0ea7bc56e52aecf64e14` | ⚠️ Unaudited |
| iZiSwapClassicFactory | registry | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | 4 deployments: base `0xbd3bd95529e0784ad973fd14928eedf3678cfad8`; base `0xd7de110bd452aab96608ac3750c3730a17993de0`; linea `0x156d8a0be25fa232bb637fc76255bcd00deae9e9`; linea `0xcfd8a067e1fa03474e79be646c5f6b6a27847399` | ⚠️ Unaudited |
| iZiSwapClassicRouter02 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 4 deployments: base `0x93c22fbeff4448f2fb6e432579b0638838ff9581`; base `0xcfd8a067e1fa03474e79be646c5f6b6a27847399`; linea `0xad1f11fbb288cd13819ccb9397e59faab4cdc16f`; linea `0xe78e7447223aaed59301b44513d1d3a892ecf212` | ⚠️ Unaudited |
| iZiSwapFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 14 deployments: ethereum `0x1502d025bfa624469892289d45c0352997251728`; bsc `0x1502d025bfa624469892289d45c0352997251728`; bsc `0x4a41ebea62e7ab70413356d30df73ca803aae41c`; bsc `0x6a7cdd0cc87ec02ed85c196e57babe1bc0acd6f2`; bsc `0x93bb94a0d5269cb437a1f71ff3a77ab753844422`; bsc `0xd7de110bd452aab96608ac3750c3730a17993de0`; polygon `0x3ef68d3f7664b2805d4e88381b64868a56f88bc4`; polygon `0xca7e21764cd8f7c1ec40e651e25da68aed096037`; base `0x8c7d3063579bdb0b90997e18a770eae32e1ebb08`; mode `0x8c7d3063579bdb0b90997e18a770eae32e1ebb08`; arbitrum `0x14323afbc2b82fe58f0d9c203830ee969b4d1be2`; arbitrum `0x45e5f26451cdb01b0fa1f8582e0aad9a6f27c218`; arbitrum `0x8c7d3063579bdb0b90997e18a770eae32e1ebb08`; arbitrum `0xcfd8a067e1fa03474e79be646c5f6b6a27847399` | ⚠️ Unaudited |
| izumiToken | token | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9ad37205d608b8b219e6a2573f922094cec5c200` | ⚠️ Unaudited |
| LimitOrderManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 15 deployments: ethereum `0x02f55d53dce23b4aa962cc68b0f685f26143bdb2`; bsc `0x19647d5f84308ee780cc5e3da6e4aee8e12b0ed4`; bsc `0x19b683a2f45012318d9b2ae1280d68d3ec54d663`; bsc `0x1cb60033f61e4fc171c963f0d2d3f63ece24319c`; bsc `0x45e5f26451cdb01b0fa1f8582e0aad9a6f27c218`; bsc `0x72fafc28bff27bb7a5cf70585ca1a5185ad2f201`; bsc `0x9bf8399c9f5b777cba2052f83e213ff59e51612b`; polygon `0x25c030116feb2e7bba054b9de0915e5f51b03e31`; polygon `0x34bc1b87f60e0a30c0e24fd7abada70436c71406`; manta-pacific `0x02f55d53dce23b4aa962cc68b0f685f26143bdb2`; arbitrum `0x1502d025bfa624469892289d45c0352997251728`; arbitrum `0x156d8a0be25fa232bb637fc76255bcd00deae9e9`; arbitrum `0xca7e21764cd8f7c1ec40e651e25da68aed096037`; linea `0x1502d025bfa624469892289d45c0352997251728`; linea `0x25c030116feb2e7bba054b9de0915e5f51b03e31` | ⚠️ Unaudited |
| LimitOrderManager | governance | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | `0x1502d025bfa624469892289d45c0352997251728` | ⚠️ Unaudited |
| LimitOrderModule | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | 10 deployments: ethereum `0x8c7d3063579bdb0b90997e18a770eae32e1ebb08`; bsc `0x32d02fc7722e81f6ac60b87ea8b4b63a52ad2b55`; bsc `0x344add21b136b09051fb061881ec7971c92ce7f7`; bsc `0xb8ddafe7385a962a4515821248368823e93fa61f`; polygon `0x02f55d53dce23b4aa962cc68b0f685f26143bdb2`; manta-pacific `0xe96526e92ee57bbd468da1721987aa988b008768`; mode `0xe96526e92ee57bbd468da1721987aa988b008768`; arbitrum `0x04830cfced9772b8acbaf76cfc7a630ad82c9148`; arbitrum `0x6a7cdd0cc87ec02ed85c196e57babe1bc0acd6f2`; arbitrum `0xe96526e92ee57bbd468da1721987aa988b008768` | ⚠️ Unaudited |
| LimitOrderWithSwapManager | governance | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 6 deployments: bsc `0x25fbb4ffb88366162329fd6a92407726c92e6573`; polygon `0x1d377311b342633a970e71a787c50f83858bfc1b`; manta-pacific `0x2db0afd0045f3518c77ec6591a542e326befd3d7`; base `0x19b683a2f45012318d9b2ae1280d68d3ec54d663`; arbitrum `0x3a2932a74e511c9dc4cad60e06ee6d3690ce2492`; arbitrum `0xe78e7447223aaed59301b44513d1d3a892ecf212` | ⚠️ Unaudited |
| LiquidityManager | governance | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 23 deployments: ethereum `0x19b683a2f45012318d9b2ae1280d68d3ec54d663`; bsc `0x33531bdbfe34fa6fd5963d0423f7699775aacaaf`; bsc `0x3a2932a74e511c9dc4cad60e06ee6d3690ce2492`; bsc `0x4ed4a55e2f460b81e77649b5508e3587d81f1bcb`; bsc `0x65b4f633215f541875a505d25ba94ff996f69397`; bsc `0x93c22fbeff4448f2fb6e432579b0638838ff9581`; bsc `0xac9788cfea201950db91d7db6f28c448cf3a4b29`; bsc `0xbf55ef05412f1528dbd96ed9e7181f87d8c9f453`; bsc `0xd55a071b196ae48466873550de82e2801f6d7541`; bsc `0xe4a0b241d8345d86fb140d40c87c5fbdd685b9dd`; bsc `0xfb653d488dd7685ca5b7da9f965ed639644f5caf`; polygon `0x1cb60033f61e4fc171c963f0d2d3f63ece24319c`; polygon `0x33531bdbfe34fa6fd5963d0423f7699775aacaaf`; manta-pacific `0x19b683a2f45012318d9b2ae1280d68d3ec54d663`; mantle `0x1502d025bfa624469892289d45c0352997251728`; mantle `0x93c22fbeff4448f2fb6e432579b0638838ff9581`; base `0x110de362cc436d7f54210f96b8c7652c2617887d`; mode `0x19b683a2f45012318d9b2ae1280d68d3ec54d663`; arbitrum `0x110de362cc436d7f54210f96b8c7652c2617887d`; arbitrum `0x611575ee1fbd4f7915d0eabcc518ed396ff78f0c`; arbitrum `0xad1f11fbb288cd13819ccb9397e59faab4cdc16f`; linea `0x110de362cc436d7f54210f96b8c7652c2617887d`; scroll `0x1502d025bfa624469892289d45c0352997251728` | ⚠️ Unaudited |
| LiquidityManager | governance | non_address_book | non_address_book_inventory (excluded) | 1 | linea | n/a | `0x1cb60033f61e4fc171c963f0d2d3f63ece24319c` | ⚠️ Unaudited |
| LiquidityModule | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | 8 deployments: ethereum `0xbd6aba1ef82a4cd6e15cb05e95f433ef48dfb5df`; bsc `0x88867bf3bb3321d8c7da71a8eab70680037068e4`; bsc `0xf42c48f971bdaa130573039b6c940212eeab8496`; bsc `0xf4efdb5a1e852f78e807fae7100b1d38351e38c7`; polygon `0x19b683a2f45012318d9b2ae1280d68d3ec54d663`; arbitrum `0x3f559139c2fc7b97ad6fe9b4d1f75149f551db18`; arbitrum `0x77ab297da4f3667059ef0c32f5bc657f1006cbb0`; arbitrum `0xf4efdb5a1e852f78e807fae7100b1d38351e38c7` | ⚠️ Unaudited |
| Locker | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 8 deployments: bsc `0x5c8e52aa151836875008f864ad837a4c2c33e2c6`; manta-pacific `0x1d377311b342633a970e71a787c50f83858bfc1b`; base `0x1cb60033f61e4fc171c963f0d2d3f63ece24319c`; mode `0xb8ddafe7385a962a4515821248368823e93fa61f`; arbitrum `0x795fa40387e5dbdb533ab6252562e27372b3c838`; linea `0x93c22fbeff4448f2fb6e432579b0638838ff9581`; blast `0x89b8660780a694b993be78e9ea4944664ceaf263`; blast `0xea5a9ef206621c228bf06a5f21567a6b46e3187d` | ⚠️ Unaudited |
| MultiContractCall | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xa1189a420662105bef5be444b8b1e0a7d8279672` | ⚠️ Unaudited |
| Quoter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 16 deployments: ethereum `0x3ef68d3f7664b2805d4e88381b64868a56f88bc4`; bsc `0x0e79c263eebc37977038f26fb86dfa84636cfe84`; bsc `0x12a76434182c8caf7856ce1410cd8abfc5e2639f`; bsc `0x1d377311b342633a970e71a787c50f83858bfc1b`; bsc `0x2db0afd0045f3518c77ec6591a542e326befd3d7`; bsc `0x41be134611a6039aea79029050f164bc50a6e597`; bsc `0x64b005ed986ed5d6aed7125f49e61083c46b8e02`; bsc `0xf3409631f87b0bc9bd6e9d9fd26d31badaa21880`; polygon `0x04830cfced9772b8acbaf76cfc7a630ad82c9148`; polygon `0xe6805638db944ea605e774e72c6f0d15fb6a1347`; manta-pacific `0x33531bdbfe34fa6fd5963d0423f7699775aacaaf`; base `0x2db0afd0045f3518c77ec6591a542e326befd3d7`; arbitrum `0x02f55d53dce23b4aa962cc68b0f685f26143bdb2`; arbitrum `0x25c030116feb2e7bba054b9de0915e5f51b03e31`; arbitrum `0x96539f87ca176c9f6180d65bc4c10fca264ae4a5`; linea `0x2db0afd0045f3518c77ec6591a542e326befd3d7` | ⚠️ Unaudited |
| Quoter | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | linea | n/a | `0xe6805638db944ea605e774e72c6f0d15fb6a1347` | ⚠️ Unaudited |
| QuoterWithLim | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 11 deployments: ethereum `0x33531bdbfe34fa6fd5963d0423f7699775aacaaf`; bsc `0xdce9a4acc59e69eccc0cda2e82fe601fdb726542`; polygon `0x2c6df0fdbce9d2ded2b52a117126f2dc991f770f`; polygon `0xe4a0b241d8345d86fb140d40c87c5fbdd685b9dd`; manta-pacific `0x34bc1b87f60e0a30c0e24fd7abada70436c71406`; base `0x3ef68d3f7664b2805d4e88381b64868a56f88bc4`; arbitrum `0x1d377311b342633a970e71a787c50f83858bfc1b`; arbitrum `0x2db0afd0045f3518c77ec6591a542e326befd3d7`; arbitrum `0x64b005ed986ed5d6aed7125f49e61083c46b8e02`; linea `0x3ef68d3f7664b2805d4e88381b64868a56f88bc4`; linea `0xe4a0b241d8345d86fb140d40c87c5fbdd685b9dd` | ⚠️ Unaudited |
| Swap | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | `0xbd3bd95529e0784ad973fd14928eedf3678cfad8` | ⚠️ Unaudited |
| Swap | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | `0xedf2021f41abcfe2dea4427e1b61f4d0aa5aa4b8` | ⚠️ Unaudited |
| Swap | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 20 deployments: ethereum `0x2db0afd0045f3518c77ec6591a542e326befd3d7`; bsc `0x032b241de86a8660f1ae0691a4760b426ea246d7`; bsc `0x04830cfced9772b8acbaf76cfc7a630ad82c9148`; bsc `0x34bc1b87f60e0a30c0e24fd7abada70436c71406`; bsc `0x3ef68d3f7664b2805d4e88381b64868a56f88bc4`; bsc `0x5b60e57b40239ac61cab644c43d14b1006995725`; bsc `0x5f6af64f2fe0ae00d20932b6698aab89afb847eb`; bsc `0x73ecb5dba4557e06ab3664aa00836ee2b1eed298`; polygon `0x032b241de86a8660f1ae0691a4760b426ea246d7`; polygon `0x3f559139c2fc7b97ad6fe9b4d1f75149f551db18`; polygon `0xb8ddafe7385a962a4515821248368823e93fa61f`; manta-pacific `0x3ef68d3f7664b2805d4e88381b64868a56f88bc4`; mantle `0x1d377311b342633a970e71a787c50f83858bfc1b`; mantle `0x25c030116feb2e7bba054b9de0915e5f51b03e31`; base `0x02f55d53dce23b4aa962cc68b0f685f26143bdb2`; mode `0x3ef68d3f7664b2805d4e88381b64868a56f88bc4`; arbitrum `0x19b683a2f45012318d9b2ae1280d68d3ec54d663`; arbitrum `0x1cb60033f61e4fc171c963f0d2d3f63ece24319c`; arbitrum `0xd7de110bd452aab96608ac3750c3730a17993de0`; linea `0x02f55d53dce23b4aa962cc68b0f685f26143bdb2` | ⚠️ Unaudited |
| Swap | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | `0x01fdea353849ca29f778b2663bcaca1d191bed0e` | ⚠️ Unaudited |
| Swap | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | linea | n/a | `0x032b241de86a8660f1ae0691a4760b426ea246d7` | ⚠️ Unaudited |
| SwapProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 4 deployments: ethereum `0x04830cfced9772b8acbaf76cfc7a630ad82c9148`; bsc `0xade484700fefc93960c479d38a4a1782f487893c`; bsc `0xce326a82913eab09f7ec899c4508cbe0e6526a74`; arbitrum `0xe4a0b241d8345d86fb140d40c87c5fbdd685b9dd` | ⚠️ Unaudited |
| SwapProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x2c6df0fdbce9d2ded2b52a117126f2dc991f770f` | ⚠️ Unaudited |
| SwapProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | `0x61a41182cd6e94f2a026ae3c0d1b73b1aa579aea` | ⚠️ Unaudited |
| SwapProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | `0xf2bd6078d51576b5c8d7e80af3c4e2292e916985` | ⚠️ Unaudited |
| SwapProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | bsc | n/a | `0xf9db6bc7f3560db161873385f70414084379b21a` | ⚠️ Unaudited |
| SwapRouter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 5 deployments: bsc `0x816836e3f9eca6f8a7cc8cce9e330d1451c342d7`; polygon `0xf42c48f971bdaa130573039b6c940212eeab8496`; base `0x4a41ebea62e7ab70413356d30df73ca803aae41c`; arbitrum `0x1b8c940be8a5a9f1abd9c24ea337978f44376ae7`; linea `0x9bf8399c9f5b777cba2052f83e213ff59e51612b` | ⚠️ Unaudited |
| SwapX2YModule | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | 16 deployments: ethereum `0xf4efdb5a1e852f78e807fae7100b1d38351e38c7`; bsc `0x2c6df0fdbce9d2ded2b52a117126f2dc991f770f`; bsc `0x77c2c2ece8f323abb6753b85d6b71c82039bfb17`; bsc `0xe96526e92ee57bbd468da1721987aa988b008768`; polygon `0x110de362cc436d7f54210f96b8c7652c2617887d`; polygon `0x32d02fc7722e81f6ac60b87ea8b4b63a52ad2b55`; polygon `0x4d4673745aac664efb9758fdd571f40d78a87bfe`; polygon `0x8c7d3063579bdb0b90997e18a770eae32e1ebb08`; polygon `0xbd6aba1ef82a4cd6e15cb05e95f433ef48dfb5df`; polygon `0xe96526e92ee57bbd468da1721987aa988b008768`; polygon `0xf4efdb5a1e852f78e807fae7100b1d38351e38c7`; manta-pacific `0x4d4673745aac664efb9758fdd571f40d78a87bfe`; mode `0x4d4673745aac664efb9758fdd571f40d78a87bfe`; arbitrum `0x33531bdbfe34fa6fd5963d0423f7699775aacaaf`; arbitrum `0x4d4673745aac664efb9758fdd571f40d78a87bfe`; arbitrum `0x88867bf3bb3321d8c7da71a8eab70680037068e4` | ⚠️ Unaudited |
| SwapY2XModule | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 10 deployments: ethereum `0xe96526e92ee57bbd468da1721987aa988b008768`; bsc `0x14323afbc2b82fe58f0d9c203830ee969b4d1be2`; bsc `0xbd6aba1ef82a4cd6e15cb05e95f433ef48dfb5df`; bsc `0xbf8f8ef2d2a534773c61682ea7cf5323a324b188`; polygon `0x1502d025bfa624469892289d45c0352997251728`; manta-pacific `0x32d02fc7722e81f6ac60b87ea8b4b63a52ad2b55`; mode `0x32d02fc7722e81f6ac60b87ea8b4b63a52ad2b55`; arbitrum `0x32d02fc7722e81f6ac60b87ea8b4b63a52ad2b55`; arbitrum `0x34bc1b87f60e0a30c0e24fd7abada70436c71406`; arbitrum `0xb8ddafe7385a962a4515821248368823e93fa61f` | ⚠️ Unaudited |
| UniversalSwapRouter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 2 deployments: base `0x12a76434182c8caf7856ce1410cd8abfc5e2639f`; base `0xad1f11fbb288cd13819ccb9397e59faab4cdc16f` | ⚠️ Unaudited |
| veiZi | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0xb56a454d8dac2ad4cb82337887717a2a427fcd00` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (184)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x02f55d53dce23b4aa962cc68b0f685f26143bdb2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x0d77e48e4618ea4ce92ce32b345469dbcd3ed61d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x0de540932dc28b35756029dacb48e5835d5f13a5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x10bba92db5b4116d2e98a0827254d9d56e11fcd8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x1eaa949444f5a4bee40d25d31039ecddda0eeb19` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x20804c62079569e1491fa948db005f93fa9a383d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x25c030116feb2e7bba054b9de0915e5f51b03e31` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x294ad74d994d9a59689529cf911bb25f5cf2c479` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x2e2abbfb7913669b930a4ecfe130863c524a8810` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x33817f7e0d615bb494d1881fad9643457ce06992` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x37a75eaca0d88317561d5e0db83a07cf8deb2a45` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x3cf497013c92cd550c9960a07a2909bce7702c75` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x3dc5cb8819878f082d475867beb3bf523f91e941` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x3f559139c2fc7b97ad6fe9b4d1f75149f551db18` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x41432298d3f35be721bd05680aad4fc8e91e1ef0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x42180b57cfe9da10ef0d8278ab26d21aa3179afd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x4b0ec52a3e0f52d936046232cd8b96a6895d0bb7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x4d4673745aac664efb9758fdd571f40d78a87bfe` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x611575ee1fbd4f7915d0eabcc518ed396ff78f0c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x759424dd2d409b4d6b39a83199177d07dc257ad7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x7cbf7b96a7069ba384e10ccb4f556debab9c89f0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x7eac0539dc9c0d76454bff9be3538bc4deecd376` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x81e3ee96fefd3b7564626aa8b019de9fc9fc0f40` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x84fbff47cb1f54966dde25f217a0e6b04880c099` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x85e2d3fea3433b1cd3d255c94fa9fba6d5a13ed0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x8c7d3063579bdb0b90997e18a770eae32e1ebb08` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x98fcdaa09f115d176ed2eb0f681b66f002320a8d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xa29e33cb38ed47e67064ba1a088795c92563093c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xa85e50403cf62519d1f35c2ad655911c7a66623d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xad1f11fbb288cd13819ccb9397e59faab4cdc16f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xb922af73b899a4f0b9761b0c4407f1250fdd05be` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xc32daded402f1b8d71652b61afefa74b71aeb34c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xca7e21764cd8f7c1ec40e651e25da68aed096037` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xcd65d409fb1a0aff0ef86d2c5189b169d053164c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xcf680aef8fb265bde3a2918b17a4aabb3e8d0399` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xcfd8a067e1fa03474e79be646c5f6b6a27847399` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xd0bbdcd070387c74d7d06057098b9f04d713dbb2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xda6dbe8951523391c9f2d1e6cb91fcc5a7b7fbe2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xde547f5f8ac340872ac184e5d76c09436d0496c8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xe4ebc5c7ee8d1a3d4f870d9907cd25edd25c51a6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xe6805638db944ea605e774e72c6f0d15fb6a1347` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x19647d5f84308ee780cc5e3da6e4aee8e12b0ed4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x3a2932a74e511c9dc4cad60e06ee6d3690ce2492` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x45e5f26451cdb01b0fa1f8582e0aad9a6f27c218` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x4a41ebea62e7ab70413356d30df73ca803aae41c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x611575ee1fbd4f7915d0eabcc518ed396ff78f0c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x6a7cdd0cc87ec02ed85c196e57babe1bc0acd6f2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x77ab297da4f3667059ef0c32f5bc657f1006cbb0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x77c2c2ece8f323abb6753b85d6b71c82039bfb17` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xbf8f8ef2d2a534773c61682ea7cf5323a324b188` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | manta-pacific | n/a | `0x3f559139c2fc7b97ad6fe9b4d1f75149f551db18` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | manta-pacific | n/a | `0x8c7d3063579bdb0b90997e18a770eae32e1ebb08` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | manta-pacific | n/a | `0xf4efdb5a1e852f78e807fae7100b1d38351e38c7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | zksync-era | n/a | `0x43ff8a10b6678462265b00286796e88f03c8839a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | zksync-era | n/a | `0x483fde31bce3dcc168e23a870831b50ce2ccd1f1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | zksync-era | n/a | `0x6ac81d4c43c86c8dbd4842c1eb0fd1a1c2c16b97` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | zksync-era | n/a | `0x943ac2310d9bc703d6ab5e5e76876e212100f894` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | zksync-era | n/a | `0xe36caa16d78ef3233848a542d437c1c540ca8149` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | kava | n/a | 8 deployments: cronos `0x33531bdbfe34fa6fd5963d0423f7699775aacaaf`; kava `0x078f712f038a95beea94f036cadb49188a90604b`; kava `0x1382628e018010035999a1ff330447a0751aa84f`; kava `0x19b683a2f45012318d9b2ae1280d68d3ec54d663`; kava `0x469a5066578e22a1222cc78b2ccaca602db6bb4a`; kava `0x98a3a18583138474aedd2ceec034cba1fa783613`; kava `0xe9635693b7606f1914c0cd698065ec84267a62a1`; kava `0xfe1c507be86f977b61d12d1da3c95d0deeb1b86a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x01fdea353849ca29f778b2663bcaca1d191bed0e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x02f55d53dce23b4aa962cc68b0f685f26143bdb2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x032b241de86a8660f1ae0691a4760b426ea246d7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x19b683a2f45012318d9b2ae1280d68d3ec54d663` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x1b8c940be8a5a9f1abd9c24ea337978f44376ae7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x1cb60033f61e4fc171c963f0d2d3f63ece24319c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x2db0afd0045f3518c77ec6591a542e326befd3d7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x32d02fc7722e81f6ac60b87ea8b4b63a52ad2b55` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x33531bdbfe34fa6fd5963d0423f7699775aacaaf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x34bc1b87f60e0a30c0e24fd7abada70436c71406` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x35f106cca448294e1efa8d0358cd4447252b7345` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x3a2932a74e511c9dc4cad60e06ee6d3690ce2492` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x3ef68d3f7664b2805d4e88381b64868a56f88bc4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x3f559139c2fc7b97ad6fe9b4d1f75149f551db18` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x45e5f26451cdb01b0fa1f8582e0aad9a6f27c218` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x4a41ebea62e7ab70413356d30df73ca803aae41c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x4d4673745aac664efb9758fdd571f40d78a87bfe` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x50e024bd504f066fd7f343d6d048f4bd97b1064e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x611575ee1fbd4f7915d0eabcc518ed396ff78f0c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x64b005ed986ed5d6aed7125f49e61083c46b8e02` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x6a7cdd0cc87ec02ed85c196e57babe1bc0acd6f2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x77ab297da4f3667059ef0c32f5bc657f1006cbb0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x88867bf3bb3321d8c7da71a8eab70680037068e4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x8c7d3063579bdb0b90997e18a770eae32e1ebb08` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x96539f87ca176c9f6180d65bc4c10fca264ae4a5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0xada24c4d35252001dd0947570e85de01650160a1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0xb8ddafe7385a962a4515821248368823e93fa61f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0xbd3bd95529e0784ad973fd14928eedf3678cfad8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0xbd6aba1ef82a4cd6e15cb05e95f433ef48dfb5df` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0xca7e21764cd8f7c1ec40e651e25da68aed096037` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0xe4a0b241d8345d86fb140d40c87c5fbdd685b9dd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0xe6805638db944ea605e774e72c6f0d15fb6a1347` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0xe96526e92ee57bbd468da1721987aa988b008768` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0xf4efdb5a1e852f78e807fae7100b1d38351e38c7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x156d8a0be25fa232bb637fc76255bcd00deae9e9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x1d377311b342633a970e71a787c50f83858bfc1b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x25c030116feb2e7bba054b9de0915e5f51b03e31` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x32d02fc7722e81f6ac60b87ea8b4b63a52ad2b55` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x33531bdbfe34fa6fd5963d0423f7699775aacaaf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x344add21b136b09051fb061881ec7971c92ce7f7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x45e5f26451cdb01b0fa1f8582e0aad9a6f27c218` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x4d4673745aac664efb9758fdd571f40d78a87bfe` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x6a7cdd0cc87ec02ed85c196e57babe1bc0acd6f2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x77ab297da4f3667059ef0c32f5bc657f1006cbb0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x77c2c2ece8f323abb6753b85d6b71c82039bfb17` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x9bf8399c9f5b777cba2052f83e213ff59e51612b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xbd6aba1ef82a4cd6e15cb05e95f433ef48dfb5df` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xbf8f8ef2d2a534773c61682ea7cf5323a324b188` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xe96526e92ee57bbd468da1721987aa988b008768` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xf4efdb5a1e852f78e807fae7100b1d38351e38c7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mode | n/a | `0x02f55d53dce23b4aa962cc68b0f685f26143bdb2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mode | n/a | `0x110de362cc436d7f54210f96b8c7652c2617887d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mode | n/a | `0x2db0afd0045f3518c77ec6591a542e326befd3d7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mode | n/a | `0x33531bdbfe34fa6fd5963d0423f7699775aacaaf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mode | n/a | `0x34bc1b87f60e0a30c0e24fd7abada70436c71406` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mode | n/a | `0x3f559139c2fc7b97ad6fe9b4d1f75149f551db18` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mode | n/a | `0x611575ee1fbd4f7915d0eabcc518ed396ff78f0c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mode | n/a | `0xf42c48f971bdaa130573039b6c940212eeab8496` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mode | n/a | `0xf4efdb5a1e852f78e807fae7100b1d38351e38c7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x12a76434182c8caf7856ce1410cd8abfc5e2639f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x249b559c94cb79032bd724e8de135860cc37aa88` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x35f106cca448294e1efa8d0358cd4447252b7345` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x50e024bd504f066fd7f343d6d048f4bd97b1064e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x93c22fbeff4448f2fb6e432579b0638838ff9581` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x95ef3f53c2731043697346a63ad20868954b0a78` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x9bf8399c9f5b777cba2052f83e213ff59e51612b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xa1189a420662105bef5be444b8b1e0a7d8279672` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xac9788cfea201950db91d7db6f28c448cf3a4b29` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xada24c4d35252001dd0947570e85de01650160a1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xbd3bd95529e0784ad973fd14928eedf3678cfad8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xbfc452f0812450bc8fa96bc33ffe3c7e291d3607` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xc4987497deddd529e689809ad213cc7645170c22` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x19647d5f84308ee780cc5e3da6e4aee8e12b0ed4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x19b683a2f45012318d9b2ae1280d68d3ec54d663` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x1d377311b342633a970e71a787c50f83858bfc1b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x32d02fc7722e81f6ac60b87ea8b4b63a52ad2b55` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x33531bdbfe34fa6fd5963d0423f7699775aacaaf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x34bc1b87f60e0a30c0e24fd7abada70436c71406` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x3a2932a74e511c9dc4cad60e06ee6d3690ce2492` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x45e5f26451cdb01b0fa1f8582e0aad9a6f27c218` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x4a41ebea62e7ab70413356d30df73ca803aae41c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x4d4673745aac664efb9758fdd571f40d78a87bfe` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x64b005ed986ed5d6aed7125f49e61083c46b8e02` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x6a7cdd0cc87ec02ed85c196e57babe1bc0acd6f2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x77ab297da4f3667059ef0c32f5bc657f1006cbb0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x88867bf3bb3321d8c7da71a8eab70680037068e4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x8c7d3063579bdb0b90997e18a770eae32e1ebb08` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0xb8ddafe7385a962a4515821248368823e93fa61f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0xbd3bd95529e0784ad973fd14928eedf3678cfad8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0xbd6aba1ef82a4cd6e15cb05e95f433ef48dfb5df` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0xe96526e92ee57bbd468da1721987aa988b008768` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0xf4efdb5a1e852f78e807fae7100b1d38351e38c7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0x108dfe525bd3eb431f4be198586d7970f84cc1fd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0x16ee1f1bd7e7e206d127bf7b45a6f7e17ded8ddd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0x1996891332a209f9914b1645a4749e924bd492bc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0x2ade4e559d057b225cf2783311350470a5006807` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0x3252da4d17dd11e0326d82497da26ae404c74f09` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0x5162f29e9626cf7186ec40ab97d92230b428ff2d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0x5e7902adf0ea0ff827683cc1d431f740cad0731b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0x7e97337af2c13ccc132ead0bb71983a24065f624` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0x8015d240ed4ba76c6ab8ffb410b1fb0b83a63d2d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0xa176d20069a3c49afb661ea0017bed1e5e3da513` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0xa3f50feba40dd3e884688c0af72c4054d07a1c50` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0xaef41d6a8f02400096388cc8c234aaa3d43b1bec` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0xc825c19b35d6f03d473e1ac6c83e58735bcbe822` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0xd413b415bf8449d6db8238826579647bfdb60a9f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | blast | n/a | `0xf52804a96a6a640837ffa90f2c0f5484938f7ab9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | scroll | n/a | `0x02f55d53dce23b4aa962cc68b0f685f26143bdb2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | scroll | n/a | `0x032b241de86a8660f1ae0691a4760b426ea246d7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | scroll | n/a | `0x19b683a2f45012318d9b2ae1280d68d3ec54d663` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | scroll | n/a | `0x1cb60033f61e4fc171c963f0d2d3f63ece24319c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | scroll | n/a | `0x25c030116feb2e7bba054b9de0915e5f51b03e31` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | scroll | n/a | `0x2db0afd0045f3518c77ec6591a542e326befd3d7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | scroll | n/a | `0x32d02fc7722e81f6ac60b87ea8b4b63a52ad2b55` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | scroll | n/a | `0x33531bdbfe34fa6fd5963d0423f7699775aacaaf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | scroll | n/a | `0x34bc1b87f60e0a30c0e24fd7abada70436c71406` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | scroll | n/a | `0x3ef68d3f7664b2805d4e88381b64868a56f88bc4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | scroll | n/a | `0x4d4673745aac664efb9758fdd571f40d78a87bfe` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | scroll | n/a | `0x611575ee1fbd4f7915d0eabcc518ed396ff78f0c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | scroll | n/a | `0x8c7d3063579bdb0b90997e18a770eae32e1ebb08` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | scroll | n/a | `0xbd6aba1ef82a4cd6e15cb05e95f433ef48dfb5df` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | scroll | n/a | `0xca7e21764cd8f7c1ec40e651e25da68aed096037` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | scroll | n/a | `0xe6805638db944ea605e774e72c6f0d15fb6a1347` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | scroll | n/a | `0xe96526e92ee57bbd468da1721987aa988b008768` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | scroll | n/a | `0xf4efdb5a1e852f78e807fae7100b1d38351e38c7` | ❓ Unverified |

## Deployer Expansion Inventory

These rows are additive inventory from `project_contracts.discovery_source=deployer_expansion`; they do not change scope matching, coverage, or logic topography in this brief.

- Source: `project_contracts.discovery_source=deployer_expansion`
- Decision run: `deployer-candidate-production-20260712`
- Total contracts: 335
- Live contracts: 0
- Unknown liveness contracts: 335
- Source-verified contracts: 169
- Currently scope-matched contracts retained as-is: 0
- Classification counts: candidate review=6, contamination review=8, source verified unclassified=155, unverified unclassified=166

Showing first 200 of 335 contracts. The complete deployer expansion list is in `brief.json`.

| Classification | Contract | Address-Book Class | Role | Liveness | Source | Decision | Deployer |
|---|---|---|---|---|---|---|---|
| candidate review | FlashModule<br>`0xbd6aba1ef82a4cd6e15cb05e95f433ef48dfb5df` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xc802a5a140224ed72e7c821f637c1e5759744045` |
| candidate review | iZiSwapFactory<br>`0x8c7d3063579bdb0b90997e18a770eae32e1ebb08` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xc802a5a140224ed72e7c821f637c1e5759744045` |
| candidate review | LimitOrderModule<br>`0xe96526e92ee57bbd468da1721987aa988b008768` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xc802a5a140224ed72e7c821f637c1e5759744045` |
| candidate review | Locker<br>`0xb8ddafe7385a962a4515821248368823e93fa61f` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xc802a5a140224ed72e7c821f637c1e5759744045` |
| candidate review | SwapX2YModule<br>`0x4d4673745aac664efb9758fdd571f40d78a87bfe` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xc802a5a140224ed72e7c821f637c1e5759744045` |
| candidate review | SwapY2XModule<br>`0x32d02fc7722e81f6ac60b87ea8b4b63a52ad2b55` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0xc802a5a140224ed72e7c821f637c1e5759744045` |
| contamination review | MultiContractCall<br>`0xa1189a420662105bef5be444b8b1e0a7d8279672` | non_address_book | unknown | unknown | verified | n/a | `0xc802a5a140224ed72e7c821f637c1e5759744045` |
| contamination review | SwapY2XModule<br>`0x14323afbc2b82fe58f0d9c203830ee969b4d1be2` | non_address_book | unknown | unknown | verified | n/a | `0xc802a5a140224ed72e7c821f637c1e5759744045` |
| contamination review | LiquidityModule<br>`0x19b683a2f45012318d9b2ae1280d68d3ec54d663` | non_address_book | unknown | unknown | verified | n/a | `0xc802a5a140224ed72e7c821f637c1e5759744045` |
| contamination review | SwapX2YModule<br>`0x110de362cc436d7f54210f96b8c7652c2617887d` | non_address_book | unknown | unknown | verified | n/a | `0xc802a5a140224ed72e7c821f637c1e5759744045` |
| contamination review | iZiSwapClassicRouter02<br>`0x93c22fbeff4448f2fb6e432579b0638838ff9581` | non_address_book | unknown | unknown | verified | n/a | `0xc802a5a140224ed72e7c821f637c1e5759744045` |
| contamination review | ArbitrumLiquidityManagerAccessControl<br>`0x19647d5f84308ee780cc5e3da6e4aee8e12b0ed4` | non_address_book | unknown | unknown | verified | n/a | `0xc802a5a140224ed72e7c821f637c1e5759744045` |
| contamination review | ArbitrumNonfungiblePositionManagerAccessControl<br>`0x77c2c2ece8f323abb6753b85d6b71c82039bfb17` | non_address_book | unknown | unknown | verified | n/a | `0xc802a5a140224ed72e7c821f637c1e5759744045` |
| contamination review | SwapRouter<br>`0x1b8c940be8a5a9f1abd9c24ea337978f44376ae7` | non_address_book | unknown | unknown | verified | n/a | `0xc802a5a140224ed72e7c821f637c1e5759744045` |
| source verified unclassified | Box<br>`0x34bc1b87f60e0a30c0e24fd7abada70436c71406` | non_address_book | unknown | unknown | verified | n/a | `0xc802a5a140224ed72e7c821f637c1e5759744045` |
| source verified unclassified | FlashModule<br>`0x110de362cc436d7f54210f96b8c7652c2617887d` | non_address_book | unknown | unknown | verified | n/a | `0xc802a5a140224ed72e7c821f637c1e5759744045` |
| source verified unclassified | iZiSwapFactory<br>`0x1502d025bfa624469892289d45c0352997251728` | non_address_book | unknown | unknown | verified | n/a | `0xc802a5a140224ed72e7c821f637c1e5759744045` |
| source verified unclassified | LimitOrderManager<br>`0x02f55d53dce23b4aa962cc68b0f685f26143bdb2` | non_address_book | unknown | unknown | verified | n/a | `0xc802a5a140224ed72e7c821f637c1e5759744045` |
| source verified unclassified | LimitOrderModule<br>`0x8c7d3063579bdb0b90997e18a770eae32e1ebb08` | non_address_book | unknown | unknown | verified | n/a | `0xc802a5a140224ed72e7c821f637c1e5759744045` |
| source verified unclassified | LiquidityModule<br>`0xbd6aba1ef82a4cd6e15cb05e95f433ef48dfb5df` | non_address_book | unknown | unknown | verified | n/a | `0xc802a5a140224ed72e7c821f637c1e5759744045` |
| source verified unclassified | QuoterWithLim<br>`0x33531bdbfe34fa6fd5963d0423f7699775aacaaf` | non_address_book | unknown | unknown | verified | n/a | `0xc802a5a140224ed72e7c821f637c1e5759744045` |
| source verified unclassified | Swap<br>`0x2db0afd0045f3518c77ec6591a542e326befd3d7` | non_address_book | unknown | unknown | verified | n/a | `0xc802a5a140224ed72e7c821f637c1e5759744045` |
| source verified unclassified | SwapProxy<br>`0x04830cfced9772b8acbaf76cfc7a630ad82c9148` | non_address_book | unknown | unknown | verified | n/a | `0xc802a5a140224ed72e7c821f637c1e5759744045` |
| source verified unclassified | SwapX2YModule<br>`0xf4efdb5a1e852f78e807fae7100b1d38351e38c7` | non_address_book | unknown | unknown | verified | n/a | `0xc802a5a140224ed72e7c821f637c1e5759744045` |
| source verified unclassified | SwapY2XModule<br>`0xe96526e92ee57bbd468da1721987aa988b008768` | non_address_book | unknown | unknown | verified | n/a | `0xc802a5a140224ed72e7c821f637c1e5759744045` |
| source verified unclassified | Box<br>`0x05dcaf89dfa5a09d832ac4e7fe01f75e82643f60` | non_address_book | unknown | unknown | verified | n/a | `0xc802a5a140224ed72e7c821f637c1e5759744045` |
| source verified unclassified | Box<br>`0xa7b45d3546b736b04cf80aa5dd10d46c38e83068` | non_address_book | unknown | unknown | verified | n/a | `0xc802a5a140224ed72e7c821f637c1e5759744045` |
| source verified unclassified | DynamicRange<br>`0x80d7ef6767bc99520a74592afdd0c2a3b1b30f4c` | non_address_book | unknown | unknown | verified | n/a | `0xc802a5a140224ed72e7c821f637c1e5759744045` |
| source verified unclassified | FixRange<br>`0x1b8c940be8a5a9f1abd9c24ea337978f44376ae7` | non_address_book | unknown | unknown | verified | n/a | `0xc802a5a140224ed72e7c821f637c1e5759744045` |
| source verified unclassified | FixRange<br>`0x50e024bd504f066fd7f343d6d048f4bd97b1064e` | non_address_book | unknown | unknown | verified | n/a | `0xc802a5a140224ed72e7c821f637c1e5759744045` |
| source verified unclassified | FixRange<br>`0xada24c4d35252001dd0947570e85de01650160a1` | non_address_book | unknown | unknown | verified | n/a | `0xc802a5a140224ed72e7c821f637c1e5759744045` |
| source verified unclassified | FixRange<br>`0xc4987497deddd529e689809ad213cc7645170c22` | non_address_book | unknown | unknown | verified | n/a | `0xc802a5a140224ed72e7c821f637c1e5759744045` |
| source verified unclassified | FlashModule<br>`0x110de362cc436d7f54210f96b8c7652c2617887d` | non_address_book | unknown | unknown | verified | n/a | `0xc802a5a140224ed72e7c821f637c1e5759744045` |
| source verified unclassified | FlashModule<br>`0x77ab297da4f3667059ef0c32f5bc657f1006cbb0` | non_address_book | unknown | unknown | verified | n/a | `0xc802a5a140224ed72e7c821f637c1e5759744045` |
| source verified unclassified | FlashModule<br>`0x79d175ef5fbe31b5d84b3ee359fcbbb466153e39` | non_address_book | unknown | unknown | verified | n/a | `0xc802a5a140224ed72e7c821f637c1e5759744045` |
| source verified unclassified | iZiSwapFactory<br>`0x1502d025bfa624469892289d45c0352997251728` | non_address_book | unknown | unknown | verified | n/a | `0xc802a5a140224ed72e7c821f637c1e5759744045` |
| source verified unclassified | iZiSwapFactory<br>`0x4a41ebea62e7ab70413356d30df73ca803aae41c` | non_address_book | unknown | unknown | verified | n/a | `0xc802a5a140224ed72e7c821f637c1e5759744045` |
| source verified unclassified | iZiSwapFactory<br>`0x6a7cdd0cc87ec02ed85c196e57babe1bc0acd6f2` | non_address_book | unknown | unknown | verified | n/a | `0xc802a5a140224ed72e7c821f637c1e5759744045` |
| source verified unclassified | iZiSwapFactory<br>`0x93bb94a0d5269cb437a1f71ff3a77ab753844422` | non_address_book | unknown | unknown | verified | n/a | `0xc802a5a140224ed72e7c821f637c1e5759744045` |
| source verified unclassified | iZiSwapFactory<br>`0xd7de110bd452aab96608ac3750c3730a17993de0` | non_address_book | unknown | unknown | verified | n/a | `0xc802a5a140224ed72e7c821f637c1e5759744045` |
| source verified unclassified | LimitOrderManager<br>`0x19647d5f84308ee780cc5e3da6e4aee8e12b0ed4` | non_address_book | unknown | unknown | verified | n/a | `0xc802a5a140224ed72e7c821f637c1e5759744045` |
| source verified unclassified | LimitOrderManager<br>`0x19b683a2f45012318d9b2ae1280d68d3ec54d663` | non_address_book | unknown | unknown | verified | n/a | `0xc802a5a140224ed72e7c821f637c1e5759744045` |
| source verified unclassified | LimitOrderManager<br>`0x1cb60033f61e4fc171c963f0d2d3f63ece24319c` | non_address_book | unknown | unknown | verified | n/a | `0xc802a5a140224ed72e7c821f637c1e5759744045` |
| source verified unclassified | LimitOrderManager<br>`0x45e5f26451cdb01b0fa1f8582e0aad9a6f27c218` | non_address_book | unknown | unknown | verified | n/a | `0xc802a5a140224ed72e7c821f637c1e5759744045` |
| source verified unclassified | LimitOrderManager<br>`0x9bf8399c9f5b777cba2052f83e213ff59e51612b` | non_address_book | unknown | unknown | verified | n/a | `0xc802a5a140224ed72e7c821f637c1e5759744045` |
| source verified unclassified | LimitOrderModule<br>`0x32d02fc7722e81f6ac60b87ea8b4b63a52ad2b55` | non_address_book | unknown | unknown | verified | n/a | `0xc802a5a140224ed72e7c821f637c1e5759744045` |
| source verified unclassified | LimitOrderModule<br>`0x344add21b136b09051fb061881ec7971c92ce7f7` | non_address_book | unknown | unknown | verified | n/a | `0xc802a5a140224ed72e7c821f637c1e5759744045` |
| source verified unclassified | LimitOrderModule<br>`0xb8ddafe7385a962a4515821248368823e93fa61f` | non_address_book | unknown | unknown | verified | n/a | `0xc802a5a140224ed72e7c821f637c1e5759744045` |
| source verified unclassified | LimitOrderWithSwapManager<br>`0x25fbb4ffb88366162329fd6a92407726c92e6573` | non_address_book | unknown | unknown | verified | n/a | `0xc802a5a140224ed72e7c821f637c1e5759744045` |
| source verified unclassified | LiquidityManager<br>`0x33531bdbfe34fa6fd5963d0423f7699775aacaaf` | non_address_book | unknown | unknown | verified | n/a | `0xc802a5a140224ed72e7c821f637c1e5759744045` |
| source verified unclassified | LiquidityManager<br>`0x3a2932a74e511c9dc4cad60e06ee6d3690ce2492` | non_address_book | unknown | unknown | verified | n/a | `0xc802a5a140224ed72e7c821f637c1e5759744045` |
| source verified unclassified | LiquidityManager<br>`0x4ed4a55e2f460b81e77649b5508e3587d81f1bcb` | non_address_book | unknown | unknown | verified | n/a | `0xc802a5a140224ed72e7c821f637c1e5759744045` |
| source verified unclassified | LiquidityManager<br>`0x65b4f633215f541875a505d25ba94ff996f69397` | non_address_book | unknown | unknown | verified | n/a | `0xc802a5a140224ed72e7c821f637c1e5759744045` |
| source verified unclassified | LiquidityManager<br>`0x93c22fbeff4448f2fb6e432579b0638838ff9581` | non_address_book | unknown | unknown | verified | n/a | `0xc802a5a140224ed72e7c821f637c1e5759744045` |
| source verified unclassified | LiquidityManager<br>`0xac9788cfea201950db91d7db6f28c448cf3a4b29` | non_address_book | unknown | unknown | verified | n/a | `0xc802a5a140224ed72e7c821f637c1e5759744045` |
| source verified unclassified | LiquidityManager<br>`0xd55a071b196ae48466873550de82e2801f6d7541` | non_address_book | unknown | unknown | verified | n/a | `0xc802a5a140224ed72e7c821f637c1e5759744045` |
| source verified unclassified | LiquidityManager<br>`0xe4a0b241d8345d86fb140d40c87c5fbdd685b9dd` | non_address_book | unknown | unknown | verified | n/a | `0xc802a5a140224ed72e7c821f637c1e5759744045` |
| source verified unclassified | LiquidityManager<br>`0xfb653d488dd7685ca5b7da9f965ed639644f5caf` | non_address_book | unknown | unknown | verified | n/a | `0xc802a5a140224ed72e7c821f637c1e5759744045` |
| source verified unclassified | LiquidityModule<br>`0x88867bf3bb3321d8c7da71a8eab70680037068e4` | non_address_book | unknown | unknown | verified | n/a | `0xc802a5a140224ed72e7c821f637c1e5759744045` |
| source verified unclassified | LiquidityModule<br>`0xf42c48f971bdaa130573039b6c940212eeab8496` | non_address_book | unknown | unknown | verified | n/a | `0xc802a5a140224ed72e7c821f637c1e5759744045` |
| source verified unclassified | LiquidityModule<br>`0xf4efdb5a1e852f78e807fae7100b1d38351e38c7` | non_address_book | unknown | unknown | verified | n/a | `0xc802a5a140224ed72e7c821f637c1e5759744045` |
| source verified unclassified | Locker<br>`0x5c8e52aa151836875008f864ad837a4c2c33e2c6` | non_address_book | unknown | unknown | verified | n/a | `0xc802a5a140224ed72e7c821f637c1e5759744045` |
| source verified unclassified | Quoter<br>`0x0e79c263eebc37977038f26fb86dfa84636cfe84` | non_address_book | unknown | unknown | verified | n/a | `0xc802a5a140224ed72e7c821f637c1e5759744045` |
| source verified unclassified | Quoter<br>`0x12a76434182c8caf7856ce1410cd8abfc5e2639f` | non_address_book | unknown | unknown | verified | n/a | `0xc802a5a140224ed72e7c821f637c1e5759744045` |
| source verified unclassified | Quoter<br>`0x1d377311b342633a970e71a787c50f83858bfc1b` | non_address_book | unknown | unknown | verified | n/a | `0xc802a5a140224ed72e7c821f637c1e5759744045` |
| source verified unclassified | Quoter<br>`0x2db0afd0045f3518c77ec6591a542e326befd3d7` | non_address_book | unknown | unknown | verified | n/a | `0xc802a5a140224ed72e7c821f637c1e5759744045` |
| source verified unclassified | Quoter<br>`0x41be134611a6039aea79029050f164bc50a6e597` | non_address_book | unknown | unknown | verified | n/a | `0xc802a5a140224ed72e7c821f637c1e5759744045` |
| source verified unclassified | Quoter<br>`0x64b005ed986ed5d6aed7125f49e61083c46b8e02` | non_address_book | unknown | unknown | verified | n/a | `0xc802a5a140224ed72e7c821f637c1e5759744045` |
| source verified unclassified | Quoter<br>`0xf3409631f87b0bc9bd6e9d9fd26d31badaa21880` | non_address_book | unknown | unknown | verified | n/a | `0xc802a5a140224ed72e7c821f637c1e5759744045` |
| source verified unclassified | QuoterWithLim<br>`0xdce9a4acc59e69eccc0cda2e82fe601fdb726542` | non_address_book | unknown | unknown | verified | n/a | `0xc802a5a140224ed72e7c821f637c1e5759744045` |
| source verified unclassified | Swap<br>`0x032b241de86a8660f1ae0691a4760b426ea246d7` | non_address_book | unknown | unknown | verified | n/a | `0xc802a5a140224ed72e7c821f637c1e5759744045` |
| source verified unclassified | Swap<br>`0x04830cfced9772b8acbaf76cfc7a630ad82c9148` | non_address_book | unknown | unknown | verified | n/a | `0xc802a5a140224ed72e7c821f637c1e5759744045` |
| source verified unclassified | Swap<br>`0x34bc1b87f60e0a30c0e24fd7abada70436c71406` | non_address_book | unknown | unknown | verified | n/a | `0xc802a5a140224ed72e7c821f637c1e5759744045` |
| source verified unclassified | Swap<br>`0x3ef68d3f7664b2805d4e88381b64868a56f88bc4` | non_address_book | unknown | unknown | verified | n/a | `0xc802a5a140224ed72e7c821f637c1e5759744045` |
| source verified unclassified | Swap<br>`0x5b60e57b40239ac61cab644c43d14b1006995725` | non_address_book | unknown | unknown | verified | n/a | `0xc802a5a140224ed72e7c821f637c1e5759744045` |
| source verified unclassified | Swap<br>`0x5f6af64f2fe0ae00d20932b6698aab89afb847eb` | non_address_book | unknown | unknown | verified | n/a | `0xc802a5a140224ed72e7c821f637c1e5759744045` |
| source verified unclassified | Swap<br>`0x73ecb5dba4557e06ab3664aa00836ee2b1eed298` | non_address_book | unknown | unknown | verified | n/a | `0xc802a5a140224ed72e7c821f637c1e5759744045` |
| source verified unclassified | Swap<br>`0xbd3bd95529e0784ad973fd14928eedf3678cfad8` | non_address_book | unknown | unknown | verified | n/a | `0xc802a5a140224ed72e7c821f637c1e5759744045` |
| source verified unclassified | SwapProxy<br>`0x61a41182cd6e94f2a026ae3c0d1b73b1aa579aea` | non_address_book | unknown | unknown | verified | n/a | `0xc802a5a140224ed72e7c821f637c1e5759744045` |
| source verified unclassified | SwapProxy<br>`0xade484700fefc93960c479d38a4a1782f487893c` | non_address_book | unknown | unknown | verified | n/a | `0xc802a5a140224ed72e7c821f637c1e5759744045` |
| source verified unclassified | SwapProxy<br>`0xce326a82913eab09f7ec899c4508cbe0e6526a74` | non_address_book | unknown | unknown | verified | n/a | `0xc802a5a140224ed72e7c821f637c1e5759744045` |
| source verified unclassified | SwapProxy<br>`0xf2bd6078d51576b5c8d7e80af3c4e2292e916985` | non_address_book | unknown | unknown | verified | n/a | `0xc802a5a140224ed72e7c821f637c1e5759744045` |
| source verified unclassified | SwapProxy<br>`0xf9db6bc7f3560db161873385f70414084379b21a` | non_address_book | unknown | unknown | verified | n/a | `0xc802a5a140224ed72e7c821f637c1e5759744045` |
| source verified unclassified | SwapRouter<br>`0x816836e3f9eca6f8a7cc8cce9e330d1451c342d7` | non_address_book | unknown | unknown | verified | n/a | `0xc802a5a140224ed72e7c821f637c1e5759744045` |
| source verified unclassified | SwapX2YModule<br>`0x2c6df0fdbce9d2ded2b52a117126f2dc991f770f` | non_address_book | unknown | unknown | verified | n/a | `0xc802a5a140224ed72e7c821f637c1e5759744045` |
| source verified unclassified | SwapX2YModule<br>`0x77c2c2ece8f323abb6753b85d6b71c82039bfb17` | non_address_book | unknown | unknown | verified | n/a | `0xc802a5a140224ed72e7c821f637c1e5759744045` |
| source verified unclassified | SwapX2YModule<br>`0xe96526e92ee57bbd468da1721987aa988b008768` | non_address_book | unknown | unknown | verified | n/a | `0xc802a5a140224ed72e7c821f637c1e5759744045` |
| source verified unclassified | SwapY2XModule<br>`0xbd6aba1ef82a4cd6e15cb05e95f433ef48dfb5df` | non_address_book | unknown | unknown | verified | n/a | `0xc802a5a140224ed72e7c821f637c1e5759744045` |
| source verified unclassified | SwapY2XModule<br>`0xbf8f8ef2d2a534773c61682ea7cf5323a324b188` | non_address_book | unknown | unknown | verified | n/a | `0xc802a5a140224ed72e7c821f637c1e5759744045` |
| source verified unclassified | Box<br>`0x14323afbc2b82fe58f0d9c203830ee969b4d1be2` | non_address_book | unknown | unknown | verified | n/a | `0xc802a5a140224ed72e7c821f637c1e5759744045` |
| source verified unclassified | FlashModule<br>`0x2db0afd0045f3518c77ec6591a542e326befd3d7` | non_address_book | unknown | unknown | verified | n/a | `0xc802a5a140224ed72e7c821f637c1e5759744045` |
| source verified unclassified | iZiSwapFactory<br>`0x3ef68d3f7664b2805d4e88381b64868a56f88bc4` | non_address_book | unknown | unknown | verified | n/a | `0xc802a5a140224ed72e7c821f637c1e5759744045` |
| source verified unclassified | iZiSwapFactory<br>`0xca7e21764cd8f7c1ec40e651e25da68aed096037` | non_address_book | unknown | unknown | verified | n/a | `0xc802a5a140224ed72e7c821f637c1e5759744045` |
| source verified unclassified | LimitOrderManager<br>`0x25c030116feb2e7bba054b9de0915e5f51b03e31` | non_address_book | unknown | unknown | verified | n/a | `0xc802a5a140224ed72e7c821f637c1e5759744045` |
| source verified unclassified | LimitOrderManager<br>`0x34bc1b87f60e0a30c0e24fd7abada70436c71406` | non_address_book | unknown | unknown | verified | n/a | `0xc802a5a140224ed72e7c821f637c1e5759744045` |
| source verified unclassified | LimitOrderModule<br>`0x02f55d53dce23b4aa962cc68b0f685f26143bdb2` | non_address_book | unknown | unknown | verified | n/a | `0xc802a5a140224ed72e7c821f637c1e5759744045` |
| source verified unclassified | LimitOrderWithSwapManager<br>`0x1d377311b342633a970e71a787c50f83858bfc1b` | non_address_book | unknown | unknown | verified | n/a | `0xc802a5a140224ed72e7c821f637c1e5759744045` |
| source verified unclassified | Quoter<br>`0x04830cfced9772b8acbaf76cfc7a630ad82c9148` | non_address_book | unknown | unknown | verified | n/a | `0xc802a5a140224ed72e7c821f637c1e5759744045` |
| source verified unclassified | Quoter<br>`0xe6805638db944ea605e774e72c6f0d15fb6a1347` | non_address_book | unknown | unknown | verified | n/a | `0xc802a5a140224ed72e7c821f637c1e5759744045` |
| source verified unclassified | QuoterWithLim<br>`0x2c6df0fdbce9d2ded2b52a117126f2dc991f770f` | non_address_book | unknown | unknown | verified | n/a | `0xc802a5a140224ed72e7c821f637c1e5759744045` |
| source verified unclassified | QuoterWithLim<br>`0xe4a0b241d8345d86fb140d40c87c5fbdd685b9dd` | non_address_book | unknown | unknown | verified | n/a | `0xc802a5a140224ed72e7c821f637c1e5759744045` |
| source verified unclassified | Swap<br>`0x032b241de86a8660f1ae0691a4760b426ea246d7` | non_address_book | unknown | unknown | verified | n/a | `0xc802a5a140224ed72e7c821f637c1e5759744045` |
| source verified unclassified | Swap<br>`0x3f559139c2fc7b97ad6fe9b4d1f75149f551db18` | non_address_book | unknown | unknown | verified | n/a | `0xc802a5a140224ed72e7c821f637c1e5759744045` |
| source verified unclassified | Swap<br>`0xb8ddafe7385a962a4515821248368823e93fa61f` | non_address_book | unknown | unknown | verified | n/a | `0xc802a5a140224ed72e7c821f637c1e5759744045` |
| source verified unclassified | SwapRouter<br>`0xf42c48f971bdaa130573039b6c940212eeab8496` | non_address_book | unknown | unknown | verified | n/a | `0xc802a5a140224ed72e7c821f637c1e5759744045` |
| source verified unclassified | SwapX2YModule<br>`0x32d02fc7722e81f6ac60b87ea8b4b63a52ad2b55` | non_address_book | unknown | unknown | verified | n/a | `0xc802a5a140224ed72e7c821f637c1e5759744045` |
| source verified unclassified | SwapX2YModule<br>`0x4d4673745aac664efb9758fdd571f40d78a87bfe` | non_address_book | unknown | unknown | verified | n/a | `0xc802a5a140224ed72e7c821f637c1e5759744045` |
| source verified unclassified | SwapX2YModule<br>`0x8c7d3063579bdb0b90997e18a770eae32e1ebb08` | non_address_book | unknown | unknown | verified | n/a | `0xc802a5a140224ed72e7c821f637c1e5759744045` |
| source verified unclassified | SwapX2YModule<br>`0xbd6aba1ef82a4cd6e15cb05e95f433ef48dfb5df` | non_address_book | unknown | unknown | verified | n/a | `0xc802a5a140224ed72e7c821f637c1e5759744045` |
| source verified unclassified | SwapX2YModule<br>`0xe96526e92ee57bbd468da1721987aa988b008768` | non_address_book | unknown | unknown | verified | n/a | `0xc802a5a140224ed72e7c821f637c1e5759744045` |
| source verified unclassified | SwapX2YModule<br>`0xf4efdb5a1e852f78e807fae7100b1d38351e38c7` | non_address_book | unknown | unknown | verified | n/a | `0xc802a5a140224ed72e7c821f637c1e5759744045` |
| source verified unclassified | SwapY2XModule<br>`0x1502d025bfa624469892289d45c0352997251728` | non_address_book | unknown | unknown | verified | n/a | `0xc802a5a140224ed72e7c821f637c1e5759744045` |
| source verified unclassified | LiquidityManager<br>`0x1502d025bfa624469892289d45c0352997251728` | non_address_book | unknown | unknown | verified | n/a | `0xc802a5a140224ed72e7c821f637c1e5759744045` |
| source verified unclassified | LiquidityManager<br>`0x93c22fbeff4448f2fb6e432579b0638838ff9581` | non_address_book | unknown | unknown | verified | n/a | `0xc802a5a140224ed72e7c821f637c1e5759744045` |
| source verified unclassified | Swap<br>`0x1d377311b342633a970e71a787c50f83858bfc1b` | non_address_book | unknown | unknown | verified | n/a | `0xc802a5a140224ed72e7c821f637c1e5759744045` |
| source verified unclassified | iZiSwapClassicFactory<br>`0xd7de110bd452aab96608ac3750c3730a17993de0` | non_address_book | unknown | unknown | verified | n/a | `0xc802a5a140224ed72e7c821f637c1e5759744045` |
| source verified unclassified | iZiSwapFactory<br>`0x8c7d3063579bdb0b90997e18a770eae32e1ebb08` | non_address_book | unknown | unknown | verified | n/a | `0xc802a5a140224ed72e7c821f637c1e5759744045` |
| source verified unclassified | Locker<br>`0x1cb60033f61e4fc171c963f0d2d3f63ece24319c` | non_address_book | unknown | unknown | verified | n/a | `0xc802a5a140224ed72e7c821f637c1e5759744045` |
| source verified unclassified | SwapRouter<br>`0x4a41ebea62e7ab70413356d30df73ca803aae41c` | non_address_book | unknown | unknown | verified | n/a | `0xc802a5a140224ed72e7c821f637c1e5759744045` |
| source verified unclassified | UniversalSwapRouter<br>`0x12a76434182c8caf7856ce1410cd8abfc5e2639f` | non_address_book | unknown | unknown | verified | n/a | `0xc802a5a140224ed72e7c821f637c1e5759744045` |
| source verified unclassified | UniversalSwapRouter<br>`0xad1f11fbb288cd13819ccb9397e59faab4cdc16f` | non_address_book | unknown | unknown | verified | n/a | `0xc802a5a140224ed72e7c821f637c1e5759744045` |
| source verified unclassified | Box<br>`0x032b241de86a8660f1ae0691a4760b426ea246d7` | non_address_book | unknown | unknown | verified | n/a | `0xc802a5a140224ed72e7c821f637c1e5759744045` |
| source verified unclassified | Box<br>`0x3ef68d3f7664b2805d4e88381b64868a56f88bc4` | non_address_book | unknown | unknown | verified | n/a | `0xc802a5a140224ed72e7c821f637c1e5759744045` |
| source verified unclassified | FlashModule<br>`0x2c6df0fdbce9d2ded2b52a117126f2dc991f770f` | non_address_book | unknown | unknown | verified | n/a | `0xc802a5a140224ed72e7c821f637c1e5759744045` |
| source verified unclassified | FlashModule<br>`0x4a41ebea62e7ab70413356d30df73ca803aae41c` | non_address_book | unknown | unknown | verified | n/a | `0xc802a5a140224ed72e7c821f637c1e5759744045` |
| source verified unclassified | FlashModule<br>`0xbd6aba1ef82a4cd6e15cb05e95f433ef48dfb5df` | non_address_book | unknown | unknown | verified | n/a | `0xc802a5a140224ed72e7c821f637c1e5759744045` |
| source verified unclassified | iZiSwapFactory<br>`0x14323afbc2b82fe58f0d9c203830ee969b4d1be2` | non_address_book | unknown | unknown | verified | n/a | `0xc802a5a140224ed72e7c821f637c1e5759744045` |
| source verified unclassified | iZiSwapFactory<br>`0x45e5f26451cdb01b0fa1f8582e0aad9a6f27c218` | non_address_book | unknown | unknown | verified | n/a | `0xc802a5a140224ed72e7c821f637c1e5759744045` |
| source verified unclassified | iZiSwapFactory<br>`0x8c7d3063579bdb0b90997e18a770eae32e1ebb08` | non_address_book | unknown | unknown | verified | n/a | `0xc802a5a140224ed72e7c821f637c1e5759744045` |
| source verified unclassified | iZiSwapFactory<br>`0xcfd8a067e1fa03474e79be646c5f6b6a27847399` | non_address_book | unknown | unknown | verified | n/a | `0xc802a5a140224ed72e7c821f637c1e5759744045` |
| source verified unclassified | LimitOrderManager<br>`0x1502d025bfa624469892289d45c0352997251728` | non_address_book | unknown | unknown | verified | n/a | `0xc802a5a140224ed72e7c821f637c1e5759744045` |
| source verified unclassified | LimitOrderManager<br>`0x156d8a0be25fa232bb637fc76255bcd00deae9e9` | non_address_book | unknown | unknown | verified | n/a | `0xc802a5a140224ed72e7c821f637c1e5759744045` |
| source verified unclassified | LimitOrderManager<br>`0xca7e21764cd8f7c1ec40e651e25da68aed096037` | non_address_book | unknown | unknown | verified | n/a | `0xc802a5a140224ed72e7c821f637c1e5759744045` |
| source verified unclassified | LimitOrderModule<br>`0x04830cfced9772b8acbaf76cfc7a630ad82c9148` | non_address_book | unknown | unknown | verified | n/a | `0xc802a5a140224ed72e7c821f637c1e5759744045` |
| source verified unclassified | LimitOrderModule<br>`0x6a7cdd0cc87ec02ed85c196e57babe1bc0acd6f2` | non_address_book | unknown | unknown | verified | n/a | `0xc802a5a140224ed72e7c821f637c1e5759744045` |
| source verified unclassified | LimitOrderModule<br>`0xe96526e92ee57bbd468da1721987aa988b008768` | non_address_book | unknown | unknown | verified | n/a | `0xc802a5a140224ed72e7c821f637c1e5759744045` |
| source verified unclassified | LimitOrderWithSwapManager<br>`0x3a2932a74e511c9dc4cad60e06ee6d3690ce2492` | non_address_book | unknown | unknown | verified | n/a | `0xc802a5a140224ed72e7c821f637c1e5759744045` |
| source verified unclassified | LimitOrderWithSwapManager<br>`0xe78e7447223aaed59301b44513d1d3a892ecf212` | non_address_book | unknown | unknown | verified | n/a | `0xc802a5a140224ed72e7c821f637c1e5759744045` |
| source verified unclassified | LiquidityManager<br>`0x110de362cc436d7f54210f96b8c7652c2617887d` | non_address_book | unknown | unknown | verified | n/a | `0xc802a5a140224ed72e7c821f637c1e5759744045` |
| source verified unclassified | LiquidityModule<br>`0x3f559139c2fc7b97ad6fe9b4d1f75149f551db18` | non_address_book | unknown | unknown | verified | n/a | `0xc802a5a140224ed72e7c821f637c1e5759744045` |
| source verified unclassified | LiquidityModule<br>`0x77ab297da4f3667059ef0c32f5bc657f1006cbb0` | non_address_book | unknown | unknown | verified | n/a | `0xc802a5a140224ed72e7c821f637c1e5759744045` |
| source verified unclassified | LiquidityModule<br>`0xf4efdb5a1e852f78e807fae7100b1d38351e38c7` | non_address_book | unknown | unknown | verified | n/a | `0xc802a5a140224ed72e7c821f637c1e5759744045` |
| source verified unclassified | Locker<br>`0x795fa40387e5dbdb533ab6252562e27372b3c838` | non_address_book | unknown | unknown | verified | n/a | `0xc802a5a140224ed72e7c821f637c1e5759744045` |
| source verified unclassified | Quoter<br>`0x02f55d53dce23b4aa962cc68b0f685f26143bdb2` | non_address_book | unknown | unknown | verified | n/a | `0xc802a5a140224ed72e7c821f637c1e5759744045` |
| source verified unclassified | Quoter<br>`0x25c030116feb2e7bba054b9de0915e5f51b03e31` | non_address_book | unknown | unknown | verified | n/a | `0xc802a5a140224ed72e7c821f637c1e5759744045` |
| source verified unclassified | Quoter<br>`0x96539f87ca176c9f6180d65bc4c10fca264ae4a5` | non_address_book | unknown | unknown | verified | n/a | `0xc802a5a140224ed72e7c821f637c1e5759744045` |
| source verified unclassified | QuoterWithLim<br>`0x1d377311b342633a970e71a787c50f83858bfc1b` | non_address_book | unknown | unknown | verified | n/a | `0xc802a5a140224ed72e7c821f637c1e5759744045` |
| source verified unclassified | QuoterWithLim<br>`0x2db0afd0045f3518c77ec6591a542e326befd3d7` | non_address_book | unknown | unknown | verified | n/a | `0xc802a5a140224ed72e7c821f637c1e5759744045` |
| source verified unclassified | QuoterWithLim<br>`0x64b005ed986ed5d6aed7125f49e61083c46b8e02` | non_address_book | unknown | unknown | verified | n/a | `0xc802a5a140224ed72e7c821f637c1e5759744045` |
| source verified unclassified | Swap<br>`0x19b683a2f45012318d9b2ae1280d68d3ec54d663` | non_address_book | unknown | unknown | verified | n/a | `0xc802a5a140224ed72e7c821f637c1e5759744045` |
| source verified unclassified | Swap<br>`0xd7de110bd452aab96608ac3750c3730a17993de0` | non_address_book | unknown | unknown | verified | n/a | `0xc802a5a140224ed72e7c821f637c1e5759744045` |
| source verified unclassified | SwapX2YModule<br>`0x33531bdbfe34fa6fd5963d0423f7699775aacaaf` | non_address_book | unknown | unknown | verified | n/a | `0xc802a5a140224ed72e7c821f637c1e5759744045` |
| source verified unclassified | SwapX2YModule<br>`0x4d4673745aac664efb9758fdd571f40d78a87bfe` | non_address_book | unknown | unknown | verified | n/a | `0xc802a5a140224ed72e7c821f637c1e5759744045` |
| source verified unclassified | SwapX2YModule<br>`0x88867bf3bb3321d8c7da71a8eab70680037068e4` | non_address_book | unknown | unknown | verified | n/a | `0xc802a5a140224ed72e7c821f637c1e5759744045` |
| source verified unclassified | SwapY2XModule<br>`0x32d02fc7722e81f6ac60b87ea8b4b63a52ad2b55` | non_address_book | unknown | unknown | verified | n/a | `0xc802a5a140224ed72e7c821f637c1e5759744045` |
| source verified unclassified | SwapY2XModule<br>`0x34bc1b87f60e0a30c0e24fd7abada70436c71406` | non_address_book | unknown | unknown | verified | n/a | `0xc802a5a140224ed72e7c821f637c1e5759744045` |
| source verified unclassified | SwapY2XModule<br>`0xb8ddafe7385a962a4515821248368823e93fa61f` | non_address_book | unknown | unknown | verified | n/a | `0xc802a5a140224ed72e7c821f637c1e5759744045` |
| source verified unclassified | iZiSwapClassicFactory<br>`0xcfd8a067e1fa03474e79be646c5f6b6a27847399` | non_address_book | unknown | unknown | verified | n/a | `0xc802a5a140224ed72e7c821f637c1e5759744045` |
| source verified unclassified | iZiSwapClassicRouter02<br>`0xad1f11fbb288cd13819ccb9397e59faab4cdc16f` | non_address_book | unknown | unknown | verified | n/a | `0xc802a5a140224ed72e7c821f637c1e5759744045` |
| source verified unclassified | LimitOrderManager<br>`0x1502d025bfa624469892289d45c0352997251728` | non_address_book | unknown | unknown | verified | n/a | `0xc802a5a140224ed72e7c821f637c1e5759744045` |
| source verified unclassified | LiquidityManager<br>`0x110de362cc436d7f54210f96b8c7652c2617887d` | non_address_book | unknown | unknown | verified | n/a | `0xc802a5a140224ed72e7c821f637c1e5759744045` |
| source verified unclassified | Locker<br>`0x93c22fbeff4448f2fb6e432579b0638838ff9581` | non_address_book | unknown | unknown | verified | n/a | `0xc802a5a140224ed72e7c821f637c1e5759744045` |
| source verified unclassified | Quoter<br>`0x2db0afd0045f3518c77ec6591a542e326befd3d7` | non_address_book | unknown | unknown | verified | n/a | `0xc802a5a140224ed72e7c821f637c1e5759744045` |
| source verified unclassified | Quoter<br>`0xe6805638db944ea605e774e72c6f0d15fb6a1347` | non_address_book | unknown | unknown | verified | n/a | `0xc802a5a140224ed72e7c821f637c1e5759744045` |
| source verified unclassified | QuoterWithLim<br>`0xe4a0b241d8345d86fb140d40c87c5fbdd685b9dd` | non_address_book | unknown | unknown | verified | n/a | `0xc802a5a140224ed72e7c821f637c1e5759744045` |
| source verified unclassified | Swap<br>`0x02f55d53dce23b4aa962cc68b0f685f26143bdb2` | non_address_book | unknown | unknown | verified | n/a | `0xc802a5a140224ed72e7c821f637c1e5759744045` |
| source verified unclassified | SwapRouter<br>`0x9bf8399c9f5b777cba2052f83e213ff59e51612b` | non_address_book | unknown | unknown | verified | n/a | `0xc802a5a140224ed72e7c821f637c1e5759744045` |
| source verified unclassified | Locker<br>`0x89b8660780a694b993be78e9ea4944664ceaf263` | non_address_book | unknown | unknown | verified | n/a | `0xc5f80c6dddc9a5666e5d6e82a15f773762908f37` |
| source verified unclassified | Locker<br>`0xea5a9ef206621c228bf06a5f21567a6b46e3187d` | non_address_book | unknown | unknown | verified | n/a | `0xc5f80c6dddc9a5666e5d6e82a15f773762908f37` |
| unverified unclassified | UnnamedContract<br>`0x02f55d53dce23b4aa962cc68b0f685f26143bdb2` | non_address_book | unknown | unknown | unverified | n/a | `0xc802a5a140224ed72e7c821f637c1e5759744045` |
| unverified unclassified | UnnamedContract<br>`0x0d77e48e4618ea4ce92ce32b345469dbcd3ed61d` | non_address_book | unknown | unknown | unverified | n/a | `0xc802a5a140224ed72e7c821f637c1e5759744045` |
| unverified unclassified | UnnamedContract<br>`0x0de540932dc28b35756029dacb48e5835d5f13a5` | non_address_book | unknown | unknown | unverified | n/a | `0xc802a5a140224ed72e7c821f637c1e5759744045` |
| unverified unclassified | UnnamedContract<br>`0x10bba92db5b4116d2e98a0827254d9d56e11fcd8` | non_address_book | unknown | unknown | unverified | n/a | `0xc802a5a140224ed72e7c821f637c1e5759744045` |
| unverified unclassified | UnnamedContract<br>`0x1eaa949444f5a4bee40d25d31039ecddda0eeb19` | non_address_book | unknown | unknown | unverified | n/a | `0xc802a5a140224ed72e7c821f637c1e5759744045` |
| unverified unclassified | UnnamedContract<br>`0x20804c62079569e1491fa948db005f93fa9a383d` | non_address_book | unknown | unknown | unverified | n/a | `0xc802a5a140224ed72e7c821f637c1e5759744045` |
| unverified unclassified | UnnamedContract<br>`0x25c030116feb2e7bba054b9de0915e5f51b03e31` | non_address_book | unknown | unknown | unverified | n/a | `0xc802a5a140224ed72e7c821f637c1e5759744045` |
| unverified unclassified | UnnamedContract<br>`0x294ad74d994d9a59689529cf911bb25f5cf2c479` | non_address_book | unknown | unknown | unverified | n/a | `0xc802a5a140224ed72e7c821f637c1e5759744045` |
| unverified unclassified | UnnamedContract<br>`0x2e2abbfb7913669b930a4ecfe130863c524a8810` | non_address_book | unknown | unknown | unverified | n/a | `0xc802a5a140224ed72e7c821f637c1e5759744045` |
| unverified unclassified | UnnamedContract<br>`0x33817f7e0d615bb494d1881fad9643457ce06992` | non_address_book | unknown | unknown | unverified | n/a | `0xc802a5a140224ed72e7c821f637c1e5759744045` |
| unverified unclassified | UnnamedContract<br>`0x37a75eaca0d88317561d5e0db83a07cf8deb2a45` | non_address_book | unknown | unknown | unverified | n/a | `0xc802a5a140224ed72e7c821f637c1e5759744045` |
| unverified unclassified | UnnamedContract<br>`0x3cf497013c92cd550c9960a07a2909bce7702c75` | non_address_book | unknown | unknown | unverified | n/a | `0xc802a5a140224ed72e7c821f637c1e5759744045` |
| unverified unclassified | UnnamedContract<br>`0x3dc5cb8819878f082d475867beb3bf523f91e941` | non_address_book | unknown | unknown | unverified | n/a | `0xc802a5a140224ed72e7c821f637c1e5759744045` |
| unverified unclassified | UnnamedContract<br>`0x3f559139c2fc7b97ad6fe9b4d1f75149f551db18` | non_address_book | unknown | unknown | unverified | n/a | `0xc802a5a140224ed72e7c821f637c1e5759744045` |
| unverified unclassified | UnnamedContract<br>`0x41432298d3f35be721bd05680aad4fc8e91e1ef0` | non_address_book | unknown | unknown | unverified | n/a | `0xc802a5a140224ed72e7c821f637c1e5759744045` |
| unverified unclassified | UnnamedContract<br>`0x42180b57cfe9da10ef0d8278ab26d21aa3179afd` | non_address_book | unknown | unknown | unverified | n/a | `0xc802a5a140224ed72e7c821f637c1e5759744045` |
| unverified unclassified | UnnamedContract<br>`0x4b0ec52a3e0f52d936046232cd8b96a6895d0bb7` | non_address_book | unknown | unknown | unverified | n/a | `0xc802a5a140224ed72e7c821f637c1e5759744045` |
| unverified unclassified | UnnamedContract<br>`0x4d4673745aac664efb9758fdd571f40d78a87bfe` | non_address_book | unknown | unknown | unverified | n/a | `0xc802a5a140224ed72e7c821f637c1e5759744045` |
| unverified unclassified | UnnamedContract<br>`0x611575ee1fbd4f7915d0eabcc518ed396ff78f0c` | non_address_book | unknown | unknown | unverified | n/a | `0xc802a5a140224ed72e7c821f637c1e5759744045` |
| unverified unclassified | UnnamedContract<br>`0x759424dd2d409b4d6b39a83199177d07dc257ad7` | non_address_book | unknown | unknown | unverified | n/a | `0xc802a5a140224ed72e7c821f637c1e5759744045` |
| unverified unclassified | UnnamedContract<br>`0x7cbf7b96a7069ba384e10ccb4f556debab9c89f0` | non_address_book | unknown | unknown | unverified | n/a | `0xc802a5a140224ed72e7c821f637c1e5759744045` |
| unverified unclassified | UnnamedContract<br>`0x7eac0539dc9c0d76454bff9be3538bc4deecd376` | non_address_book | unknown | unknown | unverified | n/a | `0xc802a5a140224ed72e7c821f637c1e5759744045` |
| unverified unclassified | UnnamedContract<br>`0x81e3ee96fefd3b7564626aa8b019de9fc9fc0f40` | non_address_book | unknown | unknown | unverified | n/a | `0xc802a5a140224ed72e7c821f637c1e5759744045` |
| unverified unclassified | UnnamedContract<br>`0x84fbff47cb1f54966dde25f217a0e6b04880c099` | non_address_book | unknown | unknown | unverified | n/a | `0xc802a5a140224ed72e7c821f637c1e5759744045` |
| unverified unclassified | UnnamedContract<br>`0x85e2d3fea3433b1cd3d255c94fa9fba6d5a13ed0` | non_address_book | unknown | unknown | unverified | n/a | `0xc802a5a140224ed72e7c821f637c1e5759744045` |
| unverified unclassified | UnnamedContract<br>`0x8c7d3063579bdb0b90997e18a770eae32e1ebb08` | non_address_book | unknown | unknown | unverified | n/a | `0xc802a5a140224ed72e7c821f637c1e5759744045` |
| unverified unclassified | UnnamedContract<br>`0x98fcdaa09f115d176ed2eb0f681b66f002320a8d` | non_address_book | unknown | unknown | unverified | n/a | `0xc802a5a140224ed72e7c821f637c1e5759744045` |
| unverified unclassified | UnnamedContract<br>`0xa29e33cb38ed47e67064ba1a088795c92563093c` | non_address_book | unknown | unknown | unverified | n/a | `0xc802a5a140224ed72e7c821f637c1e5759744045` |
| unverified unclassified | UnnamedContract<br>`0xa85e50403cf62519d1f35c2ad655911c7a66623d` | non_address_book | unknown | unknown | unverified | n/a | `0xc802a5a140224ed72e7c821f637c1e5759744045` |
| unverified unclassified | UnnamedContract<br>`0xad1f11fbb288cd13819ccb9397e59faab4cdc16f` | non_address_book | unknown | unknown | unverified | n/a | `0xc802a5a140224ed72e7c821f637c1e5759744045` |
| unverified unclassified | UnnamedContract<br>`0xb922af73b899a4f0b9761b0c4407f1250fdd05be` | non_address_book | unknown | unknown | unverified | n/a | `0xc802a5a140224ed72e7c821f637c1e5759744045` |

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
| needs_review | 185 |

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
